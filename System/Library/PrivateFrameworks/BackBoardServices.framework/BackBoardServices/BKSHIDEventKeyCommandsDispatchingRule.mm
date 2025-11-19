@interface BKSHIDEventKeyCommandsDispatchingRule
+ (id)ruleForDispatchingKeyCommandsMatchingPredicate:(id)a3 toTargets:(id)a4;
- (BKSHIDEventKeyCommandsDispatchingRule)init;
- (BKSHIDEventKeyCommandsDispatchingRule)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithPredicate:(id)a3 targets:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKSHIDEventKeyCommandsDispatchingRule

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKSHIDEventKeyCommandsDispatchingRule *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__BKSHIDEventKeyCommandsDispatchingRule_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E6F47C78;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSHIDEventKeyCommandsDispatchingRule *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_targets withName:@"targets" skipIfNil:0];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BKSHIDEventKeyCommandsDispatchingRule *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (predicate = self->_predicate, v7 = v4->_predicate, BSEqualObjects()))
    {
      targets = self->_targets;
      v9 = v4->_targets;
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BKSHIDEventKeyCommandsDispatchingRule)initWithCoder:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v13 forKey:@"targets"];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![v9 bs_containsObjectPassingTest:&__block_literal_global_29])
      {
        self = [(BKSHIDEventKeyCommandsDispatchingRule *)self _initWithPredicate:v8 targets:v9];
        v22 = self;
        goto LABEL_10;
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A250];
      v29 = *MEMORY[0x1E696A588];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsDispatchingRule: targets contains non-BKSHIDEventDispatchingTarget elements : %@", v9];
      v30[0] = v16;
      v17 = MEMORY[0x1E695DF20];
      v18 = v30;
      v19 = &v29;
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A250];
      v27 = *MEMORY[0x1E696A588];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsDispatchingRule: invalid predicate or set of targets : predicate=%@ targets=%@", v8, v9];
      v28 = v16;
      v17 = MEMORY[0x1E695DF20];
      v18 = &v28;
      v19 = &v27;
    }

    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v21 = [v14 errorWithDomain:v15 code:4866 userInfo:v20];
    [v4 failWithError:v21];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A250];
    v25 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsDispatchingRule: subclasses are not allowed : %@", objc_opt_class()];
    v26 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v10 = [v6 errorWithDomain:v7 code:4866 userInfo:v9];
    [v4 failWithError:v10];
  }

  v22 = 0;
LABEL_10:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

BOOL __55__BKSHIDEventKeyCommandsDispatchingRule_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)encodeWithCoder:(id)a3
{
  predicate = self->_predicate;
  v5 = a3;
  [v5 encodeObject:predicate forKey:@"predicate"];
  [v5 encodeObject:self->_targets forKey:@"targets"];
}

- (id)_initWithPredicate:(id)a3 targets:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventKeyCommandsDispatchingRule cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v30 = 1024;
      v31 = 32;
      v32 = 2114;
      v33 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186378F44);
  }

  v21.receiver = self;
  v21.super_class = BKSHIDEventKeyCommandsDispatchingRule;
  v10 = [(BKSHIDEventKeyCommandsDispatchingRule *)&v21 init];
  if (v10)
  {
    v11 = [v7 copy];
    predicate = v10->_predicate;
    v10->_predicate = v11;

    v13 = [v8 copy];
    targets = v10->_targets;
    v10->_targets = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BKSHIDEventKeyCommandsDispatchingRule)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventKeyCommandsDispatchingRule"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)ruleForDispatchingKeyCommandsMatchingPredicate:(id)a3 toTargets:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (!v9)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"predicate", v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v53 = v20;
      v54 = 2114;
      v55 = v22;
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v60 = 1024;
      v61 = 43;
      v62 = 2114;
      v63 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186379290);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = [v10 classForCoder];
    if (!v24)
    {
      v24 = objc_opt_class();
    }

    v25 = NSStringFromClass(v24);
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v23 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"predicate", v25, v27];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v53 = v29;
      v54 = 2114;
      v55 = v31;
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v60 = 1024;
      v61 = 43;
      v62 = 2114;
      v63 = v28;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863793CCLL);
  }

  v11 = v8;
  if (!v11)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = [v32 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targets", v34];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138544642;
      v53 = v36;
      v54 = 2114;
      v55 = v38;
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v60 = 1024;
      v61 = 44;
      v62 = 2114;
      v63 = v35;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v35 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863794E4);
  }

  v12 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = [v12 classForCoder];
    if (!v40)
    {
      v40 = objc_opt_class();
    }

    v41 = NSStringFromClass(v40);
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = [v39 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targets", v41, v43];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v45 = NSStringFromSelector(a2);
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      *buf = 138544642;
      v53 = v45;
      v54 = 2114;
      v55 = v47;
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v60 = 1024;
      v61 = 44;
      v62 = 2114;
      v63 = v44;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v44 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186379620);
  }

  if ([v12 bs_containsObjectPassingTest:&__block_literal_global_4804])
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"targets contains non-BKSHIDEventDispatchingTarget elements : %@", v12];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = NSStringFromSelector(a2);
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138544642;
      v53 = v49;
      v54 = 2114;
      v55 = v51;
      v56 = 2048;
      v57 = a1;
      v58 = 2114;
      v59 = @"BKSHIDEventKeyCommandsDispatchingRule.m";
      v60 = 1024;
      v61 = 47;
      v62 = 2114;
      v63 = v48;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186379710);
  }

  v13 = [[BKSHIDEventKeyCommandsDispatchingRule alloc] _initWithPredicate:v10 targets:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL __98__BKSHIDEventKeyCommandsDispatchingRule_ruleForDispatchingKeyCommandsMatchingPredicate_toTargets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end