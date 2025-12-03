@interface BKSMutableHIDUISensorMode
- (BKSMutableHIDUISensorMode)initWithReason:(id)reason;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setMultitouchSettingKey:(id)key enabled:(BOOL)enabled;
- (void)setMultitouchHostStateKeys:(id)keys;
- (void)setProximityHostStateKeys:(id)keys;
- (void)setReason:(id)reason;
@end

@implementation BKSMutableHIDUISensorMode

- (id)copy
{
  v3 = [BKSHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v3 _initCopyFrom:self];
}

- (void)_setMultitouchSettingKey:(id)key enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keyCopy = key;
  multitouchHostStateKeys = self->super._multitouchHostStateKeys;
  if (enabledCopy)
  {
    if (multitouchHostStateKeys)
    {
      [(NSSet *)multitouchHostStateKeys setByAddingObject:keyCopy];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObject:keyCopy];
    }
    v10 = ;
    goto LABEL_10;
  }

  if (multitouchHostStateKeys)
  {
    v11 = keyCopy;
    if ([(NSSet *)multitouchHostStateKeys containsObject:keyCopy])
    {
      v8 = [(NSSet *)self->super._multitouchHostStateKeys count];
      v9 = self->super._multitouchHostStateKeys;
      if (v8 == 1)
      {
        v10 = 0;
LABEL_11:
        self->super._multitouchHostStateKeys = v10;

        goto LABEL_12;
      }

      v10 = [(NSSet *)v9 mutableCopy];
      [(NSSet *)v10 removeObject:v11];
LABEL_10:
      v9 = self->super._multitouchHostStateKeys;
      goto LABEL_11;
    }
  }

LABEL_12:

  MEMORY[0x1EEE66BB8]();
}

- (void)setProximityHostStateKeys:(id)keys
{
  if (self->super._proximityHostStateKeys != keys)
  {
    v5 = [keys copy];
    proximityHostStateKeys = self->super._proximityHostStateKeys;
    self->super._proximityHostStateKeys = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMultitouchHostStateKeys:(id)keys
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (self->super._multitouchHostStateKeys != keysCopy)
  {
    v13 = keysCopy;
    if (![(BKSHIDUISensorMode *)self _settingKeysAllowed:keysCopy])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self _settingKeysAllowed:multitouchHostStateKeys]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v15 = v10;
        v16 = 2114;
        v17 = v12;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BKSHIDUISensorMode.m";
        v22 = 1024;
        v23 = 667;
        v24 = 2114;
        v25 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B0280);
    }

    v6 = [(NSSet *)v13 copy];
    multitouchHostStateKeys = self->super._multitouchHostStateKeys;
    self->super._multitouchHostStateKeys = v6;
  }

  v8 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (void)setReason:(id)reason
{
  v37 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!reasonCopy)
  {
    v10 = NSStringFromClass(v6);
    v11 = [v5 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v10];

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
      v32 = @"BKSHIDUISensorMode.m";
      v33 = 1024;
      v34 = 634;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B047CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [reasonCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v17, v19];

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
      v32 = @"BKSHIDUISensorMode.m";
      v33 = 1024;
      v34 = 634;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B05B4);
  }

  v7 = [reasonCopy copy];
  reason = self->super._reason;
  self->super._reason = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v4 _initCopyFrom:self];
}

- (BKSMutableHIDUISensorMode)initWithReason:(id)reason
{
  reasonCopy = reason;
  v8.receiver = self;
  v8.super_class = BKSMutableHIDUISensorMode;
  _init = [(BKSHIDUISensorMode *)&v8 _init];
  v6 = _init;
  if (_init)
  {
    [(BKSMutableHIDUISensorMode *)_init setReason:reasonCopy];
  }

  return v6;
}

@end