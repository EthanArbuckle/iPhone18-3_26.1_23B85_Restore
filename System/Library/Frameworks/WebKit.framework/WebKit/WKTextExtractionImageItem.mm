@interface WKTextExtractionImageItem
- (WKTextExtractionImageItem)init;
- (WKTextExtractionImageItem)initWithName:(id)a3 altText:(id)a4 rectInWebView:(CGRect)a5 children:(id)a6;
@end

@implementation WKTextExtractionImageItem

- (WKTextExtractionImageItem)initWithName:(id)a3 altText:(id)a4 rectInWebView:(CGRect)a5 children:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = sub_19E6CD4E8();
  v14 = v13;
  v15 = sub_19E6CD4E8();
  v16 = (self + OBJC_IVAR___WKTextExtractionImageItem_name);
  *v16 = v12;
  v16[1] = v14;
  v17 = (self + OBJC_IVAR___WKTextExtractionImageItem_altText);
  *v17 = v15;
  v17[1] = v18;
  v20.receiver = self;
  v20.super_class = WKTextExtractionImageItem;
  return [(WKTextExtractionItem *)&v20 initWith:a6 children:x, y, width, height];
}

- (WKTextExtractionImageItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end