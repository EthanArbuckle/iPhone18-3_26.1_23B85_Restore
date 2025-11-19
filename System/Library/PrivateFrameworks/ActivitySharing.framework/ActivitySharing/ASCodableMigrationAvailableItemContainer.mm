@interface ASCodableMigrationAvailableItemContainer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableMigrationAvailableItemContainer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableMigrationAvailableItemContainer;
  v4 = [(ASCodableMigrationAvailableItemContainer *)&v8 description];
  v5 = [(ASCodableMigrationAvailableItemContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  migrationAvailableItem = self->_migrationAvailableItem;
  if (migrationAvailableItem)
  {
    v5 = [(ASCodableCloudKitMigrationAvailableItem *)migrationAvailableItem dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"migrationAvailableItem"];
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord)
  {
    [v3 setObject:systemFieldsOnlyRecord forKey:@"systemFieldsOnlyRecord"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_migrationAvailableItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_migrationAvailableItem)
  {
    [v4 setMigrationAvailableItem:?];
    v4 = v5;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    [v5 setSystemFieldsOnlyRecord:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ASCodableCloudKitMigrationAvailableItem *)self->_migrationAvailableItem copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_systemFieldsOnlyRecord copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((migrationAvailableItem = self->_migrationAvailableItem, !(migrationAvailableItem | v4[1])) || -[ASCodableCloudKitMigrationAvailableItem isEqual:](migrationAvailableItem, "isEqual:")))
  {
    systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
    if (systemFieldsOnlyRecord | v4[2])
    {
      v7 = [(NSData *)systemFieldsOnlyRecord isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  migrationAvailableItem = self->_migrationAvailableItem;
  v6 = v4[1];
  v7 = v4;
  if (migrationAvailableItem)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ASCodableCloudKitMigrationAvailableItem *)migrationAvailableItem mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ASCodableMigrationAvailableItemContainer *)self setMigrationAvailableItem:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(ASCodableMigrationAvailableItemContainer *)self setSystemFieldsOnlyRecord:?];
  }

  MEMORY[0x2821F96F8]();
}

@end