@interface BSMutableMachServiceAliases
+ (id)new;
- (void)setService:(id)a3 forAlias:(id)a4;
@end

@implementation BSMutableMachServiceAliases

+ (id)new
{
  v2 = [BSMutableMachServiceAliases alloc];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(BSMachServiceAliases *)&v2->super.super.isa _initWithAliases:v3 encoded:0 mutable:1];

  return v4;
}

- (void)setService:(id)a3 forAlias:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v6 = a4;
  if (self)
  {
    if (!self->super._mutable)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:sel__setService_forAlias_ object:self file:@"BSMachServiceAliases.m" lineNumber:91 description:{@"cannot mutate an immutable : %@", self}];
    }

    v7 = v37;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(sel__setService_forAlias_);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v39 = v16;
        v40 = 2114;
        v41 = v18;
        v42 = 2048;
        v43 = self;
        v44 = 2114;
        v45 = @"BSMachServiceAliases.m";
        v46 = 1024;
        v47 = 92;
        v48 = 2114;
        v49 = v15;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v19 = v15;
      qword_1EAD33B00 = [v15 UTF8String];
      __break(0);
      JUMPOUT(0x18FF4CAFCLL);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel__setService_forAlias_);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138544642;
        v39 = v21;
        v40 = 2114;
        v41 = v23;
        v42 = 2048;
        v43 = self;
        v44 = 2114;
        v45 = @"BSMachServiceAliases.m";
        v46 = 1024;
        v47 = 92;
        v48 = 2114;
        v49 = v20;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v24 = v20;
      qword_1EAD33B00 = [v20 UTF8String];
      __break(0);
      JUMPOUT(0x18FF4CC04);
    }

    v8 = v6;
    NSClassFromString(&cfstr_Nsstring.isa);
    if (!v8)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel__setService_forAlias_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v39 = v26;
        v40 = 2114;
        v41 = v28;
        v42 = 2048;
        v43 = self;
        v44 = 2114;
        v45 = @"BSMachServiceAliases.m";
        v46 = 1024;
        v47 = 93;
        v48 = 2114;
        v49 = v25;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      qword_1EAD33B00 = [v25 UTF8String];
      __break(0);
      JUMPOUT(0x18FF4CD0CLL);
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(sel__setService_forAlias_);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138544642;
        v39 = v31;
        v40 = 2114;
        v41 = v33;
        v42 = 2048;
        v43 = self;
        v44 = 2114;
        v45 = @"BSMachServiceAliases.m";
        v46 = 1024;
        v47 = 93;
        v48 = 2114;
        v49 = v30;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v34 = v30;
      qword_1EAD33B00 = [v30 UTF8String];
      __break(0);
      JUMPOUT(0x18FF4CE14);
    }

    if (![v7 length])
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:sel__setService_forAlias_ object:self file:@"BSMachServiceAliases.m" lineNumber:94 description:@"machService cannot be empty"];
    }

    if (![v8 length])
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      [v36 handleFailureInMethod:sel__setService_forAlias_ object:self file:@"BSMachServiceAliases.m" lineNumber:95 description:@"machService cannot be empty"];
    }

    os_unfair_lock_lock(&self->super._lock);
    v9 = [(NSMutableDictionary *)self->super._lock_aliases objectForKey:v8];
    lock_encoded = v9;
    if (v9 != v7)
    {
      if (v9)
      {
        v11 = [v7 isEqual:v9];

        if (v11)
        {
          goto LABEL_17;
        }
      }

      lock_aliases = self->super._lock_aliases;
      v13 = [v7 copy];
      [(NSMutableDictionary *)lock_aliases setObject:v13 forKey:v8];

      lock_encoded = self->super._lock_encoded;
      self->super._lock_encoded = 0;
    }

LABEL_17:
    os_unfair_lock_unlock(&self->super._lock);
  }
}

@end