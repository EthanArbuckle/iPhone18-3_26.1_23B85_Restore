@interface BSSimpleAssertion
- (BOOL)isValid;
- (BSSimpleAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 queue:(id)a5 invalidationBlock:(id)a6;
- (BSSimpleAssertion)initWithReason:(id)a3 invalidatedBlock:(id)a4;
- (BSSimpleAssertion)initWithReason:(id)a3 invalidatedWithContextBlock:(id)a4;
- (id)_initWithReason:(void *)a3 identifier:(void *)a4 queue:(char)a5 type:(void *)a6 block:;
- (id)_initWithReason:(void *)a3 identifier:(void *)a4 requiredInvalidationQueue:(uint64_t)a5 deallocPolicy:(void *)a6 invalidatedWithContextBlock:;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_appendDescriptionToFormatter:(uint64_t)a1;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BSSimpleAssertion

- (void)invalidate
{
  queue = self->_queue;
  if (queue)
  {
    BSDispatchQueueAssert(queue);
  }

  v4 = 0;
  atomic_compare_exchange_strong_explicit(&self->_invalidated, &v4, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v4)
  {
    self->_wasExplicit = 1;
    v6 = MEMORY[0x193AE5AC0](self->_invalidationBlock.withArgs, a2);
    withArgs = self->_invalidationBlock.withArgs;
    self->_invalidationBlock.withArgs = 0;

    v6[2]();
  }
}

- (void)dealloc
{
  v42 = *MEMORY[0x1E69E9840];
  if (self && (v4 = 0, atomic_compare_exchange_strong_explicit(&self->_invalidated, &v4, 1u, memory_order_relaxed, memory_order_relaxed), !v4) && self->_invalidationType == 2)
  {
    v5 = objc_autoreleasePoolPush();
    if (!self->_invalidationBlock.withArgs)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      reason = self->_reason;
      identifier = self->_identifier;
      if (identifier == reason)
      {
        v22 = self->_identifier;
      }

      else
      {
        v23 = v19;
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", self->_identifier, reason];
        v19 = v23;
      }

      v24 = [v18 stringWithFormat:@"no invalidation block found for <%@:%p> (%@) in implicit invalidation in dealloc", v19, self, v22];
      if (identifier != reason)
      {
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(a2);
        v26 = objc_opt_class();
        NSStringFromClass(v26);
        *buf = 138544642;
        v31 = v25;
        v27 = v32 = 2114;
        v33 = v27;
        v34 = 2048;
        v35 = self;
        v36 = 2114;
        v37 = @"BSSimpleAssertion.m";
        v38 = 1024;
        v39 = 123;
        v40 = 2114;
        v41 = v24;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v28 = v24;
      qword_1EAD33B00 = [v24 UTF8String];
      __break(0);
      JUMPOUT(0x18FEFBC4CLL);
    }

    v6 = MEMORY[0x193AE5AC0]();
    withArgs = self->_invalidationBlock.withArgs;
    self->_invalidationBlock.withArgs = 0;

    (v6)[2](v6, self);
    objc_autoreleasePoolPop(v5);
  }

  else if (self->_invalidationBlock.withArgs)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v11 = self->_reason;
    v10 = self->_identifier;
    if (v10 == v11)
    {
      v12 = self->_identifier;
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", self->_identifier, v11];
    }

    v13 = [v8 stringWithFormat:@"Client code must invalidate <%@:%p> (%@) before dealloc", v9, self, v12];
    if (v10 != v11)
    {
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v31 = v14;
      v32 = 2114;
      v33 = v16;
      v34 = 2048;
      v35 = self;
      v36 = 2114;
      v37 = @"BSSimpleAssertion.m";
      v38 = 1024;
      v39 = 129;
      v40 = 2114;
      v41 = v13;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    qword_1EAD33B00 = [v13 UTF8String];
    __break(0);
    JUMPOUT(0x18FEFBAF4);
  }

  v29.receiver = self;
  v29.super_class = BSSimpleAssertion;
  [(BSSimpleAssertion *)&v29 dealloc];
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSSimpleAssertion *)self _appendDescriptionToFormatter:v3];

  return v3;
}

- (BOOL)isValid
{
  v3 = 1;
  if (self)
  {
    atomic_compare_exchange_strong_explicit(&self->_invalidated, &v3, v3, memory_order_relaxed, memory_order_relaxed);
    LOBYTE(v3) = v3 != 1;
  }

  return v3;
}

- (id)_initWithReason:(void *)a3 identifier:(void *)a4 queue:(char)a5 type:(void *)a6 block:
{
  v79 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v65 = a4;
  v13 = a6;
  if (a1)
  {
    v14 = v11;
    v15 = MEMORY[0x1E696AEC0];
    if (!v14)
    {
      objc_opt_class();
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"reason", v27];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__initWithReason_identifier_queue_type_block_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138544642;
        v68 = v29;
        v69 = 2114;
        v70 = v31;
        v71 = 2048;
        v72 = a1;
        v73 = 2114;
        v74 = @"BSSimpleAssertion.m";
        v75 = 1024;
        v76 = 56;
        v77 = 2114;
        v78 = v28;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v32 = v28;
      qword_1EAD33B00 = [v28 UTF8String];
      __break(0);
      JUMPOUT(0x18FF26A28);
    }

    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = [v14 classForCoder];
      if (!v34)
      {
        v34 = objc_opt_class();
      }

      v35 = NSStringFromClass(v34);
      objc_opt_class();
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = [v33 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"reason", v35, v37];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector(sel__initWithReason_identifier_queue_type_block_);
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138544642;
        v68 = v39;
        v69 = 2114;
        v70 = v41;
        v71 = 2048;
        v72 = a1;
        v73 = 2114;
        v74 = @"BSSimpleAssertion.m";
        v75 = 1024;
        v76 = 56;
        v77 = 2114;
        v78 = v38;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v42 = v38;
      qword_1EAD33B00 = [v38 UTF8String];
      __break(0);
      JUMPOUT(0x18FF26B74);
    }

    if (v14 != v12)
    {
      v16 = v12;
      v17 = MEMORY[0x1E696AEC0];
      if (!v16)
      {
        objc_opt_class();
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        v50 = [v17 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"identifier", v49];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v51 = NSStringFromSelector(sel__initWithReason_identifier_queue_type_block_);
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          *buf = 138544642;
          v68 = v51;
          v69 = 2114;
          v70 = v53;
          v71 = 2048;
          v72 = a1;
          v73 = 2114;
          v74 = @"BSSimpleAssertion.m";
          v75 = 1024;
          v76 = 58;
          v77 = 2114;
          v78 = v50;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v54 = v50;
        qword_1EAD33B00 = [v50 UTF8String];
        __break(0);
        JUMPOUT(0x18FF26D98);
      }

      objc_opt_class();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v55 = MEMORY[0x1E696AEC0];
        v56 = [v16 classForCoder];
        if (!v56)
        {
          v56 = objc_opt_class();
        }

        v57 = NSStringFromClass(v56);
        objc_opt_class();
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        v60 = [v55 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"identifier", v57, v59];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v61 = NSStringFromSelector(sel__initWithReason_identifier_queue_type_block_);
          v62 = objc_opt_class();
          v63 = NSStringFromClass(v62);
          *buf = 138544642;
          v68 = v61;
          v69 = 2114;
          v70 = v63;
          v71 = 2048;
          v72 = a1;
          v73 = 2114;
          v74 = @"BSSimpleAssertion.m";
          v75 = 1024;
          v76 = 58;
          v77 = 2114;
          v78 = v60;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v64 = v60;
        qword_1EAD33B00 = [v60 UTF8String];
        __break(0);
        JUMPOUT(0x18FF26EE4);
      }
    }

    if (!v13)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = NSStringFromSelector(sel__initWithReason_identifier_queue_type_block_);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138544642;
        v68 = v44;
        v69 = 2114;
        v70 = v46;
        v71 = 2048;
        v72 = a1;
        v73 = 2114;
        v74 = @"BSSimpleAssertion.m";
        v75 = 1024;
        v76 = 60;
        v77 = 2114;
        v78 = v43;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v47 = v43;
      qword_1EAD33B00 = [v43 UTF8String];
      __break(0);
      JUMPOUT(0x18FF26C78);
    }

    v66.receiver = a1;
    v66.super_class = BSSimpleAssertion;
    v18 = objc_msgSendSuper2(&v66, sel_init);
    if (v18)
    {
      v19 = [v14 copy];
      v20 = *(v18 + 4);
      *(v18 + 4) = v19;

      if (v14 == v12)
      {
        v21 = *(v18 + 4);
      }

      else
      {
        v21 = [v12 copy];
      }

      v22 = *(v18 + 5);
      *(v18 + 5) = v21;

      objc_storeStrong(v18 + 2, a4);
      *(v18 + 25) = a5;
      v23 = [v13 copy];
      v24 = *(v18 + 1);
      *(v18 + 1) = v23;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BSSimpleAssertion)initWithReason:(id)a3 invalidatedBlock:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x193AE5AC0](a4);
  v8 = [(BSSimpleAssertion *)self _initWithReason:v6 identifier:v6 queue:0 type:1 block:v7];

  return v8;
}

- (BSSimpleAssertion)initWithReason:(id)a3 invalidatedWithContextBlock:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x193AE5AC0](a4);
  v8 = [(BSSimpleAssertion *)self _initWithReason:v6 identifier:v6 queue:0 type:0 block:v7];

  return v8;
}

- (id)_initWithReason:(void *)a3 identifier:(void *)a4 requiredInvalidationQueue:(uint64_t)a5 deallocPolicy:(void *)a6 invalidatedWithContextBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = v14;
  if (a1)
  {
    if (a5 == 1)
    {
      v16 = 2;
    }

    else
    {
      if (a5)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown deallocPolicy %li", a5];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v20 = NSStringFromSelector(sel__initWithReason_identifier_requiredInvalidationQueue_deallocPolicy_invalidatedWithContextBlock_);
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138544642;
          v25 = v20;
          v26 = 2114;
          v27 = v22;
          v28 = 2048;
          v29 = a1;
          v30 = 2114;
          v31 = @"BSSimpleAssertion.m";
          v32 = 1024;
          v33 = 96;
          v34 = 2114;
          v35 = v19;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v23 = v19;
        qword_1EAD33B00 = [v19 UTF8String];
        __break(0);
        JUMPOUT(0x18FF2732CLL);
      }

      v16 = 0;
    }

    v17 = MEMORY[0x193AE5AC0](v14);
    a1 = [(BSSimpleAssertion *)a1 _initWithReason:v11 identifier:v12 queue:v13 type:v16 block:v17];
  }

  return a1;
}

- (BSSimpleAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 queue:(id)a5 invalidationBlock:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"queue"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = @"BSSimpleAssertion.m";
      v30 = 1024;
      v31 = 110;
      v32 = 2114;
      v33 = v17;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v21 = v17;
    qword_1EAD33B00 = [v17 UTF8String];
    __break(0);
    JUMPOUT(0x18FF27574);
  }

  v15 = [(BSSimpleAssertion *)self _initWithReason:v12 identifier:v11 requiredInvalidationQueue:v13 deallocPolicy:0 invalidatedWithContextBlock:v14];

  return v15;
}

- (void)_appendDescriptionToFormatter:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    v4 = [v3 appendObject:*(a1 + 32) withName:0];
    v5 = *(a1 + 40);
    if (v5 != *(a1 + 32))
    {
      v6 = [v9 appendObject:v5 withName:@"identifier"];
    }

    v7 = 1;
    atomic_compare_exchange_strong_explicit((a1 + 24), &v7, v7, memory_order_relaxed, memory_order_relaxed);
    if (v7 == 1)
    {
      v8 = @"invalidated";
    }

    else if (*(a1 + 25) == 2)
    {
      v8 = @"implicit";
    }

    else
    {
      v8 = @"active";
    }

    [v9 appendString:v8 withName:@"state"];
    v3 = v9;
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BSSimpleAssertion_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E72CACC0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

- (id)succinctDescription
{
  v2 = [(BSSimpleAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSSimpleAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(BSSimpleAssertion *)self succinctDescriptionBuilder];

  return v3;
}

@end