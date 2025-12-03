@interface VOTLockStateManager
+ (id)sharedInstance;
- (VOTLockStateManager)init;
- (void)_notifyObserversLockStateDidChange;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation VOTLockStateManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F858;
  block[3] = &unk_1001C78B0;
  block[4] = self;
  if (qword_1001FE9E0 != -1)
  {
    dispatch_once(&qword_1001FE9E0, block);
  }

  v2 = qword_1001FE9E8;

  return v2;
}

- (VOTLockStateManager)init
{
  v9.receiver = self;
  v9.super_class = VOTLockStateManager;
  v2 = [(VOTLockStateManager *)&v9 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    lockStateObservers = v2->_lockStateObservers;
    v2->_lockStateObservers = v3;

    v5 = objc_alloc_init(NSLock);
    lockStateObserversLock = v2->_lockStateObserversLock;
    v2->_lockStateObserversLock = v5;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10000F93C, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDrop);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = VOTLockStateManager;
  [(VOTLockStateManager *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    lockStateObserversLock = self->_lockStateObserversLock;
    observerCopy = observer;
    [(NSLock *)lockStateObserversLock lock];
    [(NSHashTable *)self->_lockStateObservers addObject:observerCopy];

    v6 = self->_lockStateObserversLock;

    [(NSLock *)v6 unlock];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    lockStateObserversLock = self->_lockStateObserversLock;
    observerCopy = observer;
    [(NSLock *)lockStateObserversLock lock];
    [(NSHashTable *)self->_lockStateObservers removeObject:observerCopy];

    v6 = self->_lockStateObserversLock;

    [(NSLock *)v6 unlock];
  }
}

- (void)_notifyObserversLockStateDidChange
{
  [(NSLock *)self->_lockStateObserversLock lock];
  allObjects = [(NSHashTable *)self->_lockStateObservers allObjects];
  [(NSLock *)self->_lockStateObserversLock unlock];
  isLocked = [(VOTLockStateManager *)self isLocked];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) lockStateDidChange:{isLocked, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end