@interface CompactWeekDayInitialsHeaderView
+ (double)standardHeight;
+ (id)dayInitialFont;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)bottomPadding;
@end

@implementation CompactWeekDayInitialsHeaderView

+ (double)standardHeight
{
  v3 = [a1 dayInitialFont];
  [v3 capHeight];
  [a1 _bottomPadding];
  CalRoundToScreenScale();
  v5 = v4;

  return v5;
}

+ (id)dayInitialFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:10.0 shouldScaleForSmallerSizes:18.0];

  return [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
}

- (double)bottomPadding
{
  v2 = objc_opt_class();

  [v2 _bottomPadding];
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [objc_opt_class() standardHeight];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end