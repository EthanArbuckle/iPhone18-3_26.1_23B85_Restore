@interface CNMeCardSharingSettingsEditingStateMachine
+ (int64_t)stateAfterPerformingAction:(int64_t)a3 onState:(int64_t)a4;
+ (int64_t)stateAfterRevertingAction:(int64_t)a3 onState:(int64_t)a4;
@end

@implementation CNMeCardSharingSettingsEditingStateMachine

+ (int64_t)stateAfterRevertingAction:(int64_t)a3 onState:(int64_t)a4
{
  v4 = 1;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v4 = 2;
    v5 = 1;
  }

  v6 = 2 * v5;
  v7 = a3 != 0;
  if (a4 != 1)
  {
    v7 = 0;
  }

  if (a4 != 2)
  {
    v6 = v7;
  }

  if (a4 == 3)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

+ (int64_t)stateAfterPerformingAction:(int64_t)a3 onState:(int64_t)a4
{
  v4 = 3;
  v5 = 2;
  if (!a3)
  {
    v5 = 3;
  }

  v6 = 3;
  if (!a3)
  {
    v6 = 1;
  }

  v7 = 1;
  if (a3)
  {
    v7 = 2;
  }

  if (!a4)
  {
    v4 = v7;
  }

  if (a4 == 1)
  {
    v4 = v6;
  }

  if (a4 == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

@end