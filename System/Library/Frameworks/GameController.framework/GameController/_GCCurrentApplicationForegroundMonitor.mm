@interface _GCCurrentApplicationForegroundMonitor
+ (id)sharedInstance;
+ (void)initialize;
- (_GCCurrentApplicationForegroundMonitor)init;
- (void)CBApplicationDidBecomeActive;
- (void)CBApplicationWillResignActive;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer notifyCurrent:(BOOL)current;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation _GCCurrentApplicationForegroundMonitor

- (void)CBApplicationDidBecomeActive
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = _os_activity_create(&dword_1D2CD5000, "Notify ApplicationDidBecomeActive", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableSet *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  [(_GCCurrentApplicationForegroundMonitor *)selfCopy willChangeValueForKey:@"appInBackground"];
  atomic_store(0, &selfCopy->_appInBackground);
  [(_GCCurrentApplicationForegroundMonitor *)selfCopy didChangeValueForKey:@"appInBackground"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v9++) CBApplicationDidBecomeActive];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"GCApplicationDidBecomeActiveNotification" object:selfCopy userInfo:0];

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)CBApplicationWillResignActive
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = _os_activity_create(&dword_1D2CD5000, "Notify ApplicationWillResignActive", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableSet *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  [(_GCCurrentApplicationForegroundMonitor *)selfCopy willChangeValueForKey:@"appInBackground"];
  atomic_store(1u, &selfCopy->_appInBackground);
  [(_GCCurrentApplicationForegroundMonitor *)selfCopy didChangeValueForKey:@"appInBackground"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v9++) CBApplicationWillResignActive];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"GCApplicationWillResignActiveNotification" object:selfCopy userInfo:0];

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    LoadGameControllerUIFramework(1);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_GCCurrentApplicationForegroundMonitor sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

- (_GCCurrentApplicationForegroundMonitor)init
{
  v12.receiver = self;
  v12.super_class = _GCCurrentApplicationForegroundMonitor;
  v2 = [(_GCCurrentApplicationForegroundMonitor *)&v12 init];
  v3 = objc_opt_new();
  observers = v2->_observers;
  v2->_observers = v3;

  [(_GCCurrentApplicationForegroundMonitor *)v2 _ui_init:&v2->_appInBackground];
  objc_initWeak(&location, v2);
  v5 = dispatch_get_global_queue(17, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46___GCCurrentApplicationForegroundMonitor_init__block_invoke;
  v9[3] = &unk_1E8418DD0;
  objc_copyWeak(&v10, &location);
  v6 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __gc_state_add_dictionary_handler_block_invoke;
  v16 = &unk_1E8418DF8;
  v18 = 4;
  v17 = v6;
  v7 = os_state_add_handler();

  v2->_state = v7;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return v2;
}

- (void)dealloc
{
  state = self->_state;
  os_state_remove_handler();
  v4.receiver = self;
  v4.super_class = _GCCurrentApplicationForegroundMonitor;
  [(_GCCurrentApplicationForegroundMonitor *)&v4 dealloc];
}

- (void)addObserver:(id)observer notifyCurrent:(BOOL)current
{
  currentCopy = current;
  observerCopy = observer;
  if (currentCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(_GCCurrentApplicationForegroundMonitor *)self addObserver:observerCopy];
      if ([(_GCCurrentApplicationForegroundMonitor *)self isAppInBackground])
      {
        [observerCopy CBApplicationWillResignActive];
      }

      else
      {
        [observerCopy CBApplicationDidBecomeActive];
      }
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68___GCCurrentApplicationForegroundMonitor_addObserver_notifyCurrent___block_invoke;
      v7[3] = &unk_1E8418C50;
      v7[4] = self;
      v8 = observerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }

  else
  {
    [(_GCCurrentApplicationForegroundMonitor *)self addObserver:observerCopy];
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

@end