@interface NTPBEvent
- (void)ft_setTemporalBoundsBySanitizingStartDate:(id)a3 endDate:(id)a4;
@end

@implementation NTPBEvent

- (void)ft_setTemporalBoundsBySanitizingStartDate:(id)a3 endDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v8 = [v13 components:28 fromDate:v7];
  v9 = [v13 dateFromComponents:v8];
  [(NTPBEvent *)self nss_setStartDate:v9];
  [v6 timeIntervalSinceDate:v7];
  v11 = v10;

  v12 = round(v11);
  if (v12 > 21.0)
  {
    v12 = 21.0;
  }

  [(NTPBEvent *)self setDuration:v12];
}

@end