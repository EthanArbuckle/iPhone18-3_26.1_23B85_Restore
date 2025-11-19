@interface ATXInternalAppRegistrationNotification
- (ATXInternalAppRegistrationNotification)init;
@end

@implementation ATXInternalAppRegistrationNotification

- (ATXInternalAppRegistrationNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalAppRegistrationNotification;
  v2 = [(ATXInternalAppRegistrationNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd.ATXInternalAppRegistrationNotification.appRegistered"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

@end