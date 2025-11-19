@interface INVoiceCommandDeviceInformation
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INVoiceCommandDeviceInformation)initWithCoder:(id)a3;
- (INVoiceCommandDeviceInformation)initWithDeviceIdiom:(int64_t)a3 isHomePodInUltimateMode:(id)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v5 = isHomePodInUltimateMode;
  if (!isHomePodInUltimateMode)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!isHomePodInUltimateMode)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INVoiceCommandDeviceInformation;
  v6 = [(INVoiceCommandDeviceInformation *)&v11 description];
  v7 = [(INVoiceCommandDeviceInformation *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
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
  [v7 if_setObjectIfNonNil:v10 forKey:@"deviceIdiom"];

  v11 = [v6 encodeObject:self->_isHomePodInUltimateMode];

  [v7 if_setObjectIfNonNil:v11 forKey:@"isHomePodInUltimateMode"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  deviceIdiom = self->_deviceIdiom;
  v5 = a3;
  [v5 encodeInteger:deviceIdiom forKey:@"deviceIdiom"];
  [v5 encodeObject:self->_isHomePodInUltimateMode forKey:@"isHomePodInUltimateMode"];
}

- (INVoiceCommandDeviceInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"deviceIdiom"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isHomePodInUltimateMode"];

  v7 = [(INVoiceCommandDeviceInformation *)self initWithDeviceIdiom:v5 isHomePodInUltimateMode:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INVoiceCommandDeviceInformation)initWithDeviceIdiom:(int64_t)a3 isHomePodInUltimateMode:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INVoiceCommandDeviceInformation;
  v7 = [(INVoiceCommandDeviceInformation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_deviceIdiom = a3;
    v9 = [v6 copy];
    isHomePodInUltimateMode = v8->_isHomePodInUltimateMode;
    v8->_isHomePodInUltimateMode = v9;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"deviceIdiom"];
    v8 = INDeviceIdiomWithString(v7);

    v9 = [v6 objectForKeyedSubscript:@"isHomePodInUltimateMode"];
    v10 = [[a1 alloc] initWithDeviceIdiom:v8 isHomePodInUltimateMode:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end