@interface ChevronButton
- (UIColor)tintColor;
- (_TtC23ShelfKitCollectionViews13ChevronButton)initWithFrame:(CGRect)frame;
- (void)setTintColor:(id)color;
@end

@implementation ChevronButton

- (UIColor)tintColor
{
  tintColor = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView);
  colorCopy = color;
  selfCopy = self;
  [v4 setTintColor:colorCopy];
  v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);
  [v6 setTextColor:colorCopy];
}

- (_TtC23ShelfKitCollectionViews13ChevronButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end