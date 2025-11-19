@interface BKSHIDEventKeyCommandsDispatchingPredicate
- (BKSHIDEventKeyCommandsDispatchingPredicate)init;
- (BKSHIDEventKeyCommandsDispatchingPredicate)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithSenderDescriptors:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
@end

@implementation BKSHIDEventKeyCommandsDispatchingPredicate

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self succinctDescriptionBuilder];
  v6 = [(NSSet *)self->_senderDescriptors allObjects];
  [v5 appendArraySection:v6 withName:@"senders" multilinePrefix:v4 skipIfEmpty:0];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
    {
      senderDescriptors = self->_senderDescriptors;
      v9 = v4->_senderDescriptors;
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BKSHIDEventKeyCommandsDispatchingPredicate)initWithCoder:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = *MEMORY[0x1E696A250];
      v25 = *MEMORY[0x1E696A588];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsDispatchingPredicate: subclasses are not allowed : %@", objc_opt_class()];
      v26 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [v7 errorWithDomain:v8 code:4866 userInfo:v10];
      [v4 failWithError:v11];

LABEL_11:
      v20 = 0;
      goto LABEL_12;
    }
  }

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v14 forKey:@"senders"];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v27 = *MEMORY[0x1E696A588];
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsDispatchingPredicate: displays not of class NSSet : %@", v9];
      v28 = v10;
      v17 = MEMORY[0x1E695DF20];
      v18 = &v28;
      v19 = &v27;
      goto LABEL_10;
    }
  }

  if ([v9 bs_containsObjectPassingTest:&__block_literal_global_18_9144])
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A250];
    v29 = *MEMORY[0x1E696A588];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode BKSHIDEventKeyCommandsDispatchingPredicate: senders contains non-BKSHIDEventSenderDescriptor elements : %@", v9];
    v30[0] = v10;
    v17 = MEMORY[0x1E695DF20];
    v18 = v30;
    v19 = &v29;
LABEL_10:
    v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v22 = [v15 errorWithDomain:v16 code:4866 userInfo:v21];
    [v4 failWithError:v22];

    goto LABEL_11;
  }

  self = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self _initWithSenderDescriptors:v9];
  v20 = self;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

BOOL __60__BKSHIDEventKeyCommandsDispatchingPredicate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKSMutableHIDEventKeyCommandsDispatchingPredicate allocWithZone:a3];
  senderDescriptors = self->_senderDescriptors;

  return [(BKSHIDEventKeyCommandsDispatchingPredicate *)v4 _initWithSenderDescriptors:senderDescriptors];
}

id __54__BKSHIDEventKeyCommandsDispatchingPredicate_displays__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[BKSHIDEventDisplay nullDisplay];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithSenderDescriptors:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    v7 = objc_opt_class();
    if (v7 != objc_opt_class())
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BKSHIDEventKeyCommandsDispatchingPredicate cannot be subclassed"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v19 = v14;
        v20 = 2114;
        v21 = v16;
        v22 = 2048;
        v23 = self;
        v24 = 2114;
        v25 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v26 = 1024;
        v27 = 31;
        v28 = 2114;
        v29 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186396164);
    }
  }

  v17.receiver = self;
  v17.super_class = BKSHIDEventKeyCommandsDispatchingPredicate;
  v8 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)&v17 init];
  if (v8)
  {
    v9 = [v5 copy];
    senderDescriptors = v8->_senderDescriptors;
    v8->_senderDescriptors = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BKSHIDEventKeyCommandsDispatchingPredicate)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BKSHIDEventKeyCommandsDispatchingPredicate"];
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
    v16 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
    v17 = 1024;
    v18 = 26;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end