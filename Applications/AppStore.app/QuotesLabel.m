@interface QuotesLabel
- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithFrame:(CGRect)a3;
@end

@implementation QuotesLabel

- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for QuotesLabel();
  return [(QuotesLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8AppStoreP33_29EE9522A5DC5D80B942784E0C6042DE11QuotesLabel)initWithCoder:(id)a3
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