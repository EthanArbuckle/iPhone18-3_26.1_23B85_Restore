@interface TransitDirectionsInstructionsStepView
- ($29727DC6989B69F22950FCD998EA20D4)_metrics;
- (BOOL)_hasTrailingContent;
- (BOOL)_useSingleInstructionMetrics;
- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate;
- (TransitDirectionsListExpandableItem)expandableItem;
- (double)_availableWidthForInstructionType:(int64_t)type;
- (double)_detailButtonBaselineToLabelBaselineDistance;
- (double)_extraSpacingAboveView:(id)view;
- (double)_minPlatformArtworkBottomToBottomDistance;
- (double)_secondaryFirstBaselineToBottomPlatformArtworkDistance;
- (id)_constraintsForCellStyle:(unint64_t)style;
- (id)_fontForInstructionType:(int64_t)type;
- (id)_imageViewPositionConstraints;
- (id)_labelViewForInstructionType:(int64_t)type;
- (id)_layoutItemForInstructionType:(int64_t)type;
- (id)_platformArtworkHorizontalPositioningConstraint;
- (id)_textAttributesForInstructionType:(int64_t)type;
- (unint64_t)_bestCellStyleForCurrentState;
- (void)_configureLabelForInstruction:(int64_t)instruction;
- (void)_contentSizeCategoryDidChange;
- (void)_createSubviews;
- (void)_detailButtonTapped:(id)tapped;
- (void)_setCellStyle:(unint64_t)cellStyle;
- (void)_updateAccessoryLabelCompressionHuggingPriorities;
- (void)_updateConstraintValues;
- (void)_updateConstraints;
- (void)_updateMultipleInstructionImagePositionConstraint;
- (void)_updateNavigationStateAlpha:(double)alpha;
- (void)_updateNavigationStateDependentFonts;
- (void)configureWithItem:(id)item;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setNavigationState:(int64_t)state;
- (void)setUseNavigationMetrics:(BOOL)metrics;
- (void)updateExpandCollapseStyling;
@end

@implementation TransitDirectionsInstructionsStepView

- (TransitDirectionsExpandableCellDelegate)expandableCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableCellDelegate);

  return WeakRetained;
}

- (void)_updateNavigationStateAlpha:(double)alpha
{
  v11.receiver = self;
  v11.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v11 _updateNavigationStateAlpha:?];
  primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  [primaryLabel setAlpha:alpha];

  secondaryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryLabel];
  [secondaryLabel setAlpha:alpha];

  tertiaryLabel = [(TransitDirectionsInstructionsStepView *)self tertiaryLabel];
  [tertiaryLabel setAlpha:alpha];

  primaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
  [primaryAccessoryLabel setAlpha:alpha];

  secondaryAccessoryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
  [secondaryAccessoryLabel setAlpha:alpha];

  platformArtworkImageView = [(TransitDirectionsInstructionsStepView *)self platformArtworkImageView];
  [platformArtworkImageView setAlpha:alpha];
}

- (void)setNavigationState:(int64_t)state
{
  navigationState = [(TransitDirectionsStepView *)self navigationState];
  v6.receiver = self;
  v6.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsStepView *)&v6 setNavigationState:state];
  if (navigationState != [(TransitDirectionsStepView *)self navigationState])
  {
    [(TransitDirectionsInstructionsStepView *)self _updateNavigationStateDependentFonts];
    [(TransitDirectionsInstructionsStepView *)self _updateMultipleInstructionImagePositionConstraint];
  }
}

- (void)setUseNavigationMetrics:(BOOL)metrics
{
  v4.receiver = self;
  v4.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsStepView *)&v4 setUseNavigationMetrics:metrics];
  [(TransitDirectionsInstructionsStepView *)self _setCellStyle:[(TransitDirectionsInstructionsStepView *)self _bestCellStyleForCurrentState]];
}

- (id)_textAttributesForInstructionType:(int64_t)type
{
  if ((type - 1) >= 2)
  {
    if (type)
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
    traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
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

- (id)_labelViewForInstructionType:(int64_t)type
{
  if (type > 4)
  {
    v3 = &OBJC_IVAR___TransitDirectionsInstructionsStepView__tertiaryLabel;
  }

  else
  {
    v3 = off_10165DD30[type];
  }

  return *(&self->super.super.super.super.super.isa + *v3);
}

- (id)_fontForInstructionType:(int64_t)type
{
  font = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      secondaryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryLabel];
    }

    else
    {
      secondaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        secondaryLabel = [(TransitDirectionsInstructionsStepView *)self tertiaryLabel];
        break;
      case 3:
        secondaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryAccessoryLabel];
        break;
      case 4:
        secondaryLabel = [(TransitDirectionsInstructionsStepView *)self secondaryAccessoryLabel];
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = secondaryLabel;
  font = [secondaryLabel font];

LABEL_13:

  return font;
}

- (double)_availableWidthForInstructionType:(int64_t)type
{
  [(TransitDirectionsInstructionsStepView *)self bounds];
  v6 = v5;
  [(TransitDirectionsStepView *)self leadingInstructionMargin];
  v8 = v7;
  [(TransitDirectionsStepView *)self _trailingGuideToContentViewDistance];
  v10 = v9;
  trailingView = [(TransitDirectionsStepView *)self trailingView];
  [trailingView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v13 = v6 - (v8 + v10 + v12);

  switch(type)
  {
    case 2:
      return v13 + -16.0;
    case 1:
      transitListItem = [(TransitDirectionsStepView *)self transitListItem];
      minorStringImage = [transitListItem minorStringImage];

      if (minorStringImage)
      {
        transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
        minorStringImage2 = [transitListItem2 minorStringImage];
        [minorStringImage2 size];
        v24 = v23;
        traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
        if ([traitCollection userInterfaceIdiom] == 5)
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
      expandableItem = [(TransitDirectionsInstructionsStepView *)self expandableItem];
      if (expandableItem)
      {
        v15 = expandableItem;
        expandableItem2 = [(TransitDirectionsInstructionsStepView *)self expandableItem];
        shouldDisplayExpandButton = [expandableItem2 shouldDisplayExpandButton];

        if (shouldDisplayExpandButton)
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
      trailingAnchor = [(MKArtworkImageView *)self->_platformArtworkImageView trailingAnchor];
      trailingAnchor2 = [(MKArtworkImageView *)self->super._iconImageView trailingAnchor];
      v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v8 = v7;
      v9 = @"platformArtworkTrailingToIconTrailing";
      goto LABEL_6;
    }

    if (cellStyle)
    {
      goto LABEL_7;
    }
  }

  trailingAnchor = [(MKArtworkImageView *)self->_platformArtworkImageView leadingAnchor];
  trailingAnchor2 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v8 = v7;
  v9 = @"platformArtworkLeadingToPrimaryLeading";
LABEL_6:
  v2 = [v7 _maps_withIdentifier:v9];

LABEL_7:

  return v2;
}

- (id)_layoutItemForInstructionType:(int64_t)type
{
  [(TransitDirectionsInstructionsStepView *)self _availableWidthForInstructionType:?];
  v6 = v5;
  layoutItemsByType = self->_layoutItemsByType;
  v8 = [NSNumber numberWithInteger:type];
  v9 = [(NSMutableDictionary *)layoutItemsByType objectForKeyedSubscript:v8];

  if (v9)
  {
    [v9 setWidth:v6];
    v10 = v9;
  }

  else
  {
    v11 = [(TransitDirectionsInstructionsStepView *)self _fontForInstructionType:type];
    transitListItem = [(TransitDirectionsStepView *)self transitListItem];
    v13 = [transitListItem formattedStringsForType:type];

    if ((type - 3) <= 1 && [(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels])
    {
      v14 = type == 3;
      if (type == 3)
      {
        v15 = [v13 mutableCopy];
        transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
        v17 = [transitListItem2 formattedStringsForType:4];
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

    v19 = [(TransitDirectionsInstructionsStepView *)self _textAttributesForInstructionType:type];
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
      v24 = [NSNumber numberWithInteger:type];
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

- (void)_configureLabelForInstruction:(int64_t)instruction
{
  v5 = [(TransitDirectionsInstructionsStepView *)self _layoutItemForInstructionType:?];
  if (instruction > 1)
  {
    if (instruction != 2)
    {
      if (instruction == 3)
      {
        v21 = v5;
        if ([(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels])
        {
          v17 = +[UIColor secondaryLabelColor];
          [(_MKUILabel *)self->_primaryAccessoryLabel setTextColor:v17];
        }

        bestFittingMultiPartString = [v21 bestFittingMultiPartString];
        attributedString = [bestFittingMultiPartString attributedString];
        v8 = 368;
      }

      else
      {
        if (instruction != 4)
        {
          goto LABEL_24;
        }

        v21 = v5;
        bestFittingMultiPartString = [v5 bestFittingMultiPartString];
        attributedString = [bestFittingMultiPartString attributedString];
        v8 = 376;
      }

      [*(&self->super.super.super.super.super.isa + v8) setAttributedText:attributedString];

      attributedText = [*(&self->super.super.super.super.super.isa + v8) attributedText];
      [*(&self->super.super.super.super.super.isa + v8) setHidden:{objc_msgSend(attributedText, "length") == 0}];
      goto LABEL_18;
    }

    v21 = v5;
    strings = [v5 strings];
    firstObject = [strings firstObject];

    if (firstObject)
    {
      bestFittingMultiPartString2 = [v21 bestFittingMultiPartString];
      v12 = 352;
      goto LABEL_12;
    }

    v20 = 352;
    goto LABEL_21;
  }

  if (instruction)
  {
    if (instruction != 1)
    {
      goto LABEL_24;
    }

    v21 = v5;
    strings2 = [v5 strings];
    firstObject2 = [strings2 firstObject];

    if (firstObject2)
    {
      bestFittingMultiPartString2 = [v21 bestFittingMultiPartString];
      v12 = 344;
LABEL_12:
      [*(&self->super.super.super.super.super.isa + v12) setMultiPartString:bestFittingMultiPartString2];

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
  attributedText = [v5 bestFittingMultiPartString];
  attributedString2 = [attributedText attributedString];
  [(_MKUILabel *)self->_primaryLabel setAttributedText:attributedString2];

LABEL_18:
LABEL_23:
  v5 = v21;
LABEL_24:
}

- (void)configureWithItem:(id)item
{
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = TransitDirectionsInstructionsStepView;
  [(TransitDirectionsIconStepView *)&v20 configureWithItem:itemCopy];
  self->_checkedItemIsExpandable = 0;
  layoutItemsByType = self->_layoutItemsByType;
  self->_layoutItemsByType = 0;

  arrangedSubviews = [(UIStackView *)self->_textStackView arrangedSubviews];
  v7 = [arrangedSubviews valueForKeyPath:@"isHidden"];

  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:0];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:1];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:2];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:3];
  [(TransitDirectionsInstructionsStepView *)self _configureLabelForInstruction:4];
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  minorStringImage = [transitListItem minorStringImage];
  [(MKArtworkImageView *)self->_platformArtworkImageView setImageSource:minorStringImage];

  transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
  minorStringImage2 = [transitListItem2 minorStringImage];
  [(MKArtworkImageView *)self->_platformArtworkImageView setHidden:minorStringImage2 == 0];

  badges = [itemCopy badges];
  v13 = [badges count];
  if (v13)
  {
    badges2 = [itemCopy badges];
    v15 = [GEOTransitStepBadge _maps_artworkListFromStepBadges:badges2];
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
  expandableItem = [(TransitDirectionsInstructionsStepView *)self expandableItem];
  if (expandableItem)
  {
    [(TransitDirectionsInstructionsStepView *)self updateExpandCollapseStyling];
  }

  arrangedSubviews2 = [(UIStackView *)self->_textStackView arrangedSubviews];
  v19 = [arrangedSubviews2 valueForKeyPath:@"isHidden"];

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
  selfCopy = self;
  if (sub_10000FA08(selfCopy) == 5)
  {
    +[UIFont system17];
  }

  else
  {
    +[UIFont system15];
  }
  v6 = ;
  _mapkit_fontByAddingFeaturesForTimeDisplay = [v6 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [(MapsLargerHitTargetButton *)detailButton _setFont:_mapkit_fontByAddingFeaturesForTimeDisplay];
  v8 = selfCopy;
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

  navigationState = [v8 navigationState];
  v10 = sub_10000FA08(v8);
  if (navigationState != 4)
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
  _mapkit_fontByAddingFeaturesForTimeDisplay2 = [v19 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [v18[44] setFont:_mapkit_fontByAddingFeaturesForTimeDisplay2];
  v21 = v18;
  traitCollection = [v21 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v24 = UIFontTextStyleBody;
  if (userInterfaceIdiom != 5)
  {
    v24 = UIFontTextStyleSubheadline;
  }

  v25 = v24;

  v26 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v25];

  fontDescriptor = [v26 fontDescriptor];
  v28 = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

  v29 = [UIFont fontWithDescriptor:v28 size:0.0];

  [v21[46] setFont:v29];
  v30 = v21;
  v31 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubheadline];
  traitCollection2 = [v30 traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 5)
  {
    fontDescriptor2 = [v31 fontDescriptor];
    _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay = [fontDescriptor2 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay];

    v36 = [UIFont fontWithDescriptor:_mapkit_fontDescriptorByAddingFeaturesForTimeDisplay size:0.0];

    v31 = v36;
  }

  [v30[47] setFont:v31];
  [v30 _updateConstraints];
}

- (void)_updateNavigationStateDependentFonts
{
  [(NSMutableDictionary *)self->_layoutItemsByType setObject:0 forKeyedSubscript:&off_1016EA448];
  [(NSMutableDictionary *)self->_layoutItemsByType setObject:0 forKeyedSubscript:&off_1016EA460];
  selfCopy = self;
  if (![(TransitDirectionsStepView *)selfCopy useNavigationMetrics])
  {
    if (sub_10000FA08(selfCopy) == 5)
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

  navigationState = [(TransitDirectionsStepView *)selfCopy navigationState];
  v5 = sub_10000FA08(selfCopy);
  if (navigationState != 4)
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

  [(_MKUILabel *)selfCopy->_primaryLabel setFont:v7];
  v8 = selfCopy;
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

- (void)_detailButtonTapped:(id)tapped
{
  expandableCellDelegate = [(TransitDirectionsInstructionsStepView *)self expandableCellDelegate];
  expandableItem = [(TransitDirectionsInstructionsStepView *)self expandableItem];
  [expandableCellDelegate transitDirectionsCell:self wantsToExpandOrCollapseItem:expandableItem];
}

- (double)_minPlatformArtworkBottomToBottomDistance
{
  [(TransitDirectionsInstructionsStepView *)self _secondaryFirstBaselineToBottomPlatformArtworkDistance];

  UIRoundToViewScale();
  return result;
}

- (double)_detailButtonBaselineToLabelBaselineDistance
{
  font = [(MKMultiPartLabel *)self->_secondaryLabel font];
  traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 20.0;
  }

  [font _scaledValueForValue:v5];

  UIRoundToViewScale();
  return result;
}

- (double)_secondaryFirstBaselineToBottomPlatformArtworkDistance
{
  font = [(MKMultiPartLabel *)self->_secondaryLabel font];
  [font _scaledValueForValue:2.0];

  UIRoundToViewScale();
  return result;
}

- ($29727DC6989B69F22950FCD998EA20D4)_metrics
{
  *&retstr->var3 = 0u;
  *&retstr->var1 = 0u;
  retstr->var5 = 0.0;
  retstr->var6 = 10.0;
  traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v6 = 30.0;
  }

  else
  {
    v6 = 40.0;
  }

  retstr->var3 = v6;
  traitCollection2 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  [traitCollection2 userInterfaceIdiom];

  retstr->var4 = 30.0;
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  type = [transitListItem type];

  if ((type - 2) >= 0xD || (v10 = 0.0, ((0x130Bu >> (type - 2)) & 1) == 0))
  {
    useNavigationMetrics = [(TransitDirectionsStepView *)self useNavigationMetrics];
    traitCollection3 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
    userInterfaceIdiom = [traitCollection3 userInterfaceIdiom];

    v10 = 70.0;
    if (useNavigationMetrics)
    {
      v10 = 82.0;
    }

    if (userInterfaceIdiom == 5)
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

  traitCollection4 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([traitCollection4 userInterfaceIdiom] == 5)
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
  arrangedSubviews = [(UIStackView *)self->_textStackView arrangedSubviews];
  reverseObjectEnumerator = [arrangedSubviews reverseObjectEnumerator];

  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v9 != self->_primaryLabel && ![(_MKUILabel *)v9 isHidden])
        {
          v10 = 0;
          goto LABEL_12;
        }
      }

      v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  expandableItem = [(TransitDirectionsInstructionsStepView *)self expandableItem];
  currentTitle = [(MapsLargerHitTargetButton *)self->_detailButton currentTitle];
  if (expandableItem)
  {
    v5 = [expandableItem expandingButtonTitleForExpandedState:{objc_msgSend(expandableItem, "expanded")}];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100F42694;
    v8[3] = &unk_101661A40;
    v8[4] = self;
    currentTitle = v5;
    v9 = currentTitle;
    v10 = expandableItem;
    [UIView performWithoutAnimation:v8];
  }

  if ([currentTitle length])
  {
    v6 = [expandableItem shouldDisplayExpandButton] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [(MapsLargerHitTargetButton *)self->_detailButton setHidden:v6];
  if (expandableItem)
  {
    [(TransitDirectionsInstructionsStepView *)self _updateConstraints];
    detailButton = [(TransitDirectionsInstructionsStepView *)self detailButton];
    [detailButton sizeToFit];
  }
}

- (TransitDirectionsListExpandableItem)expandableItem
{
  if (!self->_checkedItemIsExpandable)
  {
    transitListItem = [(TransitDirectionsStepView *)self transitListItem];
    if ([transitListItem conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsListExpandableItem])
    {
      transitListItem2 = [(TransitDirectionsStepView *)self transitListItem];
      objc_storeWeak(&self->_expandableItem, transitListItem2);
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
  _bestCellStyleForCurrentState = [(TransitDirectionsInstructionsStepView *)self _bestCellStyleForCurrentState];
  if (_bestCellStyleForCurrentState != self->_cellStyle)
  {
    [(TransitDirectionsInstructionsStepView *)self _setCellStyle:_bestCellStyleForCurrentState];
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

      integerValue = [*(*(&v34 + 1) + 8 * v7) integerValue];
      v9 = [(TransitDirectionsInstructionsStepView *)self _layoutItemForInstructionType:integerValue];
      v10 = [(TransitDirectionsInstructionsStepView *)self _labelViewForInstructionType:integerValue];
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
          text = [v13 text];
          if ([text length])
          {
            bestFittingMultiPartString = [v9 bestFittingMultiPartString];
            attributedString = [bestFittingMultiPartString attributedString];
            if ([attributedString length])
            {
              multiPartString = [v13 multiPartString];
              bestFittingMultiPartString2 = [v9 bestFittingMultiPartString];
              v19 = multiPartString;
              v20 = bestFittingMultiPartString2;
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

              text = [v9 bestFittingMultiPartString];
              [v13 setMultiPartString:text];
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
          bestFittingMultiPartString3 = [v9 bestFittingMultiPartString];
          text = [bestFittingMultiPartString3 attributedString];

          attributedText = [v21 attributedText];
          if ([attributedText length] && objc_msgSend(text, "length"))
          {
            attributedText2 = [v21 attributedText];
            v25 = text;
            if (v25 | attributedText2)
            {
              text = v25;
              v27 = [attributedText2 isEqual:v25];

              if ((v27 & 1) == 0)
              {
                [v21 setAttributedText:text];
                v29 = 1;
              }

              v6 = v31;
            }

            else
            {

              text = 0;
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
  minimumCellHeightConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints minimumCellHeightConstraint];
  [minimumCellHeightConstraint setConstant:0.0];

  contentLayoutGuideToPrimaryLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints contentLayoutGuideToPrimaryLeadingConstraint];
  [contentLayoutGuideToPrimaryLeadingConstraint setConstant:0.0];

  topToPrimaryConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints topToPrimaryConstraint];
  [topToPrimaryConstraint setConstant:0.0];

  [(TransitDirectionsInstructionsStepView *)self _secondaryFirstBaselineToBottomPlatformArtworkDistance];
  v7 = v6;
  secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];
  [secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint setConstant:v7];

  cellStyle = self->_cellStyle;
  if (cellStyle == 2)
  {
LABEL_4:
    textStackView = self->_textStackView;
    [(TransitDirectionsInstructionsStepView *)self _extraSpacingAboveView:self->_badgesArtworkListView];
    v12 = v11;
    tertiaryLabel = [(TransitDirectionsInstructionsStepView *)self tertiaryLabel];
    [(UIStackView *)textStackView setCustomSpacing:tertiaryLabel afterView:v12];

    v14 = 0.0;
    if ([(TransitDirectionsStepView *)self useNavigationMetrics])
    {
      traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
      if ([traitCollection userInterfaceIdiom] == 5)
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
      traitCollection2 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
      [traitCollection2 userInterfaceIdiom];

      v14 = 10.0;
    }

    primaryLabelTrailingToTrailingContentConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints primaryLabelTrailingToTrailingContentConstraint];
    [primaryLabelTrailingToTrailingContentConstraint setConstant:v14];

    primaryLabelTrailingToTrailingContentConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints primaryLabelTrailingToTrailingContentConstraint];
    [primaryLabelTrailingToTrailingContentConstraint2 constant];
    v20 = v19;
    secondaryLabelTrailingToTrailingContentConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints secondaryLabelTrailingToTrailingContentConstraint];
    [secondaryLabelTrailingToTrailingContentConstraint setConstant:v20];
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

  arrangedSubviews = [(UIStackView *)self->_textStackView arrangedSubviews];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100F42E48;
  v23[3] = &unk_10165DD10;
  selfCopy = self;
  v26 = [arrangedSubviews count];
  v24 = arrangedSubviews;
  primaryLabelTrailingToTrailingContentConstraint2 = arrangedSubviews;
  [primaryLabelTrailingToTrailingContentConstraint2 enumerateObjectsUsingBlock:v23];
  secondaryLabelTrailingToTrailingContentConstraint = v24;
LABEL_13:
}

- (void)_updateConstraints
{
  [(TransitDirectionsInstructionsStepView *)self _updateConstraintValues];
  _hasTrailingContent = [(TransitDirectionsInstructionsStepView *)self _hasTrailingContent];
  primaryAccessoryMaximumWidthFactorConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints primaryAccessoryMaximumWidthFactorConstraint];
  [primaryAccessoryMaximumWidthFactorConstraint setActive:_hasTrailingContent];

  [(TransitDirectionsInstructionsStepView *)self _updateAccessoryLabelCompressionHuggingPriorities];
  _useSingleInstructionMetrics = [(TransitDirectionsInstructionsStepView *)self _useSingleInstructionMetrics];
  LODWORD(_hasTrailingContent) = _useSingleInstructionMetrics;
  [(NSLayoutConstraint *)self->_imageViewSingleInstructionConstraint setActive:_useSingleInstructionMetrics];
  [(NSLayoutConstraint *)self->_imageViewMultipleInstructionsConstraint setActive:_hasTrailingContent ^ 1];
  transitListItem = [(TransitDirectionsStepView *)self transitListItem];
  minorStringImage = [transitListItem minorStringImage];

  styleConstraints = self->_styleConstraints;
  if (minorStringImage)
  {
    textStackLeadingToPrimaryLabelLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)styleConstraints textStackLeadingToPrimaryLabelLeadingConstraint];
    [textStackLeadingToPrimaryLabelLeadingConstraint setActive:0];

    platformArtworkTrailingToTextStackLabelLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints platformArtworkTrailingToTextStackLabelLeadingConstraint];
    [platformArtworkTrailingToTextStackLabelLeadingConstraint setActive:1];

    [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints platformArtworkBottomToBottomConstraint];
  }

  else
  {
    platformArtworkBottomToBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)styleConstraints platformArtworkBottomToBottomConstraint];
    [platformArtworkBottomToBottomConstraint setActive:0];

    platformArtworkTrailingToTextStackLabelLeadingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints platformArtworkTrailingToTextStackLabelLeadingConstraint];
    [platformArtworkTrailingToTextStackLabelLeadingConstraint2 setActive:0];

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
  traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  [traitCollection userInterfaceIdiom];

  v4 = 6.0;
  if ([(TransitDirectionsStepView *)self useNavigationMetrics])
  {
    navigationState = [(TransitDirectionsStepView *)self navigationState];
    traitCollection2 = [(TransitDirectionsInstructionsStepView *)self traitCollection];
    [traitCollection2 userInterfaceIdiom];

    if (navigationState == 4)
    {
      v4 = 10.0;
    }

    else
    {
      v4 = 8.0;
    }
  }

  font = [(_MKUILabel *)self->_primaryLabel font];
  selfCopy = self;
  if (font)
  {
    [font _scaledValueForValue:v4];
  }

  UIRoundToViewScale();
  v9 = v8;

  [(NSLayoutConstraint *)selfCopy->_imageViewMultipleInstructionsConstraint setConstant:v9];
}

- (id)_imageViewPositionConstraints
{
  v21.receiver = self;
  v21.super_class = TransitDirectionsInstructionsStepView;
  _imageViewPositionConstraints = [(TransitDirectionsIconStepView *)&v21 _imageViewPositionConstraints];
  v4 = [_imageViewPositionConstraints mutableCopy];

  if (!self->_imageViewSingleInstructionConstraint)
  {
    centerYAnchor = [(MKArtworkImageView *)self->super._iconImageView centerYAnchor];
    centerYAnchor2 = [(UIStackView *)self->_textStackView centerYAnchor];
    v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v8 = [v7 _maps_withIdentifier:@"imageViewCenterToTextStackCenter"];
    imageViewSingleInstructionConstraint = self->_imageViewSingleInstructionConstraint;
    self->_imageViewSingleInstructionConstraint = v8;
  }

  if (!self->_imageViewMultipleInstructionsConstraint)
  {
    topAnchor = [(MKArtworkImageView *)self->super._iconImageView topAnchor];
    topAnchor2 = [(UIStackView *)self->_textStackView topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v13 = [v12 _maps_withIdentifier:@"imageViewTopToTextStackTop"];
    imageViewMultipleInstructionsConstraint = self->_imageViewMultipleInstructionsConstraint;
    self->_imageViewMultipleInstructionsConstraint = v13;
  }

  [v4 addObject:self->_imageViewSingleInstructionConstraint];
  [v4 addObject:self->_imageViewMultipleInstructionsConstraint];
  widthAnchor = [(MKArtworkImageView *)self->super._iconImageView widthAnchor];
  [(TransitDirectionsInstructionsStepView *)self _maximumIconWidth];
  v16 = [widthAnchor constraintEqualToConstant:?];
  [v4 addObject:v16];

  heightAnchor = [(MKArtworkImageView *)self->super._iconImageView heightAnchor];
  [(TransitDirectionsInstructionsStepView *)self _maximumIconHeight];
  v18 = [heightAnchor constraintEqualToConstant:?];
  [v4 addObject:v18];

  v19 = [v4 copy];

  return v19;
}

- (id)_constraintsForCellStyle:(unint64_t)style
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(_TransitDirectionsInstructionsCellConstraints);
  heightAnchor = [(TransitDirectionsInstructionsStepView *)self heightAnchor];
  v7 = [heightAnchor constraintGreaterThanOrEqualToConstant:0.0];
  v8 = [v7 _maps_withIdentifier:@"minimumCellHeightConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setMinimumCellHeightConstraint:v8];

  minimumCellHeightConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 minimumCellHeightConstraint];
  [v4 addObject:minimumCellHeightConstraint];

  contentLayoutGuide = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor = [contentLayoutGuide bottomAnchor];
  bottomAnchor2 = [(MKArtworkImageView *)self->_platformArtworkImageView bottomAnchor];
  [(TransitDirectionsInstructionsStepView *)self _minPlatformArtworkBottomToBottomDistance];
  v13 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:?];
  v14 = [v13 _maps_withIdentifier:@"platformArtworkBottomToBottomConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPlatformArtworkBottomToBottomConstraint:v14];

  platformArtworkBottomToBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 platformArtworkBottomToBottomConstraint];
  [v4 addObject:platformArtworkBottomToBottomConstraint];

  trailingAnchor = [(MapsLargerHitTargetButton *)self->_detailButton trailingAnchor];
  contentLayoutGuide2 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  trailingAnchor2 = [contentLayoutGuide2 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20 = [v19 _maps_withIdentifier:@"detailButtonTrailingToContentTrailing"];
  [v4 addObject:v20];

  firstBaselineAnchor = [(MapsLargerHitTargetButton *)self->_detailButton firstBaselineAnchor];
  firstBaselineAnchor2 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
  v23 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v24 = [v23 _maps_withIdentifier:@"detailButtonBaselineToPrimaryLabelBaseline"];
  [v4 addObject:v24];

  bottomAnchor3 = [(MKArtworkImageView *)self->_platformArtworkImageView bottomAnchor];
  firstBaselineAnchor3 = [(MKMultiPartLabel *)self->_secondaryLabel firstBaselineAnchor];
  [(TransitDirectionsInstructionsStepView *)self _secondaryFirstBaselineToBottomPlatformArtworkDistance];
  v27 = [bottomAnchor3 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
  v28 = [v27 _maps_withIdentifier:@"secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setSecondaryLabelFirstBaselineToPlatformArtworkBottomConstraint:v28];

  secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];
  [v4 addObject:secondaryLabelFirstBaselineToPlatformArtworkBottomConstraint];

  contentLayoutGuide3 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor4 = [contentLayoutGuide3 bottomAnchor];
  bottomAnchor5 = [(UIStackView *)self->_textStackView bottomAnchor];
  v33 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor5];
  v34 = [v33 _maps_withIdentifier:@"contentBottomToTextStackBaseline"];
  [v4 addObject:v34];

  v35 = v4;
  _platformArtworkHorizontalPositioningConstraint = [(TransitDirectionsInstructionsStepView *)self _platformArtworkHorizontalPositioningConstraint];
  v37 = [_platformArtworkHorizontalPositioningConstraint _maps_withIdentifier:@"platformArtworkHorizontalPositioning"];
  [v4 addObject:v37];

  v172 = v5;
  selfCopy = self;
  v178 = v4;
  if (style != 2)
  {
    if (style == 1)
    {
      leadingAnchor = [(UIStackView *)self->_textStackView leadingAnchor];
      contentLayoutGuide4 = [(TransitDirectionsStepView *)self contentLayoutGuide];
      leadingAnchor2 = [contentLayoutGuide4 leadingAnchor];
      v94 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v95 = [v94 _maps_withIdentifier:@"contentLayoutGuideToPrimaryLeadingConstraint"];
      [(_TransitDirectionsInstructionsCellConstraints *)v5 setContentLayoutGuideToPrimaryLeadingConstraint:v95];

      contentLayoutGuideToPrimaryLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 contentLayoutGuideToPrimaryLeadingConstraint];
      [v4 addObject:contentLayoutGuideToPrimaryLeadingConstraint];

      topAnchor = [(UIStackView *)self->_textStackView topAnchor];
      contentLayoutGuide5 = [(TransitDirectionsStepView *)self contentLayoutGuide];
      topAnchor2 = [contentLayoutGuide5 topAnchor];
      v100 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v101 = [v100 _maps_withIdentifier:@"topToPrimaryConstraint"];
      [(_TransitDirectionsInstructionsCellConstraints *)v5 setTopToPrimaryConstraint:v101];

      topToPrimaryConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 topToPrimaryConstraint];
      [v4 addObject:topToPrimaryConstraint];

      contentLayoutGuide6 = [(TransitDirectionsStepView *)self contentLayoutGuide];
      trailingAnchor3 = [contentLayoutGuide6 trailingAnchor];
      trailingAnchor4 = [(UIStackView *)self->_textStackView trailingAnchor];
      v106 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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
            contentLayoutGuide7 = [(TransitDirectionsStepView *)self contentLayoutGuide];
            trailingAnchor5 = [contentLayoutGuide7 trailingAnchor];
            trailingAnchor6 = [(_MKUILabel *)v112 trailingAnchor];
            v116 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
            v117 = [v116 _maps_withIdentifier:@"contentTrailingToLabelTrailing"];

            self = selfCopy;
            if (v112 == selfCopy->_primaryLabel)
            {
              [(_TransitDirectionsInstructionsCellConstraints *)v172 setPrimaryAccessoryToTrailingConstraint:v117];
              primaryAccessoryToTrailingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v172 primaryAccessoryToTrailingConstraint];
              [primaryAccessoryToTrailingConstraint setIdentifier:@"primaryAccessoryToTrailingConstraint"];
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

    if (style)
    {
      goto LABEL_28;
    }
  }

  topAnchor3 = [(_MKUILabel *)self->_primaryLabel topAnchor];
  contentLayoutGuide8 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  topAnchor4 = [contentLayoutGuide8 topAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v42 = [v41 _maps_withIdentifier:@"topToPrimaryConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setTopToPrimaryConstraint:v42];

  topToPrimaryConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)v5 topToPrimaryConstraint];
  [v4 addObject:topToPrimaryConstraint2];

  contentLayoutGuide9 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor6 = [contentLayoutGuide9 bottomAnchor];
  primaryLabel = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  bottomAnchor7 = [primaryLabel bottomAnchor];
  v48 = [bottomAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor7];
  v49 = [v48 _maps_withIdentifier:@"primaryToContentBottomConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryBaselineToBottomConstraint:v49];

  primaryBaselineToBottomConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryBaselineToBottomConstraint];
  [v4 addObject:primaryBaselineToBottomConstraint];

  primaryLabel2 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  leadingAnchor3 = [primaryLabel2 leadingAnchor];
  contentLayoutGuide10 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  leadingAnchor4 = [contentLayoutGuide10 leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56 = [v55 _maps_withIdentifier:@"contentLayoutGuideToPrimaryLeadingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setContentLayoutGuideToPrimaryLeadingConstraint:v56];

  v35 = v4;
  contentLayoutGuideToPrimaryLeadingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)v5 contentLayoutGuideToPrimaryLeadingConstraint];
  [v4 addObject:contentLayoutGuideToPrimaryLeadingConstraint2];

  leadingAnchor5 = [(UIStackView *)self->_textStackView leadingAnchor];
  trailingAnchor7 = [(MKArtworkImageView *)self->_platformArtworkImageView trailingAnchor];
  traitCollection = [(TransitDirectionsInstructionsStepView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v61 = 6.0;
  }

  else
  {
    v61 = 4.0;
  }

  v62 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor7 constant:v61];
  v63 = [v62 _maps_withIdentifier:@"platformArtworkTrailingToTextStackLabelLeadingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPlatformArtworkTrailingToTextStackLabelLeadingConstraint:v63];

  leadingAnchor6 = [(UIStackView *)self->_textStackView leadingAnchor];
  leadingAnchor7 = [(_MKUILabel *)self->_primaryLabel leadingAnchor];
  v66 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v67 = [v66 _maps_withIdentifier:@"textStackLeadingToPrimaryLabelLeadingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setTextStackLeadingToPrimaryLabelLeadingConstraint:v67];

  textStackLeadingToPrimaryLabelLeadingConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 textStackLeadingToPrimaryLabelLeadingConstraint];
  LODWORD(v69) = 1148829696;
  [textStackLeadingToPrimaryLabelLeadingConstraint setPriority:v69];

  textStackLeadingToPrimaryLabelLeadingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)v5 textStackLeadingToPrimaryLabelLeadingConstraint];
  [v4 addObject:textStackLeadingToPrimaryLabelLeadingConstraint2];

  leadingAnchor8 = [(UILayoutGuide *)self->_trailingContentLayoutGuide leadingAnchor];
  trailingAnchor8 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
  v73 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor8];
  v74 = [v73 _maps_withIdentifier:@"primaryLabelTrailingToTrailingContentConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryLabelTrailingToTrailingContentConstraint:v74];

  primaryLabelTrailingToTrailingContentConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryLabelTrailingToTrailingContentConstraint];
  [v4 addObject:primaryLabelTrailingToTrailingContentConstraint];

  leadingAnchor9 = [(UILayoutGuide *)self->_trailingContentLayoutGuide leadingAnchor];
  trailingAnchor9 = [(MKMultiPartLabel *)self->_secondaryLabel trailingAnchor];
  v78 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor9];
  v79 = [v78 _maps_withIdentifier:@"secondaryLabelTrailingToTrailingContentConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setSecondaryLabelTrailingToTrailingContentConstraint:v79];

  secondaryLabelTrailingToTrailingContentConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 secondaryLabelTrailingToTrailingContentConstraint];
  [v4 addObject:secondaryLabelTrailingToTrailingContentConstraint];

  trailingAnchor10 = [(MKMultiPartLabel *)self->_tertiaryLabel trailingAnchor];
  contentLayoutGuide11 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  trailingAnchor11 = [contentLayoutGuide11 trailingAnchor];
  v84 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
  v85 = [v84 _maps_withIdentifier:@"tertiaryLabelTrailingToContentTrailing"];
  [v4 addObject:v85];

  if ([(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels])
  {
    contentLayoutGuide12 = [(TransitDirectionsStepView *)self contentLayoutGuide];
    trailingAnchor12 = [contentLayoutGuide12 trailingAnchor];
    trailingAnchor13 = [(UIStackView *)self->_textStackView trailingAnchor];
    v89 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    v90 = [v89 _maps_withIdentifier:@"contentTrailingToTextStackTrailing"];
    [v4 addObject:v90];

    v5 = v172;
    goto LABEL_28;
  }

  trailingAnchor14 = [(_MKUILabel *)self->_primaryAccessoryLabel trailingAnchor];
  contentLayoutGuide13 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  trailingAnchor15 = [contentLayoutGuide13 trailingAnchor];
  v122 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
  v123 = [v122 _maps_withIdentifier:@"primaryAccessoryToTrailingConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryAccessoryToTrailingConstraint:v123];

  primaryAccessoryToTrailingConstraint2 = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryAccessoryToTrailingConstraint];
  [v4 addObject:primaryAccessoryToTrailingConstraint2];

  trailingAnchor16 = [(_MKUILabel *)self->_secondaryAccessoryLabel trailingAnchor];
  trailingAnchor17 = [(_MKUILabel *)self->_primaryAccessoryLabel trailingAnchor];
  v127 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17];
  v128 = [v127 _maps_withIdentifier:@"secondaryAccessoryTrailingToPrimaryAccessoryTrailing"];
  [v4 addObject:v128];

  bottomAnchor8 = [(_MKUILabel *)self->_secondaryAccessoryLabel bottomAnchor];
  contentLayoutGuide14 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  bottomAnchor9 = [contentLayoutGuide14 bottomAnchor];
  v132 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9];
  v133 = [v132 _maps_withIdentifier:@"secondaryAccessoryBaselineToContentBottom"];
  [v4 addObject:v133];

  topAnchor5 = [(_MKUILabel *)self->_secondaryAccessoryLabel topAnchor];
  bottomAnchor10 = [(_MKUILabel *)self->_primaryAccessoryLabel bottomAnchor];
  v136 = [topAnchor5 constraintEqualToAnchor:bottomAnchor10];
  v137 = [v136 _maps_withIdentifier:@"primaryAccessoryToSecondaryAccessoryConstraint"];
  [(_TransitDirectionsInstructionsCellConstraints *)v5 setPrimaryAccessoryToSecondaryAccessoryConstraint:v137];

  primaryAccessoryToSecondaryAccessoryConstraint = [(_TransitDirectionsInstructionsCellConstraints *)v5 primaryAccessoryToSecondaryAccessoryConstraint];
  [v4 addObject:primaryAccessoryToSecondaryAccessoryConstraint];

  firstBaselineAnchor4 = [(_MKUILabel *)self->_primaryAccessoryLabel firstBaselineAnchor];
  primaryLabel3 = [(TransitDirectionsInstructionsStepView *)self primaryLabel];
  firstBaselineAnchor5 = [primaryLabel3 firstBaselineAnchor];
  v142 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5];
  v143 = [v142 _maps_withIdentifier:@"primaryAccessoryBaselineToPrimaryBaseline"];
  [v4 addObject:v143];

  widthAnchor = [(_MKUILabel *)self->_primaryAccessoryLabel widthAnchor];
  contentLayoutGuide15 = [(TransitDirectionsStepView *)self contentLayoutGuide];
  widthAnchor2 = [contentLayoutGuide15 widthAnchor];
  v147 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.5];
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
        topAnchor6 = [v153 topAnchor];
        topAnchor7 = [(UILayoutGuide *)selfCopy->_trailingContentLayoutGuide topAnchor];
        v156 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7];
        v157 = [v156 _maps_withIdentifier:@"accessoryTopToTrailingContentTop"];
        [v4 addObject:v157];

        leadingAnchor10 = [v153 leadingAnchor];
        leadingAnchor11 = [(UILayoutGuide *)selfCopy->_trailingContentLayoutGuide leadingAnchor];
        v160 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11];
        v161 = [v160 _maps_withIdentifier:@"accessoryLeadingToTrailingContentLeading"];
        [v4 addObject:v161];

        trailingAnchor18 = [(UILayoutGuide *)selfCopy->_trailingContentLayoutGuide trailingAnchor];
        trailingAnchor19 = [v153 trailingAnchor];
        v164 = [trailingAnchor18 constraintEqualToAnchor:trailingAnchor19];
        v165 = [v164 _maps_withIdentifier:@"accessoryTrailingToTrailingContentTrailing"];
        [v4 addObject:v165];

        bottomAnchor11 = [(UILayoutGuide *)selfCopy->_trailingContentLayoutGuide bottomAnchor];
        bottomAnchor12 = [v153 bottomAnchor];
        v168 = [bottomAnchor11 constraintGreaterThanOrEqualToAnchor:bottomAnchor12];
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

- (double)_extraSpacingAboveView:(id)view
{
  viewCopy = view;
  v5 = 0.0;
  if (self->_primaryAccessoryLabel == viewCopy)
  {
    [(TransitDirectionsInstructionsStepView *)self _metrics];
    v5 = v9;
  }

  if (self->_secondaryLabel == viewCopy)
  {
    [(TransitDirectionsInstructionsStepView *)self _metrics];
    v5 = v8;
  }

  if (self->_badgesArtworkListView == viewCopy)
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
      _combineAccessoryLabels = [(TransitDirectionsInstructionsStepView *)self _combineAccessoryLabels];
      v7 = self->_textStackView;
      if (_combineAccessoryLabels)
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

  initialConstraints = [(_TransitDirectionsInstructionsCellConstraints *)self->_styleConstraints initialConstraints];
  [NSLayoutConstraint activateConstraints:initialConstraints];

  [(TransitDirectionsInstructionsStepView *)self _cellStyleDidChange];
  [(TransitDirectionsInstructionsStepView *)self _updateConstraints];
}

- (unint64_t)_bestCellStyleForCurrentState
{
  v3 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v3 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  selfCopy = self;
  if (![(TransitDirectionsStepView *)selfCopy useNavigationMetrics])
  {
    if (sub_10000FA08(selfCopy) == 5)
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

  navigationState = [(TransitDirectionsStepView *)selfCopy navigationState];
  v12 = sub_10000FA08(selfCopy);
  if (navigationState != 4)
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
  secondaryLabel = selfCopy->_secondaryLabel;
  selfCopy->_secondaryLabel = v18;

  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = selfCopy;
  useNavigationMetrics = [(TransitDirectionsStepView *)v20 useNavigationMetrics];
  v22 = v20;
  v23 = sub_10000FA08(v22);
  v24 = y;
  if (useNavigationMetrics || v23 == 5)
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

  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setFont:v27];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setNumberOfLines:0];
  v28 = +[UIColor secondaryLabelColor];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setTextColor:v28];

  highlightedTextColor = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setHighlightedTextColor:highlightedTextColor];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setTextInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel setUserInteractionEnabled:0];
  LODWORD(v33) = 1148846080;
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v34];
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
  _mapkit_fontByAddingFeaturesForTimeDisplay = [v38 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [v22[44] setFont:_mapkit_fontByAddingFeaturesForTimeDisplay];
  [v22[44] setNumberOfLines:0];
  v40 = +[UIColor secondaryLabelColor];
  [v22[44] setTextColor:v40];

  highlightedTextColor2 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [v22[44] setHighlightedTextColor:highlightedTextColor2];

  [v22[44] setTextInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v22[44] setUserInteractionEnabled:0];
  LODWORD(v42) = 1148846080;
  [v22[44] _mapkit_setContentCompressionResistancePriority:1 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [v22[44] _mapkit_setContentHuggingPriority:1 forAxis:v43];
  height = [[TransitArtworkListView alloc] initWithFrame:x, v24, v17, height];
  v45 = v37[45];
  v37[45] = height;

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
  traitCollection = [v50 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v53 = UIFontTextStyleBody;
  if (userInterfaceIdiom != 5)
  {
    v53 = UIFontTextStyleSubheadline;
  }

  v54 = v53;

  v55 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:v54];

  fontDescriptor = [v55 fontDescriptor];
  v57 = [fontDescriptor _mapkit_fontDescriptorByAddingFeaturesForTimeDisplayUseMonospace:1];

  v58 = [UIFont fontWithDescriptor:v57 size:0.0];

  [v37[46] setFont:v58];
  [v37[46] _setMultilineLabelRequiresCarefulMeasurement:1];
  highlightedTextColor3 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [v37[46] setHighlightedTextColor:highlightedTextColor3];

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
  traitCollection2 = [v64 traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 5)
  {
    fontDescriptor2 = [v65 fontDescriptor];
    _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay = [fontDescriptor2 _mapkit_fontDescriptorByAddingFeaturesForTimeDisplay];

    v70 = [UIFont fontWithDescriptor:_mapkit_fontDescriptorByAddingFeaturesForTimeDisplay size:0.0];

    v65 = v70;
  }

  [v50[47] setFont:v65];
  v71 = +[UIColor systemGrayColor];
  [v50[47] setTextColor:v71];

  highlightedTextColor4 = [(_MKUILabel *)self->_primaryLabel highlightedTextColor];
  [v50[47] setHighlightedTextColor:highlightedTextColor4];

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
  _createImageView = [v64 _createImageView];
  v84 = v64[48];
  v64[48] = _createImageView;

  [v64[48] setAccessibilityIdentifier:@"PlatformArtworkImageView"];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel _mapkit_contentHuggingPriorityForAxis:0];
  *&v86 = v85 + 1.0;
  [v64[48] _mapkit_setContentHuggingPriority:0 forAxis:v86];
  [(MKMultiPartLabel *)selfCopy->_secondaryLabel _mapkit_contentCompressionResistancePriorityForAxis:0];
  *&v88 = v87 + 1.0;
  [v64[48] _mapkit_setContentCompressionResistancePriority:0 forAxis:v88];
  [v64 addSubview:v64[48]];
  v89 = [MapsLargerHitTargetButton buttonWithType:1];
  v90 = v64[49];
  v64[49] = v89;

  [v64[49] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v64[49] setAccessibilityIdentifier:@"DetailButton"];
  traitCollection3 = [v64 traitCollection];
  userInterfaceIdiom3 = [traitCollection3 userInterfaceIdiom];

  if (userInterfaceIdiom3 == 5)
  {
    v93 = -6.0;
  }

  else
  {
    v93 = -8.0;
  }

  detailButton = [v64 detailButton];
  [detailButton setTouchInsets:{v93, -16.0, v93, -16.0}];

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

  _mapkit_fontByAddingFeaturesForTimeDisplay2 = [v97 _mapkit_fontByAddingFeaturesForTimeDisplay];

  [v95 _setFont:_mapkit_fontByAddingFeaturesForTimeDisplay2];
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