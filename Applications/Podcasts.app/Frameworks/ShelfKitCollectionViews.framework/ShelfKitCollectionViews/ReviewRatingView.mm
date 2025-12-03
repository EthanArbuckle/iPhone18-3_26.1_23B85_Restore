@interface ReviewRatingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews16ReviewRatingView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation ReviewRatingView

- (_TtC23ShelfKitCollectionViews16ReviewRatingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_hasRTLTransformSet) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_rating) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_starSize) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews16ReviewRatingView_showsEmptyStars) = 1;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_2B96A4(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_2BA184();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(ReviewRatingView *)self sizeThatFits:0.0, 0.0];
  result.height = v3;
  result.width = v2;
  return result;
}

@end