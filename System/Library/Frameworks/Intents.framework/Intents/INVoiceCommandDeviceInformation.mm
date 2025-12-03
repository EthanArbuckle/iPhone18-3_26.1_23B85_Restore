@interface INVoiceCommandDeviceInformation
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INVoiceCommandDeviceInformation)initWithCoder:(id)coder;
- (INVoiceCommandDeviceInformation)initWithDeviceIdiom:(int64_t)idiom isHomePodInUltimateMode:(id)mode;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INVoiceCommandDeviceInformation

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"deviceIdiom";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceIdiom];
  v9[1] = @"isHomePodInUltimateMode";
  v10[0] = v3;
  isHomePodInUltimateMode = self->_isHomePodInUltimateMode;
  null = isHomePodInUltimateMode;
  if (!isHomePodInUltimateMode)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!isHomePodInUltimateMode)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INVoiceCommandDeviceInformation;
  v6 = [(INVoiceCommandDeviceInformation *)&v11 description];
  _dictionaryRepresentation = [(INVoiceCommandDeviceInformation *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = self->_deviceIdiom - 1;
  if (v8 > 6)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7286518[v8];
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"deviceIdiom"];

  v11 = [encoderCopy encodeObject:self->_isHomePodInUltimateMode];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"isHomePodInUltimateMode"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  deviceIdiom = self->_deviceIdiom;
  coderCopy = coder;
  [coderCopy encodeInteger:deviceIdiom forKey:@"deviceIdiom"];
  [coderCopy encodeObject:self->_isHomePodInUltimateMode forKey:@"isHomePodInUltimateMode"];
}

- (INVoiceCommandDeviceInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"deviceIdiom"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isHomePodInUltimateMode"];

  v7 = [(INVoiceCommandDeviceInformation *)self initWithDeviceIdiom:v5 isHomePodInUltimateMode:v6];
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
      v7 = 0;
      if (self->_deviceIdiom == v5->_deviceIdiom)
      {
        isHomePodInUltimateMode = self->_isHomePodInUltimateMode;
        if (isHomePodInUltimateMode == v5->_isHomePodInUltimateMode || [(NSNumber *)isHomePodInUltimateMode isEqual:?])
        {
          v7 = 1;
        }
      }
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
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deviceIdiom];
  v4 = [v3 hash];
  v5 = [(NSNumber *)self->_isHomePodInUltimateMode hash];

  return v5 ^ v4;
}

- (INVoiceCommandDeviceInformation)initWithDeviceIdiom:(int64_t)idiom isHomePodInUltimateMode:(id)mode
{
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = INVoiceCommandDeviceInformation;
  v7 = [(INVoiceCommandDeviceInformation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_deviceIdiom = idiom;
    v9 = [modeCopy copy];
    isHomePodInUltimateMode = v8->_isHomePodInUltimateMode;
    v8->_isHomePodInUltimateMode = v9;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"deviceIdiom"];
    v8 = INDeviceIdiomWithString(v7);

    v9 = [fromCopy objectForKeyedSubscript:@"isHomePodInUltimateMode"];
    v10 = [[self alloc] initWithDeviceIdiom:v8 isHomePodInUltimateMode:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end