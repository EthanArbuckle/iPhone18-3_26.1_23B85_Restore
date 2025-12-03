@interface AMWavePulsingView
- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithCoder:(id)coder;
- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation AMWavePulsingView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_opt_self();
  selfCopy = self;
  v9 = [v8 bezierPathWithOvalInRect:{x, y, width, height}];
  v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_fillColor);
  if (v10)
  {
    [v10 setFill];
    [v9 fill];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_radius;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_fillColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_parentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleWidthAnchor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_waveCircleHeightAnchor) = 0;
  result = sub_42B78();
  __break(1u);
  return result;
}

- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end