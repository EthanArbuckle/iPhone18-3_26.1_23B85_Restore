@interface AXSettings.GuestPass
- (BOOL)guestPassShouldSyncToiCloud;
- (void)setGuestPassShouldSyncToiCloud:(BOOL)cloud;
@end

@implementation AXSettings.GuestPass

- (BOOL)guestPassShouldSyncToiCloud
{
  selfCopy = self;
  v3 = AXSettings.GuestPass.shouldSyncToiCloud.getter();

  return v3 & 1;
}

- (void)setGuestPassShouldSyncToiCloud:(BOOL)cloud
{
  selfCopy = self;
  AXSettings.GuestPass.shouldSyncToiCloud.setter(cloud);
}

@end