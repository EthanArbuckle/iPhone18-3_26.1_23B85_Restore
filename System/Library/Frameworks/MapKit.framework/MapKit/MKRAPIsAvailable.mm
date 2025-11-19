@interface MKRAPIsAvailable
@end

@implementation MKRAPIsAvailable

void ___MKRAPIsAvailable_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v1 = _MKRAPIsAvailable_accountStore;
  _MKRAPIsAvailable_accountStore = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, &_MKRAPIsAvailable_validManagedAppleIDState, _MKRAPiCloudAccountChanged, @"ACDAccountStoreDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end