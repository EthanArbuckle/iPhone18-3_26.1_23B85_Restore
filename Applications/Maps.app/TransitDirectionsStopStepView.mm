@interface TransitDirectionsStopStepView
- ($29727DC6989B69F22950FCD998EA20D4)_metrics;
- (double)bottomSpacerHeight;
- (id)_imageViewPositionConstraints;
- (id)_initialConstraints;
- (id)_platformArtworkHorizontalPositioningConstraint;
- (void)_cellStyleDidChange;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_refreshAccessoryStringVisibility;
- (void)_updateFonts;
- (void)_updateForParentExpansionOrCollapse;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)configureWithItem:(id)item;
- (void)prepareForReuse;
@end

@implementation TransitDirectionsStopStepView

- (void)_updateForParentExpansionOrCollapse
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsIconStepView *)&v3 _updateForParentExpansionOrCollapse];
  [(TransitDirectionsStopStepView *)self _refreshAccessoryStringVisibility];
}

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v6 _updateNavigationStateAlpha:?];
  stationArtworkImageView = [(TransitDirectionsStopStepView *)self stationArtworkImageView];
  [stationArtworkImageView setAlpha:alpha];
}

- (void)_refreshAccessoryStringVisibility
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  hideAccessoryStringsWhenCollapsed = [transitListItem hideAccessoryStringsWhenCollapsed];

  if (hideAccessoryStringsWhenCollapsed)
  {
    transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
    parentItem = [transitListItem2 parentItem];

    if ([parentItem conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
    {
      v7 = parentItem;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (v8)
    {
      attributedText = v8;
      expanded = [v8 expanded];

      if (!expanded)
      {
        v11 = 1;
        v12 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  parentItem = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  attributedText = [parentItem attributedText];
  v11 = 0;
  v12 = [attributedText length] == 0;
LABEL_10:
  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [primaryAccessoryLabel setHidden:v12];

  if (v11)
  {
    v14 = 1;
  }

  else
  {

    secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
    parentItem = [secondaryAccessoryLabel attributedText];
    v14 = [parentItem length] == 0;
  }

  secondaryAccessoryLabel2 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [secondaryAccessoryLabel2 setHidden:v14];

  if ((v11 & 1) == 0)
  {
  }
}

- (void)configureWithItem:(id)item
{
  v16.receiver = self;
  v16.super_class = TransitDirectionsStopStepView;
  itemCopy = item;
  [(TransitDirectionsInstructionsStepView *)&v16 configureWithItem:itemCopy];
  majorStringImage = [itemCopy majorStringImage];

  [(MKArtworkImageView *)self->_stationArtworkImageView setImageSource:majorStringImage];
  [(MKArtworkImageView *)self->_stationArtworkImageView setHidden:majorStringImage == 0];
  [majorStringImage size];
  v7 = v6;
  traitCollection = [(TransitDirectionsStopStepView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v9 = 0.850000024;
  }

  else
  {
    v9 = 0.75;
  }

  [(NSLayoutConstraint *)self->_stationArtworkScalingHeightConstraint setConstant:v9 * v7];
  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  attributedText = [primaryAccessoryLabel attributedText];

  secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  attributedText2 = [secondaryAccessoryLabel attributedText];

  if (attributedText2 && !attributedText)
  {
    primaryAccessoryLabel2 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
    [primaryAccessoryLabel2 setAttributedText:attributedText2];

    secondaryAccessoryLabel2 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
    [secondaryAccessoryLabel2 setAttributedText:0];
  }

  [(TransitDirectionsStopStepView *)self _refreshAccessoryStringVisibility];
}

- (id)_platformArtworkHorizontalPositioningConstraint
{
  cellStyle = [(TransitDirectionsInstructionsStepView *)self cellStyle];
  if (cellStyle != 2)
  {
    if (cellStyle == 1)
    {
      platformArtworkImageView = [(TransitDirectionsInstructionsStepView *)self platformArtworkImageView];
      trailingAnchor = [platformArtworkImageView trailingAnchor];
      trailingAnchor2 = [(MKArtworkImageView *)self->super.super._iconImageView trailingAnchor];
      v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v9 = v8;
      v10 = @"platformArtworkTrailingToIconTrailing";
      goto LABEL_6;
    }

    if (cellStyle)
    {
      goto LABEL_7;
    }
  }

  platformArtworkImageView = [(TransitDirectionsInstructionsStepView *)self platformArtworkImageView];
  trailingAnchor = [platformArtworkImageView leadingAnchor];
  trailingAnchor2 = [(MKArtworkImageView *)self->super.super._iconImageView leadingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v9 = v8;
  v10 = @"platformArtworkLeadingToIconLeading";
LABEL_6:
  v2 = [v8 _maps_withIdentifier:v10];

LABEL_7:

  return v2;
}

- (void)_cellStyleDidChange
{
  v5.receiver = self;
  v5.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v5 _cellStyleDidChange];
  [(NSLayoutConstraint *)self->_iconToPrimaryLabelConstraint setActive:1];
  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [primaryAccessoryLabel setNumberOfLines:1];

  secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [secondaryAccessoryLabel setNumberOfLines:1];
}

- (double)bottomSpacerHeight
{
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];

  if (!transitListItem)
  {
    [(TransitDirectionsStepView *)&v14 bottomSpacerHeight:v13.receiver];
    return v10;
  }

  transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
  type = [transitListItem2 type];

  if (type == 11)
  {
    traitCollection = [(TransitDirectionsStopStepView *)self traitCollection];
    v7 = [traitCollection userInterfaceIdiom] == 5;
    v8 = 32.0;
    v9 = 10.0;
    goto LABEL_7;
  }

  if (type != 10)
  {
    [(TransitDirectionsStepView *)&v13 bottomSpacerHeight:self];
    return v10;
  }

  traitCollection = [(TransitDirectionsStopStepView *)self traitCollection];
  v7 = [traitCollection userInterfaceIdiom] == 5;
  v8 = 11.0;
  v9 = 8.0;
LABEL_7:
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- ($29727DC6989B69F22950FCD998EA20D4)_metrics
{
  retstr->var6 = 0.0;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  v14.receiver = self;
  v14.super_class = TransitDirectionsStopStepView;
  [($29727DC6989B69F22950FCD998EA20D4 *)&v14 _metrics];
  var0 = retstr->var0;
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  type = [transitListItem type];

  if (type == 11)
  {
    traitCollection = [(TransitDirectionsStopStepView *)self traitCollection];
    v9 = [traitCollection userInterfaceIdiom] == 5;
    v10 = 11.0;
    v11 = 13.0;
  }

  else
  {
    if (type != 10)
    {
      goto LABEL_9;
    }

    traitCollection = [(TransitDirectionsStopStepView *)self traitCollection];
    v9 = [traitCollection userInterfaceIdiom] == 5;
    v10 = 16.0;
    v11 = 4.0;
  }

  if (v9)
  {
    var0 = v11;
  }

  else
  {
    var0 = v10;
  }

LABEL_9:
  retstr->var6 = 1.0;
  retstr->var0 = var0;
  result = [(TransitDirectionsIconStepView *)self _indentsLinkMap];
  if (result)
  {
    traitCollection2 = [(TransitDirectionsStopStepView *)self traitCollection];
    [traitCollection2 userInterfaceIdiom];

    retstr->var1 = 24.0;
  }

  return result;
}

- (id)_imageViewPositionConstraints
{
  if ([(TransitDirectionsIconStepView *)self _indentsLinkMap])
  {
    centerYAnchor = [(MKArtworkImageView *)self->super.super._iconImageView centerYAnchor];
    primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    topAnchor = [primaryLabel topAnchor];
    primaryLabel2 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    font = [primaryLabel2 font];
    [font _mapkit_lineHeight];
    v9 = [centerYAnchor constraintEqualToAnchor:topAnchor constant:v8 * 0.5];
    v10 = [v9 _maps_withIdentifier:@"iconCenterYToPrimaryLabelTop"];
    iconToPrimaryLabelConstraint = self->_iconToPrimaryLabelConstraint;
    self->_iconToPrimaryLabelConstraint = v10;

    leadingAnchor = [(MKArtworkImageView *)self->super.super._iconImageView leadingAnchor];
    contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
    leadingAnchor2 = [contentLayoutGuide leadingAnchor];
    v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v15 = [v14 _maps_withIdentifier:@"iconLeadingToContentLeading"];
    v27[0] = v15;
    centerXAnchor = [(MKArtworkImageView *)self->super.super._iconImageView centerXAnchor];
    contentLayoutGuide2 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    leadingAnchor3 = [contentLayoutGuide2 leadingAnchor];
    traitCollection = [(TransitDirectionsStopStepView *)self traitCollection];
    [traitCollection userInterfaceIdiom];

    v20 = [centerXAnchor constraintEqualToAnchor:leadingAnchor3 constant:10.0];
    v21 = [v20 _maps_withIdentifier:@"iconCenterXToContentLeading"];
    v22 = self->_iconToPrimaryLabelConstraint;
    v27[1] = v21;
    v27[2] = v22;
    _imageViewPositionConstraints = [NSArray arrayWithObjects:v27 count:3];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = TransitDirectionsStopStepView;
    _imageViewPositionConstraints = [(TransitDirectionsInstructionsStepView *)&v26 _imageViewPositionConstraints];
  }

  return _imageViewPositionConstraints;
}

- (id)_initialConstraints
{
  v39.receiver = self;
  v39.super_class = TransitDirectionsStopStepView;
  _initialConstraints = [(TransitDirectionsIconStepView *)&v39 _initialConstraints];
  heightAnchor = [(MKArtworkImageView *)self->_stationArtworkImageView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:0.0];
  v6 = [v5 _maps_withIdentifier:@"stationArtworkScaledHeight"];
  stationArtworkScalingHeightConstraint = self->_stationArtworkScalingHeightConstraint;
  self->_stationArtworkScalingHeightConstraint = v6;

  LODWORD(v8) = 1148829696;
  [(NSLayoutConstraint *)self->_stationArtworkScalingHeightConstraint setPriority:v8];
  [_initialConstraints addObject:self->_stationArtworkScalingHeightConstraint];
  centerYAnchor = [(MKArtworkImageView *)self->_stationArtworkImageView centerYAnchor];
  centerYAnchor2 = [(MKArtworkImageView *)self->super.super._iconImageView centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v12 = [v11 _maps_withIdentifier:@"stationArtworkCenterYToIconCenterY"];
  [_initialConstraints addObject:v12];

  centerXAnchor = [(MKArtworkImageView *)self->_stationArtworkImageView centerXAnchor];
  leadingAccessoryLayoutGuide = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  centerXAnchor2 = [leadingAccessoryLayoutGuide centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17 = [v16 _maps_withIdentifier:@"stationArtworkCenterXToLeadingLayoutCenterX"];
  [_initialConstraints addObject:v17];

  topAnchor = [(MKArtworkImageView *)self->_stationArtworkImageView topAnchor];
  leadingAccessoryLayoutGuide2 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  topAnchor2 = [leadingAccessoryLayoutGuide2 topAnchor];
  v21 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v22 = [v21 _maps_withIdentifier:@"stationArtworkTopToLeadingLayoutTop"];
  [_initialConstraints addObject:v22];

  leadingAnchor = [(MKArtworkImageView *)self->_stationArtworkImageView leadingAnchor];
  leadingAccessoryLayoutGuide3 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  leadingAnchor2 = [leadingAccessoryLayoutGuide3 leadingAnchor];
  v26 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v27 = [v26 _maps_withIdentifier:@"stationArtworkLeadingToLeadingLayoutLeading"];
  [_initialConstraints addObject:v27];

  leadingAccessoryLayoutGuide4 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  trailingAnchor = [leadingAccessoryLayoutGuide4 trailingAnchor];
  trailingAnchor2 = [(MKArtworkImageView *)self->_stationArtworkImageView trailingAnchor];
  v31 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v32 = [v31 _maps_withIdentifier:@"leadingLayoutTrailingToStationArtworkTrailing"];
  [_initialConstraints addObject:v32];

  leadingAccessoryLayoutGuide5 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  bottomAnchor = [leadingAccessoryLayoutGuide5 bottomAnchor];
  bottomAnchor2 = [(MKArtworkImageView *)self->_stationArtworkImageView bottomAnchor];
  v36 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v37 = [v36 _maps_withIdentifier:@"leadingLayoutBottomToStationArtworkBottom"];
  [_initialConstraints addObject:v37];

  return _initialConstraints;
}

- (void)_contentSizeCategoryDidChange
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v6 _contentSizeCategoryDidChange];
  [(TransitDirectionsStopStepView *)self _updateFonts];
  primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  font = [primaryLabel font];
  [font _mapkit_lineHeight];
  [(NSLayoutConstraint *)self->_iconToPrimaryLabelConstraint setConstant:v5 * 0.5];
}

- (void)_updateFonts
{
  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system17SemiBold];
  }
  v3 = ;
  primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  [primaryLabel setFont:v3];

  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system16];
  }

  else
  {
    +[UIFont system15];
  }
  v5 = ;
  secondaryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryLabel];
  [secondaryLabel setFont:v5];

  selfCopy = self;
  if (sub_10000FA08(selfCopy) == 5)
  {
    traitCollection = [(TransitDirectionsStopStepView *)selfCopy traitCollection];
    if ([traitCollection userInterfaceIdiom] == 5)
    {
      v9 = &UIFontTextStyleBody;
    }

    else
    {
      v9 = &UIFontTextStyleSubheadline;
    }

    v10 = *v9;

    v11 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v10];

    fontDescriptor = [v11 fontDescriptor];
    v13 = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

    v14 = [UIFont fontWithDescriptor:v13 size:0.0];
  }

  else
  {
    v14 = +[UIFont system16];
  }

  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)selfCopy primaryAccessoryLabel];
  [primaryAccessoryLabel setFont:v14];

  v16 = selfCopy;
  if (sub_10000FA08(v16) == 5)
  {
    traitCollection2 = [(TransitDirectionsStopStepView *)v16 traitCollection];
    if ([traitCollection2 userInterfaceIdiom] == 5)
    {
      v18 = &UIFontTextStyleBody;
    }

    else
    {
      v18 = &UIFontTextStyleSubheadline;
    }

    v19 = *v18;

    v20 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v19];

    fontDescriptor2 = [v20 fontDescriptor];
    v22 = [fontDescriptor2 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

    v24 = [UIFont fontWithDescriptor:v22 size:0.0];
  }

  else
  {
    v24 = +[UIFont system16];
  }

  secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)v16 secondaryAccessoryLabel];
  [secondaryAccessoryLabel setFont:v24];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v3 prepareForReuse];
  [(MKArtworkImageView *)self->_stationArtworkImageView setImageSource:0];
}

- (void)_createSubviews
{
  v15.receiver = self;
  v15.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v15 _createSubviews];
  _createImageView = [(TransitDirectionsIconStepView *)self _createImageView];
  stationArtworkImageView = self->_stationArtworkImageView;
  self->_stationArtworkImageView = _createImageView;

  [(MKArtworkImageView *)self->_stationArtworkImageView setAccessibilityIdentifier:@"StationArtworkImageView"];
  LODWORD(v5) = 1132068864;
  [(MKArtworkImageView *)self->_stationArtworkImageView _mapkit_setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [(MKArtworkImageView *)self->_stationArtworkImageView _mapkit_setContentCompressionResistancePriority:1 forAxis:v6];
  [(TransitDirectionsStopStepView *)self addSubview:self->_stationArtworkImageView];
  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  LODWORD(v8) = 1148829696;
  [primaryAccessoryLabel _mapkit_setContentHuggingPriority:0 forAxis:v8];

  v9 = +[UIColor secondaryLabelColor];
  primaryAccessoryLabel2 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [primaryAccessoryLabel2 setTextColor:v9];

  secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  LODWORD(v12) = 1148829696;
  [secondaryAccessoryLabel _mapkit_setContentHuggingPriority:0 forAxis:v12];

  v13 = +[UIColor tertiaryLabelColor];
  secondaryAccessoryLabel2 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [secondaryAccessoryLabel2 setTextColor:v13];

  [(TransitDirectionsStopStepView *)self _updateFonts];
}

@end