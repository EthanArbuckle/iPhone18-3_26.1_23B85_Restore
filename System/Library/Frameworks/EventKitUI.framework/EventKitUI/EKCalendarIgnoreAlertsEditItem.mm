@interface EKCalendarIgnoreAlertsEditItem
- (id)cellText;
- (id)descriptionLabelText;
- (id)headerTitle;
@end

@implementation EKCalendarIgnoreAlertsEditItem

- (id)cellText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Event Alerts" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)descriptionLabelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Allow events on this calendar to display alerts." value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Notifications" value:&stru_1F4EF6790 table:0];

  return v3;
}

@end