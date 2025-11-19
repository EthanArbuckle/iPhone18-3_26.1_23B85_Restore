@interface ShelfBackgroundView
- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation ShelfBackgroundView

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_173564(v4);
}

- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill) = 0;
  v7 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  *v7 = 0;
  *(v7 + 2) = 256;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ShelfBackgroundView();
  return [(ShelfBackgroundView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill) = 0;
  v4 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  *v4 = 0;
  *(v4 + 2) = 256;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShelfBackgroundView();
  v5 = a3;
  v6 = [(ShelfBackgroundView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end