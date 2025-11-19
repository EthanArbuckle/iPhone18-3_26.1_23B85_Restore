@interface WKTextExtractionScrollableItem
- (CGSize)contentSize;
- (WKTextExtractionScrollableItem)init;
- (WKTextExtractionScrollableItem)initWithContentSize:(CGSize)a3 rectInWebView:(CGRect)a4 children:(id)a5;
@end

@implementation WKTextExtractionScrollableItem

- (CGSize)contentSize
{
  v2 = *&self->WKTextExtractionItem_opaque[OBJC_IVAR___WKTextExtractionScrollableItem_contentSize];
  v3 = *&self->WKTextExtractionItem_opaque[OBJC_IVAR___WKTextExtractionScrollableItem_contentSize + 8];
  result.height = v3;
  result.width = v2;
  return result;
}

- (WKTextExtractionScrollableItem)initWithContentSize:(CGSize)a3 rectInWebView:(CGRect)a4 children:(id)a5
{
  *&self->WKTextExtractionItem_opaque[OBJC_IVAR___WKTextExtractionScrollableItem_contentSize] = a3;
  v6.receiver = self;
  v6.super_class = WKTextExtractionScrollableItem;
  return [(WKTextExtractionItem *)&v6 initWith:a5 children:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
}

- (WKTextExtractionScrollableItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end