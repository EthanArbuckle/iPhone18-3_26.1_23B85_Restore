@interface PDDPTypedValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)addStringListValue:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasEncryptionScheme:(BOOL)a3;
- (void)setHasInt64Value:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPTypedValue

- (int)type
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"STRING_TYPE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"STRING_LIST_TYPE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DATE_TYPE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DATE_LIST_TYPE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"INT64_TYPE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"INT64_LIST_TYPE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"DOUBLE_TYPE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"DOUBLE_LIST_TYPE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"BOOLEAN_TYPE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"BOOLEAN_LIST_TYPE"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEncryptionScheme:(BOOL)a3
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

- (void)addStringListValue:(id)a3
{
  v4 = a3;
  stringListValues = self->_stringListValues;
  v8 = v4;
  if (!stringListValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stringListValues;
    self->_stringListValues = v6;

    v4 = v8;
    stringListValues = self->_stringListValues;
  }

  [(NSMutableArray *)stringListValues addObject:v4];
}

- (void)setHasInt64Value:(BOOL)a3
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

- (void)setHasBoolValue:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = PDDPTypedValue;
  v3 = [(PDDPTypedValue *)&v7 description];
  v4 = [(PDDPTypedValue *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    type = self->_type;
    if (type >= 0xB)
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v6 = off_100206360[type];
    }

    [v3 setObject:v6 forKey:@"type"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_encryptionScheme];
    [v3 setObject:v7 forKey:@"encryption_scheme"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"string_value"];
  }

  stringListValues = self->_stringListValues;
  if (stringListValues)
  {
    [v3 setObject:stringListValues forKey:@"string_list_value"];
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    v11 = [(PDDPDate *)dateValue dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"date_value"];
  }

  v12 = self->_has;
  if ((v12 & 2) != 0)
  {
    v15 = [NSNumber numberWithLongLong:self->_int64Value];
    [v3 setObject:v15 forKey:@"int64_value"];

    v12 = self->_has;
    if ((v12 & 1) == 0)
    {
LABEL_16:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = [NSNumber numberWithDouble:self->_doubleValue];
  [v3 setObject:v16 forKey:@"double_value"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    v13 = [NSNumber numberWithBool:self->_BOOLValue];
    [v3 setObject:v13 forKey:@"BOOL_value"];
  }

LABEL_18:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    encryptionScheme = self->_encryptionScheme;
    PBDataWriterWriteInt32Field();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_stringListValues;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if (self->_dateValue)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = self->_has;
  if ((v14 & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  int64Value = self->_int64Value;
  PBDataWriterWriteInt64Field();
  v14 = self->_has;
  if (v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v14 & 0x10) != 0)
  {
LABEL_19:
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
  }

LABEL_20:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[14] = self->_type;
    *(v4 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[8] = self->_encryptionScheme;
    *(v4 + 64) |= 4u;
  }

  v11 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
  }

  if ([(PDDPTypedValue *)self stringListValuesCount])
  {
    [v11 clearStringListValues];
    v6 = [(PDDPTypedValue *)self stringListValuesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PDDPTypedValue *)self stringListValueAtIndex:i];
        [v11 addStringListValue:v9];
      }
    }
  }

  if (self->_dateValue)
  {
    [v11 setDateValue:?];
  }

  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    *(v11 + 2) = self->_int64Value;
    *(v11 + 64) |= 2u;
    v10 = self->_has;
    if ((v10 & 1) == 0)
    {
LABEL_15:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

  *(v11 + 1) = *&self->_doubleValue;
  *(v11 + 64) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    *(v11 + 60) = self->_BOOLValue;
    *(v11 + 64) |= 0x10u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5[14] = self->_type;
    *(v5 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v5[8] = self->_encryptionScheme;
    *(v5 + 64) |= 4u;
  }

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = v6[6];
  v6[6] = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = self->_stringListValues;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addStringListValue:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(PDDPDate *)self->_dateValue copyWithZone:a3];
  v17 = v6[3];
  v6[3] = v16;

  v18 = self->_has;
  if ((v18 & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    v6[1] = *&self->_doubleValue;
    *(v6 + 64) |= 1u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_15;
  }

  v6[2] = self->_int64Value;
  *(v6 + 64) |= 2u;
  v18 = self->_has;
  if (v18)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ((v18 & 0x10) != 0)
  {
LABEL_15:
    *(v6 + 60) = self->_BOOLValue;
    *(v6 + 64) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = *(v4 + 64);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_type != *(v4 + 14))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_30;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_encryptionScheme != *(v4 + 8))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_30;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 6) && ![(NSString *)stringValue isEqual:?])
  {
    goto LABEL_30;
  }

  stringListValues = self->_stringListValues;
  if (stringListValues | *(v4 + 5))
  {
    if (![(NSMutableArray *)stringListValues isEqual:?])
    {
      goto LABEL_30;
    }
  }

  dateValue = self->_dateValue;
  if (dateValue | *(v4 + 3))
  {
    if (![(PDDPDate *)dateValue isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_int64Value != *(v4 + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_30;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_30;
  }

  v9 = (*(v4 + 64) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0)
    {
LABEL_30:
      v9 = 0;
      goto LABEL_31;
    }

    if (self->_BOOLValue)
    {
      if ((*(v4 + 60) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if (*(v4 + 60))
    {
      goto LABEL_30;
    }

    v9 = 1;
  }

LABEL_31:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_type;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_encryptionScheme;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_stringValue hash];
  v6 = [(NSMutableArray *)self->_stringListValues hash];
  v7 = [(PDDPDate *)self->_dateValue hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_int64Value;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v8.i64 = floor(doubleValue + 0.5);
  v12 = (doubleValue - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v9, v8).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_14:
  if ((*&self->_has & 0x10) != 0)
  {
    v15 = 2654435761 * self->_BOOLValue;
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 64);
  if ((v6 & 8) != 0)
  {
    self->_type = v4[14];
    *&self->_has |= 8u;
    v6 = *(v4 + 64);
  }

  if ((v6 & 4) != 0)
  {
    self->_encryptionScheme = v4[8];
    *&self->_has |= 4u;
  }

  if (*(v4 + 6))
  {
    [(PDDPTypedValue *)self setStringValue:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(v5 + 5);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PDDPTypedValue *)self addStringListValue:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  dateValue = self->_dateValue;
  v13 = *(v5 + 3);
  if (dateValue)
  {
    if (v13)
    {
      [(PDDPDate *)dateValue mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(PDDPTypedValue *)self setDateValue:?];
  }

  v14 = *(v5 + 64);
  if ((v14 & 2) == 0)
  {
    if ((v5[16] & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    self->_doubleValue = *(v5 + 1);
    *&self->_has |= 1u;
    if ((v5[16] & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  self->_int64Value = *(v5 + 2);
  *&self->_has |= 2u;
  v14 = *(v5 + 64);
  if (v14)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((v14 & 0x10) != 0)
  {
LABEL_22:
    self->_BOOLValue = *(v5 + 60);
    *&self->_has |= 0x10u;
  }

LABEL_23:
}

@end