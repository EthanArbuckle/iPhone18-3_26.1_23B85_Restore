@interface BKSHIDEventDeferringModality
+ (id)activeInputModality;
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringModality)init;
- (BKSHIDEventDeferringModality)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringModality

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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringModality cannot be subclassed"];
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
          v17 = @"BKSHIDEventDeferringModality.m";
          v18 = 1024;
          v19 = 51;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18635DC8CLL);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringModality;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    of = [(BKSHIDEventDeferringModality *)of _init];
    if (of)
    {
      v4 = [v3[1] copy];
      v5 = of[1];
      of[1] = v4;
    }
  }

  return of;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringModality"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringModality new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModality.m";
    v9 = 1024;
    v10 = 45;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventDeferringModality *)[BKSMutableHIDEventDeferringModality alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

+ (id)activeInputModality
{
  if (activeInputModality_onceToken != -1)
  {
    dispatch_once(&activeInputModality_onceToken, &__block_literal_global_1189);
  }

  v3 = activeInputModality_modality;

  return v3;
}

uint64_t __51__BKSHIDEventDeferringModality_activeInputModality__block_invoke()
{
  activeInputModality_modality = [BKSHIDEventDeferringModality build:&__block_literal_global_3_1191];

  return MEMORY[0x1EEE66BB8]();
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringModality alloc];

  return [(BKSHIDEventDeferringModality *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy[1];
    identifier = self->_identifier;
    v7 = BSEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  [(NSString *)self->_identifier hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  if (identifier)
  {
    [coder encodeObject:identifier forKey:@"identifier"];
  }
}

- (BKSHIDEventDeferringModality)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = BKSHIDEventDeferringModality;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringModality *)&v8 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"identifier", v8.receiver, v8.super_class}];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (BKSHIDEventDeferringModality)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringModality"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringModality init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModality.m";
    v9 = 1024;
    v10 = 40;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end