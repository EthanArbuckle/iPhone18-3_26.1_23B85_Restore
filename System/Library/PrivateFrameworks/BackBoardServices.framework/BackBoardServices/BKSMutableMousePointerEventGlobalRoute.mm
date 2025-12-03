@interface BKSMutableMousePointerEventGlobalRoute
- (void)setOptions:(id)options;
@end

@implementation BKSMutableMousePointerEventGlobalRoute

- (void)setOptions:(id)options
{
  v29 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (optionsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      classForCoder = [(BKSMousePointerGlobalContextOptions *)optionsCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v10 = NSStringFromClass(classForCoder);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v8 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"options", v10, v12];

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
        v24 = @"BKSMousePointerEventGlobalRoute.m";
        v25 = 1024;
        v26 = 160;
        v27 = 2114;
        v28 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639359CLL);
    }
  }

  options = self->super._options;
  self->super._options = optionsCopy;
  v7 = *MEMORY[0x1E69E9840];
}

@end