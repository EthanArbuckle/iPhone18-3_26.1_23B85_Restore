@interface ATXPBPredictionUserContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLastUnlockDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPredictionUserContext

- (void)setHasLastUnlockDate:(BOOL)date
{
  if (date)
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
  v8.super_class = ATXPBPredictionUserContext;
  v4 = [(ATXPBPredictionUserContext *)&v8 description];
  dictionaryRepresentation = [(ATXPBPredictionUserContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUnlockDate];
    [dictionary setObject:v4 forKey:@"lastUnlockDate"];
  }

  lastAppLaunch = self->_lastAppLaunch;
  if (lastAppLaunch)
  {
    [dictionary setObject:lastAppLaunch forKey:@"lastAppLaunch"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastAppLaunchDate];
    [dictionary setObject:v6 forKey:@"lastAppLaunchDate"];
  }

  secondMostRecentAppLaunch = self->_secondMostRecentAppLaunch;
  if (secondMostRecentAppLaunch)
  {
    [dictionary setObject:secondMostRecentAppLaunch forKey:@"secondMostRecentAppLaunch"];
  }

  lastAppActionLaunch = self->_lastAppActionLaunch;
  if (lastAppActionLaunch)
  {
    [dictionary setObject:lastAppActionLaunch forKey:@"lastAppActionLaunch"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    lastUnlockDate = self->_lastUnlockDate;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_lastAppLaunch)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    lastAppLaunchDate = self->_lastAppLaunchDate;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_secondMostRecentAppLaunch)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_lastAppActionLaunch)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = *&self->_lastUnlockDate;
    *(toCopy + 48) |= 2u;
  }

  v5 = toCopy;
  if (self->_lastAppLaunch)
  {
    [toCopy setLastAppLaunch:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[1] = *&self->_lastAppLaunchDate;
    *(toCopy + 48) |= 1u;
  }

  if (self->_secondMostRecentAppLaunch)
  {
    [v5 setSecondMostRecentAppLaunch:?];
    toCopy = v5;
  }

  if (self->_lastAppActionLaunch)
  {
    [v5 setLastAppActionLaunch:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_lastUnlockDate;
    *(v5 + 48) |= 2u;
  }

  v7 = [(NSString *)self->_lastAppLaunch copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_lastAppLaunchDate;
    *(v6 + 48) |= 1u;
  }

  v9 = [(NSString *)self->_secondMostRecentAppLaunch copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_lastAppActionLaunch copyWithZone:zone];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_lastUnlockDate != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_19;
  }

  lastAppLaunch = self->_lastAppLaunch;
  if (lastAppLaunch | *(equalCopy + 4))
  {
    if (![(NSString *)lastAppLaunch isEqual:?])
    {
LABEL_19:
      v11 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_lastAppLaunchDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_19;
  }

  secondMostRecentAppLaunch = self->_secondMostRecentAppLaunch;
  if (secondMostRecentAppLaunch | *(equalCopy + 5) && ![(NSString *)secondMostRecentAppLaunch isEqual:?])
  {
    goto LABEL_19;
  }

  lastAppActionLaunch = self->_lastAppActionLaunch;
  if (lastAppActionLaunch | *(equalCopy + 3))
  {
    v11 = [(NSString *)lastAppActionLaunch isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    lastUnlockDate = self->_lastUnlockDate;
    if (lastUnlockDate < 0.0)
    {
      lastUnlockDate = -lastUnlockDate;
    }

    *v2.i64 = floor(lastUnlockDate + 0.5);
    v7 = (lastUnlockDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_lastAppLaunch hash];
  if (*&self->_has)
  {
    lastAppLaunchDate = self->_lastAppLaunchDate;
    if (lastAppLaunchDate < 0.0)
    {
      lastAppLaunchDate = -lastAppLaunchDate;
    }

    *v10.i64 = floor(lastAppLaunchDate + 0.5);
    v14 = (lastAppLaunchDate - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = v9 ^ v5 ^ v12 ^ [(NSString *)self->_secondMostRecentAppLaunch hash];
  return v16 ^ [(NSString *)self->_lastAppActionLaunch hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[6] & 2) != 0)
  {
    self->_lastUnlockDate = fromCopy[2];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(ATXPBPredictionUserContext *)self setLastAppLaunch:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_lastAppLaunchDate = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(ATXPBPredictionUserContext *)self setSecondMostRecentAppLaunch:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXPBPredictionUserContext *)self setLastAppActionLaunch:?];
    fromCopy = v5;
  }
}

@end