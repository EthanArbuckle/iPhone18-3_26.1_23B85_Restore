@interface SAHLSetWorkoutState
- (id)_ad_transformedWorkoutRequest;
- (id)_ad_transformedWorkoutSuccessResponse;
@end

@implementation SAHLSetWorkoutState

- (id)_ad_transformedWorkoutSuccessResponse
{
  v2 = objc_alloc_init(SACommandSucceeded);

  return v2;
}

- (id)_ad_transformedWorkoutRequest
{
  targetWorkoutState = [(SAHLSetWorkoutState *)self targetWorkoutState];
  workoutStateValue = [targetWorkoutState workoutStateValue];

  if ([workoutStateValue isEqualToString:SAHLWorkoutStateWorkoutStateValueActiveValue])
  {
    v4 = 0;
  }

  else if ([workoutStateValue isEqualToString:SAHLWorkoutStateWorkoutStateValuePausedValue])
  {
    v4 = 1;
  }

  else
  {
    [workoutStateValue isEqualToString:SAHLWorkoutStateWorkoutStateValueStoppedValue];
    v4 = 2;
  }

  v5 = [[STWorkoutSetStateRequest alloc] _initWithState:v4];

  return v5;
}

@end