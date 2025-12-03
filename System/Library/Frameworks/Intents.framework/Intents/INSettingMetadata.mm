@interface INSettingMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSettingMetadata)initWithCoder:(id)coder;
- (INSettingMetadata)initWithSettingId:(id)id targetDevice:(id)device targetApp:(id)app;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSettingMetadata

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"settingId";
  settingId = self->_settingId;
  null = settingId;
  if (!settingId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"targetDevice";
  targetDevice = self->_targetDevice;
  null2 = targetDevice;
  if (!targetDevice)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"targetApp";
  targetApp = self->_targetApp;
  null3 = targetApp;
  if (!targetApp)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (targetApp)
  {
    if (targetDevice)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (settingId)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!targetDevice)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (settingId)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSettingMetadata;
  v6 = [(INSettingMetadata *)&v11 description];
  _dictionaryRepresentation = [(INSettingMetadata *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_settingId];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"settingId"];

  v9 = [encoderCopy encodeObject:self->_targetDevice];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"targetDevice"];

  v10 = [encoderCopy encodeObject:self->_targetApp];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"targetApp"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  settingId = self->_settingId;
  coderCopy = coder;
  [coderCopy encodeObject:settingId forKey:@"settingId"];
  [coderCopy encodeObject:self->_targetDevice forKey:@"targetDevice"];
  [coderCopy encodeObject:self->_targetApp forKey:@"targetApp"];
}

- (INSettingMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"settingId"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetDevice"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetApp"];

  v11 = [(INSettingMetadata *)self initWithSettingId:v8 targetDevice:v9 targetApp:v10];
  return v11;
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
      settingId = self->_settingId;
      v9 = 0;
      if (settingId == v5->_settingId || [(NSString *)settingId isEqual:?])
      {
        targetDevice = self->_targetDevice;
        if (targetDevice == v5->_targetDevice || [(INSettingDevice *)targetDevice isEqual:?])
        {
          targetApp = self->_targetApp;
          if (targetApp == v5->_targetApp || [(INAppIdentifier *)targetApp isEqual:?])
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
  v3 = [(NSString *)self->_settingId hash];
  v4 = [(INSettingDevice *)self->_targetDevice hash]^ v3;
  return v4 ^ [(INAppIdentifier *)self->_targetApp hash];
}

- (INSettingMetadata)initWithSettingId:(id)id targetDevice:(id)device targetApp:(id)app
{
  idCopy = id;
  deviceCopy = device;
  appCopy = app;
  v19.receiver = self;
  v19.super_class = INSettingMetadata;
  v11 = [(INSettingMetadata *)&v19 init];
  if (v11)
  {
    v12 = [idCopy copy];
    settingId = v11->_settingId;
    v11->_settingId = v12;

    v14 = [deviceCopy copy];
    targetDevice = v11->_targetDevice;
    v11->_targetDevice = v14;

    v16 = [appCopy copy];
    targetApp = v11->_targetApp;
    v11->_targetApp = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [fromCopy objectForKeyedSubscript:@"settingId"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"targetDevice"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"targetApp"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [[self alloc] initWithSettingId:v9 targetDevice:v12 targetApp:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end