@interface LargeYearViewYearHeader
+ (double)middleHeightForWindowSize:(CGSize)size;
- (double)_yearNumberFontSize;
- (double)overlayLegendLineLength;
- (double)overlayLegendMonthLineThickness;
- (double)overlayLegendSpacing;
- (double)overlayLegendYearBaseline;
- (double)overlayLegendYearLineThickness;
- (id)overlayLegendFont;
- (id)yearNumberFont;
@end

@implementation LargeYearViewYearHeader

+ (double)middleHeightForWindowSize:(CGSize)size
{
  width = size.width;
  if (EKUIWindowInterfaceParadigmForWindowSize() == 8)
  {
    return 57.0;
  }

  if (qword_100251BA0 != -1)
  {
    sub_1001709B0();
  }

  v5 = qword_100251B98;

  [v5 valueForSize:width];
  return result;
}

- (id)yearNumberFont
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EF3CC;
  block[3] = &unk_10020EB00;
  block[4] = self;
  if (qword_100251BB0 != -1)
  {
    dispatch_once(&qword_100251BB0, block);
  }

  return qword_100251BA8;
}

- (double)_yearNumberFontSize
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {
    return 24.0;
  }

  if (qword_100251BC0 != -1)
  {
    sub_1001709C4();
  }

  v4 = qword_100251BB8;
  AnchoredValueCurrentWindowWidth(self);

  [v4 valueForSize:?];
  return result;
}

- (id)overlayLegendFont
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {
    v3 = [UIFont systemFontOfSize:12.0];
  }

  else
  {
    traitCollection = [(LargeYearViewYearHeader *)self traitCollection];
    v3 = [EKUIConstrainedFontUtilities constrainedFontForTextStyle:UIFontTextStyleCaption1 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium traitCollection:traitCollection];
  }

  return v3;
}

- (double)overlayLegendYearBaseline
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {
    return 37.0;
  }

  [(LargeYearViewYearHeader *)self overlayLegendMonthBaseline];
  v5 = v4;
  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:1 maximumValue:37.0 - v4 shouldScaleForSmallerSizes:34.0];
  return v5 + v6;
}

- (double)overlayLegendSpacing
{
  traitCollection = [(LargeYearViewYearHeader *)self traitCollection];
  v3 = EKUIUsesLargeTextYearView();

  result = 6.0;
  if (v3)
  {
    return 12.0;
  }

  return result;
}

- (double)overlayLegendLineLength
{
  traitCollection = [(LargeYearViewYearHeader *)self traitCollection];
  v3 = EKUIUsesLargeTextYearView();

  result = 12.0;
  if (v3)
  {
    return 24.0;
  }

  return result;
}

- (double)overlayLegendYearLineThickness
{
  traitCollection = [(LargeYearViewYearHeader *)self traitCollection];
  v3 = EKUIUsesLargeTextYearView();

  result = 2.0;
  if (v3)
  {
    return 4.0;
  }

  return result;
}

- (double)overlayLegendMonthLineThickness
{
  traitCollection = [(LargeYearViewYearHeader *)self traitCollection];
  v3 = EKUIUsesLargeTextYearView();

  result = 1.0;
  if (v3)
  {
    return 2.0;
  }

  return result;
}

@end