@interface BSUIWeeklyProgressBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation BSUIWeeklyProgressBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  [(BSUIWeeklyProgressBoxLayout *)self renderModelSizeWithContext:context];
  v6 = v5;
  v8 = v7;
  v9 = [(BSUIWeeklyProgressBoxLayout *)self box];
  identifier = [v9 identifier];
  v11 = [(BSUIWeeklyProgressBoxLayout *)self box];
  weeklyProgressMetrics = [v11 weeklyProgressMetrics];
  v13 = [BSUIWeeklyProgressView renderModelWithIdentifier:identifier metrics:weeklyProgressMetrics];

  [v13 setSize:{v6, v8}];
  return v13;
}

@end