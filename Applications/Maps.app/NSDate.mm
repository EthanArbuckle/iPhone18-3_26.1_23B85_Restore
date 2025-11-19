@interface NSDate
+ (id)_maps_dateDescriptionShort:(BOOL)a3 timeZone:(id)a4 bookingDate:(id)a5;
+ (id)_maps_dayDescriptionStringShortDescription:(BOOL)a3 timeZone:(id)a4 bookingDate:(id)a5;
+ (id)_maps_maximumDateForRoutePlanning;
+ (id)_maps_minimumDateForRoutePlanningWithTimeZone:(id)a3;
- (id)_maps_nextDayAtHour:(int64_t)a3 timeZone:(id)a4;
- (id)_maps_nextWeekday:(int64_t)a3 atHour:(int64_t)a4 timeZone:(id)a5;
@end

@implementation NSDate

+ (id)_maps_dayDescriptionStringShortDescription:(BOOL)a3 timeZone:(id)a4 bookingDate:(id)a5
{
  v34 = a3;
  v6 = a4;
  v7 = a5;
  if (qword_10195E780 != -1)
  {
    dispatch_once(&qword_10195E780, &stru_101638B90);
  }

  [qword_10195E778 setDateStyle:0];
  [qword_10195E778 setTimeStyle:1];
  [qword_10195E778 setTimeZone:v6];
  v8 = +[NSCalendar currentCalendar];
  v9 = +[NSDate date];
  v10 = [v8 componentsInTimeZone:v6 fromDate:v9];

  v35 = v8;
  v11 = [v8 componentsInTimeZone:v6 fromDate:v7];
  v12 = [v10 year];
  if (v12 == [v11 year] && (v13 = objc_msgSend(v10, "month"), v13 == objc_msgSend(v11, "month")))
  {
    v14 = [v10 day];
    v15 = v14 == [v11 day];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v10 year];
  if (v16 != [v11 year])
  {
    v18 = 0;
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_11:
    v19 = [v11 hour] > 16;
    goto LABEL_12;
  }

  v17 = [v10 weekOfYear];
  v18 = v17 == [v11 weekOfYear];
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
LABEL_12:
  v20 = [v10 copy];
  [v20 setDay:{objc_msgSend(v20, "day") + 1}];
  v21 = [v20 year];
  if (v21 == [v11 year])
  {
    v22 = [v20 month];
    if (v22 == [v11 month])
    {
      v23 = [v20 day];
      v24 = v23 == [v11 day];
      if (!v19)
      {
        goto LABEL_15;
      }

LABEL_20:
      block = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_100B340C0;
      v39 = &unk_1016611D0;
      v40 = "NSDate+RestaurantReservationDescriptionHelper";
      if (qword_10195E790 != -1)
      {
        dispatch_once(&qword_10195E790, &block);
      }

      v25 = qword_10195E788;
      v26 = @"reservation_tonight_key";
      v27 = @"Tonight<unlocalized>";
      goto LABEL_23;
    }
  }

  v24 = 0;
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v15)
  {
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100B340C0;
    v39 = &unk_1016611D0;
    v40 = "NSDate+RestaurantReservationDescriptionHelper";
    if (qword_10195E790 != -1)
    {
      dispatch_once(&qword_10195E790, &block);
    }

    v25 = qword_10195E788;
    v26 = @"reservation_today_key";
    v27 = @"Today<unlocalized>";
LABEL_23:
    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];
    v29 = MapsSuggestionsNonNilString();

    goto LABEL_24;
  }

  if (v24)
  {
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100B340C0;
    v39 = &unk_1016611D0;
    v40 = "NSDate+RestaurantReservationDescriptionHelper";
    if (qword_10195E790 != -1)
    {
      dispatch_once(&qword_10195E790, &block);
    }

    v25 = qword_10195E788;
    v26 = @"reservation_tomorrow_key";
    v27 = @"Tomorrow<unlocalized>";
    goto LABEL_23;
  }

  if (v18)
  {
    if (v34)
    {
      v31 = @"EE";
    }

    else
    {
      v31 = @"EEEE";
    }

    [qword_10195E778 setDateFormat:v31];
  }

  else if (v34)
  {
    v32 = +[NSLocale currentLocale];
    v33 = [NSDateFormatter dateFormatFromTemplate:@"MMMdd" options:0 locale:v32];

    [qword_10195E778 setDateFormat:v33];
  }

  else
  {
    [qword_10195E778 setDateStyle:2];
    [qword_10195E778 setTimeStyle:0];
  }

  v29 = [qword_10195E778 stringFromDate:v7];
LABEL_24:

  return v29;
}

+ (id)_maps_dateDescriptionShort:(BOOL)a3 timeZone:(id)a4 bookingDate:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  if (qword_10195E770 != -1)
  {
    dispatch_once(&qword_10195E770, &stru_101638B70);
  }

  [qword_10195E768 setTimeZone:v7];
  v9 = [NSDate _maps_dayDescriptionStringShortDescription:v6 timeZone:v7 bookingDate:v8];
  v10 = [qword_10195E768 stringFromDate:v8];
  v11 = +[NSCalendar currentCalendar];
  v12 = [v11 componentsInTimeZone:v7 fromDate:v8];

  if ([v12 hour] == 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v13 = [v12 hour];
  if (v6)
  {
    if (v13 != 13)
    {
      block = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_100B340C0;
      v24 = &unk_1016611D0;
      v25 = "NSDate+RestaurantReservationDescriptionHelper";
      if (qword_10195E790 != -1)
      {
        dispatch_once(&qword_10195E790, &block);
      }

      v14 = qword_10195E788;
      v15 = @"reservation_date_at_time_key_not_at_1";
      goto LABEL_17;
    }

LABEL_8:
    block = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100B340C0;
    v24 = &unk_1016611D0;
    v25 = "NSDate+RestaurantReservationDescriptionHelper";
    if (qword_10195E790 != -1)
    {
      dispatch_once(&qword_10195E790, &block);
    }

    v14 = qword_10195E788;
    v15 = @"reservation_date_at_time_key_at_1";
LABEL_17:
    v16 = @"%1$@ at %2$@<unlocalized>";
    goto LABEL_18;
  }

LABEL_11:
  block = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_100B340C0;
  v24 = &unk_1016611D0;
  v25 = "NSDate+RestaurantReservationDescriptionHelper";
  if (qword_10195E790 != -1)
  {
    dispatch_once(&qword_10195E790, &block);
  }

  v14 = qword_10195E788;
  v15 = @"reservation_date_at_time_short_key";
  v16 = @"%1$@, %2$@<unlocalized>";
LABEL_18:
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];
  v18 = MapsSuggestionsNonNilString();

  v19 = [[NSString alloc] initWithFormat:v18, v9, v10];

  return v19;
}

- (id)_maps_nextDayAtHour:(int64_t)a3 timeZone:(id)a4
{
  v6 = a4;
  v7 = sub_100DAED6C();
  v8 = v7;
  if (v6)
  {
    [v7 setTimeZone:v6];
  }

  v9 = [v8 components:28 fromDate:self];
  [v9 setHour:a3];
  v10 = [v8 dateFromComponents:v9];
  v11 = objc_alloc_init(NSDateComponents);
  [v11 setDay:1];
  v12 = [v8 dateByAddingComponents:v11 toDate:v10 options:0];

  return v12;
}

- (id)_maps_nextWeekday:(int64_t)a3 atHour:(int64_t)a4 timeZone:(id)a5
{
  v8 = a5;
  v9 = sub_100DAED6C();
  v10 = v9;
  if (v8)
  {
    [v9 setTimeZone:v8];
  }

  v11 = [v10 components:8748 fromDate:self];
  if ([v11 weekday] >= a3)
  {
    [v11 setWeekOfYear:{objc_msgSend(v11, "weekOfYear") + 1}];
  }

  [v11 setWeekday:a3];
  [v11 setHour:a4];
  v12 = [v10 dateFromComponents:v11];

  return v12;
}

+ (id)_maps_maximumDateForRoutePlanning
{
  v2 = [a1 date];
  GEOConfigGetDouble();
  v3 = [v2 dateByAddingTimeInterval:?];

  return v3;
}

+ (id)_maps_minimumDateForRoutePlanningWithTimeZone:(id)a3
{
  v4 = a3;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 copy];

  [v6 setTimeZone:v4];
  v7 = [a1 date];
  v8 = [v6 startOfDayForDate:v7];
  [v7 timeIntervalSinceDate:v8];
  if (v9 < 14400.0)
  {
    v10 = [v6 dateByAddingUnit:16 value:-1 toDate:v8 options:0];

    v8 = v10;
  }

  if ([v8 compare:v7] == -1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

@end