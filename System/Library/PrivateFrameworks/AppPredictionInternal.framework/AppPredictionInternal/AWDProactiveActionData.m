@interface AWDProactiveActionData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCacheRank:(BOOL)a3;
- (void)setHasEngagedAction:(BOOL)a3;
- (void)setHasFutureMedia:(BOOL)a3;
- (void)setHasShown:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveActionData

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasCacheRank:(BOOL)a3
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

- (void)setHasEngagedAction:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFutureMedia:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasShown:(BOOL)a3
{
  if (a3)
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
  v5 = [(AWDProactiveActionData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  actionKey = self->_actionKey;
  if (actionKey)
  {
    [v3 setObject:actionKey forKey:@"actionKey"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_cacheRank];
    [v3 setObject:v14 forKey:@"cacheRank"];

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
  [v3 setObject:v15 forKey:@"engagedAction"];

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
  [v3 setObject:v16 forKey:@"futureMedia"];

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
  [v3 setObject:v17 forKey:@"score"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_shown];
    [v3 setObject:v7 forKey:@"shown"];
  }

LABEL_11:
  subscores = self->_subscores;
  if (subscores)
  {
    v9 = [(AWDProactiveAppPredictionSubscores *)subscores dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"subscores"];
  }

  heuristicName = self->_heuristicName;
  if (heuristicName)
  {
    [v3 setObject:heuristicName forKey:@"heuristicName"];
  }

  engaged = self->_engaged;
  if (engaged)
  {
    [v3 setObject:engaged forKey:@"engaged"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v3 setObject:sessionId forKey:@"sessionId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v12;
  }

  if (self->_actionKey)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    cacheRank = self->_cacheRank;
    PBDataWriterWriteInt32Field();
    v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
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
  v4 = v12;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    shown = self->_shown;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_11:
  if (self->_subscores)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_heuristicName)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_engaged)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 76) |= 2u;
  }

  v6 = v4;
  if (self->_actionKey)
  {
    [v4 setActionKey:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 8) = self->_cacheRank;
    *(v4 + 76) |= 4u;
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

  *(v4 + 72) = self->_engagedAction;
  *(v4 + 76) |= 8u;
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
  *(v4 + 73) = self->_futureMedia;
  *(v4 + 76) |= 0x10u;
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
  v4[1] = *&self->_score;
  *(v4 + 76) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    *(v4 + 74) = self->_shown;
    *(v4 + 76) |= 0x20u;
  }

LABEL_11:
  if (self->_subscores)
  {
    [v6 setSubscores:?];
    v4 = v6;
  }

  if (self->_heuristicName)
  {
    [v6 setHeuristicName:?];
    v4 = v6;
  }

  if (self->_engaged)
  {
    [v6 setEngaged:?];
    v4 = v6;
  }

  if (self->_sessionId)
  {
    [v6 setSessionId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 76) |= 2u;
  }

  v7 = [(NSString *)self->_actionKey copyWithZone:a3];
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
  v10 = [(AWDProactiveAppPredictionSubscores *)self->_subscores copyWithZone:a3];
  v11 = *(v6 + 64);
  *(v6 + 64) = v10;

  v12 = [(NSString *)self->_heuristicName copyWithZone:a3];
  v13 = *(v6 + 48);
  *(v6 + 48) = v12;

  v14 = [(NSString *)self->_engaged copyWithZone:a3];
  v15 = *(v6 + 40);
  *(v6 + 40) = v14;

  v16 = [(NSString *)self->_sessionId copyWithZone:a3];
  v17 = *(v6 + 56);
  *(v6 + 56) = v16;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(v4 + 76);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
    goto LABEL_47;
  }

  actionKey = self->_actionKey;
  if (actionKey | *(v4 + 3))
  {
    if (![(NSString *)actionKey isEqual:?])
    {
      goto LABEL_47;
    }

    has = self->_has;
  }

  v8 = *(v4 + 76);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 76) & 4) == 0 || self->_cacheRank != *(v4 + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 76) & 8) == 0)
    {
      goto LABEL_47;
    }

    v9 = *(v4 + 72);
    if (self->_engagedAction)
    {
      if ((*(v4 + 72) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 72))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 76) & 0x10) == 0)
    {
      goto LABEL_47;
    }

    v10 = *(v4 + 73);
    if (self->_futureMedia)
    {
      if ((*(v4 + 73) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (*(v4 + 73))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 76) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if (has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_score != *(v4 + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_47;
  }

  if ((has & 0x20) == 0)
  {
    if ((*(v4 + 76) & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_47:
    v15 = 0;
    goto LABEL_48;
  }

  if ((*(v4 + 76) & 0x20) == 0)
  {
    goto LABEL_47;
  }

  v17 = *(v4 + 74);
  if (self->_shown)
  {
    if ((*(v4 + 74) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 74))
  {
    goto LABEL_47;
  }

LABEL_36:
  subscores = self->_subscores;
  if (subscores | *(v4 + 8) && ![(AWDProactiveAppPredictionSubscores *)subscores isEqual:?])
  {
    goto LABEL_47;
  }

  heuristicName = self->_heuristicName;
  if (heuristicName | *(v4 + 6))
  {
    if (![(NSString *)heuristicName isEqual:?])
    {
      goto LABEL_47;
    }
  }

  engaged = self->_engaged;
  if (engaged | *(v4 + 5))
  {
    if (![(NSString *)engaged isEqual:?])
    {
      goto LABEL_47;
    }
  }

  sessionId = self->_sessionId;
  if (sessionId | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*(v4 + 76) & 2) != 0)
  {
    self->_timestamp = v4[2];
    *&self->_has |= 2u;
  }

  v9 = v4;
  if (v4[3])
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