@interface AFDeviceContextHistoryConfiguration
+ (id)newWithBuilder:(id)a3;
- (AFDeviceContextHistoryConfiguration)initWithBuilder:(id)a3;
- (AFDeviceContextHistoryConfiguration)initWithCoder:(id)a3;
- (AFDeviceContextHistoryConfiguration)initWithDictionaryRepresentation:(id)a3;
- (AFDeviceContextHistoryConfiguration)initWithKeepsHistory:(BOOL)a3 historyBufferSize:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (AFDeviceContextHistoryConfiguration)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"keepsHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v6 BOOLValue];
    v9 = [v4 objectForKey:@"historyBufferSize"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 unsignedIntegerValue];
    self = [(AFDeviceContextHistoryConfiguration *)self initWithKeepsHistory:v8 historyBufferSize:v11];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  keepsHistory = self->_keepsHistory;
  v6 = a3;
  v7 = [v4 numberWithBool:keepsHistory];
  [v6 encodeObject:v7 forKey:@"AFDeviceContextHistoryConfiguration::keepsHistory"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_historyBufferSize];
  [v6 encodeObject:v8 forKey:@"AFDeviceContextHistoryConfiguration::historyBufferSize"];
}

- (AFDeviceContextHistoryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeviceContextHistoryConfiguration::keepsHistory"];
  v6 = [v5 BOOLValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFDeviceContextHistoryConfiguration::historyBufferSize"];

  v8 = [v7 unsignedIntegerValue];

  return [(AFDeviceContextHistoryConfiguration *)self initWithKeepsHistory:v6 historyBufferSize:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFDeviceContextHistoryConfiguration)initWithKeepsHistory:(BOOL)a3 historyBufferSize:(unint64_t)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AFDeviceContextHistoryConfiguration_initWithKeepsHistory_historyBufferSize___block_invoke;
  v5[3] = &__block_descriptor_41_e55_v16__0___AFDeviceContextHistoryConfigurationMutating__8l;
  v6 = a3;
  v5[4] = a4;
  return [(AFDeviceContextHistoryConfiguration *)self initWithBuilder:v5];
}

void __78__AFDeviceContextHistoryConfiguration_initWithKeepsHistory_historyBufferSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setKeepsHistory:v3];
  [v4 setHistoryBufferSize:*(a1 + 32)];
}

- (AFDeviceContextHistoryConfiguration)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFDeviceContextHistoryConfiguration;
  v5 = [(AFDeviceContextHistoryConfiguration *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFDeviceContextHistoryConfigurationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFDeviceContextHistoryConfigurationMutation *)v7 isDirty])
    {
      v6->_keepsHistory = [(_AFDeviceContextHistoryConfigurationMutation *)v7 getKeepsHistory];
      v6->_historyBufferSize = [(_AFDeviceContextHistoryConfigurationMutation *)v7 getHistoryBufferSize];
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
    v5 = [[_AFDeviceContextHistoryConfigurationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
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