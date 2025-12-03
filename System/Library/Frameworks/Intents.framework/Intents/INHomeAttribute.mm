@interface INHomeAttribute
- (BOOL)isEqual:(id)equal;
- (INHomeAttribute)initWithCoder:(id)coder;
- (INHomeAttribute)initWithType:(int64_t)type BOOLValue:(BOOL)value;
- (INHomeAttribute)initWithType:(int64_t)type doubleValue:(double)value;
- (INHomeAttribute)initWithType:(int64_t)type stringValue:(id)value;
- (INHomeAttribute)initWithType:(int64_t)type valueType:(int64_t)valueType BOOLValue:(BOOL)value doubleValue:(double)doubleValue stringValue:(id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeAttribute

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_valueType forKey:@"valueType"];
  [coderCopy encodeBool:self->_BOOLValue forKey:@"BOOLValue"];
  [coderCopy encodeDouble:@"doubleValue" forKey:self->_doubleValue];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
}

- (INHomeAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeIntegerForKey:@"valueType"];
  v7 = [coderCopy decodeBoolForKey:@"BOOLValue"];
  [coderCopy decodeDoubleForKey:@"doubleValue"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v11 = [(INHomeAttribute *)self initWithType:v5 valueType:v6 BOOLValue:v7 doubleValue:v10 stringValue:v9];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (INHomeAttribute)initWithType:(int64_t)type valueType:(int64_t)valueType BOOLValue:(BOOL)value doubleValue:(double)doubleValue stringValue:(id)stringValue
{
  stringValueCopy = stringValue;
  v18.receiver = self;
  v18.super_class = INHomeAttribute;
  v13 = [(INHomeAttribute *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    v13->_valueType = valueType;
    v13->_BOOLValue = value;
    v13->_doubleValue = doubleValue;
    v15 = [stringValueCopy copy];
    stringValue = v14->_stringValue;
    v14->_stringValue = v15;
  }

  return v14;
}

- (INHomeAttribute)initWithType:(int64_t)type stringValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = INHomeAttribute;
  v7 = [(INHomeAttribute *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    stringValue = v7->_stringValue;
    v7->_stringValue = v8;

    v7->_type = type;
    v7->_valueType = 3;
  }

  return v7;
}

- (INHomeAttribute)initWithType:(int64_t)type doubleValue:(double)value
{
  v7.receiver = self;
  v7.super_class = INHomeAttribute;
  result = [(INHomeAttribute *)&v7 init];
  if (result)
  {
    result->_doubleValue = value;
    result->_type = type;
    result->_valueType = 2;
  }

  return result;
}

- (INHomeAttribute)initWithType:(int64_t)type BOOLValue:(BOOL)value
{
  v7.receiver = self;
  v7.super_class = INHomeAttribute;
  result = [(INHomeAttribute *)&v7 init];
  if (result)
  {
    result->_BOOLValue = value;
    result->_type = type;
    result->_valueType = 1;
  }

  return result;
}

@end