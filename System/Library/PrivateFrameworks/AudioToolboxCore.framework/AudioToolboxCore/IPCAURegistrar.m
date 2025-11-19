@interface IPCAURegistrar
@end

@implementation IPCAURegistrar

void __IPCAURegistrar_InitServer_block_invoke()
{
  FindIPCAURegistrationsFromAppBundles2();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = *MEMORY[0x1E6963548];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, ApplicationsChanged, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end