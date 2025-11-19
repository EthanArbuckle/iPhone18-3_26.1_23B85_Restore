@interface BKSMutableHIDUISensorMode
- (BKSMutableHIDUISensorMode)initWithReason:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setMultitouchSettingKey:(id)a3 enabled:(BOOL)a4;
- (void)setMultitouchHostStateKeys:(id)a3;
- (void)setProximityHostStateKeys:(id)a3;
- (void)setReason:(id)a3;
@end

@implementation BKSMutableHIDUISensorMode

- (id)copy
{
  v3 = [BKSHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v3 _initCopyFrom:self];
}

- (void)_setMultitouchSettingKey:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  multitouchHostStateKeys = self->super._multitouchHostStateKeys;
  if (v4)
  {
    if (multitouchHostStateKeys)
    {
      [(NSSet *)multitouchHostStateKeys setByAddingObject:v6];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObject:v6];
    }
    v10 = ;
    goto LABEL_10;
  }

  if (multitouchHostStateKeys)
  {
    v11 = v6;
    if ([(NSSet *)multitouchHostStateKeys containsObject:v6])
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

- (void)setProximityHostStateKeys:(id)a3
{
  if (self->super._proximityHostStateKeys != a3)
  {
    v5 = [a3 copy];
    proximityHostStateKeys = self->super._proximityHostStateKeys;
    self->super._proximityHostStateKeys = v5;

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setMultitouchHostStateKeys:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->super._multitouchHostStateKeys != v5)
  {
    v13 = v5;
    if (![(BKSHIDUISensorMode *)self _settingKeysAllowed:v5])
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
        v19 = self;
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

- (void)setReason:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!v24)
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
      v30 = self;
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
    v16 = [v24 classForCoder];
    if (!v16)
    {
      v16 = objc_opt_class();
    }

    v17 = NSStringFromClass(v16);
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
      v30 = self;
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

  v7 = [v24 copy];
  reason = self->super._reason;
  self->super._reason = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v4 _initCopyFrom:self];
}

- (BKSMutableHIDUISensorMode)initWithReason:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKSMutableHIDUISensorMode;
  v5 = [(BKSHIDUISensorMode *)&v8 _init];
  v6 = v5;
  if (v5)
  {
    [(BKSMutableHIDUISensorMode *)v5 setReason:v4];
  }

  return v6;
}

@end