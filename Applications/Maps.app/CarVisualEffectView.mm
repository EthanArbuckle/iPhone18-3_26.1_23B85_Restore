@interface CarVisualEffectView
- (CarVisualEffectView)initWithCoder:(id)coder;
- (CarVisualEffectView)initWithEffect:(id)effect;
@end

@implementation CarVisualEffectView

- (CarVisualEffectView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CarVisualEffectView;
  v3 = [(CarVisualEffectView *)&v5 initWithCoder:coder];
  if (v3)
  {
    -[CarVisualEffectView setAllowsBlurring:](v3, "setAllowsBlurring:", [objc_opt_class() isDisablingBlur] ^ 1);
  }

  return v3;
}

- (CarVisualEffectView)initWithEffect:(id)effect
{
  v5.receiver = self;
  v5.super_class = CarVisualEffectView;
  v3 = [(CarVisualEffectView *)&v5 initWithEffect:effect];
  if (v3)
  {
    -[CarVisualEffectView setAllowsBlurring:](v3, "setAllowsBlurring:", [objc_opt_class() isDisablingBlur] ^ 1);
  }

  return v3;
}

@end