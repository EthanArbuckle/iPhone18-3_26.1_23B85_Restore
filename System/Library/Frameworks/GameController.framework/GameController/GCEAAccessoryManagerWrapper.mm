@interface GCEAAccessoryManagerWrapper
+ (id)observers;
+ (void)registerForLocalNotificationsWithObserver:(id)observer;
+ (void)unregisterForLocalNotificationsWithObserver:(id)observer;
@end

@implementation GCEAAccessoryManagerWrapper

+ (id)observers
{
  if (observers_onceToken != -1)
  {
    +[GCEAAccessoryManagerWrapper observers];
  }

  v3 = observers__observers;

  return v3;
}

void __40__GCEAAccessoryManagerWrapper_observers__block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = observers__observers;
  observers__observers = v0;
}

+ (void)registerForLocalNotificationsWithObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[GCEAAccessoryManagerWrapper observers];
  v6 = [v5 containsObject:observerCopy];

  if ((v6 & 1) == 0)
  {
    v7 = +[GCEAAccessoryManagerWrapper observers];
    [v7 addObject:observerCopy];

    v8 = +[GCEAAccessoryManagerWrapper observers];
    v9 = [v8 count];

    if (v9)
    {
      mEMORY[0x1E6966DA0] = [MEMORY[0x1E6966DA0] sharedAccessoryManager];
      [mEMORY[0x1E6966DA0] registerForLocalNotifications];
    }
  }

  objc_sync_exit(selfCopy);
}

+ (void)unregisterForLocalNotificationsWithObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[GCEAAccessoryManagerWrapper observers];
  v6 = [v5 containsObject:observerCopy];

  if (v6)
  {
    v7 = +[GCEAAccessoryManagerWrapper observers];
    [v7 removeObject:observerCopy];
  }

  v8 = +[GCEAAccessoryManagerWrapper observers];
  allObjects = [v8 allObjects];
  v10 = [allObjects count];

  if (!v10)
  {
    mEMORY[0x1E6966DA0] = [MEMORY[0x1E6966DA0] sharedAccessoryManager];
    [mEMORY[0x1E6966DA0] unregisterForLocalNotifications];
  }

  objc_sync_exit(selfCopy);
}

@end