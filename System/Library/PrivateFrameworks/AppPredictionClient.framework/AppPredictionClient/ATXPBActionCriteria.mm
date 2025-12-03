@interface ATXPBActionCriteria
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsLockScreenEligible:(BOOL)eligible;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation ATXPBActionCriteria

- (void)setHasStartDate:(BOOL)date
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

- (void)setHasIsLockScreenEligible:(BOOL)eligible
{
  if (eligible)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBActionCriteria;
  v4 = [(ATXPBActionCriteria *)&v8 description];
  dictionaryRepresentation = [(ATXPBActionCriteria *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [dictionary setObject:v8 forKey:@"startDate"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
  [dictionary setObject:v9 forKey:@"endDate"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLockScreenEligible];
    [dictionary setObject:v5 forKey:@"isLockScreenEligible"];
  }

LABEL_5:
  predicate = self->_predicate;
  if (predicate)
  {
    [dictionary setObject:predicate forKey:@"predicate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_5:
  if (self->_predicate)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_startDate;
    *(toCopy + 36) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[1] = *&self->_endDate;
  *(toCopy + 36) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(toCopy + 32) = self->_isLockScreenEligible;
    *(toCopy + 36) |= 4u;
  }

LABEL_5:
  if (self->_predicate)
  {
    v6 = toCopy;
    [toCopy setPredicate:?];
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
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_endDate;
    *(v5 + 36) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_startDate;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_isLockScreenEligible;
    *(v5 + 36) |= 4u;
  }

LABEL_5:
  v8 = [(NSData *)self->_predicate copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_startDate != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_endDate != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if ((*(equalCopy + 36) & 4) == 0)
  {
    goto LABEL_17;
  }

  if (self->_isLockScreenEligible)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_17;
  }

LABEL_14:
  predicate = self->_predicate;
  if (predicate | *(equalCopy + 3))
  {
    v6 = [(NSData *)predicate isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_18:

  return v6;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v6.i64 = floor(startDate + 0.5);
    v10 = (startDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v6.i64 = floor(endDate + 0.5);
    v14 = (endDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v7, v6).i64;
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

  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_isLockScreenEligible;
  }

  else
  {
    v16 = 0;
  }

  return v12 ^ v8 ^ v16 ^ [(NSData *)self->_predicate hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) != 0)
  {
    self->_startDate = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 36);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_endDate = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 36) & 4) != 0)
  {
LABEL_4:
    self->_isLockScreenEligible = *(fromCopy + 32);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(ATXPBActionCriteria *)self setPredicate:?];
    fromCopy = v6;
  }
}

@end