@interface OverridenBackgroundColorButton
+ (id)newChromeBlueButton;
- (BOOL)hasRoundedRectColor;
- (void)setBackgroundColor:(id)color;
- (void)setOverridingBackgroundColor:(id)color;
@end

@implementation OverridenBackgroundColorButton

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (![(OverridenBackgroundColorButton *)self hasRoundedRectColor])
  {
    v5.receiver = self;
    v5.super_class = OverridenBackgroundColorButton;
    [(OverridenBackgroundColorButton *)&v5 setBackgroundColor:colorCopy];
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

- (void)setOverridingBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_overridingBackgroundColor] & 1) == 0 && (colorCopy || self->_overridingBackgroundColor))
  {
    objc_storeStrong(&self->_overridingBackgroundColor, color);
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
  layer = [v2 layer];
  [layer setCornerRadius:5.0];

  [v2 setClipsToBounds:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [UIFont boldSystemFontOfSize:15.0];
  titleLabel = [v2 titleLabel];
  [titleLabel setFont:v4];

  v6 = +[UIColor whiteColor];
  [v2 setTitleColor:v6 forState:0];

  [v2 setContentEdgeInsets:{5.0, 15.0, 5.0, 15.0}];
  theme = [v2 theme];
  keyColor = [theme keyColor];
  [v2 setOverridingBackgroundColor:keyColor];

  return v2;
}

@end