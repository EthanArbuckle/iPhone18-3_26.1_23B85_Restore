@interface ATXInternalUnLockedOrUnHiddenAppNotification
- (ATXInternalUnLockedOrUnHiddenAppNotification)init;
@end

@implementation ATXInternalUnLockedOrUnHiddenAppNotification

- (ATXInternalUnLockedOrUnHiddenAppNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalUnLockedOrUnHiddenAppNotification;
  v2 = [(ATXInternalUnLockedOrUnHiddenAppNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXAppProtectionMonitor.appUnLockedOrUnHidden"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

@end