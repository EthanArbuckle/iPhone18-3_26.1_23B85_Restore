@interface SOClockTimerObserver
+ (id)sharedObserver;
@end

@implementation SOClockTimerObserver

+ (id)sharedObserver
{
  if (qword_100590008 != -1)
  {
    dispatch_once(&qword_100590008, &stru_100510EE8);
  }

  v3 = qword_100590010;

  return v3;
}

@end