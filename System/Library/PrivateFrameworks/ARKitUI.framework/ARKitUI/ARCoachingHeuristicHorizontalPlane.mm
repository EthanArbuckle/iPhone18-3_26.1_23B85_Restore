@interface ARCoachingHeuristicHorizontalPlane
- (int64_t)requirements;
- (void)updateWithFrame:(id)a3 cache:(id)a4;
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

- (void)updateWithFrame:(id)a3 cache:(id)a4
{
  v5 = [a4 hasHorizontalPlane:a3];

  [(ARCoachingHeuristic *)self setSatisfied:v5];
}

@end