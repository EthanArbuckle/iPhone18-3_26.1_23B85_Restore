@interface NTPBEvent
- (void)ft_setTemporalBoundsBySanitizingStartDate:(id)date endDate:(id)endDate;
@end

@implementation NTPBEvent

- (void)ft_setTemporalBoundsBySanitizingStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v13 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v8 = [v13 components:28 fromDate:dateCopy];
  v9 = [v13 dateFromComponents:v8];
  [(NTPBEvent *)self nss_setStartDate:v9];
  [endDateCopy timeIntervalSinceDate:dateCopy];
  v11 = v10;

  v12 = round(v11);
  if (v12 > 21.0)
  {
    v12 = 21.0;
  }

  [(NTPBEvent *)self setDuration:v12];
}

@end