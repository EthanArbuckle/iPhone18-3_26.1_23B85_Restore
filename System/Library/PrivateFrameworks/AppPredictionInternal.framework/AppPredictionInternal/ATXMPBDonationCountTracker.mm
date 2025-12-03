@interface ATXMPBDonationCountTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActionType:(id)type;
- (int)actionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBDonationCountTracker

- (int)actionType
{
  if (*&self->_has)
  {
    return self->_actionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NSUA"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Intent"];
  }

  return v4;
}

- (void)setHasCount:(BOOL)count
{
  if (count)
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
  v8.super_class = ATXMPBDonationCountTracker;
  v4 = [(ATXMPBDonationCountTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBDonationCountTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    actionType = self->_actionType;
    if (actionType)
    {
      if (actionType == 1)
      {
        v6 = @"Intent";
      }

      else
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_actionType];
      }
    }

    else
    {
      v6 = @"NSUA";
    }

    [dictionary setObject:v6 forKey:@"actionType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_count];
    [dictionary setObject:v7 forKey:@"count"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    actionType = self->_actionType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    count = self->_count;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_actionType;
    *(toCopy + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[5] = self->_count;
    *(toCopy + 24) |= 2u;
  }

  if (self->_abGroup)
  {
    v6 = toCopy;
    [toCopy setAbGroup:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_actionType;
    *(v5 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_count;
    *(v5 + 24) |= 2u;
  }

  v8 = [(NSString *)self->_abGroup copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_actionType != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_count != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_14;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    v7 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_actionType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_abGroup hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_count;
  return v7 ^ v6 ^ [(NSString *)self->_abGroup hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_actionType = *(fromCopy + 4);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_count = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(ATXMPBDonationCountTracker *)self setAbGroup:?];
    fromCopy = v6;
  }
}

@end