@interface GlyphButton
- (_TtC11Diagnostics11GlyphButton)initWithFrame:(CGRect)a3;
- (void)handleTouchUpInside;
@end

@implementation GlyphButton

- (void)handleTouchUpInside
{
  v2 = *&self->buttonTopMarginConstraint[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action];
  v3 = self;

  v2(v3);
}

- (_TtC11Diagnostics11GlyphButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end