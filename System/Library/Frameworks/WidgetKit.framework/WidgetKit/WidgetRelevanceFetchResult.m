@interface WidgetRelevanceFetchResult
- (_TtC9WidgetKit26WidgetRelevanceFetchResult)init;
- (_TtC9WidgetKit26WidgetRelevanceFetchResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WidgetRelevanceFetchResult

- (_TtC9WidgetKit26WidgetRelevanceFetchResult)init
{
  result = sub_192228620();
  __break(1u);
  return result;
}

- (_TtC9WidgetKit26WidgetRelevanceFetchResult)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_19218C080(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  WidgetRelevanceFetchResult.encode(with:)(v4);
}

@end