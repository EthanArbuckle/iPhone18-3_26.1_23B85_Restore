@interface ASCodableDatabaseCompetitionListEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ASCodableDatabaseCompetitionListEntry

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableDatabaseCompetitionListEntry;
  v4 = [(ASCodableDatabaseCompetitionListEntry *)&v8 description];
  dictionaryRepresentation = [(ASCodableDatabaseCompetitionListEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [dictionary setObject:friendUUID forKey:@"friendUUID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v6 forKey:@"type"];
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord)
  {
    [v4 setObject:systemFieldsOnlyRecord forKey:@"systemFieldsOnlyRecord"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_owner];
    [v4 setObject:v8 forKey:@"owner"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    owner = self->_owner;
    PBDataWriterWriteInt64Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_friendUUID)
  {
    [toCopy setFriendUUID:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_type;
    *(toCopy + 40) |= 2u;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    [v5 setSystemFieldsOnlyRecord:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_owner;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_friendUUID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 40) |= 2u;
  }

  v8 = [(NSData *)self->_systemFieldsOnlyRecord copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_owner;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(equalCopy + 3))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_type != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord | *(equalCopy + 4))
  {
    if (![(NSData *)systemFieldsOnlyRecord isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 40) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_owner != *(equalCopy + 1))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_friendUUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_type;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSData *)self->_systemFieldsOnlyRecord hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_owner;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    [(ASCodableDatabaseCompetitionListEntry *)self setFriendUUID:?];
    fromCopy = v5;
  }

  if ((fromCopy[5] & 2) != 0)
  {
    self->_type = fromCopy[2];
    *&self->_has |= 2u;
  }

  if (fromCopy[4])
  {
    [(ASCodableDatabaseCompetitionListEntry *)self setSystemFieldsOnlyRecord:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_owner = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end