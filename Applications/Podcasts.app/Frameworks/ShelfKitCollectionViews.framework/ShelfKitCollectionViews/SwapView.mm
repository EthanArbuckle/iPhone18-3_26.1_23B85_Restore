@interface SwapView
- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithFrame:(CGRect)frame;
@end

@implementation SwapView

- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SwapView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(SwapView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end