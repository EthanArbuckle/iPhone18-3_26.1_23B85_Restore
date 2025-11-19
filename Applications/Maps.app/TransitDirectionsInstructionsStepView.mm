@interface TransitDirectionsInstructionsStepView
- ($29727DC6989B69F22950FCD998EA20D4)_metrics;
- (BOOL)_hasTrailingContent;
- (BOOL)_useSingleInstructionMetrics;
- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate;
- (TransitDirectionsListExpandableItem)expandableItem;
- (double)_availableWidthForInstructionType:(int64_t)a3;
- (double)_detailButtonBaselineToLabelBaselineDistance;
- (double)_extraSpacingAboveView:(id)a3;
- (double)_minPlatformArtworkBottomToBottomDistance;
- (double)_secondaryFirstBaselineToBottomPlatformArtworkDistance;
- (id)_constraintsForCellStyle:(unint64_t)a3;
- (id)_fontForInstructionType:(int64_t)a3;
- (id)_imageViewPositionConstraints;
- (id)_labelViewForInstructionType:(int64_t)a3;
- (id)_layoutItemForInstructionType:(int64_t)a3;
- (id)_platformArtworkHorizontalPositioningConstraint;
- (id)_textAttributesForInstructionType:(int64_t)a3;
- (unint64_t)_bestCellStyleForCurrentState;
- (void)_configureLabelForInstruction:(int64_t)a3;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_detailButtonTapped:(id)a3;
- (void)_setCellStyle:(unint64_t)cellStyle;
- (void)_updateAccessoryLabelCompressionHuggingPriorities;
- (void)_updateConstraintValues;
- (void)_updateConstraints;
- (void)_updateMultipleInstructionImagePositionConstraint;
- (void)_updateNavigationStateAlpha:(double)a3;
- (void)_updateNavigationStateDependentFonts;
- (void)configureWithItem:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setNavigationState:(int64_t)a3;
- (void)setUseNavigationMetrics:(BOOL)a3;
- (void)updateExpandCollapseStyling;
@end

@implementation TransitDirectionsInstructionsStepView

- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableCellDelegate);

  return WeakRetained;
}

- (void)_updateNavigationStateAlpha:(double)a3
{
  v11.receiver = self;
  v11.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v11 _updateNavigationStateAlpha:?];
  v5 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  [v5 setAlpha:a3];

  v6 = [(TransitDirectionsInstructionsStepView *)self secondaryLabel];
  [v6 setAlpha:a3];

  v7 = [(TransitDirectionsInstructionsStepView *)self tertiaryLabel];
  [v7 setAlpha:a3];

  v8 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [v8 setAlpha:a3];

  v9 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [v9 setAlpha:a3];

  v10 = [(TransitDirectionsInstructionsStepView *)self platformArtworkImageView];
  [v10 setAlpha:a3];
}

- (void)setNavigationState:(int64_t)a3
{
  v5 = [(TransitDirectionsStepView *)self navigationState];
  v6.receiver = self;
  v6.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsStepView *)&v6 setNavigationState:a3];
  if (v5 != [(TransitDirectionsStepView *)self navigationState])
  {
    [(TransitDirectionsInstructionsStepView *)self _updateNavigationStateDependentFonts];
    [(TransitDirectionsInstructionsStepView *)self _updateMultipleInstructionImagePositionConstraint];
  }
}

- (void)setUseNavigationMetrics:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsStepView *)&v4 setUseNavigationMetrics:a3];
  [(TransitDirectionsInstructionsStepView *)self _setCellStyle:[(TransitDirectionsInstructionsStepView *)self _bestCellStyleForCurrentState]];
}

- (id)_textAttributesForInstructionType:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    if (a3)
    {
      v15 = 0;
      goto LABEL_14;
    }

    if (-[TransitDirectionsStepView useNavigationMetrics](self, "useNavigationMetrics") || (-[TransitDirectionsInstructionsStepView traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), [v11 preferredContentSizeCategory], v12 = objc_claimAutoreleasedReturnValue(), IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(), v12, v11, IsAccessibilityContentSizeCategory))
    {
      v14 = 6;
    }

    else
    {
      v14 = 5;
    }

    v19 = MKServerFormattedStringArtworkSizeAttributeKey;
    v8 = [NSNumber numberWithInteger:v14];
    v20 = v8;
    v9 = &v20;
    v10 = &v19;
  }

  else
  {
    v4 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
    v5 = [v4 preferredContentSizeCategory];
    v6 = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (v6)
    {
      v7 = 6;
    }

    else
    {
      v7 = 5;
    }

    v17 = MKServerFormattedStringArtworkSizeAttributeKey;
    v8 = [NSNumber numberWithInteger:v7];
    v18 = v8;
    v9 = &v18;
    v10 = &v17;
  }

  v15 = [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:1];

LABEL_14:

  return v15;
}

- (id)_labelViewForInstructionType:(int64_t)a3
{
  if (a3 > 4)
  {
    v3 = &OBJC_IVAR___TransitDirectionsInstructionsStepView__tertiaryLabel;
  }

  else
  {
    v3 = off_10165DD30[a3];
  }

  return *(&self->super.super.super.super.super.isa + *v3);
}

- (id)_fontForInstructionType:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v4 = [(TransitDirectionsInstructionsStepView *)self secondaryLabel];
    }

    else
    {
      v4 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v4 = [(TransitDirectionsInstructionsStepView *)self tertiaryLabel];
        break;
      case 3:
        v4 = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
        break;
      case 4:
        v4 = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = v4;
  v3 = [v4 font];

LABEL_13:

  return v3;
}

- (double)_availableWidthForInstructionType:(int64_t)a3
{
  [(TransitDirectionsInstructionsStepView *)self bounds];
  v6 = v5;
  [(TransitDirectionsStepView *)self leadingInstructionMargin];
  v8 = v7;
  [(TransitDirectionsStepView *)self _trailingGuideToContentViewDistance];
  v10 = v9;
  v11 = [(TransitDirectionsStepView *)self trailingView];
  [v11 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v13 = v6 - (v8 + v10 + v12);

  switch(a3)
  {
    case 2:
      return v13 + -16.0;
    case 1:
      v19 = [(TransitDirectionsStepView *)self transitListItem];
      v20 = [v19 minorStringImage];

      if (v20)
      {
        v21 = [(TransitDirectionsStepView *)self transitListItem];
        v22 = [v21 minorStringImage];
        [v22 size];
        v24 = v23;
        v25 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
        if ([v25 userInterfaceIdiom] == 5)
        {
          v26 = 6.0;
        }

        else
        {
          v26 = 4.0;
        }

        v13 = v13 - v24 + v26;
      }

      break;
    case 0:
      v14 = [(TransitDirectionsInstructionsStepView *)self expandableItem];
      if (v14)
      {
        v15 = v14;
        v16 = [(TransitDirectionsInstructionsStepView *)self expandableItem];
        v17 = [v16 shouldDisplayExpandButton];

        if (v17)
        {
          [(TransitDirectionsInstructionsStepView *)self _instructionsLabelToTrailingLayoutGuideDistance];
          return v13 - v18;
        }
      }

      break;
  }

  return v13;
}

- (id)_platformArtworkHorizontalPositioningConstraint
{
  cellStyle = self->_cellStyle;
  if (cellStyle != 2)
  {
    if (cellStyle == 1)
    {
      v5 = [(MKArtworkImageView *)self->_platformArtworkImageView trailingAnchor];
      v6 = [(MKArtworkImageView *)self->super._iconImageView trailingAnchor];
      v7 = [v5 constraintEqualToAnchor:v6];
      v8 = v7;
      v9 = @"platformArtworkTrailingToIconTrailing";
      goto LABEL_6;
    }

    if (cellStyle)
    {
      goto LABEL_7;
    }
  }

  v5 = [(MKArtworkImageView *)self->_platformArtworkImageView leadingAnchor];
  v6 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v8 = v7;
  v9 = @"platformArtworkLeadingToPrimaryLeading";
LABEL_6:
  v2 = [v7 _maps_withIdentifier:v9];

LABEL_7:

  return v2;
}

- (id)_layoutItemForInstructionType:(int64_t)a3
{
  [(TransitDirectionsInstructionsStepView *)self _availableWidthForInstructionType:?];
  v6 = v5;
  layoutItemsByType = self->_layoutItemsByType;
  v8 = [NSNumber numberWithInteger:a3];
  v9 = [(NSMutableDictionary *)layoutItemsByType objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 setWidth:v6];
    v10 = v9;
  }

  else
  {
    v11 = [(TransitDirectionsInstructionsStepView *)self _fontForInstructionType:a3];
    v12 = [(TransitDirectionsStepView *)self transitListItem];
    v13 = [v12 formattedStringsForType:a3];

    if ((a3 - 3) <= 1 && [(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels])
    {
      v14 = a3 == 3;
      if (a3 == 3)
      {
        v15 = [v13 mutableCopy];
        v16 = [(TransitDirectionsStepView *)self transitListItem];
        v17 = [v16 formattedStringsForType:4];
        [v15 addObjectsFromArray:v17];

        v18 = [v15 copy];
        v13 = v15;
      }

      else
      {
        v18 = 0;
      }

      v13 = v18;
    }

    else
    {
      v14 = 0;
    }

    v19 = [(TransitDirectionsInstructionsStepView *)self _textAttributesForInstructionType:a3];
    if (v11 && [v13 count])
    {
      if (!self->_layoutItemsByType)
      {
        v20 = [[NSMutableDictionary alloc] initWithCapacity:5];
        v21 = self->_layoutItemsByType;
        self->_layoutItemsByType = v20;
      }

      v22 = [[TransitInstructionLayoutItem alloc] initWithStrings:v13 font:v11 width:v19 extraTextAttributes:v6];
      [(TransitInstructionLayoutItem *)v22 setCombineStrings:v14];
      v23 = self->_layoutItemsByType;
      v24 = [NSNumber numberWithInteger:a3];
      [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

      v10 = v22;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_configureLabelForInstruction:(int64_t)a3
{
  v5 = [(TransitDirectionsInstructionsStepView *)self _layoutItemForInstructionType:?];
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v21 = v5;
        if ([(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels])
        {
          v17 = +[UIColor secondaryLabelColor];
          [(_MKUILabel *)self->_primaryAccessoryLabel setTextColor:v17];
        }

        v6 = [v21 bestFittingMultiPartString];
        v7 = [v6 attributedString];
        v8 = 368;
      }

      else
      {
        if (a3 != 4)
        {
          goto LABEL_24;
        }

        v21 = v5;
        v6 = [v5 bestFittingMultiPartString];
        v7 = [v6 attributedString];
        v8 = 376;
      }

      [*(&self->super.super.super.super.super.isa + v8) setAttributedText:v7];

      v18 = [*(&self->super.super.super.super.super.isa + v8) attributedText];
      [*(&self->super.super.super.super.super.isa + v8) setHidden:{objc_msgSend(v18, "length") == 0}];
      goto LABEL_18;
    }

    v21 = v5;
    v13 = [v5 strings];
    v14 = [v13 firstObject];

    if (v14)
    {
      v11 = [v21 bestFittingMultiPartString];
      v12 = 352;
      goto LABEL_12;
    }

    v20 = 352;
    goto LABEL_21;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_24;
    }

    v21 = v5;
    v9 = [v5 strings];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v21 bestFittingMultiPartString];
      v12 = 344;
LABEL_12:
      [*(&self->super.super.super.super.super.isa + v12) setMultiPartString:v11];

      v15 = *(&self->super.super.super.super.super.isa + v12);
      v16 = 0;
LABEL_22:
      [v15 setHidden:v16];
      goto LABEL_23;
    }

    v20 = 344;
LABEL_21:
    [*(&self->super.super.super.super.super.isa + v20) setText:0];
    v15 = *(&self->super.super.super.super.super.isa + v20);
    v16 = 1;
    goto LABEL_22;
  }

  v21 = v5;
  v18 = [v5 bestFittingMultiPartString];
  v19 = [v18 attributedString];
  [(_MKUILabel *)self->_primaryLabel setAttributedText:v19];

LABEL_18:
LABEL_23:
  v5 = v21;
LABEL_24:
}

- (void)configureWithItem:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v20 configureWithItem:v4];
  self->_checkedItemIsExpandable = 0;
  layoutItemsByType = self->_layoutItemsByType;
  self->_layoutItemsByType = 0;

  v6 = [(UIStackView *)self->_textStackView arrangedSubviews];
  v7 = [v6 valueForKeyPath:@"isHidden"];

  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:0];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:1];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:2];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:3];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:4];
  v8 = [(TransitDirectionsStepView *)self transitListItem];
  v9 = [v8 minorStringImage];
  [(MKArtworkImageView *)self->_platformArtworkImageView setImageSource:v9];

  v10 = [(TransitDirectionsStepView *)self transitListItem];
  v11 = [v10 minorStringImage];
  [(MKArtworkImageView *)self->_platformArtworkImageView setHidden:v11 == 0];

  v12 = [v4 badges];
  v13 = [v12 count];
  if (v13)
  {
    v14 = [v4 badges];
    v15 = [GEOTransitStepBadge _maps_artworkListFromStepBadges:v14];
    p_badgesArtworkListView = &self->_badgesArtworkListView;
    [(TransitArtworkListView *)self->_badgesArtworkListView setArtworkData:v15];
  }

  else
  {
    p_badgesArtworkListView = &self->_badgesArtworkListView;
    [(TransitArtworkListView *)self->_badgesArtworkListView setArtworkData:0];
  }

  [(TransitArtworkListView *)*p_badgesArtworkListView setHidden:v13 == 0];
  [(TransitDirectionsInstructionsStepView *)self _updateAccessoryLabelCompressionHuggingPriorities];
  v17 = [(TransitDirectionsInstructionsStepView *)self expandableItem];
  if (v17)
  {
    [(TransitDirectionsInstructionsStepView *)self updateExpandCollapseStyling];
  }

  v18 = [(UIStackView *)self->_textStackView arrangedSubviews];
  v19 = [v18 valueForKeyPath:@"isHidden"];

  if (([v19 isEqualToArray:v7] & 1) == 0)
  {
    [(TransitDirectionsInstructionsStepView *)self _updateConstraints];
  }
}

- (void)_updateAccessoryLabelCompressionHuggingPriorities
{
  if ([(TransitDirectionsInstructionsStepView *)self _hasTrailingContent])
  {
    [(_MKUILabel *)self->_primaryLabel _mapkit_contentCompressionResistancePriorityForAxis:0];
    v4 = 1000.0;
    if ((*&v3 + 100.0) <= 1000.0)
    {
      [(_MKUILabel *)self->_primaryLabel _mapkit_contentCompressionResistancePriorityForAxis:0];
      v4 = *&v3 + 100.0;
    }

    v5 = v4 + -1.0;
  }

  else
  {
    v5 = 999.0;
    v4 = 1000.0;
  }

  *&v3 = v4;
  [(_MKUILabel *)self->_primaryAccessoryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v3];
  *&v6 = v4;
  [(_MKUILabel *)self->_secondaryAccessoryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v6];
  *&v7 = v5;
  [(_MKUILabel *)self->_primaryAccessoryLabel _mapkit_setContentHuggingPriority:0 forAxis:v7];
  secondaryAccessoryLabel = self->_secondaryAccessoryLabel;
  *&v9 = v5;

  [(_MKUILabel *)secondaryAccessoryLabel _mapkit_setContentHuggingPriority:0 forAxis:v9];
}

- (void)_contentSizeCategoryDidChange
{
  v37.receiver = self;
  v37.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsStepView *)&v37 _contentSizeCategoryDidChange];
  layoutItemsByType = self->_layoutItemsByType;
  self->_layoutItemsByType = 0;

  detailButton = self->_detailButton;
  v5 = self;
  if (sub_10000FA08(v5) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v6 = ;
  v7 = [v6 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(MapsLargerHitTargetButton *)detailButton _setFont:v7];
  v8 = v5;
  if (![v8 useNavigationMetrics])
  {
    if (sub_10000FA08(v8) == 5)
    {
      +[UIFont system17];
    }

    else
    {
      +[UIFont system17SemiBold];
    }
    v11 = ;
    goto LABEL_15;
  }

  v9 = [v8 navigationState];
  v10 = sub_10000FA08(v8);
  if (v9 != 4)
  {
    if (v10 != 5)
    {
      v11 = +[UIFont system22Semibold];
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v10 == 5)
  {
LABEL_12:
    v11 = +[UIFont system22];
    goto LABEL_15;
  }

  v11 = +[UIFont system22Bold];
LABEL_15:
  v12 = v11;

  [v8[42] setFont:v12];
  v13 = v8;
  LODWORD(v12) = [v13 useNavigationMetrics];
  v14 = v13;
  v15 = sub_10000FA08(v14);
  if (v12 || v15 == 5)
  {
    v16 = +[UIFont system17];
  }

  else
  {
    v16 = +[UIFont system15];
  }

  v17 = v16;

  [v14[43] setFont:v17];
  v18 = v14;
  if (sub_10000FA08(v18) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v19 = ;
  v20 = [v19 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [v18[44] setFont:v20];
  v21 = v18;
  v22 = [v21 traitCollection];
  v23 = [v22 userInterfaceIdiom];
  v24 = UIFontTextStyleBody;
  if (v23 != 5)
  {
    v24 = UIFontTextStyleSubheadline;
  }

  v25 = v24;

  v26 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v25];

  v27 = [v26 fontDescriptor];
  v28 = [v27 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

  v29 = [UIFont fontWithDescriptor:v28 size:0.0];

  [v21[46] setFont:v29];
  v30 = v21;
  v31 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  v32 = [v30 traitCollection];
  v33 = [v32 userInterfaceIdiom];

  if (v33 == 5)
  {
    v34 = [v31 fontDescriptor];
    v35 = [v34 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay];

    v36 = [UIFont fontWithDescriptor:v35 size:0.0];

    v31 = v36;
  }

  [v30[47] setFont:v31];
  [v30 _updateConstraints];
}

- (void)_updateNavigationStateDependentFonts
{
  [(NSMutableDictionary *)self->_layoutItemsByType setObject:0 forKeyedSubscript:&off_1016EA448];
  [(NSMutableDictionary *)self->_layoutItemsByType setObject:0 forKeyedSubscript:&off_1016EA460];
  v3 = self;
  if (![(TransitDirectionsStepView *)v3 useNavigationMetrics])
  {
    if (sub_10000FA08(v3) == 5)
    {
      +[UIFont system17];
    }

    else
    {
      +[UIFont system17SemiBold];
    }
    v6 = ;
    goto LABEL_12;
  }

  v4 = [(TransitDirectionsStepView *)v3 navigationState];
  v5 = sub_10000FA08(v3);
  if (v4 != 4)
  {
    if (v5 != 5)
    {
      v6 = +[UIFont system22Semibold];
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v5 == 5)
  {
LABEL_9:
    v6 = +[UIFont system22];
    goto LABEL_12;
  }

  v6 = +[UIFont system22Bold];
LABEL_12:
  v7 = v6;

  [(_MKUILabel *)v3->_primaryLabel setFont:v7];
  v8 = v3;
  LODWORD(v7) = [v8 useNavigationMetrics];
  v9 = sub_10000FA08(v8);
  if (v7 || v9 == 5)
  {
    v10 = +[UIFont system17];
  }

  else
  {
    v10 = +[UIFont system15];
  }

  v11 = v10;

  [v8[43] setFont:v11];
  [v8 _configureLabelForInstruction:0];

  [v8 _configureLabelForInstruction:1];
}

- (void)_detailButtonTapped:(id)a3
{
  v5 = [(TransitDirectionsInstructionsStepView *)self expandableCellDelegate];
  v4 = [(TransitDirectionsInstructionsStepView *)self expandableItem];
  [v5 transitDirectionsCell:self wantsToExpandOrCollapseItem:v4];
}

- (double)_minPlatformArtworkBottomToBottomDistance
{
  [(TransitDirectionsInstructionsStepView *)self _secondaryFirstBaselineToBottomPlatformArtworkDistance];

  UIRoundToViewScale();
  return result;
}

- (double)_detailButtonBaselineToLabelBaselineDistance
{
  v3 = [(MKMultiPartLabel *)self->_secondaryLabel font];
  v4 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([v4 userInterfaceIdiom] == 5)
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 20.0;
  }

  [v3 _scaledValueForValue:v5];

  UIRoundToViewScale();
  return result;
}

- (double)_secondaryFirstBaselineToBottomPlatformArtworkDistance
{
  v2 = [(MKMultiPartLabel *)self->_secondaryLabel font];
  [v2 _scaledValueForValue:2.0];

  UIRoundToViewScale();
  return result;
}

- ($29727DC6989B69F22950FCD998EA20D4)_metrics
{
  *&retstr->var3 = 0u;
  *&retstr->var1 = 0u;
  retstr->var5 = 0.0;
  retstr->var6 = 10.0;
  v5 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([v5 userInterfaceIdiom] == 5)
  {
    v6 = 30.0;
  }

  else
  {
    v6 = 40.0;
  }

  retstr->var3 = v6;
  v7 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  [v7 userInterfaceIdiom];

  retstr->var4 = 30.0;
  v8 = [(TransitDirectionsStepView *)self transitListItem];
  v9 = [v8 type];

  if ((v9 - 2) >= 0xD || (v10 = 0.0, ((0x130Bu >> (v9 - 2)) & 1) == 0))
  {
    v11 = [(TransitDirectionsStepView *)self useNavigationMetrics];
    v12 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
    v13 = [v12 userInterfaceIdiom];

    v10 = 70.0;
    if (v11)
    {
      v10 = 82.0;
    }

    if (v13 == 5)
    {
      v10 = 43.0;
    }
  }

  retstr->var2 = v10;
  if ([(TransitDirectionsStepView *)self useNavigationMetrics])
  {
    v14 = 24.0;
  }

  else
  {
    v14 = 16.0;
  }

  v15 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([v15 userInterfaceIdiom] == 5)
  {
    v14 = 10.0;
  }

  retstr->var0 = v14;
  return result;
}

- (BOOL)_hasTrailingContent
{
  if (self->_cellStyle == 1)
  {
    return 0;
  }

  if ([(_MKUILabel *)self->_primaryAccessoryLabel isHidden])
  {
    return [(_MKUILabel *)self->_secondaryAccessoryLabel isHidden]^ 1;
  }

  return 1;
}

- (BOOL)_useSingleInstructionMetrics
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(UIStackView *)self->_textStackView arrangedSubviews];
  v4 = [v3 reverseObjectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 != self->_primaryLabel && ![(_MKUILabel *)v9 isHidden])
        {
          v10 = 0;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (void)updateExpandCollapseStyling
{
  v3 = [(TransitDirectionsInstructionsStepView *)self expandableItem];
  v4 = [(MapsLargerHitTargetButton *)self->_detailButton currentTitle];
  if (v3)
  {
    v5 = [v3 expandingButtonTitleForExpandedState:{objc_msgSend(v3, "expanded")}];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100F42694;
    v8[3] = &unk_101661A40;
    v8[4] = self;
    v4 = v5;
    v9 = v4;
    v10 = v3;
    [UIView performWithoutAnimation:v8];
  }

  if ([v4 length])
  {
    v6 = [v3 shouldDisplayExpandButton] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [(MapsLargerHitTargetButton *)self->_detailButton setHidden:v6];
  if (v3)
  {
    [(TransitDirectionsInstructionsStepView *)self _updateConstraints];
    v7 = [(TransitDirectionsInstructionsStepView *)self detailButton];
    [v7 sizeToFit];
  }
}

- (TransitDirectionsListExpandableItem)expandableItem
{
  if (!self->_checkedItemIsExpandable)
  {
    v3 = [(TransitDirectionsStepView *)self transitListItem];
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
    {
      v4 = [(TransitDirectionsStepView *)self transitListItem];
      objc_storeWeak(&self->_expandableItem, v4);
    }

    else
    {
      objc_storeWeak(&self->_expandableItem, 0);
    }

    self->_checkedItemIsExpandable = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_expandableItem);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v38 layoutSubviews];
  v3 = [(TransitDirectionsInstructionsStepView *)self _bestCellStyleForCurrentState];
  if (v3 != self->_cellStyle)
  {
    [(TransitDirectionsInstructionsStepView *)self _setCellStyle:v3];
    [(TransitDirectionsInstructionsStepView *)self updateConstraints];
    [(TransitDirectionsInstructionsStepView *)self layoutSubviews];
    return;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [&off_1016EDB98 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v28 = "layoutSubviews";
  v29 = 0;
  v6 = *v35;
  v31 = *v35;
  do
  {
    v7 = 0;
    v32 = v5;
    do
    {
      if (*v35 != v6)
      {
        objc_enumerationMutation(&off_1016EDB98);
      }

      v8 = [*(*(&v34 + 1) + 8 * v7) integerValue];
      v9 = [(TransitDirectionsInstructionsStepView *)self _layoutItemForInstructionType:v8];
      v10 = [(TransitDirectionsInstructionsStepView *)self _labelViewForInstructionType:v8];
      v11 = v10;
      if (v9)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v14 = [v13 text];
          if ([v14 length])
          {
            v15 = [v9 bestFittingMultiPartString];
            v16 = [v15 attributedString];
            if ([v16 length])
            {
              v17 = [v13 multiPartString];
              v18 = [v9 bestFittingMultiPartString];
              v19 = v17;
              v20 = v18;
              if (!(v19 | v20))
              {

                goto LABEL_29;
              }

              v26 = v20;
              v30 = [v19 isEqual:v20];

              if (v30)
              {
                v6 = v31;
                v5 = v32;
LABEL_31:

                goto LABEL_32;
              }

              v14 = [v9 bestFittingMultiPartString];
              [v13 setMultiPartString:v14];
LABEL_29:
              v6 = v31;
              v5 = v32;
            }

            else
            {

              v5 = v32;
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_32;
          }

          v21 = v11;
          v22 = [v9 bestFittingMultiPartString];
          v14 = [v22 attributedString];

          v23 = [v21 attributedText];
          if ([v23 length] && objc_msgSend(v14, "length"))
          {
            v24 = [v21 attributedText];
            v25 = v14;
            if (v25 | v24)
            {
              v14 = v25;
              v27 = [v24 isEqual:v25];

              if ((v27 & 1) == 0)
              {
                [v21 setAttributedText:v14];
                v29 = 1;
              }

              v6 = v31;
            }

            else
            {

              v14 = 0;
            }
          }

          else
          {
          }
        }

        goto LABEL_31;
      }

LABEL_32:

      v7 = v7 + 1;
    }

    while (v5 != v7);
    v5 = [&off_1016EDB98 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (v5);
  if (v29)
  {
    [(TransitDirectionsInstructionsStepView *)self _updateConstraints];
    [(TransitDirectionsInstructionsStepView *)self _mapkit_setNeedsLayout];
    v33.receiver = self;
    v33.super_class = TransitDirectionsInstructionsStepView;
    objc_msgSendSuper2(&v33, v28);
  }
}

- (void)_updateConstraintValues
{
  [(TransitDirectionsInstructionsStepView *)self _updateMultipleInstructionImagePositionConstraint];
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  [(TransitDirectionsInstructionsStepView *)self _metrics];
  v3 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints minimumCellHeightConstraint];
  [v3 setConstant:0.0];

  v4 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints contentLayoutGuideToPrimaryLeadingConstraint];
  [v4 setConstant:0.0];

  v5 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints topToPrimaryConstraint];
  [v5 setConstant:0.0];

  [(TransitDirectionsInstructionsStepView *)self _secondaryFirstBaselineToBottomPlatformArtworkDistance];
  v7 = v6;
  v8 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];
  [v8 setConstant:v7];

  cellStyle = self->_cellStyle;
  if (cellStyle == 2)
  {
LABEL_4:
    textStackView = self->_textStackView;
    [(TransitDirectionsInstructionsStepView *)self _extraSpacingAboveView:self->_badgesArtworkListView];
    v12 = v11;
    v13 = [(TransitDirectionsInstructionsStepView *)self tertiaryLabel];
    [(UIStackView *)textStackView setCustomSpacing:v13 afterView:v12];

    v14 = 0.0;
    if ([(TransitDirectionsStepView *)self useNavigationMetrics])
    {
      v15 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
      if ([v15 userInterfaceIdiom] == 5)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 46.0;
      }
    }

    if ([(TransitDirectionsInstructionsStepView *)self _hasTrailingContent])
    {
      v16 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
      [v16 userInterfaceIdiom];

      v14 = 10.0;
    }

    v17 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints primaryLabelTrailingToTrailingContentConstraint];
    [v17 setConstant:v14];

    v18 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints primaryLabelTrailingToTrailingContentConstraint];
    [v18 constant];
    v20 = v19;
    v21 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints secondaryLabelTrailingToTrailingContentConstraint];
    [v21 setConstant:v20];
    goto LABEL_13;
  }

  if (cellStyle != 1)
  {
    if (cellStyle)
    {
      return;
    }

    goto LABEL_4;
  }

  v22 = [(UIStackView *)self->_textStackView arrangedSubviews];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100F42E48;
  v23[3] = &unk_10165DD10;
  v25 = self;
  v26 = [v22 count];
  v24 = v22;
  v18 = v22;
  [v18 enumerateObjectsUsingBlock:v23];
  v21 = v24;
LABEL_13:
}

- (void)_updateConstraints
{
  [(TransitDirectionsInstructionsStepView *)self _updateConstraintValues];
  v3 = [(TransitDirectionsInstructionsStepView *)self _hasTrailingContent];
  v4 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints primaryAccessoryMaximumWidthFactorConstraint];
  [v4 setActive:v3];

  [(TransitDirectionsInstructionsStepView *)self _updateAccessoryLabelCompressionHuggingPriorities];
  v5 = [(TransitDirectionsInstructionsStepView *)self _useSingleInstructionMetrics];
  LODWORD(v3) = v5;
  [(NSLayoutConstraint *)self->_imageViewSingleInstructionConstraint setActive:v5];
  [(NSLayoutConstraint *)self->_imageViewMultipleInstructionsConstraint setActive:v3 ^ 1];
  v6 = [(TransitDirectionsStepView *)self transitListItem];
  v7 = [v6 minorStringImage];

  styleConstraints = self->_styleConstraints;
  if (v7)
  {
    v9 = [(_TransitDirectionsInstructionsCellConstraints *)styleConstraints textStackLeadingToPrimaryLabelLeadingConstraint];
    [v9 setActive:0];

    v10 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints platformArtworkTrailingToTextStackLabelLeadingConstraint];
    [v10 setActive:1];

    [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints platformArtworkBottomToBottomConstraint];
  }

  else
  {
    v11 = [(_TransitDirectionsInstructionsCellConstraints *)styleConstraints platformArtworkBottomToBottomConstraint];
    [v11 setActive:0];

    v12 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints platformArtworkTrailingToTextStackLabelLeadingConstraint];
    [v12 setActive:0];

    [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints textStackLeadingToPrimaryLabelLeadingConstraint];
  }
  v13 = ;
  [v13 setActive:1];

  v14.receiver = self;
  v14.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsStepView *)&v14 _updateConstraints];
}

- (void)_updateMultipleInstructionImagePositionConstraint
{
  v3 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  [v3 userInterfaceIdiom];

  v4 = 6.0;
  if ([(TransitDirectionsStepView *)self useNavigationMetrics])
  {
    v5 = [(TransitDirectionsStepView *)self navigationState];
    v6 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
    [v6 userInterfaceIdiom];

    if (v5 == 4)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 8.0;
    }
  }

  v10 = [(_MKUILabel *)self->_primaryLabel font];
  v7 = self;
  if (v10)
  {
    [v10 _scaledValueForValue:v4];
  }

  UIRoundToViewScale();
  v9 = v8;

  [(NSLayoutConstraint *)v7->_imageViewMultipleInstructionsConstraint setConstant:v9];
}

- (id)_imageViewPositionConstraints
{
  v21.receiver = self;
  v21.super_class = TransitDirectionsInstructionsStepView;
  v3 = [(TransitDirectionsIconStepView *)&v21 _imageViewPositionConstraints];
  v4 = [v3 mutableCopy];

  if (!self->_imageViewSingleInstructionConstraint)
  {
    v5 = [(MKArtworkImageView *)self->super._iconImageView centerYAnchor];
    v6 = [(UIStackView *)self->_textStackView centerYAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    v8 = [v7 _maps_withIdentifier:@"imageViewCenterToTextStackCenter"];
    imageViewSingleInstructionConstraint = self->_imageViewSingleInstructionConstraint;
    self->_imageViewSingleInstructionConstraint = v8;
  }

  if (!self->_imageViewMultipleInstructionsConstraint)
  {
    v10 = [(MKArtworkImageView *)self->super._iconImageView topAnchor];
    v11 = [(UIStackView *)self->_textStackView topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v13 = [v12 _maps_withIdentifier:@"imageViewTopToTextStackTop"];
    imageViewMultipleInstructionsConstraint = self->_imageViewMultipleInstructionsConstraint;
    self->_imageViewMultipleInstructionsConstraint = v13;
  }

  [v4 addObject:self->_imageViewSingleInstructionConstraint];
  [v4 addObject:self->_imageViewMultipleInstructionsConstraint];
  v15 = [(MKArtworkImageView *)self->super._iconImageView widthAnchor];
  [(TransitDirectionsInstructionsStepView *)self _maximumIconWidth];
  v16 = [v15 constraintEqualToConstant:?];
  [v4 addObject:v16];

  v17 = [(MKArtworkImageView *)self->super._iconImageView heightAnchor];
  [(TransitDirectionsInstructionsStepView *)self _maximumIconHeight];
  v18 = [v17 constraintEqualToConstant:?];
  [v4 addObject:v18];

  v19 = [v4 copy];

  return v19;
}

- (id)_constraintsForCellStyle:(unint64_t)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(_TransitDirectionsInstructionsCellConstraints);
  v6 = [(TransitDirectionsInstructionsStepView *)self heightAnchor];
  v7 = [v6 constraintGreaterThanOrEqualToConstant:0.0];
  v8 = [v7 _maps_withIdentifier:@"minimumCellHeightConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setMinimumCellHeightConstraint:v8];

  v9 = [(_TransitDirectionsInstructionsCellConstraints *)v5 minimumCellHeightConstraint];
  [v4 addObject:v9];

  v10 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v11 = [v10 bottomAnchor];
  v12 = [(MKArtworkImageView *)self->_platformArtworkImageView bottomAnchor];
  [(TransitDirectionsInstructionsStepView *)self _minPlatformArtworkBottomToBottomDistance];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12 constant:?];
  v14 = [v13 _maps_withIdentifier:@"platformArtworkBottomToBottomConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPlatformArtworkBottomToBottomConstraint:v14];

  v15 = [(_TransitDirectionsInstructionsCellConstraints *)v5 platformArtworkBottomToBottomConstraint];
  [v4 addObject:v15];

  v16 = [(MapsLargerHitTargetButton *)self->_detailButton trailingAnchor];
  v17 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v20 = [v19 _maps_withIdentifier:@"detailButtonTrailingToContentTrailing"];
  [v4 addObject:v20];

  v21 = [(MapsLargerHitTargetButton *)self->_detailButton firstBaselineAnchor];
  v22 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v24 = [v23 _maps_withIdentifier:@"detailButtonBaselineToPrimaryLabelBaseline"];
  [v4 addObject:v24];

  v25 = [(MKArtworkImageView *)self->_platformArtworkImageView bottomAnchor];
  v26 = [(MKMultiPartLabel *)self->_secondaryLabel firstBaselineAnchor];
  [(TransitDirectionsInstructionsStepView *)self _secondaryFirstBaselineToBottomPlatformArtworkDistance];
  v27 = [v25 constraintEqualToAnchor:v26 constant:?];
  v28 = [v27 _maps_withIdentifier:@"secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setSecondaryLabelFirstBaselineToPlatformArtworkBottomConstraint:v28];

  v29 = [(_TransitDirectionsInstructionsCellConstraints *)v5 secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];
  [v4 addObject:v29];

  v30 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v31 = [v30 bottomAnchor];
  v32 = [(UIStackView *)self->_textStackView bottomAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32];
  v34 = [v33 _maps_withIdentifier:@"contentBottomToTextStackBaseline"];
  [v4 addObject:v34];

  v35 = v4;
  v36 = [(TransitDirectionsInstructionsStepView *)self _platformArtworkHorizontalPositioningConstraint];
  v37 = [v36 _maps_withIdentifier:@"platformArtworkHorizontalPositioning"];
  [v4 addObject:v37];

  v172 = v5;
  v177 = self;
  v178 = v4;
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v91 = [(UIStackView *)self->_textStackView leadingAnchor];
      v92 = [(TransitDirectionsStepView *)self contentLayoutGuide];
      v93 = [v92 leadingAnchor];
      v94 = [v91 constraintEqualToAnchor:v93];
      v95 = [v94 _maps_withIdentifier:@"contentLayoutGuideToPrimaryLeadingConstraint"];
      [(_TransitDirectionsInstructionsCellConstraints *)v5 setContentLayoutGuideToPrimaryLeadingConstraint:v95];

      v96 = [(_TransitDirectionsInstructionsCellConstraints *)v5 contentLayoutGuideToPrimaryLeadingConstraint];
      [v4 addObject:v96];

      v97 = [(UIStackView *)self->_textStackView topAnchor];
      v98 = [(TransitDirectionsStepView *)self contentLayoutGuide];
      v99 = [v98 topAnchor];
      v100 = [v97 constraintEqualToAnchor:v99];
      v101 = [v100 _maps_withIdentifier:@"topToPrimaryConstraint"];
      [(_TransitDirectionsInstructionsCellConstraints *)v5 setTopToPrimaryConstraint:v101];

      v102 = [(_TransitDirectionsInstructionsCellConstraints *)v5 topToPrimaryConstraint];
      [v4 addObject:v102];

      v103 = [(TransitDirectionsStepView *)self contentLayoutGuide];
      v104 = [v103 trailingAnchor];
      v105 = [(UIStackView *)self->_textStackView trailingAnchor];
      v106 = [v104 constraintEqualToAnchor:v105];
      v107 = [v106 _maps_withIdentifier:@"contentTrailingToTextStackTrailing"];
      [v4 addObject:v107];

      v181 = 0u;
      v182 = 0u;
      v179 = 0u;
      v180 = 0u;
      obja = [(UIStackView *)self->_textStackView arrangedSubviews];
      v108 = [obja countByEnumeratingWithState:&v179 objects:v187 count:16];
      if (v108)
      {
        v109 = v108;
        v110 = *v180;
        do
        {
          for (i = 0; i != v109; i = i + 1)
          {
            if (*v180 != v110)
            {
              objc_enumerationMutation(obja);
            }

            v112 = *(*(&v179 + 1) + 8 * i);
            v113 = [(TransitDirectionsStepView *)self contentLayoutGuide];
            v114 = [v113 trailingAnchor];
            v115 = [(_MKUILabel *)v112 trailingAnchor];
            v116 = [v114 constraintEqualToAnchor:v115];
            v117 = [v116 _maps_withIdentifier:@"contentTrailingToLabelTrailing"];

            self = v177;
            if (v112 == v177->_primaryLabel)
            {
              [(_TransitDirectionsInstructionsCellConstraints *)v172 setPrimaryAccessoryToTrailingConstraint:v117];
              v118 = [(_TransitDirectionsInstructionsCellConstraints *)v172 primaryAccessoryToTrailingConstraint];
              [v118 setIdentifier:@"primaryAccessoryToTrailingConstraint"];
            }

            v35 = v178;
            [v178 addObject:v117];
          }

          v109 = [obja countByEnumeratingWithState:&v179 objects:v187 count:16];
        }

        while (v109);
      }

      goto LABEL_27;
    }

    if (a3)
    {
      goto LABEL_28;
    }
  }

  v38 = [(_MKUILabel *)self->_primaryLabel topAnchor];
  v39 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  v42 = [v41 _maps_withIdentifier:@"topToPrimaryConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setTopToPrimaryConstraint:v42];

  v43 = [(_TransitDirectionsInstructionsCellConstraints *)v5 topToPrimaryConstraint];
  [v4 addObject:v43];

  v44 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v45 = [v44 bottomAnchor];
  v46 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  v47 = [v46 bottomAnchor];
  v48 = [v45 constraintGreaterThanOrEqualToAnchor:v47];
  v49 = [v48 _maps_withIdentifier:@"primaryToContentBottomConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryBaselineToBottomConstraint:v49];

  v50 = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryBaselineToBottomConstraint];
  [v4 addObject:v50];

  v51 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  v52 = [v51 leadingAnchor];
  v53 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v54 = [v53 leadingAnchor];
  v55 = [v52 constraintEqualToAnchor:v54];
  v56 = [v55 _maps_withIdentifier:@"contentLayoutGuideToPrimaryLeadingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setContentLayoutGuideToPrimaryLeadingConstraint:v56];

  v35 = v4;
  v57 = [(_TransitDirectionsInstructionsCellConstraints *)v5 contentLayoutGuideToPrimaryLeadingConstraint];
  [v4 addObject:v57];

  v58 = [(UIStackView *)self->_textStackView leadingAnchor];
  v59 = [(MKArtworkImageView *)self->_platformArtworkImageView trailingAnchor];
  v60 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([v60 userInterfaceIdiom] == 5)
  {
    v61 = 6.0;
  }

  else
  {
    v61 = 4.0;
  }

  v62 = [v58 constraintEqualToAnchor:v59 constant:v61];
  v63 = [v62 _maps_withIdentifier:@"platformArtworkTrailingToTextStackLabelLeadingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPlatformArtworkTrailingToTextStackLabelLeadingConstraint:v63];

  v64 = [(UIStackView *)self->_textStackView leadingAnchor];
  v65 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];
  v67 = [v66 _maps_withIdentifier:@"textStackLeadingToPrimaryLabelLeadingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setTextStackLeadingToPrimaryLabelLeadingConstraint:v67];

  v68 = [(_TransitDirectionsInstructionsCellConstraints *)v5 textStackLeadingToPrimaryLabelLeadingConstraint];
  LODWORD(v69) = 1148829696;
  [v68 setPriority:v69];

  v70 = [(_TransitDirectionsInstructionsCellConstraints *)v5 textStackLeadingToPrimaryLabelLeadingConstraint];
  [v4 addObject:v70];

  v71 = [(UILayoutGuide *)self->_trailingContentLayoutGuide leadingAnchor];
  v72 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v74 = [v73 _maps_withIdentifier:@"primaryLabelTrailingToTrailingContentConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryLabelTrailingToTrailingContentConstraint:v74];

  v75 = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryLabelTrailingToTrailingContentConstraint];
  [v4 addObject:v75];

  v76 = [(UILayoutGuide *)self->_trailingContentLayoutGuide leadingAnchor];
  v77 = [(MKMultiPartLabel *)self->_secondaryLabel trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];
  v79 = [v78 _maps_withIdentifier:@"secondaryLabelTrailingToTrailingContentConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setSecondaryLabelTrailingToTrailingContentConstraint:v79];

  v80 = [(_TransitDirectionsInstructionsCellConstraints *)v5 secondaryLabelTrailingToTrailingContentConstraint];
  [v4 addObject:v80];

  v81 = [(MKMultiPartLabel *)self->_tertiaryLabel trailingAnchor];
  v82 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v83 = [v82 trailingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83];
  v85 = [v84 _maps_withIdentifier:@"tertiaryLabelTrailingToContentTrailing"];
  [v4 addObject:v85];

  if ([(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels])
  {
    v86 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    v87 = [v86 trailingAnchor];
    v88 = [(UIStackView *)self->_textStackView trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];
    v90 = [v89 _maps_withIdentifier:@"contentTrailingToTextStackTrailing"];
    [v4 addObject:v90];

    v5 = v172;
    goto LABEL_28;
  }

  v119 = [(_MKUILabel *)self->_primaryAccessoryLabel trailingAnchor];
  v120 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v121 = [v120 trailingAnchor];
  v122 = [v119 constraintEqualToAnchor:v121];
  v123 = [v122 _maps_withIdentifier:@"primaryAccessoryToTrailingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryAccessoryToTrailingConstraint:v123];

  v124 = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryAccessoryToTrailingConstraint];
  [v4 addObject:v124];

  v125 = [(_MKUILabel *)self->_secondaryAccessoryLabel trailingAnchor];
  v126 = [(_MKUILabel *)self->_primaryAccessoryLabel trailingAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];
  v128 = [v127 _maps_withIdentifier:@"secondaryAccessoryTrailingToPrimaryAccessoryTrailing"];
  [v4 addObject:v128];

  v129 = [(_MKUILabel *)self->_secondaryAccessoryLabel bottomAnchor];
  v130 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v131 = [v130 bottomAnchor];
  v132 = [v129 constraintLessThanOrEqualToAnchor:v131];
  v133 = [v132 _maps_withIdentifier:@"secondaryAccessoryBaselineToContentBottom"];
  [v4 addObject:v133];

  v134 = [(_MKUILabel *)self->_secondaryAccessoryLabel topAnchor];
  v135 = [(_MKUILabel *)self->_primaryAccessoryLabel bottomAnchor];
  v136 = [v134 constraintEqualToAnchor:v135];
  v137 = [v136 _maps_withIdentifier:@"primaryAccessoryToSecondaryAccessoryConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryAccessoryToSecondaryAccessoryConstraint:v137];

  v138 = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryAccessoryToSecondaryAccessoryConstraint];
  [v4 addObject:v138];

  v139 = [(_MKUILabel *)self->_primaryAccessoryLabel firstBaselineAnchor];
  v140 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  v141 = [v140 firstBaselineAnchor];
  v142 = [v139 constraintEqualToAnchor:v141];
  v143 = [v142 _maps_withIdentifier:@"primaryAccessoryBaselineToPrimaryBaseline"];
  [v4 addObject:v143];

  v144 = [(_MKUILabel *)self->_primaryAccessoryLabel widthAnchor];
  v145 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  v146 = [v145 widthAnchor];
  v147 = [v144 constraintLessThanOrEqualToAnchor:v146 multiplier:0.5];
  v148 = [v147 _maps_withIdentifier:@"primaryAccessoryMaximumWidthFactorConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryAccessoryMaximumWidthFactorConstraint:v148];

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  secondaryAccessoryLabel = self->_secondaryAccessoryLabel;
  v188[0] = self->_primaryAccessoryLabel;
  v188[1] = secondaryAccessoryLabel;
  objb = [NSArray arrayWithObjects:v188 count:2];
  v150 = [objb countByEnumeratingWithState:&v183 objects:v189 count:16];
  if (v150)
  {
    v151 = v150;
    v176 = *v184;
    do
    {
      for (j = 0; j != v151; j = j + 1)
      {
        if (*v184 != v176)
        {
          objc_enumerationMutation(objb);
        }

        v153 = *(*(&v183 + 1) + 8 * j);
        v154 = [v153 topAnchor];
        v155 = [(UILayoutGuide *)v177->_trailingContentLayoutGuide topAnchor];
        v156 = [v154 constraintGreaterThanOrEqualToAnchor:v155];
        v157 = [v156 _maps_withIdentifier:@"accessoryTopToTrailingContentTop"];
        [v4 addObject:v157];

        v158 = [v153 leadingAnchor];
        v159 = [(UILayoutGuide *)v177->_trailingContentLayoutGuide leadingAnchor];
        v160 = [v158 constraintEqualToAnchor:v159];
        v161 = [v160 _maps_withIdentifier:@"accessoryLeadingToTrailingContentLeading"];
        [v4 addObject:v161];

        v162 = [(UILayoutGuide *)v177->_trailingContentLayoutGuide trailingAnchor];
        v163 = [v153 trailingAnchor];
        v164 = [v162 constraintEqualToAnchor:v163];
        v165 = [v164 _maps_withIdentifier:@"accessoryTrailingToTrailingContentTrailing"];
        [v4 addObject:v165];

        v166 = [(UILayoutGuide *)v177->_trailingContentLayoutGuide bottomAnchor];
        v167 = [v153 bottomAnchor];
        v168 = [v166 constraintGreaterThanOrEqualToAnchor:v167];
        v169 = [v168 _maps_withIdentifier:@"accessoryBottomToTrailingContentBottom"];
        [v4 addObject:v169];
      }

      v151 = [objb countByEnumeratingWithState:&v183 objects:v189 count:16];
    }

    while (v151);
  }

  v35 = v4;
LABEL_27:
  v5 = v172;
LABEL_28:
  v170 = [v35 copy];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setInitialConstraints:v170];

  return v5;
}

- (double)_extraSpacingAboveView:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (self->_primaryAccessoryLabel == v4)
  {
    [(TransitDirectionsInstructionsStepView *)self _metrics];
    v5 = v9;
  }

  if (self->_secondaryLabel == v4)
  {
    [(TransitDirectionsInstructionsStepView *)self _metrics];
    v5 = v8;
  }

  if (self->_badgesArtworkListView == v4)
  {
    v6 = 4.0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)_setCellStyle:(unint64_t)cellStyle
{
  self->_cellStyle = cellStyle;
  styleConstraints = self->_styleConstraints;
  if (styleConstraints)
  {
    [(_TransitDirectionsInstructionsCellConstraints *)styleConstraints deactivateConstraints];
    v5 = self->_styleConstraints;
    self->_styleConstraints = 0;

    cellStyle = self->_cellStyle;
  }

  switch(cellStyle)
  {
    case 2uLL:
      goto LABEL_6;
    case 1uLL:
      textStackView = self->_textStackView;
      p_primaryAccessoryLabel = &self->_primaryAccessoryLabel;
      primaryAccessoryLabel = self->_primaryAccessoryLabel;
      v26[0] = self->_primaryLabel;
      v26[1] = primaryAccessoryLabel;
      secondaryLabel = self->_secondaryLabel;
      v26[2] = self->_secondaryAccessoryLabel;
      v26[3] = secondaryLabel;
      badgesArtworkListView = self->_badgesArtworkListView;
      v26[4] = self->_tertiaryLabel;
      v26[5] = badgesArtworkListView;
      v16 = [NSArray arrayWithObjects:v26 count:6];
      [(UIStackView *)textStackView _mapkit_setArrangedSubviews:v16];

      [(_MKUILabel *)self->_primaryAccessoryLabel setTextAlignment:4];
      [(_MKUILabel *)self->_secondaryAccessoryLabel setTextAlignment:4];
      v17 = 2;
LABEL_17:
      [(_MKUILabel *)*p_primaryAccessoryLabel setNumberOfLines:v17];
      break;
    case 0uLL:
LABEL_6:
      v6 = [(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels];
      v7 = self->_textStackView;
      if (v6)
      {
        v8 = self->_primaryAccessoryLabel;
        v28[0] = self->_primaryLabel;
        v28[1] = v8;
        tertiaryLabel = self->_tertiaryLabel;
        v28[2] = self->_secondaryLabel;
        v28[3] = tertiaryLabel;
        v28[4] = self->_badgesArtworkListView;
        v10 = [NSArray arrayWithObjects:v28 count:5];
        [(UIStackView *)v7 _mapkit_setArrangedSubviews:v10];

        [(_MKUILabel *)self->_primaryAccessoryLabel setTextAlignment:4];
        [(_MKUILabel *)self->_secondaryAccessoryLabel setTextAlignment:4];
        [(_MKUILabel *)self->_secondaryAccessoryLabel removeFromSuperview];
      }

      else
      {
        v18 = self->_secondaryLabel;
        v27[0] = self->_primaryLabel;
        v27[1] = v18;
        v19 = self->_badgesArtworkListView;
        v27[2] = self->_tertiaryLabel;
        v27[3] = v19;
        v20 = [NSArray arrayWithObjects:v27 count:4];
        [(UIStackView *)v7 _mapkit_setArrangedSubviews:v20];

        if (MKApplicationLayoutDirectionIsRightToLeft())
        {
          v21 = 0;
        }

        else
        {
          v21 = 2;
        }

        [(_MKUILabel *)self->_primaryAccessoryLabel setTextAlignment:v21];
        if (MKApplicationLayoutDirectionIsRightToLeft())
        {
          v22 = 0;
        }

        else
        {
          v22 = 2;
        }

        [(_MKUILabel *)self->_secondaryAccessoryLabel setTextAlignment:v22];
        [(TransitDirectionsInstructionsStepView *)self addSubview:self->_primaryAccessoryLabel];
        [(TransitDirectionsInstructionsStepView *)self addSubview:self->_secondaryAccessoryLabel];
      }

      p_primaryAccessoryLabel = &self->_primaryAccessoryLabel;
      v17 = 3;
      goto LABEL_17;
  }

  [(TransitDirectionsInstructionsStepView *)self _contentSizeCategoryDidChange];
  v23 = [(TransitDirectionsInstructionsStepView *)self _constraintsForCellStyle:self->_cellStyle];
  v24 = self->_styleConstraints;
  self->_styleConstraints = v23;

  v25 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints initialConstraints];
  [NSLayoutConstraint activateConstraints:v25];

  [(TransitDirectionsInstructionsStepView *)self _cellStyleDidChange];
  [(TransitDirectionsInstructionsStepView *)self _updateConstraints];
}

- (unint64_t)_bestCellStyleForCurrentState
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    return 1;
  }

  if ([(TransitDirectionsStepView *)self useNavigationMetrics])
  {
    return 2;
  }

  return 0;
}

- (void)_createSubviews
{
  v102.receiver = self;
  v102.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v102 _createSubviews];
  self->_cellStyle = [(TransitDirectionsInstructionsStepView *)self _bestCellStyleForCurrentState];
  v3 = [UIColor colorWithDynamicProvider:&stru_10165DCE8];
  v4 = [_MKUILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v4 initWithFrame:{CGRectZero.origin.x, y, width}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v7;

  [(_MKUILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(_MKUILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_primaryLabel setTextColor:v3];
  if (sub_10000FA08(self) == 5)
  {
    +[UIColor systemWhiteColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v9 = ;
  [(_MKUILabel *)self->_primaryLabel setHighlightedTextColor:v9];

  [(_MKUILabel *)self->_primaryLabel setNumberOfLines:0];
  [(_MKUILabel *)self->_primaryLabel setUserInteractionEnabled:0];
  v10 = self;
  if (![(TransitDirectionsStepView *)v10 useNavigationMetrics])
  {
    if (sub_10000FA08(v10) == 5)
    {
      +[UIFont system17];
    }

    else
    {
      +[UIFont system17SemiBold];
    }
    v13 = ;
    goto LABEL_15;
  }

  v11 = [(TransitDirectionsStepView *)v10 navigationState];
  v12 = sub_10000FA08(v10);
  if (v11 != 4)
  {
    if (v12 != 5)
    {
      v13 = +[UIFont system22Semibold];
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v12 == 5)
  {
LABEL_12:
    v13 = +[UIFont system22];
    goto LABEL_15;
  }

  v13 = +[UIFont system22Bold];
LABEL_15:
  v14 = v13;

  [(_MKUILabel *)self->_primaryLabel setFont:v14];
  LODWORD(v15) = 1148846080;
  [(_MKUILabel *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [(_MKUILabel *)self->_primaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v16];
  v17 = width;
  v18 = [[MKMultiPartLabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  secondaryLabel = v10->_secondaryLabel;
  v10->_secondaryLabel = v18;

  [(MKMultiPartLabel *)v10->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(MKMultiPartLabel *)v10->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = v10;
  v21 = [(TransitDirectionsStepView *)v20 useNavigationMetrics];
  v22 = v20;
  v23 = sub_10000FA08(v22);
  v24 = y;
  if (v21 || v23 == 5)
  {
    x = CGRectZero.origin.x;
    v26 = +[UIFont system17];
  }

  else
  {
    x = CGRectZero.origin.x;
    v26 = +[UIFont system15];
  }

  v27 = v26;

  [(MKMultiPartLabel *)v10->_secondaryLabel setFont:v27];
  [(MKMultiPartLabel *)v10->_secondaryLabel setNumberOfLines:0];
  v28 = +[UIColor secondaryLabelColor];
  [(MKMultiPartLabel *)v10->_secondaryLabel setTextColor:v28];

  v29 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [(MKMultiPartLabel *)v10->_secondaryLabel setHighlightedTextColor:v29];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(MKMultiPartLabel *)v10->_secondaryLabel setTextInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(MKMultiPartLabel *)v10->_secondaryLabel setUserInteractionEnabled:0];
  LODWORD(v33) = 1148846080;
  [(MKMultiPartLabel *)v10->_secondaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [(MKMultiPartLabel *)v10->_secondaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v34];
  v35 = [[MKMultiPartLabel alloc] initWithFrame:{x, v24, v17, height}];
  v36 = v22[44];
  v22[44] = v35;

  [v22[44] setAccessibilityIdentifier:@"TertiaryLabel"];
  [v22[44] setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = v22;
  if (sub_10000FA08(v37) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v38 = ;
  v39 = [v38 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [v22[44] setFont:v39];
  [v22[44] setNumberOfLines:0];
  v40 = +[UIColor secondaryLabelColor];
  [v22[44] setTextColor:v40];

  v41 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [v22[44] setHighlightedTextColor:v41];

  [v22[44] setTextInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v22[44] setUserInteractionEnabled:0];
  LODWORD(v42) = 1148846080;
  [v22[44] _mapkit_setContentCompressionResistancePriority:1 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [v22[44] _mapkit_setContentHuggingPriority:1 forAxis:v43];
  v44 = [[TransitArtworkListView alloc] initWithFrame:x, v24, v17, height];
  v45 = v37[45];
  v37[45] = v44;

  [v37[45] setAccessibilityIdentifier:@"BadgesArtworkListView"];
  [v37[45] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v37[45] setUserInteractionEnabled:0];
  LODWORD(v46) = 1148846080;
  [v37[45] _mapkit_setContentCompressionResistancePriority:1 forAxis:v46];
  LODWORD(v47) = 1148846080;
  [v37[45] _mapkit_setContentHuggingPriority:1 forAxis:v47];
  v48 = [[_MKUILabel alloc] initWithFrame:{x, v24, v17, height}];
  v49 = v37[46];
  v37[46] = v48;

  [v37[46] setAccessibilityIdentifier:@"PrimaryAccessoryLabel"];
  [v37[46] setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = v37;
  v51 = [v50 traitCollection];
  v52 = [v51 userInterfaceIdiom];
  v53 = UIFontTextStyleBody;
  if (v52 != 5)
  {
    v53 = UIFontTextStyleSubheadline;
  }

  v54 = v53;

  v55 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v54];

  v56 = [v55 fontDescriptor];
  v57 = [v56 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

  v58 = [UIFont fontWithDescriptor:v57 size:0.0];

  [v37[46] setFont:v58];
  [v37[46] _setMultilineLabelRequiresCarefulMeasurement:1];
  v59 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [v37[46] setHighlightedTextColor:v59];

  [v37[46] setUserInteractionEnabled:0];
  LODWORD(v60) = 1148846080;
  [v37[46] _mapkit_setContentCompressionResistancePriority:1 forAxis:v60];
  LODWORD(v61) = 1148846080;
  [v37[46] _mapkit_setContentHuggingPriority:1 forAxis:v61];
  v62 = [[_MKUILabel alloc] initWithFrame:{x, v24, v17, height}];
  v63 = v50[47];
  v50[47] = v62;

  [v50[47] setAccessibilityIdentifier:@"SecondaryAccessoryLabel"];
  [v50[47] setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = v50;
  v65 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  v66 = [v64 traitCollection];
  v67 = [v66 userInterfaceIdiom];

  if (v67 == 5)
  {
    v68 = [v65 fontDescriptor];
    v69 = [v68 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay];

    v70 = [UIFont fontWithDescriptor:v69 size:0.0];

    v65 = v70;
  }

  [v50[47] setFont:v65];
  v71 = +[UIColor systemGrayColor];
  [v50[47] setTextColor:v71];

  v72 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [v50[47] setHighlightedTextColor:v72];

  [v50[47] setUserInteractionEnabled:0];
  LODWORD(v73) = 1148846080;
  [v50[47] _mapkit_setContentCompressionResistancePriority:1 forAxis:v73];
  LODWORD(v74) = 1148846080;
  [v50[47] _mapkit_setContentHuggingPriority:1 forAxis:v74];
  v75 = [[PassThroughStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
  v76 = v64[37];
  v64[37] = v75;

  [v64[37] setAccessibilityIdentifier:@"TextStackView"];
  [v64[37] setAlignment:1];
  [v64[37] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v64[37] set_mk_axis:1];
  [v64[37] setSpacing:0.0];
  [v64[37] setDistribution:0];
  LODWORD(v77) = 1144766464;
  [v64[37] _mapkit_setContentCompressionResistancePriority:0 forAxis:v77];
  LODWORD(v78) = 1148846080;
  [v64[37] _mapkit_setContentCompressionResistancePriority:1 forAxis:v78];
  LODWORD(v79) = 1148846080;
  [v64[37] _mapkit_setContentHuggingPriority:1 forAxis:v79];
  LODWORD(v80) = 1132068864;
  [v64[37] _mapkit_setContentHuggingPriority:0 forAxis:v80];
  [v64 addSubview:v64[37]];
  v81 = objc_alloc_init(UILayoutGuide);
  v82 = v64[33];
  v64[33] = v81;

  [v64 addLayoutGuide:v64[33]];
  v83 = [v64 _createImageView];
  v84 = v64[48];
  v64[48] = v83;

  [v64[48] setAccessibilityIdentifier:@"PlatformArtworkImageView"];
  [(MKMultiPartLabel *)v10->_secondaryLabel _mapkit_contentHuggingPriorityForAxis:0];
  *&v86 = v85 + 1.0;
  [v64[48] _mapkit_setContentHuggingPriority:0 forAxis:v86];
  [(MKMultiPartLabel *)v10->_secondaryLabel _mapkit_contentCompressionResistancePriorityForAxis:0];
  *&v88 = v87 + 1.0;
  [v64[48] _mapkit_setContentCompressionResistancePriority:0 forAxis:v88];
  [v64 addSubview:v64[48]];
  v89 = [MapsLargerHitTargetButton buttonWithType:1];
  v90 = v64[49];
  v64[49] = v89;

  [v64[49] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v64[49] setAccessibilityIdentifier:@"DetailButton"];
  v91 = [v64 traitCollection];
  v92 = [v91 userInterfaceIdiom];

  if (v92 == 5)
  {
    v93 = -6.0;
  }

  else
  {
    v93 = -8.0;
  }

  v94 = [v64 detailButton];
  [v94 setTouchInsets:{v93, -16.0, v93, -16.0}];

  v95 = v64[49];
  v96 = v64;
  if (sub_10000FA08(v96) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v97 = ;

  v98 = [v97 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [v95 _setFont:v98];
  v99 = v64[49];
  v100 = +[UIColor systemGrayColor];
  [v99 setTitleColor:v100 forStates:2];

  [v64[49] addTarget:v96 action:"_detailButtonTapped:" forControlEvents:64];
  [v96 addSubview:v64[49]];
  [v96 updateExpandCollapseStyling];
  [v96 _setCellStyle:self->_cellStyle];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v4 prepareForReuse];
  layoutItemsByType = self->_layoutItemsByType;
  self->_layoutItemsByType = 0;
}

@end