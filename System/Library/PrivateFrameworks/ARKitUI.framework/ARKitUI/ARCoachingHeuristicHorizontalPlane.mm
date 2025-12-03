@interface ARCoachingHeuristicHorizontalPlane
- (int64_t)requirements;
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicHorizontalPlane

- (int64_t)requirements
{
  if ([(ARCoachingHeuristic *)self satisfied])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  v5 = [cache hasHorizontalPlane:frame];

  [(ARCoachingHeuristic *)self setSatisfied:v5];
}

@end