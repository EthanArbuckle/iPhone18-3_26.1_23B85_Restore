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
  v3 = [(AMPTintedBackgroundButton *)self isHighlighted];
  v4 = [(AMPTintedBackgroundButton *)self tintColor];
  v6 = v4;
  if (v3)
  {
    v5 = [v4 colorWithAlphaComponent:0.6];
    [(AMPTintedBackgroundButton *)self setBackgroundColor:v5];
  }

  else
  {
    [(AMPTintedBackgroundButton *)self setBackgroundColor:v4];
  }
}

@end