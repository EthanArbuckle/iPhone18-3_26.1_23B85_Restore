@interface ATXPredictionUpdateCountPBPredictionUpdateCountTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsClientType:(id)a3;
- (int)StringAsTriggerType:(id)a3;
- (int)clientType;
- (int)triggerType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTriggerType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTriggerType:(BOOL)a3
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

- (int)StringAsTriggerType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TRIGGER_TYPE_CTS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_APPLAUNCH"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_APPFEEDBACK"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_ACTIONFEEDBACK"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_HEROAPP"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_MAGICALMOMENTS"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_OTHER"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"TRIGGER_TYPE_TOTAL"])
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

- (int)StringAsClientType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CLIENT_APP_PREDICTIONS"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"CLIENT_ACTION_PREDICTIONS"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPredictionUpdateCountPBPredictionUpdateCountTracker;
  v4 = [(ATXPredictionUpdateCountPBPredictionUpdateCountTracker *)&v8 description];
  v5 = [(ATXPredictionUpdateCountPBPredictionUpdateCountTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v6 forKey:@"triggerType"];

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

    [v3 setObject:v8 forKey:@"clientType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v3 setObject:abGroup forKey:@"abGroup"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    triggerType = self->_triggerType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    clientType = self->_clientType;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_triggerType;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = self->_clientType;
    *(v4 + 24) |= 1u;
  }

  if (self->_abGroup)
  {
    v6 = v4;
    [v4 setAbGroup:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_abGroup copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 24);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_triggerType != *(v4 + 5))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_clientType != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_triggerType = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
  }

  if (v5)
  {
    self->_clientType = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(ATXPredictionUpdateCountPBPredictionUpdateCountTracker *)self setAbGroup:?];
    v4 = v6;
  }
}

@end