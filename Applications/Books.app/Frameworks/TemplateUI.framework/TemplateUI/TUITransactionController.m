@interface TUITransactionController
- (TUITransactionController)initWithQueue:(id)a3;
- (id)newDidUpdateObserver:(id)a3;
- (id)newWillUpdateObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)performUpdate:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setUpdateCallback:(id)a3;
- (void)transactionCoordinator:(id)a3 didEndUpdateWithTransactionGroup:(id)a4;
- (void)transactionCoordinator:(id)a3 performUpdateForTransactionGroup:(id)a4;
- (void)transactionCoordinator:(id)a3 willBeginUpdateWithTransactionGroup:(id)a4;
@end

@implementation TUITransactionController

- (void)setUpdateCallback:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_78454;
    v5[3] = &unk_25FB80;
    objc_copyWeak(&v7, &location);
    v6 = v4;
    [(TUITransactionController *)self setUpdateBlock:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (id)newWillUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = [[_TUITransactionControllerJSObserver alloc] initWithWillUpdateValue:v4 didUpdateValue:0];

  [(TUITransactionController *)self addObserver:v5];
  return v5;
}

- (id)newDidUpdateObserver:(id)a3
{
  v4 = a3;
  v5 = [[_TUITransactionControllerJSObserver alloc] initWithWillUpdateValue:0 didUpdateValue:v4];

  [(TUITransactionController *)self addObserver:v5];
  return v5;
}

- (void)performUpdate:(id)a3
{
  v4 = a3;
  v5 = [(TUITransactionController *)self coordinator];
  [v5 performUpdateForTransactionGroup:v4];
}

- (TUITransactionController)initWithQueue:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TUITransactionController;
  v5 = [(TUITransactionController *)&v15 init];
  if (v5)
  {
    v5->_feedId.uniqueIdentifier = TUIFeedIdentifierGenerate();
    v6 = TUIDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = v5->_feedId.uniqueIdentifier;
      *buf = 134218242;
      v17 = uniqueIdentifier;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[fid:%lu] created %@", buf, 0x16u);
    }

    v8 = [[_TUITransactionControllerWorkQueueContext alloc] initWithQueue:v4];
    queueContext = v5->_queueContext;
    v5->_queueContext = v8;

    v10 = [[TUITransactionCoordinator alloc] initWithFeedId:v5->_feedId.uniqueIdentifier layoutQueueContext:v5->_queueContext delegate:v5];
    coordinator = v5->_coordinator;
    v5->_coordinator = v10;

    [(TUITransactionCoordinator *)v5->_coordinator setManuallyScheduleUpdates:1];
    v12 = [NSHashTable hashTableWithOptions:517];
    observers = v5->_observers;
    v5->_observers = v12;

    v5->_accessLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_accessLock);
    [(NSHashTable *)self->_observers addObject:v4];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_accessLock);
    [(NSHashTable *)self->_observers removeObject:v4];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)transactionCoordinator:(id)a3 willBeginUpdateWithTransactionGroup:(id)a4
{
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_accessLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) transactionControllerWillProcessUpdate:{self, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)transactionCoordinator:(id)a3 didEndUpdateWithTransactionGroup:(id)a4
{
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_accessLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) transactionControllerDidProcessUpdate:{self, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)transactionCoordinator:(id)a3 performUpdateForTransactionGroup:(id)a4
{
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    updateBlock[2](updateBlock, a4);
  }

  else
  {
    [a3 performUpdateForTransactionGroup:a4];
  }
}

@end