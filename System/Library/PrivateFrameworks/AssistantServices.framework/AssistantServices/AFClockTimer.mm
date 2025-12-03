@interface AFClockTimer
- (id)timerProxyForIntentSupport;
@end

@implementation AFClockTimer

- (id)timerProxyForIntentSupport
{
  state = [(AFClockTimer *)self state];
  if ([(AFClockTimer *)self state]== 1 || (v4 = 0.0, [(AFClockTimer *)self state]== 2))
  {
    [(AFClockTimer *)self fireTimeInterval];
    v4 = v5;
  }

  if ([(AFClockTimer *)self state]== 3)
  {
    fireDate = [(AFClockTimer *)self fireDate];
    [fireDate timeIntervalSinceNow];
    v4 = v7;
  }

  if ((state - 1) >= 3)
  {
    state = 0;
  }

  if ([(AFClockTimer *)self type]== 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v19 = SOMTTimerIntentSupportSiriContextTimerTypeKey;
  v9 = [NSNumber numberWithInteger:v8];
  v20 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v11 = [_AFClockTimerIntentSupportProxy alloc];
  timerID = [(AFClockTimer *)self timerID];
  [(AFClockTimer *)self duration];
  v14 = v13;
  lastModifiedDate = [(AFClockTimer *)self lastModifiedDate];
  title = [(AFClockTimer *)self title];
  v17 = [(_AFClockTimerIntentSupportProxy *)v11 initWithTimerID:timerID state:state duration:lastModifiedDate remainingTime:title lastModifiedDate:v10 title:v14 siriContext:v4];

  return v17;
}

@end