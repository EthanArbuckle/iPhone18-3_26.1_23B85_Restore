@interface BKSHIDEventDisplay
+ (BKSHIDEventDisplay)displayWithHardwareIdentifier:(id)a3;
+ (id)builtinDisplay;
+ (id)nullDisplay;
+ (id)protobufSchema;
- (BKSHIDEventDisplay)init;
- (BKSHIDEventDisplay)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithHardwareIdentifier:(id)a3;
- (id)initForProtobufDecoding;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDisplay

+ (id)builtinDisplay
{
  if (builtinDisplay_onceToken != -1)
  {
    dispatch_once(&builtinDisplay_onceToken, &__block_literal_global_16);
  }

  v3 = builtinDisplay___builtin;

  return v3;
}

- (unint64_t)hash
{
  if (self->_builtin)
  {
    v2 = 102301;
  }

  else
  {
    v2 = 96953;
  }

  return v2 ^ [(NSString *)self->_hardwareIdentifier hash];
}

+ (id)nullDisplay
{
  if (nullDisplay_onceToken != -1)
  {
    dispatch_once(&nullDisplay_onceToken, &__block_literal_global_2520);
  }

  v3 = nullDisplay___null;

  return v3;
}

- (NSString)description
{
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    v4 = hardwareIdentifier;
  }

  else
  {
    if (self->_builtin)
    {
      v4 = @"builtin";
    }

    else
    {
      v4 = @"null";
    }
  }

  return v4;
}

void __33__BKSHIDEventDisplay_nullDisplay__block_invoke()
{
  v0 = [[BKSHIDEventDisplay alloc] _initWithHardwareIdentifier:0];
  v1 = nullDisplay___null;
  nullDisplay___null = v0;

  *(nullDisplay___null + 8) = 0;
}

void __36__BKSHIDEventDisplay_builtinDisplay__block_invoke()
{
  v0 = [[BKSHIDEventDisplay alloc] _initWithHardwareIdentifier:0];
  v1 = builtinDisplay___builtin;
  builtinDisplay___builtin = v0;

  *(builtinDisplay___builtin + 8) = 1;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BKSHIDEventDisplay_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_2510 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_2510, block);
  }

  v2 = protobufSchema_schema_2511;

  return v2;
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDEventDisplay;
  return [(BKSHIDEventDisplay *)&v3 init];
}

uint64_t __36__BKSHIDEventDisplay_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_2511 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_26];

  return MEMORY[0x1EEE66BB8]();
}

void __36__BKSHIDEventDisplay_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_hardwareIdentifier" forTag:1];
  [v2 addField:"_builtin" forTag:2];
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
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && self->_builtin == v4->_builtin)
    {
      hardwareIdentifier = self->_hardwareIdentifier;
      v7 = v4->_hardwareIdentifier;
      v8 = BSEqualStrings();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BKSHIDEventDisplay)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"builtin"])
  {
    v5 = +[BKSHIDEventDisplay builtinDisplay];
  }

  else
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareIdentifier"];
    if (v6)
    {
      [BKSHIDEventDisplay displayWithHardwareIdentifier:v6];
    }

    else
    {
      +[BKSHIDEventDisplay nullDisplay];
    }
    v5 = ;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hardwareIdentifier = self->_hardwareIdentifier;
  if (hardwareIdentifier)
  {
    [a3 encodeObject:hardwareIdentifier forKey:@"hardwareIdentifier"];
  }

  else
  {
    [a3 encodeBool:self->_builtin forKey:@"builtin"];
  }
}

- (id)_initWithHardwareIdentifier:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = BKSHIDEventDisplay;
  v6 = [(BKSHIDEventDisplay *)&v26 init];
  if (v6)
  {
    v7 = objc_opt_class();
    if (v7 != objc_opt_class())
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDisplay cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v28 = v14;
        v29 = 2114;
        v30 = v16;
        v31 = 2048;
        v32 = v6;
        v33 = 2114;
        v34 = @"BKSHIDEventDisplay.m";
        v35 = 1024;
        v36 = 28;
        v37 = 2114;
        v38 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186368828);
    }

    v8 = v5;
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [v8 classForCoder];
        if (!v18)
        {
          v18 = objc_opt_class();
        }

        v19 = NSStringFromClass(v18);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = [v17 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"hardwareIdentifier", v19, v21];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v23 = NSStringFromSelector(a2);
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          *buf = 138544642;
          v28 = v23;
          v29 = 2114;
          v30 = v25;
          v31 = 2048;
          v32 = v6;
          v33 = 2114;
          v34 = @"BKSHIDEventDisplay.m";
          v35 = 1024;
          v36 = 29;
          v37 = 2114;
          v38 = v22;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v22 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186368960);
      }
    }

    v9 = [v8 copy];
    hardwareIdentifier = v6->_hardwareIdentifier;
    v6->_hardwareIdentifier = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BKSHIDEventDisplay)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDisplay"];
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
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDisplay.m";
    v17 = 1024;
    v18 = 22;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSHIDEventDisplay)displayWithHardwareIdentifier:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  if (!v5)
  {
    v11 = NSStringFromClass(v7);
    v12 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"hardwareIdentifier", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v26 = v13;
      v27 = 2114;
      v28 = v15;
      v29 = 2048;
      v30 = a1;
      v31 = 2114;
      v32 = @"BKSHIDEventDisplay.m";
      v33 = 1024;
      v34 = 66;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186368C40);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v5 classForCoder];
    if (!v17)
    {
      v17 = objc_opt_class();
    }

    v18 = NSStringFromClass(v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"hardwareIdentifier", v18, v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v26 = v22;
      v27 = 2114;
      v28 = v24;
      v29 = 2048;
      v30 = a1;
      v31 = 2114;
      v32 = @"BKSHIDEventDisplay.m";
      v33 = 1024;
      v34 = 66;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186368D78);
  }

  v8 = [[BKSHIDEventDisplay alloc] _initWithHardwareIdentifier:v5];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end