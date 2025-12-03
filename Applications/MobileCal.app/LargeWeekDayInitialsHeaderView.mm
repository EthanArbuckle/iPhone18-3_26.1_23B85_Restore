@interface LargeWeekDayInitialsHeaderView
+ (id)dayInitialFont;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)dayFrameRightInset;
- (int64_t)dayInitialTextAlignment;
@end

@implementation LargeWeekDayInitialsHeaderView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  dayInitialFont = [objc_opt_class() dayInitialFont];
  [dayInitialFont lineHeight];
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:7.5 shouldScaleForSmallerSizes:9.0];
  [(LargeWeekDayInitialsHeaderView *)self bottomPadding];
  CalRoundToScreenScale();
  v7 = v6;

  v8 = width;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (id)dayInitialFont
{
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 maximumValue:17.0 shouldScaleForSmallerSizes:23.0];

  return [UIFont systemFontOfSize:?];
}

- (int64_t)dayInitialTextAlignment
{
  traitCollection = [(LargeWeekDayInitialsHeaderView *)self traitCollection];
  v3 = EKUIUsesLargeTextLayout();

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (double)dayFrameRightInset
{
  traitCollection = [(LargeWeekDayInitialsHeaderView *)self traitCollection];
  v3 = EKUIUsesLargeTextLayout();

  result = 10.0;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

@end