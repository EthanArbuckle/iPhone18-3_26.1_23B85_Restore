@interface NavTrayEndCell
- (NavTrayButtonStylingDelegate)buttonStylingDelegate;
- (NavTrayEndCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateButtonStyling;
- (void)setButtonStylingDelegate:(id)delegate;
- (void)setHasWalkingETAInfo:(BOOL)info;
- (void)setMetrics:(id)metrics;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAlternateWalkingRouteDuration;
@end

@implementation NavTrayEndCell

- (NavTrayButtonStylingDelegate)buttonStylingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonStylingDelegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NavTrayEndCell;
  changeCopy = change;
  [(NavTrayEndCell *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(NavTrayEndCell *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  v8 = sub_10008FB5C(preferredContentSizeCategory, preferredContentSizeCategory2);
  if (v8)
  {
    [(NavTrayEndCell *)self _updateButtonStyling];
  }
}

- (void)_updateButtonStyling
{
  if (self->_hasWalkingETAInfo)
  {
    [(NavTrayButton *)self->_walkingRouteButton redrawTitle];
  }

  buttonStackView = self->_buttonStackView;

  [(AxisAdjustingStackView *)buttonStackView invalidateStackViewAxis];
}

- (void)updateAlternateWalkingRouteDuration
{
  if (self->_hasWalkingETAInfo)
  {
    [(NavTrayButton *)self->_walkingRouteButton redrawTitle];
    buttonStackView = self->_buttonStackView;

    [(AxisAdjustingStackView *)buttonStackView invalidateStackViewAxis];
  }
}

- (void)setHasWalkingETAInfo:(BOOL)info
{
  if (self->_hasWalkingETAInfo != info)
  {
    v11 = v3;
    self->_hasWalkingETAInfo = info;
    buttonStackView = self->_buttonStackView;
    if (info)
    {
      [(AxisAdjustingStackView *)buttonStackView insertArrangedTruncatableSubview:self->_walkingRouteButton atIndex:0];
    }

    else
    {
      [(AxisAdjustingStackView *)buttonStackView removeArrangedTruncatableSubview:self->_walkingRouteButton];
      [(NavTrayButton *)self->_walkingRouteButton removeFromSuperview];
    }

    [(AxisAdjustingStackView *)self->_buttonStackView setNeedsLayout:v6];

    [(NavTrayEndCell *)self _updateButtonStyling];
  }
}

- (void)setButtonStylingDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_buttonStylingDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_buttonStylingDelegate, obj);
    [(NavTrayEndCell *)self _updateButtonStyling];
    v5 = obj;
  }
}

- (void)setMetrics:(id)metrics
{
  objc_storeStrong(&self->_metrics, metrics);
  metricsCopy = metrics;
  [NSLayoutConstraint deactivateConstraints:self->_buttonHeightConstraints];
  heightAnchor = [(Truncatable *)self->_endRouteButton heightAnchor];
  [(NavTrayMetrics *)self->_metrics endButtonHeight];
  v7 = [heightAnchor constraintEqualToConstant:?];
  v12[0] = v7;
  heightAnchor2 = [(NavTrayButton *)self->_walkingRouteButton heightAnchor];
  [(NavTrayMetrics *)self->_metrics endButtonHeight];
  v9 = [heightAnchor2 constraintEqualToConstant:?];
  v12[1] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  buttonHeightConstraints = self->_buttonHeightConstraints;
  self->_buttonHeightConstraints = v10;

  [NSLayoutConstraint activateConstraints:self->_buttonHeightConstraints];
  [(NavTrayMetrics *)self->_metrics actionButtonInterButtonPadding];
  [(AxisAdjustingStackView *)self->_buttonStackView setSpacing:?];
  [(AxisAdjustingStackView *)self->_buttonStackView setNeedsLayout];

  [(NavTrayEndCell *)self _updateButtonStyling];
}

- (NavTrayEndCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v45.receiver = self;
  v45.super_class = NavTrayEndCell;
  identifierCopy = identifier;
  v5 = [(NavTrayEndCell *)&v45 initWithStyle:style reuseIdentifier:?];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [(NavTrayEndCell *)v5 setAccessibilityIdentifier:v7];

    v8 = +[UIColor clearColor];
    [(NavTrayEndCell *)v5 setBackgroundColor:v8];

    buttonHeightConstraints = v5->_buttonHeightConstraints;
    v5->_buttonHeightConstraints = &__NSArray0__struct;

    v10 = [[AxisAdjustingStackView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    buttonStackView = v5->_buttonStackView;
    v5->_buttonStackView = v10;

    [(AxisAdjustingStackView *)v5->_buttonStackView setDelegate:v5];
    [(AxisAdjustingStackView *)v5->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AxisAdjustingStackView *)v5->_buttonStackView setDistribution:1];
    [(AxisAdjustingStackView *)v5->_buttonStackView setAlignment:0];
    contentView = [(NavTrayEndCell *)v5 contentView];
    [contentView addSubview:v5->_buttonStackView];

    objc_initWeak(&location, v5);
    v13 = [_TtC4Maps13NavTrayButton alloc];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100C230A0;
    v42[3] = &unk_101661B98;
    objc_copyWeak(&v43, &location);
    v14 = [(NavTrayButton *)v13 initWithStyle:0 action:v42];
    endRouteButton = v5->_endRouteButton;
    v5->_endRouteButton = v14;

    [(Truncatable *)v5->_endRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(Truncatable *)v5->_endRouteButton setAccessibilityIdentifier:@"EndRouteButton"];
    LODWORD(v16) = 1148846080;
    [(Truncatable *)v5->_endRouteButton setContentCompressionResistancePriority:1 forAxis:v16];
    [(AxisAdjustingStackView *)v5->_buttonStackView addArrangedTruncatableSubview:v5->_endRouteButton];
    v17 = [_TtC4Maps13NavTrayButton alloc];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100C230FC;
    v40[3] = &unk_101661B98;
    objc_copyWeak(&v41, &location);
    v18 = [(NavTrayButton *)v17 initWithStyle:5 action:v40];
    walkingRouteButton = v5->_walkingRouteButton;
    v5->_walkingRouteButton = v18;

    [(NavTrayButton *)v5->_walkingRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NavTrayButton *)v5->_walkingRouteButton setAccessibilityIdentifier:@"WalkingRouteButton"];
    LODWORD(v20) = 1148846080;
    [(NavTrayButton *)v5->_walkingRouteButton setContentCompressionResistancePriority:1 forAxis:v20];
    topAnchor = [(AxisAdjustingStackView *)v5->_buttonStackView topAnchor];
    contentView2 = [(NavTrayEndCell *)v5 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46[0] = v35;
    bottomAnchor = [(AxisAdjustingStackView *)v5->_buttonStackView bottomAnchor];
    contentView3 = [(NavTrayEndCell *)v5 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[1] = v31;
    leadingAnchor = [(AxisAdjustingStackView *)v5->_buttonStackView leadingAnchor];
    contentView4 = [(NavTrayEndCell *)v5 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v46[2] = v24;
    trailingAnchor = [(AxisAdjustingStackView *)v5->_buttonStackView trailingAnchor];
    contentView5 = [(NavTrayEndCell *)v5 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v46[3] = v28;
    v29 = [NSArray arrayWithObjects:v46 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v5;
}

@end