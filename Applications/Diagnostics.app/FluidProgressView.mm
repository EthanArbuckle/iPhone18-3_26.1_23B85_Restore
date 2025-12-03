@interface FluidProgressView
- (_TtC11Diagnostics17FluidProgressView)initWithFrame:(CGRect)frame;
@end

@implementation FluidProgressView

- (_TtC11Diagnostics17FluidProgressView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressSpeed) = 1007192201;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_asymptotic) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_timerUpdateInterval) = 0x3F91111111111111;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FluidProgressView();
  return [(FluidProgressView *)&v8 initWithFrame:x, y, width, height];
}

@end