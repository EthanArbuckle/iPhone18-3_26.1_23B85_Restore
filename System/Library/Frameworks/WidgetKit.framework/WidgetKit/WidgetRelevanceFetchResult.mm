@interface WidgetRelevanceFetchResult
- (_TtC9WidgetKit26WidgetRelevanceFetchResult)init;
- (_TtC9WidgetKit26WidgetRelevanceFetchResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WidgetRelevanceFetchResult

- (_TtC9WidgetKit26WidgetRelevanceFetchResult)init
{
  result = sub_192228620();
  __break(1u);
  return result;
}

- (_TtC9WidgetKit26WidgetRelevanceFetchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_19218C080(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  WidgetRelevanceFetchResult.encode(with:)(coderCopy);
}

@end