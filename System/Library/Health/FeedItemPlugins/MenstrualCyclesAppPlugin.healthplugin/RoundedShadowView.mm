@interface RoundedShadowView
- (_TtC24MenstrualCyclesAppPlugin17RoundedShadowView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation RoundedShadowView

- (_TtC24MenstrualCyclesAppPlugin17RoundedShadowView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for RoundedShadowView();
  height = [(RoundedShadowView *)&v11 initWithFrame:x, y, width, height];
  sub_29E1793A0();

  return height;
}

- (void)layoutSubviews
{
  selfCopy = self;
  layer = [(RoundedShadowView *)selfCopy layer];
  [(RoundedShadowView *)selfCopy bounds];
  bezierPathWithRect_ = [objc_opt_self() bezierPathWithRect_];
  cGPath = [bezierPathWithRect_ CGPath];

  [layer setShadowPath_];
}

@end