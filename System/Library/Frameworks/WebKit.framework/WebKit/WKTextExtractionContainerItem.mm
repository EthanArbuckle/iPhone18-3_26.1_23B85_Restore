@interface WKTextExtractionContainerItem
- (WKTextExtractionContainerItem)init;
- (WKTextExtractionContainerItem)initWithContainer:(int64_t)container rectInWebView:(CGRect)view children:(id)children;
@end

@implementation WKTextExtractionContainerItem

- (WKTextExtractionContainerItem)initWithContainer:(int64_t)container rectInWebView:(CGRect)view children:(id)children
{
  *&self->WKTextExtractionItem_opaque[OBJC_IVAR___WKTextExtractionContainerItem_container] = container;
  v6.receiver = self;
  v6.super_class = WKTextExtractionContainerItem;
  return [(WKTextExtractionItem *)&v6 initWith:children children:view.origin.x, view.origin.y, view.size.width, view.size.height];
}

- (WKTextExtractionContainerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end