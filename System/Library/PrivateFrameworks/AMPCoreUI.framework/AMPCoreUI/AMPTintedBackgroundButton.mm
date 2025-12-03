@interface AMPTintedBackgroundButton
- (void)tintColorDidChange;
- (void)updateBackgroundColor;
@end

@implementation AMPTintedBackgroundButton

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = AMPTintedBackgroundButton;
  [(AMPTintedBackgroundButton *)&v3 tintColorDidChange];
  [(AMPTintedBackgroundButton *)self updateBackgroundColor];
}

- (void)updateBackgroundColor
{
  isHighlighted = [(AMPTintedBackgroundButton *)self isHighlighted];
  tintColor = [(AMPTintedBackgroundButton *)self tintColor];
  v6 = tintColor;
  if (isHighlighted)
  {
    v5 = [tintColor colorWithAlphaComponent:0.6];
    [(AMPTintedBackgroundButton *)self setBackgroundColor:v5];
  }

  else
  {
    [(AMPTintedBackgroundButton *)self setBackgroundColor:tintColor];
  }
}

@end