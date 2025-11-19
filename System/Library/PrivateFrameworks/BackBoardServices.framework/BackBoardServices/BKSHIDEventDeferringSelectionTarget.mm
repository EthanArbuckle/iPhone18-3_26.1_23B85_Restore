@interface BKSHIDEventDeferringSelectionTarget
+ (BKSHIDEventDeferringSelectionTarget)new;
+ (id)build:(id)a3;
- (BKSHIDEventDeferringSelectionTarget)init;
- (BKSHIDEventDeferringSelectionTarget)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithCopyOf:(id *)a1;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventDeferringSelectionTarget

- (id)_initWithCopyOf:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(BKSHIDEventDeferringSelectionTarget *)a1 _init];
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      objc_storeStrong(a1 + 2, v3[2]);
      objc_storeStrong(a1 + 3, v3[3]);
    }
  }

  return a1;
}

- (void)_init
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BKSHIDEventDeferringSelectionTarget;
    v1 = objc_msgSendSuper2(&v12, sel_init);
    if (v1)
    {
      v2 = objc_opt_class();
      if (v2 != objc_opt_class())
      {
        v3 = objc_opt_class();
        if (v3 != objc_opt_class())
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDeliverySelectionTarget cannot be subclassed"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v9 = NSStringFromSelector(sel__init);
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            *buf = 138544642;
            v14 = v9;
            v15 = 2114;
            v16 = v11;
            v17 = 2048;
            v18 = v1;
            v19 = 2114;
            v20 = @"BKSHIDEventDeferringSelectionTarget.m";
            v21 = 1024;
            v22 = 58;
            v23 = 2114;
            v24 = v8;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v8 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863A3F80);
        }
      }

      v4 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
      v5 = v1[1];
      v1[1] = v4;
    }
  }

  else
  {
    v1 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

- (void)appendDescriptionToStream:(id)a3
{
  v7 = a3;
  v4 = [v7 appendObject:self->_environment withName:@"environment"];
  v5 = [v7 appendObject:self->_display withName:@"display"];
  v6 = [v7 appendObject:self->_target withName:@"target"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventDeferringSelectionTarget alloc];

  return [(BKSHIDEventDeferringSelectionTarget *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    environment = self->_environment;
    if (BSEqualObjects() && (v8 = v5[2], display = self->_display, BSEqualObjects()))
    {
      v10 = v5[3];
      target = self->_target;
      v12 = BSEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringTarget *)self->_target hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  environment = self->_environment;
  v8 = v4;
  if (environment)
  {
    [v4 encodeObject:environment forKey:@"environment"];
    v4 = v8;
  }

  display = self->_display;
  if (display)
  {
    [v8 encodeObject:display forKey:@"display"];
    v4 = v8;
  }

  target = self->_target;
  if (target)
  {
    [v8 encodeObject:target forKey:@"target"];
    v4 = v8;
  }
}

- (BKSHIDEventDeferringSelectionTarget)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = BKSHIDEventDeferringSelectionTarget;
  v3 = a3;
  v4 = [(BKSHIDEventDeferringSelectionTarget *)&v12 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"environment", v12.receiver, v12.super_class}];
  environment = v4->_environment;
  v4->_environment = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  display = v4->_display;
  v4->_display = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"target"];

  target = v4->_target;
  v4->_target = v9;

  return v4;
}

- (BKSHIDEventDeferringSelectionTarget)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeliverySelectionTarget"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[BKSHIDEventDeferringSelectionTarget init]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionTarget.m";
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

+ (BKSHIDEventDeferringSelectionTarget)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot directly allocate BKSHIDEventDeliverySelectionTarget"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BKSHIDEventDeferringSelectionTarget new]"];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionTarget.m";
    v9 = 1024;
    v10 = 50;
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
  v4 = [(BKSHIDEventDeferringSelectionTarget *)[BKSMutableHIDEventDeferringSelectionTarget alloc] _init];
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end