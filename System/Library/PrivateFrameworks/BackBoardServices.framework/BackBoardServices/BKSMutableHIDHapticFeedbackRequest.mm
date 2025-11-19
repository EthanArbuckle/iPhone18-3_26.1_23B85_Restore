@interface BKSMutableHIDHapticFeedbackRequest
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPattern:(id)a3;
- (void)setPowerSourceID:(id)a3;
@end

@implementation BKSMutableHIDHapticFeedbackRequest

- (void)setPowerSourceID:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(NSNumber *)v5 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"powerSourceID", v10, v12];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v18 = v14;
        v19 = 2114;
        v20 = v16;
        v21 = 2048;
        v22 = self;
        v23 = 2114;
        v24 = @"BKSHIDHapticFeedbackRequest.m";
        v25 = 1024;
        v26 = 257;
        v27 = 2114;
        v28 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863AED3CLL);
    }
  }

  powerSourceID = self->super._powerSourceID;
  self->super._powerSourceID = v5;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPattern:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!v24)
  {
    v10 = NSStringFromClass(v6);
    v11 = [v5 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"pattern", v10];

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
      v30 = self;
      v31 = 2114;
      v32 = @"BKSHIDHapticFeedbackRequest.m";
      v33 = 1024;
      v34 = 241;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AEF20);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [v24 classForCoder];
    if (!v16)
    {
      v16 = objc_opt_class();
    }

    v17 = NSStringFromClass(v16);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"pattern", v17, v19];

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
      v30 = self;
      v31 = 2114;
      v32 = @"BKSHIDHapticFeedbackRequest.m";
      v33 = 1024;
      v34 = 241;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863AF058);
  }

  v7 = [v24 copy];
  pattern = self->super._pattern;
  self->super._pattern = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSHIDHapticFeedbackRequest alloc];

  return [(BKSHIDHapticFeedbackRequest *)&v4->super.isa _initWithCopyOf:?];
}

@end