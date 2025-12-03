@interface NTKSquallTimeProvider
- (NTKSquallTimeProvider)init;
- (double)_secondsFromDate:(id)date;
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

- (double)_secondsFromDate:(id)date
{
  dateCopy = date;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:32896 fromDate:dateCopy];

  second = [v5 second];
  v7 = [v5 nanosecond] / 1000000000.0 + second;

  return v7;
}

- (double)bezelProgress
{
  _displayDate = [(NTKSquallTimeProvider *)self _displayDate];
  [(NTKSquallTimeProvider *)self _secondsFromDate:_displayDate];
  v5 = v4 / 60.0;

  return v5;
}

@end