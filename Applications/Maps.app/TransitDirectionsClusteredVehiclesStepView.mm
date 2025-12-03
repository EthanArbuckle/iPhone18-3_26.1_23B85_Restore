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
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)_updateShieldSize;
- (void)configureWithItem:(id)item;
@end

@implementation TransitDirectionsClusteredVehiclesStepView

- (TransitDirectionsClusteredVehiclesStepViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)bottomSpacerHeight
{
  traitCollection = [(TransitDirectionsClusteredVehiclesStepView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  return 7.0;
}

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsClusteredVehiclesStepView;
  [(TransitDirectionsIconStepView *)&v5 _updateNavigationStateAlpha:?];
  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setAlpha:alpha];
}

- (void)_tapped
{
  delegate = [(TransitDirectionsClusteredVehiclesStepView *)self delegate];
  [delegate transitDirectionsClusteredVehiclesCellDidTapAlternateRouteButtonInCell:self];
}

- (TransitDirectionsListClusteredVehicleItem)clusteredVehicleItem
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
  }

  else
  {
    transitListItem2 = 0;
  }

  return transitListItem2;
}

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = TransitDirectionsClusteredVehiclesStepView;
  [(TransitDirectionsIconStepView *)&v8 configureWithItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clusteredSegment = [itemCopy clusteredSegment];
    alternateRouteItemsForTransitInfoLabel = [clusteredSegment alternateRouteItemsForTransitInfoLabel];
    if ([alternateRouteItemsForTransitInfoLabel count])
    {
      v7 = alternateRouteItemsForTransitInfoLabel;
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
  font = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel font];
  [font _scaledValueForValue:22.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_messageLabelBaselineConstraint setConstant:?];
}

- (void)_updateShieldSize
{
  v3 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v3 preferredContentSizeCategory];

  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setShieldSize:[MKTransitInfoLabelView clusteredShieldSizeForContentSizeCategory:preferredContentSizeCategory]];
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
  _mapkit_fontByAddingFeaturesForTimeDisplay = [v3 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(MKTransitInfoLabelView *)self->_alternateRoutesLabel setFont:_mapkit_fontByAddingFeaturesForTimeDisplay];
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
  _initialConstraints = [(TransitDirectionsIconStepView *)&v32 _initialConstraints];
  firstBaselineAnchor = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel firstBaselineAnchor];
  contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
  topAnchor = [contentLayoutGuide topAnchor];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  messageLabelBaselineConstraint = self->_messageLabelBaselineConstraint;
  self->_messageLabelBaselineConstraint = v7;

  [_initialConstraints addObject:self->_messageLabelBaselineConstraint];
  centerYAnchor = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel centerYAnchor];
  contentLayoutGuide2 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  centerYAnchor2 = [contentLayoutGuide2 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [_initialConstraints addObject:v12];

  contentLayoutGuide3 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor = [contentLayoutGuide3 bottomAnchor];
  lastBaselineAnchor = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel lastBaselineAnchor];
  v16 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor];
  [_initialConstraints addObject:v16];

  contentLayoutGuide4 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  leadingAnchor = [contentLayoutGuide4 leadingAnchor];
  leadingAnchor2 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [_initialConstraints addObject:v20];

  if (sub_10000FA08(self) == 5)
  {
    contentLayoutGuide5 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    trailingAnchor = [contentLayoutGuide5 trailingAnchor];
    trailingAnchor2 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  }

  else
  {
    firstBaselineAnchor2 = [(UIImageView *)self->_chevronImageView firstBaselineAnchor];
    firstBaselineAnchor3 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel firstBaselineAnchor];
    v26 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3];
    [_initialConstraints addObject:v26];

    leadingAnchor3 = [(UIImageView *)self->_chevronImageView leadingAnchor];
    trailingAnchor3 = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel trailingAnchor];
    v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:5.0];
    [_initialConstraints addObject:v29];

    contentLayoutGuide5 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    trailingAnchor = [contentLayoutGuide5 trailingAnchor];
    trailingAnchor2 = [(UIImageView *)self->_chevronImageView trailingAnchor];
    [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  }
  v30 = ;
  [_initialConstraints addObject:v30];

  [(TransitDirectionsClusteredVehiclesStepView *)self _updateConstraintsValue];

  return _initialConstraints;
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
    traitCollection = [(TransitDirectionsClusteredVehiclesStepView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    if (layoutDirection == 1)
    {
      imageFlippedForRightToLeftLayoutDirection = [v7 imageFlippedForRightToLeftLayoutDirection];

      v7 = imageFlippedForRightToLeftLayoutDirection;
    }

    v11 = [[UIImageView alloc] initWithImage:v7];
    chevronImageView = self->_chevronImageView;
    self->_chevronImageView = v11;

    [(UIImageView *)self->_chevronImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCallout];
    [(UIImageView *)self->_chevronImageView setPreferredSymbolConfiguration:v13];

    textColor = [(MKTransitInfoLabelView *)self->_alternateRoutesLabel textColor];
    [(UIImageView *)self->_chevronImageView setTintColor:textColor];

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