@interface HKCodableQuantitySeriesEnumerationResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDataTypeCode:(BOOL)code;
- (void)setHasEndTime:(BOOL)time;
- (void)setHasPersistentID:(BOOL)d;
- (void)setHasSeriesIndex:(BOOL)index;
- (void)setHasSourceID:(BOOL)d;
- (void)setHasStartTime:(BOOL)time;
- (void)setHasValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation HKCodableQuantitySeriesEnumerationResult

- (void)setHasPersistentID:(BOOL)d
{
  if (d)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDataTypeCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasValue:(BOOL)value
{
  if (value)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasStartTime:(BOOL)time
{
  if (time)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasEndTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSourceID:(BOOL)d
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

- (void)setHasSeriesIndex:(BOOL)index
{
  if (index)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQuantitySeriesEnumerationResult;
  v4 = [(HKCodableQuantitySeriesEnumerationResult *)&v8 description];
  dictionaryRepresentation = [(HKCodableQuantitySeriesEnumerationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
    [dictionary setObject:v5 forKey:@"persistentID"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataTypeCode];
    [dictionary setObject:v6 forKey:@"dataTypeCode"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000000) == 0)
  {
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
  [dictionary setObject:v16 forKey:@"value"];

  *&v8 = self->_has;
  if (*&v8)
  {
LABEL_9:
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [dictionary setObject:v9 forKey:@"count"];

    *&v8 = self->_has;
  }

LABEL_10:
  if ((*&v8 & 0x40) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
    [dictionary setObject:v13 forKey:@"startTime"];

    *&v8 = self->_has;
    if ((*&v8 & 4) == 0)
    {
LABEL_12:
      if ((*&v8 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((*&v8 & 4) == 0)
  {
    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime];
  [dictionary setObject:v14 forKey:@"endTime"];

  *&v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sourceID];
  [dictionary setObject:v15 forKey:@"sourceID"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_seriesIndex];
    [dictionary setObject:v10 forKey:@"seriesIndex"];
  }

LABEL_15:
  quantitySample = self->_quantitySample;
  if (quantitySample)
  {
    [dictionary setObject:quantitySample forKey:@"quantitySample"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v15 = toCopy;
  if ((has & 8) != 0)
  {
    persistentID = self->_persistentID;
    PBDataWriterWriteInt64Field();
    toCopy = v15;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    dataTypeCode = self->_dataTypeCode;
    PBDataWriterWriteInt64Field();
    toCopy = v15;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v15;
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000000) == 0)
  {
    if ((*&v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  value = self->_value;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  *&v8 = self->_has;
  if (*&v8)
  {
LABEL_9:
    count = self->_count;
    PBDataWriterWriteInt64Field();
    toCopy = v15;
    *&v8 = self->_has;
  }

LABEL_10:
  if ((*&v8 & 0x40) != 0)
  {
    startTime = self->_startTime;
    PBDataWriterWriteDoubleField();
    toCopy = v15;
    *&v8 = self->_has;
    if ((*&v8 & 4) == 0)
    {
LABEL_12:
      if ((*&v8 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((*&v8 & 4) == 0)
  {
    goto LABEL_12;
  }

  endTime = self->_endTime;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  *&v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  sourceID = self->_sourceID;
  PBDataWriterWriteInt64Field();
  toCopy = v15;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    seriesIndex = self->_seriesIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v15;
  }

LABEL_15:
  if (self->_quantitySample)
  {
    PBDataWriterWriteDataField();
    toCopy = v15;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = self->_persistentID;
    *(toCopy + 88) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = self->_dataTypeCode;
    *(toCopy + 88) |= 2u;
  }

  v7 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000000) == 0)
  {
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  toCopy[8] = *&self->_value;
  *(toCopy + 88) |= 0x80u;
  *&v6 = self->_has;
  if (*&v6)
  {
LABEL_9:
    toCopy[1] = self->_count;
    *(toCopy + 88) |= 1u;
    *&v6 = self->_has;
  }

LABEL_10:
  if ((*&v6 & 0x40) != 0)
  {
    toCopy[7] = *&self->_startTime;
    *(toCopy + 88) |= 0x40u;
    *&v6 = self->_has;
    if ((*&v6 & 4) == 0)
    {
LABEL_12:
      if ((*&v6 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((*&v6 & 4) == 0)
  {
    goto LABEL_12;
  }

  toCopy[3] = *&self->_endTime;
  *(toCopy + 88) |= 4u;
  *&v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_13:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  toCopy[6] = self->_sourceID;
  *(toCopy + 88) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    toCopy[5] = self->_seriesIndex;
    *(toCopy + 88) |= 0x10u;
  }

LABEL_15:
  if (self->_quantitySample)
  {
    [v7 setQuantitySample:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_persistentID;
    *(v5 + 88) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_dataTypeCode;
    *(v5 + 88) |= 2u;
  }

  v8 = [(NSData *)self->_uuid copyWithZone:zone];
  v9 = *(v6 + 80);
  *(v6 + 80) = v8;

  v10 = self->_has;
  if ((*&v10 & 0x80000000) == 0)
  {
    if ((*&v10 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v6 + 64) = self->_value;
  *(v6 + 88) |= 0x80u;
  *&v10 = self->_has;
  if (*&v10)
  {
LABEL_7:
    *(v6 + 8) = self->_count;
    *(v6 + 88) |= 1u;
    *&v10 = self->_has;
  }

LABEL_8:
  if ((*&v10 & 0x40) != 0)
  {
    *(v6 + 56) = self->_startTime;
    *(v6 + 88) |= 0x40u;
    *&v10 = self->_has;
    if ((*&v10 & 4) == 0)
    {
LABEL_10:
      if ((*&v10 & 0x20) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      *(v6 + 48) = self->_sourceID;
      *(v6 + 88) |= 0x20u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&v10 & 4) == 0)
  {
    goto LABEL_10;
  }

  *(v6 + 24) = self->_endTime;
  *(v6 + 88) |= 4u;
  *&v10 = self->_has;
  if ((*&v10 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((*&v10 & 0x10) != 0)
  {
LABEL_12:
    *(v6 + 40) = self->_seriesIndex;
    *(v6 + 88) |= 0x10u;
  }

LABEL_13:
  v11 = [(NSData *)self->_quantitySample copyWithZone:zone];
  v12 = *(v6 + 72);
  *(v6 + 72) = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(equalCopy + 88);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 88) & 8) == 0 || self->_persistentID != *(equalCopy + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 88) & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_dataTypeCode != *(equalCopy + 2))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_47;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 10))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_47;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 88);
  if ((has & 0x80) == 0)
  {
    if ((*(equalCopy + 88) & 0x80) == 0)
    {
      goto LABEL_17;
    }

LABEL_47:
    v10 = 0;
    goto LABEL_48;
  }

  if ((*(equalCopy + 88) & 0x80) == 0 || self->_value != *(equalCopy + 8))
  {
    goto LABEL_47;
  }

LABEL_17:
  if (has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_count != *(equalCopy + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_47;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 88) & 0x40) == 0 || self->_startTime != *(equalCopy + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 88) & 0x40) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0 || self->_endTime != *(equalCopy + 3))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 88) & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 88) & 0x20) == 0 || self->_sourceID != *(equalCopy + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 88) & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 88) & 0x10) == 0 || self->_seriesIndex != *(equalCopy + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 88) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  quantitySample = self->_quantitySample;
  if (quantitySample | *(equalCopy + 9))
  {
    v10 = [(NSData *)quantitySample isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_48:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_persistentID;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_dataTypeCode;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_uuid hash];
  if ((*&self->_has & 0x80) != 0)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v6.i64 = floor(value + 0.5);
    v10 = (value - *v6.i64) * 1.84467441e19;
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
    v12 = 2654435761 * self->_count;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  v12 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  startTime = self->_startTime;
  if (startTime < 0.0)
  {
    startTime = -startTime;
  }

  *v6.i64 = floor(startTime + 0.5);
  v14 = (startTime - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v15), v7, v6);
  v16 = 2654435761u * *v6.i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

LABEL_22:
  if ((*&self->_has & 4) != 0)
  {
    endTime = self->_endTime;
    if (endTime < 0.0)
    {
      endTime = -endTime;
    }

    *v6.i64 = floor(endTime + 0.5);
    v19 = (endTime - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v7, v6).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v21 = 2654435761 * self->_sourceID;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_34;
    }

LABEL_36:
    v22 = 0;
    return v4 ^ v3 ^ v8 ^ v12 ^ v16 ^ v17 ^ v21 ^ v22 ^ v5 ^ [(NSData *)self->_quantitySample hash];
  }

  v21 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v22 = 2654435761 * self->_seriesIndex;
  return v4 ^ v3 ^ v8 ^ v12 ^ v16 ^ v17 ^ v21 ^ v22 ^ v5 ^ [(NSData *)self->_quantitySample hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[88];
  if ((v5 & 8) != 0)
  {
    self->_persistentID = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = fromCopy[88];
  }

  if ((v5 & 2) != 0)
  {
    self->_dataTypeCode = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 10))
  {
    [(HKCodableQuantitySeriesEnumerationResult *)self setUuid:?];
    fromCopy = v7;
  }

  v6 = fromCopy[88];
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_value = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  LOBYTE(v6) = fromCopy[88];
  if (v6)
  {
LABEL_9:
    self->_count = *(fromCopy + 1);
    *&self->_has |= 1u;
    LOBYTE(v6) = fromCopy[88];
  }

LABEL_10:
  if ((v6 & 0x40) != 0)
  {
    self->_startTime = *(fromCopy + 7);
    *&self->_has |= 0x40u;
    LOBYTE(v6) = fromCopy[88];
    if ((v6 & 4) == 0)
    {
LABEL_12:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_12;
  }

  self->_endTime = *(fromCopy + 3);
  *&self->_has |= 4u;
  LOBYTE(v6) = fromCopy[88];
  if ((v6 & 0x20) == 0)
  {
LABEL_13:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_22:
  self->_sourceID = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  if ((fromCopy[88] & 0x10) != 0)
  {
LABEL_14:
    self->_seriesIndex = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_15:
  if (*(fromCopy + 9))
  {
    [(HKCodableQuantitySeriesEnumerationResult *)self setQuantitySample:?];
    fromCopy = v7;
  }
}

@end