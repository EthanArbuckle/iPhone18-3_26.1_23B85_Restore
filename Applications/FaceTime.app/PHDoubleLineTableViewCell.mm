@interface PHDoubleLineTableViewCell
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (double)subtitleLabelFirstBaselineLayoutConstraintConstant;
- (double)subtitleLabelLastBaselineLayoutConstraintConstant;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)_updateTextColor;
- (void)tintColorDidChange;
@end

@implementation PHDoubleLineTableViewCell

- (id)loadRootViewAndContentViews
{
  v11.receiver = self;
  v11.super_class = PHDoubleLineTableViewCell;
  loadRootViewAndContentViews = [(PHTableViewCell *)&v11 loadRootViewAndContentViews];
  traitCollection = [(PHDoubleLineTableViewCell *)self traitCollection];
  if ([traitCollection preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells])
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel setNumberOfLines:v5];

  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:2];

  subtitleLabelTextColor = [(PHDoubleLineTableViewCell *)self subtitleLabelTextColor];
  subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel2 setTextColor:subtitleLabelTextColor];

  return loadRootViewAndContentViews;
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  v16.receiver = self;
  v16.super_class = PHDoubleLineTableViewCell;
  [(PHTableViewCell *)&v16 rootViewLayoutMargins];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = +[UITraitCollection _currentTraitCollection];
  isPreferredContentSizeCategoryAccessible = [v10 isPreferredContentSizeCategoryAccessible];

  if (isPreferredContentSizeCategoryAccessible)
  {
    v12 = v9;
  }

  else
  {
    v12 = 6.0;
  }

  v13 = v3;
  v14 = v5;
  v15 = v7;
  result.trailing = v12;
  result.bottom = v15;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (double)subtitleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUISubheadlineShortFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:20.0];
    v7 = v6;
  }

  else
  {
    v7 = 20.0;
  }

  return v7;
}

- (double)subtitleLabelLastBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:13.0];
    v7 = v6;
  }

  else
  {
    v7 = 13.0;
  }

  return v7;
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortFont];
  fontDescriptor = [v2 fontDescriptor];
  v4 = [fontDescriptor objectForKey:UIFontDescriptorTextStyleAttribute];

  if (v4)
  {
    v5 = [UIFontMetrics metricsForTextStyle:v4];
    [v5 scaledValueForValue:27.0];
    v7 = v6;
  }

  else
  {
    v7 = 27.0;
  }

  return v7;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PHDoubleLineTableViewCell;
  [(PHDoubleLineTableViewCell *)&v3 tintColorDidChange];
  [(PHDoubleLineTableViewCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  attributedText = [subtitleLabel attributedText];

  if (attributedText)
  {
    v5 = [[NSMutableAttributedString alloc] initWithAttributedString:attributedText];
    v6 = [v5 length];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100018004;
    v14 = &unk_10010AF68;
    selfCopy = self;
    v16 = v5;
    subtitleLabelTextColor = v5;
    [subtitleLabelTextColor enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v6 usingBlock:{0, &v11}];
    v8 = [(PHTableViewCell *)self subtitleLabel:v11];
    [v8 setAttributedText:subtitleLabelTextColor];
  }

  else
  {
    subtitleLabelTextColor = [(PHDoubleLineTableViewCell *)self subtitleLabelTextColor];
    v9 = [(PHDoubleLineTableViewCell *)self _accessibilityHigherContrastTintColorForColor:subtitleLabelTextColor];
    subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
    [subtitleLabel2 setTextColor:v9];
  }
}

@end