@interface QuotesLabel
- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithCoder:(id)coder;
- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithFrame:(CGRect)frame;
@end

@implementation QuotesLabel

- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QuotesLabel();
  return [(QuotesLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithCoder:(id)coder
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