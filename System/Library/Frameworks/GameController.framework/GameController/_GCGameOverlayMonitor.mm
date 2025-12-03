@interface _GCGameOverlayMonitor
+ (BOOL)currentProcessIsOverlayUI;
+ (id)sharedInstance;
- (_GCGameOverlayMonitor)init;
- (void)_refreshState;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer notifyCurrent:(BOOL)current;
- (void)dealloc;
- (void)init;
- (void)removeObserver:(id)observer;
@end

@implementation _GCGameOverlayMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[_GCGameOverlayMonitor sharedInstance];
  }

  v3 = sharedInstance_Shared_1;

  return v3;
}

- (_GCGameOverlayMonitor)init
{
  v19.receiver = self;
  v19.super_class = _GCGameOverlayMonitor;
  v2 = [(_GCGameOverlayMonitor *)&v19 init];
  v3 = objc_opt_new();
  observers = v2->_observers;
  v2->_observers = v3;

  objc_initWeak(&location, v2);
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __29___GCGameOverlayMonitor_init__block_invoke;
  handler[3] = &unk_1E8419C10;
  objc_copyWeak(&v17, &location);
  v7 = notify_register_dispatch("com.apple.GameOverlayUI.dashboardVisibilityChanged", &v2->_overlayPresentationObserver, v5, handler);

  if (v7)
  {
    if (gc_isInternalBuild())
    {
      v13 = getGCLogger();
      [(_GCGameOverlayMonitor *)v13 init];
    }

    v11 = 0;
  }

  else
  {
    v8 = dispatch_get_global_queue(17, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __29___GCGameOverlayMonitor_init__block_invoke_89;
    v14[3] = &unk_1E8418DD0;
    objc_copyWeak(&v15, &location);
    v9 = v14;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __gc_state_add_dictionary_handler_block_invoke_1;
    v23 = &unk_1E8418DF8;
    v25 = 4;
    v24 = v9;
    v10 = os_state_add_handler();

    v2->_state = v10;
    v11 = v2;
    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

- (void)dealloc
{
  state = self->_state;
  os_state_remove_handler();
  overlayPresentationObserver = self->_overlayPresentationObserver;
  if (overlayPresentationObserver)
  {
    notify_cancel(overlayPresentationObserver);
    self->_overlayPresentationObserver = 0;
  }

  v5.receiver = self;
  v5.super_class = _GCGameOverlayMonitor;
  [(_GCGameOverlayMonitor *)&v5 dealloc];
}

- (void)addObserver:(id)observer notifyCurrent:(BOOL)current
{
  currentCopy = current;
  observerCopy = observer;
  if (currentCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(_GCGameOverlayMonitor *)self addObserver:observerCopy];
      [observerCopy gameOverlayPresentationChanged:{-[_GCGameOverlayMonitor isOverlayPresented](self, "isOverlayPresented")}];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51___GCGameOverlayMonitor_addObserver_notifyCurrent___block_invoke;
      v7[3] = &unk_1E8418C50;
      v7[4] = self;
      v8 = observerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }

  else
  {
    [(_GCGameOverlayMonitor *)self addObserver:observerCopy];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_observers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_observers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

+ (BOOL)currentProcessIsOverlayUI
{
  if (currentProcessIsOverlayUI_onceToken != -1)
  {
    +[_GCGameOverlayMonitor currentProcessIsOverlayUI];
  }

  return currentProcessIsOverlayUI_IsGameOverlayUI;
}

- (void)_refreshState
{
  v10 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = self[5];
    if (v2)
    {
      state64 = 0;
      state = notify_get_state(v2, &state64);
      if (state)
      {
        v5 = state;
        if (gc_isInternalBuild())
        {
          v6 = getGCLogger();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v9 = v5;
            _os_log_error_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_ERROR, "Failed load 'dashboardVisibilityChanged' notification state: %#x", buf, 8u);
          }
        }
      }

      else
      {
        [self setOverlayPresented:state64 != 0];
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_error_impl(&dword_1D2CD5000, self, OS_LOG_TYPE_ERROR, "Failed to register for 'dashboardVisibilityChanged' notification: %#x", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end