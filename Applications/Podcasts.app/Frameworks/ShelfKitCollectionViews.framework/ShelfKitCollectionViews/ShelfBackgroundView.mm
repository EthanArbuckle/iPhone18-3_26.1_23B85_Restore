@interface ShelfBackgroundView
- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation ShelfBackgroundView

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_173564(attributesCopy);
}

- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill) = 0;
  v7 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  *v7 = 0;
  *(v7 + 2) = 256;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ShelfBackgroundView();
  return [(ShelfBackgroundView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews19ShelfBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_backgroundFill) = 0;
  v4 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelfBackgroundView_background;
  *v4 = 0;
  *(v4 + 2) = 256;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShelfBackgroundView();
  coderCopy = coder;
  v6 = [(ShelfBackgroundView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end