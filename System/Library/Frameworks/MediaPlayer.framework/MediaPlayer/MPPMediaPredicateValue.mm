@interface MPPMediaPredicateValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)setHasBoolPredicateValue:(BOOL)a3;
- (void)setHasFloatPredicateValue:(BOOL)a3;
- (void)setHasIntegerPredicateValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MPPMediaPredicateValue

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_integerPredicateValue;
  }

  else
  {
    v5 = 0;
  }

  if (*&self->_has)
  {
    doublePredicateValue = self->_doublePredicateValue;
    if (doublePredicateValue < 0.0)
    {
      doublePredicateValue = -doublePredicateValue;
    }

    *v2.i64 = floor(doublePredicateValue + 0.5);
    v8 = (doublePredicateValue - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v6 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    floatPredicateValue = self->_floatPredicateValue;
    if (floatPredicateValue >= 0.0)
    {
      v12 = floatPredicateValue;
    }

    else
    {
      v12 = -floatPredicateValue;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v10 += v13;
      }
    }

    else
    {
      v10 -= fabs(v13);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v15 = 2654435761 * self->_BOOLPredicateValue;
  }

  else
  {
    v15 = 0;
  }

  v16 = 2654435761 * self->_type;
  v17 = v5 ^ v6 ^ v10 ^ v15 ^ [(NSString *)self->_stringPredicateValue hash];
  return v17 ^ [(NSData *)self->_bytesPredicateValue hash]^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_type != *(v4 + 12))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[56] & 2) == 0 || self->_integerPredicateValue != *(v4 + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((v4[56] & 2) != 0)
  {
LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((v4[56] & 1) == 0 || self->_doublePredicateValue != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (v4[56])
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((v4[56] & 4) == 0 || self->_floatPredicateValue != *(v4 + 8))
    {
      goto LABEL_27;
    }
  }

  else if ((v4[56] & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((v4[56] & 8) == 0 || self->_BOOLPredicateValue != v4[52])
    {
      goto LABEL_27;
    }
  }

  else if ((v4[56] & 8) != 0)
  {
    goto LABEL_27;
  }

  stringPredicateValue = self->_stringPredicateValue;
  if (stringPredicateValue | *(v4 + 5) && ![(NSString *)stringPredicateValue isEqual:?])
  {
    goto LABEL_27;
  }

  bytesPredicateValue = self->_bytesPredicateValue;
  if (bytesPredicateValue | *(v4 + 3))
  {
    v7 = [(NSData *)bytesPredicateValue isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_28:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  *(v5 + 48) = self->_type;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_integerPredicateValue;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 32) = self->_floatPredicateValue;
      *(v5 + 56) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_doublePredicateValue;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 52) = self->_BOOLPredicateValue;
    *(v5 + 56) |= 8u;
  }

LABEL_6:
  v8 = [(NSString *)self->_stringPredicateValue copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  v10 = [(NSData *)self->_bytesPredicateValue copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  return v6;
}

- (void)copyTo:(id)a3
{
  v6 = a3;
  [v6 setType:{-[MPPMediaPredicateValue type](self, "type")}];
  if ([(MPPMediaPredicateValue *)self hasIntegerPredicateValue])
  {
    [v6 setIntegerPredicateValue:{-[MPPMediaPredicateValue integerPredicateValue](self, "integerPredicateValue")}];
  }

  if ([(MPPMediaPredicateValue *)self hasDoublePredicateValue])
  {
    [(MPPMediaPredicateValue *)self doublePredicateValue];
    [v6 setDoublePredicateValue:?];
  }

  if ([(MPPMediaPredicateValue *)self hasFloatPredicateValue])
  {
    [(MPPMediaPredicateValue *)self floatPredicateValue];
    [v6 setFloatPredicateValue:?];
  }

  if ([(MPPMediaPredicateValue *)self hasBoolPredicateValue])
  {
    [v6 setBoolPredicateValue:{-[MPPMediaPredicateValue BOOLPredicateValue](self, "BOOLPredicateValue")}];
  }

  if ([(MPPMediaPredicateValue *)self hasStringPredicateValue])
  {
    v4 = [(MPPMediaPredicateValue *)self stringPredicateValue];
    [v6 setStringPredicateValue:v4];
  }

  if ([(MPPMediaPredicateValue *)self hasBytesPredicateValue])
  {
    v5 = [(MPPMediaPredicateValue *)self bytesPredicateValue];
    [v6 setBytesPredicateValue:v5];
  }
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  [v9 writeInt32:self->_type forTag:1];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v9 writeInt64:self->_integerPredicateValue forTag:2];
    has = self->_has;
  }

  if (has)
  {
    [v9 writeDouble:3 forTag:self->_doublePredicateValue];
    has = self->_has;
  }

  v6 = v9;
  if ((has & 4) != 0)
  {
    *&v4 = self->_floatPredicateValue;
    [v9 writeFloat:4 forTag:v4];
    v6 = v9;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    [v9 writeBOOL:self->_BOOLPredicateValue forTag:5];
    v6 = v9;
  }

  stringPredicateValue = self->_stringPredicateValue;
  if (stringPredicateValue)
  {
    [v9 writeString:stringPredicateValue forTag:6];
    v6 = v9;
  }

  bytesPredicateValue = self->_bytesPredicateValue;
  if (bytesPredicateValue)
  {
    [v9 writeData:bytesPredicateValue forTag:7];
    v6 = v9;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
  [v3 setObject:v4 forKey:@"type"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integerPredicateValue];
    [v3 setObject:v11 forKey:@"integerPredicateValue"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doublePredicateValue];
  [v3 setObject:v12 forKey:@"doublePredicateValue"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  *&v5 = self->_floatPredicateValue;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v3 setObject:v13 forKey:@"floatPredicateValue"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_BOOLPredicateValue];
    [v3 setObject:v7 forKey:@"BOOLPredicateValue"];
  }

LABEL_6:
  stringPredicateValue = self->_stringPredicateValue;
  if (stringPredicateValue)
  {
    [v3 setObject:stringPredicateValue forKey:@"stringPredicateValue"];
  }

  bytesPredicateValue = self->_bytesPredicateValue;
  if (bytesPredicateValue)
  {
    [v3 setObject:bytesPredicateValue forKey:@"bytesPredicateValue"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPMediaPredicateValue;
  v4 = [(MPPMediaPredicateValue *)&v8 description];
  v5 = [(MPPMediaPredicateValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasBoolPredicateValue:(BOOL)a3
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

- (void)setHasFloatPredicateValue:(BOOL)a3
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

- (void)setHasIntegerPredicateValue:(BOOL)a3
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

- (void)dealloc
{
  [(MPPMediaPredicateValue *)self setStringPredicateValue:0];
  [(MPPMediaPredicateValue *)self setBytesPredicateValue:0];
  v3.receiver = self;
  v3.super_class = MPPMediaPredicateValue;
  [(MPPMediaPredicateValue *)&v3 dealloc];
}

@end