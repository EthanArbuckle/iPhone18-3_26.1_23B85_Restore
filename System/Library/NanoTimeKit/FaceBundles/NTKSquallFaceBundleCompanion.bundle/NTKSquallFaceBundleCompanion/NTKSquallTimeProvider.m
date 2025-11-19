@interface NTKSquallTimeProvider
- (NTKSquallTimeProvider)init;
- (double)_secondsFromDate:(id)a3;
- (double)bezelProgress;
- (id)_displayDate;
@end

@implementation NTKSquallTimeProvider

- (NTKSquallTimeProvider)init
{
  v3.receiver = self;
  v3.super_class = NTKSquallTimeProvider;
  return [(NTKSquallTimeProvider *)&v3 init];
}

- (id)_displayDate
{
  date = self->_date;
  if (date)
  {
    v3 = date;
  }

  else
  {
    v3 = +[NTKDate faceDate];
  }

  return v3;
}

- (double)_secondsFromDate:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:32896 fromDate:v3];

  v6 = [v5 second];
  v7 = [v5 nanosecond] / 1000000000.0 + v6;

  return v7;
}

- (double)bezelProgress
{
  v3 = [(NTKSquallTimeProvider *)self _displayDate];
  [(NTKSquallTimeProvider *)self _secondsFromDate:v3];
  v5 = v4 / 60.0;

  return v5;
}

@end