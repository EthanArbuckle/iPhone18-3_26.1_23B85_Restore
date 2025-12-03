@interface QuotesLabel
- (_TtC22SubscribePageExtensionP33_07F3C80E609EE80E718B61FEB177918B11QuotesLabel)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtensionP33_07F3C80E609EE80E718B61FEB177918B11QuotesLabel)initWithFrame:(CGRect)frame;
@end

@implementation QuotesLabel

- (_TtC22SubscribePageExtensionP33_07F3C80E609EE80E718B61FEB177918B11QuotesLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QuotesLabel();
  return [(QuotesLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtensionP33_07F3C80E609EE80E718B61FEB177918B11QuotesLabel)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for QuotesLabel();
  coderCopy = coder;
  v5 = [(QuotesLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end