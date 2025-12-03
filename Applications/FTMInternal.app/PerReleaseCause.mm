@interface PerReleaseCause
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMrab:(id)mrab;
- (int)mrab;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumCalls:(BOOL)calls;
- (void)setHasReleaseCause:(BOOL)cause;
- (void)writeTo:(id)to;
@end

@implementation PerReleaseCause

- (void)setHasReleaseCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)mrab
{
  if (*&self->_has)
  {
    return self->_mrab;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMrab:(id)mrab
{
  mrabCopy = mrab;
  if ([mrabCopy isEqualToString:@"MRAB_NONE"])
  {
    v4 = 0;
  }

  else if ([mrabCopy isEqualToString:@"MRAB_EVER"])
  {
    v4 = 1;
  }

  else if ([mrabCopy isEqualToString:@"MRAB_END"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNumCalls:(BOOL)calls
{
  if (calls)
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
  v7.receiver = self;
  v7.super_class = PerReleaseCause;
  v3 = [(PerReleaseCause *)&v7 description];
  dictionaryRepresentation = [(PerReleaseCause *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_releaseCause];
    [v3 setObject:v7 forKey:@"release_cause"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  mrab = self->_mrab;
  if (mrab >= 3)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_mrab];
  }

  else
  {
    v9 = *(&off_100317C98 + mrab);
  }

  [v3 setObject:v9 forKey:@"mrab"];

  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [NSNumber numberWithUnsignedInt:self->_numCalls];
  [v3 setObject:v5 forKey:@"num_calls"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    releaseCause = self->_releaseCause;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  mrab = self->_mrab;
  PBDataWriterWriteInt32Field();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    numCalls = self->_numCalls;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = self->_releaseCause;
    *(toCopy + 20) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  toCopy[2] = self->_mrab;
  *(toCopy + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[3] = self->_numCalls;
    *(toCopy + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_releaseCause;
    *(result + 20) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_mrab;
  *(result + 20) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_numCalls;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_releaseCause != *(equalCopy + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_mrab != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_numCalls != *(equalCopy + 3))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_releaseCause;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_mrab;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_numCalls;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if ((v5 & 4) != 0)
  {
    self->_releaseCause = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_mrab = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 20) & 2) != 0)
  {
LABEL_4:
    self->_numCalls = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end