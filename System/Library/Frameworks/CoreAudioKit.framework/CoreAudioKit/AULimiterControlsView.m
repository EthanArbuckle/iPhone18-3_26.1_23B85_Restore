@interface AULimiterControlsView
- (CGRect)bounds;
- (_TtC12CoreAudioKit21AULimiterControlsView)initWithCoder:(id)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation AULimiterControlsView

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AULimiterControlsView();
  [(AULimiterControlsView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_23714993C(x, y, width, height);
}

- (_TtC12CoreAudioKit21AULimiterControlsView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_meter;
  *(&self->super.super.super.isa + v4) = sub_237149488();
  v5 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_knobs) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_previousWidth) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit21AULimiterControlsView_spacingConstraints) = v5;
  result = sub_2371969DC();
  __break(1u);
  return result;
}

@end