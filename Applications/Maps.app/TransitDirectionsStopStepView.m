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
- (void)_updateNavigationStateAlpha:(double)a3;
- (void)configureWithItem:(id)a3;
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

- (void)_updateNavigationStateAlpha:(double)a3
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v6 _updateNavigationStateAlpha:?];
  v5 = [(TransitDirectionsStopStepView *)self stationArtworkImageView];
  [v5 setAlpha:a3];
}

- (void)_refreshAccessoryStringVisibility
{
  v3 = [(TransitDirectionsStepView *)self transitListItem];
  v4 = [v3 hideAccessoryStringsWhenCollapsed];

  if (v4)
  {
    v5 = [(TransitDirectionsStepView *)self transitListItem];
    v6 = [v5 parentItem];

    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = [v8 expanded];

      if (!v10)
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

  v6 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  v9 = [v6 attributedText];
  v11 = 0;
  v12 = [v9 length] == 0;
LABEL_10:
  v13 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [v13 setHidden:v12];

  if (v11)
  {
    v14 = 1;
  }

  else
  {

    v16 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
    v6 = [v16 attributedText];
    v14 = [v6 length] == 0;
  }

  v15 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [v15 setHidden:v14];

  if ((v11 & 1) == 0)
  {
  }
}

- (void)configureWithItem:(id)a3
{
  v16.receiver = self;
  v16.super_class = TransitDirectionsStopStepView;
  v4 = a3;
  [(TransitDirectionsInstructionsStepView *)&v16 configureWithItem:v4];
  v5 = [v4 majorStringImage];

  [(MKArtworkImageView *)self->_stationArtworkImageView setImageSource:v5];
  [(MKArtworkImageView *)self->_stationArtworkImageView setHidden:v5 == 0];
  [v5 size];
  v7 = v6;
  v8 = [(TransitDirectionsStopStepView *)self traitCollection];
  if ([v8 userInterfaceIdiom] == 5)
  {
    v9 = 0.850000024;
  }

  else
  {
    v9 = 0.75;
  }

  [(NSLayoutConstraint *)self->_stationArtworkScalingHeightConstraint setConstant:v9 * v7];
  v10 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  v11 = [v10 attributedText];

  v12 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  v13 = [v12 attributedText];

  if (v13 && !v11)
  {
    v14 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
    [v14 setAttributedText:v13];

    v15 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
    [v15 setAttributedText:0];
  }

  [(TransitDirectionsStopStepView *)self _refreshAccessoryStringVisibility];
}

- (id)_platformArtworkHorizontalPositioningConstraint
{
  v4 = [(TransitDirectionsInstructionsStepView *)self cellStyle];
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = [(TransitDirectionsInstructionsStepView *)self platformArtworkImageView];
      v6 = [v5 trailingAnchor];
      v7 = [(MKArtworkImageView *)self->super.super._iconImageView trailingAnchor];
      v8 = [v6 constraintEqualToAnchor:v7];
      v9 = v8;
      v10 = @"platformArtworkTrailingToIconTrailing";
      goto LABEL_6;
    }

    if (v4)
    {
      goto LABEL_7;
    }
  }

  v5 = [(TransitDirectionsInstructionsStepView *)self platformArtworkImageView];
  v6 = [v5 leadingAnchor];
  v7 = [(MKArtworkImageView *)self->super.super._iconImageView leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
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
  v3 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [v3 setNumberOfLines:1];

  v4 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [v4 setNumberOfLines:1];
}

- (double)bottomSpacerHeight
{
  v3 = [(TransitDirectionsStepView *)self transitListItem];

  if (!v3)
  {
    [(TransitDirectionsStepView *)&v14 bottomSpacerHeight:v13.receiver];
    return v10;
  }

  v4 = [(TransitDirectionsStepView *)self transitListItem];
  v5 = [v4 type];

  if (v5 == 11)
  {
    v6 = [(TransitDirectionsStopStepView *)self traitCollection];
    v7 = [v6 userInterfaceIdiom] == 5;
    v8 = 32.0;
    v9 = 10.0;
    goto LABEL_7;
  }

  if (v5 != 10)
  {
    [(TransitDirectionsStepView *)&v13 bottomSpacerHeight:self];
    return v10;
  }

  v6 = [(TransitDirectionsStopStepView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom] == 5;
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
  v6 = [(TransitDirectionsStepView *)self transitListItem];
  v7 = [v6 type];

  if (v7 == 11)
  {
    v8 = [(TransitDirectionsStopStepView *)self traitCollection];
    v9 = [v8 userInterfaceIdiom] == 5;
    v10 = 11.0;
    v11 = 13.0;
  }

  else
  {
    if (v7 != 10)
    {
      goto LABEL_9;
    }

    v8 = [(TransitDirectionsStopStepView *)self traitCollection];
    v9 = [v8 userInterfaceIdiom] == 5;
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
    v13 = [(TransitDirectionsStopStepView *)self traitCollection];
    [v13 userInterfaceIdiom];

    retstr->var1 = 24.0;
  }

  return result;
}

- (id)_imageViewPositionConstraints
{
  if ([(TransitDirectionsIconStepView *)self _indentsLinkMap])
  {
    v3 = [(MKArtworkImageView *)self->super.super._iconImageView centerYAnchor];
    v4 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    v5 = [v4 topAnchor];
    v6 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    v7 = [v6 font];
    [v7 _mapkit_lineHeight];
    v9 = [v3 constraintEqualToAnchor:v5 constant:v8 * 0.5];
    v10 = [v9 _maps_withIdentifier:@"iconCenterYToPrimaryLabelTop"];
    iconToPrimaryLabelConstraint = self->_iconToPrimaryLabelConstraint;
    self->_iconToPrimaryLabelConstraint = v10;

    v25 = [(MKArtworkImageView *)self->super.super._iconImageView leadingAnchor];
    v12 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    v13 = [v12 leadingAnchor];
    v14 = [v25 constraintGreaterThanOrEqualToAnchor:v13];
    v15 = [v14 _maps_withIdentifier:@"iconLeadingToContentLeading"];
    v27[0] = v15;
    v16 = [(MKArtworkImageView *)self->super.super._iconImageView centerXAnchor];
    v17 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    v18 = [v17 leadingAnchor];
    v19 = [(TransitDirectionsStopStepView *)self traitCollection];
    [v19 userInterfaceIdiom];

    v20 = [v16 constraintEqualToAnchor:v18 constant:10.0];
    v21 = [v20 _maps_withIdentifier:@"iconCenterXToContentLeading"];
    v22 = self->_iconToPrimaryLabelConstraint;
    v27[1] = v21;
    v27[2] = v22;
    v23 = [NSArray arrayWithObjects:v27 count:3];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = TransitDirectionsStopStepView;
    v23 = [(TransitDirectionsInstructionsStepView *)&v26 _imageViewPositionConstraints];
  }

  return v23;
}

- (id)_initialConstraints
{
  v39.receiver = self;
  v39.super_class = TransitDirectionsStopStepView;
  v3 = [(TransitDirectionsIconStepView *)&v39 _initialConstraints];
  v4 = [(MKArtworkImageView *)self->_stationArtworkImageView heightAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];
  v6 = [v5 _maps_withIdentifier:@"stationArtworkScaledHeight"];
  stationArtworkScalingHeightConstraint = self->_stationArtworkScalingHeightConstraint;
  self->_stationArtworkScalingHeightConstraint = v6;

  LODWORD(v8) = 1148829696;
  [(NSLayoutConstraint *)self->_stationArtworkScalingHeightConstraint setPriority:v8];
  [v3 addObject:self->_stationArtworkScalingHeightConstraint];
  v9 = [(MKArtworkImageView *)self->_stationArtworkImageView centerYAnchor];
  v10 = [(MKArtworkImageView *)self->super.super._iconImageView centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v12 = [v11 _maps_withIdentifier:@"stationArtworkCenterYToIconCenterY"];
  [v3 addObject:v12];

  v13 = [(MKArtworkImageView *)self->_stationArtworkImageView centerXAnchor];
  v14 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  v15 = [v14 centerXAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v17 = [v16 _maps_withIdentifier:@"stationArtworkCenterXToLeadingLayoutCenterX"];
  [v3 addObject:v17];

  v18 = [(MKArtworkImageView *)self->_stationArtworkImageView topAnchor];
  v19 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20];
  v22 = [v21 _maps_withIdentifier:@"stationArtworkTopToLeadingLayoutTop"];
  [v3 addObject:v22];

  v23 = [(MKArtworkImageView *)self->_stationArtworkImageView leadingAnchor];
  v24 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  v25 = [v24 leadingAnchor];
  v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25];
  v27 = [v26 _maps_withIdentifier:@"stationArtworkLeadingToLeadingLayoutLeading"];
  [v3 addObject:v27];

  v28 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  v29 = [v28 trailingAnchor];
  v30 = [(MKArtworkImageView *)self->_stationArtworkImageView trailingAnchor];
  v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
  v32 = [v31 _maps_withIdentifier:@"leadingLayoutTrailingToStationArtworkTrailing"];
  [v3 addObject:v32];

  v33 = [(TransitDirectionsStepView *)self leadingAccessoryLayoutGuide];
  v34 = [v33 bottomAnchor];
  v35 = [(MKArtworkImageView *)self->_stationArtworkImageView bottomAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35];
  v37 = [v36 _maps_withIdentifier:@"leadingLayoutBottomToStationArtworkBottom"];
  [v3 addObject:v37];

  return v3;
}

- (void)_contentSizeCategoryDidChange
{
  v6.receiver = self;
  v6.super_class = TransitDirectionsStopStepView;
  [(TransitDirectionsInstructionsStepView *)&v6 _contentSizeCategoryDidChange];
  [(TransitDirectionsStopStepView *)self _updateFonts];
  v3 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  v4 = [v3 font];
  [v4 _mapkit_lineHeight];
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
  v4 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  [v4 setFont:v3];

  if (sub_10000FA08(self) == 5)
  {
    +[UIFont system16];
  }

  else
  {
    +[UIFont system15];
  }
  v5 = ;
  v6 = [(TransitDirectionsInstructionsStepView *)self secondaryLabel];
  [v6 setFont:v5];

  v7 = self;
  if (sub_10000FA08(v7) == 5)
  {
    v8 = [(TransitDirectionsStopStepView *)v7 traitCollection];
    if ([v8 userInterfaceIdiom] == 5)
    {
      v9 = &UIFontTextStyleBody;
    }

    else
    {
      v9 = &UIFontTextStyleSubheadline;
    }

    v10 = *v9;

    v11 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v10];

    v12 = [v11 fontDescriptor];
    v13 = [v12 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

    v14 = [UIFont fontWithDescriptor:v13 size:0.0];
  }

  else
  {
    v14 = +[UIFont system16];
  }

  v15 = [(TransitDirectionsInstructionsStepView *)v7 primaryAccessoryLabel];
  [v15 setFont:v14];

  v16 = v7;
  if (sub_10000FA08(v16) == 5)
  {
    v17 = [(TransitDirectionsStopStepView *)v16 traitCollection];
    if ([v17 userInterfaceIdiom] == 5)
    {
      v18 = &UIFontTextStyleBody;
    }

    else
    {
      v18 = &UIFontTextStyleSubheadline;
    }

    v19 = *v18;

    v20 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v19];

    v21 = [v20 fontDescriptor];
    v22 = [v21 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

    v24 = [UIFont fontWithDescriptor:v22 size:0.0];
  }

  else
  {
    v24 = +[UIFont system16];
  }

  v23 = [(TransitDirectionsInstructionsStepView *)v16 secondaryAccessoryLabel];
  [v23 setFont:v24];
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
  v3 = [(TransitDirectionsIconStepView *)self _createImageView];
  stationArtworkImageView = self->_stationArtworkImageView;
  self->_stationArtworkImageView = v3;

  [(MKArtworkImageView *)self->_stationArtworkImageView setAccessibilityIdentifier:@"StationArtworkImageView"];
  LODWORD(v5) = 1132068864;
  [(MKArtworkImageView *)self->_stationArtworkImageView _mapkit_setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1132068864;
  [(MKArtworkImageView *)self->_stationArtworkImageView _mapkit_setContentCompressionResistancePriority:1 forAxis:v6];
  [(TransitDirectionsStopStepView *)self addSubview:self->_stationArtworkImageView];
  v7 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  LODWORD(v8) = 1148829696;
  [v7 _mapkit_setContentHuggingPriority:0 forAxis:v8];

  v9 = +[UIColor secondaryLabelColor];
  v10 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [v10 setTextColor:v9];

  v11 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  LODWORD(v12) = 1148829696;
  [v11 _mapkit_setContentHuggingPriority:0 forAxis:v12];

  v13 = +[UIColor tertiaryLabelColor];
  v14 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [v14 setTextColor:v13];

  [(TransitDirectionsStopStepView *)self _updateFonts];
}

@end