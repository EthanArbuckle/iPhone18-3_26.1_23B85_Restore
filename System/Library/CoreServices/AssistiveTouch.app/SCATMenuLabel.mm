@interface SCATMenuLabel
+ (id)titleFont;
- (SCATMenuLabel)init;
- (void)didUpdateScatMenuItemStyle;
@end

@implementation SCATMenuLabel

- (SCATMenuLabel)init
{
  v10.receiver = self;
  v10.super_class = SCATMenuLabel;
  v2 = [(SCATMenuLabel *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(SCATMenuLabel *)v2 setAdjustsFontForContentSizeCategory:1];
    v4 = +[UIColor clearColor];
    [(SCATMenuLabel *)v3 setBackgroundColor:v4];

    v5 = +[UIColor whiteColor];
    [(SCATMenuLabel *)v3 setTextColor:v5];

    [(SCATMenuLabel *)v3 setNumberOfLines:2];
    [(SCATMenuLabel *)v3 setAdjustsFontSizeToFitWidth:1];
    [(SCATMenuLabel *)v3 setMinimumScaleFactor:0.75];
    [(SCATMenuLabel *)v3 setBaselineAdjustment:0];
    [(SCATMenuLabel *)v3 setLineBreakMode:4];
    [(SCATMenuLabel *)v3 setTextAlignment:1];
    LODWORD(v6) = 0.25;
    [(SCATMenuLabel *)v3 _setHyphenationFactor:v6];
    titleFont = [objc_opt_class() titleFont];
    [(SCATMenuLabel *)v3 setFont:titleFont];

    v8 = +[UIColor whiteColor];
    [(SCATMenuLabel *)v3 setTextColor:v8];
  }

  return v3;
}

+ (id)titleFont
{
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  }

  else
  {
    v3 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleFootnote];
    v4 = [UIFont systemFontOfSize:13.0 weight:UIFontWeightLight];
    v2 = [v3 scaledFontForFont:v4];
  }

  return v2;
}

- (void)didUpdateScatMenuItemStyle
{
  scatMenuItemStyle = [(SCATMenuLabel *)self scatMenuItemStyle];
  if (scatMenuItemStyle <= 4)
  {
    if (((1 << scatMenuItemStyle) & 0x15) != 0)
    {
      [(SCATMenuLabel *)self setAlpha:1.0];

      [(SCATMenuLabel *)self _setDrawsAsBackdropOverlayWithBlendMode:0];
    }

    else
    {
      v4 = +[SCATStyleProvider sharedStyleProvider];
      [v4 menuKnockoutBorderOpacity];
      [(SCATMenuLabel *)self setAlpha:?];

      v5 = +[SCATStyleProvider sharedStyleProvider];
      -[SCATMenuLabel _setDrawsAsBackdropOverlayWithBlendMode:](self, "_setDrawsAsBackdropOverlayWithBlendMode:", [v5 menuKnockoutBorderOverlayBlendMode]);
    }
  }
}

@end