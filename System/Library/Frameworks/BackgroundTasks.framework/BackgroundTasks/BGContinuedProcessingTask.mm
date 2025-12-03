@interface BGContinuedProcessingTask
- (NSString)description;
- (id)_initWithIdentifier:(id)identifier activity:(id)activity;
- (id)expirationHandler;
- (id)expirationHandlerWithReason;
- (void)_callExpirationHandlerWithReason:(int64_t)reason;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setExpirationHandler:(id)handler;
- (void)setExpirationHandlerWithReason:(id)reason;
- (void)updateTitle:(id)title subtitle:(id)subtitle;
@end

@implementation BGContinuedProcessingTask

- (id)_initWithIdentifier:(id)identifier activity:(id)activity
{
  activityCopy = activity;
  v21.receiver = self;
  v21.super_class = BGContinuedProcessingTask;
  v7 = [(BGTask *)&v21 _initWithIdentifier:identifier activity:activityCopy];
  if (v7)
  {
    continuedProcessingWrapper = [activityCopy continuedProcessingWrapper];
    title = [continuedProcessingWrapper title];
    v10 = v7[10];
    v7[10] = title;

    continuedProcessingWrapper2 = [activityCopy continuedProcessingWrapper];
    subtitle = [continuedProcessingWrapper2 subtitle];
    v13 = v7[11];
    v7[11] = subtitle;

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

- (void)updateTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  obj = self;
  objc_sync_enter(obj);
  _descriptionUpdateHandler = [(BGContinuedProcessingTask *)obj _descriptionUpdateHandler];

  if (_descriptionUpdateHandler)
  {
    _descriptionUpdateHandler2 = [(BGContinuedProcessingTask *)obj _descriptionUpdateHandler];
    (_descriptionUpdateHandler2)[2](_descriptionUpdateHandler2, titleCopy, subtitleCopy);
  }

  title = obj->_title;
  obj->_title = titleCopy;
  v11 = titleCopy;

  subtitle = obj->_subtitle;
  obj->_subtitle = subtitleCopy;

  objc_sync_exit(obj);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (BGContinuedProcessingTaskProgressObserverContext == context)
  {
    _progressHandler = [(BGContinuedProcessingTask *)self _progressHandler];

    if (_progressHandler)
    {
      _progressHandler2 = [(BGContinuedProcessingTask *)self _progressHandler];
      (_progressHandler2)[2](_progressHandler2, self->_progress);
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v14 = log;
      identifier = [(BGTask *)self identifier];
      v19 = 138543874;
      v20 = identifier;
      v21 = 2112;
      v22 = pathCopy;
      v23 = 2112;
      contextCopy = context;
      _os_log_error_impl(&dword_1AC80E000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Received KVO update for unknown context: (key-path: %@, context: %@)", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_callExpirationHandlerWithReason:(int64_t)reason
{
  expirationHandlerWithReason = [(BGContinuedProcessingTask *)self expirationHandlerWithReason];
  if (expirationHandlerWithReason)
  {
    [(BGContinuedProcessingTask *)self setExpirationHandlerWithReason:0];
    expirationHandlerWithReason[2](expirationHandlerWithReason, reason);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BGContinuedProcessingTask;
    [(BGTask *)&v6 _callExpirationHandlerWithReason:reason];
  }
}

- (void)setExpirationHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_recursive_lock_lock_with_options();
  if (handlerCopy)
  {
    expirationHandlerWithReason = [(BGContinuedProcessingTask *)self expirationHandlerWithReason];

    if (expirationHandlerWithReason)
    {
      [(BGContinuedProcessingTask *)a2 setExpirationHandler:?];
    }
  }

  v7.receiver = self;
  v7.super_class = BGContinuedProcessingTask;
  [(BGTask *)&v7 setExpirationHandler:handlerCopy];
  os_unfair_recursive_lock_unlock();
}

- (id)expirationHandler
{
  os_unfair_recursive_lock_lock_with_options();
  v6.receiver = self;
  v6.super_class = BGContinuedProcessingTask;
  expirationHandler = [(BGTask *)&v6 expirationHandler];
  os_unfair_recursive_lock_unlock();
  v4 = MEMORY[0x1B26EAFA0](expirationHandler);

  return v4;
}

- (void)setExpirationHandlerWithReason:(id)reason
{
  reasonCopy = reason;
  os_unfair_recursive_lock_lock_with_options();
  if (reasonCopy)
  {
    expirationHandler = [(BGContinuedProcessingTask *)self expirationHandler];

    if (expirationHandler)
    {
      [(BGContinuedProcessingTask *)a2 setExpirationHandlerWithReason:?];
    }
  }

  v6 = MEMORY[0x1B26EAFA0](reasonCopy);
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
  identifier = [(BGTask *)self identifier];
  title = [(BGContinuedProcessingTask *)self title];
  v6 = [v3 stringWithFormat:@"<BGContinuedProcessingTask: %@ (%@)>", identifier, title];

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