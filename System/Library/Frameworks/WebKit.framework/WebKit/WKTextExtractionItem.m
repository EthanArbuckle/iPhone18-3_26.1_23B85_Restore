@interface WKTextExtractionItem
- (CGRect)rectInWebView;
- (WKTextExtractionItem)init;
- (WKTextExtractionItem)initWith:(CGRect)a3 children:(id)a4;
@end

@implementation WKTextExtractionItem

- (CGRect)rectInWebView
{
  v2 = *(self + OBJC_IVAR___WKTextExtractionItem_rectInWebView);
  v3 = *(self + OBJC_IVAR___WKTextExtractionItem_rectInWebView + 8);
  v4 = *(self + OBJC_IVAR___WKTextExtractionItem_rectInWebView + 16);
  v5 = *(self + OBJC_IVAR___WKTextExtractionItem_rectInWebView + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (WKTextExtractionItem)initWith:(CGRect)a3 children:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for WKTextExtractionItem(self);
  v9 = sub_19E6CD538();
  v10 = (self + OBJC_IVAR___WKTextExtractionItem_rectInWebView);
  *v10 = x;
  v10[1] = y;
  v10[2] = width;
  v10[3] = height;
  *(self + OBJC_IVAR___WKTextExtractionItem_children) = v9;
  v12.receiver = self;
  v12.super_class = WKTextExtractionItem;
  return [(WKTextExtractionItem *)&v12 init];
}

- (WKTextExtractionItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end