@interface AMSUIDDynamicImpressionMetricsIdentifier
- (AMSUIDDynamicImpressionMetricsIdentifier)initWithParent:(id)parent element:(id)element index:(int64_t)index;
- (NSString)element;
- (NSString)parent;
- (void)setElement:(id)element;
- (void)setParent:(id)parent;
@end

@implementation AMSUIDDynamicImpressionMetricsIdentifier

- (AMSUIDDynamicImpressionMetricsIdentifier)initWithParent:(id)parent element:(id)element index:(int64_t)index
{
  if (parent)
  {
    v6 = sub_1CA19C118();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_1CA19C118();
  return DynamicImpressionMetricsIdentifier.init(parent:element:index:)(v6, v8, v9, v10, index);
}

- (NSString)element
{
  DynamicImpressionMetricsIdentifier.element.getter();
  v2 = sub_1CA19C0E8();

  return v2;
}

- (void)setElement:(id)element
{
  v4 = sub_1CA19C118();
  v6 = v5;
  selfCopy = self;
  DynamicImpressionMetricsIdentifier.element.setter(v4, v6);
}

- (NSString)parent
{
  DynamicImpressionMetricsIdentifier.parent.getter();
  if (v2)
  {
    v3 = sub_1CA19C0E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParent:(id)parent
{
  if (parent)
  {
    v4 = sub_1CA19C118();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  DynamicImpressionMetricsIdentifier.parent.setter(v4, v6);
}

@end