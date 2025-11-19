@interface INSettingMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSettingMetadata)initWithCoder:(id)a3;
- (INSettingMetadata)initWithSettingId:(id)a3 targetDevice:(id)a4 targetApp:(id)a5;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSettingMetadata

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"settingId";
  settingId = self->_settingId;
  v4 = settingId;
  if (!settingId)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"targetDevice";
  targetDevice = self->_targetDevice;
  v6 = targetDevice;
  if (!targetDevice)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"targetApp";
  targetApp = self->_targetApp;
  v8 = targetApp;
  if (!targetApp)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSettingMetadata;
  v6 = [(INSettingMetadata *)&v11 description];
  v7 = [(INSettingMetadata *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_settingId];
  [v7 if_setObjectIfNonNil:v8 forKey:@"settingId"];

  v9 = [v6 encodeObject:self->_targetDevice];
  [v7 if_setObjectIfNonNil:v9 forKey:@"targetDevice"];

  v10 = [v6 encodeObject:self->_targetApp];

  [v7 if_setObjectIfNonNil:v10 forKey:@"targetApp"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  settingId = self->_settingId;
  v5 = a3;
  [v5 encodeObject:settingId forKey:@"settingId"];
  [v5 encodeObject:self->_targetDevice forKey:@"targetDevice"];
  [v5 encodeObject:self->_targetApp forKey:@"targetApp"];
}

- (INSettingMetadata)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"settingId"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"targetDevice"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"targetApp"];

  v11 = [(INSettingMetadata *)self initWithSettingId:v8 targetDevice:v9 targetApp:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INSettingMetadata)initWithSettingId:(id)a3 targetDevice:(id)a4 targetApp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = INSettingMetadata;
  v11 = [(INSettingMetadata *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    settingId = v11->_settingId;
    v11->_settingId = v12;

    v14 = [v9 copy];
    targetDevice = v11->_targetDevice;
    v11->_targetDevice = v14;

    v16 = [v10 copy];
    targetApp = v11->_targetApp;
    v11->_targetApp = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"settingId"];
    v10 = objc_opt_class();
    v11 = [v8 objectForKeyedSubscript:@"targetDevice"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"targetApp"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [[a1 alloc] initWithSettingId:v9 targetDevice:v12 targetApp:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end