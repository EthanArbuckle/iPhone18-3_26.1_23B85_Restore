@interface BKSMutableHIDEventDeferringPredicate
- (BKSMutableHIDEventDeferringPredicate)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplay:(id)display;
- (void)setEnvironment:(id)environment;
- (void)setToken:(id)token;
@end

@implementation BKSMutableHIDEventDeferringPredicate

- (BKSMutableHIDEventDeferringPredicate)init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMutableHIDEventDeferringPredicate cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDeferringPredicate.m";
      v21 = 1024;
      v22 = 138;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186346FB8);
  }

  v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v6 = [(BKSHIDEventDeferringPredicate *)self _initWithEnvironment:v5 display:0 token:0];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringPredicate allocWithZone:zone];
  environment = self->super._environment;
  display = self->super._display;
  token = self->super._token;

  return [(BKSHIDEventDeferringPredicate *)v4 _initWithEnvironment:environment display:display token:token];
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
        v25 = @"BKSHIDEventDeferringPredicate.m";
        v26 = 1024;
        v27 = 156;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186383C78);
    }
  }

  v5 = [tokenCopy copy];
  token = self->super._token;
  self->super._token = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDisplay:(id)display
{
  v30 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v10, v12];

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
        v25 = @"BKSHIDEventDeferringPredicate.m";
        v26 = 1024;
        v27 = 150;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186383E78);
    }
  }

  v5 = [displayCopy copy];
  display = self->super._display;
  self->super._display = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setEnvironment:(id)environment
{
  v37 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"environment", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v26 = v12;
      v27 = 2114;
      v28 = v14;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringPredicate.m";
      v33 = 1024;
      v34 = 144;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186384054);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [environmentCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"environment", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v26 = v21;
      v27 = 2114;
      v28 = v23;
      v29 = 2048;
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringPredicate.m";
      v33 = 1024;
      v34 = 144;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186384190);
  }

  v5 = [environmentCopy copy];
  environment = self->super._environment;
  self->super._environment = v5;

  v7 = *MEMORY[0x1E69E9840];
}

@end