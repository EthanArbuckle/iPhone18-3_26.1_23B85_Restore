@interface AXSettings.GuestPass
- (BOOL)guestPassShouldSyncToiCloud;
- (void)setGuestPassShouldSyncToiCloud:(BOOL)a3;
@end

@implementation AXSettings.GuestPass

- (BOOL)guestPassShouldSyncToiCloud
{
  v2 = self;
  v3 = AXSettings.GuestPass.shouldSyncToiCloud.getter();

  return v3 & 1;
}

- (void)setGuestPassShouldSyncToiCloud:(BOOL)a3
{
  v4 = self;
  AXSettings.GuestPass.shouldSyncToiCloud.setter(a3);
}

@end