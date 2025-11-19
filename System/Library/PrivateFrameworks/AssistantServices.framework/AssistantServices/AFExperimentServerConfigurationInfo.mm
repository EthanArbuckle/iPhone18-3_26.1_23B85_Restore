@interface AFExperimentServerConfigurationInfo
+ (id)newWithBuilder:(id)a3;
- (AFExperimentServerConfigurationInfo)initWithBuilder:(id)a3;
- (AFExperimentServerConfigurationInfo)initWithCoder:(id)a3;
- (AFExperimentServerConfigurationInfo)initWithConfigurationIdentifier:(id)a3 configurationURL:(id)a4 maxTimeToSync:(double)a5;
- (AFExperimentServerConfigurationInfo)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFExperimentServerConfigurationInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  configurationIdentifier = self->_configurationIdentifier;
  if (configurationIdentifier)
  {
    [v3 setObject:configurationIdentifier forKey:@"configurationIdentifier"];
  }

  configurationURL = self->_configurationURL;
  if (configurationURL)
  {
    [v4 setObject:configurationURL forKey:@"configurationURL"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxTimeToSync];
  [v4 setObject:v7 forKey:@"maxTimeToSync"];

  v8 = [v4 copy];

  return v8;
}

- (AFExperimentServerConfigurationInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"configurationIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"configurationURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 objectForKey:@"maxTimeToSync"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    [v12 doubleValue];
    v14 = v13;

    self = [(AFExperimentServerConfigurationInfo *)self initWithConfigurationIdentifier:v7 configurationURL:v10 maxTimeToSync:v14];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  configurationIdentifier = self->_configurationIdentifier;
  v5 = a3;
  [v5 encodeObject:configurationIdentifier forKey:@"AFExperimentServerConfigurationInfo::configurationIdentifier"];
  [v5 encodeObject:self->_configurationURL forKey:@"AFExperimentServerConfigurationInfo::configurationURL"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxTimeToSync];
  [v5 encodeObject:v6 forKey:@"AFExperimentServerConfigurationInfo::maxTimeToSync"];
}

- (AFExperimentServerConfigurationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentServerConfigurationInfo::configurationIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentServerConfigurationInfo::configurationURL"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentServerConfigurationInfo::maxTimeToSync"];

  [v7 doubleValue];
  v9 = v8;

  v10 = [(AFExperimentServerConfigurationInfo *)self initWithConfigurationIdentifier:v5 configurationURL:v6 maxTimeToSync:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      maxTimeToSync = self->_maxTimeToSync;
      [(AFExperimentServerConfigurationInfo *)v5 maxTimeToSync];
      if (maxTimeToSync == v7)
      {
        v9 = [(AFExperimentServerConfigurationInfo *)v5 configurationIdentifier];
        configurationIdentifier = self->_configurationIdentifier;
        if (configurationIdentifier == v9 || [(NSString *)configurationIdentifier isEqual:v9])
        {
          v11 = [(AFExperimentServerConfigurationInfo *)v5 configurationURL];
          configurationURL = self->_configurationURL;
          v8 = configurationURL == v11 || [(NSURL *)configurationURL isEqual:v11];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
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
  v3 = [(NSString *)self->_configurationIdentifier hash];
  v4 = [(NSURL *)self->_configurationURL hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxTimeToSync];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFExperimentServerConfigurationInfo;
  v5 = [(AFExperimentServerConfigurationInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {configurationIdentifier = %@, configurationURL = %@, maxTimeToSync = %f}", v5, self->_configurationIdentifier, self->_configurationURL, *&self->_maxTimeToSync];

  return v6;
}

- (AFExperimentServerConfigurationInfo)initWithConfigurationIdentifier:(id)a3 configurationURL:(id)a4 maxTimeToSync:(double)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__AFExperimentServerConfigurationInfo_initWithConfigurationIdentifier_configurationURL_maxTimeToSync___block_invoke;
  v14[3] = &unk_1E7346B30;
  v15 = v8;
  v16 = v9;
  v17 = a5;
  v10 = v9;
  v11 = v8;
  v12 = [(AFExperimentServerConfigurationInfo *)self initWithBuilder:v14];

  return v12;
}

void __102__AFExperimentServerConfigurationInfo_initWithConfigurationIdentifier_configurationURL_maxTimeToSync___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setConfigurationIdentifier:v3];
  [v4 setConfigurationURL:*(a1 + 40)];
  [v4 setMaxTimeToSync:*(a1 + 48)];
}

- (AFExperimentServerConfigurationInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AFExperimentServerConfigurationInfo;
  v5 = [(AFExperimentServerConfigurationInfo *)&v16 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFExperimentServerConfigurationInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFExperimentServerConfigurationInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFExperimentServerConfigurationInfoMutation *)v7 getConfigurationIdentifier];
      v9 = [v8 copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v9;

      v11 = [(_AFExperimentServerConfigurationInfoMutation *)v7 getConfigurationURL];
      v12 = [v11 copy];
      configurationURL = v6->_configurationURL;
      v6->_configurationURL = v12;

      [(_AFExperimentServerConfigurationInfoMutation *)v7 getMaxTimeToSync];
      v6->_maxTimeToSync = v14;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFExperimentServerConfigurationInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFExperimentServerConfigurationInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentServerConfigurationInfo);
      v7 = [(_AFExperimentServerConfigurationInfoMutation *)v5 getConfigurationIdentifier];
      v8 = [v7 copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v8;

      v10 = [(_AFExperimentServerConfigurationInfoMutation *)v5 getConfigurationURL];
      v11 = [v10 copy];
      configurationURL = v6->_configurationURL;
      v6->_configurationURL = v11;

      [(_AFExperimentServerConfigurationInfoMutation *)v5 getMaxTimeToSync];
      v6->_maxTimeToSync = v13;
    }

    else
    {
      v6 = [(AFExperimentServerConfigurationInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFExperimentServerConfigurationInfo *)self copy];
  }

  return v6;
}

@end