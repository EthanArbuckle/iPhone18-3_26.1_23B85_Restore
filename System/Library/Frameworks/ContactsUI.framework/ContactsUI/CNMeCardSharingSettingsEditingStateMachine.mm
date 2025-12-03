@interface CNMeCardSharingSettingsEditingStateMachine
+ (int64_t)stateAfterPerformingAction:(int64_t)action onState:(int64_t)state;
+ (int64_t)stateAfterRevertingAction:(int64_t)action onState:(int64_t)state;
@end

@implementation CNMeCardSharingSettingsEditingStateMachine

+ (int64_t)stateAfterRevertingAction:(int64_t)action onState:(int64_t)state
{
  v4 = 1;
  if (action)
  {
    v5 = 0;
  }

  else
  {
    v4 = 2;
    v5 = 1;
  }

  v6 = 2 * v5;
  v7 = action != 0;
  if (state != 1)
  {
    v7 = 0;
  }

  if (state != 2)
  {
    v6 = v7;
  }

  if (state == 3)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)stateAfterPerformingAction:(int64_t)action onState:(int64_t)state
{
  v4 = 3;
  v5 = 2;
  if (!action)
  {
    v5 = 3;
  }

  v6 = 3;
  if (!action)
  {
    v6 = 1;
  }

  v7 = 1;
  if (action)
  {
    v7 = 2;
  }

  if (!state)
  {
    v4 = v7;
  }

  if (state == 1)
  {
    v4 = v6;
  }

  if (state == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

@end