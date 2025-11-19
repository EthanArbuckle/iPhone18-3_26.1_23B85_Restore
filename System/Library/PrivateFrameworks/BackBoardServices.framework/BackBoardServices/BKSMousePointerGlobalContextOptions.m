@interface BKSMousePointerGlobalContextOptions
+ (BKSMousePointerGlobalContextOptions)new;
+ (id)build:(id)a3;
- (BKSMousePointerGlobalContextOptions)init;
- (BKSMousePointerGlobalContextOptions)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)a1;
@end

@implementation BKSMousePointerGlobalContextOptions

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableMousePointerGlobalContextOptions alloc];

  return [(BKSMousePointerGlobalContextOptions *)v4 _initWithCopyOf:?];
}

- (void)_initWithCopyOf:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSMousePointerGlobalContextOptions *)a1 _init];
    a1 = v4;
    if (v4)
    {
      *(v4 + 8) = v3[8];
    }
  }

  return a1;
}

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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMousePointerGlobalContextOptions cannot be subclassed"];
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
          v17 = @"BKSMousePointerGlobalContextOptions.m";
          v18 = 1024;
          v19 = 41;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863B84ECLL);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSMousePointerGlobalContextOptions;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSMousePointerGlobalContextOptions alloc];

  return [(BKSMousePointerGlobalContextOptions *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4[8] == self->_pinOnButtonDown;

  return v5;
}

- (unint64_t)hash
{
  v2 = 0x476D1CE4E5B90000;
  if (!self->_pinOnButtonDown)
  {
    v2 = 0;
  }

  return (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
}

- (BKSMousePointerGlobalContextOptions)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = BKSMousePointerGlobalContextOptions;
  v3 = a3;
  v4 = [(BKSMousePointerGlobalContextOptions *)&v7 init];
  v5 = [v3 decodeBoolForKey:{@"pinOnButtonDown", v7.receiver, v7.super_class}];

  v4->_pinOnButtonDown = v5;
  return v4;
}

- (BKSMousePointerGlobalContextOptions)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSMousePointerGlobalContextOptions"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSMousePointerGlobalContextOptions init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerGlobalContextOptions.m";
    v9 = 1024;
    v10 = 30;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSMousePointerGlobalContextOptions)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSMousePointerGlobalContextOptions"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSMousePointerGlobalContextOptions new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSMousePointerGlobalContextOptions.m";
    v9 = 1024;
    v10 = 35;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = [(BKSMousePointerGlobalContextOptions *)[BKSMutableMousePointerGlobalContextOptions alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end