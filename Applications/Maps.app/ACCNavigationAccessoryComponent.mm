@interface ACCNavigationAccessoryComponent
- (unint64_t)guidanceManeuverCapacity;
- (unint64_t)laneGuidanceCapacity;
@end

@implementation ACCNavigationAccessoryComponent

- (unint64_t)laneGuidanceCapacity
{
  if (![(ACCNavigationAccessoryComponent *)self maxCapacity_LaneGuidance])
  {
    return 1000;
  }

  return [(ACCNavigationAccessoryComponent *)self maxCapacity_LaneGuidance];
}

- (unint64_t)guidanceManeuverCapacity
{
  if (![(ACCNavigationAccessoryComponent *)self maxCapacity_GuidanceManeuver])
  {
    return 1000;
  }

  return [(ACCNavigationAccessoryComponent *)self maxCapacity_GuidanceManeuver];
}

@end