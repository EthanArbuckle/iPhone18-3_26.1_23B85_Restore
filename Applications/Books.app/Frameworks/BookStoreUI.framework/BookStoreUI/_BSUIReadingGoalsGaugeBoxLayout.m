@interface _BSUIReadingGoalsGaugeBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4;
@end

@implementation _BSUIReadingGoalsGaugeBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)a3 context:(id)a4
{
  if (a3 < 4)
  {
    return 0;
  }

  [(_BSUIReadingGoalsGaugeBoxLayout *)self computedNaturalSize];
  v6 = v5;
  v8 = v7;
  v9 = [(_BSUIReadingGoalsGaugeBoxLayout *)self box];
  v10 = [v9 identifier];
  v11 = [(_BSUIReadingGoalsGaugeBoxLayout *)self box];
  v12 = [v11 readingGoalsGaugeMetrics];
  v13 = [BSUIReadingGoalsGaugeView renderModelWithIdentifier:v10 metrics:v12];

  [v13 setSize:{v6, v8}];
  return v13;
}

@end