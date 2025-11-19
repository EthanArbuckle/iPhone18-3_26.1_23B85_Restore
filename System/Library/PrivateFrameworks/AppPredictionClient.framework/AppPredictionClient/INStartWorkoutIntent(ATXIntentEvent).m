@interface INStartWorkoutIntent(ATXIntentEvent)
- (void)atx_getArgsInto:()ATXIntentEvent;
@end

@implementation INStartWorkoutIntent(ATXIntentEvent)

- (void)atx_getArgsInto:()ATXIntentEvent
{
  v4 = a3;
  v5 = [a1 workoutName];
  v6 = [v5 spokenPhrase];
  [v4 setArg1:v6];

  v7 = [a1 goalValue];

  if (v7)
  {
    v8 = MEMORY[0x1E696AB90];
    v9 = [a1 goalValue];
    v10 = v9;
    if (v9)
    {
      [v9 decimalValue];
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