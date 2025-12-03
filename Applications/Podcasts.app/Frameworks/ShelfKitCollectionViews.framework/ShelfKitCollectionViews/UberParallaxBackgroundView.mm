@interface UberParallaxBackgroundView
- (_TtC23ShelfKitCollectionViews26UberParallaxBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation UberParallaxBackgroundView

- (_TtC23ShelfKitCollectionViews26UberParallaxBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_parallaxFactor) = 0x3FD3333333333333;
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_fixedWidth;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_zoomFactor) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_offset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews26UberParallaxBackgroundView_image) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1551A0();
}

@end