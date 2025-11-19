@interface QuotesLabel
- (_TtC20ProductPageExtensionP33_6C7030BB687A0F942FC45A4D1FC3F9AD11QuotesLabel)initWithCoder:(id)a3;
- (_TtC20ProductPageExtensionP33_6C7030BB687A0F942FC45A4D1FC3F9AD11QuotesLabel)initWithFrame:(CGRect)a3;
@end

@implementation QuotesLabel

- (_TtC20ProductPageExtensionP33_6C7030BB687A0F942FC45A4D1FC3F9AD11QuotesLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QuotesLabel();
  return [(QuotesLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20ProductPageExtensionP33_6C7030BB687A0F942FC45A4D1FC3F9AD11QuotesLabel)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for QuotesLabel();
  v4 = a3;
  v5 = [(QuotesLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end