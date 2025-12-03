@interface BKSHIDKeyboardDeviceProperties
+ (BKSHIDKeyboardDeviceProperties)new;
+ (id)build:(id)build;
- (BKSHIDKeyboardDeviceProperties)init;
- (BKSHIDKeyboardDeviceProperties)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initCopyFromOriginal:(id)original;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDKeyboardDeviceProperties

- (id)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDKeyboardDeviceProperties cannot be subclassed"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSHIDKeyboardDeviceProperties.m";
          v18 = 1024;
          v19 = 52;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18639F4F4);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDKeyboardDeviceProperties;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendUInt64:self->_senderID withName:@"senderID" format:1];
  v5 = [formatterCopy appendObject:self->_transport withName:@"transport"];
  v6 = [formatterCopy appendObject:self->_language withName:@"language"];
  v7 = [formatterCopy appendObject:self->_layout withName:@"layout"];
  exclusivityIdentifier = self->_exclusivityIdentifier;
  if (exclusivityIdentifier)
  {
    [formatterCopy appendString:exclusivityIdentifier withName:@"exclusivityIdentifier"];
  }

  platformInputModeConfiguration = self->_platformInputModeConfiguration;
  if (platformInputModeConfiguration)
  {
    v10 = [formatterCopy appendObject:platformInputModeConfiguration withName:@"platformInputModeConfiguration"];
  }

  v11 = [formatterCopy appendInteger:self->_countryCode withName:@"countryCode"];
  v12 = [formatterCopy appendInteger:self->_standardType withName:@"standardType"];
  v13 = [formatterCopy appendInteger:self->_subinterfaceID withName:@"subinterfaceID"];
  v14 = [formatterCopy appendBool:self->_capsLockKeyHasLanguageSwitchLabel withName:@"capsLockKeyHasLanguageSwitchLabel"];
  v15 = [formatterCopy appendBool:self->_globeKeyLabelHasGlobeSymbol withName:@"globeKeyLabelHasGlobeSymbol"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDKeyboardDeviceProperties alloc];

  return [(BKSHIDKeyboardDeviceProperties *)v4 _initCopyFromOriginal:?];
}

- (id)_initCopyFromOriginal:(id)original
{
  v3 = a2;
  if (original)
  {
    v16.receiver = original;
    v16.super_class = BKSHIDKeyboardDeviceProperties;
    v4 = objc_msgSendSuper2(&v16, sel_init);
    original = v4;
    if (v4)
    {
      v4[1] = *(v3 + 1);
      v5 = [*(v3 + 2) copy];
      v6 = *(original + 2);
      *(original + 2) = v5;

      v7 = [*(v3 + 3) copy];
      v8 = *(original + 3);
      *(original + 3) = v7;

      v9 = [*(v3 + 4) copy];
      v10 = *(original + 4);
      *(original + 4) = v9;

      v11 = [*(v3 + 5) copy];
      v12 = *(original + 5);
      *(original + 5) = v11;

      v13 = [*(v3 + 6) copy];
      v14 = *(original + 6);
      *(original + 6) = v13;

      *(original + 72) = *(v3 + 72);
      *(original + 14) = *(v3 + 14);
      *(original + 8) = *(v3 + 8);
      *(original + 73) = *(v3 + 73);
      *(original + 74) = *(v3 + 74);
    }
  }

  return original;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDKeyboardDeviceProperties alloc];

  return [(BKSHIDKeyboardDeviceProperties *)v4 _initCopyFromOriginal:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (equalCopy[1] != self->_senderID)
  {
    goto LABEL_12;
  }

  v5 = equalCopy[3];
  language = self->_language;
  if (!BSEqualObjects())
  {
    goto LABEL_12;
  }

  v7 = equalCopy[4];
  layout = self->_layout;
  if (BSEqualObjects() && (v9 = equalCopy[5], exclusivityIdentifier = self->_exclusivityIdentifier, BSEqualObjects()) && (v11 = equalCopy[6], platformInputModeConfiguration = self->_platformInputModeConfiguration, BSEqualObjects()) && *(equalCopy + 72) == self->_countryCode && *(equalCopy + 14) == self->_standardType && equalCopy[8] == self->_subinterfaceID && *(equalCopy + 73) == self->_capsLockKeyHasLanguageSwitchLabel)
  {
    v13 = *(equalCopy + 74) == self->_globeKeyLabelHasGlobeSymbol;
  }

  else
  {
LABEL_12:
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  senderID = self->_senderID;
  v4 = [(NSString *)self->_transport hash]^ senderID;
  v5 = [(NSString *)self->_language hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_layout hash];
  v7 = [(NSString *)self->_exclusivityIdentifier hash];
  v8 = v6 ^ v7 ^ [(NSData *)self->_platformInputModeConfiguration hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_countryCode];
  v10 = [v9 hash];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_standardType];
  v12 = v8 ^ v10 ^ [v11 hash];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_subinterfaceID];
  v14 = [v13 hash];

  return v12 ^ v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_senderID forKey:@"senderID"];
  transport = self->_transport;
  if (transport)
  {
    [coderCopy encodeObject:transport forKey:@"transport"];
  }

  language = self->_language;
  if (language)
  {
    [coderCopy encodeObject:language forKey:@"language"];
  }

  layout = self->_layout;
  v7 = coderCopy;
  if (layout)
  {
    [coderCopy encodeObject:layout forKey:@"layout"];
    v7 = coderCopy;
  }

  exclusivityIdentifier = self->_exclusivityIdentifier;
  if (exclusivityIdentifier)
  {
    [coderCopy encodeObject:exclusivityIdentifier forKey:@"exclusivityIdentifier"];
    v7 = coderCopy;
  }

  platformInputModeConfiguration = self->_platformInputModeConfiguration;
  if (platformInputModeConfiguration)
  {
    [coderCopy encodeObject:platformInputModeConfiguration forKey:@"platformInputModeConfiguration"];
    v7 = coderCopy;
  }

  [v7 encodeInteger:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeInteger:self->_standardType forKey:@"standardType"];
  [coderCopy encodeInteger:self->_subinterfaceID forKey:@"subinterfaceID"];
  [coderCopy encodeBool:self->_capsLockKeyHasLanguageSwitchLabel forKey:@"capsLockKeyHasLanguageSwitchLabel"];
  [coderCopy encodeBool:self->_globeKeyLabelHasGlobeSymbol forKey:@"globeKeyLabelHasGlobeSymbol"];
}

- (BKSHIDKeyboardDeviceProperties)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = BKSHIDKeyboardDeviceProperties;
  coderCopy = coder;
  v4 = [(BKSHIDKeyboardDeviceProperties *)&v17 init];
  v4->_senderID = [coderCopy decodeInt64ForKey:{@"senderID", v17.receiver, v17.super_class}];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transport"];
  transport = v4->_transport;
  v4->_transport = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
  language = v4->_language;
  v4->_language = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layout"];
  layout = v4->_layout;
  v4->_layout = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exclusivityIdentifier"];
  exclusivityIdentifier = v4->_exclusivityIdentifier;
  v4->_exclusivityIdentifier = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformInputModeConfiguration"];
  platformInputModeConfiguration = v4->_platformInputModeConfiguration;
  v4->_platformInputModeConfiguration = v13;

  v4->_countryCode = [coderCopy decodeIntegerForKey:@"countryCode"];
  v4->_standardType = [coderCopy decodeIntegerForKey:@"standardType"];
  v4->_subinterfaceID = [coderCopy decodeIntegerForKey:@"subinterfaceID"];
  v4->_capsLockKeyHasLanguageSwitchLabel = [coderCopy decodeBoolForKey:@"capsLockKeyHasLanguageSwitchLabel"];
  v15 = [coderCopy decodeBoolForKey:@"globeKeyLabelHasGlobeSymbol"];

  v4->_globeKeyLabelHasGlobeSymbol = v15;
  return v4;
}

- (BKSHIDKeyboardDeviceProperties)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDKeyboardDeviceProperties"];
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
    v16 = @"BKSHIDKeyboardDeviceProperties.m";
    v17 = 1024;
    v18 = 41;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __48__BKSHIDKeyboardDeviceProperties_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_senderID"];
  [v2 addField:"_transport"];
  [v2 addField:"_language"];
  [v2 addField:"_layout"];
  [v2 addField:"_exclusivityIdentifier"];
  [v2 addField:"_platformInputModeConfiguration"];
  [v2 addField:"_countryCode"];
  [v2 addField:"_standardType"];
  [v2 addField:"_subinterfaceID"];
  [v2 addField:"_capsLockKeyHasLanguageSwitchLabel"];
  [v2 addField:"_globeKeyLabelHasGlobeSymbol"];
}

+ (BKSHIDKeyboardDeviceProperties)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDKeyboardDeviceProperties"];
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
    v16 = @"BKSHIDKeyboardDeviceProperties.m";
    v17 = 1024;
    v18 = 46;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDKeyboardDeviceProperties *)[BKSMutableHIDKeyboardDeviceProperties alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end