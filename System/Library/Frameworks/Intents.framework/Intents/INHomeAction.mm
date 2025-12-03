@interface INHomeAction
- (BOOL)isEqual:(id)equal;
- (INHomeAction)initWithCoder:(id)coder;
- (INHomeAction)initWithType:(int64_t)type BOOLValue:(BOOL)value;
- (INHomeAction)initWithType:(int64_t)type doubleValue:(double)value;
- (INHomeAction)initWithType:(int64_t)type integerValue:(int64_t)value;
- (INHomeAction)initWithType:(int64_t)type stringValue:(id)value;
- (INHomeAction)initWithType:(int64_t)type valueType:(int64_t)valueType BOOLValue:(BOOL)value doubleValue:(double)doubleValue integerValue:(int64_t)integerValue stringValue:(id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeAction

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_valueType forKey:@"valueType"];
  [coderCopy encodeBool:self->_BOOLValue forKey:@"BOOLValue"];
  [coderCopy encodeDouble:@"doubleValue" forKey:self->_doubleValue];
  [coderCopy encodeDouble:@"integerValue" forKey:self->_integerValue];
  [coderCopy encodeObject:self->_stringValue forKey:@"stringValue"];
}

- (INHomeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeIntegerForKey:@"valueType"];
  v7 = [coderCopy decodeBoolForKey:@"BOOLValue"];
  [coderCopy decodeDoubleForKey:@"doubleValue"];
  v9 = v8;
  v10 = [coderCopy decodeIntegerForKey:@"integerValue"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];

  v12 = [(INHomeAction *)self initWithType:v5 valueType:v6 BOOLValue:v7 doubleValue:v10 integerValue:v11 stringValue:v9];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    v8 = 0;
    if (self->_type == v5[2] && self->_valueType == v5[3] && self->_BOOLValue == *(v5 + 8) && self->_doubleValue == *(v5 + 4) && self->_integerValue == v5[5])
    {
      stringValue = self->_stringValue;
      if (stringValue == v6[6] || [(NSString *)stringValue isEqual:?])
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  doubleValue = self->_doubleValue;
  v3 = self->_valueType ^ self->_type ^ self->_BOOLValue ^ self->_integerValue;
  return v3 ^ [(NSString *)self->_stringValue hash]^ doubleValue;
}

- (INHomeAction)initWithType:(int64_t)type valueType:(int64_t)valueType BOOLValue:(BOOL)value doubleValue:(double)doubleValue integerValue:(int64_t)integerValue stringValue:(id)stringValue
{
  stringValueCopy = stringValue;
  v20.receiver = self;
  v20.super_class = INHomeAction;
  v15 = [(INHomeAction *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v15->_valueType = valueType;
    v15->_BOOLValue = value;
    v15->_doubleValue = doubleValue;
    v15->_integerValue = integerValue;
    v17 = [stringValueCopy copy];
    stringValue = v16->_stringValue;
    v16->_stringValue = v17;
  }

  return v16;
}

- (INHomeAction)initWithType:(int64_t)type stringValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = INHomeAction;
  v7 = [(INHomeAction *)&v11 init];
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

- (INHomeAction)initWithType:(int64_t)type integerValue:(int64_t)value
{
  v7.receiver = self;
  v7.super_class = INHomeAction;
  result = [(INHomeAction *)&v7 init];
  if (result)
  {
    result->_integerValue = value;
    result->_type = type;
    result->_valueType = 4;
  }

  return result;
}

- (INHomeAction)initWithType:(int64_t)type doubleValue:(double)value
{
  v7.receiver = self;
  v7.super_class = INHomeAction;
  result = [(INHomeAction *)&v7 init];
  if (result)
  {
    result->_doubleValue = value;
    result->_type = type;
    result->_valueType = 2;
  }

  return result;
}

- (INHomeAction)initWithType:(int64_t)type BOOLValue:(BOOL)value
{
  v7.receiver = self;
  v7.super_class = INHomeAction;
  result = [(INHomeAction *)&v7 init];
  if (result)
  {
    result->_BOOLValue = value;
    result->_type = type;
    result->_valueType = 1;
  }

  return result;
}

@end