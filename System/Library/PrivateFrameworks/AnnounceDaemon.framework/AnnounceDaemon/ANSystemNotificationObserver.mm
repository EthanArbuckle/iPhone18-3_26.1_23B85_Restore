@interface ANSystemNotificationObserver
+ (id)observer:(id)observer;
- (ANSystemNotificationObserver)init;
- (ANSystemNotificationObserver)initWithHandler:(id)handler;
- (void)_languageDidChange;
- (void)dealloc;
- (void)removeNotificationObservers;
- (void)startObservingNotifications;
@end

@implementation ANSystemNotificationObserver

- (ANSystemNotificationObserver)init
{
  v3.receiver = self;
  v3.super_class = ANSystemNotificationObserver;
  return [(ANSystemNotificationObserver *)&v3 init];
}

- (ANSystemNotificationObserver)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(ANSystemNotificationObserver *)self init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    observerHandler = v5->_observerHandler;
    v5->_observerHandler = v6;

    [(ANSystemNotificationObserver *)v5 startObservingNotifications];
  }

  return v5;
}

+ (id)observer:(id)observer
{
  observerCopy = observer;
  v4 = [[ANSystemNotificationObserver alloc] initWithHandler:observerCopy];

  return v4;
}

- (void)dealloc
{
  [(ANSystemNotificationObserver *)self removeNotificationObservers];
  v3.receiver = self;
  v3.super_class = ANSystemNotificationObserver;
  [(ANSystemNotificationObserver *)&v3 dealloc];
}

- (void)startObservingNotifications
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ANLogHandleSystemNotificationObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@SystemNotificationObserver start observing System Notifications.", &v6, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _LanguageChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationObservers
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"AppleLanguagePreferencesChangedNotification", 0);
}

- (void)_languageDidChange
{
  v8 = *MEMORY[0x277D85DE8];
  [(ANSystemNotificationObserver *)self removeNotificationObservers];
  v3 = ANLogHandleSystemNotificationObserver();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@SystemNotificationObserver language did change.", &v6, 0xCu);
  }

  observerHandler = [(ANSystemNotificationObserver *)self observerHandler];
  observerHandler[2](observerHandler, 1);

  v5 = *MEMORY[0x277D85DE8];
}

@end