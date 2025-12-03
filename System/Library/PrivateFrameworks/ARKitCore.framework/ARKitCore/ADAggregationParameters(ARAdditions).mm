@interface ADAggregationParameters(ARAdditions)
- (BOOL)ar_isEqualToParameters:()ARAdditions;
- (id)copyWithZone:()ARAdditions;
@end

@implementation ADAggregationParameters(ARAdditions)

- (BOOL)ar_isEqualToParameters:()ARAdditions
{
  v4 = a3;
  aggregationSize = [self aggregationSize];
  if (aggregationSize == [v4 aggregationSize])
  {
    [self maxPointCloudAge];
    v7 = v6;
    [v4 maxPointCloudAge];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:()ARAdditions
{
  v2 = objc_alloc_init(MEMORY[0x1E698C150]);
  [self maxPointCloudAge];
  [v2 setMaxPointCloudAge:?];
  [v2 setAggregationSize:{objc_msgSend(self, "aggregationSize")}];
  return v2;
}

@end