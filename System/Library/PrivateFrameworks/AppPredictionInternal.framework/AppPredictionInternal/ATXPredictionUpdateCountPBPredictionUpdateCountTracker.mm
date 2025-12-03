@interface ATXPredictionUpdateCountPBPredictionUpdateCountTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsClientType:(id)type;
- (int)StringAsTriggerType:(id)type;
- (int)clientType;
- (int)triggerType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTriggerType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation ATXPredictionUpdateCountPBPredictionUpdateCountTracker

- (int)triggerType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_triggerType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTriggerType:(BOOL)type
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

- (int)StringAsTriggerType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"TRIGGER_TYPE_CTS"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_APPLAUNCH"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_APPFEEDBACK"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_ACTIONFEEDBACK"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_HEROAPP"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_MAGICALMOMENTS"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_OTHER"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"TRIGGER_TYPE_TOTAL"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)clientType
{
  if (*&self->_has)
  {
    return self->_clientType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsClientType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CLIENT_APP_PREDICTIONS"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"CLIENT_ACTION_PREDICTIONS"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPredictionUpdateCountPBPredictionUpdateCountTracker;
  v4 = [(ATXPredictionUpdateCountPBPredictionUpdateCountTracker *)&v8 description];
  dictionaryRepresentation = [(ATXPredictionUpdateCountPBPredictionUpdateCountTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    triggerType = self->_triggerType;
    if (triggerType >= 8)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_triggerType];
    }

    else
    {
      v6 = off_2785A0678[triggerType];
    }

    [dictionary setObject:v6 forKey:@"triggerType"];

    has = self->_has;
  }

  if (has)
  {
    clientType = self->_clientType;
    if (clientType)
    {
      if (clientType == 1)
      {
        v8 = @"CLIENT_ACTION_PREDICTIONS";
      }

      else
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_clientType];
      }
    }

    else
    {
      v8 = @"CLIENT_APP_PREDICTIONS";
    }

    [dictionary setObject:v8 forKey:@"clientType"];
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
  if ((has & 2) != 0)
  {
    triggerType = self->_triggerType;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    clientType = self->_clientType;
    PBDataWriterWriteInt32Field();
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
  if ((has & 2) != 0)
  {
    toCopy[5] = self->_triggerType;
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = self->_clientType;
    *(toCopy + 24) |= 1u;
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
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_triggerType;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_clientType;
    *(v5 + 24) |= 1u;
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
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_triggerType != *(equalCopy + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_clientType != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
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
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_triggerType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_abGroup hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_clientType;
  return v7 ^ v6 ^ [(NSString *)self->_abGroup hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_triggerType = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
  }

  if (v5)
  {
    self->_clientType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(ATXPredictionUpdateCountPBPredictionUpdateCountTracker *)self setAbGroup:?];
    fromCopy = v6;
  }
}

@end