@interface SATimerObject
- (id)_ad_timer;
- (id)_ad_timerWithState:(int64_t)a3;
- (void)_ad_setTimer:(id)a3;
@end

@implementation SATimerObject

- (void)_ad_setTimer:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = **(&off_10050F948 + v5);
  }

  v8 = v6;
  [(SATimerObject *)self setState:v6];
  v7 = [v4 value];

  [(SATimerObject *)self setTimerValue:v7];
}

- (id)_ad_timer
{
  v3 = [(SATimerObject *)self state];
  if ([v3 isEqualToString:SATimerStatePausedValue])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:SATimerStateRunningValue])
  {
    v4 = 1;
  }

  else
  {
    [v3 isEqualToString:SATimerStateStoppedValue];
    v4 = 2;
  }

  v5 = [(SATimerObject *)self _ad_timerWithState:v4];

  return v5;
}

- (id)_ad_timerWithState:(int64_t)a3
{
  v5 = objc_alloc_init(STTimer);
  [v5 setState:a3];
  v6 = [(SATimerObject *)self timerValue];
  [v5 setValue:v6];

  return v5;
}

@end