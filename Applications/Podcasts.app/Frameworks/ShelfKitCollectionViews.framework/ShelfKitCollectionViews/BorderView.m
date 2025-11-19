@interface BorderView
- (UIColor)backgroundColor;
- (_TtC23ShelfKitCollectionViews10BorderView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews10BorderView)initWithFrame:(CGRect)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setClipsToBounds:(BOOL)a3;
@end

@implementation BorderView

- (_TtC23ShelfKitCollectionViews10BorderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10BorderView_roundedCorners) = -1;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(BorderView *)&v11 initWithFrame:x, y, width, height];
  [(BorderView *)v9 setUserInteractionEnabled:0];
  return v9;
}

- (_TtC23ShelfKitCollectionViews10BorderView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10BorderView_roundedCorners) = -1;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(BorderView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (UIColor)backgroundColor
{
  v2 = [objc_opt_self() clearColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_21AD70();
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = self;
  sub_21AE24();
}

@end