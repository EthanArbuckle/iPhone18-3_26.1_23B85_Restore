@interface TransitSchedulesDepartureBaseViewCell
- (NSDateComponentsFormatter)timeFormatter;
- (NSDateFormatter)dateFormatter;
- (id)emphasizedLowFrequencyDepartureDateForDeparture:(id)a3;
- (id)timeStringForDeparture:(id)a3;
- (int64_t)effectiveLiveStatusForDeparture:(id)a3;
- (void)setTimeZone:(id)a3;
@end

@implementation TransitSchedulesDepartureBaseViewCell

- (int64_t)effectiveLiveStatusForDeparture:(id)a3
{
  v4 = [a3 liveStatus];
  if ([(TransitSchedulesDepartureBaseViewCell *)self timeDisplayStyle]== 1 && v4 == 3)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (id)timeStringForDeparture:(id)a3
{
  v4 = a3;
  v5 = [(TransitSchedulesDepartureBaseViewCell *)self timeDisplayStyle];
  if (v5 == 2 || v5 == 4)
  {
    if ([v4 isPastDeparture])
    {
      v6 = [v4 departureDate];
    }

    else
    {
      v7 = [v4 scheduledDepartureDate];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [v4 liveDepartureDate];
      }

      v6 = v9;
    }

LABEL_12:
    v15 = [(TransitSchedulesDepartureBaseViewCell *)self timeZone];
    v16 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v6 inTimeZone:v15 canIncludeDate:0 showTimeZone:0 useShortFormat:0];
    goto LABEL_13;
  }

  v6 = [v4 departureDate];
  v10 = [v4 liveStatus] == 0;
  v11 = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
  LOBYTE(v10) = [v4 isPastDepartureRelativeToDate:v11 usingGracePeriod:v10];

  if (v10)
  {
    goto LABEL_12;
  }

  v12 = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
  [v6 timeIntervalSinceDate:v12];
  v14 = v13;

  if (GEOTransitDepartureIsImminentDepartureTimeInterval())
  {
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Now" value:@"localized string not found" table:0];
    goto LABEL_13;
  }

  GEOTransitDepartureNearFuturePeriod();
  if (v14 > v19)
  {
    goto LABEL_12;
  }

  v15 = [(TransitSchedulesDepartureBaseViewCell *)self timeFormatter];
  v16 = [v15 stringFromTimeInterval:v14];
LABEL_13:
  v17 = v16;

  return v17;
}

- (id)emphasizedLowFrequencyDepartureDateForDeparture:(id)a3
{
  v4 = a3;
  v5 = [v4 liveStatus];
  if ((v5 - 1) < 4)
  {
    v6 = [v4 liveDepartureDate];
LABEL_6:
    v3 = v6;
    goto LABEL_7;
  }

  if (!v5 || v5 == 5)
  {
    v6 = [v4 scheduledDepartureDate];
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (NSDateComponentsFormatter)timeFormatter
{
  if (qword_10195E140 != -1)
  {
    dispatch_once(&qword_10195E140, &stru_101631CD0);
  }

  v3 = qword_10195E138;

  return v3;
}

- (NSDateFormatter)dateFormatter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A04C34;
  block[3] = &unk_101661B18;
  block[4] = self;
  if (qword_10195E130 != -1)
  {
    dispatch_once(&qword_10195E130, block);
  }

  return qword_10195E128;
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  if (([(NSTimeZone *)self->_timeZone isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_timeZone, a3);
    v5 = [(TransitSchedulesDepartureBaseViewCell *)self dateFormatter];
    [v5 setTimeZone:v6];
  }
}

@end