@interface AMSUIDDynamicImpressionItem
- (AMSUIDDynamicImpressionMetrics)impressionMetrics;
- (CGRect)frame;
- (void)setImpressionMetrics:(id)metrics;
@end

@implementation AMSUIDDynamicImpressionItem

- (CGRect)frame
{
  v2 = DynamicImpressionItem.frame.getter();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (AMSUIDDynamicImpressionMetrics)impressionMetrics
{
  v2 = DynamicImpressionItem.impressionMetrics.getter();

  return v2;
}

- (void)setImpressionMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  DynamicImpressionItem.impressionMetrics.setter(metricsCopy);
}

@end