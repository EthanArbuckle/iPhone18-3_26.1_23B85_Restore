@interface BKSMutableHIDEventDeferringTarget
- (BKSMutableHIDEventDeferringTarget)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPid:(int)pid;
- (void)setToken:(id)token;
@end

@implementation BKSMutableHIDEventDeferringTarget

- (BKSMutableHIDEventDeferringTarget)init
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMutableHIDEventDeferringTarget cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKSHIDEventDeferringTarget.m";
      v20 = 1024;
      v21 = 154;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186347C08);
  }

  v5 = getpid();
  v6 = *MEMORY[0x1E69E9840];

  return [(BKSHIDEventDeferringTarget *)self _initWithPID:v5 token:0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringTarget allocWithZone:zone];
  pid = self->super._pid;
  token = self->super._token;

  return [(BKSHIDEventDeferringTarget *)v4 _initWithPID:pid token:token];
}

- (void)setToken:(id)token
{
  v30 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [tokenCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"token", v10, v12];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v19 = v14;
        v20 = 2114;
        v21 = v16;
        v22 = 2048;
        selfCopy = self;
        v24 = 2114;
        v25 = @"BKSHIDEventDeferringTarget.m";
        v26 = 1024;
        v27 = 166;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186360254);
    }
  }

  v5 = [tokenCopy copy];
  token = self->super._token;
  self->super._token = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPid:(int)pid
{
  v22 = *MEMORY[0x1E69E9840];
  if (pid <= 0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid"];
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
      v17 = @"BKSHIDEventDeferringTarget.m";
      v18 = 1024;
      v19 = 160;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863603ACLL);
  }

  self->super._pid = pid;
  v4 = *MEMORY[0x1E69E9840];
}

@end