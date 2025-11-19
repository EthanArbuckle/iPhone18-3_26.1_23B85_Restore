@interface HKCodableQuantitySeriesEnumerationResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataTypeCode:(BOOL)a3;
- (void)setHasEndTime:(BOOL)a3;
- (void)setHasPersistentID:(BOOL)a3;
- (void)setHasSeriesIndex:(BOOL)a3;
- (void)setHasSourceID:(BOOL)a3;
- (void)setHasStartTime:(BOOL)a3;
- (void)setHasValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableQuantitySeriesEnumerationResult

- (void)setHasPersistentID:(BOOL)a3
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

- (void)setHasDataTypeCode:(BOOL)a3
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

- (void)setHasValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasStartTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasEndTime:(BOOL)a3
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

- (void)setHasSourceID:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSeriesIndex:(BOOL)a3
{
  if (a3)
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
  v5 = [(HKCodableQuantitySeriesEnumerationResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_persistentID];
    [v3 setObject:v5 forKey:@"persistentID"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataTypeCode];
    [v3 setObject:v6 forKey:@"dataTypeCode"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
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
  [v3 setObject:v16 forKey:@"value"];

  *&v8 = self->_has;
  if (*&v8)
  {
LABEL_9:
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [v3 setObject:v9 forKey:@"count"];

    *&v8 = self->_has;
  }

LABEL_10:
  if ((*&v8 & 0x40) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTime];
    [v3 setObject:v13 forKey:@"startTime"];

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
  [v3 setObject:v14 forKey:@"endTime"];

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
  [v3 setObject:v15 forKey:@"sourceID"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_seriesIndex];
    [v3 setObject:v10 forKey:@"seriesIndex"];
  }

LABEL_15:
  quantitySample = self->_quantitySample;
  if (quantitySample)
  {
    [v3 setObject:quantitySample forKey:@"quantitySample"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v15 = v4;
  if ((has & 8) != 0)
  {
    persistentID = self->_persistentID;
    PBDataWriterWriteInt64Field();
    v4 = v15;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    dataTypeCode = self->_dataTypeCode;
    PBDataWriterWriteInt64Field();
    v4 = v15;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v15;
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
  v4 = v15;
  *&v8 = self->_has;
  if (*&v8)
  {
LABEL_9:
    count = self->_count;
    PBDataWriterWriteInt64Field();
    v4 = v15;
    *&v8 = self->_has;
  }

LABEL_10:
  if ((*&v8 & 0x40) != 0)
  {
    startTime = self->_startTime;
    PBDataWriterWriteDoubleField();
    v4 = v15;
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
  v4 = v15;
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
  v4 = v15;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    seriesIndex = self->_seriesIndex;
    PBDataWriterWriteInt64Field();
    v4 = v15;
  }

LABEL_15:
  if (self->_quantitySample)
  {
    PBDataWriterWriteDataField();
    v4 = v15;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = self->_persistentID;
    *(v4 + 88) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = self->_dataTypeCode;
    *(v4 + 88) |= 2u;
  }

  v7 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v7;
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

  v4[8] = *&self->_value;
  *(v4 + 88) |= 0x80u;
  *&v6 = self->_has;
  if (*&v6)
  {
LABEL_9:
    v4[1] = self->_count;
    *(v4 + 88) |= 1u;
    *&v6 = self->_has;
  }

LABEL_10:
  if ((*&v6 & 0x40) != 0)
  {
    v4[7] = *&self->_startTime;
    *(v4 + 88) |= 0x40u;
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

  v4[3] = *&self->_endTime;
  *(v4 + 88) |= 4u;
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
  v4[6] = self->_sourceID;
  *(v4 + 88) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v4[5] = self->_seriesIndex;
    *(v4 + 88) |= 0x10u;
  }

LABEL_15:
  if (self->_quantitySample)
  {
    [v7 setQuantitySample:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSData *)self->_uuid copyWithZone:a3];
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
  v11 = [(NSData *)self->_quantitySample copyWithZone:a3];
  v12 = *(v6 + 72);
  *(v6 + 72) = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(v4 + 88);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 88) & 8) == 0 || self->_persistentID != *(v4 + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 88) & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_dataTypeCode != *(v4 + 2))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 88) & 2) != 0)
  {
    goto LABEL_47;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 10))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_47;
    }

    has = self->_has;
  }

  v8 = *(v4 + 88);
  if ((has & 0x80) == 0)
  {
    if ((*(v4 + 88) & 0x80) == 0)
    {
      goto LABEL_17;
    }

LABEL_47:
    v10 = 0;
    goto LABEL_48;
  }

  if ((*(v4 + 88) & 0x80) == 0 || self->_value != *(v4 + 8))
  {
    goto LABEL_47;
  }

LABEL_17:
  if (has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_count != *(v4 + 1))
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 88))
  {
    goto LABEL_47;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 88) & 0x40) == 0 || self->_startTime != *(v4 + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 88) & 0x40) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 88) & 4) == 0 || self->_endTime != *(v4 + 3))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 88) & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 88) & 0x20) == 0 || self->_sourceID != *(v4 + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 88) & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 88) & 0x10) == 0 || self->_seriesIndex != *(v4 + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 88) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  quantitySample = self->_quantitySample;
  if (quantitySample | *(v4 + 9))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[88];
  if ((v5 & 8) != 0)
  {
    self->_persistentID = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = v4[88];
  }

  if ((v5 & 2) != 0)
  {
    self->_dataTypeCode = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v7 = v4;
  if (*(v4 + 10))
  {
    [(HKCodableQuantitySeriesEnumerationResult *)self setUuid:?];
    v4 = v7;
  }

  v6 = v4[88];
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_value = *(v4 + 8);
  *&self->_has |= 0x80u;
  LOBYTE(v6) = v4[88];
  if (v6)
  {
LABEL_9:
    self->_count = *(v4 + 1);
    *&self->_has |= 1u;
    LOBYTE(v6) = v4[88];
  }

LABEL_10:
  if ((v6 & 0x40) != 0)
  {
    self->_startTime = *(v4 + 7);
    *&self->_has |= 0x40u;
    LOBYTE(v6) = v4[88];
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

  self->_endTime = *(v4 + 3);
  *&self->_has |= 4u;
  LOBYTE(v6) = v4[88];
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
  self->_sourceID = *(v4 + 6);
  *&self->_has |= 0x20u;
  if ((v4[88] & 0x10) != 0)
  {
LABEL_14:
    self->_seriesIndex = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_15:
  if (*(v4 + 9))
  {
    [(HKCodableQuantitySeriesEnumerationResult *)self setQuantitySample:?];
    v4 = v7;
  }
}

@end