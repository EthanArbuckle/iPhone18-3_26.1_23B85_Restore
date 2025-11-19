@interface EKCalendarIsAffectingAvailabilityEditItem
+ (BOOL)shouldDisplayForCalendar:(id)a3;
- (BOOL)configureWithCalendar:(id)a3;
- (id)cellText;
- (id)descriptionLabelText;
- (id)headerTitle;
@end

@implementation EKCalendarIsAffectingAvailabilityEditItem

+ (BOOL)shouldDisplayForCalendar:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  if ([v4 syncs])
  {
    v5 = [v4 constraints];
    if ([v5 supportsAvailabilityRequests] && (!objc_msgSend(v4, "isDelegate") || objc_msgSend(v3, "allowsContentModifications")) && (objc_msgSend(v3, "isSubscribed") & 1) == 0)
    {
      v6 = [v3 isSuggestedEventCalendar] ^ 1;
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

- (BOOL)configureWithCalendar:(id)a3
{
  v6.receiver = self;
  v6.super_class = EKCalendarIsAffectingAvailabilityEditItem;
  v3 = a3;
  [(EKCalendarEditItem *)&v6 configureWithCalendar:v3];
  v4 = [objc_opt_class() shouldDisplayForCalendar:{v3, v6.receiver, v6.super_class}];

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