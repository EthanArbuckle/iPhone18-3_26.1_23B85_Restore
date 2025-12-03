@interface SATimerObject
- (id)_ad_timer;
- (id)_ad_timerWithState:(int64_t)state;
- (void)_ad_setTimer:(id)timer;
@end

@implementation SATimerObject

- (void)_ad_setTimer:(id)timer
{
  timerCopy = timer;
  state = [timerCopy state];
  if (state > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = **(&off_10050F948 + state);
  }

  v8 = v6;
  [(SATimerObject *)self setState:v6];
  value = [timerCopy value];

  [(SATimerObject *)self setTimerValue:value];
}

- (id)_ad_timer
{
  state = [(SATimerObject *)self state];
  if ([state isEqualToString:SATimerStatePausedValue])
  {
    v4 = 3;
  }

  else if ([state isEqualToString:SATimerStateRunningValue])
  {
    v4 = 1;
  }

  else
  {
    [state isEqualToString:SATimerStateStoppedValue];
    v4 = 2;
  }

  v5 = [(SATimerObject *)self _ad_timerWithState:v4];

  return v5;
}

- (id)_ad_timerWithState:(int64_t)state
{
  v5 = objc_alloc_init(STTimer);
  [v5 setState:state];
  timerValue = [(SATimerObject *)self timerValue];
  [v5 setValue:timerValue];

  return v5;
}

@end