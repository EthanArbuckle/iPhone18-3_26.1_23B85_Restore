@interface ARCoachingHeuristicAnyPlane
- (int64_t)requirements;
- (void)updateWithFrame:(id)frame cache:(id)cache;
@end

@implementation ARCoachingHeuristicAnyPlane

- (int64_t)requirements
{
  if ([(ARCoachingHeuristic *)self satisfied])
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

- (void)updateWithFrame:(id)frame cache:(id)cache
{
  v5 = [cache hasAnyPlane:frame];

  [(ARCoachingHeuristic *)self setSatisfied:v5];
}

@end