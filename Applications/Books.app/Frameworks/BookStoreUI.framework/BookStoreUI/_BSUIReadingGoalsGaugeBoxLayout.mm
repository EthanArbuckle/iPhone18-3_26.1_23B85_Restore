@interface _BSUIReadingGoalsGaugeBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation _BSUIReadingGoalsGaugeBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 4)
  {
    return 0;
  }

  [(_BSUIReadingGoalsGaugeBoxLayout *)self computedNaturalSize];
  v6 = v5;
  v8 = v7;
  v9 = [(_BSUIReadingGoalsGaugeBoxLayout *)self box];
  identifier = [v9 identifier];
  v11 = [(_BSUIReadingGoalsGaugeBoxLayout *)self box];
  readingGoalsGaugeMetrics = [v11 readingGoalsGaugeMetrics];
  v13 = [BSUIReadingGoalsGaugeView renderModelWithIdentifier:identifier metrics:readingGoalsGaugeMetrics];

  [v13 setSize:{v6, v8}];
  return v13;
}

@end