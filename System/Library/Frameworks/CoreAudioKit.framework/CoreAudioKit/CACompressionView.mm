@interface CACompressionView
- (NSArray)accessibilityElements;
- (void)tintColorDidChange;
@end

@implementation CACompressionView

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = sub_237162334();

  if (v3)
  {
    v4 = sub_23719661C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_curveFill);
  v4 = objc_opt_self();
  selfCopy = self;
  tintColor = [v4 tintColor];
  colorWithAlphaComponent_ = [tintColor colorWithAlphaComponent_];

  cGColor = [colorWithAlphaComponent_ CGColor];
  [v3 setFillColor_];
}

@end