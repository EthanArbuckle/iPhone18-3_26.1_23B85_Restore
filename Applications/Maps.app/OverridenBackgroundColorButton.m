@interface OverridenBackgroundColorButton
+ (id)newChromeBlueButton;
- (BOOL)hasRoundedRectColor;
- (void)setBackgroundColor:(id)a3;
- (void)setOverridingBackgroundColor:(id)a3;
@end

@implementation OverridenBackgroundColorButton

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (![(OverridenBackgroundColorButton *)self hasRoundedRectColor])
  {
    v5.receiver = self;
    v5.super_class = OverridenBackgroundColorButton;
    [(OverridenBackgroundColorButton *)&v5 setBackgroundColor:v4];
  }
}

- (BOOL)hasRoundedRectColor
{
  overridingBackgroundColor = self->_overridingBackgroundColor;
  if (overridingBackgroundColor)
  {
    v3 = +[UIColor clearColor];
    LODWORD(overridingBackgroundColor) = [(UIColor *)overridingBackgroundColor isEqual:v3]^ 1;
  }

  return overridingBackgroundColor;
}

- (void)setOverridingBackgroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_overridingBackgroundColor] & 1) == 0 && (v5 || self->_overridingBackgroundColor))
  {
    objc_storeStrong(&self->_overridingBackgroundColor, a3);
    overridingBackgroundColor = self->_overridingBackgroundColor;
    v7.receiver = self;
    v7.super_class = OverridenBackgroundColorButton;
    [(OverridenBackgroundColorButton *)&v7 setBackgroundColor:overridingBackgroundColor];
    [(OverridenBackgroundColorButton *)self setNeedsDisplay];
  }
}

+ (id)newChromeBlueButton
{
  v2 = [OverridenBackgroundColorButton buttonWithType:1];
  v3 = [v2 layer];
  [v3 setCornerRadius:5.0];

  [v2 setClipsToBounds:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [UIFont boldSystemFontOfSize:15.0];
  v5 = [v2 titleLabel];
  [v5 setFont:v4];

  v6 = +[UIColor whiteColor];
  [v2 setTitleColor:v6 forState:0];

  [v2 setContentEdgeInsets:{5.0, 15.0, 5.0, 15.0}];
  v7 = [v2 theme];
  v8 = [v7 keyColor];
  [v2 setOverridingBackgroundColor:v8];

  return v2;
}

@end