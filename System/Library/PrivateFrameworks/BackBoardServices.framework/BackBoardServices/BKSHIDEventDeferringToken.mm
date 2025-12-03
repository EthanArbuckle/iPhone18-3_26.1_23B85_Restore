@interface BKSHIDEventDeferringToken
+ (BKSHIDEventDeferringToken)new;
+ (id)protobufSchema;
+ (id)tokenForString:(id)string;
- (BKSHIDEventDeferringToken)init;
- (BKSHIDEventDeferringToken)initWithCoder:(id)coder;
- (id)_init;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringToken

- (id)_init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class() && v4 != objc_opt_class() && v4 != objc_opt_class() && v4 != objc_opt_class())
  {
    v7 = a2;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot subclass BKSHIDEventDeferringToken"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(v7);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDeferringToken.m";
      v21 = 1024;
      v22 = 479;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186346CFCLL);
  }

  v12.receiver = self;
  v12.super_class = BKSHIDEventDeferringToken;
  result = [(BKSHIDEventDeferringToken *)&v12 init];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__BKSHIDEventDeferringToken_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (protobufSchema_onceToken_137 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_137, block);
  }

  v2 = protobufSchema_schema_136;

  return v2;
}

uint64_t __43__BKSHIDEventDeferringToken_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_136 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_139];

  return MEMORY[0x1EEE66BB8]();
}

void __43__BKSHIDEventDeferringToken_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  [v2 setAcceptableConcreteSubclasses:v3];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"subclass me"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BKSHIDEventDeferringToken.m";
    v18 = 1024;
    v19 = 585;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKSHIDEventDeferringToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"subclass me"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"BKSHIDEventDeferringToken.m";
    v19 = 1024;
    v20 = 580;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"subclass me"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BKSHIDEventDeferringToken.m";
    v18 = 1024;
    v19 = 576;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (id)tokenForString:(id)string
{
  v25 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (![stringCopy length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[string length] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDeferringToken.m";
      v21 = 1024;
      v22 = 499;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637DBECLL);
  }

  v6 = [[_BKSHIDStringIdentifierEventDeferringToken alloc] _initWithString:stringCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BKSHIDEventDeferringToken)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"+new is not allowed on BKSHIDEventDeferringToken"];
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
    v16 = @"BKSHIDEventDeferringToken.m";
    v17 = 1024;
    v18 = 465;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BKSHIDEventDeferringToken)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDeferringToken"];
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
    v16 = @"BKSHIDEventDeferringToken.m";
    v17 = 1024;
    v18 = 470;
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