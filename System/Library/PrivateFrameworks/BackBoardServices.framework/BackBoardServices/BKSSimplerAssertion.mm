@interface BKSSimplerAssertion
+ (id)assertionWithDescription:(id)description invalidationBlock:(id)block;
+ (id)new;
- (BKSSimplerAssertion)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKSSimplerAssertion

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    (*(self->_invalidationBlock + 2))();
    invalidationBlock = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client code must invalidate <%@:%p> (%@) before dealloc", objc_opt_class(), self, self->_identifier];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKSSimplerAssertion.m";
      v18 = 1024;
      v19 = 58;
      v20 = 2114;
      v21 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186388D50);
  }

  v9.receiver = self;
  v9.super_class = BKSSimplerAssertion;
  [(BKSSimplerAssertion *)&v9 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (BKSSimplerAssertion)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -init"];
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
    v16 = @"BKSSimplerAssertion.m";
    v17 = 1024;
    v18 = 36;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)assertionWithDescription:(id)description invalidationBlock:(id)block
{
  v48 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  descriptionCopy = description;
  v7 = [BKSSimplerAssertion alloc];
  v8 = descriptionCopy;
  v9 = blockCopy;
  if (v7)
  {
    v35.receiver = v7;
    v35.super_class = BKSSimplerAssertion;
    v7 = objc_msgSendSuper2(&v35, sel_init);
    if (v7)
    {
      v10 = v8;
      v11 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v12 = objc_opt_class();
      if (!v10)
      {
        v17 = NSStringFromClass(v12);
        v18 = [v11 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"string", v17];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v19 = NSStringFromSelector(sel__initWithIdentifier_invalidationBlock_);
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          *buf = 138544642;
          v37 = v19;
          v38 = 2114;
          v39 = v21;
          v40 = 2048;
          v41 = v7;
          v42 = 2114;
          v43 = @"BKSSimplerAssertion.m";
          v44 = 1024;
          v45 = 43;
          v46 = 2114;
          v47 = v18;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v18 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863890B0);
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = MEMORY[0x1E696AEC0];
        classForCoder = [v10 classForCoder];
        if (!classForCoder)
        {
          classForCoder = objc_opt_class();
        }

        v24 = NSStringFromClass(classForCoder);
        objc_opt_class();
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v22 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"string", v24, v26];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v28 = NSStringFromSelector(sel__initWithIdentifier_invalidationBlock_);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          *buf = 138544642;
          v37 = v28;
          v38 = 2114;
          v39 = v30;
          v40 = 2048;
          v41 = v7;
          v42 = 2114;
          v43 = @"BKSSimplerAssertion.m";
          v44 = 1024;
          v45 = 43;
          v46 = 2114;
          v47 = v27;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v27 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863891ECLL);
      }

      if (!v9)
      {
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block != ((void *)0)"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v32 = NSStringFromSelector(sel__initWithIdentifier_invalidationBlock_);
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          *buf = 138544642;
          v37 = v32;
          v38 = 2114;
          v39 = v34;
          v40 = 2048;
          v41 = v7;
          v42 = 2114;
          v43 = @"BKSSimplerAssertion.m";
          v44 = 1024;
          v45 = 44;
          v46 = 2114;
          v47 = v31;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v31 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863892E0);
      }

      objc_storeStrong(&v7->_identifier, description);
      v13 = [v9 copy];
      invalidationBlock = v7->_invalidationBlock;
      v7->_invalidationBlock = v13;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot +new"];
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
    v16 = @"BKSSimplerAssertion.m";
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

@end