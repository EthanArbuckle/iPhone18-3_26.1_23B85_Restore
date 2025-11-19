@interface BKSMutableHIDEventDeferringConstraint
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation BKSMutableHIDEventDeferringConstraint

- (void)setIdentifier:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!v24)
  {
    v10 = NSStringFromClass(v6);
    v11 = [v5 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v10];

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
      v32 = @"BKSHIDEventDeferringConstraint.m";
      v33 = 1024;
      v34 = 159;
      v35 = 2114;
      v36 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635D528);
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
    v20 = [v15 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v17, v19];

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
      v32 = @"BKSHIDEventDeferringConstraint.m";
      v33 = 1024;
      v34 = 159;
      v35 = 2114;
      v36 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635D660);
  }

  v7 = [v24 copy];
  identifier = self->super._identifier;
  self->super._identifier = v7;

  v9 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSHIDEventDeferringConstraint alloc];

  return [(BKSHIDEventDeferringConstraint *)v4 _initWithCopyOf:?];
}

@end