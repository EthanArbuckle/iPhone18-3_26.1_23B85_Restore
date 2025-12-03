@interface HKAsynchronousOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HKAsynchronousOperation)init;
- (HKAsynchronousOperation)initWithName:(id)name operationBlock:(id)block;
- (id)_isExecutingKeyPath;
- (id)_isFinishedKeyPath;
- (void)_operationDidFinish;
- (void)_operationDidStart;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation HKAsynchronousOperation

- (HKAsynchronousOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKAsynchronousOperation)initWithName:(id)name operationBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = HKAsynchronousOperation;
  v8 = [(HKAsynchronousOperation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(HKAsynchronousOperation *)v8 setName:nameCopy];
    v11 = [blockCopy copy];
    operationBlock = v9->_operationBlock;
    v9->_operationBlock = v11;

    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_finished = 0;
    v9->_executing = 0;
    _isExecutingKeyPath = [(HKAsynchronousOperation *)v9 _isExecutingKeyPath];
    [(HKAsynchronousOperation *)v9 addObserver:v9 forKeyPath:_isExecutingKeyPath options:3 context:HKAsynchronousOperationSelfObservingContext];
  }

  return v9;
}

uint64_t __32__HKAsynchronousOperation_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:*(a1 + 40)];
  [*(a1 + 32) willChangeValueForKey:*(a1 + 48)];
  os_unfair_lock_lock((*(a1 + 32) + 260));
  *(*(a1 + 32) + 257) = 1;
  *(*(a1 + 32) + 256) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 260));
  [*(a1 + 32) didChangeValueForKey:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 didChangeValueForKey:v3];
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock(&self->_lock);
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (void)setExecuting:(BOOL)executing
{
  os_unfair_lock_lock(&self->_lock);
  self->_executing = executing;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

- (void)setFinished:(BOOL)finished
{
  os_unfair_lock_lock(&self->_lock);
  self->_finished = finished;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (HKAsynchronousOperationSelfObservingContext == context)
  {
    v11 = *MEMORY[0x1E696A500];
    changeCopy = change;
    v13 = [changeCopy objectForKeyedSubscript:v11];
    bOOLValue = [v13 BOOLValue];

    v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    bOOLValue2 = [v15 BOOLValue];
    if (bOOLValue != bOOLValue2)
    {
      if (bOOLValue2)
      {

        [(HKAsynchronousOperation *)self _operationDidStart];
      }

      else
      {

        [(HKAsynchronousOperation *)self _operationDidFinish];
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HKAsynchronousOperation;
    changeCopy2 = change;
    [(HKAsynchronousOperation *)&v17 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

- (id)_isExecutingKeyPath
{
  if (self)
  {
    self = NSStringFromSelector(sel_isExecuting);
    v1 = vars8;
  }

  return self;
}

- (void)dealloc
{
  _isExecutingKeyPath = [(HKAsynchronousOperation *)self _isExecutingKeyPath];
  [(HKAsynchronousOperation *)self removeObserver:self forKeyPath:_isExecutingKeyPath context:HKAsynchronousOperationSelfObservingContext];

  v4.receiver = self;
  v4.super_class = HKAsynchronousOperation;
  [(HKAsynchronousOperation *)&v4 dealloc];
}

- (void)start
{
  _isExecutingKeyPath = [(HKAsynchronousOperation *)self _isExecutingKeyPath];
  _isFinishedKeyPath = [(HKAsynchronousOperation *)self _isFinishedKeyPath];
  [(HKAsynchronousOperation *)self willChangeValueForKey:_isExecutingKeyPath];
  [(HKAsynchronousOperation *)self setExecuting:1];
  [(HKAsynchronousOperation *)self didChangeValueForKey:_isExecutingKeyPath];
  operationBlock = self->_operationBlock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__HKAsynchronousOperation_start__block_invoke;
  v9[3] = &unk_1E7376640;
  v9[4] = self;
  v10 = _isExecutingKeyPath;
  v11 = _isFinishedKeyPath;
  v6 = operationBlock[2];
  v7 = _isFinishedKeyPath;
  v8 = _isExecutingKeyPath;
  v6(operationBlock, v9);
}

- (id)_isFinishedKeyPath
{
  if (self)
  {
    self = NSStringFromSelector(sel_isFinished);
    v1 = vars8;
  }

  return self;
}

- (void)_operationDidStart
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = _HKLogPersistedSignposts();
    v3 = os_signpost_id_make_with_pointer(v2, self);

    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    v5 = OUTLINED_FUNCTION_6(v4);

    if (v5)
    {
      v6 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_6(v6))
      {
        v13 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_INFO, "%{public}@: Started.", &v13, 0xCu);
      }
    }

    _HKInitializeLogging();
    v7 = _HKLogPersistedSignposts();
    v8 = os_signpost_enabled(v7);

    if (v8)
    {
      v9 = _HKLogPersistedSignposts();
      v10 = v9;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        name = [(CFAbsoluteTime *)self name];
        v13 = 138543362;
        selfCopy = name;
        _os_signpost_emit_with_name_impl(&dword_19197B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v3, "HKAsynchronousOperation", "name=%{public}@", &v13, 0xCu);
      }
    }

    self[33] = CFAbsoluteTimeGetCurrent();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_operationDidFinish
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = _HKLogPersistedSignposts();
    v3 = os_signpost_id_make_with_pointer(v2, self);

    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    v5 = OUTLINED_FUNCTION_6(v4);

    if (v5)
    {
      v6 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_6(v6))
      {
        v7 = CFAbsoluteTimeGetCurrent() - self[33];
        v14 = 138543618;
        selfCopy = self;
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_19197B000, v2, OS_LOG_TYPE_INFO, "%{public}@: Stopped after %0.3lfs.", &v14, 0x16u);
      }
    }

    _HKInitializeLogging();
    v8 = _HKLogPersistedSignposts();
    v9 = os_signpost_enabled(v8);

    if (v9)
    {
      v10 = _HKLogPersistedSignposts();
      v11 = v10;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        name = [self name];
        v14 = 138543362;
        selfCopy = name;
        _os_signpost_emit_with_name_impl(&dword_19197B000, v11, OS_SIGNPOST_INTERVAL_END, v3, "HKAsynchronousOperation", "name=%{public}@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end