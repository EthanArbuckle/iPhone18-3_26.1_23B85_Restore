@interface BKSHIDEventDiscreteDispatchingRule
+ (id)ruleForDispatchingDiscreteEventsMatchingPredicate:(id)predicate toTarget:(id)target;
- (BKSHIDEventDiscreteDispatchingRule)init;
- (BKSHIDEventDiscreteDispatchingRule)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPredicate:(id)predicate target:(id)target;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDiscreteDispatchingRule

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:self->_predicate withName:0];
  [formatterCopy appendRightArrow];
  v5 = [formatterCopy appendObject:self->_target withName:0 skipIfNil:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (predicate = self->_predicate, v7 = equalCopy->_predicate, BSEqualObjects()))
    {
      target = self->_target;
      v9 = equalCopy->_target;
      v10 = BSEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BKSHIDEventDiscreteDispatchingRule)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    if (v12)
    {
      v8 = v12;
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];
      self = [(BKSHIDEventDiscreteDispatchingRule *)self _initWithPredicate:v8 target:v13];

      selfCopy = self;
      goto LABEL_6;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A250];
    v23 = *MEMORY[0x1E696A588];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingRule: invalid predicate : %@", 0];
    v24[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = [v16 errorWithDomain:v17 code:4866 userInfo:v19];
    [coderCopy failWithError:v20];

    v8 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A250];
    v21 = *MEMORY[0x1E696A588];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventDiscreteDispatchingRule: subclasses are not allowed : %@", objc_opt_class(), v21];
    v22 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [v6 errorWithDomain:v7 code:4866 userInfo:v9];
    [coderCopy failWithError:v10];
  }

  selfCopy = 0;
LABEL_6:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  predicate = self->_predicate;
  coderCopy = coder;
  [coderCopy encodeObject:predicate forKey:@"predicate"];
  [coderCopy encodeObject:self->_target forKey:@"target"];
}

- (id)_initWithPredicate:(id)predicate target:(id)target
{
  v44 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  targetCopy = target;
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventDiscreteDispatchingRule cannot be subclassed"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138544642;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      v36 = 2048;
      selfCopy = self;
      v38 = 2114;
      v39 = @"BKSHIDEventDiscreteDispatchingRule.m";
      v40 = 1024;
      v41 = 36;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635C1B0);
  }

  v30.receiver = self;
  v30.super_class = BKSHIDEventDiscreteDispatchingRule;
  v10 = [(BKSHIDEventDiscreteDispatchingRule *)&v30 init];
  if (v10)
  {
    v11 = [predicateCopy copy];
    predicate = v10->_predicate;
    v10->_predicate = v11;

    v13 = [targetCopy copy];
    target = v10->_target;
    v10->_target = v13;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    descriptors = [predicateCopy descriptors];
    v16 = [descriptors countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(descriptors);
          }

          v10->_predicateEventTypeMask |= 1 << [*(*(&v26 + 1) + 8 * v19++) hidEventType];
        }

        while (v17 != v19);
        v17 = [descriptors countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BKSHIDEventDiscreteDispatchingRule)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventDiscreteDispatchingRule"];
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
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDiscreteDispatchingRule.m";
    v17 = 1024;
    v18 = 31;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)ruleForDispatchingDiscreteEventsMatchingPredicate:(id)predicate toTarget:(id)target
{
  v52 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  targetCopy = target;
  v9 = predicateCopy;
  if (!v9)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"predicate", v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v41 = v19;
      v42 = 2114;
      v43 = v21;
      v44 = 2048;
      selfCopy3 = self;
      v46 = 2114;
      v47 = @"BKSHIDEventDiscreteDispatchingRule.m";
      v48 = 1024;
      v49 = 51;
      v50 = 2114;
      v51 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635C4E8);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v24 = NSStringFromClass(classForCoder);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"predicate", v24, v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      v41 = v28;
      v42 = 2114;
      v43 = v30;
      v44 = 2048;
      selfCopy3 = self;
      v46 = 2114;
      v47 = @"BKSHIDEventDiscreteDispatchingRule.m";
      v48 = 1024;
      v49 = 51;
      v50 = 2114;
      v51 = v27;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635C624);
  }

  v11 = targetCopy;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v11 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v33 = NSStringFromClass(classForCoder2);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [v31 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"target", v33, v35];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(a2);
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138544642;
        v41 = v37;
        v42 = 2114;
        v43 = v39;
        v44 = 2048;
        selfCopy3 = self;
        v46 = 2114;
        v47 = @"BKSHIDEventDiscreteDispatchingRule.m";
        v48 = 1024;
        v49 = 52;
        v50 = 2114;
        v51 = v36;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v36 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635C760);
    }
  }

  v12 = [[BKSHIDEventDiscreteDispatchingRule alloc] _initWithPredicate:v10 target:v11];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

@end