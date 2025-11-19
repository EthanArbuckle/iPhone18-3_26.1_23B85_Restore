@interface FIUIWorkoutActivityType
- (BOOL)bridge_supportsElevationAscendedInSummary;
- (BOOL)bridge_supportsElevationDescendedInSummary;
@end

@implementation FIUIWorkoutActivityType

- (BOOL)bridge_supportsElevationAscendedInSummary
{
  v2 = self;
  v3 = FIUIWorkoutActivityType.supportsElevationAscendedInSummary.getter();

  return v3 & 1;
}

- (BOOL)bridge_supportsElevationDescendedInSummary
{
  v2 = self;
  v3 = FIUIWorkoutActivityType.supportsElevationDescendedInSummary.getter();

  return v3 & 1;
}

@end