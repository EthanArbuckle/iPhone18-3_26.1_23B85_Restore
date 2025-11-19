@interface PaletteBackgroundView
- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithEffect:(id)a3;
- (void)layoutSubviews;
@end

@implementation PaletteBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_29AE94();
}

- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithEffect:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PaletteBackgroundView_tintView) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PaletteBackgroundView *)&v7 initWithEffect:a3];
}

- (_TtC23ShelfKitCollectionViews21PaletteBackgroundView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews21PaletteBackgroundView_tintView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(PaletteBackgroundView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end