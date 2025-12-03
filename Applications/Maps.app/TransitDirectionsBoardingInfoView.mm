@interface TransitDirectionsBoardingInfoView
- (TransitDirectionsBoardingInfoView)initWithFrame:(CGRect)frame;
- (unint64_t)resolvedLayout;
- (void)_refreshContent;
- (void)_updateLayout;
- (void)setBoardingInfoEntry:(id)entry exitPlan:(id)plan;
- (void)setButtonTitle:(id)title target:(id)target action:(SEL)action;
- (void)setForceVerticalAxis:(BOOL)axis;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPreboardingStrings:(id)strings;
- (void)setPreferredLayout:(unint64_t)layout;
- (void)setUseAlternativeInstruction:(BOOL)instruction;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TransitDirectionsBoardingInfoView

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = TransitDirectionsBoardingInfoView;
  changeCopy = change;
  [(TransitDirectionsBoardingInfoView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(TransitDirectionsBoardingInfoView *)self traitCollection:v9.receiver];
  v6 = sub_100017FE8(changeCopy, v5);

  if (v6)
  {
    traitCollection = [(TransitDirectionsBoardingInfoView *)self traitCollection];
    isLuminanceReduced = [traitCollection isLuminanceReduced];

    [(MapsLargerHitTargetButton *)self->_button setEnabled:isLuminanceReduced ^ 1];
  }
}

- (void)_refreshContent
{
  selfCopy = self;
  entry = self->_entry;
  if (entry)
  {
    v4 = entry;
    exitPlanInfo = selfCopy->_exitPlanInfo;
    v6 = exitPlanInfo;
    v62 = v4;
    v59 = exitPlanInfo;
    if ([(TransitDirectionsBoardingInfoView *)selfCopy useAlternativeInstruction]&& ([(GEOTransitBoardingInfoEntry *)v4 hasAlternativeTimeInstruction]& 1) != 0)
    {
      v7 = selfCopy;
      alternativeTimeInstruction = [(GEOTransitBoardingInfoEntry *)v4 alternativeTimeInstruction];
    }

    else
    {
      v7 = selfCopy;
      alternativeTimeInstruction = [(GEOTransitBoardingInfoEntry *)v4 mainTimeInstruction];
    }

    v9 = alternativeTimeInstruction;
    v10 = [GEOComposedString alloc];
    primaryText = [v9 primaryText];
    v64 = [v10 initWithGeoFormattedString:primaryText];

    v12 = [GEOComposedString alloc];
    v61 = v9;
    secondaryText = [v9 secondaryText];
    v63 = [v12 initWithGeoFormattedString:secondaryText];

    v14 = [NSNumber numberWithInteger:5];
    v75[0] = NSFontAttributeName;
    font = [(MKMultiPartLabel *)v7->_label font];
    v56 = MKServerFormattedStringArtworkSizeAttributeKey;
    v76[0] = font;
    v76[1] = v14;
    v16 = MKServerFormattedStringArtworkLimitToFontAscenderAttributeKey;
    v75[1] = MKServerFormattedStringArtworkSizeAttributeKey;
    v75[2] = MKServerFormattedStringArtworkLimitToFontAscenderAttributeKey;
    v17 = [NSNumber numberWithBool:0];
    v76[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:3];
    v19 = [NSAttributedString _mapkit_attributedStringForComposedString:v64 defaultAttributes:v18];

    v73[0] = NSFontAttributeName;
    p_isa = &v7->super.super.super.isa;
    font2 = [(MKMultiPartLabel *)v7->_label font];
    v74[0] = font2;
    v73[1] = NSForegroundColorAttributeName;
    v21 = +[UIColor secondaryLabelColor];
    v74[1] = v21;
    v74[2] = v14;
    v60 = v14;
    v73[2] = v56;
    v73[3] = v16;
    v22 = [NSNumber numberWithBool:0];
    v74[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:4];
    v24 = [NSAttributedString _mapkit_attributedStringForComposedString:v63 defaultAttributes:v23];

    v25 = [[NSMutableArray alloc] initWithCapacity:2];
    v26 = v25;
    if (v19)
    {
      [v25 addObject:v19];
    }

    v57 = v19;
    if (v24)
    {
      [v26 addObject:v24];
    }

    selfCopy = p_isa;
    if ([v26 count])
    {
      v27 = [[NSAttributedString alloc] initWithString:@"\n"];
      v28 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v26 repeatedSeparator:v27];
      [p_isa[1] setMultiPartString:v28];
    }

    else
    {
      [p_isa[1] setMultiPartString:0];
    }

    occupancyInfo = [(GEOTransitBoardingInfoEntry *)v62 occupancyInfo];
    occupancyStatus = [occupancyInfo occupancyStatus];

    v45 = occupancyStatus - 1;
    if (v45 < 4)
    {
      v46 = v45 + 1;
    }

    else
    {
      v46 = 0;
    }

    [p_isa[3] setOccupancyStatus:v46];
    objc_storeStrong(p_isa + 7, v59);
    v47 = [GEOComposedString alloc];
    label = [(GEOTransitExitPlanInfo *)v6 label];
    v49 = [v47 initWithGeoFormattedString:label];
    [p_isa[4] setText:v49];

    v50 = +[NSMutableIndexSet indexSet];
    if ([(GEOTransitExitPlanInfo *)v6 selectedCarIndexsCount])
    {
      v51 = 0;
      do
      {
        [v50 addIndex:{-[GEOTransitExitPlanInfo selectedCarIndexAtIndex:](v6, "selectedCarIndexAtIndex:", v51++)}];
      }

      while (v51 < [(GEOTransitExitPlanInfo *)v6 selectedCarIndexsCount]);
    }

    [p_isa[4] setIndexSetOfSuggestedCars:v50];
    [p_isa[4] setNumberOfCars:{-[GEOTransitExitPlanInfo numberOfCars](v6, "numberOfCars")}];
  }

  else if (self->_preboardingStrings)
  {
    v29 = [[NSMutableArray alloc] initWithCapacity:2];
    v30 = [NSNumber numberWithInteger:5];
    v71[0] = NSFontAttributeName;
    font3 = [(MKMultiPartLabel *)selfCopy->_label font];
    v32 = MKServerFormattedStringArtworkSizeAttributeKey;
    v71[1] = MKServerFormattedStringArtworkSizeAttributeKey;
    v72[0] = font3;
    v72[1] = v30;
    v33 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];

    v69[0] = NSFontAttributeName;
    font4 = [(MKMultiPartLabel *)selfCopy->_label font];
    v70[0] = font4;
    v69[1] = NSForegroundColorAttributeName;
    v35 = +[UIColor secondaryLabelColor];
    v69[2] = v32;
    v70[1] = v35;
    v70[2] = v30;
    v36 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:3];

    preboardingStrings = selfCopy->_preboardingStrings;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100D6B35C;
    v65[3] = &unk_101652F60;
    v38 = v33;
    v66 = v38;
    v39 = v36;
    v67 = v39;
    v40 = v29;
    v68 = v40;
    [(NSArray *)preboardingStrings enumerateObjectsUsingBlock:v65];
    if ([v40 count])
    {
      v41 = [[NSAttributedString alloc] initWithString:@"\n"];
      v42 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v40 repeatedSeparator:v41];
      [(MKMultiPartLabel *)selfCopy->_label setMultiPartString:v42];
    }

    else
    {
      [(MKMultiPartLabel *)selfCopy->_label setMultiPartString:0];
    }

    [(TransitDirectionsOccupancyStatusView *)selfCopy->_occupancyStatusView setOccupancyStatus:0];
    v53 = selfCopy->_exitPlanInfo;
    selfCopy->_exitPlanInfo = 0;

    [(TransitDirectionsExitPlanView *)selfCopy->_exitPlanView setIndexSetOfSuggestedCars:0];
    [(TransitDirectionsExitPlanView *)selfCopy->_exitPlanView setNumberOfCars:0];
  }

  else
  {
    [(MKMultiPartLabel *)self->_label setMultiPartString:0];
    [(TransitDirectionsOccupancyStatusView *)selfCopy->_occupancyStatusView setOccupancyStatus:0];
    v52 = selfCopy->_exitPlanInfo;
    selfCopy->_exitPlanInfo = 0;

    [(TransitDirectionsExitPlanView *)selfCopy->_exitPlanView setIndexSetOfSuggestedCars:0];
    [(TransitDirectionsExitPlanView *)selfCopy->_exitPlanView setNumberOfCars:0];
  }

  button = selfCopy->_button;
  traitCollection = [(TransitDirectionsBoardingInfoView *)selfCopy traitCollection];
  -[MapsLargerHitTargetButton setEnabled:](button, "setEnabled:", [traitCollection isLuminanceReduced] ^ 1);

  [(TransitDirectionsBoardingInfoView *)selfCopy _updateLayout];
}

- (void)setButtonTitle:(id)title target:(id)target action:(SEL)action
{
  targetCopy = target;
  v15 = targetCopy;
  if (title)
  {
    v9 = targetCopy == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || action == 0;
  button = self->_button;
  titleCopy = title;
  [(MapsLargerHitTargetButton *)button setHidden:v11];
  [(MapsLargerHitTargetButton *)self->_button setTitle:titleCopy forState:0];

  [(MapsLargerHitTargetButton *)self->_button removeTarget:0 action:0 forControlEvents:64];
  v14 = v15;
  if (v15 && action)
  {
    [(MapsLargerHitTargetButton *)self->_button addTarget:v15 action:action forControlEvents:64];
    v14 = v15;
  }
}

- (void)setUseAlternativeInstruction:(BOOL)instruction
{
  if (self->_useAlternativeInstruction != instruction)
  {
    self->_useAlternativeInstruction = instruction;
    if (self->_entry)
    {
      [(TransitDirectionsBoardingInfoView *)self _refreshContent];
    }
  }
}

- (void)setPreboardingStrings:(id)strings
{
  stringsCopy = strings;
  preboardingStrings = self->_preboardingStrings;
  v11 = stringsCopy;
  v7 = preboardingStrings;
  if (v11 | v7)
  {
    v8 = [v11 isEqual:v7];

    if (!v8)
    {
      objc_storeStrong(&self->_preboardingStrings, strings);
      entry = self->_entry;
      self->_entry = 0;

      exitPlanInfo = self->_exitPlanInfo;
      self->_exitPlanInfo = 0;

      goto LABEL_6;
    }
  }

  if (self->_preboardingStrings)
  {
LABEL_6:
    [(TransitDirectionsBoardingInfoView *)self _refreshContent];
  }
}

- (void)setBoardingInfoEntry:(id)entry exitPlan:(id)plan
{
  entryCopy = entry;
  planCopy = plan;
  entry = self->_entry;
  v18 = entryCopy;
  entryCopy2 = entry;
  if (v18 | entryCopy2 && (v11 = [v18 isEqual:entryCopy2], entryCopy2, v18, !v11) || (exitPlanInfo = self->_exitPlanInfo, v13 = planCopy, v14 = exitPlanInfo, v13 | v14) && (v15 = v14, v16 = objc_msgSend(v13, "isEqual:", v14), v15, v13, !v16))
  {
    objc_storeStrong(&self->_entry, entry);
    objc_storeStrong(&self->_exitPlanInfo, plan);
    preboardingStrings = self->_preboardingStrings;
    self->_preboardingStrings = 0;

LABEL_9:
    [(TransitDirectionsBoardingInfoView *)self _refreshContent];
    goto LABEL_10;
  }

  if (self->_entry || self->_exitPlanInfo)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_updateLayout
{
  resolvedLayout = [(TransitDirectionsBoardingInfoView *)self resolvedLayout];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100D6B88C;
  v8[3] = &unk_101652F38;
  v8[4] = resolvedLayout;
  v4 = objc_retainBlock(v8);
  forceVerticalAxis = 1;
  [(TransitDirectionsOccupancyStatusView *)self->_occupancyStatusView setHidden:(v4[2])(v4, 1) ^ 1];
  if (resolvedLayout == 1)
  {
    forceVerticalAxis = [(TransitDirectionsBoardingInfoView *)self forceVerticalAxis];
  }

  [(TransitDirectionsBoardingInfoStackView *)self->_occupancyStatusView setAxis:forceVerticalAxis];
  [(TransitDirectionsExitPlanView *)self->_exitPlanView setHidden:(v4[2])(v4, 2) ^ 1];
  if (resolvedLayout == 2)
  {
    forceVerticalAxis2 = [(TransitDirectionsBoardingInfoView *)self forceVerticalAxis];
  }

  else
  {
    forceVerticalAxis2 = 1;
  }

  [(TransitDirectionsBoardingInfoStackView *)self->_exitPlanView setAxis:forceVerticalAxis2];
  if ([(TransitDirectionsOccupancyStatusView *)self->_occupancyStatusView isHidden])
  {
    isHidden = [(TransitDirectionsExitPlanView *)self->_exitPlanView isHidden];
  }

  else
  {
    isHidden = 0;
  }

  [(UIStackView *)self->_occupancyAndExitStackView setHidden:isHidden];
  [(TransitDirectionsBoardingInfoView *)self invalidateIntrinsicContentSize];
}

- (unint64_t)resolvedLayout
{
  result = self->_preferredLayout;
  if (!result)
  {
    LODWORD(result) = [(GEOTransitBoardingInfoEntry *)self->_entry hasOccupancyInfo];
    if (self->_exitPlanInfo)
    {
      return result | 2;
    }

    else
    {
      return result;
    }
  }

  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (sub_10000FA08(self) == 5)
  {
    button = self->_button;
    if (highlightedCopy)
    {
      +[UIColor systemWhiteColor];
    }

    else
    {
      +[UIColor systemBlueColor];
    }
    v6 = ;
    [(MapsLargerHitTargetButton *)button setTitleColor:v6 forState:0];
  }
}

- (void)setForceVerticalAxis:(BOOL)axis
{
  if (self->_forceVerticalAxis != axis)
  {
    self->_forceVerticalAxis = axis;
    [(TransitDirectionsBoardingInfoView *)self _updateLayout];
  }
}

- (void)setPreferredLayout:(unint64_t)layout
{
  if (self->_preferredLayout != layout)
  {
    self->_preferredLayout = layout;
    [(TransitDirectionsBoardingInfoView *)self _updateLayout];
  }
}

- (TransitDirectionsBoardingInfoView)initWithFrame:(CGRect)frame
{
  v87.receiver = self;
  v87.super_class = TransitDirectionsBoardingInfoView;
  v3 = [(TransitDirectionsBoardingInfoView *)&v87 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(TransitDirectionsBoardingInfoView *)v3 setAccessibilityIdentifier:v5];

    LODWORD(v6) = 1132068864;
    [(TransitDirectionsBoardingInfoView *)v3 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(TransitDirectionsBoardingInfoView *)v3 setContentHuggingPriority:1 forAxis:v7];
    LODWORD(v8) = 1132068864;
    [(TransitDirectionsBoardingInfoView *)v3 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(TransitDirectionsBoardingInfoView *)v3 setContentCompressionResistancePriority:1 forAxis:v9];
    v10 = [MKMultiPartLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v14 = [v10 initWithFrame:?];
    label = v3->_label;
    v3->_label = v14;

    [(MKMultiPartLabel *)v3->_label setAccessibilityIdentifier:@"Label"];
    [(MKMultiPartLabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = v3;
    sub_10000FA08(v16);
    v17 = +[UIFont system17];

    [(MKMultiPartLabel *)v3->_label setFont:v17];
    if (sub_10000FA08(v16) == 5)
    {
      +[UIColor systemWhiteColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v18 = ;
    [(MKMultiPartLabel *)v3->_label setHighlightedTextColor:v18];

    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [(MKMultiPartLabel *)v3->_label setTextInset:UIEdgeInsetsZero.top, left, bottom, right];
    [(MKMultiPartLabel *)v3->_label setUserInteractionEnabled:0];
    LODWORD(v22) = 1132068864;
    [(MKMultiPartLabel *)v3->_label setContentHuggingPriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(MKMultiPartLabel *)v3->_label setContentHuggingPriority:1 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(MKMultiPartLabel *)v3->_label setContentCompressionResistancePriority:1 forAxis:v24];
    if (sub_10000FA08(v16) == 5)
    {
      v25 = [MapsLargerHitTargetButton buttonWithType:0];
      button = v16->_button;
      v16->_button = v25;

      [(TransitDirectionsBoardingInfoView *)v16 setHighlighted:0];
    }

    else
    {
      v27 = [MapsLargerHitTargetButton buttonWithType:1];
      v28 = v16->_button;
      v16->_button = v27;
    }

    [(MapsLargerHitTargetButton *)v16->_button setAccessibilityIdentifier:@"Button"];
    [(MapsLargerHitTargetButton *)v16->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsLargerHitTargetButton *)v16->_button setContentEdgeInsets:UIEdgeInsetsZero.top, left, bottom, right];
    [(MapsLargerHitTargetButton *)v16->_button setTitleEdgeInsets:UIEdgeInsetsZero.top, left, bottom, right];
    [(MapsLargerHitTargetButton *)v16->_button setTouchInsets:-2.0, -4.0, -2.0, -4.0];
    font = [(MKMultiPartLabel *)v3->_label font];
    titleLabel = [(MapsLargerHitTargetButton *)v16->_button titleLabel];
    [titleLabel setFont:font];

    titleLabel2 = [(MapsLargerHitTargetButton *)v16->_button titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:1];

    v32 = v16->_button;
    v33 = +[UIColor systemGrayColor];
    [(MapsLargerHitTargetButton *)v32 setTitleColor:v33 forState:2];

    LODWORD(v34) = 1148846080;
    [(MapsLargerHitTargetButton *)v16->_button setContentHuggingPriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(MapsLargerHitTargetButton *)v16->_button setContentHuggingPriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(MapsLargerHitTargetButton *)v16->_button setContentCompressionResistancePriority:1 forAxis:v36];
    height = [[TransitDirectionsOccupancyStatusView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    occupancyStatusView = v16->_occupancyStatusView;
    v16->_occupancyStatusView = height;

    [(TransitDirectionsOccupancyStatusView *)v16->_occupancyStatusView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v39) = 1148846080;
    [(TransitDirectionsOccupancyStatusView *)v16->_occupancyStatusView setContentCompressionResistancePriority:1 forAxis:v39];
    LODWORD(v40) = 1148846080;
    [(TransitDirectionsOccupancyStatusView *)v16->_occupancyStatusView setContentHuggingPriority:1 forAxis:v40];
    height2 = [[TransitDirectionsExitPlanView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    exitPlanView = v16->_exitPlanView;
    v16->_exitPlanView = height2;

    [(TransitDirectionsExitPlanView *)v16->_exitPlanView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v43) = 1148846080;
    [(TransitDirectionsExitPlanView *)v16->_exitPlanView setContentCompressionResistancePriority:1 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(TransitDirectionsExitPlanView *)v16->_exitPlanView setContentHuggingPriority:1 forAxis:v44];
    v45 = &MKLookAroundViewDidBecomeFullyDrawnNotification_ptr;
    v46 = [UIStackView alloc];
    v90[0] = v3->_label;
    v90[1] = v16->_button;
    v47 = [NSArray arrayWithObjects:v90 count:2];
    v48 = [v46 initWithArrangedSubviews:v47];
    labelAndButtonStackView = v16->_labelAndButtonStackView;
    v16->_labelAndButtonStackView = v48;

    [(UIStackView *)v16->_labelAndButtonStackView setAccessibilityIdentifier:@"LabelAndButtonStackView"];
    [(UIStackView *)v16->_labelAndButtonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v50 = sub_10000FA08(v16);
    v51 = v16->_labelAndButtonStackView;
    if (v50 == 5)
    {
      [(UIStackView *)v51 setAxis:1];
      [(UIStackView *)v16->_labelAndButtonStackView setAlignment:1];
      font2 = [(MKMultiPartLabel *)v3->_label font];
      [font2 descender];
      v54 = v53;
      font3 = [(MKMultiPartLabel *)v3->_label font];
      [font3 descender];
      if (v54 < 0.0)
      {
        v57 = -v56;
      }

      else
      {
        v57 = v56;
      }

      titleLabel3 = [(MapsLargerHitTargetButton *)v16->_button titleLabel];
      font4 = [titleLabel3 font];
      [font4 ascender];
      [(UIStackView *)v16->_labelAndButtonStackView setSpacing:v57 + v60 + 4.0];

      v45 = &MKLookAroundViewDidBecomeFullyDrawnNotification_ptr;
    }

    else
    {
      [(UIStackView *)v51 setAxis:0];
      [(UIStackView *)v16->_labelAndButtonStackView setAlignment:2];
      [(UIStackView *)v16->_labelAndButtonStackView setSpacing:24.0];
    }

    [(UIStackView *)v16->_labelAndButtonStackView setBaselineRelativeArrangement:v50 == 5];
    [(UIStackView *)v16->_labelAndButtonStackView setDistribution:3];
    LODWORD(v61) = 1132068864;
    [(UIStackView *)v16->_labelAndButtonStackView setContentHuggingPriority:0 forAxis:v61];
    LODWORD(v62) = 1148846080;
    [(UIStackView *)v16->_labelAndButtonStackView setContentHuggingPriority:1 forAxis:v62];
    LODWORD(v63) = 1148846080;
    [(UIStackView *)v16->_labelAndButtonStackView setContentCompressionResistancePriority:1 forAxis:v63];
    v64 = objc_alloc(v45[387]);
    v89[0] = v16->_occupancyStatusView;
    v89[1] = v16->_exitPlanView;
    v65 = [NSArray arrayWithObjects:v89 count:2];
    v66 = [v64 initWithArrangedSubviews:v65];
    occupancyAndExitStackView = v16->_occupancyAndExitStackView;
    v16->_occupancyAndExitStackView = v66;

    [(UIStackView *)v16->_occupancyAndExitStackView setAccessibilityIdentifier:@"OccupancyAndExitStackView"];
    [(UIStackView *)v16->_occupancyAndExitStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v16->_occupancyAndExitStackView setAxis:0];
    [(UIStackView *)v16->_occupancyAndExitStackView setDistribution:1];
    [(UIStackView *)v16->_occupancyAndExitStackView setAlignment:0];
    [(UIStackView *)v16->_occupancyAndExitStackView setSpacing:20.0];
    LODWORD(v68) = 1132068864;
    [(UIStackView *)v16->_occupancyAndExitStackView setContentHuggingPriority:0 forAxis:v68];
    LODWORD(v69) = 1148846080;
    [(UIStackView *)v16->_occupancyAndExitStackView setContentHuggingPriority:1 forAxis:v69];
    LODWORD(v70) = 1148846080;
    [(UIStackView *)v16->_occupancyAndExitStackView setContentCompressionResistancePriority:1 forAxis:v70];
    v71 = objc_alloc(v45[387]);
    v88[0] = v16->_labelAndButtonStackView;
    v88[1] = v16->_occupancyAndExitStackView;
    v72 = [NSArray arrayWithObjects:v88 count:2];
    v73 = [v71 initWithArrangedSubviews:v72];

    [v73 setAccessibilityIdentifier:@"MainStackView"];
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v73 setAxis:1];
    [v73 setDistribution:3];
    [v73 setAlignment:0];
    v74 = sub_10000FA08(v16);
    v75 = 8.0;
    if (v74 == 5)
    {
      v75 = 3.0;
    }

    [v73 setSpacing:v75];
    LODWORD(v76) = 1132068864;
    [v73 setContentHuggingPriority:0 forAxis:v76];
    LODWORD(v77) = 1148846080;
    [v73 setContentHuggingPriority:1 forAxis:v77];
    LODWORD(v78) = 1148846080;
    [v73 setContentCompressionResistancePriority:1 forAxis:v78];
    [(TransitDirectionsBoardingInfoView *)v16 addSubview:v73];
    v79 = [(TransitDirectionsBoardingInfoView *)v16 _maps_addHairlineAtTrailingWithMargin:0.0];
    trailingHairline = v16->_trailingHairline;
    v16->_trailingHairline = v79;

    LODWORD(v81) = 1148846080;
    v82 = [v73 _maps_constraintsEqualToEdgesOfView:v16 priority:v81];
    if (sub_10000FA08(v16) == 5)
    {
      v83 = 0.0;
    }

    else
    {
      v83 = 5.0;
    }

    bottomConstraint = [v82 bottomConstraint];
    [bottomConstraint setConstant:v83];

    allConstraints = [v82 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    [(TransitDirectionsBoardingInfoView *)v16 _updateLayout];
  }

  return v3;
}

@end