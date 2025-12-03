@interface BSCompoundAssertion
+ (BSCompoundAssertion)assertionWithIdentifier:(id)identifier;
+ (BSCompoundAssertion)assertionWithIdentifier:(id)identifier stateDidChangeHandler:(id)handler;
+ (BSCompoundAssertion)new;
- (BOOL)isActive;
- (BSCompoundAssertion)init;
- (NSOrderedSet)orderedContext;
- (NSOrderedSet)orderedReasons;
- (NSSet)context;
- (NSSet)reasons;
- (NSString)description;
- (OS_os_log)log;
- (_BSCompoundAssertionState)_dataLock_copyState;
- (id)_dataLock_context;
- (id)_identifier;
- (id)_initWithIdentifier:(id)identifier;
- (id)acquireForReason:(id)reason;
- (id)acquireForReason:(id)reason withContext:(id)context;
- (void)dealloc;
- (void)invalidate;
- (void)setLog:(id)log;
@end

@implementation BSCompoundAssertion

- (id)_dataLock_context
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_assert_owner((self + 32));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = *(self + 40);
    v3 = 0;
    v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          if (v7)
          {
            v8 = *(v7 + 32);
            if (v8)
            {
              if (!v3)
              {
                v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
              }

              [v3 addObject:{v8, v11}];
            }
          }

          else
          {
            v8 = 0;
          }

          ++v6;
        }

        while (v4 != v6);
        v9 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_BSCompoundAssertionState)_dataLock_copyState
{
  os_unfair_lock_assert_owner((self + 32));
  v2 = objc_alloc_init(_BSCompoundAssertionState);
  v3 = [*(self + 40) count];
  if (v2)
  {
    v2->_active = v3 != 0;
  }

  _dataLock_context = [(BSCompoundAssertion *)self _dataLock_context];
  v5 = _dataLock_context;
  if (v2)
  {
    v6 = [_dataLock_context copy];
    context = v2->_context;
    v2->_context = v6;
  }

  return v2;
}

- (NSSet)context
{
  orderedContext = [(BSCompoundAssertion *)self orderedContext];
  v3 = [orderedContext set];

  return v3;
}

- (NSOrderedSet)orderedContext
{
  os_unfair_lock_assert_not_owner(&self->_dataLock);
  os_unfair_lock_lock(&self->_dataLock);
  _dataLock_context = [(BSCompoundAssertion *)self _dataLock_context];
  os_unfair_lock_unlock(&self->_dataLock);

  return _dataLock_context;
}

- (NSSet)reasons
{
  orderedReasons = [(BSCompoundAssertion *)self orderedReasons];
  v3 = [orderedReasons set];

  return v3;
}

- (NSOrderedSet)orderedReasons
{
  os_unfair_lock_assert_not_owner(&self->_dataLock);
  os_unfair_lock_lock(&self->_dataLock);
  v3 = [(NSMutableOrderedSet *)self->_dataLock_acquisitionRecords bs_map:&__block_literal_global_127];
  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

id __37__BSCompoundAssertion_orderedReasons__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 16);
  }

  else
  {
    return 0;
  }
}

- (BOOL)isActive
{
  os_unfair_lock_assert_not_owner(&self->_dataLock);
  os_unfair_lock_lock(&self->_dataLock);
  v3 = [(NSMutableOrderedSet *)self->_dataLock_acquisitionRecords count]!= 0;
  os_unfair_lock_unlock(&self->_dataLock);
  return v3;
}

- (void)invalidate
{
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  os_unfair_lock_lock(&self->_syncLock);
  if (!self->_syncLock_invalid)
  {
    self->_syncLock_invalid = 1;
    syncLock_block = self->_syncLock_block;
    self->_syncLock_block = 0;

    os_unfair_lock_lock(&self->_dataLock);
    dataLock_acquisitionRecords = self->_dataLock_acquisitionRecords;
    self->_dataLock_acquisitionRecords = 0;

    os_unfair_lock_unlock(&self->_dataLock);
  }

  os_unfair_lock_unlock(&self->_syncLock);
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  os_unfair_lock_lock(&self->_syncLock);
  if (!self->_syncLock_invalid)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"you must invoke -invalidate on BSCompoundAssertion (%@) before releasing", self->_identifierPrefix];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BSCompoundAssertion.m";
      v18 = 1024;
      v19 = 209;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    qword_1EAD33B00 = [v4 UTF8String];
    __break(0);
    JUMPOUT(0x18FF0E7A0);
  }

  os_unfair_lock_unlock(&self->_syncLock);
  v9.receiver = self;
  v9.super_class = BSCompoundAssertion;
  [(BSCompoundAssertion *)&v9 dealloc];
}

- (id)_identifier
{
  if (self)
  {
    self = self[1];
    v1 = vars8;
  }

  return self;
}

+ (BSCompoundAssertion)new
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSCompoundAssertion does not support +new"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSCompoundAssertion.m";
    v18 = 1024;
    v19 = 175;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (BSCompoundAssertion)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSCompoundAssertion does not support -init"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSCompoundAssertion.m";
    v18 = 1024;
    v19 = 180;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  result = [v4 UTF8String];
  qword_1EAD33B00 = result;
  __break(0);
  return result;
}

- (id)_initWithIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    v13.receiver = identifier;
    v13.super_class = BSCompoundAssertion;
    identifier = objc_msgSendSuper2(&v13, sel_init);
    if (identifier)
    {
      v4 = objc_opt_class();
      if (v4 != objc_opt_class())
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BSCompoundAssertion is not safe to subclass"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = NSStringFromSelector(sel__initWithIdentifier_);
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138544642;
          v15 = v9;
          v16 = 2114;
          v17 = v11;
          v18 = 2048;
          identifierCopy = identifier;
          v20 = 2114;
          v21 = @"BSCompoundAssertion.m";
          v22 = 1024;
          v23 = 187;
          v24 = 2114;
          v25 = v8;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v12 = v8;
        qword_1EAD33B00 = [v8 UTF8String];
        __break(0);
        JUMPOUT(0x18FF37094);
      }

      *(identifier + 4) = 0;
      *(identifier + 8) = 0;
      v5 = [v3 copy];
      v6 = *(identifier + 1);
      *(identifier + 1) = v5;
    }
  }

  return identifier;
}

+ (BSCompoundAssertion)assertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(BSCompoundAssertion *)[self alloc] _initWithIdentifier:identifierCopy];

  return v5;
}

+ (BSCompoundAssertion)assertionWithIdentifier:(id)identifier stateDidChangeHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v7 = [[BSCompoundAssertion alloc] _initWithIdentifier:identifierCopy];
  v8 = [handlerCopy copy];
  v9 = v7[3];
  v7[3] = v8;

  return v7;
}

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_dataLock);
  os_unfair_lock_lock(&self->_dataLock);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifierPrefix = self->_identifierPrefix;
  v6 = [(NSMutableOrderedSet *)self->_dataLock_acquisitionRecords bs_map:&__block_literal_global_9];
  v7 = [v3 stringWithFormat:@"<%@:%p %@> acquisitions:%@", v4, self, identifierPrefix, v6];

  os_unfair_lock_unlock(&self->_dataLock);

  return v7;
}

id __34__BSCompoundAssertion_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 4);
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (context:%@)", v3[2], v4];

      goto LABEL_6;
    }

    v7 = v3[2];
  }

  else
  {
    v7 = 0;
  }

  v6 = v7;
LABEL_6:

  return v6;
}

- (id)acquireForReason:(id)reason
{
  v3 = [(BSCompoundAssertion *)self acquireForReason:reason withContext:0];

  return v3;
}

- (id)acquireForReason:(id)reason withContext:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  contextCopy = context;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSCompoundAssertion.m" lineNumber:299 description:{@"Invalid parameter not satisfying: %@", @"reason != nil"}];
  }

  os_unfair_lock_assert_not_owner(&self->_syncLock);
  os_unfair_lock_lock(&self->_syncLock);
  if (self->_syncLock_invalid)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v10 = reasonCopy;
  v11 = contextCopy;
  os_unfair_lock_assert_owner(&self->_syncLock);
  os_unfair_lock_lock(&self->_dataLock);
  v33 = v11;
  if (!self->_dataLock_acquisitionRecords)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    dataLock_acquisitionRecords = self->_dataLock_acquisitionRecords;
    self->_dataLock_acquisitionRecords = v12;
  }

  v14 = objc_alloc_init(_BSCompoundAssertionAcquisitionRecord);
  p_isa = &v14->super.isa;
  if (v14)
  {
    objc_storeWeak(&v14->_assertion, self);
    objc_setProperty_nonatomic_copy(p_isa, v16, v10, 16);
  }

  [(_BSCompoundAssertionAcquisitionRecord *)p_isa setContext:v11];
  v17 = objc_alloc_init(_BSCompoundAssertionAcquisitionReference);
  v9 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_record, p_isa);
  }

  if (p_isa)
  {
    objc_storeWeak(p_isa + 3, v9);
  }

  _dataLock_context = [(BSCompoundAssertion *)self _dataLock_context];
  [(NSMutableOrderedSet *)self->_dataLock_acquisitionRecords addObject:p_isa];
  v18 = [(NSMutableOrderedSet *)self->_dataLock_acquisitionRecords count];
  syncLock_block = self->_syncLock_block;
  if (!syncLock_block)
  {
    goto LABEL_17;
  }

  if (v18 == 1)
  {
LABEL_19:
    v21 = MEMORY[0x193AE5AC0](syncLock_block);
    [(BSCompoundAssertion *)self _dataLock_copyState];
    v22 = v20 = 1;
    goto LABEL_20;
  }

  if (v11 && ([_dataLock_context containsObject:?] & 1) == 0)
  {
    syncLock_block = self->_syncLock_block;
    goto LABEL_19;
  }

LABEL_17:
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_20:
  dataLock_log = self->_dataLock_log;
  if (dataLock_log)
  {
    v24 = dataLock_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v10;
      v31 = contextCopy;
      v25 = objc_opt_class();
      identifierPrefix = self->_identifierPrefix;
      v27 = [(NSMutableOrderedSet *)self->_dataLock_acquisitionRecords count];
      *buf = 138544642;
      v35 = v25;
      v36 = 2048;
      selfCopy = self;
      v38 = 2114;
      v39 = identifierPrefix;
      v40 = 2114;
      v41 = v30;
      v42 = 2048;
      v43 = v9;
      v44 = 1024;
      v45 = v27;
      _os_log_impl(&dword_18FEF6000, v24, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> (%{public}@) acquire for reason:%{public}@ acq:%p count:%d", buf, 0x3Au);

      v10 = v30;
      contextCopy = v31;
    }
  }

  os_unfair_lock_unlock(&self->_dataLock);
  if (v20)
  {
    (v21)[2](v21, v22);
  }

LABEL_27:
  os_unfair_lock_unlock(&self->_syncLock);

  return v9;
}

- (OS_os_log)log
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = self->_dataLock_log;
  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (void)setLog:(id)log
{
  logCopy = log;
  os_unfair_lock_lock(&self->_dataLock);
  dataLock_log = self->_dataLock_log;
  self->_dataLock_log = logCopy;

  os_unfair_lock_unlock(&self->_dataLock);
}

@end