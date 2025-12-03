@interface AWDProactiveActionData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCacheRank:(BOOL)rank;
- (void)setHasEngagedAction:(BOOL)action;
- (void)setHasFutureMedia:(BOOL)media;
- (void)setHasShown:(BOOL)shown;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveActionData

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasCacheRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasEngagedAction:(BOOL)action
{
  if (action)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFutureMedia:(BOOL)media
{
  if (media)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasShown:(BOOL)shown
{
  if (shown)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveActionData;
  v4 = [(AWDProactiveActionData *)&v8 description];
  dictionaryRepresentation = [(AWDProactiveActionData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  actionKey = self->_actionKey;
  if (actionKey)
  {
    [dictionary setObject:actionKey forKey:@"actionKey"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_cacheRank];
    [dictionary setObject:v14 forKey:@"cacheRank"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_engagedAction];
  [dictionary setObject:v15 forKey:@"engagedAction"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_futureMedia];
  [dictionary setObject:v16 forKey:@"futureMedia"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
  [dictionary setObject:v17 forKey:@"score"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_shown];
    [dictionary setObject:v7 forKey:@"shown"];
  }

LABEL_11:
  subscores = self->_subscores;
  if (subscores)
  {
    dictionaryRepresentation = [(AWDProactiveAppPredictionSubscores *)subscores dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"subscores"];
  }

  heuristicName = self->_heuristicName;
  if (heuristicName)
  {
    [dictionary setObject:heuristicName forKey:@"heuristicName"];
  }

  engaged = self->_engaged;
  if (engaged)
  {
    [dictionary setObject:engaged forKey:@"engaged"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"sessionId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v12;
  }

  if (self->_actionKey)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    cacheRank = self->_cacheRank;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  engagedAction = self->_engagedAction;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  futureMedia = self->_futureMedia;
  PBDataWriterWriteBOOLField();
  toCopy = v12;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  score = self->_score;
  PBDataWriterWriteDoubleField();
  toCopy = v12;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    shown = self->_shown;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

LABEL_11:
  if (self->_subscores)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_heuristicName)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_engaged)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 76) |= 2u;
  }

  v6 = toCopy;
  if (self->_actionKey)
  {
    [toCopy setActionKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 8) = self->_cacheRank;
    *(toCopy + 76) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 72) = self->_engagedAction;
  *(toCopy + 76) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 73) = self->_futureMedia;
  *(toCopy + 76) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  toCopy[1] = *&self->_score;
  *(toCopy + 76) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    *(toCopy + 74) = self->_shown;
    *(toCopy + 76) |= 0x20u;
  }

LABEL_11:
  if (self->_subscores)
  {
    [v6 setSubscores:?];
    toCopy = v6;
  }

  if (self->_heuristicName)
  {
    [v6 setHeuristicName:?];
    toCopy = v6;
  }

  if (self->_engaged)
  {
    [v6 setEngaged:?];
    toCopy = v6;
  }

  if (self->_sessionId)
  {
    [v6 setSessionId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 76) |= 2u;
  }

  v7 = [(NSString *)self->_actionKey copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 32) = self->_cacheRank;
    *(v6 + 76) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 72) = self->_engagedAction;
  *(v6 + 76) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 8) = self->_score;
    *(v6 + 76) |= 1u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 73) = self->_futureMedia;
  *(v6 + 76) |= 0x10u;
  has = self->_has;
  if (has)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 74) = self->_shown;
    *(v6 + 76) |= 0x20u;
  }

LABEL_9:
  v10 = [(AWDProactiveAppPredictionSubscores *)self->_subscores copyWithZone:zone];
  v11 = *(v6 + 64);
  *(v6 + 64) = v10;

  v12 = [(NSString *)self->_heuristicName copyWithZone:zone];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  v14 = [(NSString *)self->_engaged copyWithZone:zone];
  v15 = *(v6 + 40);
  *(v6 + 40) = v14;

  v16 = [(NSString *)self->_sessionId copyWithZone:zone];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(equalCopy + 76);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_47;
  }

  actionKey = self->_actionKey;
  if (actionKey | *(equalCopy + 3))
  {
    if (![(NSString *)actionKey isEqual:?])
    {
      goto LABEL_47;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 76);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_cacheRank != *(equalCopy + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0)
    {
      goto LABEL_47;
    }

    v9 = *(equalCopy + 72);
    if (self->_engagedAction)
    {
      if ((*(equalCopy + 72) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(equalCopy + 72))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 76) & 0x10) == 0)
    {
      goto LABEL_47;
    }

    v10 = *(equalCopy + 73);
    if (self->_futureMedia)
    {
      if ((*(equalCopy + 73) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(equalCopy + 73))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 76) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if (has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_47;
  }

  if ((has & 0x20) == 0)
  {
    if ((*(equalCopy + 76) & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_47:
    v15 = 0;
    goto LABEL_48;
  }

  if ((*(equalCopy + 76) & 0x20) == 0)
  {
    goto LABEL_47;
  }

  v17 = *(equalCopy + 74);
  if (self->_shown)
  {
    if ((*(equalCopy + 74) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (*(equalCopy + 74))
  {
    goto LABEL_47;
  }

LABEL_36:
  subscores = self->_subscores;
  if (subscores | *(equalCopy + 8) && ![(AWDProactiveAppPredictionSubscores *)subscores isEqual:?])
  {
    goto LABEL_47;
  }

  heuristicName = self->_heuristicName;
  if (heuristicName | *(equalCopy + 6))
  {
    if (![(NSString *)heuristicName isEqual:?])
    {
      goto LABEL_47;
    }
  }

  engaged = self->_engaged;
  if (engaged | *(equalCopy + 5))
  {
    if (![(NSString *)engaged isEqual:?])
    {
      goto LABEL_47;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 7))
  {
    v15 = [(NSString *)sessionId isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_48:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_actionKey hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_cacheRank;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v8 = 2654435761 * self->_engagedAction;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v9 = 0;
      if (*&self->_has)
      {
        goto LABEL_8;
      }

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_futureMedia;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v5.i64 = floor(score + 0.5);
  v11 = (score - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v6, v5).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_16:
  if ((*&self->_has & 0x20) != 0)
  {
    v14 = 2654435761 * self->_shown;
  }

  else
  {
    v14 = 0;
  }

  v15 = v4 ^ v3 ^ v7 ^ v8 ^ v9 ^ v13 ^ v14 ^ [(AWDProactiveAppPredictionSubscores *)self->_subscores hash];
  v16 = [(NSString *)self->_heuristicName hash];
  v17 = v16 ^ [(NSString *)self->_engaged hash];
  return v15 ^ v17 ^ [(NSString *)self->_sessionId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 76) & 2) != 0)
  {
    self->_timestamp = fromCopy[2];
    *&self->_has |= 2u;
  }

  v9 = fromCopy;
  if (fromCopy[3])
  {
    [(AWDProactiveActionData *)self setActionKey:?];
    v5 = v9;
  }

  v6 = *(v5 + 76);
  if ((v6 & 4) != 0)
  {
    self->_cacheRank = *(v5 + 8);
    *&self->_has |= 4u;
    v6 = *(v5 + 76);
    if ((v6 & 8) == 0)
    {
LABEL_7:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v5 + 76) & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_engagedAction = *(v5 + 72);
  *&self->_has |= 8u;
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_futureMedia = *(v5 + 73);
  *&self->_has |= 0x10u;
  v6 = *(v5 + 76);
  if ((v6 & 1) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  self->_score = v5[1];
  *&self->_has |= 1u;
  if ((*(v5 + 76) & 0x20) != 0)
  {
LABEL_10:
    self->_shown = *(v5 + 74);
    *&self->_has |= 0x20u;
  }

LABEL_11:
  subscores = self->_subscores;
  v8 = v5[8];
  if (subscores)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    [(AWDProactiveAppPredictionSubscores *)subscores mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    [(AWDProactiveActionData *)self setSubscores:?];
  }

  v5 = v9;
LABEL_22:
  if (v5[6])
  {
    [(AWDProactiveActionData *)self setHeuristicName:?];
    v5 = v9;
  }

  if (v5[5])
  {
    [(AWDProactiveActionData *)self setEngaged:?];
    v5 = v9;
  }

  if (v5[7])
  {
    [(AWDProactiveActionData *)self setSessionId:?];
  }

  MEMORY[0x2821F96F8]();
}

@end