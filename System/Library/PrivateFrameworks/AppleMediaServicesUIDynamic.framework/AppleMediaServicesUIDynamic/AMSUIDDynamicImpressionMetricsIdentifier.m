@interface AMSUIDDynamicImpressionMetricsIdentifier
- (AMSUIDDynamicImpressionMetricsIdentifier)initWithParent:(id)a3 element:(id)a4 index:(int64_t)a5;
- (NSString)element;
- (NSString)parent;
- (void)setElement:(id)a3;
- (void)setParent:(id)a3;
@end

@implementation AMSUIDDynamicImpressionMetricsIdentifier

- (AMSUIDDynamicImpressionMetricsIdentifier)initWithParent:(id)a3 element:(id)a4 index:(int64_t)a5
{
  if (a3)
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
  return DynamicImpressionMetricsIdentifier.init(parent:element:index:)(v6, v8, v9, v10, a5);
}

- (NSString)element
{
  DynamicImpressionMetricsIdentifier.element.getter();
  v2 = sub_1CA19C0E8();

  return v2;
}

- (void)setElement:(id)a3
{
  v4 = sub_1CA19C118();
  v6 = v5;
  v7 = self;
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

- (void)setParent:(id)a3
{
  if (a3)
  {
    v4 = sub_1CA19C118();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  DynamicImpressionMetricsIdentifier.parent.setter(v4, v6);
}

@end