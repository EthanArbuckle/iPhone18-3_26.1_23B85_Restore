@interface ARCoachingHeuristicAnyPlane
- (int64_t)requirements;
- (void)updateWithFrame:(id)a3 cache:(id)a4;
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

- (void)updateWithFrame:(id)a3 cache:(id)a4
{
  v5 = [a4 hasAnyPlane:a3];

  [(ARCoachingHeuristic *)self setSatisfied:v5];
}

@end