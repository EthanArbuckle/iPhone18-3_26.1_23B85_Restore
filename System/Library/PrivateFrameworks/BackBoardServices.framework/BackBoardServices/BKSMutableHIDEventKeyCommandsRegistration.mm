@interface BKSMutableHIDEventKeyCommandsRegistration
- (BKSMutableHIDEventKeyCommandsRegistration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDeferringEnvironment:(id)environment;
- (void)setDeferringToken:(id)token;
- (void)setKeyCommands:(id)commands;
@end

@implementation BKSMutableHIDEventKeyCommandsRegistration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventKeyCommandsRegistration allocWithZone:zone];
  environment = self->super._environment;
  token = self->super._token;
  keyCommands = self->super._keyCommands;

  return [(BKSHIDEventKeyCommandsRegistration *)v4 _initWithEnvironment:environment token:token keyCommands:keyCommands];
}

- (void)setKeyCommands:(id)commands
{
  v66 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  if (!commandsCopy)
  {
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v33 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"keyCommands", v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v55 = v37;
      v56 = 2114;
      v57 = v39;
      v58 = 2048;
      selfCopy4 = self;
      v60 = 2114;
      v61 = @"BKSHIDEventKeyCommandsRegistration.m";
      v62 = 1024;
      v63 = 181;
      v64 = 2114;
      v65 = v36;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638E62CLL);
  }

  v6 = commandsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v42 = NSStringFromClass(classForCoder);
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = [v40 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"keyCommands", v42, v44];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138544642;
      v55 = v46;
      v56 = 2114;
      v57 = v48;
      v58 = 2048;
      selfCopy4 = self;
      v60 = 2114;
      v61 = @"BKSHIDEventKeyCommandsRegistration.m";
      v62 = 1024;
      v63 = 181;
      v64 = 2114;
      v65 = v45;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638E768);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      v11 = 0;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        if (!v12)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = [v17 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"keyCommand", v19];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v21 = NSStringFromSelector(a2);
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            *buf = 138544642;
            v55 = v21;
            v56 = 2114;
            v57 = v23;
            v58 = 2048;
            selfCopy4 = self;
            v60 = 2114;
            v61 = @"BKSHIDEventKeyCommandsRegistration.m";
            v62 = 1024;
            v63 = 183;
            v64 = 2114;
            v65 = v20;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v20 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x18638E3D8);
        }

        v13 = v12;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v13 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v26 = NSStringFromClass(classForCoder2);
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          v29 = [v24 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"keyCommand", v26, v28];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = NSStringFromSelector(a2);
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            *buf = 138544642;
            v55 = v30;
            v56 = 2114;
            v57 = v32;
            v58 = 2048;
            selfCopy4 = self;
            v60 = 2114;
            v61 = @"BKSHIDEventKeyCommandsRegistration.m";
            v62 = 1024;
            v63 = 183;
            v64 = 2114;
            v65 = v29;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v29 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x18638E514);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v9);
  }

  v14 = [v7 copy];
  keyCommands = self->super._keyCommands;
  self->super._keyCommands = v14;

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDeferringToken:(id)token
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
        v25 = @"BKSHIDEventKeyCommandsRegistration.m";
        v26 = 1024;
        v27 = 175;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638E968);
    }
  }

  v5 = [tokenCopy copy];
  token = self->super._token;
  self->super._token = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDeferringEnvironment:(id)environment
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
      v32 = @"BKSHIDEventKeyCommandsRegistration.m";
      v33 = 1024;
      v34 = 169;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638EB44);
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
      v32 = @"BKSHIDEventKeyCommandsRegistration.m";
      v33 = 1024;
      v34 = 169;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638EC80);
  }

  v5 = [environmentCopy copy];
  environment = self->super._environment;
  self->super._environment = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (BKSMutableHIDEventKeyCommandsRegistration)init
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMutableHIDEventKeyCommandsRegistration cannot be subclassed"];
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
      v21 = @"BKSHIDEventKeyCommandsRegistration.m";
      v22 = 1024;
      v23 = 163;
      v24 = 2114;
      v25 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638EE34);
  }

  v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v6 = [MEMORY[0x1E695DFD8] set];
  v7 = [(BKSHIDEventKeyCommandsRegistration *)self _initWithEnvironment:v5 token:0 keyCommands:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end