@interface BKSMutableHIDKeyboardDeviceProperties
- (void)setExclusivityIdentifier:(id)identifier;
- (void)setLanguage:(id)language;
- (void)setLayout:(id)layout;
- (void)setPlatformInputModeConfiguration:(id)configuration;
- (void)setTransport:(id)transport;
@end

@implementation BKSMutableHIDKeyboardDeviceProperties

- (void)setPlatformInputModeConfiguration:(id)configuration
{
  v30 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [configurationCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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

  v5 = [configurationCopy copy];
  platformInputModeConfiguration = self->super._platformInputModeConfiguration;
  self->super._platformInputModeConfiguration = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setExclusivityIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [identifierCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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

  v5 = [identifierCopy copy];
  exclusivityIdentifier = self->super._exclusivityIdentifier;
  self->super._exclusivityIdentifier = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLayout:(id)layout
{
  v30 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  if (layoutCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [layoutCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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

  v5 = [layoutCopy copy];
  layout = self->super._layout;
  self->super._layout = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLanguage:(id)language
{
  v30 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (languageCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [languageCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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

  v5 = [languageCopy copy];
  language = self->super._language;
  self->super._language = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setTransport:(id)transport
{
  v30 = *MEMORY[0x1E69E9840];
  transportCopy = transport;
  if (transportCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [transportCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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

  v5 = [transportCopy copy];
  transport = self->super._transport;
  self->super._transport = v5;

  v7 = *MEMORY[0x1E69E9840];
}

@end