@interface BKSMutableTouchAuthenticationSpecification
- (void)setDisplays:(id)displays;
@end

@implementation BKSMutableTouchAuthenticationSpecification

- (void)setDisplays:(id)displays
{
  v62 = *MEMORY[0x1E69E9840];
  displaysCopy = displays;
  if (displaysCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = MEMORY[0x1E696AEC0];
      classForCoder = [displaysCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v38 = NSStringFromClass(classForCoder);
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v36 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"displays", v38, v40];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector(a2);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138544642;
        v51 = v42;
        v52 = 2114;
        v53 = v44;
        v54 = 2048;
        selfCopy3 = self;
        v56 = 2114;
        v57 = @"BKSTouchAuthenticationSpecification.m";
        v58 = 1024;
        v59 = 298;
        v60 = 2114;
        v61 = v41;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v41 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186382748);
    }
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = displaysCopy;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      v10 = 0;
      do
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * v10);
        if (!v11)
        {
          v20 = MEMORY[0x1E696AEC0];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = [v20 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"display", v22];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v24 = NSStringFromSelector(a2);
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            *buf = 138544642;
            v51 = v24;
            v52 = 2114;
            v53 = v26;
            v54 = 2048;
            selfCopy3 = self;
            v56 = 2114;
            v57 = @"BKSTouchAuthenticationSpecification.m";
            v58 = 1024;
            v59 = 301;
            v60 = 2114;
            v61 = v23;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v23 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863824D0);
        }

        v12 = v11;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v12 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v29 = NSStringFromClass(classForCoder2);
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          v32 = [v27 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"display", v29, v31];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v33 = NSStringFromSelector(a2);
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138544642;
            v51 = v33;
            v52 = 2114;
            v53 = v35;
            v54 = 2048;
            selfCopy3 = self;
            v56 = 2114;
            v57 = @"BKSTouchAuthenticationSpecification.m";
            v58 = 1024;
            v59 = 301;
            v60 = 2114;
            v61 = v32;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v32 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x18638260CLL);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v8);
  }

  v13 = objc_opt_class();
  v14 = v6;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v16 copy];
  displays = self->super._displays;
  self->super._displays = v17;

  v19 = *MEMORY[0x1E69E9840];
}

@end