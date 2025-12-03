@interface CellularRfTunerEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasElapsedMs:(BOOL)ms;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasTimeoutMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation CellularRfTunerEvent

- (void)setHasElapsedMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTimeoutMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
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
  v7.receiver = self;
  v7.super_class = CellularRfTunerEvent;
  v3 = [(CellularRfTunerEvent *)&v7 description];
  dictionaryRepresentation = [(CellularRfTunerEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  oldState = self->_oldState;
  if (oldState)
  {
    dictionaryRepresentation = [(TunerState *)oldState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"old_state"];
  }

  thenewState = self->_thenewState;
  if (thenewState)
  {
    dictionaryRepresentation2 = [(TunerState *)thenewState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"new_state"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:self->_elapsedMs];
    [v3 setObject:v12 forKey:@"elapsed_ms"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  v13 = [NSNumber numberWithUnsignedInt:self->_timeoutMs];
  [v3 setObject:v13 forKey:@"timeout_ms"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v10 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v10 forKey:@"subs_id"];
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_oldState)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_thenewState)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    elapsedMs = self->_elapsedMs;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  timeoutMs = self->_timeoutMs;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  v6 = toCopy;
  if (self->_oldState)
  {
    [toCopy setOldState:?];
    toCopy = v6;
  }

  if (self->_thenewState)
  {
    [v6 setThenewState:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 4) = self->_elapsedMs;
    *(toCopy + 48) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 11) = self->_timeoutMs;
  *(toCopy + 48) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(toCopy + 10) = self->_subsId;
    *(toCopy + 48) |= 4u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(TunerState *)self->_oldState copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(TunerState *)self->_thenewState copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 11) = self->_timeoutMs;
    *(v6 + 48) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 4) = self->_elapsedMs;
  *(v6 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 4) != 0)
  {
LABEL_6:
    *(v6 + 10) = self->_subsId;
    *(v6 + 48) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_25:
    v8 = 0;
    goto LABEL_26;
  }

  oldState = self->_oldState;
  if (oldState | *(equalCopy + 4) && ![(TunerState *)oldState isEqual:?])
  {
    goto LABEL_25;
  }

  thenewState = self->_thenewState;
  if (thenewState | *(equalCopy + 3))
  {
    if (![(TunerState *)thenewState isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_elapsedMs != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_timeoutMs != *(equalCopy + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_25;
  }

  v8 = (*(equalCopy + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_subsId != *(equalCopy + 10))
    {
      goto LABEL_25;
    }

    v8 = 1;
  }

LABEL_26:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(TunerState *)self->_oldState hash];
  v5 = [(TunerState *)self->_thenewState hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v6 = 2654435761 * self->_elapsedMs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_timeoutMs;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  oldState = self->_oldState;
  v7 = v5[4];
  v11 = v5;
  if (oldState)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(TunerState *)oldState mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CellularRfTunerEvent *)self setOldState:?];
  }

  v5 = v11;
LABEL_9:
  thenewState = self->_thenewState;
  v9 = v5[3];
  if (thenewState)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(TunerState *)thenewState mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(CellularRfTunerEvent *)self setThenewState:?];
  }

  v5 = v11;
LABEL_15:
  v10 = *(v5 + 48);
  if ((v10 & 2) != 0)
  {
    self->_elapsedMs = *(v5 + 4);
    *&self->_has |= 2u;
    v10 = *(v5 + 48);
    if ((v10 & 8) == 0)
    {
LABEL_17:
      if ((v10 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v5[6] & 8) == 0)
  {
    goto LABEL_17;
  }

  self->_timeoutMs = *(v5 + 11);
  *&self->_has |= 8u;
  if ((v5[6] & 4) != 0)
  {
LABEL_18:
    self->_subsId = *(v5 + 10);
    *&self->_has |= 4u;
  }

LABEL_19:

  _objc_release_x1();
}

@end