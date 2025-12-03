@interface WKTextExtractionScrollableItem
- (CGSize)contentSize;
- (WKTextExtractionScrollableItem)init;
- (WKTextExtractionScrollableItem)initWithContentSize:(CGSize)size rectInWebView:(CGRect)view children:(id)children;
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

- (WKTextExtractionScrollableItem)initWithContentSize:(CGSize)size rectInWebView:(CGRect)view children:(id)children
{
  *&self->WKTextExtractionItem_opaque[OBJC_IVAR___WKTextExtractionScrollableItem_contentSize] = size;
  v6.receiver = self;
  v6.super_class = WKTextExtractionScrollableItem;
  return [(WKTextExtractionItem *)&v6 initWith:children children:view.origin.x, view.origin.y, view.size.width, view.size.height];
}

- (WKTextExtractionScrollableItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end