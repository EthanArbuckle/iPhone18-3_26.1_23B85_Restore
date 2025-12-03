@interface INHomeAutomationFromEntity
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeAutomationFromEntity)initWithCoder:(id)coder;
- (INHomeAutomationFromEntity)initWithValue:(id)value type:(int64_t)type;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeAutomationFromEntity

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

  v9[1] = @"type";
  v10[0] = null;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
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
  v11.super_class = INHomeAutomationFromEntity;
  v6 = [(INHomeAutomationFromEntity *)&v11 description];
  _dictionaryRepresentation = [(INHomeAutomationFromEntity *)self _dictionaryRepresentation];
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
  v9 = self->_type - 1;
  if (v9 > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7288818[v9];
  }

  v11 = v10;
  [dictionary if_setObjectIfNonNil:v11 forKey:@"type"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeObject:value forKey:@"value"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (INHomeAutomationFromEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];

  v7 = [(INHomeAutomationFromEntity *)self initWithValue:v5 type:v6];
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
      v7 = (value == v5->_value || [(NSString *)value isEqual:?]) && self->_type == v5->_type;
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
  v3 = [(NSString *)self->_value hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INHomeAutomationFromEntity)initWithValue:(id)value type:(int64_t)type
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = INHomeAutomationFromEntity;
  v7 = [(INHomeAutomationFromEntity *)&v11 init];
  if (v7)
  {
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;

    v7->_type = type;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"value"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"type"];
    v13 = INHomeAutomationEntityTypeWithString(v12);

    v14 = [[self alloc] initWithValue:v11 type:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end