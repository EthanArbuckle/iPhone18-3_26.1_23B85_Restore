@interface _HMTriggerBuilder
+ (void)initialize;
- (BOOL)_removeActionSet:(uint64_t)a1;
- (BOOL)isEnabled;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)nameIsConfigured;
- (Class)class;
- (HMActionSetBuilder)triggerOwnedActionSet;
- (HMTriggerPolicy)policy;
- (NSArray)actionSets;
- (NSString)configuredName;
- (NSString)name;
- (_HMTriggerBuilder)initWithContext:(id)a3 home:(id)a4;
- (id)__findTriggerOwnedActionSet;
- (uint64_t)__addActionSet:(uint64_t)a1;
- (uint64_t)__indexOfActionSet:(uint64_t)a1;
- (uint64_t)_addActionSet:(os_unfair_lock_s *)a1;
- (void)addActionSet:(id)a3;
- (void)addActionSet:(id)a3 completionHandler:(id)a4;
- (void)addActionSetOfType:(id)a3 completionHandler:(id)a4;
- (void)removeActionSet:(id)a3;
- (void)removeActionSet:(id)a3 completionHandler:(id)a4;
- (void)removePolicy:(id)a3 completionHandler:(id)a4;
- (void)setActionSets:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setName:(id)a3 isConfigured:(BOOL)a4;
- (void)setPolicy:(id)a3;
- (void)updateName:(id)a3 configuredName:(id)a4 completionHandler:(id)a5;
- (void)updatePolicy:(id)a3 completionHandler:(id)a4;
@end

@implementation _HMTriggerBuilder

- (void)addActionSetOfType:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = a4;
  if (!v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder addActionSetOfType:completionHandler:]", @"completion"];
    v14 = v13 = self;
    v15 = objc_autoreleasePoolPush();
    v16 = v13;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = v14;
LABEL_12:
    v22 = [v19 exceptionWithName:v20 reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  v7 = v6;
  if (([v23 isEqualToString:@"HMActionSetTypeTriggerOwned"] & 1) == 0)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"type must be HMActionSetTypeTriggerOwned";
    goto LABEL_12;
  }

  if (self)
  {
    context = self->super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  v10 = [(_HMContext *)v9 delegateCaller];
  v11 = [(_HMTriggerBuilder *)self triggerOwnedActionSet];
  [v10 callCompletion:v7 actionSet:v11 error:0];

  v12 = *MEMORY[0x1E69E9840];
}

- (HMActionSetBuilder)triggerOwnedActionSet
{
  os_unfair_lock_lock_with_options();
  v3 = [(_HMTriggerBuilder *)self __findTriggerOwnedActionSet];
  if (!v3)
  {
    v4 = [HMActionSetBuilder alloc];
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v6 = context;
    v7 = [(_HMAutomationBuilder *)self home];
    v3 = [(HMActionSetBuilder *)v4 initWithType:@"HMActionSetTypeTriggerOwned" context:v6 home:v7];

    [(NSMutableArray *)self->_actionSets insertObject:v3 atIndex:0];
  }

  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (id)__findTriggerOwnedActionSet
{
  if (a1)
  {
    v1 = [*(a1 + 64) firstObject];
    v2 = v1;
    if (v1 && ([v1 actionSetType], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"HMActionSetTypeTriggerOwned"), v3, v4))
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeActionSet:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder removeActionSet:completionHandler:]", @"completion"];
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
  v9 = [(_HMAutomationBuilder *)self home];
  v30 = 0;
  v10 = [HMTrigger _validateActionSet:v6 home:v9 homeOwnedOnly:0 error:&v30];
  v11 = v30;

  if ((v10 & 1) == 0)
  {
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v14 = context;
    v15 = [(_HMContext *)v14 delegateCaller];
    v16 = v15;
    if (v11)
    {
      v17 = v8;
      v18 = v11;
      goto LABEL_11;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 3;
LABEL_14:
    v22 = [v20 hmErrorWithCode:v21];
    [v16 callCompletion:v8 error:v22];

    goto LABEL_15;
  }

  v12 = [(_HMTriggerBuilder *)self _removeActionSet:v6];
  if (self)
  {
    v13 = self->super._context;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [(_HMContext *)v14 delegateCaller];
  v16 = v15;
  if (!v12)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = 2;
    goto LABEL_14;
  }

  v17 = v8;
  v18 = 0;
LABEL_11:
  [v15 callCompletion:v17 error:v18];
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeActionSet:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(_HMTriggerBuilder *)a1 __indexOfActionSet:v3];
    v5 = v4 != 0x7FFFFFFFFFFFFFFFLL;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 64) removeObjectAtIndex:v4];
    }

    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)__indexOfActionSet:(uint64_t)a1
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = *(a1 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40___HMTriggerBuilder___indexOfActionSet___block_invoke;
  v10[3] = &unk_1E7546B38;
  v6 = v3;
  v11 = v6;
  v12 = v4;
  v7 = v4;
  v8 = [v5 indexOfObjectPassingTest:v10];

  return v8;
}

- (void)removeActionSet:(id)a3
{
  v4 = a3;
  v5 = [(_HMAutomationBuilder *)self home];
  v9 = 0;
  v6 = [HMTrigger _validateActionSet:v4 home:v5 homeOwnedOnly:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = HMExceptionForError(v7);
    objc_exception_throw(v8);
  }

  [(_HMTriggerBuilder *)self _removeActionSet:v4];
}

- (void)addActionSet:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder addActionSet:completionHandler:]", @"completion"];
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
  v9 = [(_HMAutomationBuilder *)self home];
  v30 = 0;
  v10 = [HMTrigger _validateActionSet:v6 home:v9 homeOwnedOnly:1 error:&v30];
  v11 = v30;

  if ((v10 & 1) == 0)
  {
    if (self)
    {
      context = self->super._context;
    }

    else
    {
      context = 0;
    }

    v14 = context;
    v15 = [(_HMContext *)v14 delegateCaller];
    v16 = v15;
    if (v11)
    {
      v17 = v8;
      v18 = v11;
      goto LABEL_11;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 3;
LABEL_14:
    v22 = [v20 hmErrorWithCode:v21];
    [v16 callCompletion:v8 error:v22];

    goto LABEL_15;
  }

  v12 = [(_HMTriggerBuilder *)self _addActionSet:v6];
  if (self)
  {
    v13 = self->super._context;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [(_HMContext *)v14 delegateCaller];
  v16 = v15;
  if ((v12 & 1) == 0)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = 1;
    goto LABEL_14;
  }

  v17 = v8;
  v18 = 0;
LABEL_11:
  [v15 callCompletion:v17 error:v18];
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_addActionSet:(os_unfair_lock_s *)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(_HMTriggerBuilder *)a1 __addActionSet:v3];
    os_unfair_lock_unlock(a1 + 2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)__addActionSet:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ([(_HMTriggerBuilder *)a1 __indexOfActionSet:v3]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 64) addObject:v3];
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)addActionSet:(id)a3
{
  v4 = a3;
  v5 = [(_HMAutomationBuilder *)self home];
  v9 = 0;
  v6 = [HMTrigger _validateActionSet:v4 home:v5 homeOwnedOnly:1 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = HMExceptionForError(v7);
    objc_exception_throw(v8);
  }

  [(_HMTriggerBuilder *)self _addActionSet:v4];
}

- (void)setActionSets:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(_HMTriggerBuilder *)self __findTriggerOwnedActionSet];

  if (v5)
  {
    [(NSMutableArray *)self->_actionSets removeObjectsInRange:1, [(NSMutableArray *)self->_actionSets count]- 1];
  }

  else
  {
    [(NSMutableArray *)self->_actionSets removeAllObjects];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(_HMAutomationBuilder *)self home];
        v16 = 0;
        v12 = [HMTrigger _validateActionSet:v10 home:v11 homeOwnedOnly:1 error:&v16];
        v13 = v16;

        if ((v12 & 1) == 0)
        {
          v15 = HMExceptionForError(v13);
          objc_exception_throw(v15);
        }

        [(_HMTriggerBuilder *)self __addActionSet:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->super._lock);
  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)actionSets
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_actionSets copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_enabled = a3;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->super._lock);
  return enabled;
}

- (void)removePolicy:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v17 = 0;
  v7 = [HMTrigger _validatePolicy:a3 error:&v17];
  v8 = v17;
  if (v7)
  {
    [(_HMTriggerBuilder *)self setPolicy:0];
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
    v13 = v6;
    v14 = 0;
  }

  else
  {
    if (self)
    {
      v15 = self->super._context;
    }

    else
    {
      v15 = 0;
    }

    v10 = v15;
    v11 = [(_HMContext *)v10 delegateCaller];
    v12 = v11;
    if (!v8)
    {
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v12 callCompletion:v6 error:v16];

      goto LABEL_10;
    }

    v13 = v6;
    v14 = v8;
  }

  [v11 callCompletion:v13 error:v14];
LABEL_10:
}

- (void)updatePolicy:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [HMTrigger _validatePolicy:v6 error:&v18];
  v9 = v18;
  if (v8)
  {
    [(_HMTriggerBuilder *)self setPolicy:v6];
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
    v13 = v12;
    v14 = v7;
    v15 = 0;
  }

  else
  {
    if (self)
    {
      v16 = self->super._context;
    }

    else
    {
      v16 = 0;
    }

    v11 = v16;
    v12 = [(_HMContext *)v11 delegateCaller];
    v13 = v12;
    if (!v9)
    {
      v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v13 callCompletion:v7 error:v17];

      goto LABEL_10;
    }

    v14 = v7;
    v15 = v9;
  }

  [v12 callCompletion:v14 error:v15];
LABEL_10:
}

- (void)setPolicy:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  policy = self->_policy;
  self->_policy = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMTriggerPolicy)policy
{
  os_unfair_lock_lock_with_options();
  v3 = self->_policy;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)updateName:(id)a3 configuredName:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder updateName:configuredName:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v11 = v10;
  v26 = 0;
  v12 = [HMTrigger _validateName:v8 configuredName:v9 error:&v26];
  v13 = v26;
  v14 = v13;
  if (v12)
  {
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = v8;
    }

    [(_HMTriggerBuilder *)self setName:v15 isConfigured:v9 != 0];
    v14 = 0;
  }

  if (self)
  {
    context = self->super._context;
  }

  else
  {
    context = 0;
  }

  v17 = context;
  v18 = [(_HMContext *)v17 delegateCaller];
  [v18 callCompletion:v11 error:v14];

  v19 = *MEMORY[0x1E69E9840];
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  if (self->_nameIsConfigured)
  {
    name = self->_name;
  }

  else
  {
    name = 0;
  }

  v4 = name;
  os_unfair_lock_unlock(&self->super._lock);

  return v4;
}

- (void)setName:(id)a3 isConfigured:(BOOL)a4
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  name = self->_name;
  self->_name = v6;

  if (v6)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  self->_nameIsConfigured = v8;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)nameIsConfigured
{
  os_unfair_lock_lock_with_options();
  nameIsConfigured = self->_nameIsConfigured;
  os_unfair_lock_unlock(&self->super._lock);
  return nameIsConfigured;
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

- (_HMTriggerBuilder)initWithContext:(id)a3 home:(id)a4
{
  v8.receiver = self;
  v8.super_class = _HMTriggerBuilder;
  v4 = [(_HMAutomationBuilder *)&v8 initWithContext:a3 home:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionSets = v4->_actionSets;
    v4->_actionSets = v5;
  }

  return v4;
}

- (BOOL)isKindOfClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _HMTriggerBuilder;
  return [(_HMTriggerBuilder *)&v6 isKindOfClass:a3];
}

- (Class)class
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
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