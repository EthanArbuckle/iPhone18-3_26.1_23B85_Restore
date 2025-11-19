@interface ACProtobufVariableValue
- (ACProtobufVariableValue)initWithObjectValue:(id)a3;
- (BOOL)_setObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)object;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIntegerValue:(BOOL)a3;
- (void)setHasUnsignedIntegerValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ACProtobufVariableValue

- (void)setHasIntegerValue:(BOOL)a3
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

- (void)setHasUnsignedIntegerValue:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufVariableValue;
  v4 = [(ACProtobufVariableValue *)&v8 description];
  v5 = [(ACProtobufVariableValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integerValue];
    [v4 setObject:v22 forKey:@"integerValue"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_unsignedIntegerValue];
  [v4 setObject:v23 forKey:@"unsignedIntegerValue"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
    [v4 setObject:v7 forKey:@"doubleValue"];
  }

LABEL_7:
  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  uuidValue = self->_uuidValue;
  if (uuidValue)
  {
    v10 = [(ACProtobufUUID *)uuidValue dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"uuidValue"];
  }

  dateValue = self->_dateValue;
  if (dateValue)
  {
    v12 = [(ACProtobufDate *)dateValue dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"dateValue"];
  }

  urlValue = self->_urlValue;
  if (urlValue)
  {
    v14 = [(ACProtobufURL *)urlValue dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"urlValue"];
  }

  arrayValue = self->_arrayValue;
  if (arrayValue)
  {
    v16 = [(ACProtobufVariableValueList *)arrayValue dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"arrayValue"];
  }

  setValue = self->_setValue;
  if (setValue)
  {
    v18 = [(ACProtobufVariableValueList *)setValue dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"setValue"];
  }

  dictionaryValue = self->_dictionaryValue;
  if (dictionaryValue)
  {
    v20 = [(ACProtobufVariableValueDictionary *)dictionaryValue dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"dictionaryValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    integerValue = self->_integerValue;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  unsignedIntegerValue = self->_unsignedIntegerValue;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_6:
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_7:
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_uuidValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_dateValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_urlValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_arrayValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_setValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_dictionaryValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_integerValue;
    *(v4 + 96) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 3) = self->_unsignedIntegerValue;
  *(v4 + 96) |= 4u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 1) = *&self->_doubleValue;
    *(v4 + 96) |= 1u;
  }

LABEL_7:
  if (self->_dataValue)
  {
    [v6 setDataValue:?];
    v4 = v6;
  }

  if (self->_uuidValue)
  {
    [v6 setUuidValue:?];
    v4 = v6;
  }

  if (self->_dateValue)
  {
    [v6 setDateValue:?];
    v4 = v6;
  }

  if (self->_urlValue)
  {
    [v6 setUrlValue:?];
    v4 = v6;
  }

  if (self->_arrayValue)
  {
    [v6 setArrayValue:?];
    v4 = v6;
  }

  if (self->_setValue)
  {
    [v6 setSetValue:?];
    v4 = v6;
  }

  if (self->_dictionaryValue)
  {
    [v6 setDictionaryValue:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_unsignedIntegerValue;
    *(v5 + 96) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_integerValue;
  *(v5 + 96) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_doubleValue;
    *(v5 + 96) |= 1u;
  }

LABEL_5:
  v9 = [(NSData *)self->_dataValue copyWithZone:a3];
  v10 = *(v5 + 40);
  *(v5 + 40) = v9;

  v11 = [(ACProtobufUUID *)self->_uuidValue copyWithZone:a3];
  v12 = *(v5 + 88);
  *(v5 + 88) = v11;

  v13 = [(ACProtobufDate *)self->_dateValue copyWithZone:a3];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  v15 = [(ACProtobufURL *)self->_urlValue copyWithZone:a3];
  v16 = *(v5 + 80);
  *(v5 + 80) = v15;

  v17 = [(ACProtobufVariableValueList *)self->_arrayValue copyWithZone:a3];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  v19 = [(ACProtobufVariableValueList *)self->_setValue copyWithZone:a3];
  v20 = *(v5 + 64);
  *(v5 + 64) = v19;

  v21 = [(ACProtobufVariableValueDictionary *)self->_dictionaryValue copyWithZone:a3];
  v22 = *(v5 + 56);
  *(v5 + 56) = v21;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 9))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_33;
    }
  }

  v6 = *(v4 + 96);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_integerValue != *(v4 + 2))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 96) & 4) == 0 || self->_unsignedIntegerValue != *(v4 + 3))
    {
      goto LABEL_33;
    }
  }

  else if ((*(v4 + 96) & 4) != 0)
  {
    goto LABEL_33;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_33;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 5) && ![(NSData *)dataValue isEqual:?])
  {
    goto LABEL_33;
  }

  uuidValue = self->_uuidValue;
  if (uuidValue | *(v4 + 11))
  {
    if (![(ACProtobufUUID *)uuidValue isEqual:?])
    {
      goto LABEL_33;
    }
  }

  dateValue = self->_dateValue;
  if (dateValue | *(v4 + 6))
  {
    if (![(ACProtobufDate *)dateValue isEqual:?])
    {
      goto LABEL_33;
    }
  }

  urlValue = self->_urlValue;
  if (urlValue | *(v4 + 10))
  {
    if (![(ACProtobufURL *)urlValue isEqual:?])
    {
      goto LABEL_33;
    }
  }

  arrayValue = self->_arrayValue;
  if (arrayValue | *(v4 + 4))
  {
    if (![(ACProtobufVariableValueList *)arrayValue isEqual:?])
    {
      goto LABEL_33;
    }
  }

  setValue = self->_setValue;
  if (setValue | *(v4 + 8))
  {
    if (![(ACProtobufVariableValueList *)setValue isEqual:?])
    {
      goto LABEL_33;
    }
  }

  dictionaryValue = self->_dictionaryValue;
  if (dictionaryValue | *(v4 + 7))
  {
    v14 = [(ACProtobufVariableValueDictionary *)dictionaryValue isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_34:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_integerValue;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 2654435761u * self->_unsignedIntegerValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v4.i64 = floor(doubleValue + 0.5);
  v9 = (doubleValue - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_11:
  v12 = v6 ^ v3 ^ v7 ^ v11 ^ [(NSData *)self->_dataValue hash];
  v13 = [(ACProtobufUUID *)self->_uuidValue hash];
  v14 = v13 ^ [(ACProtobufDate *)self->_dateValue hash];
  v15 = v12 ^ v14 ^ [(ACProtobufURL *)self->_urlValue hash];
  v16 = [(ACProtobufVariableValueList *)self->_arrayValue hash];
  v17 = v16 ^ [(ACProtobufVariableValueList *)self->_setValue hash];
  return v15 ^ v17 ^ [(ACProtobufVariableValueDictionary *)self->_dictionaryValue hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (*(v4 + 9))
  {
    [(ACProtobufVariableValue *)self setStringValue:?];
    v4 = v18;
  }

  v5 = *(v4 + 96);
  if ((v5 & 2) != 0)
  {
    self->_integerValue = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 96);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v4 + 96) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_unsignedIntegerValue = *(v4 + 3);
  *&self->_has |= 4u;
  if (*(v4 + 96))
  {
LABEL_6:
    self->_doubleValue = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  if (*(v4 + 5))
  {
    [(ACProtobufVariableValue *)self setDataValue:?];
    v4 = v18;
  }

  uuidValue = self->_uuidValue;
  v7 = *(v4 + 11);
  if (uuidValue)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(ACProtobufUUID *)uuidValue mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(ACProtobufVariableValue *)self setUuidValue:?];
  }

  v4 = v18;
LABEL_18:
  dateValue = self->_dateValue;
  v9 = *(v4 + 6);
  if (dateValue)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    [(ACProtobufDate *)dateValue mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    [(ACProtobufVariableValue *)self setDateValue:?];
  }

  v4 = v18;
LABEL_24:
  urlValue = self->_urlValue;
  v11 = *(v4 + 10);
  if (urlValue)
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    [(ACProtobufURL *)urlValue mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    [(ACProtobufVariableValue *)self setUrlValue:?];
  }

  v4 = v18;
LABEL_30:
  arrayValue = self->_arrayValue;
  v13 = *(v4 + 4);
  if (arrayValue)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    [(ACProtobufVariableValueList *)arrayValue mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    [(ACProtobufVariableValue *)self setArrayValue:?];
  }

  v4 = v18;
LABEL_36:
  setValue = self->_setValue;
  v15 = *(v4 + 8);
  if (setValue)
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    [(ACProtobufVariableValueList *)setValue mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_42;
    }

    [(ACProtobufVariableValue *)self setSetValue:?];
  }

  v4 = v18;
LABEL_42:
  dictionaryValue = self->_dictionaryValue;
  v17 = *(v4 + 7);
  if (dictionaryValue)
  {
    if (v17)
    {
      [(ACProtobufVariableValueDictionary *)dictionaryValue mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(ACProtobufVariableValue *)self setDictionaryValue:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (ACProtobufVariableValue)initWithObjectValue:(id)a3
{
  v4 = a3;
  v5 = [(ACProtobufVariableValue *)self init];
  v6 = v5;
  if (v5 && [(ACProtobufVariableValue *)v5 _setObject:v4])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Type = CFNumberGetType(v4);
      if (Type <= kCFNumberCGFloatType)
      {
        if (((1 << Type) & 0x13060) != 0)
        {
          [(__CFNumber *)v4 doubleValue];
          [(ACProtobufVariableValue *)self setDoubleValue:?];
          goto LABEL_28;
        }

        if (Type == kCFNumberCFIndexType)
        {
          [(ACProtobufVariableValue *)self setUnsignedIntegerValue:[(__CFNumber *)v4 unsignedLongLongValue]];
          goto LABEL_28;
        }
      }

      [(ACProtobufVariableValue *)self setIntegerValue:[(__CFNumber *)v4 longLongValue]];
      goto LABEL_28;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ACProtobufVariableValue *)self setDataValue:v4];
      goto LABEL_28;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[ACProtobufDate alloc] initWithDate:v4];
      [(ACProtobufVariableValue *)self setDateValue:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [[ACProtobufUUID alloc] initWithUUID:v4];
        [(ACProtobufVariableValue *)self setUuidValue:v6];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = [[ACProtobufVariableValueList alloc] initWithSet:v4];
            if (v7)
            {
              v6 = v7;
              [(ACProtobufVariableValue *)self setSetValue:v7];
              goto LABEL_27;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v8 = [[ACProtobufVariableValueList alloc] initWithArray:v4];
              if (v8)
              {
                v6 = v8;
                [(ACProtobufVariableValue *)self setArrayValue:v8];
                goto LABEL_27;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v9 = [[ACProtobufVariableValueDictionary alloc] initWithDictionary:v4];
                if (v9)
                {
                  v6 = v9;
                  [(ACProtobufVariableValue *)self setDictionaryValue:v9];
                  goto LABEL_27;
                }
              }
            }
          }

          v10 = 0;
          goto LABEL_29;
        }

        v6 = [[ACProtobufURL alloc] initWithURL:v4];
        [(ACProtobufVariableValue *)self setUrlValue:v6];
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  [(ACProtobufVariableValue *)self setStringValue:v4];
LABEL_28:
  v10 = 1;
LABEL_29:

  return v10;
}

- (id)object
{
  if ([(ACProtobufVariableValue *)self hasStringValue])
  {
    v3 = [(ACProtobufVariableValue *)self stringValue];
LABEL_11:
    v5 = v3;
    goto LABEL_12;
  }

  if ([(ACProtobufVariableValue *)self hasIntegerValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ACProtobufVariableValue integerValue](self, "integerValue")}];
    goto LABEL_11;
  }

  if ([(ACProtobufVariableValue *)self hasUnsignedIntegerValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ACProtobufVariableValue unsignedIntegerValue](self, "unsignedIntegerValue")}];
    goto LABEL_11;
  }

  if ([(ACProtobufVariableValue *)self hasDoubleValue])
  {
    v4 = MEMORY[0x1E696AD98];
    [(ACProtobufVariableValue *)self doubleValue];
    v3 = [v4 numberWithDouble:?];
    goto LABEL_11;
  }

  if ([(ACProtobufVariableValue *)self hasDataValue])
  {
    v3 = [(ACProtobufVariableValue *)self dataValue];
    goto LABEL_11;
  }

  if ([(ACProtobufVariableValue *)self hasUuidValue])
  {
    v7 = [(ACProtobufVariableValue *)self uuidValue];
    v8 = [v7 uuid];
LABEL_27:
    v5 = v8;

    goto LABEL_12;
  }

  if ([(ACProtobufVariableValue *)self hasUrlValue])
  {
    v7 = [(ACProtobufVariableValue *)self urlValue];
    v8 = [v7 url];
    goto LABEL_27;
  }

  if ([(ACProtobufVariableValue *)self hasDateValue])
  {
    v7 = [(ACProtobufVariableValue *)self dateValue];
    v8 = [v7 date];
    goto LABEL_27;
  }

  if ([(ACProtobufVariableValue *)self hasArrayValue])
  {
    v7 = [(ACProtobufVariableValue *)self arrayValue];
    v8 = [v7 array];
    goto LABEL_27;
  }

  if ([(ACProtobufVariableValue *)self hasSetValue])
  {
    v7 = [(ACProtobufVariableValue *)self setValue];
    v8 = [v7 set];
    goto LABEL_27;
  }

  if ([(ACProtobufVariableValue *)self hasDictionaryValue])
  {
    v7 = [(ACProtobufVariableValue *)self dictionaryValue];
    v8 = [v7 dictionary];
    goto LABEL_27;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

@end