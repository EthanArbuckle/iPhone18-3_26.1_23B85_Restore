@interface PaletteBackgroundView
- (_TtC8AppStore21PaletteBackgroundView)initWithCoder:(id)a3;
- (_TtC8AppStore21PaletteBackgroundView)initWithEffect:(id)a3;
@end

@implementation PaletteBackgroundView

- (_TtC8AppStore21PaletteBackgroundView)initWithEffect:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21PaletteBackgroundView_blurEffectOverride) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PaletteBackgroundView();
  return [(PaletteBackgroundView *)&v5 initWithEffect:a3];
}

- (_TtC8AppStore21PaletteBackgroundView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21PaletteBackgroundView_blurEffectOverride) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = a3;
  v5 = [(PaletteBackgroundView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end