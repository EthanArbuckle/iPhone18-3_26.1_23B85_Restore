@interface AFDeviceContextHistoryConfiguration
+ (id)newWithBuilder:(id)builder;
- (AFDeviceContextHistoryConfiguration)initWithBuilder:(id)builder;
- (AFDeviceContextHistoryConfiguration)initWithCoder:(id)coder;
- (AFDeviceContextHistoryConfiguration)initWithDictionaryRepresentation:(id)representation;
- (AFDeviceContextHistoryConfiguration)initWithKeepsHistory:(BOOL)history historyBufferSize:(unint64_t)size;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDeviceContextHistoryConfiguration

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_keepsHistory];
  [v3 setObject:v4 forKey:@"keepsHistory"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_historyBufferSize];
  [v3 setObject:v5 forKey:@"historyBufferSize"];

  v6 = [v3 copy];

  return v6;
}

- (AFDeviceContextHistoryConfiguration)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"keepsHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    bOOLValue = [v6 BOOLValue];
    v9 = [representationCopy objectForKey:@"historyBufferSize"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    unsignedIntegerValue = [v10 unsignedIntegerValue];
    self = [(AFDeviceContextHistoryConfiguration *)self initWithKeepsHistory:bOOLValue historyBufferSize:unsignedIntegerValue];
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
  v4 = MEMORY[0x1E696AD98];
  keepsHistory = self->_keepsHistory;
  coderCopy = coder;
  v7 = [v4 numberWithBool:keepsHistory];
  [coderCopy encodeObject:v7 forKey:@"AFDeviceContextHistoryConfiguration::keepsHistory"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_historyBufferSize];
  [coderCopy encodeObject:v8 forKey:@"AFDeviceContextHistoryConfiguration::historyBufferSize"];
}

- (AFDeviceContextHistoryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeviceContextHistoryConfiguration::keepsHistory"];
  bOOLValue = [v5 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFDeviceContextHistoryConfiguration::historyBufferSize"];

  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return [(AFDeviceContextHistoryConfiguration *)self initWithKeepsHistory:bOOLValue historyBufferSize:unsignedIntegerValue];
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
      keepsHistory = self->_keepsHistory;
      if (keepsHistory == [(AFDeviceContextHistoryConfiguration *)v5 keepsHistory])
      {
        historyBufferSize = self->_historyBufferSize;
        v8 = historyBufferSize == [(AFDeviceContextHistoryConfiguration *)v5 historyBufferSize];
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
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_keepsHistory];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_historyBufferSize];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = AFDeviceContextHistoryConfiguration;
  v5 = [(AFDeviceContextHistoryConfiguration *)&v10 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_keepsHistory)
  {
    v7 = @"YES";
  }

  v8 = [v4 initWithFormat:@"%@ {keepsHistory = %@, historyBufferSize = %llu}", v5, v7, self->_historyBufferSize];

  return v8;
}

- (AFDeviceContextHistoryConfiguration)initWithKeepsHistory:(BOOL)history historyBufferSize:(unint64_t)size
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AFDeviceContextHistoryConfiguration_initWithKeepsHistory_historyBufferSize___block_invoke;
  v5[3] = &__block_descriptor_41_e55_v16__0___AFDeviceContextHistoryConfigurationMutating__8l;
  historyCopy = history;
  v5[4] = size;
  return [(AFDeviceContextHistoryConfiguration *)self initWithBuilder:v5];
}

void __78__AFDeviceContextHistoryConfiguration_initWithKeepsHistory_historyBufferSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setKeepsHistory:v3];
  [v4 setHistoryBufferSize:*(a1 + 32)];
}

- (AFDeviceContextHistoryConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = AFDeviceContextHistoryConfiguration;
  v5 = [(AFDeviceContextHistoryConfiguration *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFDeviceContextHistoryConfigurationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFDeviceContextHistoryConfigurationMutation *)v7 isDirty])
    {
      v6->_keepsHistory = [(_AFDeviceContextHistoryConfigurationMutation *)v7 getKeepsHistory];
      v6->_historyBufferSize = [(_AFDeviceContextHistoryConfigurationMutation *)v7 getHistoryBufferSize];
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
    v5 = [[_AFDeviceContextHistoryConfigurationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFDeviceContextHistoryConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFDeviceContextHistoryConfiguration);
      v6->_keepsHistory = [(_AFDeviceContextHistoryConfigurationMutation *)v5 getKeepsHistory];
      v6->_historyBufferSize = [(_AFDeviceContextHistoryConfigurationMutation *)v5 getHistoryBufferSize];
    }

    else
    {
      v6 = [(AFDeviceContextHistoryConfiguration *)self copy];
    }
  }

  else
  {
    v6 = [(AFDeviceContextHistoryConfiguration *)self copy];
  }

  return v6;
}

@end