@interface BKSHIDEventDeferringConstraint
+ (id)build:(id)a3;
+ (id)new;
+ (id)simpleConstraint;
- (BKSHIDEventDeferringConstraint)init;
- (BKSHIDEventDeferringConstraint)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringConstraint

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDeferringConstraint alloc];

  return [(BKSHIDEventDeferringConstraint *)v4 _initWithCopyOf:?];
}

- (void)_initWithCopyOf:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [(BKSHIDEventDeferringConstraint *)a1 _init];
    if (a1)
    {
      v4 = [v3[1] copy];
      v5 = a1[1];
      a1[1] = v4;
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
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeferringConstraint cannot be subclassed"];
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
          v17 = @"BKSHIDEventDeferringConstraint.m";
          v18 = 1024;
          v19 = 52;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18635D354);
      }
    }

    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringConstraint;
    result = objc_msgSendSuper2(&v9, sel_init);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringConstraint"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringConstraint new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringConstraint.m";
    v9 = 1024;
    v10 = 46;
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
  v4 = [(BKSHIDEventDeferringConstraint *)[BKSMutableHIDEventDeferringConstraint alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

+ (id)simpleConstraint
{
  if (simpleConstraint_onceToken != -1)
  {
    dispatch_once(&simpleConstraint_onceToken, &__block_literal_global_1064);
  }

  v3 = simpleConstraint_constraint;

  return v3;
}

uint64_t __50__BKSHIDEventDeferringConstraint_simpleConstraint__block_invoke()
{
  simpleConstraint_constraint = [BKSHIDEventDeferringConstraint build:&__block_literal_global_3];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4[1];
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  if (identifier)
  {
    [a3 encodeObject:identifier forKey:@"identifier"];
  }
}

- (BKSHIDEventDeferringConstraint)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = BKSHIDEventDeferringConstraint;
  v3 = a3;
  v4 = [(BKSHIDEventDeferringConstraint *)&v8 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"identifier", v8.receiver, v8.super_class}];

  identifier = v4->_identifier;
  v4->_identifier = v5;

  return v4;
}

- (BKSHIDEventDeferringConstraint)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeferringConstraint"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringConstraint init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringConstraint.m";
    v9 = 1024;
    v10 = 41;
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