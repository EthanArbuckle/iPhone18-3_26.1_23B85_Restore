@interface AWDProactiveAppData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEngagedApp:(BOOL)app;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDProactiveAppData

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

- (void)setHasEngagedApp:(BOOL)app
{
  if (app)
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
  dictionaryRepresentation = [(AWDProactiveAppData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v11 forKey:@"timestamp"];

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
  [dictionary setObject:v12 forKey:@"engagedApp"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [dictionary setObject:v5 forKey:@"score"];
  }

LABEL_5:
  subscores = self->_subscores;
  if (subscores)
  {
    dictionaryRepresentation = [(AWDProactiveAppPredictionSubscores *)subscores dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"subscores"];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"sessionId"];
  }

  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
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
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_5:
  if (self->_subscores)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 52) |= 2u;
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

  *(toCopy + 48) = self->_engagedApp;
  *(toCopy + 52) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    toCopy[1] = *&self->_score;
    *(toCopy + 52) |= 1u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_subscores)
  {
    [toCopy setSubscores:?];
    toCopy = v6;
  }

  if (self->_sessionId)
  {
    [v6 setSessionId:?];
    toCopy = v6;
  }

  if (self->_bundleId)
  {
    [v6 setBundleId:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(AWDProactiveAppPredictionSubscores *)self->_subscores copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSString *)self->_sessionId copyWithZone:zone];
  v11 = v6[4];
  v6[4] = v10;

  v12 = [(NSString *)self->_bundleId copyWithZone:zone];
  v13 = v6[3];
  v6[3] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(equalCopy + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if ((*(equalCopy + 52) & 4) == 0)
  {
    goto LABEL_25;
  }

  v6 = *(equalCopy + 48);
  if (self->_engagedApp)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_25;
  }

LABEL_9:
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_25;
  }

  subscores = self->_subscores;
  if (subscores | *(equalCopy + 5) && ![(AWDProactiveAppPredictionSubscores *)subscores isEqual:?])
  {
    goto LABEL_25;
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 4))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_25;
    }
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 52);
  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 52);
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

  else if ((*(fromCopy + 52) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_engagedApp = *(fromCopy + 48);
  *&self->_has |= 4u;
  if (*(fromCopy + 52))
  {
LABEL_4:
    self->_score = *(fromCopy + 1);
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