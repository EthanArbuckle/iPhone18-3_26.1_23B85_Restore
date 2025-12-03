@interface BKSMutableHIDEventSenderDescriptor
+ (id)new;
- (BKSMutableHIDEventSenderDescriptor)init;
- (void)setAssociatedDisplay:(id)display;
- (void)setPrimaryPage:(unsigned int)page primaryUsage:(unsigned int)usage;
@end

@implementation BKSMutableHIDEventSenderDescriptor

- (BKSMutableHIDEventSenderDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSMutableHIDEventSenderDescriptor;
  return [(BKSHIDEventSenderDescriptor *)&v3 _initWithHardwareType:0 associatedDisplay:0 authenticated:0 primaryPage:0 primaryUsage:0 senderID:0];
}

- (void)setPrimaryPage:(unsigned int)page primaryUsage:(unsigned int)usage
{
  v23 = *MEMORY[0x1E69E9840];
  if (!page && usage)
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
      selfCopy = self;
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

  self->super._primaryPage = page;
  self->super._primaryUsage = usage;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setAssociatedDisplay:(id)display
{
  v29 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [(BKSHIDEventDisplay *)displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
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
        selfCopy = self;
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
  self->super._associatedDisplay = displayCopy;
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)new
{
  v2 = [self alloc];

  return [v2 _initWithHardwareType:0 associatedDisplay:0 authenticated:0 primaryPage:0 primaryUsage:0 senderID:0];
}

@end