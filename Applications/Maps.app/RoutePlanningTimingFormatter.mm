@interface RoutePlanningTimingFormatter
+ (id)arriveAtStringForDate:(id)date timeZone:(id)zone;
+ (id)formattingCalendar;
+ (id)leaveByStringForDate:(id)date timeZone:(id)zone;
+ (id)textForTiming:(id)timing;
@end

@implementation RoutePlanningTimingFormatter

+ (id)leaveByStringForDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  formattingCalendar = [self formattingCalendar];
  if (([formattingCalendar _navigation_isDateInToday:dateCopy inTimeZone:zoneCopy] & 1) != 0 || (objc_msgSend(dateCopy, "timeIntervalSinceNow"), v9 < 43200.0))
  {
    v10 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:dateCopy inTimeZone:zoneCopy canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[RoutePlanning][Timing] Leave at" value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v12, v10];
  }

  else
  {
    v14 = objc_opt_new();
    v10 = [formattingCalendar dateByAddingUnit:16 value:5 toDate:v14 options:0];

    v15 = [formattingCalendar _navigation_offsetDate:dateCopy toTimeZone:zoneCopy];
    v16 = [v15 compare:v10];

    v11 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:dateCopy inTimeZone:zoneCopy canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v17 = [formattingCalendar _navigation_offsetDate:dateCopy toTimeZone:zoneCopy];
    if (v16 == -1)
    {
      v12 = [NSDateFormatter _maps_weekdayForDate:v17];
      v18 = @"[RoutePlanning][Timing] Leave at this week";
    }

    else
    {
      v12 = [NSDateFormatter _maps_numericMonthDayString:v17];
      v18 = @"[RoutePlanning][Timing] Leave at after this week";
    }

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v20, v12, v11];
  }

  return v13;
}

+ (id)arriveAtStringForDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  formattingCalendar = [self formattingCalendar];
  if (([formattingCalendar _navigation_isDateInToday:dateCopy inTimeZone:zoneCopy] & 1) != 0 || (objc_msgSend(dateCopy, "timeIntervalSinceNow"), v9 < 43200.0))
  {
    v10 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:dateCopy inTimeZone:zoneCopy canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[RoutePlanning][Timing] Arrive by" value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v12, v10];
  }

  else
  {
    v14 = objc_opt_new();
    v10 = [formattingCalendar dateByAddingUnit:16 value:5 toDate:v14 options:0];

    v15 = [formattingCalendar _navigation_offsetDate:dateCopy toTimeZone:zoneCopy];
    v16 = [v15 compare:v10];

    v11 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:dateCopy inTimeZone:zoneCopy canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v17 = [formattingCalendar _navigation_offsetDate:dateCopy toTimeZone:zoneCopy];
    if (v16 == -1)
    {
      v12 = [NSDateFormatter _maps_weekdayForDate:v17];
      v18 = @"[RoutePlanning][Timing] Arrive by this week";
    }

    else
    {
      v12 = [NSDateFormatter _maps_numericMonthDayString:v17];
      v18 = @"[RoutePlanning][Timing] Arrive by after this week";
    }

    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v20, v12, v11];
  }

  return v13;
}

+ (id)textForTiming:(id)timing
{
  timingCopy = timing;
  arrivalDate = [timingCopy arrivalDate];

  if (arrivalDate)
  {
    arrivalDate2 = [timingCopy arrivalDate];
    arrivalTimeZone = [timingCopy arrivalTimeZone];
    v8 = [self arriveAtStringForDate:arrivalDate2 timeZone:arrivalTimeZone];
LABEL_5:
    v10 = v8;

    goto LABEL_6;
  }

  departureDate = [timingCopy departureDate];

  if (departureDate)
  {
    arrivalDate2 = [timingCopy departureDate];
    arrivalTimeZone = [timingCopy departureTimeZone];
    v8 = [self leaveByStringForDate:arrivalDate2 timeZone:arrivalTimeZone];
    goto LABEL_5;
  }

  arrivalDate2 = +[NSBundle mainBundle];
  v10 = [arrivalDate2 localizedStringForKey:@"[RoutePlanning][Timing] Now" value:@"localized string not found" table:0];
LABEL_6:

  return v10;
}

+ (id)formattingCalendar
{
  if (qword_10195E7A8 != -1)
  {
    dispatch_once(&qword_10195E7A8, &stru_101638BD0);
  }

  v3 = qword_10195E7A0;

  return v3;
}

@end