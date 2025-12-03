@interface PaletteBackgroundView
- (_TtC8AppStore21PaletteBackgroundView)initWithCoder:(id)coder;
- (_TtC8AppStore21PaletteBackgroundView)initWithEffect:(id)effect;
@end

@implementation PaletteBackgroundView

- (_TtC8AppStore21PaletteBackgroundView)initWithEffect:(id)effect
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21PaletteBackgroundView_blurEffectOverride) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PaletteBackgroundView();
  return [(PaletteBackgroundView *)&v5 initWithEffect:effect];
}

- (_TtC8AppStore21PaletteBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore21PaletteBackgroundView_blurEffectOverride) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PaletteBackgroundView();
  coderCopy = coder;
  v5 = [(PaletteBackgroundView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end