@interface WKTextExtractionTextItem
- (WKTextExtractionTextItem)init;
- (WKTextExtractionTextItem)initWithContent:(id)a3 selectedRange:(_NSRange)a4 links:(id)a5 editable:(id)a6 rectInWebView:(CGRect)a7 children:(id)a8;
- (_NSRange)selectedRange;
@end

@implementation WKTextExtractionTextItem

- (_NSRange)selectedRange
{
  v2 = self + OBJC_IVAR___WKTextExtractionTextItem_selectedRange;
  v3 = *(self + OBJC_IVAR___WKTextExtractionTextItem_selectedRange);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (WKTextExtractionTextItem)initWithContent:(id)a3 selectedRange:(_NSRange)a4 links:(id)a5 editable:(id)a6 rectInWebView:(CGRect)a7 children:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  length = a4.length;
  location = a4.location;
  v17 = sub_19E6CD4E8();
  v19 = v18;
  type metadata accessor for WKTextExtractionLink(v17);
  v20 = sub_19E6CD538();
  v21 = (self + OBJC_IVAR___WKTextExtractionTextItem_content);
  *v21 = v17;
  v21[1] = v19;
  v22 = (self + OBJC_IVAR___WKTextExtractionTextItem_selectedRange);
  *v22 = location;
  v22[1] = length;
  *(self + OBJC_IVAR___WKTextExtractionTextItem_links) = v20;
  *(self + OBJC_IVAR___WKTextExtractionTextItem_editable) = a6;
  v25.receiver = self;
  v25.super_class = WKTextExtractionTextItem;
  v23 = a6;
  return [(WKTextExtractionItem *)&v25 initWith:a8 children:x, y, width, height];
}

- (WKTextExtractionTextItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end