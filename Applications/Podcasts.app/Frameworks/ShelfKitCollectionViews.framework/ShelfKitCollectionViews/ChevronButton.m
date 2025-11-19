@interface ChevronButton
- (UIColor)tintColor;
- (_TtC23ShelfKitCollectionViews13ChevronButton)initWithFrame:(CGRect)a3;
- (void)setTintColor:(id)a3;
@end

@implementation ChevronButton

- (UIColor)tintColor
{
  v2 = [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel) tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_imageView);
  v5 = a3;
  v7 = self;
  [v4 setTintColor:v5];
  v6 = *(&v7->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13ChevronButton_titleLabel);
  [v6 setTextColor:v5];
}

- (_TtC23ShelfKitCollectionViews13ChevronButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end