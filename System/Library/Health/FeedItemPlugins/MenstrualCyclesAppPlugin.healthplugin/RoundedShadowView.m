@interface RoundedShadowView
- (_TtC24MenstrualCyclesAppPlugin17RoundedShadowView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RoundedShadowView

- (_TtC24MenstrualCyclesAppPlugin17RoundedShadowView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17RoundedShadowView_roundedView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for RoundedShadowView();
  v9 = [(RoundedShadowView *)&v11 initWithFrame:x, y, width, height];
  sub_29E1793A0();

  return v9;
}

- (void)layoutSubviews
{
  v9 = self;
  v2 = [(RoundedShadowView *)v9 layer];
  [(RoundedShadowView *)v9 bounds];
  v7 = [objc_opt_self() bezierPathWithRect_];
  v8 = [v7 CGPath];

  [v2 setShadowPath_];
}

@end