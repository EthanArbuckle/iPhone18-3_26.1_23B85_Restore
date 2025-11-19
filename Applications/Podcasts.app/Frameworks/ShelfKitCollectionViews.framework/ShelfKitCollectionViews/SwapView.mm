@interface SwapView
- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithFrame:(CGRect)a3;
@end

@implementation SwapView

- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SwapView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViewsP33_73EE084195E4C536378CD521A3E22D868SwapView_view) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(SwapView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end