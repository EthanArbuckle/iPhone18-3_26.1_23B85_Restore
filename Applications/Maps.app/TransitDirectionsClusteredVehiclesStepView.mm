@interface TransitDirectionsClusteredVehiclesStepView
- (TransitDirectionsClusteredVehiclesStepViewDelegate)delegate;
- (TransitDirectionsListClusteredVehicleItem)clusteredVehicleItem;
- (double)bottomSpacerHeight;
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_tapped;
- (void)_updateConstraintsValue;
- (void)_updateFonts;
- (void)_updateNavigationStateAlpha:(double)a3;
- (void)_updateShieldSize;
- (void)configureWithItem:(id)a3;
@end

@implementation TransitDirectionsClusteredVehiclesStepView

- (TransitDirectionsClusteredVehiclesStepViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)bottomSpacerHeight
{
  v2 = [(TransitDirectionsClusteredVehiclesStepView *)self traitCollection];
  [v2 userInterfaceIdiom];

  return 7.0;
}

- (void)_updateNavigationStateAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsClusteredVehiclesStepView;
  [(TransitDirectionsIconStepView *)&v5 _updateNavigationStateAlpha:?];
  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setAlpha:a3];
}

- (void)_tapped
{
  v3 = [(TransitDirectionsClusteredVehiclesStepView *)self delegate];
  [v3 transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:self];
}

- (TransitDirectionsListClusteredVehicleItem)clusteredVehicleItem
{
  v3 = [(TransitDirectionsStepView *)self transitListItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TransitDirectionsStepView *)self transitListItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configureWithItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TransitDirectionsClusteredVehiclesStepView;
  [(TransitDirectionsIconStepView *)&v8 configureWithItem:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 clusteredSegment];
    v6 = [v5 alternateRouteItemsForTransitInfoLabel];
    if ([v6 count])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setLabelItems:v7];
  }
}

- (void)_updateConstraintsValue
{
  v3 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel font];
  [v3 _scaledValueForValue:22.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_messageLabelBaselineConstraint setConstant:?];
}

- (void)_updateShieldSize
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setShieldSize:[MKTransitInfoLabelView clusteredShieldSizeForContentSizeCategory:v4]];
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v3 = ;
  v4 = [v3 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setFont:v4];
}

- (void)_contentSizeCategoryDidChange
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsClusteredVehiclesStepView;
  [(TransitDirectionsStepView *)&v3 _contentSizeCategoryDidChange];
  [(TransitDirectionsClusteredVehiclesStepView *)self _updateFonts];
  [(TransitDirectionsClusteredVehiclesStepView *)self _updateShieldSize];
  [(TransitDirectionsClusteredVehiclesStepView *)self _updateConstraintsValue];
}

- (id)_initialConstraints
{
  v32.receiver = self;
  v32.super_class = TransitDirectionsClusteredVehiclesStepView;
  v3 = [(TransitDirectionsIconStepView *)&v32 _initialConstraints];
  v4 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel firstBaselineAnchor];
  v5 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  messageLabelBaselineConstraint = self->_messageLabelBaselineConstraint;
  self->_messageLabelBaselineConstraint = v7;

  [v3 addObject:self->_messageLabelBaselineConstraint];
  v9 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel centerYAnchor];
  v10 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v3 addObject:v12];

  v13 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v14 = [v13 bottomAnchor];
  v15 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel lastBaselineAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];
  [v3 addObject:v16];

  v17 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v18 = [v17 leadingAnchor];
  v19 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

  if (sub_10000FA08(self) == 5)
  {
    v21 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    v22 = [v21 trailingAnchor];
    v23 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel trailingAnchor];
    [v22 constraintEqualToAnchor:v23];
  }

  else
  {
    v24 = [(UIImageView *)self->_chevronImageView firstBaselineAnchor];
    v25 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel firstBaselineAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v3 addObject:v26];

    v27 = [(UIImageView *)self->_chevronImageView leadingAnchor];
    v28 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:5.0];
    [v3 addObject:v29];

    v21 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    v22 = [v21 trailingAnchor];
    v23 = [(UIImageView *)self->_chevronImageView trailingAnchor];
    [v22 constraintGreaterThanOrEqualToAnchor:v23];
  }
  v30 = ;
  [v3 addObject:v30];

  [(TransitDirectionsClusteredVehiclesStepView *)self _updateConstraintsValue];

  return v3;
}

- (void)_createSubviews
{
  v20.receiver = self;
  v20.super_class = TransitDirectionsClusteredVehiclesStepView;
  [(TransitDirectionsIconStepView *)&v20 _createSubviews];
  v3 = objc_alloc_init(MKTransitInfoLabelView);
  alternateRoutesLabel = self->_alternateRoutesLabel;
  self->_alternateRoutesLabel = v3;

  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransitDirectionsClusteredVehiclesStepView *)self _updateShieldSize];
  LODWORD(v5) = 1148846080;
  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v5];
  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setNumberOfLines:0];
  v6 = +[UIColor systemGrayColor];
  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setTextColor:v6];

  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setTextAlignment:4];
  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setLineBreakMode:0];
  [(TransitDirectionsClusteredVehiclesStepView *)self addSubview:self->_alternateRoutesLabel];
  if (sub_10000FA08(self) != 5)
  {
    v7 = [UIImage systemImageNamed:@"chevron.right"];
    v8 = [(TransitDirectionsClusteredVehiclesStepView *)self traitCollection];
    v9 = [v8 layoutDirection];

    if (v9 == 1)
    {
      v10 = [v7 imageFlippedForRightToLeftLayoutDirection];

      v7 = v10;
    }

    v11 = [[UIImageView alloc] initWithImage:v7];
    chevronImageView = self->_chevronImageView;
    self->_chevronImageView = v11;

    [(UIImageView *)self->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCallout];
    [(UIImageView *)self->_chevronImageView setPreferredSymbolConfiguration:v13];

    v14 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel textColor];
    [(UIImageView *)self->_chevronImageView setTintColor:v14];

    LODWORD(v15) = 1148846080;
    [(UIImageView *)self->_chevronImageView setContentCompressionResistancePriority:1 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(UIImageView *)self->_chevronImageView setContentCompressionResistancePriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UIImageView *)self->_chevronImageView setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UIImageView *)self->_chevronImageView setContentHuggingPriority:0 forAxis:v18];
    [(TransitDirectionsClusteredVehiclesStepView *)self addSubview:self->_chevronImageView];
  }

  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_tapped"];
  [(TransitDirectionsClusteredVehiclesStepView *)self addGestureRecognizer:v19];
  [(TransitDirectionsClusteredVehiclesStepView *)self _updateFonts];
}

@end