CREATE DATABASE  IF NOT EXISTS `pet_shop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pet_shop`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: pet_shop
-- ------------------------------------------------------
-- Server version	5.5.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `idAdmin` int(11) NOT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'SandyD','LovePets','Sandy','Durieux'),(2,'KimB','Tevya','Kimberly','Botwin'),(3,'DanL','Giovanni','Dan','Lazarow');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breeds`
--

DROP TABLE IF EXISTS `breeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breeds` (
  `pet_id` int(2) NOT NULL DEFAULT '0',
  `breeds` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breeds`
--

LOCK TABLES `breeds` WRITE;
/*!40000 ALTER TABLE `breeds` DISABLE KEYS */;
INSERT INTO `breeds` VALUES (1,'Afghan Hound'),(1,'Alaskan Malamute'),(1,'Barbet'),(1,'Bichon Frise'),(1,'Bouvier des Flandres'),(1,'Boykin Spaniel'),(1,'Chinese Shar-Pei'),(1,'Chow Chow'),(1,'Cocker Spaniel'),(1,'Dogue de Bordeaux'),(1,'Finnish Spitz'),(1,'Keeshond'),(1,'Komondor'),(1,'Lhasa Apso'),(1,'Lowchen'),(1,'Newfoundland'),(1,'Pekingese'),(1,'Poodle'),(1,'Puli'),(1,'Samoyed'),(1,'Sealyham Terrier'),(1,'Shih Tzu'),(1,'Silky Terrier'),(1,'Yorkshire Terrier'),(1,'Other'),(2,'American Bobtail'),(2,'American Curl'),(2,'Birman'),(2,'British Shorthair'),(2,'Chartreux'),(2,'Exotic Shorthair'),(2,'Himalayan'),(2,'Japanese Bobtail'),(2,'LaPerm'),(2,'Maine Coon'),(2,'Manx'),(2,'Norwegian Forest Cat'),(2,'Persian'),(2,'Peterbald'),(2,'Pixiebob'),(2,'Ragamuffin'),(2,'Ragdoll'),(2,'Russian Blue'),(2,'Savannah'),(2,'Scottish Fold'),(2,'Siberian'),(2,'Somali'),(2,'Turkish Angora'),(2,'Turkish Van'),(2,'Other');
/*!40000 ALTER TABLE `breeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grooming`
--

DROP TABLE IF EXISTS `grooming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grooming` (
  `GroomingID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zip` varchar(45) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `PetType` varchar(45) NOT NULL,
  `Breed` varchar(45) DEFAULT NULL,
  `PetName` varchar(45) NOT NULL,
  `NeuteredOrSpayed` tinyint(1) DEFAULT NULL,
  `PetBirthday` datetime DEFAULT NULL,
  PRIMARY KEY (`GroomingID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grooming`
--

LOCK TABLES `grooming` WRITE;
/*!40000 ALTER TABLE `grooming` DISABLE KEYS */;
INSERT INTO `grooming` VALUES (33,'Kimberly','Botwin','1208 Phelan Lane','Redondo Beach','CA','90278','3109264278','kimandtevya@verizon.net','Dog','Poodle','Tamara',1,'2008-07-08 00:00:00'),(35,'Noah','Botwin','1208 Phelan Lane','Redondo Beach','CA','90278','8183599282','noahlouis@gmail.com','Dog','Bichon Frise','Louis',1,'2012-06-10 00:00:00'),(36,'Daniel','Lazarow','1208 Phelan Lane','Redondo Beach','CA','90278','8183599282','dlazarow@hotmail.com','Dog','Dogue de Bordeaux','Gyuen',1,'1994-02-24 00:00:00');
/*!40000 ALTER TABLE `grooming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_type`
--

DROP TABLE IF EXISTS `pet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pet_type` (
  `pet_id` int(2) NOT NULL AUTO_INCREMENT,
  `pet_type` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_type`
--

LOCK TABLES `pet_type` WRITE;
/*!40000 ALTER TABLE `pet_type` DISABLE KEYS */;
INSERT INTO `pet_type` VALUES (1,'Dog'),(2,'Cat');
/*!40000 ALTER TABLE `pet_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-21 14:28:39