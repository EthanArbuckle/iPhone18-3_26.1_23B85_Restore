@interface INStartWorkoutIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INStartWorkoutIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  workoutName = [self workoutName];
  spokenPhrase = [workoutName spokenPhrase];
  [v4 setArg1:spokenPhrase];

  goalValue = [self goalValue];

  if (goalValue)
  {
    v8 = MEMORY[0x1E696AB90];
    goalValue2 = [self goalValue];
    v10 = goalValue2;
    if (goalValue2)
    {
      [goalValue2 decimalValue];
    }

    else
    {
      v13[0] = 0;
      v13[1] = 0;
      v14 = 0;
    }

    v11 = [v8 decimalNumberWithDecimal:v13];

    v12 = roundedDecimal(v11);
    [v4 setArg2:v12];
  }
}

@end