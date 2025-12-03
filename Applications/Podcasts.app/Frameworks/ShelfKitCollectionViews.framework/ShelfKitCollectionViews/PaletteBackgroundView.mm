@interface PaletteBackgroundView
- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation PaletteBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29AE94();
}

- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithEffect:(id)effect
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PaletteBackgroundView_tintView) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PaletteBackgroundView *)&v7 initWithEffect:effect];
}

- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PaletteBackgroundView_tintView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(PaletteBackgroundView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end