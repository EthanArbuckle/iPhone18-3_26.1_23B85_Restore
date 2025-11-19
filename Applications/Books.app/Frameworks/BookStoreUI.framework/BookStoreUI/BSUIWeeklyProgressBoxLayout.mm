@interface BSUIWeeklyProgressBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation BSUIWeeklyProgressBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  [(BSUIWeeklyProgressBoxLayout *)self renderModelSizeWithContext:a4];
  v6 = v5;
  v8 = v7;
  v9 = [(BSUIWeeklyProgressBoxLayout *)self box];
  v10 = [v9 identifier];
  v11 = [(BSUIWeeklyProgressBoxLayout *)self box];
  v12 = [v11 weeklyProgressMetrics];
  v13 = [BSUIWeeklyProgressView renderModelWithIdentifier:v10 metrics:v12];

  [v13 setSize:{v6, v8}];
  return v13;
}

@end