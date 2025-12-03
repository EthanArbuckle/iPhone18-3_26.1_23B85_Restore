@interface AFExperimentServerConfigurationInfo
+ (id)newWithBuilder:(id)builder;
- (AFExperimentServerConfigurationInfo)initWithBuilder:(id)builder;
- (AFExperimentServerConfigurationInfo)initWithCoder:(id)coder;
- (AFExperimentServerConfigurationInfo)initWithConfigurationIdentifier:(id)identifier configurationURL:(id)l maxTimeToSync:(double)sync;
- (AFExperimentServerConfigurationInfo)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFExperimentServerConfigurationInfo)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"configurationIdentifier"];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  configurationIdentifier = self->_configurationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:configurationIdentifier forKey:@"AFExperimentServerConfigurationInfo::configurationIdentifier"];
  [coderCopy encodeObject:self->_configurationURL forKey:@"AFExperimentServerConfigurationInfo::configurationURL"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxTimeToSync];
  [coderCopy encodeObject:v6 forKey:@"AFExperimentServerConfigurationInfo::maxTimeToSync"];
}

- (AFExperimentServerConfigurationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentServerConfigurationInfo::configurationIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentServerConfigurationInfo::configurationURL"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperimentServerConfigurationInfo::maxTimeToSync"];

  [v7 doubleValue];
  v9 = v8;

  v10 = [(AFExperimentServerConfigurationInfo *)self initWithConfigurationIdentifier:v5 configurationURL:v6 maxTimeToSync:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      maxTimeToSync = self->_maxTimeToSync;
      [(AFExperimentServerConfigurationInfo *)v5 maxTimeToSync];
      if (maxTimeToSync == v7)
      {
        configurationIdentifier = [(AFExperimentServerConfigurationInfo *)v5 configurationIdentifier];
        configurationIdentifier = self->_configurationIdentifier;
        if (configurationIdentifier == configurationIdentifier || [(NSString *)configurationIdentifier isEqual:configurationIdentifier])
        {
          configurationURL = [(AFExperimentServerConfigurationInfo *)v5 configurationURL];
          configurationURL = self->_configurationURL;
          v8 = configurationURL == configurationURL || [(NSURL *)configurationURL isEqual:configurationURL];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFExperimentServerConfigurationInfo;
  v5 = [(AFExperimentServerConfigurationInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {configurationIdentifier = %@, configurationURL = %@, maxTimeToSync = %f}", v5, self->_configurationIdentifier, self->_configurationURL, *&self->_maxTimeToSync];

  return v6;
}

- (AFExperimentServerConfigurationInfo)initWithConfigurationIdentifier:(id)identifier configurationURL:(id)l maxTimeToSync:(double)sync
{
  identifierCopy = identifier;
  lCopy = l;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __102__AFExperimentServerConfigurationInfo_initWithConfigurationIdentifier_configurationURL_maxTimeToSync___block_invoke;
  v14[3] = &unk_1E7346B30;
  v15 = identifierCopy;
  v16 = lCopy;
  syncCopy = sync;
  v10 = lCopy;
  v11 = identifierCopy;
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

- (AFExperimentServerConfigurationInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v16.receiver = self;
  v16.super_class = AFExperimentServerConfigurationInfo;
  v5 = [(AFExperimentServerConfigurationInfo *)&v16 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFExperimentServerConfigurationInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFExperimentServerConfigurationInfoMutation *)v7 isDirty])
    {
      getConfigurationIdentifier = [(_AFExperimentServerConfigurationInfoMutation *)v7 getConfigurationIdentifier];
      v9 = [getConfigurationIdentifier copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v9;

      getConfigurationURL = [(_AFExperimentServerConfigurationInfoMutation *)v7 getConfigurationURL];
      v12 = [getConfigurationURL copy];
      configurationURL = v6->_configurationURL;
      v6->_configurationURL = v12;

      [(_AFExperimentServerConfigurationInfoMutation *)v7 getMaxTimeToSync];
      v6->_maxTimeToSync = v14;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFExperimentServerConfigurationInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFExperimentServerConfigurationInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentServerConfigurationInfo);
      getConfigurationIdentifier = [(_AFExperimentServerConfigurationInfoMutation *)v5 getConfigurationIdentifier];
      v8 = [getConfigurationIdentifier copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v8;

      getConfigurationURL = [(_AFExperimentServerConfigurationInfoMutation *)v5 getConfigurationURL];
      v11 = [getConfigurationURL copy];
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