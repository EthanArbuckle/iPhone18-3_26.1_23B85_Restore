@interface EKCalendarIgnoreSharedCalendarResourceChangeNotificationsEditItem
- (BOOL)configureWithCalendar:(id)calendar;
- (id)cellText;
- (id)descriptionLabelText;
- (id)headerTitle;
@end

@implementation EKCalendarIgnoreSharedCalendarResourceChangeNotificationsEditItem

- (BOOL)configureWithCalendar:(id)calendar
{
  v6.receiver = self;
  v6.super_class = EKCalendarIgnoreSharedCalendarResourceChangeNotificationsEditItem;
  calendarCopy = calendar;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:calendarCopy];
  allowsIgnoringSharedEventChangeNotifications = [calendarCopy allowsIgnoringSharedEventChangeNotifications];

  return allowsIgnoringSharedEventChangeNotifications;
}

- (id)cellText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Show Changes" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)descriptionLabelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Display messages when shared events on this calendar are added value:modified table:{or deleted by other people.", &stru_1F4EF6790, 0}];

  return v3;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Shared Events" value:&stru_1F4EF6790 table:0];

  return v3;
}

@end