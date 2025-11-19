@interface _INPBHomeAttributeValue
- (BOOL)isEqual:(id)a3;
- (_INPBHomeAttributeValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsLimitValue:(id)a3;
- (int)StringAsUnit:(id)a3;
- (int)StringAsValueType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasDoubleValue:(BOOL)a3;
- (void)setHasIntegerValue:(BOOL)a3;
- (void)setHasLimitValue:(BOOL)a3;
- (void)setHasUnit:(BOOL)a3;
- (void)setHasValueType:(BOOL)a3;
- (void)setLimitValue:(int)a3;
- (void)setStringValue:(id)a3;
- (void)setUnit:(int)a3;
- (void)setValueType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeAttributeValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBHomeAttributeValue BOOLeanValue](self, "BOOLeanValue")}];
    [v3 setObject:v4 forKeyedSubscript:@"BOOLeanValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    v5 = MEMORY[0x1E696AD98];
    [(_INPBHomeAttributeValue *)self doubleValue];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"doubleValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_INPBHomeAttributeValue integerValue](self, "integerValue")}];
    [v3 setObject:v7 forKeyedSubscript:@"integerValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    v8 = [(_INPBHomeAttributeValue *)self limitValue];
    if (v8 == 1)
    {
      v9 = @"MIN";
    }

    else if (v8 == 2)
    {
      v9 = @"MAX";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"limitValue"];
  }

  v10 = [(_INPBHomeAttributeValue *)self rangeValue];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"rangeValue"];

  if (self->_stringValue)
  {
    v12 = [(_INPBHomeAttributeValue *)self stringValue];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"stringValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasUnit])
  {
    v14 = [(_INPBHomeAttributeValue *)self unit];
    if ((v14 - 1) >= 5)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E727F5B8[(v14 - 1)];
    }

    [v3 setObject:v15 forKeyedSubscript:@"unit"];
  }

  if ([(_INPBHomeAttributeValue *)self hasValueType])
  {
    v16 = [(_INPBHomeAttributeValue *)self valueType];
    if (v16 >= 6)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E727F5E0[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"valueType"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    v3 = 2654435761 * self->_BOOLeanValue;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v4.i64 = floor(doubleValue + 0.5);
    v7 = (doubleValue - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v5, v4).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    v10 = 2654435761 * self->_integerValue;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    v11 = 2654435761 * self->_limitValue;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(_INPBHomeAttributeRange *)self->_rangeValue hash];
  v13 = [(NSString *)self->_stringValue hash];
  if ([(_INPBHomeAttributeValue *)self hasUnit])
  {
    v14 = 2654435761 * self->_unit;
  }

  else
  {
    v14 = 0;
  }

  if ([(_INPBHomeAttributeValue *)self hasValueType])
  {
    v15 = 2654435761 * self->_valueType;
  }

  else
  {
    v15 = 0;
  }

  return v9 ^ v3 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(_INPBHomeAttributeValue *)self hasBooleanValue];
  if (v5 != [v4 hasBooleanValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    if ([v4 hasBooleanValue])
    {
      BOOLeanValue = self->_BOOLeanValue;
      if (BOOLeanValue != [v4 BOOLeanValue])
      {
        goto LABEL_28;
      }
    }
  }

  v7 = [(_INPBHomeAttributeValue *)self hasDoubleValue];
  if (v7 != [v4 hasDoubleValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    if ([v4 hasDoubleValue])
    {
      doubleValue = self->_doubleValue;
      [v4 doubleValue];
      if (doubleValue != v9)
      {
        goto LABEL_28;
      }
    }
  }

  v10 = [(_INPBHomeAttributeValue *)self hasIntegerValue];
  if (v10 != [v4 hasIntegerValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    if ([v4 hasIntegerValue])
    {
      integerValue = self->_integerValue;
      if (integerValue != [v4 integerValue])
      {
        goto LABEL_28;
      }
    }
  }

  v12 = [(_INPBHomeAttributeValue *)self hasLimitValue];
  if (v12 != [v4 hasLimitValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    if ([v4 hasLimitValue])
    {
      limitValue = self->_limitValue;
      if (limitValue != [v4 limitValue])
      {
        goto LABEL_28;
      }
    }
  }

  v14 = [(_INPBHomeAttributeValue *)self rangeValue];
  v15 = [v4 rangeValue];
  if ((v14 != 0) == (v15 == 0))
  {
    goto LABEL_27;
  }

  v16 = [(_INPBHomeAttributeValue *)self rangeValue];
  if (v16)
  {
    v17 = v16;
    v18 = [(_INPBHomeAttributeValue *)self rangeValue];
    v19 = [v4 rangeValue];
    v20 = [v18 isEqual:v19];

    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v14 = [(_INPBHomeAttributeValue *)self stringValue];
  v15 = [v4 stringValue];
  if ((v14 != 0) == (v15 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  v21 = [(_INPBHomeAttributeValue *)self stringValue];
  if (v21)
  {
    v22 = v21;
    v23 = [(_INPBHomeAttributeValue *)self stringValue];
    v24 = [v4 stringValue];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  v28 = [(_INPBHomeAttributeValue *)self hasUnit];
  if (v28 == [v4 hasUnit])
  {
    if (!-[_INPBHomeAttributeValue hasUnit](self, "hasUnit") || ![v4 hasUnit] || (unit = self->_unit, unit == objc_msgSend(v4, "unit")))
    {
      v30 = [(_INPBHomeAttributeValue *)self hasValueType];
      if (v30 == [v4 hasValueType])
      {
        if (!-[_INPBHomeAttributeValue hasValueType](self, "hasValueType") || ![v4 hasValueType] || (valueType = self->_valueType, valueType == objc_msgSend(v4, "valueType")))
        {
          v26 = 1;
          goto LABEL_29;
        }
      }
    }
  }

LABEL_28:
  v26 = 0;
LABEL_29:

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHomeAttributeValue allocWithZone:](_INPBHomeAttributeValue init];
  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    [(_INPBHomeAttributeValue *)v5 setBooleanValue:[(_INPBHomeAttributeValue *)self BOOLeanValue]];
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    [(_INPBHomeAttributeValue *)self doubleValue];
    [(_INPBHomeAttributeValue *)v5 setDoubleValue:?];
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    [(_INPBHomeAttributeValue *)v5 setIntegerValue:[(_INPBHomeAttributeValue *)self integerValue]];
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    [(_INPBHomeAttributeValue *)v5 setLimitValue:[(_INPBHomeAttributeValue *)self limitValue]];
  }

  v6 = [(_INPBHomeAttributeRange *)self->_rangeValue copyWithZone:a3];
  [(_INPBHomeAttributeValue *)v5 setRangeValue:v6];

  v7 = [(NSString *)self->_stringValue copyWithZone:a3];
  [(_INPBHomeAttributeValue *)v5 setStringValue:v7];

  if ([(_INPBHomeAttributeValue *)self hasUnit])
  {
    [(_INPBHomeAttributeValue *)v5 setUnit:[(_INPBHomeAttributeValue *)self unit]];
  }

  if ([(_INPBHomeAttributeValue *)self hasValueType])
  {
    [(_INPBHomeAttributeValue *)v5 setValueType:[(_INPBHomeAttributeValue *)self valueType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeAttributeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeAttributeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeAttributeValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    BOOLeanValue = self->_BOOLeanValue;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    integerValue = self->_integerValue;
    PBDataWriterWriteInt64Field();
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    limitValue = self->_limitValue;
    PBDataWriterWriteInt32Field();
  }

  v8 = [(_INPBHomeAttributeValue *)self rangeValue];

  if (v8)
  {
    v9 = [(_INPBHomeAttributeValue *)self rangeValue];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBHomeAttributeValue *)self stringValue];

  if (v10)
  {
    stringValue = self->_stringValue;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBHomeAttributeValue *)self hasUnit])
  {
    unit = self->_unit;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBHomeAttributeValue *)self hasValueType])
  {
    valueType = self->_valueType;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsValueType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BOOLEAN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DOUBLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"STRING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"INTEGER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LIMIT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RANGE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasValueType:(BOOL)a3
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

- (void)setValueType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_valueType = a3;
  }
}

- (int)StringAsUnit:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PERCENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FAHRENHEIT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CELSIUS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LUX"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SECONDS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasUnit:(BOOL)a3
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

- (void)setUnit:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_unit = a3;
  }
}

- (void)setStringValue:(id)a3
{
  v4 = [a3 copy];
  stringValue = self->_stringValue;
  self->_stringValue = v4;

  MEMORY[0x1EEE66BB8](v4, stringValue);
}

- (int)StringAsLimitValue:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"MIN"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"MAX"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasLimitValue:(BOOL)a3
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

- (void)setLimitValue:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_limitValue = a3;
  }
}

- (void)setHasIntegerValue:(BOOL)a3
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

- (void)setHasDoubleValue:(BOOL)a3
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

@end