@interface BKSHIDKeyboardDevice
+ (BKSHIDKeyboardDevice)new;
- (BKSHIDKeyboardDevice)init;
- (BOOL)capsLockKeyHasLanguageSwitchLabel;
- (BOOL)globeKeyLabelHasGlobeSymbol;
- (NSData)platformInputModeConfiguration;
- (NSString)exclusivityIdentifier;
- (NSString)language;
- (NSString)layout;
- (NSString)transport;
- (id)_initWithProperties:(id)properties;
- (id)_properties;
- (int64_t)subinterfaceID;
- (unint64_t)senderID;
- (unsigned)countryCode;
- (unsigned)standardType;
- (void)_replaceProperties:(id)properties;
- (void)appendDescriptionToStream:(id)stream;
- (void)appendDescriptionToStream:(id)stream fromProxy:(id)proxy;
@end

@implementation BKSHIDKeyboardDevice

- (BOOL)globeKeyLabelHasGlobeSymbol
{
  os_unfair_lock_lock(&self->_lock);
  globeKeyLabelHasGlobeSymbol = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties globeKeyLabelHasGlobeSymbol];
  os_unfair_lock_unlock(&self->_lock);
  return globeKeyLabelHasGlobeSymbol;
}

- (BOOL)capsLockKeyHasLanguageSwitchLabel
{
  os_unfair_lock_lock(&self->_lock);
  capsLockKeyHasLanguageSwitchLabel = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties capsLockKeyHasLanguageSwitchLabel];
  os_unfair_lock_unlock(&self->_lock);
  return capsLockKeyHasLanguageSwitchLabel;
}

- (int64_t)subinterfaceID
{
  os_unfair_lock_lock(&self->_lock);
  subinterfaceID = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties subinterfaceID];
  os_unfair_lock_unlock(&self->_lock);
  return subinterfaceID;
}

- (unsigned)standardType
{
  os_unfair_lock_lock(&self->_lock);
  standardType = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties standardType];
  os_unfair_lock_unlock(&self->_lock);
  return standardType;
}

- (unsigned)countryCode
{
  os_unfair_lock_lock(&self->_lock);
  countryCode = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties countryCode];
  os_unfair_lock_unlock(&self->_lock);
  return countryCode;
}

- (NSData)platformInputModeConfiguration
{
  os_unfair_lock_lock(&self->_lock);
  platformInputModeConfiguration = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties platformInputModeConfiguration];
  os_unfair_lock_unlock(&self->_lock);

  return platformInputModeConfiguration;
}

- (NSString)exclusivityIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  exclusivityIdentifier = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties exclusivityIdentifier];
  os_unfair_lock_unlock(&self->_lock);

  return exclusivityIdentifier;
}

- (NSString)layout
{
  os_unfair_lock_lock(&self->_lock);
  layout = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties layout];
  os_unfair_lock_unlock(&self->_lock);

  return layout;
}

- (NSString)language
{
  os_unfair_lock_lock(&self->_lock);
  language = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties language];
  os_unfair_lock_unlock(&self->_lock);

  return language;
}

- (NSString)transport
{
  os_unfair_lock_lock(&self->_lock);
  transport = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties transport];
  os_unfair_lock_unlock(&self->_lock);

  return transport;
}

- (unint64_t)senderID
{
  os_unfair_lock_lock(&self->_lock);
  senderID = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties senderID];
  os_unfair_lock_unlock(&self->_lock);
  return senderID;
}

- (id)_properties
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BKSHIDKeyboardDeviceProperties *)self->_lock_properties copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_replaceProperties:(id)properties
{
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  v5 = [propertiesCopy copy];

  lock_properties = self->_lock_properties;
  self->_lock_properties = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_initWithProperties:(id)properties
{
  v28 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = BKSHIDKeyboardDevice;
  v7 = [(BKSHIDKeyboardDevice *)&v15 init];
  if (v7)
  {
    v8 = objc_opt_class();
    if (v8 != objc_opt_class())
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDKeyboardDevice cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        v21 = v7;
        v22 = 2114;
        v23 = @"BKSHIDKeyboardDevice.m";
        v24 = 1024;
        v25 = 75;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639068CLL);
    }

    objc_storeStrong(&v7->_lock_properties, properties);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)appendDescriptionToStream:(id)stream fromProxy:(id)proxy
{
  streamCopy = stream;
  proxyCopy = proxy;
  os_unfair_lock_lock(&self->_lock);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__BKSHIDKeyboardDevice_appendDescriptionToStream_fromProxy___block_invoke;
  v14[3] = &unk_1E6F47C78;
  v15 = proxyCopy;
  v8 = streamCopy;
  v16 = v8;
  v9 = proxyCopy;
  [v8 appendProem:self block:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__BKSHIDKeyboardDevice_appendDescriptionToStream_fromProxy___block_invoke_2;
  v11[3] = &unk_1E6F47C78;
  v12 = v8;
  selfCopy = self;
  v10 = v8;
  [v10 appendBodySectionWithName:0 block:v11];
  os_unfair_lock_unlock(&self->_lock);
}

id __60__BKSHIDKeyboardDevice_appendDescriptionToStream_fromProxy___block_invoke(id result)
{
  v1 = *(result + 4);
  if (v1)
  {
    return [*(result + 5) appendPointer:v1 withName:@"proxy"];
  }

  return result;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  os_unfair_lock_lock(&self->_lock);
  [streamCopy appendProem:self block:&__block_literal_global_7985];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__BKSHIDKeyboardDevice_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E6F47C78;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:0 block:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (BKSHIDKeyboardDevice)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardDevice.m";
    v17 = 1024;
    v18 = 31;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSHIDKeyboardDevice)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot +new"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDKeyboardDevice.m";
    v17 = 1024;
    v18 = 36;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end