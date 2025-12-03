@interface INGetSettingResponseData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INGetSettingResponseData)initWithCoder:(id)coder;
- (INGetSettingResponseData)initWithSettingMetadata:(id)metadata numericValue:(id)value boundedValue:(int64_t)boundedValue binaryValue:(int64_t)binaryValue labeledValue:(id)labeledValue;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INGetSettingResponseData

- (id)_dictionaryRepresentation
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"settingMetadata";
  settingMetadata = self->_settingMetadata;
  null = settingMetadata;
  if (!settingMetadata)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"numericValue";
  numericValue = self->_numericValue;
  null2 = numericValue;
  if (!numericValue)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"boundedValue";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_boundedValue];
  v15[2] = v7;
  v14[3] = @"binaryValue";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_binaryValue];
  v15[3] = v8;
  v14[4] = @"labeledValue";
  labeledValue = self->_labeledValue;
  null3 = labeledValue;
  if (!labeledValue)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[4] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  if (!labeledValue)
  {
  }

  if (numericValue)
  {
    if (settingMetadata)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (settingMetadata)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INGetSettingResponseData;
  v6 = [(INGetSettingResponseData *)&v11 description];
  _dictionaryRepresentation = [(INGetSettingResponseData *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_settingMetadata];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"settingMetadata"];

  v9 = [encoderCopy encodeObject:self->_numericValue];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"numericValue"];

  v10 = self->_boundedValue - 1;
  if (v10 > 2)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7287E78[v10];
  }

  v12 = v11;
  [dictionary if_setObjectIfNonNil:v12 forKey:@"boundedValue"];

  v13 = self->_binaryValue - 1;
  if (v13 > 2)
  {
    v14 = @"unknown";
  }

  else
  {
    v14 = *(&off_1E7287C40 + v13);
  }

  v15 = v14;
  [dictionary if_setObjectIfNonNil:v15 forKey:@"binaryValue"];

  v16 = [encoderCopy encodeObject:self->_labeledValue];

  [dictionary if_setObjectIfNonNil:v16 forKey:@"labeledValue"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  settingMetadata = self->_settingMetadata;
  coderCopy = coder;
  [coderCopy encodeObject:settingMetadata forKey:@"settingMetadata"];
  [coderCopy encodeObject:self->_numericValue forKey:@"numericValue"];
  [coderCopy encodeInteger:self->_boundedValue forKey:@"boundedValue"];
  [coderCopy encodeInteger:self->_binaryValue forKey:@"binaryValue"];
  [coderCopy encodeObject:self->_labeledValue forKey:@"labeledValue"];
}

- (INGetSettingResponseData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settingMetadata"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numericValue"];
  v7 = [coderCopy decodeIntegerForKey:@"boundedValue"];
  v8 = [coderCopy decodeIntegerForKey:@"binaryValue"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"labeledValue"];

  v13 = [(INGetSettingResponseData *)self initWithSettingMetadata:v5 numericValue:v6 boundedValue:v7 binaryValue:v8 labeledValue:v12];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      settingMetadata = self->_settingMetadata;
      v9 = 0;
      if (settingMetadata == v5->_settingMetadata || [(INSettingMetadata *)settingMetadata isEqual:?])
      {
        numericValue = self->_numericValue;
        if ((numericValue == v5->_numericValue || [(INNumericSettingValue *)numericValue isEqual:?]) && self->_boundedValue == v5->_boundedValue && self->_binaryValue == v5->_binaryValue)
        {
          labeledValue = self->_labeledValue;
          if (labeledValue == v5->_labeledValue || [(NSString *)labeledValue isEqual:?])
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
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INSettingMetadata *)self->_settingMetadata hash];
  v4 = [(INNumericSettingValue *)self->_numericValue hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_boundedValue];
  v6 = v4 ^ [v5 hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_binaryValue];
  v8 = [v7 hash];
  v9 = v8 ^ [(NSString *)self->_labeledValue hash];

  return v6 ^ v9;
}

- (INGetSettingResponseData)initWithSettingMetadata:(id)metadata numericValue:(id)value boundedValue:(int64_t)boundedValue binaryValue:(int64_t)binaryValue labeledValue:(id)labeledValue
{
  metadataCopy = metadata;
  valueCopy = value;
  labeledValueCopy = labeledValue;
  v23.receiver = self;
  v23.super_class = INGetSettingResponseData;
  v15 = [(INGetSettingResponseData *)&v23 init];
  if (v15)
  {
    v16 = [metadataCopy copy];
    settingMetadata = v15->_settingMetadata;
    v15->_settingMetadata = v16;

    v18 = [valueCopy copy];
    numericValue = v15->_numericValue;
    v15->_numericValue = v18;

    v15->_boundedValue = boundedValue;
    v15->_binaryValue = binaryValue;
    v20 = [labeledValueCopy copy];
    labeledValue = v15->_labeledValue;
    v15->_labeledValue = v20;
  }

  return v15;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"settingMetadata"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"numericValue"];
    v14 = [decoderCopy decodeObjectOfClass:v12 from:v13];

    v15 = [fromCopy objectForKeyedSubscript:@"boundedValue"];
    v16 = INBoundedSettingValueWithString(v15);

    v17 = [fromCopy objectForKeyedSubscript:@"binaryValue"];
    v18 = INBinarySettingValueWithString(v17);

    v19 = [fromCopy objectForKeyedSubscript:@"labeledValue"];
    v20 = [[self alloc] initWithSettingMetadata:v11 numericValue:v14 boundedValue:v16 binaryValue:v18 labeledValue:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end