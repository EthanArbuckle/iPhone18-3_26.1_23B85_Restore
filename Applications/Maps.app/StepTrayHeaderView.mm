@interface StepTrayHeaderView
- (CGSize)intrinsicContentSize;
- (StepTrayHeaderView)initWithDelegate:(id)delegate metrics:(id)metrics;
- (StepTrayHeaderViewDelegate)delegate;
- (void)setDefaultTitle:(id)title defaultSubtitle:(id)subtitle;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation StepTrayHeaderView

- (StepTrayHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = StepTrayHeaderView;
  changeCopy = change;
  [(StepTrayHeaderView *)&v15 traitCollectionDidChange:changeCopy];
  v5 = [(StepTrayHeaderView *)self traitCollection:v15.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    minimizedValueFontProvider = self->_minimizedValueFontProvider;
    traitCollection = [(StepTrayHeaderView *)self traitCollection];
    v10 = minimizedValueFontProvider[2](minimizedValueFontProvider, traitCollection);

    minimizedTitleTextStyle = [(NavTrayMetrics *)self->_metrics minimizedTitleTextStyle];
    [(NavTrayMetrics *)self->_metrics minimizedTitleFontWeight];
    v12 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:minimizedTitleTextStyle weight:?];

    topLabel = [(NavTrayStackedLabel *)self->_defaultLabel topLabel];
    [topLabel setFont:v10];

    bottomLabel = [(NavTrayStackedLabel *)self->_defaultLabel bottomLabel];
    [bottomLabel setFont:v12];
  }
}

- (CGSize)intrinsicContentSize
{
  [(NavTrayMetrics *)self->_metrics expandCollapseImageSize];
  v4 = v3;
  [(NavTrayStackedLabel *)self->_defaultLabel intrinsicContentSize];
  v6 = v5;
  [(StepTrayHeaderView *)self frame];
  v8 = v7;
  [(NavTrayMetrics *)self->_metrics defaultVerticalPadding];
  v10 = fmax(fmax(v6, v4), 60.0) + v9 * 2.0;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)setDefaultTitle:(id)title defaultSubtitle:(id)subtitle
{
  defaultLabel = self->_defaultLabel;
  subtitleCopy = subtitle;
  titleCopy = title;
  topLabel = [(NavTrayStackedLabel *)defaultLabel topLabel];
  [topLabel setText:titleCopy];

  bottomLabel = [(NavTrayStackedLabel *)self->_defaultLabel bottomLabel];
  [bottomLabel setText:subtitleCopy];
}

- (StepTrayHeaderView)initWithDelegate:(id)delegate metrics:(id)metrics
{
  delegateCopy = delegate;
  metricsCopy = metrics;
  v40.receiver = self;
  v40.super_class = StepTrayHeaderView;
  v8 = [(StepTrayHeaderView *)&v40 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(StepTrayHeaderView *)v8 setAccessibilityIdentifier:v10];

    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_metrics, metrics);
    v11 = [UIFont _maps_fontProviderWeight:UIContentSizeCategoryLarge minimumPointSize:UIContentSizeCategoryExtraExtraExtraLarge minimumSizeCategory:UIFontWeightBold maximumPointSize:25.0 maximumSizeCategory:33.0];
    minimizedValueFontProvider = v8->_minimizedValueFontProvider;
    v8->_minimizedValueFontProvider = v11;

    [(StepTrayHeaderView *)v8 setUserInteractionEnabled:1];
    v13 = [[UITapGestureRecognizer alloc] initWithTarget:delegateCopy action:"pressedHeaderView"];
    [(StepTrayHeaderView *)v8 addGestureRecognizer:v13];
    v14 = v8->_minimizedValueFontProvider;
    traitCollection = [(StepTrayHeaderView *)v8 traitCollection];
    v16 = v14[2](v14, traitCollection);

    minimizedTitleTextStyle = [metricsCopy minimizedTitleTextStyle];
    [metricsCopy minimizedTitleFontWeight];
    v18 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:minimizedTitleTextStyle weight:?];

    v19 = objc_opt_new();
    defaultLabel = v8->_defaultLabel;
    v8->_defaultLabel = v19;

    [(NavTrayStackedLabel *)v8->_defaultLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NavTrayMetrics *)v8->_metrics minimizedValueToTitlePadding];
    [(NavTrayStackedLabel *)v8->_defaultLabel setInterLabelPadding:?];
    topLabel = [(NavTrayStackedLabel *)v8->_defaultLabel topLabel];
    [topLabel setFont:v16];

    minimizedValueTextColor = [(NavTrayMetrics *)v8->_metrics minimizedValueTextColor];
    topLabel2 = [(NavTrayStackedLabel *)v8->_defaultLabel topLabel];
    [topLabel2 setTextColor:minimizedValueTextColor];

    topLabel3 = [(NavTrayStackedLabel *)v8->_defaultLabel topLabel];
    [topLabel3 setAdjustsFontSizeToFitWidth:0];

    bottomLabel = [(NavTrayStackedLabel *)v8->_defaultLabel bottomLabel];
    [bottomLabel setFont:v18];

    minimizedTitleTextColor = [(NavTrayMetrics *)v8->_metrics minimizedTitleTextColor];
    bottomLabel2 = [(NavTrayStackedLabel *)v8->_defaultLabel bottomLabel];
    [bottomLabel2 setTextColor:minimizedTitleTextColor];

    bottomLabel3 = [(NavTrayStackedLabel *)v8->_defaultLabel bottomLabel];
    [bottomLabel3 setAdjustsFontSizeToFitWidth:1];

    [(NavTrayStackedLabel *)v8->_defaultLabel setAccessibilityIdentifier:@"DefaultLabel"];
    [(StepTrayHeaderView *)v8 addSubview:v8->_defaultLabel];
    v29 = objc_alloc_init(NSMutableArray);
    [(NavTrayMetrics *)v8->_metrics defaultHorizontalPadding];
    v31 = v30;
    [(NavTrayMetrics *)v8->_metrics defaultVerticalPadding];
    LODWORD(v32) = 1148846080;
    v34 = [(NavTrayStackedLabel *)v8->_defaultLabel _maps_constraintsEqualToEdgesOfView:v8 insets:v33 priority:v31, v33, v31, v32];
    allConstraints = [v34 allConstraints];
    [v29 addObjectsFromArray:allConstraints];

    centerYAnchor = [(NavTrayStackedLabel *)v8->_defaultLabel centerYAnchor];
    centerYAnchor2 = [(StepTrayHeaderView *)v8 centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v29 addObject:v38];

    [NSLayoutConstraint activateConstraints:v29];
  }

  return v8;
}

@end