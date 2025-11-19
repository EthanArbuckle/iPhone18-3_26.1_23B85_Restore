@interface AMSUIDDynamicImpressionMetrics
- (AMSUIDDynamicImpressionMetrics)initWithIdentifier:(id)a3 fields:(id)a4 custom:(id)a5;
- (AMSUIDDynamicImpressionMetricsIdentifier)identifier;
- (void)setCustom:(id)a3;
- (void)setFields:(id)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation AMSUIDDynamicImpressionMetrics

- (AMSUIDDynamicImpressionMetrics)initWithIdentifier:(id)a3 fields:(id)a4 custom:(id)a5
{
  v6 = sub_1CA19C018();
  v7 = sub_1CA19C018();
  return DynamicImpressionMetrics.init(identifier:fields:custom:)(a3, v6, v7);
}

- (void)setCustom:(id)a3
{
  v4 = sub_1CA19C018();
  v5 = self;
  DynamicImpressionMetrics.custom.setter(v4);
}

- (void)setFields:(id)a3
{
  v4 = sub_1CA19C018();
  v5 = self;
  DynamicImpressionMetrics.fields.setter(v4);
}

- (AMSUIDDynamicImpressionMetricsIdentifier)identifier
{
  v2 = DynamicImpressionMetrics.identifier.getter();

  return v2;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  DynamicImpressionMetrics.identifier.setter(v4);
}

@end