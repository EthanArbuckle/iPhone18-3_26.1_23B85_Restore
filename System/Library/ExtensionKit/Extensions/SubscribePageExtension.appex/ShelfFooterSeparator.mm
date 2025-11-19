@interface ShelfFooterSeparator
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC22SubscribePageExtension20ShelfFooterSeparator)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension20ShelfFooterSeparator)initWithFrame:(CGRect)a3;
@end

@implementation ShelfFooterSeparator

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 1.0;
  result.height = v3;
  return result;
}

- (_TtC22SubscribePageExtension20ShelfFooterSeparator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ShelfFooterSeparator *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtension20ShelfFooterSeparator)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ShelfFooterSeparator *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end