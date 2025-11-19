@interface PersistentAddressBookAddress
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAddressID:(BOOL)a3;
- (void)setHasRecordID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersistentAddressBookAddress

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_recordID = *(v4 + 5);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_addressID = *(v4 + 4);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(PersistentAddressBookAddress *)self setSyncIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 32))
  {
    self->_position = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_recordID;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_addressID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_syncIdentifier hash];
  if (*&self->_has)
  {
    v7 = fabs(self->_position);
    v8 = floor(v7 + 0.5);
    v9 = (v7 - v8) * 1.84467441e19;
    v6 = 2654435761u * (v8 - trunc(v8 * 5.42101086e-20) * 1.84467441e19);
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_recordID != *(v4 + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_addressID != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(v4 + 3))
  {
    if (![(NSString *)syncIdentifier isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(v4 + 32);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_position != *(v4 + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[5] = self->_recordID;
    *(v5 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[4] = self->_addressID;
    *(v5 + 32) |= 2u;
  }

  v8 = [(NSString *)self->_syncIdentifier copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  if (*&self->_has)
  {
    v6[1] = *&self->_position;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[5] = self->_recordID;
    *(v4 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[4] = self->_addressID;
    *(v4 + 32) |= 2u;
  }

  if (self->_syncIdentifier)
  {
    v6 = v4;
    [v4 setSyncIdentifier:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_position;
    *(v4 + 32) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_syncIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [NSNumber numberWithInt:self->_recordID];
    [v3 setObject:v5 forKey:@"recordID"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithInt:self->_addressID];
    [v3 setObject:v6 forKey:@"addressID"];
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [v3 setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithDouble:self->_position];
    [v3 setObject:v8 forKey:@"position"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentAddressBookAddress;
  v3 = [(PersistentAddressBookAddress *)&v7 description];
  v4 = [(PersistentAddressBookAddress *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasAddressID:(BOOL)a3
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

- (void)setHasRecordID:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end