@interface RatingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews10RatingView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation RatingView

- (_TtC23ShelfKitCollectionViews10RatingView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_rating) = 1080033280;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_color;
  sub_A803C();
  *(&self->super.super.super.isa + v4) = sub_30D048(0.99608, 0.5098, 0.027451, 1.0);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_starSize) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_hideEmptyStars) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_reverseAlignment) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(RatingView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_2B8814();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RatingView();
  v2 = v4.receiver;
  [(RatingView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews10RatingView_label];
  [v2 frame];
  [v3 setFrame:{0.0, 0.0}];
}

@end