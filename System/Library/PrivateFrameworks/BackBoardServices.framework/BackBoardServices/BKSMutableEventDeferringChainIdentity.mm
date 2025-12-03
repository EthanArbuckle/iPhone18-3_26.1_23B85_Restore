@interface BKSMutableEventDeferringChainIdentity
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplay:(id)display;
- (void)setEnvironment:(id)environment;
@end

@implementation BKSMutableEventDeferringChainIdentity

- (void)setEnvironment:(id)environment
{
  v37 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (!environmentCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"environment", v11];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSEventDeferringChainIdentity.m";
      v33 = 1024;
      v34 = 221;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AC504);
  }

  v6 = environmentCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringEnvironment *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"environment", v18, v20];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSEventDeferringChainIdentity.m";
      v33 = 1024;
      v34 = 221;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AC640);
  }

  environment = self->super._environment;
  self->super._environment = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDisplay:(id)display
{
  v37 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (!displayCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v11];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSEventDeferringChainIdentity.m";
      v33 = 1024;
      v34 = 215;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AC808);
  }

  v6 = displayCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDisplay *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v18, v20];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSEventDeferringChainIdentity.m";
      v33 = 1024;
      v34 = 215;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AC944);
  }

  display = self->super._display;
  self->super._display = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSEventDeferringChainIdentity alloc];

  return [(BKSEventDeferringChainIdentity *)&v4->super.isa _initWithCopyOf:?];
}

@end