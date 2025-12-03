@interface BKSMutableHIDEventDeferringConstraintAssertion
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBasis:(id)basis;
- (void)setConstraint:(id)constraint;
- (void)setPathIdentifier:(id)identifier;
- (void)setSelectionTarget:(id)target;
@end

@implementation BKSMutableHIDEventDeferringConstraintAssertion

- (void)setBasis:(id)basis
{
  v37 = *MEMORY[0x1E69E9840];
  basisCopy = basis;
  if (!basisCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"basis", v11];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringConstraintAssertion.m";
      v33 = 1024;
      v34 = 235;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186372820);
  }

  v6 = basisCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringChangeBasis *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"basis", v18, v20];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringConstraintAssertion.m";
      v33 = 1024;
      v34 = 235;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637295CLL);
  }

  basis = self->super._basis;
  self->super._basis = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setConstraint:(id)constraint
{
  v37 = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  if (!constraintCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"constraint", v11];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringConstraintAssertion.m";
      v33 = 1024;
      v34 = 229;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186372B24);
  }

  v6 = constraintCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringConstraint *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"constraint", v18, v20];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringConstraintAssertion.m";
      v33 = 1024;
      v34 = 229;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186372C60);
  }

  constraint = self->super._constraint;
  self->super._constraint = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSelectionTarget:(id)target
{
  v37 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  if (!targetCopy)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"selectionTarget", v11];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringConstraintAssertion.m";
      v33 = 1024;
      v34 = 223;
      v35 = 2114;
      v36 = v12;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186372E28);
  }

  v6 = targetCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    classForCoder = [(BKSHIDEventDeferringSelectionTarget *)v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v18 = NSStringFromClass(classForCoder);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"selectionTarget", v18, v20];

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
      selfCopy2 = self;
      v31 = 2114;
      v32 = @"BKSHIDEventDeferringConstraintAssertion.m";
      v33 = 1024;
      v34 = 223;
      v35 = 2114;
      v36 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186372F64);
  }

  selectionTarget = self->super._selectionTarget;
  self->super._selectionTarget = v6;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPathIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v6 = +[BKSHIDEventDeferringSelectionPathIdentifier everySelectionPath];

    if (v6 != identifierCopy)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be a valid path or symbol"];
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
        v20 = @"BKSHIDEventDeferringConstraintAssertion.m";
        v21 = 1024;
        v22 = 217;
        v23 = 2114;
        v24 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186373118);
    }
  }

  pathIdentifier = self->super._pathIdentifier;
  self->super._pathIdentifier = identifierCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSHIDEventDeferringConstraintAssertion alloc];

  return [(BKSHIDEventDeferringConstraintAssertion *)&v4->super.isa _initWithCopyOf:?];
}

@end