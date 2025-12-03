@interface WKTextExtractionTextItem
- (WKTextExtractionTextItem)init;
- (WKTextExtractionTextItem)initWithContent:(id)content selectedRange:(_NSRange)range links:(id)links editable:(id)editable rectInWebView:(CGRect)view children:(id)children;
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

- (WKTextExtractionTextItem)initWithContent:(id)content selectedRange:(_NSRange)range links:(id)links editable:(id)editable rectInWebView:(CGRect)view children:(id)children
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  length = range.length;
  location = range.location;
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
  *(self + OBJC_IVAR___WKTextExtractionTextItem_editable) = editable;
  v25.receiver = self;
  v25.super_class = WKTextExtractionTextItem;
  editableCopy = editable;
  return [(WKTextExtractionItem *)&v25 initWith:children children:x, y, width, height];
}

- (WKTextExtractionTextItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end