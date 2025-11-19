@interface AFDeviceCapabilities
- (AFDeviceCapabilities)initWithCoder:(id)a3;
- (AFDeviceCapabilities)initWithSerializedBackingStore:(id)a3;
- (AFDeviceCapabilities)initWithVoiceTriggerEnabled:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)serializedBackingStore;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFDeviceCapabilities

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AFDeviceCapabilities *)self serializedBackingStore];
  [v4 encodeObject:v5 forKey:@"serializedBackingStore"];
}

- (AFDeviceCapabilities)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"serializedBackingStore"];

  v9 = [(AFDeviceCapabilities *)self initWithSerializedBackingStore:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFDeviceCapabilities *)self serializedBackingStore];
      v6 = [(AFDeviceCapabilities *)v4 serializedBackingStore];
      v7 = [v5 isEqual:v6];
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
  v2 = [(AFDeviceCapabilities *)self serializedBackingStore];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AFDeviceCapabilities;
  v4 = [(AFDeviceCapabilities *)&v10 description];
  voiceTriggerEnabled = self->_voiceTriggerEnabled;
  if (voiceTriggerEnabled > 2)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_1E7347958[voiceTriggerEnabled];
  }

  v7 = v6;
  v8 = [v3 stringWithFormat:@"%@(voiceTriggerEnabled=%@)", v4, v7];

  return v8;
}

- (id)serializedBackingStore
{
  if (self->_serializedBackingStore)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_serializedBackingStore];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = v3;
  voiceTriggerEnabled = self->_voiceTriggerEnabled;
  if (!voiceTriggerEnabled)
  {
    v6 = [v3 objectForKey:@"voiceTriggerEnabled"];

    if (!v6)
    {
      goto LABEL_8;
    }

    voiceTriggerEnabled = self->_voiceTriggerEnabled;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:voiceTriggerEnabled];
  [v4 setObject:v7 forKey:@"voiceTriggerEnabled"];

LABEL_8:

  return v4;
}

- (AFDeviceCapabilities)initWithSerializedBackingStore:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKey:@"voiceTriggerEnabled"];
  v7 = -[AFDeviceCapabilities initWithVoiceTriggerEnabled:](self, "initWithVoiceTriggerEnabled:", [v6 integerValue]);

  if (v7)
  {
    objc_storeStrong(&v7->_serializedBackingStore, a3);
  }

  return v7;
}

- (AFDeviceCapabilities)initWithVoiceTriggerEnabled:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AFDeviceCapabilities;
  result = [(AFDeviceCapabilities *)&v5 init];
  if (result)
  {
    result->_voiceTriggerEnabled = a3;
  }

  return result;
}

@end