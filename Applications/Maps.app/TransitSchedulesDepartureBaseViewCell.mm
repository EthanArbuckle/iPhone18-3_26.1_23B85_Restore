@interface TransitSchedulesDepartureBaseViewCell
- (NSDateComponentsFormatter)timeFormatter;
- (NSDateFormatter)dateFormatter;
- (id)emphasizedLowFrequencyDepartureDateForDeparture:(id)departure;
- (id)timeStringForDeparture:(id)departure;
- (int64_t)effectiveLiveStatusForDeparture:(id)departure;
- (void)setTimeZone:(id)zone;
@end

@implementation TransitSchedulesDepartureBaseViewCell

- (int64_t)effectiveLiveStatusForDeparture:(id)departure
{
  liveStatus = [departure liveStatus];
  if ([(TransitSchedulesDepartureBaseViewCell *)self timeDisplayStyle]== 1 && liveStatus == 3)
  {
    return 2;
  }

  else
  {
    return liveStatus;
  }
}

- (id)timeStringForDeparture:(id)departure
{
  departureCopy = departure;
  timeDisplayStyle = [(TransitSchedulesDepartureBaseViewCell *)self timeDisplayStyle];
  if (timeDisplayStyle == 2 || timeDisplayStyle == 4)
  {
    if ([departureCopy isPastDeparture])
    {
      departureDate = [departureCopy departureDate];
    }

    else
    {
      scheduledDepartureDate = [departureCopy scheduledDepartureDate];
      v8 = scheduledDepartureDate;
      if (scheduledDepartureDate)
      {
        liveDepartureDate = scheduledDepartureDate;
      }

      else
      {
        liveDepartureDate = [departureCopy liveDepartureDate];
      }

      departureDate = liveDepartureDate;
    }

LABEL_12:
    timeZone = [(TransitSchedulesDepartureBaseViewCell *)self timeZone];
    v16 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:departureDate inTimeZone:timeZone canIncludeDate:0 showTimeZone:0 useShortFormat:0];
    goto LABEL_13;
  }

  departureDate = [departureCopy departureDate];
  v10 = [departureCopy liveStatus] == 0;
  referenceDate = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
  LOBYTE(v10) = [departureCopy isPastDepartureRelativeToDate:referenceDate usingGracePeriod:v10];

  if (v10)
  {
    goto LABEL_12;
  }

  referenceDate2 = [(TransitSchedulesDepartureBaseViewCell *)self referenceDate];
  [departureDate timeIntervalSinceDate:referenceDate2];
  v14 = v13;

  if (GEOTransitDepartureIsImminentDepartureTimeInterval())
  {
    timeZone = +[NSBundle mainBundle];
    v16 = [timeZone localizedStringForKey:@"Now" value:@"localized string not found" table:0];
    goto LABEL_13;
  }

  GEOTransitDepartureNearFuturePeriod();
  if (v14 > v19)
  {
    goto LABEL_12;
  }

  timeZone = [(TransitSchedulesDepartureBaseViewCell *)self timeFormatter];
  v16 = [timeZone stringFromTimeInterval:v14];
LABEL_13:
  v17 = v16;

  return v17;
}

- (id)emphasizedLowFrequencyDepartureDateForDeparture:(id)departure
{
  departureCopy = departure;
  liveStatus = [departureCopy liveStatus];
  if ((liveStatus - 1) < 4)
  {
    liveDepartureDate = [departureCopy liveDepartureDate];
LABEL_6:
    v3 = liveDepartureDate;
    goto LABEL_7;
  }

  if (!liveStatus || liveStatus == 5)
  {
    liveDepartureDate = [departureCopy scheduledDepartureDate];
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

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  if (([(NSTimeZone *)self->_timeZone isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_timeZone, zone);
    dateFormatter = [(TransitSchedulesDepartureBaseViewCell *)self dateFormatter];
    [dateFormatter setTimeZone:zoneCopy];
  }
}

@end