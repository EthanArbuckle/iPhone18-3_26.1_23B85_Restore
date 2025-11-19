@interface QuotesLabel
- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithCoder:(id)a3;
- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithFrame:(CGRect)a3;
@end

@implementation QuotesLabel

- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QuotesLabel();
  return [(QuotesLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithCoder:(id)a3
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