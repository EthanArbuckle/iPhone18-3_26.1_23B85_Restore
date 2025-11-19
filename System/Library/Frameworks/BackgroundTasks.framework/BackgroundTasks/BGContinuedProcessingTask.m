@interface BGContinuedProcessingTask
- (NSString)description;
- (id)_initWithIdentifier:(id)a3 activity:(id)a4;
- (id)expirationHandler;
- (id)expirationHandlerWithReason;
- (void)_callExpirationHandlerWithReason:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setExpirationHandler:(id)a3;
- (void)setExpirationHandlerWithReason:(id)a3;
- (void)updateTitle:(id)a3 subtitle:(id)a4;
@end

@implementation BGContinuedProcessingTask

- (id)_initWithIdentifier:(id)a3 activity:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = BGContinuedProcessingTask;
  v7 = [(BGTask *)&v21 _initWithIdentifier:a3 activity:v6];
  if (v7)
  {
    v8 = [v6 continuedProcessingWrapper];
    v9 = [v8 title];
    v10 = v7[10];
    v7[10] = v9;

    v11 = [v6 continuedProcessingWrapper];
    v12 = [v11 subtitle];
    v13 = v7[11];
    v7[11] = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696AE38]);
    v15 = v7[8];
    v7[8] = v14;

    v16 = os_log_create("com.apple.BackgroundTasks", "BGContinuedProcessingTask");
    v17 = v7[12];
    v7[12] = v16;

    v18 = v7[8];
    v19 = NSStringFromSelector(sel_fractionCompleted);
    [v18 addObserver:v7 forKeyPath:v19 options:4 context:BGContinuedProcessingTaskProgressObserverContext];
  }

  return v7;
}

- (void)updateTitle:(id)a3 subtitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  obj = self;
  objc_sync_enter(obj);
  v8 = [(BGContinuedProcessingTask *)obj _descriptionUpdateHandler];

  if (v8)
  {
    v9 = [(BGContinuedProcessingTask *)obj _descriptionUpdateHandler];
    (v9)[2](v9, v6, v7);
  }

  title = obj->_title;
  obj->_title = v6;
  v11 = v6;

  subtitle = obj->_subtitle;
  obj->_subtitle = v7;

  objc_sync_exit(obj);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (BGContinuedProcessingTaskProgressObserverContext == a6)
  {
    v16 = [(BGContinuedProcessingTask *)self _progressHandler];

    if (v16)
    {
      v17 = [(BGContinuedProcessingTask *)self _progressHandler];
      (v17)[2](v17, self->_progress);
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v14 = log;
      v15 = [(BGTask *)self identifier];
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = a6;
      _os_log_error_impl(&dword_1AC80E000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Received KVO update for unknown context: (key-path: %@, context: %@)", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_callExpirationHandlerWithReason:(int64_t)a3
{
  v5 = [(BGContinuedProcessingTask *)self expirationHandlerWithReason];
  if (v5)
  {
    [(BGContinuedProcessingTask *)self setExpirationHandlerWithReason:0];
    v5[2](v5, a3);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BGContinuedProcessingTask;
    [(BGTask *)&v6 _callExpirationHandlerWithReason:a3];
  }
}

- (void)setExpirationHandler:(id)a3
{
  v5 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (v5)
  {
    v6 = [(BGContinuedProcessingTask *)self expirationHandlerWithReason];

    if (v6)
    {
      [(BGContinuedProcessingTask *)a2 setExpirationHandler:?];
    }
  }

  v7.receiver = self;
  v7.super_class = BGContinuedProcessingTask;
  [(BGTask *)&v7 setExpirationHandler:v5];
  os_unfair_recursive_lock_unlock();
}

- (id)expirationHandler
{
  os_unfair_recursive_lock_lock_with_options();
  v6.receiver = self;
  v6.super_class = BGContinuedProcessingTask;
  v3 = [(BGTask *)&v6 expirationHandler];
  os_unfair_recursive_lock_unlock();
  v4 = MEMORY[0x1B26EAFA0](v3);

  return v4;
}

- (void)setExpirationHandlerWithReason:(id)a3
{
  v8 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (v8)
  {
    v5 = [(BGContinuedProcessingTask *)self expirationHandler];

    if (v5)
    {
      [(BGContinuedProcessingTask *)a2 setExpirationHandlerWithReason:?];
    }
  }

  v6 = MEMORY[0x1B26EAFA0](v8);
  expirationHandlerWithReason = self->_expirationHandlerWithReason;
  self->_expirationHandlerWithReason = v6;

  os_unfair_recursive_lock_unlock();
}

- (id)expirationHandlerWithReason
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = MEMORY[0x1B26EAFA0](self->_expirationHandlerWithReason);
  os_unfair_recursive_lock_unlock();
  v4 = MEMORY[0x1B26EAFA0](v3);

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(BGTask *)self identifier];
  v5 = [(BGContinuedProcessingTask *)self title];
  v6 = [v3 stringWithFormat:@"<BGContinuedProcessingTask: %@ (%@)>", v4, v5];

  return v6;
}

- (void)setExpirationHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BGTask.m" lineNumber:391 description:@"Only a single expiration handler may be set"];
}

- (void)setExpirationHandlerWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BGTask.m" lineNumber:411 description:@"Only a single expiration handler may be set"];
}

@end