@interface TransitDirectionsExpandStopsStepView
- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate;
- (TransitDirectionsListExpandableItem)expandableItem;
- (id)_imageViewPositionConstraints;
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_detailButtonTapped:(id)tapped;
- (void)_updateExpandButton;
- (void)_updateFonts;
- (void)_updateLinkColors;
- (void)_updateLinkStyles;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
- (void)traitCollectionDidChange:(id)change;
- (void)updateExpandCollapseStyling;
@end

@implementation TransitDirectionsExpandStopsStepView

- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableCellDelegate);

  return WeakRetained;
}

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsExpandStopsStepView;
  [(TransitDirectionsIconStepView *)&v6 _updateNavigationStateAlpha:?];
  detailButton = [(TransitDirectionsExpandStopsStepView *)self detailButton];
  [detailButton setAlpha:alpha];

  [(TransitDirectionsColoredLine *)self->_line setAlpha:alpha];
}

- (void)_updateExpandButton
{
  expandableItem = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
  currentTitle = [(MapsLargerHitTargetButton *)self->_detailButton currentTitle];
  if (expandableItem)
  {
    shouldEnableExpandedButton = [expandableItem shouldEnableExpandedButton];
    traitCollection = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    isLuminanceReduced = [traitCollection isLuminanceReduced];

    v8 = (isLuminanceReduced ^ 1) & shouldEnableExpandedButton;
    v9 = [expandableItem expandingButtonTitleForExpandedState:{objc_msgSend(expandableItem, "expanded") & v8}];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E16228;
    v10[3] = &unk_101660CE8;
    v10[4] = self;
    currentTitle = v9;
    v11 = currentTitle;
    v12 = v8;
    [UIView performWithoutAnimation:v10];
  }

  -[MapsLargerHitTargetButton setHidden:](self->_detailButton, "setHidden:", [currentTitle length] == 0);
  if (expandableItem)
  {
    [(TransitDirectionsStepView *)self _updateConstraints];
    [(TransitDirectionsExpandStopsStepView *)self _mapkit_layoutIfNeeded];
  }
}

- (void)updateExpandCollapseStyling
{
  [(TransitDirectionsExpandStopsStepView *)self _updateLinkStyles];

  [(TransitDirectionsExpandStopsStepView *)self _updateExpandButton];
}

- (void)_updateLinkStyles
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  if ([transitListItem type] == 7)
  {
    expandableItem = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
    if ([expandableItem shouldEnableExpandedButton])
    {
      expandableItem2 = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
      if ([expandableItem2 expanded])
      {
        v5 = 0;
      }

      else
      {
        v5 = 4;
      }

      [(TransitDirectionsColoredLine *)self->_line setStyle:v5];
    }

    else
    {
      [(TransitDirectionsColoredLine *)self->_line setStyle:0];
    }
  }

  else
  {
    [(TransitDirectionsColoredLine *)self->_line setStyle:0];
  }
}

- (void)_updateLinkColors
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  fromLineColor = [transitListItem fromLineColor];
  [(TransitDirectionsExpandStopsStepView *)self setLineColor:fromLineColor];
}

- (TransitDirectionsListExpandableItem)expandableItem
{
  if (!self->_checkedItemIsExpandable)
  {
    transitListItem = [(TransitDirectionsStepView *)self transitListItem];
    if (transitListItem)
    {
      do
      {
        if ([transitListItem conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
        {
          break;
        }

        parentItem = [transitListItem parentItem];

        transitListItem = parentItem;
      }

      while (parentItem);
    }

    objc_storeWeak(&self->_expandableItem, transitListItem);
    self->_checkedItemIsExpandable = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_expandableItem);

  return WeakRetained;
}

- (void)configureWithItem:(id)item
{
  v7.receiver = self;
  v7.super_class = TransitDirectionsExpandStopsStepView;
  itemCopy = item;
  [(TransitDirectionsIconStepView *)&v7 configureWithItem:itemCopy];
  objc_storeWeak(&self->_expandableItem, 0);
  self->_checkedItemIsExpandable = 0;
  [itemCopy lineWidthForView:{self, v7.receiver, v7.super_class}];
  v6 = v5;

  [(NSLayoutConstraint *)self->_lineWidthConstraint setConstant:v6];
  [(TransitDirectionsExpandStopsStepView *)self _minimumLinkHeight];
  [(NSLayoutConstraint *)self->_lineHeightConstraint setConstant:?];
  [(TransitDirectionsExpandStopsStepView *)self updateExpandCollapseStyling];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = TransitDirectionsExpandStopsStepView;
  changeCopy = change;
  [(TransitDirectionsIconStepView *)&v11 traitCollectionDidChange:changeCopy];
  [(TransitDirectionsListItem *)self->super.super._transitListItem lineWidthForView:self, v11.receiver, v11.super_class];
  [(NSLayoutConstraint *)self->_lineWidthConstraint setConstant:?];
  [(TransitDirectionsExpandStopsStepView *)self _minimumLinkHeight];
  [(NSLayoutConstraint *)self->_lineHeightConstraint setConstant:?];
  traitCollection = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  v6 = sub_100017FE8(changeCopy, traitCollection);

  if (v6)
  {
    traitCollection2 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    isLuminanceReduced = [traitCollection2 isLuminanceReduced];

    detailButton = self->_detailButton;
    if (isLuminanceReduced)
    {
      [(MapsLargerHitTargetButton *)self->_detailButton setEnabled:0];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_expandableItem);
      -[MapsLargerHitTargetButton setEnabled:](detailButton, "setEnabled:", [WeakRetained shouldEnableExpandedButton]);
    }
  }
}

- (void)_contentSizeCategoryDidChange
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsExpandStopsStepView;
  [(TransitDirectionsStepView *)&v3 _contentSizeCategoryDidChange];
  [(TransitDirectionsExpandStopsStepView *)self _updateFonts];
}

- (void)_updateFonts
{
  sub_10000FA08(self);
  v4 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody maximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  titleLabel = [(MapsLargerHitTargetButton *)self->_detailButton titleLabel];
  [titleLabel setFont:v4];
}

- (void)_detailButtonTapped:(id)tapped
{
  expandableCellDelegate = [(TransitDirectionsExpandStopsStepView *)self expandableCellDelegate];
  expandableItem = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
  [expandableCellDelegate transitDirectionsCell:self wantsToExpandOrCollapseItem:expandableItem];
}

- (id)_imageViewPositionConstraints
{
  centerYAnchor = [(MKArtworkImageView *)self->super._iconImageView centerYAnchor];
  centerYAnchor2 = [(TransitDirectionsExpandStopsStepView *)self centerYAnchor];
  v5 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v11[0] = v5;
  centerXAnchor = [(MKArtworkImageView *)self->super._iconImageView centerXAnchor];
  centerXAnchor2 = [(TransitDirectionsColoredLine *)self->_line centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)_initialConstraints
{
  v34.receiver = self;
  v34.super_class = TransitDirectionsExpandStopsStepView;
  _initialConstraints = [(TransitDirectionsIconStepView *)&v34 _initialConstraints];
  _indentsLinkMap = [(TransitDirectionsIconStepView *)self _indentsLinkMap];
  centerXAnchor = [(TransitDirectionsColoredLine *)self->_line centerXAnchor];
  if (_indentsLinkMap)
  {
    contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
    leadingAnchor = [contentLayoutGuide leadingAnchor];
    traitCollection = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    [traitCollection userInterfaceIdiom];

    [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:10.0];
  }

  else
  {
    contentLayoutGuide = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
    leadingAnchor = [contentLayoutGuide centerXAnchor];
    [centerXAnchor constraintEqualToAnchor:leadingAnchor];
  }
  v9 = ;
  [_initialConstraints addObject:v9];

  topAnchor = [(TransitDirectionsColoredLine *)self->_line topAnchor];
  topAnchor2 = [(TransitDirectionsExpandStopsStepView *)self topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [_initialConstraints addObject:v12];

  bottomAnchor = [(TransitDirectionsColoredLine *)self->_line bottomAnchor];
  bottomAnchor2 = [(TransitDirectionsExpandStopsStepView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [_initialConstraints addObject:v15];

  widthAnchor = [(TransitDirectionsColoredLine *)self->_line widthAnchor];
  v17 = 0.0;
  v18 = [widthAnchor constraintEqualToConstant:0.0];
  lineWidthConstraint = self->_lineWidthConstraint;
  self->_lineWidthConstraint = v18;

  [_initialConstraints addObject:self->_lineWidthConstraint];
  heightAnchor = [(TransitDirectionsColoredLine *)self->_line heightAnchor];
  [(TransitDirectionsExpandStopsStepView *)self _minimumLinkHeight];
  v21 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
  lineHeightConstraint = self->_lineHeightConstraint;
  self->_lineHeightConstraint = v21;

  [_initialConstraints addObject:self->_lineHeightConstraint];
  if ([(TransitDirectionsIconStepView *)self _indentsLinkMap])
  {
    traitCollection2 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    [traitCollection2 userInterfaceIdiom];

    v17 = 24.0;
  }

  titleLabel = [(MapsLargerHitTargetButton *)self->_detailButton titleLabel];
  contentLayoutGuide2 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  traitCollection3 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  v27 = 6.5;
  if ([traitCollection3 userInterfaceIdiom] == 5)
  {
    v28 = 6.0;
  }

  else
  {
    v28 = 6.5;
  }

  traitCollection4 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  if ([traitCollection4 userInterfaceIdiom] == 5)
  {
    v27 = 6.0;
  }

  LODWORD(v30) = 1148846080;
  v31 = [titleLabel _maps_constraintsEqualToEdgesOfLayoutGuide:contentLayoutGuide2 insets:v28 priority:{v17, v27, 0.0, v30}];

  allConstraints = [v31 allConstraints];
  [_initialConstraints addObjectsFromArray:allConstraints];

  return _initialConstraints;
}

- (void)_createSubviews
{
  v22.receiver = self;
  v22.super_class = TransitDirectionsExpandStopsStepView;
  [(TransitDirectionsIconStepView *)&v22 _createSubviews];
  [(TransitDirectionsColoredLine *)self->super._topLink setHidden:1];
  [(TransitDirectionsColoredLine *)self->super._bottomLink setHidden:1];
  v3 = [TransitDirectionsColoredLine alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(TransitDirectionsColoredLine *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  line = self->_line;
  self->_line = height;

  [(TransitDirectionsColoredLine *)self->_line setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransitDirectionsExpandStopsStepView *)self addSubview:self->_line];
  if (sub_10000FA08(self) == 5)
  {
    height2 = [[MapsLargerHitTargetButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    detailButton = self->_detailButton;
    self->_detailButton = height2;

    v11 = self->_detailButton;
    theme = [(TransitDirectionsExpandStopsStepView *)self theme];
    keyColor = [theme keyColor];
    [(MapsLargerHitTargetButton *)v11 setTitleColor:keyColor forStates:0];
  }

  else
  {
    v14 = [MapsLargerHitTargetButton buttonWithType:1];
    theme = self->_detailButton;
    self->_detailButton = v14;
  }

  [(MapsLargerHitTargetButton *)self->_detailButton setAccessibilityIdentifier:@"DetailButton"];
  [(MapsLargerHitTargetButton *)self->_detailButton setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [(MapsLargerHitTargetButton *)self->_detailButton titleLabel];
  [titleLabel setNumberOfLines:2];

  [(MapsLargerHitTargetButton *)self->_detailButton setContentHorizontalAlignment:4];
  [(MapsLargerHitTargetButton *)self->_detailButton addTarget:self action:"_detailButtonTapped:" forControlEvents:64];
  v16 = self->_detailButton;
  v17 = +[UIColor systemGrayColor];
  [(MapsLargerHitTargetButton *)v16 setTitleColor:v17 forStates:2];

  traitCollection = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v20 = -6.0;
  }

  else
  {
    v20 = -8.0;
  }

  detailButton = [(TransitDirectionsExpandStopsStepView *)self detailButton];
  [detailButton setTouchInsets:{v20, -16.0, v20, -16.0}];

  [(TransitDirectionsExpandStopsStepView *)self addSubview:self->_detailButton];
  [(TransitDirectionsExpandStopsStepView *)self _updateFonts];
}

@end