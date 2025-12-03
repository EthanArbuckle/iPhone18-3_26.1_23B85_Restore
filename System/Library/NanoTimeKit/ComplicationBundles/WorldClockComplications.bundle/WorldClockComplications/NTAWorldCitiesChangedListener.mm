@interface NTAWorldCitiesChangedListener
+ (id)sharedListener;
- (id)addObserverOnQueue:(id)queue usingBlock:(id)block;
- (void)_notifyPrefsChanged;
- (void)activate;
- (void)deactivate;
- (void)removeObserver:(id)observer;
@end

@implementation NTAWorldCitiesChangedListener

+ (id)sharedListener
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BDD3088;
  block[3] = &unk_278B99A00;
  block[4] = self;
  if (qword_27E1C78D8 != -1)
  {
    dispatch_once(&qword_27E1C78D8, block);
  }

  v2 = qword_27E1C78E0;

  return v2;
}

- (id)addObserverOnQueue:(id)queue usingBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = [[NTAWorldClockPreferencesListenerObserver alloc] initWithQueue:queueCopy block:blockCopy];
    if (([(NSMutableSet *)self->_observers containsObject:v8]& 1) == 0)
    {
      observers = self->_observers;
      if (!observers)
      {
        v10 = objc_opt_new();
        [(NTAWorldCitiesChangedListener *)self setObservers:v10];

        observers = self->_observers;
      }

      [(NSMutableSet *)observers addObject:v8];
      if (!self->_active)
      {
        [(NTAWorldCitiesChangedListener *)self activate];
      }
    }
  }

  else
  {
    v11 = NTALogForCategory(5uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_23BDD86A4(self, v11);
    }

    v8 = 0;
  }

  return v8;
}

- (void)removeObserver:(id)observer
{
  [(NSMutableSet *)self->_observers removeObject:observer];
  if (![(NSMutableSet *)self->_observers count])
  {

    MEMORY[0x2821F9670](self, sel_deactivate);
  }
}

- (void)activate
{
  [(NTAWorldCitiesChangedListener *)self setActive:1];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_23BDD32C0, @"NanoMobileTimerWorldClockPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, 0, sub_23BDD32C0, @"com.apple.mobiletimer.user-preferences-and-local-notifications-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v4, 0, sub_23BDD32C0, @"com.apple.mobiletimer.user-preferences-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)deactivate
{
  [(NTAWorldCitiesChangedListener *)self setActive:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"NanoMobileTimerWorldClockPreferencesChangedNotification", 0);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, 0, @"com.apple.mobiletimer.user-preferences-and-local-notifications-changed", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(v4, 0, @"com.apple.mobiletimer.user-preferences-changed", 0);
}

- (void)_notifyPrefsChanged
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_active)
  {
    mEMORY[0x277D29758] = [MEMORY[0x277D29758] sharedManager];
    [mEMORY[0x277D29758] loadCities];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_observers;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          queue = [v9 queue];

          if (queue)
          {
            queue2 = [v9 queue];
            block = [v9 block];
            [queue2 addOperationWithBlock:block];
          }

          else
          {
            queue2 = [v9 block];
            queue2[2]();
          }
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end