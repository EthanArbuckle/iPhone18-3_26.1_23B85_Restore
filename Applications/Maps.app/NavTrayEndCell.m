@interface NavTrayEndCell
- (NavTrayButtonStylingDelegate)buttonStylingDelegate;
- (NavTrayEndCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateButtonStyling;
- (void)setButtonStylingDelegate:(id)a3;
- (void)setHasWalkingETAInfo:(BOOL)a3;
- (void)setMetrics:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAlternateWalkingRouteDuration;
@end

@implementation NavTrayEndCell

- (NavTrayButtonStylingDelegate)buttonStylingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonStylingDelegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = NavTrayEndCell;
  v4 = a3;
  [(NavTrayEndCell *)&v9 traitCollectionDidChange:v4];
  v5 = [(NavTrayEndCell *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  v8 = sub_10008FB5C(v6, v7);
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

- (void)setHasWalkingETAInfo:(BOOL)a3
{
  if (self->_hasWalkingETAInfo != a3)
  {
    v11 = v3;
    self->_hasWalkingETAInfo = a3;
    buttonStackView = self->_buttonStackView;
    if (a3)
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

- (void)setButtonStylingDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonStylingDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_buttonStylingDelegate, obj);
    [(NavTrayEndCell *)self _updateButtonStyling];
    v5 = obj;
  }
}

- (void)setMetrics:(id)a3
{
  objc_storeStrong(&self->_metrics, a3);
  v5 = a3;
  [NSLayoutConstraint deactivateConstraints:self->_buttonHeightConstraints];
  v6 = [(Truncatable *)self->_endRouteButton heightAnchor];
  [(NavTrayMetrics *)self->_metrics endButtonHeight];
  v7 = [v6 constraintEqualToConstant:?];
  v12[0] = v7;
  v8 = [(NavTrayButton *)self->_walkingRouteButton heightAnchor];
  [(NavTrayMetrics *)self->_metrics endButtonHeight];
  v9 = [v8 constraintEqualToConstant:?];
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

- (NavTrayEndCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v45.receiver = self;
  v45.super_class = NavTrayEndCell;
  v39 = a4;
  v5 = [(NavTrayEndCell *)&v45 initWithStyle:a3 reuseIdentifier:?];
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
    v12 = [(NavTrayEndCell *)v5 contentView];
    [v12 addSubview:v5->_buttonStackView];

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
    v37 = [(AxisAdjustingStackView *)v5->_buttonStackView topAnchor];
    v38 = [(NavTrayEndCell *)v5 contentView];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v46[0] = v35;
    v33 = [(AxisAdjustingStackView *)v5->_buttonStackView bottomAnchor];
    v34 = [(NavTrayEndCell *)v5 contentView];
    v32 = [v34 bottomAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v46[1] = v31;
    v21 = [(AxisAdjustingStackView *)v5->_buttonStackView leadingAnchor];
    v22 = [(NavTrayEndCell *)v5 contentView];
    v23 = [v22 leadingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v46[2] = v24;
    v25 = [(AxisAdjustingStackView *)v5->_buttonStackView trailingAnchor];
    v26 = [(NavTrayEndCell *)v5 contentView];
    v27 = [v26 trailingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
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