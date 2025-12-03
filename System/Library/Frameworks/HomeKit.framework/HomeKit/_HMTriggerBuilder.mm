@interface _HMTriggerBuilder
+ (void)initialize;
- (BOOL)_removeActionSet:(uint64_t)set;
- (BOOL)isEnabled;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)nameIsConfigured;
- (Class)class;
- (HMActionSetBuilder)triggerOwnedActionSet;
- (HMTriggerPolicy)policy;
- (NSArray)actionSets;
- (NSString)configuredName;
- (NSString)name;
- (_HMTriggerBuilder)initWithContext:(id)context home:(id)home;
- (id)__findTriggerOwnedActionSet;
- (uint64_t)__addActionSet:(uint64_t)set;
- (uint64_t)__indexOfActionSet:(uint64_t)set;
- (uint64_t)_addActionSet:(os_unfair_lock_s *)set;
- (void)addActionSet:(id)set;
- (void)addActionSet:(id)set completionHandler:(id)handler;
- (void)addActionSetOfType:(id)type completionHandler:(id)handler;
- (void)removeActionSet:(id)set;
- (void)removeActionSet:(id)set completionHandler:(id)handler;
- (void)removePolicy:(id)policy completionHandler:(id)handler;
- (void)setActionSets:(id)sets;
- (void)setEnabled:(BOOL)enabled;
- (void)setName:(id)name isConfigured:(BOOL)configured;
- (void)setPolicy:(id)policy;
- (void)updateName:(id)name configuredName:(id)configuredName completionHandler:(id)handler;
- (void)updatePolicy:(id)policy completionHandler:(id)handler;
@end

@implementation _HMTriggerBuilder

- (void)addActionSetOfType:(id)type completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  if (!handlerCopy)
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

  v7 = handlerCopy;
  if (([typeCopy isEqualToString:@"HMActionSetTypeTriggerOwned"] & 1) == 0)
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
  delegateCaller = [(_HMContext *)v9 delegateCaller];
  triggerOwnedActionSet = [(_HMTriggerBuilder *)self triggerOwnedActionSet];
  [delegateCaller callCompletion:v7 actionSet:triggerOwnedActionSet error:0];

  v12 = *MEMORY[0x1E69E9840];
}

- (HMActionSetBuilder)triggerOwnedActionSet
{
  os_unfair_lock_lock_with_options();
  __findTriggerOwnedActionSet = [(_HMTriggerBuilder *)self __findTriggerOwnedActionSet];
  if (!__findTriggerOwnedActionSet)
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
    home = [(_HMAutomationBuilder *)self home];
    __findTriggerOwnedActionSet = [(HMActionSetBuilder *)v4 initWithType:@"HMActionSetTypeTriggerOwned" context:v6 home:home];

    [(NSMutableArray *)self->_actionSets insertObject:__findTriggerOwnedActionSet atIndex:0];
  }

  os_unfair_lock_unlock(&self->super._lock);

  return __findTriggerOwnedActionSet;
}

- (id)__findTriggerOwnedActionSet
{
  if (self)
  {
    firstObject = [*(self + 64) firstObject];
    v2 = firstObject;
    if (firstObject && ([firstObject actionSetType], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"HMActionSetTypeTriggerOwned"), v3, v4))
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

- (void)removeActionSet:(id)set completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  setCopy = set;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder removeActionSet:completionHandler:]", @"completion"];
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
  home = [(_HMAutomationBuilder *)self home];
  v30 = 0;
  v10 = [HMTrigger _validateActionSet:setCopy home:home homeOwnedOnly:0 error:&v30];
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
    delegateCaller = [(_HMContext *)v14 delegateCaller];
    v16 = delegateCaller;
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

  v12 = [(_HMTriggerBuilder *)self _removeActionSet:setCopy];
  if (self)
  {
    v13 = self->super._context;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  delegateCaller = [(_HMContext *)v14 delegateCaller];
  v16 = delegateCaller;
  if (!v12)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = 2;
    goto LABEL_14;
  }

  v17 = v8;
  v18 = 0;
LABEL_11:
  [delegateCaller callCompletion:v17 error:v18];
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)_removeActionSet:(uint64_t)set
{
  v3 = a2;
  if (set)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(_HMTriggerBuilder *)set __indexOfActionSet:v3];
    v5 = v4 != 0x7FFFFFFFFFFFFFFFLL;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(set + 64) removeObjectAtIndex:v4];
    }

    os_unfair_lock_unlock((set + 8));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)__indexOfActionSet:(uint64_t)set
{
  v3 = a2;
  uniqueIdentifier = [v3 uniqueIdentifier];
  v5 = *(set + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40___HMTriggerBuilder___indexOfActionSet___block_invoke;
  v10[3] = &unk_1E7546B38;
  v6 = v3;
  v11 = v6;
  v12 = uniqueIdentifier;
  v7 = uniqueIdentifier;
  v8 = [v5 indexOfObjectPassingTest:v10];

  return v8;
}

- (void)removeActionSet:(id)set
{
  setCopy = set;
  home = [(_HMAutomationBuilder *)self home];
  v9 = 0;
  v6 = [HMTrigger _validateActionSet:setCopy home:home homeOwnedOnly:0 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = HMExceptionForError(v7);
    objc_exception_throw(v8);
  }

  [(_HMTriggerBuilder *)self _removeActionSet:setCopy];
}

- (void)addActionSet:(id)set completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  setCopy = set;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder addActionSet:completionHandler:]", @"completion"];
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
  home = [(_HMAutomationBuilder *)self home];
  v30 = 0;
  v10 = [HMTrigger _validateActionSet:setCopy home:home homeOwnedOnly:1 error:&v30];
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
    delegateCaller = [(_HMContext *)v14 delegateCaller];
    v16 = delegateCaller;
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

  v12 = [(_HMTriggerBuilder *)self _addActionSet:setCopy];
  if (self)
  {
    v13 = self->super._context;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  delegateCaller = [(_HMContext *)v14 delegateCaller];
  v16 = delegateCaller;
  if ((v12 & 1) == 0)
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = 1;
    goto LABEL_14;
  }

  v17 = v8;
  v18 = 0;
LABEL_11:
  [delegateCaller callCompletion:v17 error:v18];
LABEL_15:

  v23 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_addActionSet:(os_unfair_lock_s *)set
{
  v3 = a2;
  if (set)
  {
    os_unfair_lock_lock_with_options();
    v4 = [(_HMTriggerBuilder *)set __addActionSet:v3];
    os_unfair_lock_unlock(set + 2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)__addActionSet:(uint64_t)set
{
  v3 = a2;
  if (set)
  {
    if ([(_HMTriggerBuilder *)set __indexOfActionSet:v3]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(set + 64) addObject:v3];
      set = 1;
    }

    else
    {
      set = 0;
    }
  }

  return set;
}

- (void)addActionSet:(id)set
{
  setCopy = set;
  home = [(_HMAutomationBuilder *)self home];
  v9 = 0;
  v6 = [HMTrigger _validateActionSet:setCopy home:home homeOwnedOnly:1 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = HMExceptionForError(v7);
    objc_exception_throw(v8);
  }

  [(_HMTriggerBuilder *)self _addActionSet:setCopy];
}

- (void)setActionSets:(id)sets
{
  v22 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  os_unfair_lock_lock_with_options();
  __findTriggerOwnedActionSet = [(_HMTriggerBuilder *)self __findTriggerOwnedActionSet];

  if (__findTriggerOwnedActionSet)
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
  v6 = setsCopy;
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
        home = [(_HMAutomationBuilder *)self home];
        v16 = 0;
        v12 = [HMTrigger _validateActionSet:v10 home:home homeOwnedOnly:1 error:&v16];
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

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->super._lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->super._lock);
  return enabled;
}

- (void)removePolicy:(id)policy completionHandler:(id)handler
{
  handlerCopy = handler;
  v17 = 0;
  v7 = [HMTrigger _validatePolicy:policy error:&v17];
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
    delegateCaller = [(_HMContext *)v10 delegateCaller];
    v12 = delegateCaller;
    v13 = handlerCopy;
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
    delegateCaller = [(_HMContext *)v10 delegateCaller];
    v12 = delegateCaller;
    if (!v8)
    {
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v12 callCompletion:handlerCopy error:v16];

      goto LABEL_10;
    }

    v13 = handlerCopy;
    v14 = v8;
  }

  [delegateCaller callCompletion:v13 error:v14];
LABEL_10:
}

- (void)updatePolicy:(id)policy completionHandler:(id)handler
{
  policyCopy = policy;
  handlerCopy = handler;
  v18 = 0;
  v8 = [HMTrigger _validatePolicy:policyCopy error:&v18];
  v9 = v18;
  if (v8)
  {
    [(_HMTriggerBuilder *)self setPolicy:policyCopy];
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
    v13 = delegateCaller;
    v14 = handlerCopy;
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
    delegateCaller = [(_HMContext *)v11 delegateCaller];
    v13 = delegateCaller;
    if (!v9)
    {
      v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v13 callCompletion:handlerCopy error:v17];

      goto LABEL_10;
    }

    v14 = handlerCopy;
    v15 = v9;
  }

  [delegateCaller callCompletion:v14 error:v15];
LABEL_10:
}

- (void)setPolicy:(id)policy
{
  policyCopy = policy;
  os_unfair_lock_lock_with_options();
  policy = self->_policy;
  self->_policy = policyCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMTriggerPolicy)policy
{
  os_unfair_lock_lock_with_options();
  v3 = self->_policy;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)updateName:(id)name configuredName:(id)configuredName completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  configuredNameCopy = configuredName;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTriggerBuilder updateName:configuredName:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v11 = handlerCopy;
  v26 = 0;
  v12 = [HMTrigger _validateName:nameCopy configuredName:configuredNameCopy error:&v26];
  v13 = v26;
  v14 = v13;
  if (v12)
  {
    if (configuredNameCopy)
    {
      v15 = configuredNameCopy;
    }

    else
    {
      v15 = nameCopy;
    }

    [(_HMTriggerBuilder *)self setName:v15 isConfigured:configuredNameCopy != 0];
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
  delegateCaller = [(_HMContext *)v17 delegateCaller];
  [delegateCaller callCompletion:v11 error:v14];

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

- (void)setName:(id)name isConfigured:(BOOL)configured
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  name = self->_name;
  self->_name = nameCopy;

  if (nameCopy)
  {
    configuredCopy = configured;
  }

  else
  {
    configuredCopy = 0;
  }

  self->_nameIsConfigured = configuredCopy;

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

- (_HMTriggerBuilder)initWithContext:(id)context home:(id)home
{
  v8.receiver = self;
  v8.super_class = _HMTriggerBuilder;
  v4 = [(_HMAutomationBuilder *)&v8 initWithContext:context home:home];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actionSets = v4->_actionSets;
    v4->_actionSets = v5;
  }

  return v4;
}

- (BOOL)isKindOfClass:(Class)class
{
  if (objc_opt_class() == class)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = _HMTriggerBuilder;
  return [(_HMTriggerBuilder *)&v6 isKindOfClass:class];
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
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_class();
    [self adoptExternalCategoriesFromClasses:{v3, objc_opt_class(), 0}];
  }
}

@end