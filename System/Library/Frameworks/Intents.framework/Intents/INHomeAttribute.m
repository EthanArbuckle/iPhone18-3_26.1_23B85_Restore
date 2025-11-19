@interface INHomeAttribute
- (BOOL)isEqual:(id)a3;
- (INHomeAttribute)initWithCoder:(id)a3;
- (INHomeAttribute)initWithType:(int64_t)a3 BOOLValue:(BOOL)a4;
- (INHomeAttribute)initWithType:(int64_t)a3 doubleValue:(double)a4;
- (INHomeAttribute)initWithType:(int64_t)a3 stringValue:(id)a4;
- (INHomeAttribute)initWithType:(int64_t)a3 valueType:(int64_t)a4 BOOLValue:(BOOL)a5 doubleValue:(double)a6 stringValue:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeAttribute

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_valueType forKey:@"valueType"];
  [v5 encodeBool:self->_BOOLValue forKey:@"BOOLValue"];
  [v5 encodeDouble:@"doubleValue" forKey:self->_doubleValue];
  [v5 encodeObject:self->_stringValue forKey:@"stringValue"];
}

- (INHomeAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeIntegerForKey:@"valueType"];
  v7 = [v4 decodeBoolForKey:@"BOOLValue"];
  [v4 decodeDoubleForKey:@"doubleValue"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v11 = [(INHomeAttribute *)self initWithType:v5 valueType:v6 BOOLValue:v7 doubleValue:v10 stringValue:v9];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    v7 = 0;
    if (self->_type == v5[2] && self->_valueType == v5[3] && self->_BOOLValue == *(v5 + 8) && self->_doubleValue == *(v5 + 4))
    {
      stringValue = self->_stringValue;
      if (stringValue == v6[5] || [(NSString *)stringValue isEqual:?])
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = self->_valueType ^ self->_type ^ self->_BOOLValue;
  doubleValue = self->_doubleValue;
  return v2 ^ [(NSString *)self->_stringValue hash]^ doubleValue;
}

- (INHomeAttribute)initWithType:(int64_t)a3 valueType:(int64_t)a4 BOOLValue:(BOOL)a5 doubleValue:(double)a6 stringValue:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = INHomeAttribute;
  v13 = [(INHomeAttribute *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    v13->_valueType = a4;
    v13->_BOOLValue = a5;
    v13->_doubleValue = a6;
    v15 = [v12 copy];
    stringValue = v14->_stringValue;
    v14->_stringValue = v15;
  }

  return v14;
}

- (INHomeAttribute)initWithType:(int64_t)a3 stringValue:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = INHomeAttribute;
  v7 = [(INHomeAttribute *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    stringValue = v7->_stringValue;
    v7->_stringValue = v8;

    v7->_type = a3;
    v7->_valueType = 3;
  }

  return v7;
}

- (INHomeAttribute)initWithType:(int64_t)a3 doubleValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = INHomeAttribute;
  result = [(INHomeAttribute *)&v7 init];
  if (result)
  {
    result->_doubleValue = a4;
    result->_type = a3;
    result->_valueType = 2;
  }

  return result;
}

- (INHomeAttribute)initWithType:(int64_t)a3 BOOLValue:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = INHomeAttribute;
  result = [(INHomeAttribute *)&v7 init];
  if (result)
  {
    result->_BOOLValue = a4;
    result->_type = a3;
    result->_valueType = 1;
  }

  return result;
}

@end