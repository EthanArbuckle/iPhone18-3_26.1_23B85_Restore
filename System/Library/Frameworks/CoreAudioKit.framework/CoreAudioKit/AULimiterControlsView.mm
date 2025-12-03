@interface AULimiterControlsView
- (CGRect)bounds;
- (_TtC12CoreAudioKit21AULimiterControlsView)initWithCoder:(id)coder;
- (void)setBounds:(CGRect)bounds;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_23714993C(x, y, width, height);
}

- (_TtC12CoreAudioKit21AULimiterControlsView)initWithCoder:(id)coder
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