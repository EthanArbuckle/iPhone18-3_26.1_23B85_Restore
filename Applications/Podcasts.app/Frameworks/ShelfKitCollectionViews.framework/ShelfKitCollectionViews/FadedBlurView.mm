@interface FadedBlurView
- (_TtC23ShelfKitCollectionViews13FadedBlurView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation FadedBlurView

- (_TtC23ShelfKitCollectionViews13FadedBlurView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_maskLayer;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(CAGradientLayer) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13FadedBlurView_pointLocations) = _swiftEmptyArrayStorage;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2C7A44();
}

@end