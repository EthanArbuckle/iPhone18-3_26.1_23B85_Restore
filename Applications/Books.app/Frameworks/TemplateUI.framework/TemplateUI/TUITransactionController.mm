@interface TUITransactionController
- (TUITransactionController)initWithQueue:(id)queue;
- (id)newDidUpdateObserver:(id)observer;
- (id)newWillUpdateObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)performUpdate:(id)update;
- (void)removeObserver:(id)observer;
- (void)setUpdateCallback:(id)callback;
- (void)transactionCoordinator:(id)coordinator didEndUpdateWithTransactionGroup:(id)group;
- (void)transactionCoordinator:(id)coordinator performUpdateForTransactionGroup:(id)group;
- (void)transactionCoordinator:(id)coordinator willBeginUpdateWithTransactionGroup:(id)group;
@end

@implementation TUITransactionController

- (void)setUpdateCallback:(id)callback
{
  callbackCopy = callback;
  if (callbackCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_78454;
    v5[3] = &unk_25FB80;
    objc_copyWeak(&v7, &location);
    v6 = callbackCopy;
    [(TUITransactionController *)self setUpdateBlock:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (id)newWillUpdateObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[_TUITransactionControllerJSObserver alloc] initWithWillUpdateValue:observerCopy didUpdateValue:0];

  [(TUITransactionController *)self addObserver:v5];
  return v5;
}

- (id)newDidUpdateObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[_TUITransactionControllerJSObserver alloc] initWithWillUpdateValue:0 didUpdateValue:observerCopy];

  [(TUITransactionController *)self addObserver:v5];
  return v5;
}

- (void)performUpdate:(id)update
{
  updateCopy = update;
  coordinator = [(TUITransactionController *)self coordinator];
  [coordinator performUpdateForTransactionGroup:updateCopy];
}

- (TUITransactionController)initWithQueue:(id)queue
{
  queueCopy = queue;
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

    v8 = [[_TUITransactionControllerWorkQueueContext alloc] initWithQueue:queueCopy];
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

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_accessLock);
    [(NSHashTable *)self->_observers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock(&self->_accessLock);
    [(NSHashTable *)self->_observers removeObject:observerCopy];

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)transactionCoordinator:(id)coordinator willBeginUpdateWithTransactionGroup:(id)group
{
  os_unfair_lock_lock(&self->_accessLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_accessLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allObjects;
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

- (void)transactionCoordinator:(id)coordinator didEndUpdateWithTransactionGroup:(id)group
{
  os_unfair_lock_lock(&self->_accessLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_accessLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allObjects;
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

- (void)transactionCoordinator:(id)coordinator performUpdateForTransactionGroup:(id)group
{
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    updateBlock[2](updateBlock, group);
  }

  else
  {
    [coordinator performUpdateForTransactionGroup:group];
  }
}

@end