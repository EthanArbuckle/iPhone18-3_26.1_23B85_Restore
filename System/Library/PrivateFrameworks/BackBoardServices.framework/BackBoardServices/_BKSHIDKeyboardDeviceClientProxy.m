@interface _BKSHIDKeyboardDeviceClientProxy
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (_BKSHIDKeyboardDeviceClientProxy)initWithDevice:(id)a3 lifetimeAssertion:(id)a4;
- (void)dealloc;
@end

@implementation _BKSHIDKeyboardDeviceClientProxy

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(BKSHIDKeyboardDevice *)self->_device isEqual:v8[1]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_lifetimeAssertion invalidate];
  v3.receiver = self;
  v3.super_class = _BKSHIDKeyboardDeviceClientProxy;
  [(_BKSHIDKeyboardDeviceClientProxy *)&v3 dealloc];
}

- (_BKSHIDKeyboardDeviceClientProxy)initWithDevice:(id)a3 lifetimeAssertion:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v35.receiver = self;
  v35.super_class = _BKSHIDKeyboardDeviceClientProxy;
  v10 = [(_BKSHIDKeyboardDeviceClientProxy *)&v35 init];
  if (v10)
  {
    v11 = v8;
    if (!v11)
    {
      v15 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"device", v17];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v37 = v19;
        v38 = 2114;
        v39 = v21;
        v40 = 2048;
        v41 = v10;
        v42 = 2114;
        v43 = @"BKSHIDKeyboardService.m";
        v44 = 1024;
        v45 = 51;
        v46 = 2114;
        v47 = v18;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863543C4);
    }

    v12 = v11;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [v12 classForCoder];
      if (!v23)
      {
        v23 = objc_opt_class();
      }

      v24 = NSStringFromClass(v23);
      objc_opt_class();
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"device", v24, v26];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        v37 = v28;
        v38 = 2114;
        v39 = v30;
        v40 = 2048;
        v41 = v10;
        v42 = 2114;
        v43 = @"BKSHIDKeyboardService.m";
        v44 = 1024;
        v45 = 51;
        v46 = 2114;
        v47 = v27;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186354504);
    }

    if (!v9)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"assertion != ((void *)0)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = NSStringFromSelector(a2);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138544642;
        v37 = v32;
        v38 = 2114;
        v39 = v34;
        v40 = 2048;
        v41 = v10;
        v42 = 2114;
        v43 = @"BKSHIDKeyboardService.m";
        v44 = 1024;
        v45 = 52;
        v46 = 2114;
        v47 = v31;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863545FCLL);
    }

    objc_storeStrong(&v10->_device, a3);
    objc_storeStrong(&v10->_lifetimeAssertion, a4);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

@end