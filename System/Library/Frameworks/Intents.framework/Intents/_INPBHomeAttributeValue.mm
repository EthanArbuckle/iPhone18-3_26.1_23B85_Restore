@interface _INPBHomeAttributeValue
- (BOOL)isEqual:(id)equal;
- (_INPBHomeAttributeValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsLimitValue:(id)value;
- (int)StringAsUnit:(id)unit;
- (int)StringAsValueType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasDoubleValue:(BOOL)value;
- (void)setHasIntegerValue:(BOOL)value;
- (void)setHasLimitValue:(BOOL)value;
- (void)setHasUnit:(BOOL)unit;
- (void)setHasValueType:(BOOL)type;
- (void)setLimitValue:(int)value;
- (void)setStringValue:(id)value;
- (void)setUnit:(int)unit;
- (void)setValueType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeAttributeValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBHomeAttributeValue BOOLeanValue](self, "BOOLeanValue")}];
    [dictionary setObject:v4 forKeyedSubscript:@"BOOLeanValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    v5 = MEMORY[0x1E696AD98];
    [(_INPBHomeAttributeValue *)self doubleValue];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:@"doubleValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_INPBHomeAttributeValue integerValue](self, "integerValue")}];
    [dictionary setObject:v7 forKeyedSubscript:@"integerValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    limitValue = [(_INPBHomeAttributeValue *)self limitValue];
    if (limitValue == 1)
    {
      v9 = @"MIN";
    }

    else if (limitValue == 2)
    {
      v9 = @"MAX";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", limitValue];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"limitValue"];
  }

  rangeValue = [(_INPBHomeAttributeValue *)self rangeValue];
  dictionaryRepresentation = [rangeValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"rangeValue"];

  if (self->_stringValue)
  {
    stringValue = [(_INPBHomeAttributeValue *)self stringValue];
    v13 = [stringValue copy];
    [dictionary setObject:v13 forKeyedSubscript:@"stringValue"];
  }

  if ([(_INPBHomeAttributeValue *)self hasUnit])
  {
    unit = [(_INPBHomeAttributeValue *)self unit];
    if ((unit - 1) >= 5)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", unit];
    }

    else
    {
      v15 = off_1E727F5B8[(unit - 1)];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"unit"];
  }

  if ([(_INPBHomeAttributeValue *)self hasValueType])
  {
    valueType = [(_INPBHomeAttributeValue *)self valueType];
    if (valueType >= 6)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", valueType];
    }

    else
    {
      v17 = off_1E727F5E0[valueType];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"valueType"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  hasBooleanValue = [(_INPBHomeAttributeValue *)self hasBooleanValue];
  if (hasBooleanValue != [equalCopy hasBooleanValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasBooleanValue])
  {
    if ([equalCopy hasBooleanValue])
    {
      BOOLeanValue = self->_BOOLeanValue;
      if (BOOLeanValue != [equalCopy BOOLeanValue])
      {
        goto LABEL_28;
      }
    }
  }

  hasDoubleValue = [(_INPBHomeAttributeValue *)self hasDoubleValue];
  if (hasDoubleValue != [equalCopy hasDoubleValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasDoubleValue])
  {
    if ([equalCopy hasDoubleValue])
    {
      doubleValue = self->_doubleValue;
      [equalCopy doubleValue];
      if (doubleValue != v9)
      {
        goto LABEL_28;
      }
    }
  }

  hasIntegerValue = [(_INPBHomeAttributeValue *)self hasIntegerValue];
  if (hasIntegerValue != [equalCopy hasIntegerValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasIntegerValue])
  {
    if ([equalCopy hasIntegerValue])
    {
      integerValue = self->_integerValue;
      if (integerValue != [equalCopy integerValue])
      {
        goto LABEL_28;
      }
    }
  }

  hasLimitValue = [(_INPBHomeAttributeValue *)self hasLimitValue];
  if (hasLimitValue != [equalCopy hasLimitValue])
  {
    goto LABEL_28;
  }

  if ([(_INPBHomeAttributeValue *)self hasLimitValue])
  {
    if ([equalCopy hasLimitValue])
    {
      limitValue = self->_limitValue;
      if (limitValue != [equalCopy limitValue])
      {
        goto LABEL_28;
      }
    }
  }

  rangeValue = [(_INPBHomeAttributeValue *)self rangeValue];
  rangeValue2 = [equalCopy rangeValue];
  if ((rangeValue != 0) == (rangeValue2 == 0))
  {
    goto LABEL_27;
  }

  rangeValue3 = [(_INPBHomeAttributeValue *)self rangeValue];
  if (rangeValue3)
  {
    v17 = rangeValue3;
    rangeValue4 = [(_INPBHomeAttributeValue *)self rangeValue];
    rangeValue5 = [equalCopy rangeValue];
    v20 = [rangeValue4 isEqual:rangeValue5];

    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  rangeValue = [(_INPBHomeAttributeValue *)self stringValue];
  rangeValue2 = [equalCopy stringValue];
  if ((rangeValue != 0) == (rangeValue2 == 0))
  {
LABEL_27:

    goto LABEL_28;
  }

  stringValue = [(_INPBHomeAttributeValue *)self stringValue];
  if (stringValue)
  {
    v22 = stringValue;
    stringValue2 = [(_INPBHomeAttributeValue *)self stringValue];
    stringValue3 = [equalCopy stringValue];
    v25 = [stringValue2 isEqual:stringValue3];

    if (!v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  hasUnit = [(_INPBHomeAttributeValue *)self hasUnit];
  if (hasUnit == [equalCopy hasUnit])
  {
    if (!-[_INPBHomeAttributeValue hasUnit](self, "hasUnit") || ![equalCopy hasUnit] || (unit = self->_unit, unit == objc_msgSend(equalCopy, "unit")))
    {
      hasValueType = [(_INPBHomeAttributeValue *)self hasValueType];
      if (hasValueType == [equalCopy hasValueType])
      {
        if (!-[_INPBHomeAttributeValue hasValueType](self, "hasValueType") || ![equalCopy hasValueType] || (valueType = self->_valueType, valueType == objc_msgSend(equalCopy, "valueType")))
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

- (id)copyWithZone:(_NSZone *)zone
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

  v6 = [(_INPBHomeAttributeRange *)self->_rangeValue copyWithZone:zone];
  [(_INPBHomeAttributeValue *)v5 setRangeValue:v6];

  v7 = [(NSString *)self->_stringValue copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeAttributeValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeAttributeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeAttributeValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  rangeValue = [(_INPBHomeAttributeValue *)self rangeValue];

  if (rangeValue)
  {
    rangeValue2 = [(_INPBHomeAttributeValue *)self rangeValue];
    PBDataWriterWriteSubmessage();
  }

  stringValue = [(_INPBHomeAttributeValue *)self stringValue];

  if (stringValue)
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

- (int)StringAsValueType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"BOOLEAN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"DOUBLE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"STRING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"INTEGER"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"LIMIT"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"RANGE"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasValueType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setValueType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_valueType = type;
  }
}

- (int)StringAsUnit:(id)unit
{
  unitCopy = unit;
  if ([unitCopy isEqualToString:@"PERCENT"])
  {
    v4 = 1;
  }

  else if ([unitCopy isEqualToString:@"FAHRENHEIT"])
  {
    v4 = 2;
  }

  else if ([unitCopy isEqualToString:@"CELSIUS"])
  {
    v4 = 3;
  }

  else if ([unitCopy isEqualToString:@"LUX"])
  {
    v4 = 4;
  }

  else if ([unitCopy isEqualToString:@"SECONDS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setUnit:(int)unit
{
  has = self->_has;
  if (unit == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xEF;
  }

  else
  {
    *&self->_has = has | 0x10;
    self->_unit = unit;
  }
}

- (void)setStringValue:(id)value
{
  v4 = [value copy];
  stringValue = self->_stringValue;
  self->_stringValue = v4;

  MEMORY[0x1EEE66BB8](v4, stringValue);
}

- (int)StringAsLimitValue:(id)value
{
  valueCopy = value;
  v4 = 1;
  if (([valueCopy isEqualToString:@"MIN"] & 1) == 0)
  {
    if ([valueCopy isEqualToString:@"MAX"])
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

- (void)setHasLimitValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setLimitValue:(int)value
{
  has = self->_has;
  if (value == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xF7;
  }

  else
  {
    *&self->_has = has | 8;
    self->_limitValue = value;
  }
}

- (void)setHasIntegerValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDoubleValue:(BOOL)value
{
  if (value)
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