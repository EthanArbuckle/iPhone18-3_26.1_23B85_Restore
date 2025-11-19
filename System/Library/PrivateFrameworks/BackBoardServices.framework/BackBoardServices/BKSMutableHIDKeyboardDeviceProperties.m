@interface BKSMutableHIDKeyboardDeviceProperties
- (void)setExclusivityIdentifier:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setLayout:(id)a3;
- (void)setPlatformInputModeConfiguration:(id)a3;
- (void)setTransport:(id)a3;
@end

@implementation BKSMutableHIDKeyboardDeviceProperties

- (void)setPlatformInputModeConfiguration:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v17 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"platformInputModeConfiguration", v10, v12];

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
        v23 = self;
        v24 = 2114;
        v25 = @"BKSHIDKeyboardDeviceProperties.m";
        v26 = 1024;
        v27 = 342;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639EA90);
    }
  }

  v5 = [v17 copy];
  platformInputModeConfiguration = self->super._platformInputModeConfiguration;
  self->super._platformInputModeConfiguration = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setExclusivityIdentifier:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v17 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"exclusivityIdentifier", v10, v12];

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
        v23 = self;
        v24 = 2114;
        v25 = @"BKSHIDKeyboardDeviceProperties.m";
        v26 = 1024;
        v27 = 336;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639EC8CLL);
    }
  }

  v5 = [v17 copy];
  exclusivityIdentifier = self->super._exclusivityIdentifier;
  self->super._exclusivityIdentifier = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLayout:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v17 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"layout", v10, v12];

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
        v23 = self;
        v24 = 2114;
        v25 = @"BKSHIDKeyboardDeviceProperties.m";
        v26 = 1024;
        v27 = 330;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639EE88);
    }
  }

  v5 = [v17 copy];
  layout = self->super._layout;
  self->super._layout = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLanguage:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v17 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"language", v10, v12];

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
        v23 = self;
        v24 = 2114;
        v25 = @"BKSHIDKeyboardDeviceProperties.m";
        v26 = 1024;
        v27 = 324;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639F084);
    }
  }

  v5 = [v17 copy];
  language = self->super._language;
  self->super._language = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setTransport:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v17 = a3;
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v17 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"transport", v10, v12];

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
        v23 = self;
        v24 = 2114;
        v25 = @"BKSHIDKeyboardDeviceProperties.m";
        v26 = 1024;
        v27 = 318;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639F280);
    }
  }

  v5 = [v17 copy];
  transport = self->super._transport;
  self->super._transport = v5;

  v7 = *MEMORY[0x1E69E9840];
}

@end