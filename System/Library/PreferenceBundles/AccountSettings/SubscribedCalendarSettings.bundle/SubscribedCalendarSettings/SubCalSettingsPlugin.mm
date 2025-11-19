@interface SubCalSettingsPlugin
- (id)supportedAccountTypeIdentifiers;
@end

@implementation SubCalSettingsPlugin

- (id)supportedAccountTypeIdentifiers
{
  v4 = ACAccountTypeIdentifierSubscribedCalendar;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

@end