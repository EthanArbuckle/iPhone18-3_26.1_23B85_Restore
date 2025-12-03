@interface ASCodableMigrationAvailableItemContainer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ASCodableMigrationAvailableItemContainer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableMigrationAvailableItemContainer;
  v4 = [(ASCodableMigrationAvailableItemContainer *)&v8 description];
  dictionaryRepresentation = [(ASCodableMigrationAvailableItemContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  migrationAvailableItem = self->_migrationAvailableItem;
  if (migrationAvailableItem)
  {
    dictionaryRepresentation = [(ASCodableCloudKitMigrationAvailableItem *)migrationAvailableItem dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"migrationAvailableItem"];
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord)
  {
    [dictionary setObject:systemFieldsOnlyRecord forKey:@"systemFieldsOnlyRecord"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_migrationAvailableItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_migrationAvailableItem)
  {
    [toCopy setMigrationAvailableItem:?];
    toCopy = v5;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    [v5 setSystemFieldsOnlyRecord:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASCodableCloudKitMigrationAvailableItem *)self->_migrationAvailableItem copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_systemFieldsOnlyRecord copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((migrationAvailableItem = self->_migrationAvailableItem, !(migrationAvailableItem | equalCopy[1])) || -[ASCodableCloudKitMigrationAvailableItem isEqual:](migrationAvailableItem, "isEqual:")))
  {
    systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
    if (systemFieldsOnlyRecord | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  migrationAvailableItem = self->_migrationAvailableItem;
  v6 = fromCopy[1];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(ASCodableMigrationAvailableItemContainer *)self setSystemFieldsOnlyRecord:?];
  }

  MEMORY[0x2821F96F8]();
}

@end