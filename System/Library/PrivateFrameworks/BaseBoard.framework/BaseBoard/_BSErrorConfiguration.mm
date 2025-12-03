@interface _BSErrorConfiguration
- (void)_setObject:(void *)object forKey:;
- (void)initWithDomain:(uint64_t)domain code:;
- (void)setCodeDescription:(id)description;
- (void)setFailureDescription:(id)description;
- (void)setFailureReason:(id)reason;
- (void)setUnderlyingError:(id)error;
- (void)setUnderlyingErrors:(id)errors;
- (void)setUserInfoValue:(id)value forKey:(id)key;
@end

@implementation _BSErrorConfiguration

- (void)initWithDomain:(uint64_t)domain code:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = v5;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v7)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(sel_initWithDomain_code_);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v26 = v15;
        v27 = 2114;
        v28 = v17;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2114;
        v32 = @"NSError+BaseBoard.m";
        v33 = 1024;
        v34 = 36;
        v35 = 2114;
        v36 = v14;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      qword_1EAD33B00 = [v14 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5AEA8);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(sel_initWithDomain_code_);
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544642;
        v26 = v20;
        v27 = 2114;
        v28 = v22;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2114;
        v32 = @"NSError+BaseBoard.m";
        v33 = 1024;
        v34 = 36;
        v35 = 2114;
        v36 = v19;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v23 = v19;
      qword_1EAD33B00 = [v19 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5AFB0);
    }

    v24.receiver = self;
    v24.super_class = _BSErrorConfiguration;
    v8 = objc_msgSendSuper2(&v24, sel_init);
    if (v8)
    {
      v9 = [v7 copy];
      v10 = v8[1];
      v8[1] = v9;

      v8[2] = domain;
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = v8[3];
      v8[3] = v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setObject:(void *)object forKey:
{
  v7 = a2;
  objectCopy = object;
  if (self)
  {
    v6 = *(self + 24);
    if (v7)
    {
      [v6 setObject:v7 forKey:objectCopy];
    }

    else
    {
      [v6 removeObjectForKey:objectCopy];
    }
  }
}

- (void)setFailureDescription:(id)description
{
  v24 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"NSError+BaseBoard.m";
        v20 = 1024;
        v21 = 61;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      qword_1EAD33B00 = [v6 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5B290);
    }
  }

  v5 = [descriptionCopy copy];
  [(_BSErrorConfiguration *)self _setObject:v5 forKey:*MEMORY[0x1E696A580]];
}

- (void)setFailureReason:(id)reason
{
  v24 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (reasonCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        *&buf[4] = v9;
        v14 = 2114;
        v15 = v11;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"NSError+BaseBoard.m";
        v20 = 1024;
        v21 = 66;
        v22 = 2114;
        v23 = v8;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      qword_1EAD33B00 = [v8 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5B4E4);
    }

    *buf = &v25;
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:reasonCopy arguments:&v25];

    reasonCopy = v6;
  }

  v7 = [reasonCopy copy];
  [(_BSErrorConfiguration *)self _setObject:v7 forKey:*MEMORY[0x1E696A588]];
}

- (void)setUserInfoValue:(id)value forKey:(id)key
{
  v41 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!keyCopy)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v30 = v11;
      v31 = 2114;
      v32 = v13;
      v33 = 2048;
      selfCopy3 = self;
      v35 = 2114;
      v36 = @"NSError+BaseBoard.m";
      v37 = 1024;
      v38 = 79;
      v39 = 2114;
      v40 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF5B728);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v30 = v16;
      v31 = 2114;
      v32 = v18;
      v33 = 2048;
      selfCopy3 = self;
      v35 = 2114;
      v36 = @"NSError+BaseBoard.m";
      v37 = 1024;
      v38 = 79;
      v39 = 2114;
      v40 = v15;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    qword_1EAD33B00 = [v15 UTF8String];
    __break(0);
    JUMPOUT(0x18FF5B830);
  }

  v8 = valueCopy;
  if (valueCopy)
  {
    supportsSecureCoding = [objc_opt_class() supportsSecureCoding];
    v8 = valueCopy;
    if ((supportsSecureCoding & 1) == 0)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [v20 stringWithFormat:@"%@ does not support secure coding. Putting this object in an error is a bad idea", v22];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v30 = v24;
        v31 = 2114;
        v32 = v26;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2114;
        v36 = @"NSError+BaseBoard.m";
        v37 = 1024;
        v38 = 81;
        v39 = 2114;
        v40 = v23;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      qword_1EAD33B00 = [v23 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5B94CLL);
    }
  }

  [(_BSErrorConfiguration *)self _setObject:v8 forKey:keyCopy];
}

- (void)setUnderlyingError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    NSClassFromString(&cfstr_Nserror.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSErrorClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(a2);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v12 = v6;
        v13 = 2114;
        v14 = v8;
        v15 = 2048;
        selfCopy = self;
        v17 = 2114;
        v18 = @"NSError+BaseBoard.m";
        v19 = 1024;
        v20 = 87;
        v21 = 2114;
        v22 = v5;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v9 = v5;
      qword_1EAD33B00 = [v5 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5BBB8);
    }
  }

  [(_BSErrorConfiguration *)self _setObject:errorCopy forKey:*MEMORY[0x1E696AA08]];
}

- (void)setUnderlyingErrors:(id)errors
{
  v43 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if (errorsCopy)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSArrayClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(a2);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v32 = v22;
        v33 = 2114;
        v34 = v24;
        v35 = 2048;
        selfCopy3 = self;
        v37 = 2114;
        v38 = @"NSError+BaseBoard.m";
        v39 = 1024;
        v40 = 92;
        v41 = 2114;
        v42 = v21;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v25 = v21;
      qword_1EAD33B00 = [v21 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5C0B0);
    }
  }

  if (![errorsCopy count])
  {

    errorsCopy = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = errorsCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        NSClassFromString(&cfstr_Nserror.isa);
        if (!v10)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v12 = NSStringFromSelector(a2);
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            *buf = 138544642;
            v32 = v12;
            v33 = 2114;
            v34 = v14;
            v35 = 2048;
            selfCopy3 = self;
            v37 = 2114;
            v38 = @"NSError+BaseBoard.m";
            v39 = 1024;
            v40 = 97;
            v41 = 2114;
            v42 = v11;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v15 = v11;
          qword_1EAD33B00 = [v11 UTF8String];
          __break(0);
          JUMPOUT(0x18FF5BEA0);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSErrorClass]"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(a2);
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            *buf = 138544642;
            v32 = v17;
            v33 = 2114;
            v34 = v19;
            v35 = 2048;
            selfCopy3 = self;
            v37 = 2114;
            v38 = @"NSError+BaseBoard.m";
            v39 = 1024;
            v40 = 97;
            v41 = 2114;
            v42 = v16;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v20 = v16;
          qword_1EAD33B00 = [v16 UTF8String];
          __break(0);
          JUMPOUT(0x18FF5BFA8);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  [(_BSErrorConfiguration *)self _setObject:v6 forKey:*MEMORY[0x1E696A750]];
}

- (void)setCodeDescription:(id)description
{
  v24 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138544642;
        v13 = v7;
        v14 = 2114;
        v15 = v9;
        v16 = 2048;
        selfCopy = self;
        v18 = 2114;
        v19 = @"NSError+BaseBoard.m";
        v20 = 1024;
        v21 = 103;
        v22 = 2114;
        v23 = v6;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v10 = v6;
      qword_1EAD33B00 = [v6 UTF8String];
      __break(0);
      JUMPOUT(0x18FF5C344);
    }
  }

  v5 = [descriptionCopy copy];
  [(_BSErrorConfiguration *)self _setObject:v5 forKey:@"BSErrorCodeDescription"];
}

@end