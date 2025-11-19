@interface WKTextExtractionContainerItem
- (WKTextExtractionContainerItem)init;
- (WKTextExtractionContainerItem)initWithContainer:(int64_t)a3 rectInWebView:(CGRect)a4 children:(id)a5;
@end

@implementation WKTextExtractionContainerItem

- (WKTextExtractionContainerItem)initWithContainer:(int64_t)a3 rectInWebView:(CGRect)a4 children:(id)a5
{
  *&self->WKTextExtractionItem_opaque[OBJC_IVAR___WKTextExtractionContainerItem_container] = a3;
  v6.receiver = self;
  v6.super_class = WKTextExtractionContainerItem;
  return [(WKTextExtractionItem *)&v6 initWith:a5 children:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
}

- (WKTextExtractionContainerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end