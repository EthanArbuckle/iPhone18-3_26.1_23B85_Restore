@interface PersistentAddressBookAddress
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAddressID:(BOOL)d;
- (void)setHasRecordID:(BOOL)d;
- (void)writeTo:(id)to;
@end

@implementation PersistentAddressBookAddress

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) != 0)
  {
    self->_recordID = *(fromCopy + 5);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_addressID = *(fromCopy + 4);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(PersistentAddressBookAddress *)self setSyncIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 32))
  {
    self->_position = *(fromCopy + 1);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_recordID != *(equalCopy + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_addressID != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)syncIdentifier isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(equalCopy + 32);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_position != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSString *)self->_syncIdentifier copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  if (*&self->_has)
  {
    v6[1] = *&self->_position;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[5] = self->_recordID;
    *(toCopy + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[4] = self->_addressID;
    *(toCopy + 32) |= 2u;
  }

  if (self->_syncIdentifier)
  {
    v6 = toCopy;
    [toCopy setSyncIdentifier:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_position;
    *(toCopy + 32) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  dictionaryRepresentation = [(PersistentAddressBookAddress *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasAddressID:(BOOL)d
{
  if (d)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRecordID:(BOOL)d
{
  if (d)
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