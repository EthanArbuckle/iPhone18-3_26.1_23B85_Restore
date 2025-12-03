@interface INNumericSettingValue
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INNumericSettingValue)initWithCoder:(id)coder;
- (INNumericSettingValue)initWithValue:(id)value unit:(int64_t)unit;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INNumericSettingValue

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"value";
  value = self->_value;
  null = value;
  if (!value)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"unit";
  v10[0] = null;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_unit];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!value)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INNumericSettingValue;
  v6 = [(INNumericSettingValue *)&v11 description];
  _dictionaryRepresentation = [(INNumericSettingValue *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_value];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"value"];
  if (self->_unit == 1)
  {
    v9 = @"percentage";
  }

  else
  {
    v9 = @"unknown";
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"unit"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeInteger:self->_unit forKey:@"unit"];
}

- (INNumericSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [coderCopy decodeIntegerForKey:@"unit"];

  v7 = [(INNumericSettingValue *)self initWithValue:v5 unit:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      value = self->_value;
      v7 = (value == v5->_value || [(NSNumber *)value isEqual:?]) && self->_unit == v5->_unit;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_value hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_unit];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INNumericSettingValue)initWithValue:(id)value unit:(int64_t)unit
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = INNumericSettingValue;
  v7 = [(INNumericSettingValue *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_unit = unit;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"value"];
    v8 = [fromCopy objectForKeyedSubscript:@"unit"];
    v9 = [v8 isEqualToString:@"percentage"];

    v10 = [[self alloc] initWithValue:v7 unit:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end