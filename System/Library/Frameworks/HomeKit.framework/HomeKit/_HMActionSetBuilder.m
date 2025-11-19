@interface _HMActionSetBuilder
+ (void)initialize;
- (BOOL)_removeAction:(uint64_t)a1;
- (BOOL)isEmpty;
- (NSSet)actions;
- (NSString)name;
- (_HMActionSetBuilder)initWithActionSet:(id)a3;
- (_HMActionSetBuilder)initWithType:(id)a3 context:(id)a4 home:(id)a5;
- (id)copyAsBuilder;
- (uint64_t)_addAction:(uint64_t)a1;
- (void)addAction:(id)a3;
- (void)addAction:(id)a3 completionHandler:(id)a4;
- (void)removeAction:(id)a3;
- (void)removeAction:(id)a3 completionHandler:(id)a4;
- (void)setActions:(id)a3;
- (void)setName:(id)a3;
- (void)updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)updateName:(id)a3 completionHandler:(id)a4;
@end

@implementation _HMActionSetBuilder

- (void)updateApplicationData:(id)a3 completionHandler:(id)a4
{
  objc_storeStrong(&self->_applicationData, a3);
  v6 = a4;
  v8 = self->super._context;
  v7 = [(_HMContext *)v8 delegateCaller];
  [v7 callCompletion:v6 error:0];
}

- (void)setActions:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder setActions:]", @"actions"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v27;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v5 = v4;
  os_unfair_lock_lock_with_options();
  v6 = [(NSMutableArray *)self->_actions mutableCopy];
  [(NSMutableArray *)self->_actions removeAllObjects];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = objc_opt_class();
        if (v11 == objc_opt_class())
        {
          _HMFPreconditionFailure();
          __break(1u);
        }

        v12 = [v10 copy];
        v13 = [v6 indexOfObject:v12];
        actions = self->_actions;
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (([(NSMutableArray *)self->_actions containsObject:v12]& 1) == 0)
          {
            v15 = self->super._context;
            v16 = self;
            [v12 __configureWithContext:v15 actionSet:v16];

            [(NSMutableArray *)self->_actions addObject:v12];
          }
        }

        else
        {
          v17 = [v6 objectAtIndex:v13];
          [(NSMutableArray *)actions addObject:v17];

          [v6 removeObjectAtIndex:v13];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v19)
  {
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v30 + 1) + 8 * j) _unconfigure];
      }

      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  os_unfair_lock_unlock(&self->super._lock);
  v22 = *MEMORY[0x1E69E9840];
}

- (void)removeAction:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v6 = a4;
  if (!v6)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder removeAction:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v7 = v6;
  if (v24)
  {
    v8 = [(_HMActionSetBuilder *)self _removeAction:v24];
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v10 = context;
    v11 = [(_HMContext *)v10 delegateCaller];
    v12 = v11;
    if (v8)
    {
      [v11 callCompletion:v7 error:0];
      goto LABEL_12;
    }

    v14 = MEMORY[0x1E696ABC0];
    v15 = 2;
  }

  else
  {
    if (self)
    {
      v13 = self->super._context;
    }

    else
    {
      v13 = 0;
    }

    v10 = v13;
    v12 = [(_HMContext *)v10 delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 20;
  }

  v16 = [v14 hmErrorWithCode:v15];
  [v12 callCompletion:v7 error:v16];

LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeAction:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [*(a1 + 56) indexOfObject:v3];
    v5 = v4 != 0x7FFFFFFFFFFFFFFFLL;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [*(a1 + 56) objectAtIndex:v4];
      [v6 _unconfigure];

      [*(a1 + 56) removeObjectAtIndex:v4];
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeAction:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder removeAction:]", @"action"];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0];
    objc_exception_throw(v11);
  }

  v12 = v4;
  [(_HMActionSetBuilder *)self _removeAction:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addAction:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder addAction:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v28;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v8 = v7;
  if (!v6)
  {
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v10 = context;
    v13 = [(_HMContext *)v10 delegateCaller];
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    v14 = v13;
    v16 = v8;
    v17 = v15;
    goto LABEL_15;
  }

  v30 = 0;
  v9 = [v6 isValidWithError:&v30];
  v10 = v30;
  if ((v9 & 1) == 0)
  {
    if (self)
    {
      v19 = self->super._context;
    }

    else
    {
      v19 = 0;
    }

    v13 = v19;
    v14 = [(_HMContext *)v13 delegateCaller];
    v15 = v14;
    if (v10)
    {
      v16 = v8;
      v17 = v10;
      goto LABEL_15;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 3;
LABEL_18:
    v22 = [v20 hmErrorWithCode:v21];
    [(_HMContext *)v15 callCompletion:v8 error:v22];

    goto LABEL_19;
  }

  v11 = [(_HMActionSetBuilder *)self _addAction:v6];
  if (self)
  {
    v12 = self->super._context;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [(_HMContext *)v13 delegateCaller];
  v15 = v14;
  if ((v11 & 1) == 0)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = 1;
    goto LABEL_18;
  }

  v16 = v8;
  v17 = 0;
LABEL_15:
  [(_HMContext *)v14 callCompletion:v16 error:v17];
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_addAction:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock_with_options();
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    _HMFPreconditionFailure();
    __break(1u);
LABEL_8:
    v9 = 0;
    goto LABEL_6;
  }

  v5 = [v3 copy];
  v6 = [*(a1 + 56) containsObject:v5];
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = a1;
    [v5 __configureWithContext:v7 actionSet:v8];

    [v8[7] addObject:v5];
  }

  v9 = v6 ^ 1u;

  os_unfair_lock_unlock((a1 + 8));
LABEL_6:

  return v9;
}

- (void)addAction:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder addAction:]", @"action"];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0];
    objc_exception_throw(v11);
  }

  v12 = v4;
  [(_HMActionSetBuilder *)self _addAction:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSSet)actions
{
  os_unfair_lock_lock_with_options();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_actions];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)updateName:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v7 = a4;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder updateName:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v8 = v7;
  if (!v24)
  {
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v11 = context;
    v12 = [(_HMContext *)v11 delegateCaller];
    v13 = MEMORY[0x1E696ABC0];
    v14 = 20;
    goto LABEL_12;
  }

  v9 = [v24 length];
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  if (v9 > HMMaxLengthForNaming__hmf_once_v9)
  {
    if (self)
    {
      v10 = self->super._context;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [(_HMContext *)v11 delegateCaller];
    v13 = MEMORY[0x1E696ABC0];
    v14 = 46;
LABEL_12:
    v16 = [v13 hmErrorWithCode:v14];
    [v12 callCompletion:v8 error:v16];

    goto LABEL_14;
  }

  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_name, a3);
  os_unfair_lock_unlock(&self->super._lock);
  v11 = self->super._context;
  v12 = [(_HMContext *)v11 delegateCaller];
  [v12 callCompletion:v8 error:0];
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  name = self->_name;
  if (!name)
  {
    name = &stru_1F0E92498;
  }

  v4 = name;
  os_unfair_lock_unlock(&self->super._lock);

  return v4;
}

- (id)copyAsBuilder
{
  v3 = [HMActionSetBuilder alloc];
  v4 = self;
  v5 = [(HMActionSetBuilder *)v3 initWithActionSet:v4];

  return v5;
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock_with_options();
  if ([(NSMutableArray *)self->_actions count])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(HMApplicationData *)self->_applicationData dictionary];
    v3 = [v4 count] == 0;
  }

  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (_HMActionSetBuilder)initWithActionSet:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 home];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = [v5 context];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 areAutomationBuildersSupported];

  if (!v8)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v9 = [v6 context];
  v33.receiver = self;
  v33.super_class = _HMActionSetBuilder;
  v10 = [(_HMAutomationBuilder *)&v33 initWithContext:v9 home:v6];

  if (v10)
  {
    v11 = [v4 actionSetType];
    type = v10->_type;
    v10->_type = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v10->_actions;
    v10->_actions = v13;

    v15 = [v4 name];
    name = v10->_name;
    v10->_name = v15;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [v4 actions];
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        v21 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v29 + 1) + 8 * v21) copy];
          v23 = [v6 context];
          [v22 __configureWithContext:v23 actionSet:v4];

          [(NSMutableArray *)v10->_actions addObject:v22];
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v19);
    }

    v24 = [v4 applicationData];
    v25 = [v24 copy];
    applicationData = v10->_applicationData;
    v10->_applicationData = v25;
  }

  self = v10;
  v7 = self;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v7;
}

- (_HMActionSetBuilder)initWithType:(id)a3 context:(id)a4 home:(id)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = _HMActionSetBuilder;
  v10 = [(_HMAutomationBuilder *)&v17 initWithContext:a4 home:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_type, a3);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v11->_actions;
    v11->_actions = v12;

    v14 = objc_alloc_init(HMApplicationData);
    applicationData = v11->_applicationData;
    v11->_applicationData = v14;
  }

  return v11;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = objc_opt_class();
    [a1 adoptExternalCategoriesFromClasses:{v3, objc_opt_class(), 0}];
  }
}

@end