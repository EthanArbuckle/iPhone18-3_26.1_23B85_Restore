@interface CellularRfTunerEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasElapsedMs:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTimeoutMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CellularRfTunerEvent

- (void)setHasElapsedMs:(BOOL)a3
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

- (void)setHasTimeoutMs:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = CellularRfTunerEvent;
  v3 = [(CellularRfTunerEvent *)&v7 description];
  v4 = [(CellularRfTunerEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v6 = [(TunerState *)oldState dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"old_state"];
  }

  thenewState = self->_thenewState;
  if (thenewState)
  {
    v8 = [(TunerState *)thenewState dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"new_state"];
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

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  v6 = v4;
  if (self->_oldState)
  {
    [v4 setOldState:?];
    v4 = v6;
  }

  if (self->_thenewState)
  {
    [v6 setThenewState:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 4) = self->_elapsedMs;
    *(v4 + 48) |= 2u;
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

  *(v4 + 11) = self->_timeoutMs;
  *(v4 + 48) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *(v4 + 10) = self->_subsId;
    *(v4 + 48) |= 4u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v7 = [(TunerState *)self->_oldState copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(TunerState *)self->_thenewState copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_25:
    v8 = 0;
    goto LABEL_26;
  }

  oldState = self->_oldState;
  if (oldState | *(v4 + 4) && ![(TunerState *)oldState isEqual:?])
  {
    goto LABEL_25;
  }

  thenewState = self->_thenewState;
  if (thenewState | *(v4 + 3))
  {
    if (![(TunerState *)thenewState isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_elapsedMs != *(v4 + 4))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_timeoutMs != *(v4 + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_25;
  }

  v8 = (*(v4 + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_subsId != *(v4 + 10))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[6])
  {
    self->_timestamp = v4[1];
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