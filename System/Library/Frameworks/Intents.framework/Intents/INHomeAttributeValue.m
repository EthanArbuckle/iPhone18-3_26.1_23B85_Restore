@interface INHomeAttributeValue
- (BOOL)isEqual:(id)a3;
- (INHomeAttributeValue)initWithBoolValue:(BOOL)a3;
- (INHomeAttributeValue)initWithCoder:(id)a3;
- (INHomeAttributeValue)initWithDoubleValue:(double)a3 unit:(int64_t)a4;
- (INHomeAttributeValue)initWithIntegerValue:(int64_t)a3 unit:(int64_t)a4;
- (INHomeAttributeValue)initWithLimitValue:(int64_t)a3;
- (INHomeAttributeValue)initWithRangeValue:(id)a3;
- (INHomeAttributeValue)initWithStringValue:(id)a3 unit:(int64_t)a4;
- (INHomeAttributeValue)initWithType:(int64_t)a3 BOOLValue:(BOOL)a4 doubleValue:(double)a5 integerValue:(int64_t)a6 stringValue:(id)a7 limitValue:(int64_t)a8 unit:(int64_t)a9 rangeValue:(id)a10;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeAttributeValue

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeBool:self->_BOOLValue forKey:@"BOOLValue"];
  [v5 encodeDouble:@"doubleValue" forKey:self->_doubleValue];
  [v5 encodeDouble:@"integerValue" forKey:self->_integerValue];
  [v5 encodeObject:self->_stringValue forKey:@"stringValue"];
  [v5 encodeInteger:self->_limitValue forKey:@"limitValue"];
  [v5 encodeInteger:self->_unit forKey:@"unit"];
  [v5 encodeObject:self->_rangeValue forKey:@"rangeValue"];
}

- (INHomeAttributeValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeBoolForKey:@"BOOLValue"];
  [v4 decodeDoubleForKey:@"doubleValue"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"integerValue"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
  v11 = [v4 decodeIntegerForKey:@"limitValue"];
  v12 = [v4 decodeIntegerForKey:@"unit"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rangeValue"];

  v14 = [(INHomeAttributeValue *)self initWithType:v5 BOOLValue:v6 doubleValue:v9 integerValue:v10 stringValue:v11 limitValue:v12 unit:v8 rangeValue:v13];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (INHomeAttributeValue)initWithType:(int64_t)a3 BOOLValue:(BOOL)a4 doubleValue:(double)a5 integerValue:(int64_t)a6 stringValue:(id)a7 limitValue:(int64_t)a8 unit:(int64_t)a9 rangeValue:(id)a10
{
  v17 = a7;
  v18 = a10;
  v24.receiver = self;
  v24.super_class = INHomeAttributeValue;
  v19 = [(INHomeAttributeValue *)&v24 init];
  v20 = v19;
  if (v19)
  {
    v19->_type = a3;
    v19->_BOOLValue = a4;
    v19->_doubleValue = a5;
    v19->_integerValue = a6;
    v21 = [v17 copy];
    stringValue = v20->_stringValue;
    v20->_stringValue = v21;

    v20->_limitValue = a8;
    v20->_unit = a9;
    objc_storeStrong(&v20->_rangeValue, a10);
  }

  return v20;
}

- (INHomeAttributeValue)initWithRangeValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INHomeAttributeValue;
  v6 = [(INHomeAttributeValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rangeValue, a3);
    v7->_type = 6;
  }

  return v7;
}

- (INHomeAttributeValue)initWithLimitValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v5 init];
  if (result)
  {
    result->_limitValue = a3;
    result->_type = 5;
  }

  return result;
}

- (INHomeAttributeValue)initWithStringValue:(id)a3 unit:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = INHomeAttributeValue;
  v7 = [(INHomeAttributeValue *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    stringValue = v7->_stringValue;
    v7->_stringValue = v8;

    v7->_type = 3;
    v7->_unit = a4;
  }

  return v7;
}

- (INHomeAttributeValue)initWithIntegerValue:(int64_t)a3 unit:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v7 init];
  if (result)
  {
    result->_integerValue = a3;
    result->_type = 4;
    result->_unit = a4;
  }

  return result;
}

- (INHomeAttributeValue)initWithDoubleValue:(double)a3 unit:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v7 init];
  if (result)
  {
    result->_doubleValue = a3;
    result->_type = 2;
    result->_unit = a4;
  }

  return result;
}

- (INHomeAttributeValue)initWithBoolValue:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = INHomeAttributeValue;
  result = [(INHomeAttributeValue *)&v5 init];
  if (result)
  {
    result->_BOOLValue = a3;
    result->_type = 1;
  }

  return result;
}

@end