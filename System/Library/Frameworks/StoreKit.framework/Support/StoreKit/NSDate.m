@interface NSDate
- (id)lib_loggableDate;
- (id)lib_loggableShortDate;
- (id)lib_simpleWeekDate;
- (unint64_t)lib_dispatchTime;
@end

@implementation NSDate

- (unint64_t)lib_dispatchTime
{
  [(NSDate *)self timeIntervalSinceNow];

  return dispatch_time(0, 1000000000 * v2);
}

- (id)lib_loggableDate
{
  if (qword_1003D4170 != -1)
  {
    sub_1002CD6D4();
  }

  v3 = qword_1003D4168;

  return [v3 stringFromDate:self];
}

- (id)lib_loggableShortDate
{
  if (qword_1003D4180 != -1)
  {
    sub_1002CD6E8();
  }

  v3 = qword_1003D4178;

  return [v3 stringFromDate:self];
}

- (id)lib_simpleWeekDate
{
  if (qword_1003D4190 != -1)
  {
    sub_1002CD6FC();
  }

  v3 = qword_1003D4188;

  return [v3 stringFromDate:self];
}

@end