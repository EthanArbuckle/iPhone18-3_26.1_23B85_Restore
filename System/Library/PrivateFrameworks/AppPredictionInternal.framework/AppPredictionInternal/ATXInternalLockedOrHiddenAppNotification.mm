@interface ATXInternalLockedOrHiddenAppNotification
- (ATXInternalLockedOrHiddenAppNotification)init;
@end

@implementation ATXInternalLockedOrHiddenAppNotification

- (ATXInternalLockedOrHiddenAppNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalLockedOrHiddenAppNotification;
  v2 = [(ATXInternalLockedOrHiddenAppNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXAppProtectionMonitor.appLockedOrHidden"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

@end