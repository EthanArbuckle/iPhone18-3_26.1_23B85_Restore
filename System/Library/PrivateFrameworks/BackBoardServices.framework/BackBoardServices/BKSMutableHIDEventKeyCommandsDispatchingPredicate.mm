@interface BKSMutableHIDEventKeyCommandsDispatchingPredicate
- (BKSMutableHIDEventKeyCommandsDispatchingPredicate)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplays:(id)displays;
- (void)setSenderDescriptors:(id)descriptors;
@end

@implementation BKSMutableHIDEventKeyCommandsDispatchingPredicate

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventKeyCommandsDispatchingPredicate allocWithZone:zone];
  senderDescriptors = self->super._senderDescriptors;

  return [(BKSHIDEventKeyCommandsDispatchingPredicate *)v4 _initWithSenderDescriptors:senderDescriptors];
}

- (void)setSenderDescriptors:(id)descriptors
{
  v48 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (descriptorsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = MEMORY[0x1E696AEC0];
      classForCoder = [descriptorsCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v24 = NSStringFromClass(classForCoder);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"senderDescriptors", v24, v26];

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
        selfCopy2 = self;
        v42 = 2114;
        v43 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v44 = 1024;
        v45 = 176;
        v46 = 2114;
        v47 = v27;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863955D0);
    }

    v6 = [MEMORY[0x1E695DFA8] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = descriptorsCopy;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set contains non-BKSHIDEventSenderDescriptor elements : %@", v7];
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
              selfCopy2 = self;
              v42 = 2114;
              v43 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
              v44 = 1024;
              v45 = 180;
              v46 = 2114;
              v47 = v18;
              _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v18 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x186395494);
          }

          v13 = [v12 copy];
          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    senderDescriptors = self->super._senderDescriptors;
    self->super._senderDescriptors = v14;
  }

  else
  {
    v16 = self->super._senderDescriptors;
    self->super._senderDescriptors = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setDisplays:(id)displays
{
  v33 = *MEMORY[0x1E69E9840];
  displaysCopy = displays;
  if (displaysCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [displaysCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"displays", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v22 = v13;
        v23 = 2114;
        v24 = v15;
        v25 = 2048;
        selfCopy2 = self;
        v27 = 2114;
        v28 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v29 = 1024;
        v30 = 160;
        v31 = 2114;
        v32 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863957F8);
    }

    if ([displaysCopy bs_containsObjectPassingTest:&__block_literal_global_119])
    {
      displaysCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"displays contains non-BKSHIDEventDisplay elements : %@", displaysCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
        v25 = 2048;
        selfCopy2 = self;
        v27 = 2114;
        v28 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v29 = 1024;
        v30 = 164;
        v31 = 2114;
        v32 = displaysCopy;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [displaysCopy UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863958ECLL);
    }
  }

  v5 = [displaysCopy bs_map:&__block_literal_global_126];
  [(BKSMutableHIDEventKeyCommandsDispatchingPredicate *)self setSenderDescriptors:v5];

  v6 = *MEMORY[0x1E69E9840];
}

BKSMutableHIDEventSenderDescriptor *__65__BKSMutableHIDEventKeyCommandsDispatchingPredicate_setDisplays___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  [(BKSMutableHIDEventSenderDescriptor *)v3 setAssociatedDisplay:v2];

  return v3;
}

BOOL __65__BKSMutableHIDEventKeyCommandsDispatchingPredicate_setDisplays___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BKSMutableHIDEventKeyCommandsDispatchingPredicate)init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSMutableHIDEventKeyCommandsDispatchingPredicate cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
      v21 = 1024;
      v22 = 153;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186395B28);
  }

  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self _initWithSenderDescriptors:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end