@interface INHomeUserTask
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeUserTask)initWithCoder:(id)coder;
- (INHomeUserTask)initWithTaskType:(int64_t)type attribute:(int64_t)attribute value:(id)value;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeUserTask

- (id)_dictionaryRepresentation
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"taskType";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskType];
  v11[0] = v3;
  v10[1] = @"attribute";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_attribute];
  v11[1] = v4;
  v10[2] = @"value";
  value = self->_value;
  null = value;
  if (!value)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[2] = null;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  if (!value)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeUserTask;
  v6 = [(INHomeUserTask *)&v11 description];
  _dictionaryRepresentation = [(INHomeUserTask *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = self->_taskType - 1;
  if (v8 > 5)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7286DA0[v8];
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"taskType"];

  v11 = self->_attribute - 1;
  if (v11 > 0x41)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_1E727F080[v11];
  }

  v13 = v12;
  [dictionary if_setObjectIfNonNil:v13 forKey:@"attribute"];

  v14 = [encoderCopy encodeObject:self->_value];

  [dictionary if_setObjectIfNonNil:v14 forKey:@"value"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  taskType = self->_taskType;
  coderCopy = coder;
  [coderCopy encodeInteger:taskType forKey:@"taskType"];
  [coderCopy encodeInteger:self->_attribute forKey:@"attribute"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (INHomeUserTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"taskType"];
  v6 = [coderCopy decodeIntegerForKey:@"attribute"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v8 = [(INHomeUserTask *)self initWithTaskType:v5 attribute:v6 value:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      v8 = 0;
      if (self->_taskType == v5->_taskType && self->_attribute == v5->_attribute)
      {
        value = self->_value;
        if (value == v6->_value || [(INHomeAttributeValue *)value isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskType];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_attribute];
  v6 = [v5 hash] ^ v4;
  v7 = [(INHomeAttributeValue *)self->_value hash];

  return v6 ^ v7;
}

- (INHomeUserTask)initWithTaskType:(int64_t)type attribute:(int64_t)attribute value:(id)value
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = INHomeUserTask;
  v9 = [(INHomeUserTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_taskType = type;
    v9->_attribute = attribute;
    v11 = [valueCopy copy];
    value = v10->_value;
    v10->_value = v11;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"taskType"];
    v10 = INHomeUserTaskTypeWithString(v9);

    v11 = [fromCopy objectForKeyedSubscript:@"attribute"];
    v12 = INHomeAttributeTypeWithString(v11);

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"value"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [[self alloc] initWithTaskType:v10 attribute:v12 value:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end