@interface BKSMutableHIDEventSimpleProvenance
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSignature:(id)a3;
@end

@implementation BKSMutableHIDEventSimpleProvenance

- (void)setSignature:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"signature", v11];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v26 = v13;
      v27 = 2114;
      v28 = v15;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventSimpleProvenance.m";
      v33 = 1024;
      v34 = 265;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636E13CLL);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(NSData *)v6 classForCoder];
    if (!v17)
    {
      v17 = objc_opt_class();
    }

    v18 = NSStringFromClass(v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"signature", v18, v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v26 = v22;
      v27 = 2114;
      v28 = v24;
      v29 = 2048;
      v30 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventSimpleProvenance.m";
      v33 = 1024;
      v34 = 265;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636E278);
  }

  signature = self->super._signature;
  self->super._signature = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSHIDEventSimpleProvenance alloc];

  return [(BKSHIDEventSimpleProvenance *)&v4->super.isa _initWithCopyOf:?];
}

@end