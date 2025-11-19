@interface BSMachServiceAliases
+ (id)environmentAliases;
- (BOOL)isEqual:(id)a3;
- (BSMachServiceAliases)init;
- (NSDictionary)environmentRepresentation;
- (id)_initWithAliases:(void *)a3 encoded:(char)a4 mutable:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)resolveMachService:(id)a3;
- (unint64_t)hash;
@end

@implementation BSMachServiceAliases

+ (id)environmentAliases
{
  if (qword_1ED44FE48 != -1)
  {
    dispatch_once(&qword_1ED44FE48, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_16;

  return v3;
}

- (NSDictionary)environmentRepresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_encoded;
  if (v3)
  {
    os_unfair_lock_unlock(&self->_lock);
LABEL_3:
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObject:v3 forKey:@"BSMachServiceAliases"];

    goto LABEL_9;
  }

  if ([(NSMutableDictionary *)self->_lock_aliases count])
  {
    objc_opt_self();
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~"];
    v6 = [MEMORY[0x1E695DF70] array];
    lock_aliases = self->_lock_aliases;
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __49__BSMachServiceAliases_environmentRepresentation__block_invoke;
    v17 = &unk_1E72CB650;
    v8 = v6;
    v18 = v8;
    v9 = v5;
    v19 = v9;
    [(NSMutableDictionary *)lock_aliases enumerateKeysAndObjectsUsingBlock:&v14];
    v10 = [v8 componentsJoinedByString:{@", ", v14, v15, v16, v17}];
    lock_encoded = self->_lock_encoded;
    self->_lock_encoded = v10;

    v12 = v10;
    os_unfair_lock_unlock(&self->_lock);
    v3 = v12;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v4 = MEMORY[0x1E695E0F8];
LABEL_9:

  return v4;
}

void __42__BSMachServiceAliases_environmentAliases__block_invoke()
{
  v43 = *MEMORY[0x1E69E9840];
  v25 = [MEMORY[0x1E696AE30] processInfo];
  v23 = [v25 environment];
  v0 = objc_opt_self();
  v26 = v23;
  NSClassFromString(&cfstr_Nsdictionary.isa);
  if (!v26)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(sel__aliasesFromEnvironmentRepresentation_);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v0;
      v37 = 2114;
      v38 = @"BSMachServiceAliases.m";
      v39 = 1024;
      v40 = 70;
      v41 = 2114;
      v42 = v13;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    qword_1EAD33B00 = [v13 UTF8String];
    __break(0);
    JUMPOUT(0x18FF11EC4);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSDictionaryClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(sel__aliasesFromEnvironmentRepresentation_);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v32 = v19;
      v33 = 2114;
      v34 = v21;
      v35 = 2048;
      v36 = v0;
      v37 = 2114;
      v38 = @"BSMachServiceAliases.m";
      v39 = 1024;
      v40 = 70;
      v41 = 2114;
      v42 = v18;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    qword_1EAD33B00 = [v18 UTF8String];
    __break(0);
    JUMPOUT(0x18FF11FCCLL);
  }

  v1 = [MEMORY[0x1E695DF90] dictionary];
  v24 = [v26 bs_safeStringForKey:@"BSMachServiceAliases"];
  if (v24)
  {
    [v24 componentsSeparatedByString:{@", "}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v2 = v28 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v27 objects:buf count:16];
    if (v3)
    {
      v4 = *v28;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v28 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = [*(*(&v27 + 1) + 8 * i) componentsSeparatedByString:@":"];
          if ([v6 count] == 2)
          {
            v7 = [v6 objectAtIndex:0];
            v8 = [v7 stringByRemovingPercentEncoding];

            v9 = [v6 objectAtIndex:1];
            v10 = [v9 stringByRemovingPercentEncoding];

            if ([v8 length] && objc_msgSend(v10, "length"))
            {
              [v1 setObject:v10 forKey:v8];
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v27 objects:buf count:16];
      }

      while (v3);
    }
  }

  v11 = [[BSMachServiceAliases alloc] _initWithAliases:v1 encoded:v24 mutable:0];

  v12 = _MergedGlobals_16;
  _MergedGlobals_16 = v11;
}

- (BSMachServiceAliases)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSMachServiceAliases.m" lineNumber:26 description:@"-init is not allowed on BSMachServiceAliases"];

  return 0;
}

- (id)_initWithAliases:(void *)a3 encoded:(char)a4 mutable:
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BSMachServiceAliases;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      *(v10 + 6) = 0;
      objc_storeStrong(v10 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      *(a1 + 28) = a4;
    }
  }

  return a1;
}

void __49__BSMachServiceAliases_environmentRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 32);
  v7 = [a2 stringByAddingPercentEncodingWithAllowedCharacters:*(a1 + 40)];
  v8 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:*(a1 + 40)];
  v9 = [v5 stringWithFormat:@"%@:%@", v7, v8];
  [v6 addObject:v9];
}

- (id)resolveMachService:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = @"BSMachServiceAliases.m";
      v28 = 1024;
      v29 = 106;
      v30 = 2114;
      v31 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF4C1FCLL);
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
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = @"BSMachServiceAliases.m";
      v28 = 1024;
      v29 = 106;
      v30 = 2114;
      v31 = v15;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    qword_1EAD33B00 = [v15 UTF8String];
    __break(0);
    JUMPOUT(0x18FF4C304);
  }

  if (self->_mutable)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  v6 = [(NSMutableDictionary *)self->_lock_aliases objectForKey:v5];
  if (self->_mutable)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_mutable)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = [BSMutableMachServiceAliases alloc];
    v5 = [(NSMutableDictionary *)self->_lock_aliases mutableCopy];
    v6 = [(BSMachServiceAliases *)&v4->super.super.isa _initWithAliases:v5 encoded:self->_lock_encoded mutable:0];

    os_unfair_lock_unlock(&self->_lock);
    return v6;
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (self->_mutable)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  v4 = [BSMutableMachServiceAliases alloc];
  v5 = [(NSMutableDictionary *)self->_lock_aliases mutableCopy];
  v6 = [(BSMachServiceAliases *)&v4->super.super.isa _initWithAliases:v5 encoded:self->_lock_encoded mutable:1];

  if (self->_mutable)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v6;
}

- (unint64_t)hash
{
  if (self->_mutable)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  v3 = [(NSMutableDictionary *)self->_lock_aliases hash];
  if (self->_mutable)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_22;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() && v5 != objc_opt_class())
  {
    v6 = 0;
    goto LABEL_22;
  }

  if (self >= v4)
  {
    if (v4->_mutable)
    {
      os_unfair_lock_lock(&v4->_lock);
    }

    if (self->_mutable)
    {
      os_unfair_lock_lock(&self->_lock);
    }

    v6 = BSEqualDictionaries(self->_lock_aliases, v4->_lock_aliases);
    if (v4->_mutable)
    {
      os_unfair_lock_unlock(&v4->_lock);
    }

    if (self->_mutable)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (self->_mutable)
    {
      os_unfair_lock_lock(&self->_lock);
    }

    if (v4->_mutable)
    {
      os_unfair_lock_lock(&v4->_lock);
    }

    v6 = BSEqualDictionaries(self->_lock_aliases, v4->_lock_aliases);
    if (self->_mutable)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    self = v4;
    if (v4->_mutable)
    {
LABEL_23:
      os_unfair_lock_unlock(&self->_lock);
    }
  }

LABEL_22:

  return v6;
}

- (id)description
{
  if (self->_mutable)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p> %@", objc_opt_class(), self, self->_lock_aliases];
  if (self->_mutable)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v3;
}

@end