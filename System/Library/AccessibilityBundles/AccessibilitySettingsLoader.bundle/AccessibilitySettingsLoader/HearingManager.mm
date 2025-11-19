@interface HearingManager
+ (id)sharedInstance;
- (void)startMonitoring;
@end

@implementation HearingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[HearingManager sharedInstance];
  }

  v3 = sharedInstance_SharedInstance;

  return v3;
}

uint64_t __32__HearingManager_sharedInstance__block_invoke()
{
  sharedInstance_SharedInstance = objc_alloc_init(HearingManager);

  return MEMORY[0x2A1C71028]();
}

- (void)startMonitoring
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _axSettingsHandlePreferenceChanged, *MEMORY[0x29EDC8450], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = *MEMORY[0x29EDC8448];

  CFNotificationCenterAddObserver(v4, self, _axSettingsHandlePreferenceChanged, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end