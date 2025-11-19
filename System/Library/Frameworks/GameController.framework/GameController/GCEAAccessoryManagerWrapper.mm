@interface GCEAAccessoryManagerWrapper
+ (id)observers;
+ (void)registerForLocalNotificationsWithObserver:(id)a3;
+ (void)unregisterForLocalNotificationsWithObserver:(id)a3;
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

+ (void)registerForLocalNotificationsWithObserver:(id)a3
{
  v11 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = +[GCEAAccessoryManagerWrapper observers];
  v6 = [v5 containsObject:v11];

  if ((v6 & 1) == 0)
  {
    v7 = +[GCEAAccessoryManagerWrapper observers];
    [v7 addObject:v11];

    v8 = +[GCEAAccessoryManagerWrapper observers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [MEMORY[0x1E6966DA0] sharedAccessoryManager];
      [v10 registerForLocalNotifications];
    }
  }

  objc_sync_exit(v4);
}

+ (void)unregisterForLocalNotificationsWithObserver:(id)a3
{
  v12 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = +[GCEAAccessoryManagerWrapper observers];
  v6 = [v5 containsObject:v12];

  if (v6)
  {
    v7 = +[GCEAAccessoryManagerWrapper observers];
    [v7 removeObject:v12];
  }

  v8 = +[GCEAAccessoryManagerWrapper observers];
  v9 = [v8 allObjects];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [MEMORY[0x1E6966DA0] sharedAccessoryManager];
    [v11 unregisterForLocalNotifications];
  }

  objc_sync_exit(v4);
}

@end