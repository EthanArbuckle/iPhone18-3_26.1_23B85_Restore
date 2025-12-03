@interface BKSMutableHIDEventDeferringResolution
- (BKSMutableHIDEventDeferringResolution)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDispatchingTarget:(id)target;
- (void)setDisplay:(id)display;
- (void)setEnvironment:(id)environment;
- (void)setPid:(int)pid;
- (void)setProcessDescription:(id)description;
- (void)setToken:(id)token;
- (void)setVersionedPID:(int64_t)d;
@end

@implementation BKSMutableHIDEventDeferringResolution

- (BKSMutableHIDEventDeferringResolution)init
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMutableHIDEventDeferringResolution cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138544642;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = @"BKSHIDEventDeferringResolution.m";
      v22 = 1024;
      v23 = 250;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863495E8);
  }

  v5 = +[BKSHIDEventDisplay nullDisplay];
  v6 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v7 = BSGetVersionedPID();
  if (self)
  {
    self = [BKSHIDEventDeferringResolution _initWithDisplay:v5 environment:v6 versionedPID:v7 pid:-1 token:0 dispatchingTarget:?];
  }

  v8 = *MEMORY[0x1E69E9840];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringResolution allocWithZone:zone];

  return [(BKSHIDEventDeferringResolution *)&v4->super.isa _initWithCopyOf:?];
}

- (void)setDispatchingTarget:(id)target
{
  v24 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (targetCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      targetCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected BKSHIDEventDispatchingTarget got %@", targetCopy];;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v13 = v9;
        v14 = 2114;
        v15 = v11;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"BKSHIDEventDeferringResolution.m";
        v20 = 1024;
        v21 = 307;
        v22 = 2114;
        v23 = targetCopy;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [targetCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387D9CLL);
    }
  }

  dispatchingTarget = self->super._dispatchingTarget;
  self->super._dispatchingTarget = targetCopy;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setProcessDescription:(id)description
{
  v25 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      descriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected NSString got %@", descriptionCopy];;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        selfCopy = self;
        v19 = 2114;
        v20 = @"BKSHIDEventDeferringResolution.m";
        v21 = 1024;
        v22 = 299;
        v23 = 2114;
        v24 = descriptionCopy;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [descriptionCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387F3CLL);
    }
  }

  v5 = [descriptionCopy copy];
  processDescription = self->super._processDescription;
  self->super._processDescription = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setToken:(id)token
{
  v25 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      tokenCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected BKSHIDEventDeferringToken got %@", tokenCopy];;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        selfCopy = self;
        v19 = 2114;
        v20 = @"BKSHIDEventDeferringResolution.m";
        v21 = 1024;
        v22 = 291;
        v23 = 2114;
        v24 = tokenCopy;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [tokenCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863880E0);
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
      v17 = @"BKSHIDEventDeferringResolution.m";
      v18 = 1024;
      v19 = 283;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186388240);
  }

  self->super._pid = pid;
  self->super._versionedPID = -1;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setVersionedPID:(int64_t)d
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->super._versionedPID != d)
  {
    if (d == -1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"versionedPID != ((BSVersionedPID) -1)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v15 = v7;
        v16 = 2114;
        v17 = v9;
        v18 = 2048;
        selfCopy2 = self;
        v20 = 2114;
        v21 = @"BKSHIDEventDeferringResolution.m";
        v22 = 1024;
        v23 = 273;
        v24 = 2114;
        v25 = v6;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863883B8);
    }

    if (!d)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"versionedPID != 0"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v15 = v11;
        v16 = 2114;
        v17 = v13;
        v18 = 2048;
        selfCopy2 = self;
        v20 = 2114;
        v21 = @"BKSHIDEventDeferringResolution.m";
        v22 = 1024;
        v23 = 274;
        v24 = 2114;
        v25 = v10;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863884B0);
    }

    self->super._versionedPID = d;
    self->super._pid = d;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setEnvironment:(id)environment
{
  v29 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"environment != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventDeferringResolution.m";
      v25 = 1024;
      v26 = 264;
      v27 = 2114;
      v28 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186388658);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    environmentCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected BKSHIDEventDeferringEnvironment got %@", environmentCopy];;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventDeferringResolution.m";
      v25 = 1024;
      v26 = 265;
      v27 = 2114;
      v28 = environmentCopy;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [environmentCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638874CLL);
  }

  v5 = [environmentCopy copy];
  environment = self->super._environment;
  self->super._environment = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDisplay:(id)display
{
  v29 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (!displayCopy)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"display != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v18 = v9;
      v19 = 2114;
      v20 = v11;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventDeferringResolution.m";
      v25 = 1024;
      v26 = 256;
      v27 = 2114;
      v28 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863888F4);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    displayCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected BKSHIDEventDisplay got %@", displayCopy];;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2114;
      v24 = @"BKSHIDEventDeferringResolution.m";
      v25 = 1024;
      v26 = 257;
      v27 = 2114;
      v28 = displayCopy;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [displayCopy UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863889E8);
  }

  v5 = [displayCopy copy];
  display = self->super._display;
  self->super._display = v5;

  v7 = *MEMORY[0x1E69E9840];
}

@end