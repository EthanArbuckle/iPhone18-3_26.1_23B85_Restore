@interface AMWavePulsingView
- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithCoder:(id)a3;
- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation AMWavePulsingView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_self();
  v11 = self;
  v9 = [v8 bezierPathWithOvalInRect:{x, y, width, height}];
  v10 = *(&v11->super.super.super.isa + OBJC_IVAR____TtC22AudioMessagesExtension17AMWavePulsingView_fillColor);
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

- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithCoder:(id)a3
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

- (_TtC22AudioMessagesExtension17AMWavePulsingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end