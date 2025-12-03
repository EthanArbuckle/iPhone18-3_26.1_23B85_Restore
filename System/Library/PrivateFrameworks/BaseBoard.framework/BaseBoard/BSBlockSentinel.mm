@interface BSBlockSentinel
+ (id)sentinelWithCompletion:(id)completion;
+ (id)sentinelWithExceptionReason:(id)reason;
+ (id)sentinelWithQueue:(id)queue completion:(id)completion;
+ (id)sentinelWithQueue:(id)queue signalCount:(unint64_t)count completion:(id)completion;
+ (id)sentinelWithQueue:(id)queue signalCount:(unint64_t)count signalHandler:(id)handler;
+ (id)sentinelWithQueue:(id)queue signalHandler:(id)handler;
+ (id)sentinelWithSignalCount:(unint64_t)count exceptionReason:(id)reason;
+ (id)sentinelWithSignalCount:(unint64_t)count signalHandler:(id)handler;
+ (id)sentinelWithSignalHandler:(id)handler;
- (BOOL)signalWithContext:(id)context;
- (void)dealloc;
- (void)initWithCount:(void *)count queue:(void *)queue block:;
- (void)setIdentifier:(id)identifier;
@end

@implementation BSBlockSentinel

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = MEMORY[0x193AE5AC0](self->_lock_handler);
  lock_signalCount = self->_lock_signalCount;
  lock_expectedSignals = self->_lock_expectedSignals;
  if (lock_expectedSignals)
  {
    if (lock_signalCount < lock_expectedSignals)
    {
LABEL_3:
      v6 = BSLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        lock_identifier = self->_lock_identifier;
        LODWORD(block) = 138543362;
        *(&block + 4) = lock_identifier;
        _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "[BSBlockSentinel:%{public}@] failed!", &block, 0xCu);
      }

      os_unfair_lock_unlock(&self->_lock);
      explicitQueue = self->_explicitQueue;
      v8 = v3;
      v9 = explicitQueue;
      v10 = v9;
      if (v8)
      {
        if (!v9 || v9 == MEMORY[0x1E69E96A0] && [MEMORY[0x1E696AF00] isMainThread])
        {
          v11 = +[BSBlockSentinelSignalContext failureContext];
          (*(v8 + 2))(v8, v11);
        }

        else
        {
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 3221225472;
          v19 = __BSBlockSentinelFireFailureHandler_block_invoke;
          v20 = &unk_1E72CBA70;
          v21 = v8;
          dispatch_async(v10, &block);
          v11 = v21;
        }
      }

      goto LABEL_20;
    }
  }

  else if (!lock_signalCount)
  {
    goto LABEL_3;
  }

  v12 = BSLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = self->_lock_identifier;
    LODWORD(block) = 138412290;
    *(&block + 4) = v15;
    _os_log_debug_impl(&dword_18FEF6000, v12, OS_LOG_TYPE_DEBUG, "[BSBlockSentinel:%@] dealloc", &block, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (!lock_expectedSignals)
  {
    v13 = objc_alloc_init(BSBlockSentinelSignalContext);
    v14 = v13;
    if (v13)
    {
      v13->_complete = 1;
    }

    (v3)[2](v3, v13);
  }

LABEL_20:

  v17.receiver = self;
  v17.super_class = BSBlockSentinel;
  [(BSBlockSentinel *)&v17 dealloc];
}

+ (id)sentinelWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v7 = [BSBlockSentinel alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__BSBlockSentinel_sentinelWithQueue_completion___block_invoke;
  v11[3] = &unk_1E72CBA20;
  v8 = completionCopy;
  v12 = v8;
  v9 = [(BSBlockSentinel *)&v7->super.isa initWithCount:queueCopy queue:v11 block:?];

  return v9;
}

void __48__BSBlockSentinel_sentinelWithQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isComplete])
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)initWithCount:(void *)count queue:(void *)queue block:
{
  v41 = *MEMORY[0x1E69E9840];
  countCopy = count;
  queueCopy = queue;
  v10 = queueCopy;
  if (self)
  {
    if (!queueCopy)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(sel_initWithCount_queue_block_);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v30 = v24;
        v31 = 2114;
        v32 = v26;
        v33 = 2048;
        selfCopy = self;
        v35 = 2114;
        v36 = @"BSBlockSentinel.m";
        v37 = 1024;
        v38 = 138;
        v39 = 2114;
        v40 = v23;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      qword_1EAD33B00 = [v23 UTF8String];
      __break(0);
      JUMPOUT(0x18FF62224);
    }

    v28.receiver = self;
    v28.super_class = BSBlockSentinel;
    v11 = objc_msgSendSuper2(&v28, sel_init);
    self = v11;
    if (v11)
    {
      *(v11 + 2) = 0;
      objc_storeStrong(v11 + 6, count);
      v12 = [v10 copy];
      v13 = self[2];
      self[2] = v12;

      self[3] = 0;
      self[4] = a2;
      v14 = BSStackFrameInfoForAddresss(*(vars0 + 8));
      className = [v14 className];
      v16 = className;
      if (className)
      {
        executableName = className;
      }

      else
      {
        executableName = [v14 executableName];
      }

      v19 = self + 5;
      v18 = self[5];
      self[5] = executableName;

      if (!self[5])
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
        v21 = *v19;
        *v19 = v20;
      }
    }
  }

  return self;
}

+ (id)sentinelWithQueue:(id)queue signalCount:(unint64_t)count completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  if (!count)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v23 = v16;
      v24 = 2114;
      v25 = v18;
      v26 = 2048;
      selfCopy = self;
      v28 = 2114;
      v29 = @"BSBlockSentinel.m";
      v30 = 1024;
      v31 = 88;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v19 = v15;
    qword_1EAD33B00 = [v15 UTF8String];
    __break(0);
    JUMPOUT(0x18FF624A8);
  }

  v11 = [BSBlockSentinel alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__BSBlockSentinel_sentinelWithQueue_signalCount_completion___block_invoke;
  v20[3] = &unk_1E72CBA20;
  v12 = completionCopy;
  v21 = v12;
  v13 = [(BSBlockSentinel *)&v11->super.isa initWithCount:count queue:queueCopy block:v20];

  return v13;
}

void __60__BSBlockSentinel_sentinelWithQueue_signalCount_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isComplete])
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

+ (id)sentinelWithQueue:(id)queue signalHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v7 = [[BSBlockSentinel alloc] initWithCount:queueCopy queue:handlerCopy block:?];

  return v7;
}

+ (id)sentinelWithQueue:(id)queue signalCount:(unint64_t)count signalHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  if (!count)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v19 = v14;
      v20 = 2114;
      v21 = v16;
      v22 = 2048;
      selfCopy = self;
      v24 = 2114;
      v25 = @"BSBlockSentinel.m";
      v26 = 1024;
      v27 = 103;
      v28 = 2114;
      v29 = v13;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    qword_1EAD33B00 = [v13 UTF8String];
    __break(0);
    JUMPOUT(0x18FF627BCLL);
  }

  v11 = [[BSBlockSentinel alloc] initWithCount:count queue:queueCopy block:handlerCopy];

  return v11;
}

+ (id)sentinelWithExceptionReason:(id)reason
{
  v3 = [self sentinelWithSignalCount:1 exceptionReason:reason];

  return v3;
}

+ (id)sentinelWithSignalCount:(unint64_t)count exceptionReason:(id)reason
{
  v31 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!count)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v20 = v13;
      v21 = 2114;
      v22 = v15;
      v23 = 2048;
      selfCopy = self;
      v25 = 2114;
      v26 = @"BSBlockSentinel.m";
      v27 = 1024;
      v28 = 112;
      v29 = 2114;
      v30 = v12;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    qword_1EAD33B00 = [v12 UTF8String];
    __break(0);
    JUMPOUT(0x18FF62A44);
  }

  v8 = [self alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__BSBlockSentinel_sentinelWithSignalCount_exceptionReason___block_invoke;
  v17[3] = &unk_1E72CBA48;
  v9 = reasonCopy;
  v18 = v9;
  v10 = [(BSBlockSentinel *)v8 initWithCount:count queue:0 block:v17];

  return v10;
}

void __59__BSBlockSentinel_sentinelWithSignalCount_exceptionReason___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFailed])
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"sentinel deallocated without being signaled";
    }

    v5 = v4;
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@", v4}];
  }
}

+ (id)sentinelWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [[BSBlockSentinel alloc] initWithCount:0 queue:completionCopy block:?];

  return v4;
}

+ (id)sentinelWithSignalCount:(unint64_t)count signalHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!count)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"count > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = @"BSBlockSentinel.m";
      v23 = 1024;
      v24 = 129;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF62D5CLL);
  }

  v8 = [[BSBlockSentinel alloc] initWithCount:count queue:0 block:handlerCopy];

  return v8;
}

+ (id)sentinelWithSignalHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [[BSBlockSentinel alloc] initWithCount:0 queue:handlerCopy block:?];

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v4 = [identifierCopy copy];
  lock_identifier = self->_lock_identifier;
  self->_lock_identifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)signalWithContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  explicitQueue = self->_explicitQueue;
  if (explicitQueue)
  {
    BSDispatchQueueAssert(explicitQueue);
  }

  os_unfair_lock_lock(&self->_lock);
  lock_expectedSignals = self->_lock_expectedSignals;
  v8 = self->_lock_signalCount + 1;
  self->_lock_signalCount = v8;
  v9 = BSLogCommon();
  v10 = v9;
  if (lock_expectedSignals && v8 > lock_expectedSignals)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v26 = self->_lock_expectedSignals;
      lock_identifier = self->_lock_identifier;
      lock_signalCount = self->_lock_signalCount;
      v29 = 138543874;
      v30 = lock_identifier;
      v31 = 2048;
      v32 = lock_signalCount;
      v33 = 2048;
      v34 = v26;
      _os_log_error_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_ERROR, "[BSBlockSentinel:%{public}@] unexpected signal! %lu of %lu", &v29, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v23 = self->_lock_expectedSignals;
      v22 = self->_lock_identifier;
      v24 = self->_lock_signalCount;
      v29 = 138412802;
      v30 = v22;
      v31 = 2048;
      v32 = v24;
      v33 = 2048;
      v34 = v23;
      _os_log_debug_impl(&dword_18FEF6000, v10, OS_LOG_TYPE_DEBUG, "[BSBlockSentinel:%@] signaled! %lu of %lu", &v29, 0x20u);
    }

    v13 = self->_lock_signalCount;
    v12 = self->_lock_expectedSignals;
    v11 = v13 == v12;
    v14 = MEMORY[0x193AE5AC0](self->_lock_handler);
    v15 = v13 != v12;
    if (contextCopy)
    {
      v15 = 0;
    }

    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v16 = objc_alloc_init(BSBlockSentinelSignalContext);
      v17 = v16;
      if (v16)
      {
        v16->_complete = v13 == v12;
        v18 = contextCopy;
        objc_storeStrong(&v17->_context, context);
      }

      else
      {
        v28 = contextCopy;
      }

      v19 = v17;
    }

    if (v13 == v12)
    {
      lock_handler = self->_lock_handler;
      self->_lock_handler = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    if (v14)
    {
      (v14)[2](v14, v19);
    }
  }

  return v11;
}

@end