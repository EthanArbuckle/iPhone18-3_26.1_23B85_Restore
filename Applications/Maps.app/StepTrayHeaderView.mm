@interface StepTrayHeaderView
- (CGSize)intrinsicContentSize;
- (StepTrayHeaderView)initWithDelegate:(id)a3 metrics:(id)a4;
- (StepTrayHeaderViewDelegate)delegate;
- (void)setDefaultTitle:(id)a3 defaultSubtitle:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation StepTrayHeaderView

- (StepTrayHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = StepTrayHeaderView;
  v4 = a3;
  [(StepTrayHeaderView *)&v15 traitCollectionDidChange:v4];
  v5 = [(StepTrayHeaderView *)self traitCollection:v15.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    minimizedValueFontProvider = self->_minimizedValueFontProvider;
    v9 = [(StepTrayHeaderView *)self traitCollection];
    v10 = minimizedValueFontProvider[2](minimizedValueFontProvider, v9);

    v11 = [(NavTrayMetrics *)self->_metrics minimizedTitleTextStyle];
    [(NavTrayMetrics *)self->_metrics minimizedTitleFontWeight];
    v12 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v11 weight:?];

    v13 = [(NavTrayStackedLabel *)self->_defaultLabel topLabel];
    [v13 setFont:v10];

    v14 = [(NavTrayStackedLabel *)self->_defaultLabel bottomLabel];
    [v14 setFont:v12];
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

- (void)setDefaultTitle:(id)a3 defaultSubtitle:(id)a4
{
  defaultLabel = self->_defaultLabel;
  v7 = a4;
  v8 = a3;
  v9 = [(NavTrayStackedLabel *)defaultLabel topLabel];
  [v9 setText:v8];

  v10 = [(NavTrayStackedLabel *)self->_defaultLabel bottomLabel];
  [v10 setText:v7];
}

- (StepTrayHeaderView)initWithDelegate:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = StepTrayHeaderView;
  v8 = [(StepTrayHeaderView *)&v40 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(StepTrayHeaderView *)v8 setAccessibilityIdentifier:v10];

    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v8->_metrics, a4);
    v11 = [UIFont _maps_fontProviderWeight:UIContentSizeCategoryLarge minimumPointSize:UIContentSizeCategoryExtraExtraExtraLarge minimumSizeCategory:UIFontWeightBold maximumPointSize:25.0 maximumSizeCategory:33.0];
    minimizedValueFontProvider = v8->_minimizedValueFontProvider;
    v8->_minimizedValueFontProvider = v11;

    [(StepTrayHeaderView *)v8 setUserInteractionEnabled:1];
    v13 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:"pressedHeaderView"];
    [(StepTrayHeaderView *)v8 addGestureRecognizer:v13];
    v14 = v8->_minimizedValueFontProvider;
    v15 = [(StepTrayHeaderView *)v8 traitCollection];
    v16 = v14[2](v14, v15);

    v17 = [v7 minimizedTitleTextStyle];
    [v7 minimizedTitleFontWeight];
    v18 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v17 weight:?];

    v19 = objc_opt_new();
    defaultLabel = v8->_defaultLabel;
    v8->_defaultLabel = v19;

    [(NavTrayStackedLabel *)v8->_defaultLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NavTrayMetrics *)v8->_metrics minimizedValueToTitlePadding];
    [(NavTrayStackedLabel *)v8->_defaultLabel setInterLabelPadding:?];
    v21 = [(NavTrayStackedLabel *)v8->_defaultLabel topLabel];
    [v21 setFont:v16];

    v22 = [(NavTrayMetrics *)v8->_metrics minimizedValueTextColor];
    v23 = [(NavTrayStackedLabel *)v8->_defaultLabel topLabel];
    [v23 setTextColor:v22];

    v24 = [(NavTrayStackedLabel *)v8->_defaultLabel topLabel];
    [v24 setAdjustsFontSizeToFitWidth:0];

    v25 = [(NavTrayStackedLabel *)v8->_defaultLabel bottomLabel];
    [v25 setFont:v18];

    v26 = [(NavTrayMetrics *)v8->_metrics minimizedTitleTextColor];
    v27 = [(NavTrayStackedLabel *)v8->_defaultLabel bottomLabel];
    [v27 setTextColor:v26];

    v28 = [(NavTrayStackedLabel *)v8->_defaultLabel bottomLabel];
    [v28 setAdjustsFontSizeToFitWidth:1];

    [(NavTrayStackedLabel *)v8->_defaultLabel setAccessibilityIdentifier:@"DefaultLabel"];
    [(StepTrayHeaderView *)v8 addSubview:v8->_defaultLabel];
    v29 = objc_alloc_init(NSMutableArray);
    [(NavTrayMetrics *)v8->_metrics defaultHorizontalPadding];
    v31 = v30;
    [(NavTrayMetrics *)v8->_metrics defaultVerticalPadding];
    LODWORD(v32) = 1148846080;
    v34 = [(NavTrayStackedLabel *)v8->_defaultLabel _maps_constraintsEqualToEdgesOfView:v8 insets:v33 priority:v31, v33, v31, v32];
    v35 = [v34 allConstraints];
    [v29 addObjectsFromArray:v35];

    v36 = [(NavTrayStackedLabel *)v8->_defaultLabel centerYAnchor];
    v37 = [(StepTrayHeaderView *)v8 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];
    [v29 addObject:v38];

    [NSLayoutConstraint activateConstraints:v29];
  }

  return v8;
}

@end