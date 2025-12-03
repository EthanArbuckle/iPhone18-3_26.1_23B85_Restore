@interface BKSMutableTouchHitTestFilterParameters
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContextIDs:(id)ds;
- (void)setSenderDescriptors:(id)descriptors;
@end

@implementation BKSMutableTouchHitTestFilterParameters

- (void)setContextIDs:(id)ds
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (!dsCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"contextIDs", v10];

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
      v32 = @"BKSTouchHitTestFilterParameters.m";
      v33 = 1024;
      v34 = 185;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F388);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [dsCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"contextIDs", v17, v19];

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
      v32 = @"BKSTouchHitTestFilterParameters.m";
      v33 = 1024;
      v34 = 185;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F4C4);
  }

  v5 = [dsCopy copy];
  contextIDs = self->super._contextIDs;
  self->super._contextIDs = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setSenderDescriptors:(id)descriptors
{
  v37 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (!descriptorsCopy)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"senderDescriptors", v10];

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
      v32 = @"BKSTouchHitTestFilterParameters.m";
      v33 = 1024;
      v34 = 179;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F6A0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    classForCoder = [descriptorsCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v17 = NSStringFromClass(classForCoder);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"senderDescriptors", v17, v19];

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
      v32 = @"BKSTouchHitTestFilterParameters.m";
      v33 = 1024;
      v34 = 179;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F7DCLL);
  }

  v5 = [descriptorsCopy copy];
  senderDescriptors = self->super._senderDescriptors;
  self->super._senderDescriptors = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSTouchHitTestFilterParameters alloc];

  return [(BKSTouchHitTestFilterParameters *)v4 _initWithCopyOf:?];
}

@end