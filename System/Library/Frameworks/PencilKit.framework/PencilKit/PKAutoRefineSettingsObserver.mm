@interface PKAutoRefineSettingsObserver
- (void)dealloc;
- (void)initWithHandler:(void *)a1;
@end

@implementation PKAutoRefineSettingsObserver

- (void)initWithHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = PKAutoRefineSettingsObserver;
    a1 = objc_msgSendSuper2(&v8, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, _PKHandleAutoRefineSettingsDidChange, @"PKRemoteAutoRefineSettingsDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return a1;
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