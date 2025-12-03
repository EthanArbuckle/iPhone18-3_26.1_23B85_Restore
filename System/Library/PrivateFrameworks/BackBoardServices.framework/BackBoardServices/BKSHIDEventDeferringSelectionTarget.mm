@interface BKSHIDEventDeferringSelectionTarget
+ (BKSHIDEventDeferringSelectionTarget)new;
+ (id)build:(id)build;
- (BKSHIDEventDeferringSelectionTarget)init;
- (BKSHIDEventDeferringSelectionTarget)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringSelectionTarget

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringSelectionTarget *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
      objc_storeStrong(of + 3, v3[3]);
    }
  }

  return of;
}

- (void)_init
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v12.receiver = self;
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

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = [streamCopy appendObject:self->_environment withName:@"environment"];
  v5 = [streamCopy appendObject:self->_display withName:@"display"];
  v6 = [streamCopy appendObject:self->_target withName:@"target"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringSelectionTarget alloc];

  return [(BKSHIDEventDeferringSelectionTarget *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  environment = self->_environment;
  v8 = coderCopy;
  if (environment)
  {
    [coderCopy encodeObject:environment forKey:@"environment"];
    coderCopy = v8;
  }

  display = self->_display;
  if (display)
  {
    [v8 encodeObject:display forKey:@"display"];
    coderCopy = v8;
  }

  target = self->_target;
  if (target)
  {
    [v8 encodeObject:target forKey:@"target"];
    coderCopy = v8;
  }
}

- (BKSHIDEventDeferringSelectionTarget)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = BKSHIDEventDeferringSelectionTarget;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringSelectionTarget *)&v12 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"environment", v12.receiver, v12.super_class}];
  environment = v4->_environment;
  v4->_environment = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display"];
  display = v4->_display;
  v4->_display = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];

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

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventDeferringSelectionTarget *)[BKSMutableHIDEventDeferringSelectionTarget alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end