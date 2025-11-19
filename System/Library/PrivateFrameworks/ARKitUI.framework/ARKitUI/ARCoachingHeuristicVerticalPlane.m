@interface ARCoachingHeuristicVerticalPlane
- (int64_t)requirements;
- (void)updateWithFrame:(id)a3 cache:(id)a4;
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

- (void)updateWithFrame:(id)a3 cache:(id)a4
{
  v5 = [a4 hasVerticalPlane:a3];

  [(ARCoachingHeuristic *)self setSatisfied:v5];
}

@end