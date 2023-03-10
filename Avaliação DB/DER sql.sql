-- MySQL Script generated by MySQL Workbench
-- Thu Mar  9 14:51:37 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ProjetoFinal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ProjetoFinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ProjetoFinal` DEFAULT CHARACTER SET utf8 ;
USE `ProjetoFinal` ;

-- -----------------------------------------------------
-- Table `ProjetoFinal`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoFinal`.`Categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoFinal`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoFinal`.`Usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProjetoFinal`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProjetoFinal`.`Produto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `preco` DECIMAL NOT NULL,
  `foto` VARCHAR(1000) NULL,
  `estoque` INT NOT NULL,
  `Categoria_id` BIGINT NOT NULL,
  `Usuario_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Produto_Categoria_idx` (`Categoria_id` ASC) VISIBLE,
  INDEX `fk_Produto_Usuario1_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Categoria`
    FOREIGN KEY (`Categoria_id`)
    REFERENCES `ProjetoFinal`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_Usuario1`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `ProjetoFinal`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
