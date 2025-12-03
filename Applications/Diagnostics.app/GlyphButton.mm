@interface GlyphButton
- (_TtC11Diagnostics11GlyphButton)initWithFrame:(CGRect)frame;
- (void)handleTouchUpInside;
@end

@implementation GlyphButton

- (void)handleTouchUpInside
{
  v2 = *&self->buttonTopMarginConstraint[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action];
  selfCopy = self;

  v2(selfCopy);
}

- (_TtC11Diagnostics11GlyphButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end