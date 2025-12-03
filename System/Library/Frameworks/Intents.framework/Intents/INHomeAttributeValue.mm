@interface INHomeAttributeValue
- (BOOL)isEqual:(id)equal;
- (INHomeAttributeValue)initWithBoolValue:(BOOL)value;
- (INHomeAttributeValue)initWithCoder:(id)coder;
- (INHomeAttributeValue)initWithDoubleValue:(double)value unit:(int64_t)unit;
- (INHomeAttributeValue)initWithIntegerValue:(int64_t)value unit:(int64_t)unit;
- (INHomeAttributeValue)initWithLimitValue:(int64_t)value;
- (INHomeAttributeValue)initWithRangeValue:(id)value;
- (INHomeAttributeValue)initWithStringValue:(id)value unit:(int64_t)unit;
- (INHomeAttributeValue)initWithType:(int64_t)type BOOLValue:(BOOL)value doubleValue:(double)doubleValue integerValue:(int64_t)integerValue stringValue:(id)stringValue limitValue:(int64_t)limitValue unit:(int64_t)unit rangeValue:(id)self0;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeAttributeValue

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeBool:self->_BOOLValue forKey:@"BOOLValue"];
  [coderCopy encodeDouble:@"doubleValue" forKey:self->_doubleValue];
  [coderCopy encodeDouble:@"integerValue" forKey:self->_integerValue];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
  [coderCopy encodeInteger:self->_limitValue forKey:@"limitValue"];
  [coderCopy encodeInteger:self->_unit forKey:@"unit"];
  [coderCopy encodeObject:self->_rangeValue forKey:@"rangeValue"];
}

- (INHomeAttributeValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeBoolForKey:@"BOOLValue"];
  [coderCopy decodeDoubleForKey:@"doubleValue"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"integerValue"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
  v11 = [coderCopy decodeIntegerForKey:@"limitValue"];
  v12 = [coderCopy decodeIntegerForKey:@"unit"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rangeValue"];

  v14 = [(INHomeAttributeValue *)self initWithType:v5 BOOLValue:v6 doubleValue:v9 integerValue:v10 stringValue:v11 limitValue:v12 unit:v8 rangeValue:v13];
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v9 = 0;
    if (self->_type == v5[2] && self->_BOOLValue == *(v5 + 8) && self->_doubleValue == *(v5 + 3) && self->_integerValue == v5[4])
    {
      stringValue = self->_stringValue;
      if ((stringValue == v6[5] || [(NSString *)stringValue isEqual:?]) && self->_limitValue == v6[6] && self->_unit == v6[7])
      {
        rangeValue = self->_rangeValue;
        if (rangeValue == v6[8] || [(INHomeAttributeRange *)rangeValue isEqual:?])
        {
          v9 = 1;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  doubleValue = self->_doubleValue;
  v3 = self->_type ^ self->_BOOLValue ^ self->_integerValue;
  return v3 ^ [(NSString *)self->_stringValue hash]^ self->_limitValue ^ self->_unit ^ doubleValue;
}

- (INHomeAttributeValue)initWithType:(int64_t)type BOOLValue:(BOOL)value doubleValue:(double)doubleValue integerValue:(int64_t)integerValue stringValue:(id)stringValue limitValue:(int64_t)limitValue unit:(int64_t)unit rangeValue:(id)self0
{
  stringValueCopy = stringValue;
  rangeValueCopy = rangeValue;
  v24.receiver = self;
  v24.super_class = INHomeAttributeValue;
  v19 = [(INHomeAttributeValue *)&v24 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = type;
    v19->_BOOLValue = value;
    v19->_doubleValue = doubleValue;
    v19->_integerValue = integerValue;
    v21 = [stringValueCopy copy];
    stringValue = v20->_stringValue;
    v20->_stringValue = v21;

    v20->_limitValue = limitValue;
    v20->_unit = unit;
    objc_storeStrong(&v20->_rangeValue, rangeValue);
  }

  return v20;
}

- (INHomeAttributeValue)initWithRangeValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = INHomeAttributeValue;
  v6 = [(INHomeAttributeValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rangeValue, value);
    v7->_type = 6;
  }

  return v7;
}

- (INHomeAttributeValue)initWithLimitValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v5 init];
  if (result)
  {
    result->_limitValue = value;
    result->_type = 5;
  }

  return result;
}

- (INHomeAttributeValue)initWithStringValue:(id)value unit:(int64_t)unit
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = INHomeAttributeValue;
  v7 = [(INHomeAttributeValue *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    stringValue = v7->_stringValue;
    v7->_stringValue = v8;

    v7->_type = 3;
    v7->_unit = unit;
  }

  return v7;
}

- (INHomeAttributeValue)initWithIntegerValue:(int64_t)value unit:(int64_t)unit
{
  v7.receiver = self;
  v7.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v7 init];
  if (result)
  {
    result->_integerValue = value;
    result->_type = 4;
    result->_unit = unit;
  }

  return result;
}

- (INHomeAttributeValue)initWithDoubleValue:(double)value unit:(int64_t)unit
{
  v7.receiver = self;
  v7.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v7 init];
  if (result)
  {
    result->_doubleValue = value;
    result->_type = 2;
    result->_unit = unit;
  }

  return result;
}

- (INHomeAttributeValue)initWithBoolValue:(BOOL)value
{
  v5.receiver = self;
  v5.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v5 init];
  if (result)
  {
    result->_BOOLValue = value;
    result->_type = 1;
  }

  return result;
}

@end