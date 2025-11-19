@interface ASCodableDatabaseCompetitionListEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableDatabaseCompetitionListEntry

- (void)setHasType:(BOOL)a3
{
  if (a3)
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
  v5 = [(ASCodableDatabaseCompetitionListEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [v3 setObject:friendUUID forKey:@"friendUUID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    owner = self->_owner;
    PBDataWriterWriteInt64Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_friendUUID)
  {
    [v4 setFriendUUID:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_type;
    *(v4 + 40) |= 2u;
  }

  if (self->_systemFieldsOnlyRecord)
  {
    [v5 setSystemFieldsOnlyRecord:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_owner;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_friendUUID copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 40) |= 2u;
  }

  v8 = [(NSData *)self->_systemFieldsOnlyRecord copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_owner;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(v4 + 3))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_type != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  systemFieldsOnlyRecord = self->_systemFieldsOnlyRecord;
  if (systemFieldsOnlyRecord | *(v4 + 4))
  {
    if (![(NSData *)systemFieldsOnlyRecord isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
  }

  v9 = (*(v4 + 40) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_owner != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(ASCodableDatabaseCompetitionListEntry *)self setFriendUUID:?];
    v4 = v5;
  }

  if ((v4[5] & 2) != 0)
  {
    self->_type = v4[2];
    *&self->_has |= 2u;
  }

  if (v4[4])
  {
    [(ASCodableDatabaseCompetitionListEntry *)self setSystemFieldsOnlyRecord:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_owner = v4[1];
    *&self->_has |= 1u;
  }
}

@end