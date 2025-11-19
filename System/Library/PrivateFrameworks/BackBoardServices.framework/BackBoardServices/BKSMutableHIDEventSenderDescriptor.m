@interface BKSMutableHIDEventSenderDescriptor
+ (id)new;
- (BKSMutableHIDEventSenderDescriptor)init;
- (void)setAssociatedDisplay:(id)a3;
- (void)setPrimaryPage:(unsigned int)a3 primaryUsage:(unsigned int)a4;
@end

@implementation BKSMutableHIDEventSenderDescriptor

- (BKSMutableHIDEventSenderDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSMutableHIDEventSenderDescriptor;
  return [(BKSHIDEventSenderDescriptor *)&v3 _initWithHardwareType:0 associatedDisplay:0 authenticated:0 primaryPage:0 primaryUsage:0 senderID:0];
}

- (void)setPrimaryPage:(unsigned int)a3 primaryUsage:(unsigned int)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3 && a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"primaryPage != 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"BKSHIDEventSenderDescriptor.m";
      v19 = 1024;
      v20 = 440;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B31ACLL);
  }

  self->super._primaryPage = a3;
  self->super._primaryUsage = a4;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setAssociatedDisplay:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [(BKSHIDEventDisplay *)v5 classForCoder];
      if (!v9)
      {
        v9 = objc_opt_class();
      }

      v10 = NSStringFromClass(v9);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"associatedDisplay", v10, v12];

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
        v24 = @"BKSHIDEventSenderDescriptor.m";
        v25 = 1024;
        v26 = 432;
        v27 = 2114;
        v28 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B3398);
    }
  }

  associatedDisplay = self->super._associatedDisplay;
  self->super._associatedDisplay = v5;
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)new
{
  v2 = [a1 alloc];

  return [v2 _initWithHardwareType:0 associatedDisplay:0 authenticated:0 primaryPage:0 primaryUsage:0 senderID:0];
}

@end