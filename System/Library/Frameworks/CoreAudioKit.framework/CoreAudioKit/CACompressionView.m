@interface CACompressionView
- (NSArray)accessibilityElements;
- (void)tintColorDidChange;
@end

@implementation CACompressionView

- (NSArray)accessibilityElements
{
  v2 = self;
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
  v5 = self;
  v6 = [v4 tintColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v3 setFillColor_];
}

@end