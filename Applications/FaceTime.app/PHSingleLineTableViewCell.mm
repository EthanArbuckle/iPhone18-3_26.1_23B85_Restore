@interface PHSingleLineTableViewCell
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (double)titleLabelLastBaselineLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)updateFontsAndLayoutMetrics;
@end

@implementation PHSingleLineTableViewCell

- (id)loadRootViewAndContentViews
{
  v6.receiver = self;
  v6.super_class = PHSingleLineTableViewCell;
  loadRootViewAndContentViews = [(PHTableViewCell *)&v6 loadRootViewAndContentViews];
  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  return loadRootViewAndContentViews;
}

- (void)updateFontsAndLayoutMetrics
{
  v10.receiver = self;
  v10.super_class = PHSingleLineTableViewCell;
  [(PHTableViewCell *)&v10 updateFontsAndLayoutMetrics];
  v3 = +[UIFont telephonyUIBodyShortFont];
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel setFont:v3];

  v5 = NUIContainerViewLengthUseDefault;
  subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel2 setCustomBaselineOffsetFromBottom:v5];

  [(PHSingleLineTableViewCell *)self effectiveBaselineOffsetFromBottom];
  v8 = v7;
  subtitleLabel3 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel3 setCustomBaselineOffsetFromBottom:v8];
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  v18.receiver = self;
  v18.super_class = PHSingleLineTableViewCell;
  [(PHTableViewCell *)&v18 rootViewLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(PHSingleLineTableViewCell *)self titleLabelLastBaselineLayoutConstraintConstant];
  v10 = v9;
  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel effectiveBaselineOffsetFromBottom];
  v13 = v10 - v12;

  v14 = v4;
  v15 = v6;
  v16 = v13;
  v17 = v8;
  result.trailing = v17;
  result.bottom = v16;
  result.leading = v15;
  result.top = v14;
  return result;
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  titleLabel = [(PHTableViewCell *)self titleLabel];
  font = [titleLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v5)
  {
    v6 = [UIFontMetrics metricsForTextStyle:v5];
    [v6 scaledValueForValue:36.0];
    v8 = v7;
  }

  else
  {
    v8 = 36.0;
  }

  return v8;
}

- (double)titleLabelLastBaselineLayoutConstraintConstant
{
  titleLabel = [(PHTableViewCell *)self titleLabel];
  font = [titleLabel font];
  fontDescriptor = [font fontDescriptor];
  v5 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v5)
  {
    v6 = [UIFontMetrics metricsForTextStyle:v5];
    [v6 scaledValueForValue:24.0];
    v8 = v7;
  }

  else
  {
    v8 = 24.0;
  }

  return v8;
}

@end