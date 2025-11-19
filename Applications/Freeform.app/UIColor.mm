@interface UIColor
+ (id)accentColor;
+ (id)crl_sidebarInactiveCellTintColor;
+ (id)crl_sidebarPrimaryContentColor;
+ (id)crl_sliderMaximumTrackTintColor;
+ (id)crl_tableViewCellDarkBlueTextColor;
- (id)crl_withReducedAlpha:(double)a3;
@end

@implementation UIColor

+ (id)crl_tableViewCellDarkBlueTextColor
{
  v2 = qword_101A34D10;
  if (!qword_101A34D10)
  {
    v3 = [UIColor colorWithRed:0.219607843 green:0.329411765 blue:0.529411765 alpha:1.0];
    v4 = qword_101A34D10;
    qword_101A34D10 = v3;

    v2 = qword_101A34D10;
  }

  return v2;
}

- (id)crl_withReducedAlpha:(double)a3
{
  [(UIColor *)self alphaComponent];
  v6 = v5 * a3;

  return [(UIColor *)self colorWithAlphaComponent:v6];
}

+ (id)crl_sliderMaximumTrackTintColor
{
  v2 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v3 = [v2 colorWithAlphaComponent:0.15];

  return v3;
}

+ (id)crl_sidebarPrimaryContentColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v2 = 0.784313725;
  }

  else
  {
    v2 = 0.647058824;
  }

  v3 = [UIColor colorWithRed:v2 green:v2 blue:v2 alpha:1.0];

  return v3;
}

+ (id)crl_sidebarInactiveCellTintColor
{
  v2 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v3 = [v2 colorWithAlphaComponent:0.2];

  return v3;
}

+ (id)accentColor
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() colorNamed:v2];

  if (v3)
  {

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end