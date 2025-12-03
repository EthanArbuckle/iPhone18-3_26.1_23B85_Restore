@interface AMSUIDDynamicImpressionMetrics
- (AMSUIDDynamicImpressionMetrics)initWithIdentifier:(id)identifier fields:(id)fields custom:(id)custom;
- (AMSUIDDynamicImpressionMetricsIdentifier)identifier;
- (void)setCustom:(id)custom;
- (void)setFields:(id)fields;
- (void)setIdentifier:(id)identifier;
@end

@implementation AMSUIDDynamicImpressionMetrics

- (AMSUIDDynamicImpressionMetrics)initWithIdentifier:(id)identifier fields:(id)fields custom:(id)custom
{
  v6 = sub_1CA19C018();
  v7 = sub_1CA19C018();
  return DynamicImpressionMetrics.init(identifier:fields:custom:)(identifier, v6, v7);
}

- (void)setCustom:(id)custom
{
  v4 = sub_1CA19C018();
  selfCopy = self;
  DynamicImpressionMetrics.custom.setter(v4);
}

- (void)setFields:(id)fields
{
  v4 = sub_1CA19C018();
  selfCopy = self;
  DynamicImpressionMetrics.fields.setter(v4);
}

- (AMSUIDDynamicImpressionMetricsIdentifier)identifier
{
  v2 = DynamicImpressionMetrics.identifier.getter();

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  DynamicImpressionMetrics.identifier.setter(identifierCopy);
}

@end