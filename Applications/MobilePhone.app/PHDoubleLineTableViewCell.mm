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
  v3 = [(PHTableViewCell *)&v11 loadRootViewAndContentViews];
  v4 = [(PHDoubleLineTableViewCell *)self traitCollection];
  if ([v4 preferredContentSizeCategoryAllowsMultilineTitleForDoubleLineCells])
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = [(PHTableViewCell *)self titleLabel];
  [v6 setNumberOfLines:v5];

  v7 = [(PHTableViewCell *)self subtitleLabel];
  [v7 setNumberOfLines:2];

  v8 = [(PHDoubleLineTableViewCell *)self subtitleLabelTextColor];
  v9 = [(PHTableViewCell *)self subtitleLabel];
  [v9 setTextColor:v8];

  return v3;
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
  v11 = [v10 isPreferredContentSizeCategoryAccessible];

  if (v11)
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
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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
  v3 = [v2 fontDescriptor];
  v4 = [v3 objectForKey:UIFontDescriptorTextStyleAttribute];

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
  v3 = [(PHTableViewCell *)self subtitleLabel];
  v4 = [v3 attributedText];

  if (v4)
  {
    v5 = [[NSMutableAttributedString alloc] initWithAttributedString:v4];
    v6 = [v5 length];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = __45__PHDoubleLineTableViewCell__updateTextColor__block_invoke;
    v14 = &unk_100286DD8;
    v15 = self;
    v16 = v5;
    v7 = v5;
    [v7 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v6 usingBlock:{0, &v11}];
    v8 = [(PHTableViewCell *)self subtitleLabel:v11];
    [v8 setAttributedText:v7];
  }

  else
  {
    v7 = [(PHDoubleLineTableViewCell *)self subtitleLabelTextColor];
    v9 = [(PHDoubleLineTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v7];
    v10 = [(PHTableViewCell *)self subtitleLabel];
    [v10 setTextColor:v9];
  }
}

void __45__PHDoubleLineTableViewCell__updateTextColor__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) _accessibilityHigherContrastTintColorForColor:a2];
  v8 = *(a1 + 40);
  v10 = NSForegroundColorAttributeName;
  v11 = v7;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 setAttributes:v9 range:{a3, a4}];
}

@end