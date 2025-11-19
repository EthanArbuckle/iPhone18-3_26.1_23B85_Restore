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
  v2 = [(SAHLSetWorkoutState *)self targetWorkoutState];
  v3 = [v2 workoutStateValue];

  if ([v3 isEqualToString:SAHLWorkoutStateWorkoutStateValueActiveValue])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:SAHLWorkoutStateWorkoutStateValuePausedValue])
  {
    v4 = 1;
  }

  else
  {
    [v3 isEqualToString:SAHLWorkoutStateWorkoutStateValueStoppedValue];
    v4 = 2;
  }

  v5 = [[STWorkoutSetStateRequest alloc] _initWithState:v4];

  return v5;
}

@end