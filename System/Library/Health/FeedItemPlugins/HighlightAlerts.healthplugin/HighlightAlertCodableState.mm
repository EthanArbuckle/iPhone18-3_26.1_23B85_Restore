@interface HighlightAlertCodableState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAcknowledged:(BOOL)acknowledged;
- (void)setHasDismissed:(BOOL)dismissed;
- (void)setHasExpirationDate:(BOOL)date;
- (void)setHasLatestSupportedVersion:(BOOL)version;
- (void)setHasMinimumSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HighlightAlertCodableState

- (void)setHasLatestSupportedVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinimumSupportedVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasExpirationDate:(BOOL)date
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

- (void)setHasAcknowledged:(BOOL)acknowledged
{
  if (acknowledged)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasDismissed:(BOOL)dismissed
{
  if (dismissed)
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
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = HighlightAlertCodableState;
  v4 = [(HighlightAlertCodableState *)&v8 description];
  dictionaryRepresentation = [(HighlightAlertCodableState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_latestSupportedVersion];
    [dictionary setObject:v5 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v6 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_minimumSupportedVersion];
    [dictionary setObject:v6 forKey:@"minimumSupportedVersion"];
  }

  eventUUID = self->_eventUUID;
  if (eventUUID)
  {
    [dictionary setObject:eventUUID forKey:@"eventUUID"];
  }

  v8 = self->_has;
  if (v8)
  {
    v11 = [MEMORY[0x29EDBA070] numberWithDouble:self->_eventDate];
    [dictionary setObject:v11 forKey:@"eventDate"];

    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_9:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x29EDBA070] numberWithDouble:self->_expirationDate];
  [dictionary setObject:v12 forKey:@"expirationDate"];

  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  v13 = [MEMORY[0x29EDBA070] numberWithBool:self->_acknowledged];
  [dictionary setObject:v13 forKey:@"acknowledged"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x29EDBA070] numberWithBool:self->_dismissed];
    [dictionary setObject:v9 forKey:@"dismissed"];
  }

LABEL_12:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    latestSupportedVersion = self->_latestSupportedVersion;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    minimumSupportedVersion = self->_minimumSupportedVersion;
    PBDataWriterWriteInt64Field();
  }

  if (self->_eventUUID)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if (v7)
  {
    eventDate = self->_eventDate;
    PBDataWriterWriteDoubleField();
    v7 = self->_has;
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  expirationDate = self->_expirationDate;
  PBDataWriterWriteDoubleField();
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_10:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  acknowledged = self->_acknowledged;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    dismissed = self->_dismissed;
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = self->_latestSupportedVersion;
    *(toCopy + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[4] = self->_minimumSupportedVersion;
    *(toCopy + 52) |= 8u;
  }

  if (self->_eventUUID)
  {
    v7 = toCopy;
    [toCopy setEventUUID:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    toCopy[1] = *&self->_eventDate;
    *(toCopy + 52) |= 1u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  toCopy[2] = *&self->_expirationDate;
  *(toCopy + 52) |= 2u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  *(toCopy + 48) = self->_acknowledged;
  *(toCopy + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    *(toCopy + 49) = self->_dismissed;
    *(toCopy + 52) |= 0x20u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_latestSupportedVersion;
    *(v5 + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_minimumSupportedVersion;
    *(v5 + 52) |= 8u;
  }

  v8 = [(NSString *)self->_eventUUID copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = self->_has;
  if (v10)
  {
    *(v6 + 8) = self->_eventDate;
    *(v6 + 52) |= 1u;
    v10 = self->_has;
    if ((v10 & 2) == 0)
    {
LABEL_7:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      *(v6 + 48) = self->_acknowledged;
      *(v6 + 52) |= 0x10u;
      if ((*&self->_has & 0x20) == 0)
      {
        return v6;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 16) = self->_expirationDate;
  *(v6 + 52) |= 2u;
  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v10 & 0x20) != 0)
  {
LABEL_9:
    *(v6 + 49) = self->_dismissed;
    *(v6 + 52) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(equalCopy + 52);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_latestSupportedVersion != *(equalCopy + 3))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_33;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0 || self->_minimumSupportedVersion != *(equalCopy + 4))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_33;
  }

  eventUUID = self->_eventUUID;
  if (eventUUID | *(equalCopy + 5))
  {
    if (![(NSString *)eventUUID isEqual:?])
    {
      goto LABEL_33;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_eventDate != *(equalCopy + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_33;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_expirationDate != *(equalCopy + 2))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_33;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 52) & 0x10) == 0)
    {
      goto LABEL_33;
    }

    v10 = *(equalCopy + 48);
    if (self->_acknowledged)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 52) & 0x10) != 0)
  {
    goto LABEL_33;
  }

  v8 = (*(equalCopy + 52) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 52) & 0x20) != 0)
    {
      if (self->_dismissed)
      {
        if (*(equalCopy + 49))
        {
          goto LABEL_41;
        }
      }

      else if (!*(equalCopy + 49))
      {
LABEL_41:
        v8 = 1;
        goto LABEL_34;
      }
    }

LABEL_33:
    v8 = 0;
  }

LABEL_34:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_minimumSupportedVersion;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_eventUUID hash];
  if (*&self->_has)
  {
    eventDate = self->_eventDate;
    if (eventDate < 0.0)
    {
      eventDate = -eventDate;
    }

    *v6.i64 = floor(eventDate + 0.5);
    v10 = (eventDate - *v6.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v6.i64 = floor(expirationDate + 0.5);
    v14 = (expirationDate - *v6.i64) * 1.84467441e19;
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

  if ((*&self->_has & 0x10) != 0)
  {
    v16 = 2654435761 * self->_acknowledged;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    v17 = 0;
    return v4 ^ v3 ^ v8 ^ v12 ^ v16 ^ v17 ^ v5;
  }

  v16 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v17 = 2654435761 * self->_dismissed;
  return v4 ^ v3 ^ v8 ^ v12 ^ v16 ^ v17 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 52);
  if ((v5 & 4) != 0)
  {
    self->_latestSupportedVersion = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 52);
  }

  if ((v5 & 8) != 0)
  {
    self->_minimumSupportedVersion = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 5))
  {
    v7 = fromCopy;
    [(HighlightAlertCodableState *)self setEventUUID:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 52);
  if (v6)
  {
    self->_eventDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 52);
    if ((v6 & 2) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 52) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_expirationDate = *(fromCopy + 2);
  *&self->_has |= 2u;
  v6 = *(fromCopy + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_acknowledged = *(fromCopy + 48);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 52) & 0x20) != 0)
  {
LABEL_11:
    self->_dismissed = *(fromCopy + 49);
    *&self->_has |= 0x20u;
  }

LABEL_12:
}

@end