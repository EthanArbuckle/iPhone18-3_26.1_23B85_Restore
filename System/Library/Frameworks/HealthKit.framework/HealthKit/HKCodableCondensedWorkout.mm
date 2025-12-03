@interface HKCodableCondensedWorkout
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCondenserVersion:(BOOL)version;
- (void)setHasCreationDate:(BOOL)date;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasPersistentID:(BOOL)d;
- (void)setHasStartDate:(BOOL)date;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HKCodableCondensedWorkout

- (void)setHasPersistentID:(BOOL)d
{
  if (d)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasCreationDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCondenserVersion:(BOOL)version
{
  if (version)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableCondensedWorkout;
  v4 = [(HKCodableCondensedWorkout *)&v8 description];
  dictionaryRepresentation = [(HKCodableCondensedWorkout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
    [dictionary setObject:v4 forKey:@"persistentID"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_creationDate];
    [dictionary setObject:v9 forKey:@"creationDate"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
  [dictionary setObject:v10 forKey:@"startDate"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
  [dictionary setObject:v11 forKey:@"endDate"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_type];
  [dictionary setObject:v12 forKey:@"type"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
  [dictionary setObject:v13 forKey:@"duration"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_condenserVersion];
  [dictionary setObject:v14 forKey:@"condenserVersion"];

  if (*&self->_has)
  {
LABEL_12:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_condenserDate];
    [dictionary setObject:v7 forKey:@"condenserDate"];
  }

LABEL_13:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x20) != 0)
  {
    persistentID = self->_persistentID;
    PBDataWriterWriteInt64Field();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    creationDate = self->_creationDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  startDate = self->_startDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  endDate = self->_endDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  type = self->_type;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  duration = self->_duration;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  condenserVersion = self->_condenserVersion;
  PBDataWriterWriteInt64Field();
  if (*&self->_has)
  {
LABEL_12:
    condenserDate = self->_condenserDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_13:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x20) != 0)
  {
    toCopy[6] = self->_persistentID;
    *(toCopy + 80) |= 0x20u;
  }

  if (self->_uuid)
  {
    v6 = toCopy;
    [toCopy setUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[3] = *&self->_creationDate;
    *(toCopy + 80) |= 4u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  toCopy[7] = *&self->_startDate;
  *(toCopy + 80) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[5] = *&self->_endDate;
  *(toCopy + 80) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[8] = self->_type;
  *(toCopy + 80) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[4] = *&self->_duration;
  *(toCopy + 80) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  toCopy[2] = self->_condenserVersion;
  *(toCopy + 80) |= 2u;
  if (*&self->_has)
  {
LABEL_12:
    toCopy[1] = *&self->_condenserDate;
    *(toCopy + 80) |= 1u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_persistentID;
    *(v5 + 80) |= 0x20u;
  }

  v7 = [(NSData *)self->_uuid copyWithZone:zone];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_creationDate;
    *(v6 + 80) |= 4u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 56) = self->_startDate;
  *(v6 + 80) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v6 + 40) = self->_endDate;
  *(v6 + 80) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 64) = self->_type;
  *(v6 + 80) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    *(v6 + 16) = self->_condenserVersion;
    *(v6 + 80) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v6;
    }

    goto LABEL_10;
  }

LABEL_16:
  *(v6 + 32) = self->_duration;
  *(v6 + 80) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (has)
  {
LABEL_10:
    *(v6 + 8) = self->_condenserDate;
    *(v6 + 80) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  has = self->_has;
  v6 = *(equalCopy + 80);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 80) & 0x20) == 0 || self->_persistentID != *(equalCopy + 6))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 80) & 0x20) != 0)
  {
    goto LABEL_44;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 9))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_44;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_creationDate != *(equalCopy + 3))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 80) & 0x40) == 0 || self->_startDate != *(equalCopy + 7))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 80) & 0x40) != 0)
  {
    goto LABEL_44;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 80) & 0x10) == 0 || self->_endDate != *(equalCopy + 5))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 80) & 0x10) != 0)
  {
    goto LABEL_44;
  }

  if ((has & 0x80) == 0)
  {
    if ((*(equalCopy + 80) & 0x80) == 0)
    {
      goto LABEL_27;
    }

LABEL_44:
    v8 = 0;
    goto LABEL_45;
  }

  if ((*(equalCopy + 80) & 0x80) == 0 || self->_type != *(equalCopy + 8))
  {
    goto LABEL_44;
  }

LABEL_27:
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 80) & 8) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 80) & 8) != 0)
  {
    goto LABEL_44;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_condenserVersion != *(equalCopy + 2))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_44;
  }

  v8 = (*(equalCopy + 80) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_condenserDate != *(equalCopy + 1))
    {
      goto LABEL_44;
    }

    v8 = 1;
  }

LABEL_45:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v3 = 2654435761 * self->_persistentID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_uuid hash];
  if ((*&self->_has & 4) != 0)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v5.i64 = floor(creationDate + 0.5);
    v9 = (creationDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v5.i64 = floor(startDate + 0.5);
    v13 = (startDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v14), v6, v5);
    v11 = 2654435761u * *v5.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v5.i64 = floor(endDate + 0.5);
    v17 = (endDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v18), v6, v5);
    v15 = 2654435761u * *v5.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v19 = 2654435761 * self->_type;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = 0;
    if ((*&self->_has & 8) == 0)
    {
LABEL_30:
      v20 = 0;
      goto LABEL_38;
    }
  }

  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v5.i64 = floor(duration + 0.5);
  v22 = (duration - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v23), v6, v5);
  v20 = 2654435761u * *v5.i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v20 += v22;
    }
  }

  else
  {
    v20 -= fabs(v22);
  }

LABEL_38:
  if ((*&self->_has & 2) != 0)
  {
    v24 = 2654435761 * self->_condenserVersion;
    if (*&self->_has)
    {
      goto LABEL_40;
    }

LABEL_45:
    v28 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v19 ^ v20 ^ v24 ^ v28;
  }

  v24 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_40:
  condenserDate = self->_condenserDate;
  if (condenserDate < 0.0)
  {
    condenserDate = -condenserDate;
  }

  *v5.i64 = floor(condenserDate + 0.5);
  v26 = (condenserDate - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v27.f64[0] = NAN;
  v27.f64[1] = NAN;
  v28 = 2654435761u * *vbslq_s8(vnegq_f64(v27), v6, v5).i64;
  if (v26 >= 0.0)
  {
    if (v26 > 0.0)
    {
      v28 += v26;
    }
  }

  else
  {
    v28 -= fabs(v26);
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v19 ^ v20 ^ v24 ^ v28;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 80) & 0x20) != 0)
  {
    self->_persistentID = *(fromCopy + 6);
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 9))
  {
    v6 = fromCopy;
    [(HKCodableCondensedWorkout *)self setUuid:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 80);
  if ((v5 & 4) != 0)
  {
    self->_creationDate = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 80);
    if ((v5 & 0x40) == 0)
    {
LABEL_7:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*(fromCopy + 80) & 0x40) == 0)
  {
    goto LABEL_7;
  }

  self->_startDate = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 80);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_endDate = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_type = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 80);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_duration = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 80);
  if ((v5 & 2) == 0)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  self->_condenserVersion = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 80))
  {
LABEL_12:
    self->_condenserDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_13:
}

@end