@interface EKCalendarIsAffectingAvailabilityEditItem
+ (BOOL)shouldDisplayForCalendar:(id)calendar;
- (BOOL)configureWithCalendar:(id)calendar;
- (id)cellText;
- (id)descriptionLabelText;
- (id)headerTitle;
@end

@implementation EKCalendarIsAffectingAvailabilityEditItem

+ (BOOL)shouldDisplayForCalendar:(id)calendar
{
  calendarCopy = calendar;
  source = [calendarCopy source];
  if ([source syncs])
  {
    constraints = [source constraints];
    if ([constraints supportsAvailabilityRequests] && (!objc_msgSend(source, "isDelegate") || objc_msgSend(calendarCopy, "allowsContentModifications")) && (objc_msgSend(calendarCopy, "isSubscribed") & 1) == 0)
    {
      v6 = [calendarCopy isSuggestedEventCalendar] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)configureWithCalendar:(id)calendar
{
  v6.receiver = self;
  v6.super_class = EKCalendarIsAffectingAvailabilityEditItem;
  calendarCopy = calendar;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:calendarCopy];
  v4 = [objc_opt_class() shouldDisplayForCalendar:{calendarCopy, v6.receiver, v6.super_class}];

  return v4;
}

- (id)cellText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Events Affect Availability" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)descriptionLabelText
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Events on this calendar will affect your availability for scheduling." value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Availability" value:&stru_1F4EF6790 table:0];

  return v3;
}

@end