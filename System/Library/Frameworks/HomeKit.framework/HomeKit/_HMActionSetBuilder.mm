@interface _HMActionSetBuilder
+ (void)initialize;
- (BOOL)_removeAction:(uint64_t)action;
- (BOOL)isEmpty;
- (NSSet)actions;
- (NSString)name;
- (_HMActionSetBuilder)initWithActionSet:(id)set;
- (_HMActionSetBuilder)initWithType:(id)type context:(id)context home:(id)home;
- (id)copyAsBuilder;
- (uint64_t)_addAction:(uint64_t)action;
- (void)addAction:(id)action;
- (void)addAction:(id)action completionHandler:(id)handler;
- (void)removeAction:(id)action;
- (void)removeAction:(id)action completionHandler:(id)handler;
- (void)setActions:(id)actions;
- (void)setName:(id)name;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateName:(id)name completionHandler:(id)handler;
@end

@implementation _HMActionSetBuilder

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  objc_storeStrong(&self->_applicationData, data);
  handlerCopy = handler;
  v8 = self->super._context;
  delegateCaller = [(_HMContext *)v8 delegateCaller];
  [delegateCaller callCompletion:handlerCopy error:0];
}

- (void)setActions:(id)actions
{
  v44 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (!actionsCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder setActions:]", @"actions"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v5 = actionsCopy;
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
            selfCopy2 = self;
            [v12 __configureWithContext:v15 actionSet:selfCopy2];

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

- (void)removeAction:(id)action completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder removeAction:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  if (actionCopy)
  {
    v8 = [(_HMActionSetBuilder *)self _removeAction:actionCopy];
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v10 = context;
    delegateCaller = [(_HMContext *)v10 delegateCaller];
    delegateCaller2 = delegateCaller;
    if (v8)
    {
      [delegateCaller callCompletion:v7 error:0];
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
    delegateCaller2 = [(_HMContext *)v10 delegateCaller];
    v14 = MEMORY[0x1E696ABC0];
    v15 = 20;
  }

  v16 = [v14 hmErrorWithCode:v15];
  [delegateCaller2 callCompletion:v7 error:v16];

LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeAction:(uint64_t)action
{
  v3 = a2;
  if (action)
  {
    os_unfair_lock_lock_with_options();
    v4 = [*(action + 56) indexOfObject:v3];
    v5 = v4 != 0x7FFFFFFFFFFFFFFFLL;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [*(action + 56) objectAtIndex:v4];
      [v6 _unconfigure];

      [*(action + 56) removeObjectAtIndex:v4];
    }

    os_unfair_lock_unlock((action + 8));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeAction:(id)action
{
  v17 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder removeAction:]", @"action"];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = actionCopy;
  [(_HMActionSetBuilder *)self _removeAction:actionCopy];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addAction:(id)action completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder addAction:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = handlerCopy;
  if (!actionCopy)
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
    delegateCaller = [(_HMContext *)v10 delegateCaller];
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    v13DelegateCaller = delegateCaller;
    v16 = v8;
    v17 = v15;
    goto LABEL_15;
  }

  v30 = 0;
  v9 = [actionCopy isValidWithError:&v30];
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

    delegateCaller = v19;
    v13DelegateCaller = [(_HMContext *)delegateCaller delegateCaller];
    v15 = v13DelegateCaller;
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

  v11 = [(_HMActionSetBuilder *)self _addAction:actionCopy];
  if (self)
  {
    v12 = self->super._context;
  }

  else
  {
    v12 = 0;
  }

  delegateCaller = v12;
  v13DelegateCaller = [(_HMContext *)delegateCaller delegateCaller];
  v15 = v13DelegateCaller;
  if ((v11 & 1) == 0)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = 1;
    goto LABEL_18;
  }

  v16 = v8;
  v17 = 0;
LABEL_15:
  [(_HMContext *)v13DelegateCaller callCompletion:v16 error:v17];
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_addAction:(uint64_t)action
{
  v3 = a2;
  if (!action)
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
  v6 = [*(action + 56) containsObject:v5];
  if ((v6 & 1) == 0)
  {
    v7 = *(action + 32);
    actionCopy = action;
    [v5 __configureWithContext:v7 actionSet:actionCopy];

    [actionCopy[7] addObject:v5];
  }

  v9 = v6 ^ 1u;

  os_unfair_lock_unlock((action + 8));
LABEL_6:

  return v9;
}

- (void)addAction:(id)action
{
  v17 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder addAction:]", @"action"];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = actionCopy;
  [(_HMActionSetBuilder *)self _addAction:actionCopy];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSSet)actions
{
  os_unfair_lock_lock_with_options();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_actions];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)updateName:(id)name completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMActionSetBuilder updateName:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = handlerCopy;
  if (!nameCopy)
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
    delegateCaller = [(_HMContext *)v11 delegateCaller];
    v13 = MEMORY[0x1E696ABC0];
    v14 = 20;
    goto LABEL_12;
  }

  v9 = [nameCopy length];
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
    delegateCaller = [(_HMContext *)v11 delegateCaller];
    v13 = MEMORY[0x1E696ABC0];
    v14 = 46;
LABEL_12:
    v16 = [v13 hmErrorWithCode:v14];
    [delegateCaller callCompletion:v8 error:v16];

    goto LABEL_14;
  }

  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_name, name);
  os_unfair_lock_unlock(&self->super._lock);
  v11 = self->super._context;
  delegateCaller = [(_HMContext *)v11 delegateCaller];
  [delegateCaller callCompletion:v8 error:0];
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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
  selfCopy = self;
  v5 = [(HMActionSetBuilder *)v3 initWithActionSet:selfCopy];

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
    dictionary = [(HMApplicationData *)self->_applicationData dictionary];
    v3 = [dictionary count] == 0;
  }

  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (_HMActionSetBuilder)initWithActionSet:(id)set
{
  v35 = *MEMORY[0x1E69E9840];
  setCopy = set;
  home = [setCopy home];
  v6 = home;
  if (!home)
  {
    goto LABEL_14;
  }

  selfCopy = [home context];
  if (!selfCopy)
  {
    goto LABEL_15;
  }

  areAutomationBuildersSupported = [v6 areAutomationBuildersSupported];

  if (!areAutomationBuildersSupported)
  {
LABEL_14:
    selfCopy = 0;
    goto LABEL_15;
  }

  context = [v6 context];
  v33.receiver = self;
  v33.super_class = _HMActionSetBuilder;
  v10 = [(_HMAutomationBuilder *)&v33 initWithContext:context home:v6];

  if (v10)
  {
    actionSetType = [setCopy actionSetType];
    type = v10->_type;
    v10->_type = actionSetType;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v10->_actions;
    v10->_actions = v13;

    name = [setCopy name];
    name = v10->_name;
    v10->_name = name;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    actions = [setCopy actions];
    v18 = [actions countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(actions);
          }

          v22 = [*(*(&v29 + 1) + 8 * v21) copy];
          context2 = [v6 context];
          [v22 __configureWithContext:context2 actionSet:setCopy];

          [(NSMutableArray *)v10->_actions addObject:v22];
          ++v21;
        }

        while (v19 != v21);
        v19 = [actions countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v19);
    }

    applicationData = [setCopy applicationData];
    v25 = [applicationData copy];
    applicationData = v10->_applicationData;
    v10->_applicationData = v25;
  }

  self = v10;
  selfCopy = self;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (_HMActionSetBuilder)initWithType:(id)type context:(id)context home:(id)home
{
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = _HMActionSetBuilder;
  v10 = [(_HMAutomationBuilder *)&v17 initWithContext:context home:home];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_type, type);
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
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_class();
    [self adoptExternalCategoriesFromClasses:{v3, objc_opt_class(), 0}];
  }
}

@end