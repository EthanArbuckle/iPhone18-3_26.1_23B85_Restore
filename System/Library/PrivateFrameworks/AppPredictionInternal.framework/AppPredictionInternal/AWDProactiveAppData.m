@interface AWDProactiveAppData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEngagedApp:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDProactiveAppData

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

- (void)setHasEngagedApp:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDProactiveAppData;
  v4 = [(AWDProactiveAppData *)&v8 description];
  v5 = [(AWDProactiveAppData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_engagedApp];
  [v3 setObject:v12 forKey:@"engagedApp"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v3 setObject:v5 forKey:@"score"];
  }

LABEL_5:
  subscores = self->_subscores;
  if (subscores)
  {
    v7 = [(AWDProactiveAppPredictionSubscores *)subscores dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"subscores"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v3 setObject:sessionId forKey:@"sessionId"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  engagedApp = self->_engagedApp;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    score = self->_score;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
  if (self->_subscores)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_timestamp;
    *(v4 + 52) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 48) = self->_engagedApp;
  *(v4 + 52) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = *&self->_score;
    *(v4 + 52) |= 1u;
  }

LABEL_5:
  v6 = v4;
  if (self->_subscores)
  {
    [v4 setSubscores:?];
    v4 = v6;
  }

  if (self->_sessionId)
  {
    [v6 setSessionId:?];
    v4 = v6;
  }

  if (self->_bundleId)
  {
    [v6 setBundleId:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 48) = self->_engagedApp;
    *(v5 + 52) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_timestamp;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_score;
    *(v5 + 52) |= 1u;
  }

LABEL_5:
  v8 = [(AWDProactiveAppPredictionSubscores *)self->_subscores copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSString *)self->_sessionId copyWithZone:a3];
  v11 = v6[4];
  v6[4] = v10;

  v12 = [(NSString *)self->_bundleId copyWithZone:a3];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 52) & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_25;
  }

  v6 = *(v4 + 48);
  if (self->_engagedApp)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_25;
  }

LABEL_9:
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_score != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_25;
  }

  subscores = self->_subscores;
  if (subscores | *(v4 + 5) && ![(AWDProactiveAppPredictionSubscores *)subscores isEqual:?])
  {
    goto LABEL_25;
  }

  sessionId = self->_sessionId;
  if (sessionId | *(v4 + 4))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(v4 + 3))
  {
    v10 = [(NSString *)bundleId isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_26:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v5 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = 2654435761 * self->_engagedApp;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v2.i64 = floor(score + 0.5);
  v8 = (score - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_11:
  v11 = v6 ^ v5 ^ v10 ^ [(AWDProactiveAppPredictionSubscores *)self->_subscores hash];
  v12 = [(NSString *)self->_sessionId hash];
  return v11 ^ v12 ^ [(NSString *)self->_bundleId hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 52);
  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 52);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_engagedApp = *(v4 + 48);
  *&self->_has |= 4u;
  if (*(v4 + 52))
  {
LABEL_4:
    self->_score = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  subscores = self->_subscores;
  v8 = v5[5];
  v9 = v5;
  if (subscores)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(AWDProactiveAppPredictionSubscores *)subscores mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    [(AWDProactiveAppData *)self setSubscores:?];
  }

  v5 = v9;
LABEL_14:
  if (v5[4])
  {
    [(AWDProactiveAppData *)self setSessionId:?];
    v5 = v9;
  }

  if (v5[3])
  {
    [(AWDProactiveAppData *)self setBundleId:?];
  }

  MEMORY[0x2821F96F8]();
}

@end