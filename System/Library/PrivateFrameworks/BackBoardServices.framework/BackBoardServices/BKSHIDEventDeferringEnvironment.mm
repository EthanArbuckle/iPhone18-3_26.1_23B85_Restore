@interface BKSHIDEventDeferringEnvironment
+ (id)environmentWithIdentifier:(id)identifier;
+ (id)keyboardFocusEnvironment;
+ (id)protobufSchema;
+ (id)systemEnvironment;
- (BKSHIDEventDeferringEnvironment)init;
- (BKSHIDEventDeferringEnvironment)initWithBSXPCCoder:(id)coder;
- (BKSHIDEventDeferringEnvironment)initWithCoder:(id)coder;
- (BKSHIDEventDeferringEnvironment)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)_uniqueEnvironmentForIdentifier;
- (id)initForProtobufDecoding;
- (void)_initWithIdentifier:(void *)identifier;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BKSHIDEventDeferringEnvironment

+ (id)keyboardFocusEnvironment
{
  if (keyboardFocusEnvironment_onceToken != -1)
  {
    dispatch_once(&keyboardFocusEnvironment_onceToken, &__block_literal_global_18);
  }

  v3 = keyboardFocusEnvironment___focusEnvironment;

  return v3;
}

- (id)_uniqueEnvironmentForIdentifier
{
  if (self)
  {
    selfCopy = self;
    if ([self[1] isEqual:@"system"])
    {
      self = +[BKSHIDEventDeferringEnvironment systemEnvironment];
    }

    else if ([selfCopy[1] isEqual:@"keyboardFocus"])
    {
      self = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
    }

    else
    {
      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

+ (id)systemEnvironment
{
  if (systemEnvironment_onceToken != -1)
  {
    dispatch_once(&systemEnvironment_onceToken, &__block_literal_global_246);
  }

  v3 = systemEnvironment___systemEnvironment;

  return v3;
}

uint64_t __59__BKSHIDEventDeferringEnvironment_keyboardFocusEnvironment__block_invoke()
{
  keyboardFocusEnvironment___focusEnvironment = [[BKSHIDEventDeferringEnvironment alloc] _initWithIdentifier:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__BKSHIDEventDeferringEnvironment_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken != -1)
  {
    dispatch_once(&protobufSchema_onceToken, block);
  }

  v2 = protobufSchema_schema;

  return v2;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDeferringEnvironment;
  return [(BKSHIDEventDeferringEnvironment *)&v3 init];
}

uint64_t __49__BKSHIDEventDeferringEnvironment_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_31];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = [(NSString *)self->_identifier isEqual:equalCopy->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSHIDEventDeferringEnvironment)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringEnvironment;
  v5 = [(BKSHIDEventDeferringEnvironment *)&v10 init];
  if (!v5 || ([coderCopy decodeStringForKey:@"ident"], v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, -[BKSHIDEventDeferringEnvironment _uniqueEnvironmentForIdentifier](&v5->super.isa), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = v5;
  }

  return v8;
}

- (BKSHIDEventDeferringEnvironment)initWithXPCDictionary:(id)dictionary
{
  v12.receiver = self;
  v12.super_class = BKSHIDEventDeferringEnvironment;
  dictionaryCopy = dictionary;
  v4 = [(BKSHIDEventDeferringEnvironment *)&v12 init];
  [@"ident" UTF8String];
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();

  identifier = v4->_identifier;
  v4->_identifier = v5;

  _uniqueEnvironmentForIdentifier = [(BKSHIDEventDeferringEnvironment *)&v4->super.isa _uniqueEnvironmentForIdentifier];
  v8 = _uniqueEnvironmentForIdentifier;
  if (_uniqueEnvironmentForIdentifier)
  {
    v9 = _uniqueEnvironmentForIdentifier;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  return v10;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  identifier = self->_identifier;
  dictionaryCopy = dictionary;
  [@"ident" UTF8String];
  BSSerializeStringToXPCDictionaryWithKey();
}

- (BKSHIDEventDeferringEnvironment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKSHIDEventDeferringEnvironment;
  v5 = [(BKSHIDEventDeferringEnvironment *)&v10 init];
  if (!v5 || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ident"], v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, -[BKSHIDEventDeferringEnvironment _uniqueEnvironmentForIdentifier](&v5->super.isa), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = v5;
  }

  return v8;
}

- (BKSHIDEventDeferringEnvironment)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeferringEnvironment"];
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
    v16 = @"BKSHIDEventDeferringEnvironment.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)environmentWithIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"system"])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"use +systemEnvironment"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v17 = 138544642;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventDeferringEnvironment.m";
      v25 = 1024;
      v26 = 61;
      v27 = 2114;
      v28 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v17, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186357574);
  }

  if ([identifierCopy isEqualToString:@"keyboardFocus"])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"use +keyboardFocusEnvironment"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = 138544642;
      v18 = v14;
      v19 = 2114;
      v20 = v16;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventDeferringEnvironment.m";
      v25 = 1024;
      v26 = 62;
      v27 = 2114;
      v28 = v13;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v17, 0x3Au);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186357660);
  }

  v6 = [[BKSHIDEventDeferringEnvironment alloc] _initWithIdentifier:identifierCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_initWithIdentifier:(void *)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringEnvironment is not subclassable"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel__initWithIdentifier_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v15 = v10;
        v16 = 2114;
        v17 = v12;
        v18 = 2048;
        identifierCopy = identifier;
        v20 = 2114;
        v21 = @"BKSHIDEventDeferringEnvironment.m";
        v22 = 1024;
        v23 = 32;
        v24 = 2114;
        v25 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186357818);
    }

    v13.receiver = identifier;
    v13.super_class = BKSHIDEventDeferringEnvironment;
    identifier = objc_msgSendSuper2(&v13, sel_init);
    if (identifier)
    {
      v5 = [v3 copy];
      v6 = identifier[1];
      identifier[1] = v5;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return identifier;
}

uint64_t __52__BKSHIDEventDeferringEnvironment_systemEnvironment__block_invoke()
{
  systemEnvironment___systemEnvironment = [[BKSHIDEventDeferringEnvironment alloc] _initWithIdentifier:?];

  return MEMORY[0x1EEE66BB8]();
}

@end