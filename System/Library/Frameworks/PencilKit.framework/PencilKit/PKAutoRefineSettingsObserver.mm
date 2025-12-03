@interface PKAutoRefineSettingsObserver
- (void)dealloc;
- (void)initWithHandler:(void *)handler;
@end

@implementation PKAutoRefineSettingsObserver

- (void)initWithHandler:(void *)handler
{
  v3 = a2;
  if (handler)
  {
    v8.receiver = handler;
    v8.super_class = PKAutoRefineSettingsObserver;
    handler = objc_msgSendSuper2(&v8, sel_init);
    if (handler)
    {
      v4 = [v3 copy];
      v5 = handler[1];
      handler[1] = v4;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, handler, _PKHandleAutoRefineSettingsDidChange, @"PKRemoteAutoRefineSettingsDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return handler;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PKRemoteAutoRefineSettingsDidChange", 0);
  v4.receiver = self;
  v4.super_class = PKAutoRefineSettingsObserver;
  [(PKAutoRefineSettingsObserver *)&v4 dealloc];
}

@end