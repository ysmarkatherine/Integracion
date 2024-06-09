-- Tabla de Categoria
CREATE TABLE Categoria (
CategoriaId int NOT NULL IDENTITY,
Nombre nvarchar(120) NOT NULL
);

ALTER TABLE Categoria
ADD CONSTRAINT PK_Categoria PRIMARY KEY (CategoriaId);

-- Tabla de Marca
CREATE TABLE Marca (
MarcaId int NOT NULL IDENTITY,
Nombre nvarchar(120) NOT NULL
);

ALTER TABLE Marca
ADD CONSTRAINT PK_Marca PRIMARY KEY (MarcaId);

-- Tabla de Producto
CREATE TABLE Producto (
ProductoId int NOT NULL IDENTITY,
NombreProducto nvarchar(120) NOT NULL,
Precio numeric(7,2) NOT NULL,
Costo numeric(7,2) NOT NULL,
CategoriaId int NOT NULL,
MarcaId int NOT NULL
);

ALTER TABLE Producto
ADD CONSTRAINT PK_Producto PRIMARY KEY (ProductoId);

ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Categoria_CategoriaId FOREIGN KEY(CategoriaId)
REFERENCES Categoria (CategoriaId) ON DELETE CASCADE;

ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Marca_MarcaId FOREIGN KEY(MarcaId)
REFERENCES Marca (MarcaId) ON DELETE CASCADE;

INSERT INTO Categoria(Nombre)
VALUES ('Computadoras');

INSERT INTO Categoria(Nombre)
VALUES ('Impresoras');

INSERT INTO Marca (Nombre)
Values ('HP');

INSERT INTO Marca (Nombre)
Values ('Apple');
