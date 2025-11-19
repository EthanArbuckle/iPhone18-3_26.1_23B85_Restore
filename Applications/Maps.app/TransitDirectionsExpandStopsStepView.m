@interface TransitDirectionsExpandStopsStepView
- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate;
- (TransitDirectionsListExpandableItem)expandableItem;
- (id)_imageViewPositionConstraints;
- (id)_initialConstraints;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_detailButtonTapped:(id)a3;
- (void)_updateExpandButton;
- (void)_updateFonts;
- (void)_updateLinkColors;
- (void)_updateLinkStyles;
- (void)_updateNavigationStateAlpha:(double)a3;
- (void)configureWithItem:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateExpandCollapseStyling;
@end

@implementation TransitDirectionsExpandStopsStepView

- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableCellDelegate);

  return WeakRetained;
}

- (void)_updateNavigationStateAlpha:(double)a3
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsExpandStopsStepView;
  [(TransitDirectionsIconStepView *)&v6 _updateNavigationStateAlpha:?];
  v5 = [(TransitDirectionsExpandStopsStepView *)self detailButton];
  [v5 setAlpha:a3];

  [(TransitDirectionsColoredLine *)self->_line setAlpha:a3];
}

- (void)_updateExpandButton
{
  v3 = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
  v4 = [(MapsLargerHitTargetButton *)self->_detailButton currentTitle];
  if (v3)
  {
    v5 = [v3 shouldEnableExpandedButton];
    v6 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    v7 = [v6 isLuminanceReduced];

    v8 = (v7 ^ 1) & v5;
    v9 = [v3 expandingButtonTitleForExpandedState:{objc_msgSend(v3, "expanded") & v8}];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100E16228;
    v10[3] = &unk_101660CE8;
    v10[4] = self;
    v4 = v9;
    v11 = v4;
    v12 = v8;
    [UIView performWithoutAnimation:v10];
  }

  -[MapsLargerHitTargetButton setHidden:](self->_detailButton, "setHidden:", [v4 length] == 0);
  if (v3)
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
  v6 = [(TransitDirectionsStepView *)self transitListItem];
  if ([v6 type] == 7)
  {
    v3 = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
    if ([v3 shouldEnableExpandedButton])
    {
      v4 = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
      if ([v4 expanded])
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
  v4 = [(TransitDirectionsStepView *)self transitListItem];
  v3 = [v4 fromLineColor];
  [(TransitDirectionsExpandStopsStepView *)self setLineColor:v3];
}

- (TransitDirectionsListExpandableItem)expandableItem
{
  if (!self->_checkedItemIsExpandable)
  {
    v3 = [(TransitDirectionsStepView *)self transitListItem];
    if (v3)
    {
      do
      {
        if ([v3 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
        {
          break;
        }

        v4 = [v3 parentItem];

        v3 = v4;
      }

      while (v4);
    }

    objc_storeWeak(&self->_expandableItem, v3);
    self->_checkedItemIsExpandable = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_expandableItem);

  return WeakRetained;
}

- (void)configureWithItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = TransitDirectionsExpandStopsStepView;
  v4 = a3;
  [(TransitDirectionsIconStepView *)&v7 configureWithItem:v4];
  objc_storeWeak(&self->_expandableItem, 0);
  self->_checkedItemIsExpandable = 0;
  [v4 lineWidthForView:{self, v7.receiver, v7.super_class}];
  v6 = v5;

  [(NSLayoutConstraint *)self->_lineWidthConstraint setConstant:v6];
  [(TransitDirectionsExpandStopsStepView *)self _minimumLinkHeight];
  [(NSLayoutConstraint *)self->_lineHeightConstraint setConstant:?];
  [(TransitDirectionsExpandStopsStepView *)self updateExpandCollapseStyling];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = TransitDirectionsExpandStopsStepView;
  v4 = a3;
  [(TransitDirectionsIconStepView *)&v11 traitCollectionDidChange:v4];
  [(TransitDirectionsListItem *)self->super.super._transitListItem lineWidthForView:self, v11.receiver, v11.super_class];
  [(NSLayoutConstraint *)self->_lineWidthConstraint setConstant:?];
  [(TransitDirectionsExpandStopsStepView *)self _minimumLinkHeight];
  [(NSLayoutConstraint *)self->_lineHeightConstraint setConstant:?];
  v5 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    detailButton = self->_detailButton;
    if (v8)
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
  v3 = [(MapsLargerHitTargetButton *)self->_detailButton titleLabel];
  [v3 setFont:v4];
}

- (void)_detailButtonTapped:(id)a3
{
  v5 = [(TransitDirectionsExpandStopsStepView *)self expandableCellDelegate];
  v4 = [(TransitDirectionsExpandStopsStepView *)self expandableItem];
  [v5 transitDirectionsCell:self wantsToExpandOrCollapseItem:v4];
}

- (id)_imageViewPositionConstraints
{
  v3 = [(MKArtworkImageView *)self->super._iconImageView centerYAnchor];
  v4 = [(TransitDirectionsExpandStopsStepView *)self centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v11[0] = v5;
  v6 = [(MKArtworkImageView *)self->super._iconImageView centerXAnchor];
  v7 = [(TransitDirectionsColoredLine *)self->_line centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)_initialConstraints
{
  v34.receiver = self;
  v34.super_class = TransitDirectionsExpandStopsStepView;
  v3 = [(TransitDirectionsIconStepView *)&v34 _initialConstraints];
  v4 = [(TransitDirectionsIconStepView *)self _indentsLinkMap];
  v5 = [(TransitDirectionsColoredLine *)self->_line centerXAnchor];
  if (v4)
  {
    v6 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    v7 = [v6 leadingAnchor];
    v8 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    [v8 userInterfaceIdiom];

    [v5 constraintEqualToAnchor:v7 constant:10.0];
  }

  else
  {
    v6 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
    v7 = [v6 centerXAnchor];
    [v5 constraintEqualToAnchor:v7];
  }
  v9 = ;
  [v3 addObject:v9];

  v10 = [(TransitDirectionsColoredLine *)self->_line topAnchor];
  v11 = [(TransitDirectionsExpandStopsStepView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v3 addObject:v12];

  v13 = [(TransitDirectionsColoredLine *)self->_line bottomAnchor];
  v14 = [(TransitDirectionsExpandStopsStepView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(TransitDirectionsColoredLine *)self->_line widthAnchor];
  v17 = 0.0;
  v18 = [v16 constraintEqualToConstant:0.0];
  lineWidthConstraint = self->_lineWidthConstraint;
  self->_lineWidthConstraint = v18;

  [v3 addObject:self->_lineWidthConstraint];
  v20 = [(TransitDirectionsColoredLine *)self->_line heightAnchor];
  [(TransitDirectionsExpandStopsStepView *)self _minimumLinkHeight];
  v21 = [v20 constraintGreaterThanOrEqualToConstant:?];
  lineHeightConstraint = self->_lineHeightConstraint;
  self->_lineHeightConstraint = v21;

  [v3 addObject:self->_lineHeightConstraint];
  if ([(TransitDirectionsIconStepView *)self _indentsLinkMap])
  {
    v23 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
    [v23 userInterfaceIdiom];

    v17 = 24.0;
  }

  v24 = [(MapsLargerHitTargetButton *)self->_detailButton titleLabel];
  v25 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v26 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  v27 = 6.5;
  if ([v26 userInterfaceIdiom] == 5)
  {
    v28 = 6.0;
  }

  else
  {
    v28 = 6.5;
  }

  v29 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  if ([v29 userInterfaceIdiom] == 5)
  {
    v27 = 6.0;
  }

  LODWORD(v30) = 1148846080;
  v31 = [v24 _maps_constraintsEqualToEdgesOfLayoutGuide:v25 insets:v28 priority:{v17, v27, 0.0, v30}];

  v32 = [v31 allConstraints];
  [v3 addObjectsFromArray:v32];

  return v3;
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
  v7 = [(TransitDirectionsColoredLine *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  line = self->_line;
  self->_line = v7;

  [(TransitDirectionsColoredLine *)self->_line setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TransitDirectionsExpandStopsStepView *)self addSubview:self->_line];
  if (sub_10000FA08(self) == 5)
  {
    v9 = [[MapsLargerHitTargetButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    detailButton = self->_detailButton;
    self->_detailButton = v9;

    v11 = self->_detailButton;
    v12 = [(TransitDirectionsExpandStopsStepView *)self theme];
    v13 = [v12 keyColor];
    [(MapsLargerHitTargetButton *)v11 setTitleColor:v13 forStates:0];
  }

  else
  {
    v14 = [MapsLargerHitTargetButton buttonWithType:1];
    v12 = self->_detailButton;
    self->_detailButton = v14;
  }

  [(MapsLargerHitTargetButton *)self->_detailButton setAccessibilityIdentifier:@"DetailButton"];
  [(MapsLargerHitTargetButton *)self->_detailButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(MapsLargerHitTargetButton *)self->_detailButton titleLabel];
  [v15 setNumberOfLines:2];

  [(MapsLargerHitTargetButton *)self->_detailButton setContentHorizontalAlignment:4];
  [(MapsLargerHitTargetButton *)self->_detailButton addTarget:self action:"_detailButtonTapped:" forControlEvents:64];
  v16 = self->_detailButton;
  v17 = +[UIColor systemGrayColor];
  [(MapsLargerHitTargetButton *)v16 setTitleColor:v17 forStates:2];

  v18 = [(TransitDirectionsExpandStopsStepView *)self traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 5)
  {
    v20 = -6.0;
  }

  else
  {
    v20 = -8.0;
  }

  v21 = [(TransitDirectionsExpandStopsStepView *)self detailButton];
  [v21 setTouchInsets:{v20, -16.0, v20, -16.0}];

  [(TransitDirectionsExpandStopsStepView *)self addSubview:self->_detailButton];
  [(TransitDirectionsExpandStopsStepView *)self _updateFonts];
}

@end