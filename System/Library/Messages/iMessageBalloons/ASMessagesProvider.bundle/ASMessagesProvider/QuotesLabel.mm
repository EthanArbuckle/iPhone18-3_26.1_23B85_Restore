@interface QuotesLabel
- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithCoder:(id)coder;
- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithFrame:(CGRect)frame;
@end

@implementation QuotesLabel

- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QuotesLabel();
  return [(QuotesLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18ASMessagesProviderP33_D787071B922294CEF2328549F685170911QuotesLabel)initWithCoder:(id)coder
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