@interface ShelfFooterSeparator
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC8AppStore20ShelfFooterSeparator)initWithCoder:(id)coder;
- (_TtC8AppStore20ShelfFooterSeparator)initWithFrame:(CGRect)frame;
@end

@implementation ShelfFooterSeparator

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 1.0;
  result.height = v3;
  return result;
}

- (_TtC8AppStore20ShelfFooterSeparator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ShelfFooterSeparator *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8AppStore20ShelfFooterSeparator)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ShelfFooterSeparator *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end