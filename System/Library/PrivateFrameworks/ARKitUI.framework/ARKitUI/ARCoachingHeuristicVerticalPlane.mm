@interface ARCoachingHeuristicVerticalPlane
- (int64_t)requirements;
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicVerticalPlane

- (int64_t)requirements
{
  if ([(ARCoachingHeuristic *)self satisfied])
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  v5 = [cache hasVerticalPlane:frame];

  [(ARCoachingHeuristic *)self setSatisfied:v5];
}

@end