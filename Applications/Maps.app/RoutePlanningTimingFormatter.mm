@interface RoutePlanningTimingFormatter
+ (id)arriveAtStringForDate:(id)a3 timeZone:(id)a4;
+ (id)formattingCalendar;
+ (id)leaveByStringForDate:(id)a3 timeZone:(id)a4;
+ (id)textForTiming:(id)a3;
@end

@implementation RoutePlanningTimingFormatter

+ (id)leaveByStringForDate:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 formattingCalendar];
  if (([v8 _navigation_isDateInToday:v6 inTimeZone:v7] & 1) != 0 || (objc_msgSend(v6, "timeIntervalSinceNow"), v9 < 43200.0))
  {
    v10 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v6 inTimeZone:v7 canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[RoutePlanning][Timing] Leave at" value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v12, v10];
  }

  else
  {
    v14 = objc_opt_new();
    v10 = [v8 dateByAddingUnit:16 value:5 toDate:v14 options:0];

    v15 = [v8 _navigation_offsetDate:v6 toTimeZone:v7];
    v16 = [v15 compare:v10];

    v11 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v6 inTimeZone:v7 canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v17 = [v8 _navigation_offsetDate:v6 toTimeZone:v7];
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

+ (id)arriveAtStringForDate:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 formattingCalendar];
  if (([v8 _navigation_isDateInToday:v6 inTimeZone:v7] & 1) != 0 || (objc_msgSend(v6, "timeIntervalSinceNow"), v9 < 43200.0))
  {
    v10 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v6 inTimeZone:v7 canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"[RoutePlanning][Timing] Arrive by" value:@"localized string not found" table:0];
    v13 = [NSString stringWithFormat:v12, v10];
  }

  else
  {
    v14 = objc_opt_new();
    v10 = [v8 dateByAddingUnit:16 value:5 toDate:v14 options:0];

    v15 = [v8 _navigation_offsetDate:v6 toTimeZone:v7];
    v16 = [v15 compare:v10];

    v11 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v6 inTimeZone:v7 canIncludeDate:0 suppressTimeZoneDisplay:1 useShortFormat:0];
    v17 = [v8 _navigation_offsetDate:v6 toTimeZone:v7];
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

+ (id)textForTiming:(id)a3
{
  v4 = a3;
  v5 = [v4 arrivalDate];

  if (v5)
  {
    v6 = [v4 arrivalDate];
    v7 = [v4 arrivalTimeZone];
    v8 = [a1 arriveAtStringForDate:v6 timeZone:v7];
LABEL_5:
    v10 = v8;

    goto LABEL_6;
  }

  v9 = [v4 departureDate];

  if (v9)
  {
    v6 = [v4 departureDate];
    v7 = [v4 departureTimeZone];
    v8 = [a1 leaveByStringForDate:v6 timeZone:v7];
    goto LABEL_5;
  }

  v6 = +[NSBundle mainBundle];
  v10 = [v6 localizedStringForKey:@"[RoutePlanning][Timing] Now" value:@"localized string not found" table:0];
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