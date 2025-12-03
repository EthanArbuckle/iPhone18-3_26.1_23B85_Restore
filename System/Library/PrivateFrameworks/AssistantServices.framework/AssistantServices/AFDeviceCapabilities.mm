@interface AFDeviceCapabilities
- (AFDeviceCapabilities)initWithCoder:(id)coder;
- (AFDeviceCapabilities)initWithSerializedBackingStore:(id)store;
- (AFDeviceCapabilities)initWithVoiceTriggerEnabled:(int64_t)enabled;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)serializedBackingStore;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDeviceCapabilities

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serializedBackingStore = [(AFDeviceCapabilities *)self serializedBackingStore];
  [coderCopy encodeObject:serializedBackingStore forKey:@"serializedBackingStore"];
}

- (AFDeviceCapabilities)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"serializedBackingStore"];

  v9 = [(AFDeviceCapabilities *)self initWithSerializedBackingStore:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serializedBackingStore = [(AFDeviceCapabilities *)self serializedBackingStore];
      serializedBackingStore2 = [(AFDeviceCapabilities *)equalCopy serializedBackingStore];
      v7 = [serializedBackingStore isEqual:serializedBackingStore2];
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
  serializedBackingStore = [(AFDeviceCapabilities *)self serializedBackingStore];
  v3 = [serializedBackingStore hash];

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

- (AFDeviceCapabilities)initWithSerializedBackingStore:(id)store
{
  storeCopy = store;
  v6 = [storeCopy objectForKey:@"voiceTriggerEnabled"];
  v7 = -[AFDeviceCapabilities initWithVoiceTriggerEnabled:](self, "initWithVoiceTriggerEnabled:", [v6 integerValue]);

  if (v7)
  {
    objc_storeStrong(&v7->_serializedBackingStore, store);
  }

  return v7;
}

- (AFDeviceCapabilities)initWithVoiceTriggerEnabled:(int64_t)enabled
{
  v5.receiver = self;
  v5.super_class = AFDeviceCapabilities;
  result = [(AFDeviceCapabilities *)&v5 init];
  if (result)
  {
    result->_voiceTriggerEnabled = enabled;
  }

  return result;
}

@end