@interface HKAsynchronousOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HKAsynchronousOperation)init;
- (HKAsynchronousOperation)initWithName:(id)a3 operationBlock:(id)a4;
- (id)_isExecutingKeyPath;
- (id)_isFinishedKeyPath;
- (void)_operationDidFinish;
- (void)_operationDidStart;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
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

- (HKAsynchronousOperation)initWithName:(id)a3 operationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKAsynchronousOperation;
  v8 = [(HKAsynchronousOperation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(HKAsynchronousOperation *)v8 setName:v6];
    v11 = [v7 copy];
    operationBlock = v9->_operationBlock;
    v9->_operationBlock = v11;

    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_finished = 0;
    v9->_executing = 0;
    v13 = [(HKAsynchronousOperation *)v9 _isExecutingKeyPath];
    [(HKAsynchronousOperation *)v9 addObserver:v9 forKeyPath:v13 options:3 context:HKAsynchronousOperationSelfObservingContext];
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

- (void)setExecuting:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_executing = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFinished
{
  os_unfair_lock_lock(&self->_lock);
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

- (void)setFinished:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_finished = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (HKAsynchronousOperationSelfObservingContext == a6)
  {
    v11 = *MEMORY[0x1E696A500];
    v12 = a5;
    v13 = [v12 objectForKeyedSubscript:v11];
    v14 = [v13 BOOLValue];

    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    v16 = [v15 BOOLValue];
    if (v14 != v16)
    {
      if (v16)
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
    v10 = a5;
    [(HKAsynchronousOperation *)&v17 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

- (id)_isExecutingKeyPath
{
  if (a1)
  {
    a1 = NSStringFromSelector(sel_isExecuting);
    v1 = vars8;
  }

  return a1;
}

- (void)dealloc
{
  v3 = [(HKAsynchronousOperation *)self _isExecutingKeyPath];
  [(HKAsynchronousOperation *)self removeObserver:self forKeyPath:v3 context:HKAsynchronousOperationSelfObservingContext];

  v4.receiver = self;
  v4.super_class = HKAsynchronousOperation;
  [(HKAsynchronousOperation *)&v4 dealloc];
}

- (void)start
{
  v3 = [(HKAsynchronousOperation *)self _isExecutingKeyPath];
  v4 = [(HKAsynchronousOperation *)self _isFinishedKeyPath];
  [(HKAsynchronousOperation *)self willChangeValueForKey:v3];
  [(HKAsynchronousOperation *)self setExecuting:1];
  [(HKAsynchronousOperation *)self didChangeValueForKey:v3];
  operationBlock = self->_operationBlock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__HKAsynchronousOperation_start__block_invoke;
  v9[3] = &unk_1E7376640;
  v9[4] = self;
  v10 = v3;
  v11 = v4;
  v6 = operationBlock[2];
  v7 = v4;
  v8 = v3;
  v6(operationBlock, v9);
}

- (id)_isFinishedKeyPath
{
  if (a1)
  {
    a1 = NSStringFromSelector(sel_isFinished);
    v1 = vars8;
  }

  return a1;
}

- (void)_operationDidStart
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _HKLogPersistedSignposts();
    v3 = os_signpost_id_make_with_pointer(v2, a1);

    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    v5 = OUTLINED_FUNCTION_6(v4);

    if (v5)
    {
      v6 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_6(v6))
      {
        v13 = 138543362;
        v14 = a1;
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
        v11 = [(CFAbsoluteTime *)a1 name];
        v13 = 138543362;
        v14 = v11;
        _os_signpost_emit_with_name_impl(&dword_19197B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v3, "HKAsynchronousOperation", "name=%{public}@", &v13, 0xCu);
      }
    }

    a1[33] = CFAbsoluteTimeGetCurrent();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_operationDidFinish
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = _HKLogPersistedSignposts();
    v3 = os_signpost_id_make_with_pointer(v2, a1);

    _HKInitializeLogging();
    v4 = HKLogInfrastructure();
    v5 = OUTLINED_FUNCTION_6(v4);

    if (v5)
    {
      v6 = HKLogInfrastructure();
      if (OUTLINED_FUNCTION_6(v6))
      {
        v7 = CFAbsoluteTimeGetCurrent() - a1[33];
        v14 = 138543618;
        v15 = a1;
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
        v12 = [a1 name];
        v14 = 138543362;
        v15 = v12;
        _os_signpost_emit_with_name_impl(&dword_19197B000, v11, OS_SIGNPOST_INTERVAL_END, v3, "HKAsynchronousOperation", "name=%{public}@", &v14, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end