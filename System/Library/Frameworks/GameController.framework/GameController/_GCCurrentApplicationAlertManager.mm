@interface _GCCurrentApplicationAlertManager
+ (id)sharedInstance;
- (_GCCurrentApplicationAlertManager)init;
- (void)addObserver:(id)observer;
- (void)addObserver:(id)observer notifyCurrent:(BOOL)current;
- (void)applicationDidDismissAlert;
- (void)applicationDidPresentAlert;
- (void)removeObserver:(id)observer;
@end

@implementation _GCCurrentApplicationAlertManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[_GCCurrentApplicationAlertManager sharedInstance];
  }

  v3 = sharedInstance_Shared_5;

  return v3;
}

- (_GCCurrentApplicationAlertManager)init
{
  v6.receiver = self;
  v6.super_class = _GCCurrentApplicationAlertManager;
  v2 = [(_GCCurrentApplicationAlertManager *)&v6 init];
  v3 = objc_opt_new();
  observers = v2->_observers;
  v2->_observers = v3;

  atomic_store(0, &v2->_alertPresentationCount);
  return v2;
}

- (void)addObserver:(id)observer notifyCurrent:(BOOL)current
{
  currentCopy = current;
  observerCopy = observer;
  if (currentCopy)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(_GCCurrentApplicationAlertManager *)self addObserver:observerCopy];
      [observerCopy alertVisibilityDidChange:{-[_GCCurrentApplicationAlertManager isAlertPresented](self, "isAlertPresented")}];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __63___GCCurrentApplicationAlertManager_addObserver_notifyCurrent___block_invoke;
      v7[3] = &unk_1E8418C50;
      v7[4] = self;
      v8 = observerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }

  else
  {
    [(_GCCurrentApplicationAlertManager *)self addObserver:observerCopy];
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

- (void)applicationDidPresentAlert
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = _os_activity_create(&dword_1D2CD5000, "Alert Presented", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableSet *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  [(_GCCurrentApplicationAlertManager *)selfCopy willChangeValueForKey:@"alertPresented"];
  add = atomic_fetch_add(&selfCopy->_alertPresentationCount, 1uLL);
  [(_GCCurrentApplicationAlertManager *)selfCopy didChangeValueForKey:@"alertPresented"];
  if (!add)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v10++) alertVisibilityDidChange:{1, v12}];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)applicationDidDismissAlert
{
  v18 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = _os_activity_create(&dword_1D2CD5000, "Alert Dismissed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableSet *)selfCopy->_observers copy];
  objc_sync_exit(selfCopy);

  [(_GCCurrentApplicationAlertManager *)selfCopy willChangeValueForKey:@"alertPresented"];
  add = atomic_fetch_add(&selfCopy->_alertPresentationCount, 0xFFFFFFFFFFFFFFFFLL);
  [(_GCCurrentApplicationAlertManager *)selfCopy didChangeValueForKey:@"alertPresented"];
  if (add == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v10++) alertVisibilityDidChange:{0, v12}];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

@end