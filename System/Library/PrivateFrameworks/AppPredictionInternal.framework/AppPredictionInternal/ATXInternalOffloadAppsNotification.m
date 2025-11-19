@interface ATXInternalOffloadAppsNotification
- (ATXInternalOffloadAppsNotification)init;
@end

@implementation ATXInternalOffloadAppsNotification

- (ATXInternalOffloadAppsNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalOffloadAppsNotification;
  v2 = [(ATXInternalOffloadAppsNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXInternalUninstallNotification.appOffloaded"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

@end