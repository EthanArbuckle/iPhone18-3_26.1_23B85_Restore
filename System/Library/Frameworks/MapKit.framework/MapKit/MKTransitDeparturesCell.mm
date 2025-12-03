@interface MKTransitDeparturesCell
+ (BOOL)_needsUpdateMaxLabelWidths;
+ (double)_maxExpectedDepartureLabelWidth;
+ (double)maxLineImageWidthforWidth:(double)width;
+ (id)_attributedStringForCountdownDepartures:(id)departures referenceDate:(id)date isShowingNoConnectionEmDash:(BOOL)dash;
+ (id)_departureDetailLabelFont;
+ (id)_departureLabelFont;
+ (id)_primaryFont;
+ (id)_stringForCountdownDepartures:(id)departures referenceDate:(id)date isShowingNoConnectionEmDash:(BOOL)dash;
+ (id)_stringFromTimestampDate:(id)date departureTimeZone:(id)zone;
+ (id)defaultSecondaryFont;
+ (id)displayableCountdowDepartureDatesFromDates:(id)dates withReferenceDate:(id)date;
+ (id)strongSecondaryFont;
+ (void)_addEmDashAttributes:(id)attributes;
+ (void)_calculateMaxLabelWidths;
+ (void)_enumerateMinutesUntilDepartureDates:(id)dates withReferenceDate:(id)date block:(id)block;
+ (void)useCompressedGutter:(BOOL *)gutter compressedLeading:(BOOL *)leading forImageWidth:(double)width inWidth:(double)inWidth;
- (BOOL)_isDisplayingDepartureInfo;
- (BOOL)_shouldEnforceMinimumDepartureLabelWidth;
- (BOOL)_shouldPinSecondaryStackViewToBottom;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (MKTransitDeparturesCell)initWithReuseIdentifier:(id)identifier;
- (MKTransitDeparturesCellDelegate)delegate;
- (double)_baselineSpacingAboveView:(id)view;
- (double)_labelMarginWithLineImageViewWidth:(double)width;
- (double)_labelToBottomScaledConstantForFullCenteredCellStyle;
- (double)_labelToTopScaledConstantForFullCenteredCellStyle;
- (double)_separatorHeight;
- (double)labelMargin;
- (id)_constraintsForCellStyle:(unint64_t)style;
- (id)_departureDates;
- (id)_fontForView:(id)view;
- (id)_incidentIcon;
- (id)_operatingHoursDescriptionForSequence:(id)sequence mapItem:(id)item useNewLineDelimeter:(BOOL)delimeter;
- (id)_startEndDatesForSequence:(id)sequence date:(id)date mapItem:(id)item;
- (id)multipartStringSeparator;
- (unint64_t)_bestCellStyleForCurrentState;
- (unint64_t)_displayableDeparturesCount;
- (void)_addIncidentIcon;
- (void)_commonInit;
- (void)_contentSizeCategoryDidChange;
- (void)_getDepartureDependentConstraintsToActivate:(id *)activate toDeactivate:(id *)deactivate;
- (void)_incidentButtonPressed;
- (void)_setCellStyle:(unint64_t)style;
- (void)_updateConstraintValues;
- (void)_updateDepartureDependentConstraintsForCurrentState;
- (void)_updateLabelFonts;
- (void)_updateLineImageViewConstraintConstants;
- (void)configureCellForRowIndex:(int64_t)index withMapItem:(id)item sectionController:(id)controller outNextLineIsSame:(BOOL *)same;
- (void)configureLeadingWithTableViewContentMargin:(double)margin width:(double)width;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)refreshDeparturesDisplay;
- (void)setAccessibilityOrder;
- (void)setCountdownReferenceDate:(id)date;
- (void)setDepartures:(id)departures;
- (void)setFrequency:(id)frequency;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setInactive:(BOOL)inactive;
- (void)setIncidentButtonHidden:(BOOL)hidden;
- (void)setIncidentTitle:(id)title;
- (void)setLineImage:(id)image;
- (void)setLineImageViewSize:(double)size;
- (void)setOperatingHours:(id)hours;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSeparatorHidden:(BOOL)hidden;
- (void)setShowDisclosureArrow:(BOOL)arrow;
- (void)setShowIncidentIcon:(BOOL)icon;
- (void)setShowNoConnectionEnDash:(BOOL)dash;
- (void)setTertiaryText:(id)text;
- (void)setUseCompressedGutter:(BOOL)gutter;
- (void)setUseCompressedLeading:(BOOL)leading;
- (void)setUseMultilineDeparturesLabel:(BOOL)label;
- (void)updateConstraints;
@end

@implementation MKTransitDeparturesCell

- (void)configureCellForRowIndex:(int64_t)index withMapItem:(id)item sectionController:(id)controller outNextLineIsSame:(BOOL *)same
{
  v98 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  controllerCopy = controller;
  v95 = 1;
  [(MKTransitDeparturesCell *)self setInactive:0];
  [(MKTransitDeparturesCell *)self setFrequency:0];
  [(MKTransitDeparturesCell *)self setOperatingHours:0];
  v12 = [[MKTransitItemIncidentsController alloc] initWithMapItem:itemCopy];
  departureCutoffDate = [(MKTransitDeparturesCell *)self departureCutoffDate];
  [(MKTransitItemIncidentsController *)v12 setReferenceDate:departureCutoffDate];

  _newStationCardUIEnabled = [(MKTransitDeparturesCell *)self _newStationCardUIEnabled];
  [(MKTransitDeparturesCell *)self setUseMultilineDeparturesLabel:_newStationCardUIEnabled];
  if (index != -1 || !_newStationCardUIEnabled)
  {
    v26 = [controllerCopy sequenceForRow:index outIsNewLine:&v95 outNextLineIsSame:same];
    displayStyle = [v26 displayStyle];
    line = [v26 line];
    -[MKTransitDeparturesCell setDepartureStyle:](self, "setDepartureStyle:", [v26 departureTimeDisplayStyle]);
    departureCutoffDate2 = [(MKTransitDeparturesCell *)self departureCutoffDate];
    v28 = [v26 departuresValidForDate:departureCutoffDate2];

    v84 = v28;
    [(MKTransitDeparturesCell *)self setDepartures:v28];
    v29 = [(MKTransitItemIncidentsController *)v12 incidentsForDepartureSequence:v26];
    firstObject = [v29 firstObject];

    if (!_newStationCardUIEnabled)
    {
      if (firstObject)
      {
        messageForRouteStepping = [firstObject messageForRouteStepping];
        if (messageForRouteStepping)
        {
          [(MKTransitDeparturesCell *)self setIncidentTitle:messageForRouteStepping];
        }

        else
        {
          title = [firstObject title];
          [(MKTransitDeparturesCell *)self setIncidentTitle:title];
        }
      }

      else
      {
        [(MKTransitDeparturesCell *)self setIncidentTitle:0];
      }
    }

    line2 = [v26 line];
    name = [line2 name];

    v90 = [(MKTransitDeparturesCell *)self _operatingHoursDescriptionForSequence:v26 mapItem:itemCopy useNewLineDelimeter:_newStationCardUIEnabled];
    if ([v90 length])
    {
      v34 = 0;
    }

    else
    {
      v34 = [controllerCopy serviceGapDescriptionForRow:index];
    }

    array = [MEMORY[0x1E695DF70] array];
    v82 = name;
    v83 = controllerCopy;
    v81 = itemCopy;
    if (![controllerCopy departuresAreVehicleSpecific])
    {
      if (_newStationCardUIEnabled)
      {
        displayName = [v26 displayName];
        [(MKTransitDeparturesCell *)self setPrimaryText:displayName];

        v41 = v34;
        v42 = array;
        if ([v90 length])
        {
LABEL_67:
          [(MKTransitDeparturesCell *)self setOperatingHours:v90];
        }

LABEL_69:
        if (![v41 length])
        {
          countdownReferenceDate = [(MKTransitDeparturesCell *)self countdownReferenceDate];
          v64 = [v26 hasFrequencyAtDate:countdownReferenceDate];

          if (v64)
          {
            v65 = MEMORY[0x1E696AEC0];
            countdownReferenceDate2 = [(MKTransitDeparturesCell *)self countdownReferenceDate];
            v67 = [v26 frequencyToDescribeAtDate:countdownReferenceDate2];
            v68 = [v65 _navigation_formattedDescriptionForFrequency:v67];

            if ([v68 length])
            {
              if (_newStationCardUIEnabled)
              {
                [(MKTransitDeparturesCell *)self setFrequency:v68];
              }

              else
              {
                v69 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v68];
                [v42 addObject:v69];
              }
            }
          }
        }

        if ([v42 count])
        {
          multipartStringSeparator = [(MKTransitDeparturesCell *)self multipartStringSeparator];
          v71 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v42 repeatedSeparator:multipartStringSeparator];
        }

        else
        {
          v71 = 0;
        }

        v17 = v26;
        [(MKTransitDeparturesCell *)self setSecondaryText:v71];
        if (v41)
        {
          v96 = v41;
          v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
          v73 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0];
          v74 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v72 repeatedSeparator:v73];
        }

        else
        {
          v74 = 0;
        }

        v15 = line;
        v75 = v41;
        [(MKTransitDeparturesCell *)self setTertiaryText:v74];
        if (_newStationCardUIEnabled)
        {
          [(MKTransitDeparturesCell *)self setLineImage:0];
          [(MKTransitDeparturesCell *)self setShowIncidentIcon:0];
          v76 = firstObject;
        }

        else
        {
          v76 = firstObject;
          delegate = [(MKTransitDeparturesCell *)self delegate];
          v78 = [delegate imageForTransitLine:line];

          [(MKTransitDeparturesCell *)self setLineImage:v78];
          [(MKTransitDeparturesCell *)self setShowIncidentIcon:firstObject != 0];

          v15 = line;
        }

        controllerCopy = v83;
        itemCopy = v81;
        goto LABEL_86;
      }

      v41 = v34;
      if (![name length] || displayStyle != 1)
      {
        headsign = [v26 headsign];
        [(MKTransitDeparturesCell *)self setPrimaryText:headsign];

        v42 = array;
        if (displayStyle != 2 || ![name length])
        {
          goto LABEL_65;
        }

        headsign3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:name];
        [array addObject:headsign3];
        goto LABEL_64;
      }

      [(MKTransitDeparturesCell *)self setPrimaryText:name];
      headsign2 = [v26 headsign];
      v44 = [headsign2 length];

      v42 = array;
      if (!v44)
      {
LABEL_65:
        if (![v90 length])
        {
          goto LABEL_69;
        }

        if (_newStationCardUIEnabled)
        {
          goto LABEL_67;
        }

        v62 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v90];
        [v42 addObject:v62];

        goto LABEL_69;
      }

      v45 = objc_alloc(MEMORY[0x1E696AAB0]);
      headsign3 = [v26 headsign];
      v46 = [v45 initWithString:headsign3];
      [array addObject:v46];
LABEL_63:

LABEL_64:
      goto LABEL_65;
    }

    headsign3 = [v84 firstObject];
    vehicleIdentifier = [headsign3 vehicleIdentifier];
    v36 = [vehicleIdentifier length];
    v37 = [name length];
    if (v36)
    {
      if (v37)
      {
        v38 = _newStationCardUIEnabled;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        v39 = vehicleIdentifier;
LABEL_41:
        v46 = v39;
        goto LABEL_47;
      }

      v47 = MEMORY[0x1E696AEC0];
      v48 = _MKLocalizedStringFromThisBundle(@"train number line name format");
      [headsign3 vehicleIdentifier];
      v49 = headsign3;
      v51 = v50 = v26;
      v46 = [v47 stringWithFormat:v48, v51, v82];

      v26 = v50;
      headsign3 = v49;
      controllerCopy = v83;
    }

    else
    {
      if (v37)
      {
        v39 = name;
        goto LABEL_41;
      }

      v46 = &stru_1F15B23C0;
    }

LABEL_47:
    if ([v90 length])
    {
      v41 = v34;
    }

    else
    {
      v41 = [controllerCopy serviceGapDescriptionForRow:index];
    }

    v42 = array;
    if ([(__CFString *)v46 length]&& displayStyle == 1)
    {
      [(MKTransitDeparturesCell *)self setPrimaryText:v46];
      headsign4 = [v26 headsign];
      v54 = [headsign4 length];

      if (v54)
      {
        v55 = objc_alloc(MEMORY[0x1E696AAB0]);
        headsign5 = [v26 headsign];
        v57 = [v55 initWithString:headsign5];
        [array addObject:v57];

LABEL_61:
      }
    }

    else
    {
      if (_newStationCardUIEnabled)
      {
        displayName2 = [headsign3 displayName];
        v59 = displayName2;
        if (displayName2)
        {
          displayName3 = displayName2;
        }

        else
        {
          displayName3 = [v26 displayName];
        }

        headsign5 = displayName3;

        [(MKTransitDeparturesCell *)self setPrimaryText:headsign5];
        goto LABEL_61;
      }

      headsign6 = [v26 headsign];
      [(MKTransitDeparturesCell *)self setPrimaryText:headsign6];

      if ([(__CFString *)v46 length])
      {
        headsign5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v46];
        [array addObject:headsign5];
        goto LABEL_61;
      }
    }

    goto LABEL_63;
  }

  v15 = [controllerCopy sequenceForRow:0 outIsNewLine:&v95 outNextLineIsSame:same];
  delegate2 = [(MKTransitDeparturesCell *)self delegate];
  v17 = [delegate2 imageForDepartureSequence:v15];

  [(MKTransitDeparturesCell *)self setLineImage:v17];
  [(MKTransitDeparturesCell *)self setIncidentTitle:0];
  [(MKTransitDeparturesCell *)self setDepartures:MEMORY[0x1E695E0F0]];
  [(MKTransitDeparturesCell *)self setSecondaryText:0];
  [(MKTransitDeparturesCell *)self setTertiaryText:0];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  sequences = [controllerCopy sequences];
  v19 = [sequences countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v19)
  {
    v87 = v15;
    v89 = v17;
    v20 = controllerCopy;
    v21 = itemCopy;
    v22 = *v92;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v92 != v22)
        {
          objc_enumerationMutation(sequences);
        }

        v24 = [(MKTransitItemIncidentsController *)v12 incidentsForDepartureSequence:*(*(&v91 + 1) + 8 * i)];
        v25 = [v24 count];

        if (v25)
        {
          v19 = 1;
          goto LABEL_17;
        }
      }

      v19 = [sequences countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

LABEL_17:
    itemCopy = v21;
    controllerCopy = v20;
    v15 = v87;
    v17 = v89;
  }

  [(MKTransitDeparturesCell *)self setShowIncidentIcon:v19];
LABEL_86:
}

- (id)_operatingHoursDescriptionForSequence:(id)sequence mapItem:(id)item useNewLineDelimeter:(BOOL)delimeter
{
  delimeterCopy = delimeter;
  sequenceCopy = sequence;
  itemCopy = item;
  if ([sequenceCopy departureTimeDisplayStyle] == 3 && (objc_msgSend(sequenceCopy, "operatingHours"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    departureCutoffDate = [(MKTransitDeparturesCell *)self departureCutoffDate];
    v13 = [(MKTransitDeparturesCell *)self _startEndDatesForSequence:sequenceCopy date:departureCutoffDate mapItem:itemCopy];

    timeZone = [itemCopy timeZone];
    v15 = timeZone;
    if (timeZone)
    {
      timeZone2 = timeZone;
    }

    else
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      timeZone2 = [currentCalendar timeZone];
    }

    if (delimeterCopy)
    {
      [MEMORY[0x1E696AEC0] _navigation_formattedStringForHourRanges:v13 timeZone:timeZone2 delimeter:@"\n"];
    }

    else
    {
      [MEMORY[0x1E696AEC0] _navigation_formattedStringForHourRanges:v13 timeZone:timeZone2];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_startEndDatesForSequence:(id)sequence date:(id)date mapItem:(id)item
{
  v26 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  dateCopy = date;
  timeZone = [item timeZone];
  v10 = [sequenceCopy operatingHoursForDate:dateCopy inTimeZone:timeZone];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        startDate = [v17 startDate];
        [v11 addObject:startDate];

        endDate = [v17 endDate];
        [v11 addObject:endDate];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  return v11;
}

- (void)configureLeadingWithTableViewContentMargin:(double)margin width:(double)width
{
  v5 = 0;
  [(MKTransitDeparturesCell *)self lineImageViewSize];
  [MKTransitDeparturesCell useCompressedGutter:"useCompressedGutter:compressedLeading:forImageWidth:inWidth:" compressedLeading:&v5 + 1 forImageWidth:&v5 inWidth:?];
  [(MKTransitDeparturesCell *)self setUseCompressedLeading:v5];
  [(MKTransitDeparturesCell *)self setUseCompressedGutter:HIBYTE(v5)];
}

- (id)multipartStringSeparator
{
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = _MKLocalizedStringFromThisBundle(@"Departures_Cell_Secondary_Separator");
  v4 = [v2 initWithString:v3];

  return v4;
}

- (MKTransitDeparturesCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_labelToBottomScaledConstantForFullCenteredCellStyle
{
  _newStationCardUIEnabled = [(MKTransitDeparturesCell *)self _newStationCardUIEnabled];
  result = 33.0;
  if (_newStationCardUIEnabled)
  {
    return 17.0;
  }

  return result;
}

- (double)_labelToTopScaledConstantForFullCenteredCellStyle
{
  if (![(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    return 45.0;
  }

  image = [(UIImageView *)self->_lineImageView image];

  result = 37.0;
  if (!image)
  {
    return 29.0;
  }

  return result;
}

- (void)setSeparatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  isSeparatorHidden = [(MKCustomSeparatorCell *)self isSeparatorHidden];
  v6.receiver = self;
  v6.super_class = MKTransitDeparturesCell;
  [(MKCustomSeparatorCell *)&v6 setSeparatorHidden:hiddenCopy];
  if (isSeparatorHidden != [(MKCustomSeparatorCell *)self isSeparatorHidden])
  {
    [(MKTransitDeparturesCell *)self _updateConstraintValues];
  }
}

- (double)labelMargin
{
  [(MKTransitDeparturesCell *)self lineImageViewSize];

  [(MKTransitDeparturesCell *)self _labelMarginWithLineImageViewWidth:?];
  return result;
}

- (void)setUseCompressedLeading:(BOOL)leading
{
  if (self->_useCompressedLeading == leading)
  {
    if (self->_useCompressedLeading)
    {
      v4 = 1312;
    }

    else
    {
      v4 = 1304;
    }

    if (*(&self->super.super.super.super.super.super.isa + v4))
    {
      return;
    }
  }

  else
  {
    self->_useCompressedLeading = leading;
  }

  contentView = [(MKTransitDeparturesCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];

  if (self->_useCompressedLeading)
  {
    p_lineImageCompressedLeadingConstraint = &self->_lineImageCompressedLeadingConstraint;
    if (!self->_lineImageCompressedLeadingConstraint)
    {
      leadingAnchor2 = [(UIImageView *)self->_lineImageView leadingAnchor];
      v9 = [leadingAnchor2 constraintGreaterThanOrEqualToAnchor:leadingAnchor constant:12.0];
      v10 = *p_lineImageCompressedLeadingConstraint;
      *p_lineImageCompressedLeadingConstraint = v9;

      LODWORD(v11) = 1148813312;
      [*p_lineImageCompressedLeadingConstraint setPriority:v11];
    }

    v12 = &OBJC_IVAR___MKTransitDeparturesCell__lineImageLeadingConstraint;
  }

  else
  {
    p_lineImageCompressedLeadingConstraint = &self->_lineImageLeadingConstraint;
    if (!self->_lineImageLeadingConstraint)
    {
      leadingAnchor3 = [(UIImageView *)self->_lineImageView leadingAnchor];
      v14 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor];
      v15 = *p_lineImageCompressedLeadingConstraint;
      *p_lineImageCompressedLeadingConstraint = v14;
    }

    v12 = &OBJC_IVAR___MKTransitDeparturesCell__lineImageCompressedLeadingConstraint;
  }

  [*(&self->super.super.super.super.super.super.isa + *v12) setActive:0];
  [*p_lineImageCompressedLeadingConstraint setActive:1];
}

- (void)setUseCompressedGutter:(BOOL)gutter
{
  if (self->_useCompressedGutter != gutter)
  {
    self->_useCompressedGutter = gutter;
    lineImageToTextGutterConstraint = self->_lineImageToTextGutterConstraint;
    v4 = -12.0;
    if (gutter)
    {
      v4 = -8.0;
    }

    [(NSLayoutConstraint *)lineImageToTextGutterConstraint setConstant:v4];
  }
}

- (double)_labelMarginWithLineImageViewWidth:(double)width
{
  if (![(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    return width + 12.0;
  }

  image = [(UIImageView *)self->_lineImageView image];

  result = width + 12.0;
  if (!image)
  {
    return 0.0;
  }

  return result;
}

- (void)setIncidentButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(UIButton *)self->_incidentButton isHidden]!= hidden)
  {
    [(UIButton *)self->_incidentButton setHidden:hiddenCopy];
    if (!hiddenCopy)
    {
      incidentButton = self->_incidentButton;
      incidentTitle = [(MKTransitDeparturesCell *)self incidentTitle];
      [(UIButton *)incidentButton setTitle:incidentTitle forState:0];
    }
  }
}

- (void)_incidentButtonPressed
{
  delegate = [(MKTransitDeparturesCell *)self delegate];
  [delegate incidentButtonSelectedInDeparturesCell:self];
}

- (void)setIncidentTitle:(id)title
{
  titleCopy = title;
  incidentTitle = self->_incidentTitle;
  if (incidentTitle != titleCopy)
  {
    v9 = titleCopy;
    v6 = [(NSString *)incidentTitle isEqualToString:titleCopy];
    titleCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_incidentTitle;
      self->_incidentTitle = v7;

      [(MKTransitDeparturesCell *)self setIncidentButtonHidden:[(NSString *)self->_incidentTitle length]== 0];
      titleCopy = v9;
    }
  }
}

- (void)setShowIncidentIcon:(BOOL)icon
{
  if (self->_showIncidentIcon != icon)
  {
    self->_showIncidentIcon = icon;
    if (icon)
    {
      [(MKTransitDeparturesCell *)self _addIncidentIcon];
    }

    else
    {
      [(MKTransitDeparturesCell *)self _removeIncidentIcon];
    }
  }
}

- (void)_addIncidentIcon
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (!self->_incidentIconImageView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    incidentIconImageView = self->_incidentIconImageView;
    self->_incidentIconImageView = v3;

    [(UIImageView *)self->_incidentIconImageView setAccessibilityIdentifier:@"IncidentIconImageView"];
    [(UIImageView *)self->_incidentIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
    {
      v5 = 1;
    }

    else
    {
      v5 = 4;
    }

    [(UIImageView *)self->_incidentIconImageView setContentMode:v5];
    _incidentIcon = [(MKTransitDeparturesCell *)self _incidentIcon];
    [(UIImageView *)self->_incidentIconImageView setImage:_incidentIcon];
  }

  contentView = [(MKTransitDeparturesCell *)self contentView];
  [contentView addSubview:self->_incidentIconImageView];

  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    heightAnchor = [(UIImageView *)self->_incidentIconImageView heightAnchor];
    v9 = [heightAnchor constraintEqualToConstant:10.0];

    [v9 setActive:1];
    widthAnchor = [(UIImageView *)self->_incidentIconImageView widthAnchor];
    heightAnchor2 = [(UIImageView *)self->_incidentIconImageView heightAnchor];
    v12 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    [v12 setActive:1];
  }

  incidentIconHorizontalConstraint = self->_incidentIconHorizontalConstraint;
  if (!incidentIconHorizontalConstraint)
  {
    trailingAnchor = [(UIImageView *)self->_incidentIconImageView trailingAnchor];
    trailingAnchor2 = [(UIImageView *)self->_lineImageView trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v17 = self->_incidentIconHorizontalConstraint;
    self->_incidentIconHorizontalConstraint = v16;

    incidentIconHorizontalConstraint = self->_incidentIconHorizontalConstraint;
  }

  v18 = MEMORY[0x1E696ACD8];
  v23[0] = incidentIconHorizontalConstraint;
  bottomAnchor = [(UIImageView *)self->_incidentIconImageView bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_lineImageView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:4.0];
  v23[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v18 activateConstraints:v22];

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (id)_incidentIcon
{
  window = [(MKTransitDeparturesCell *)self window];
  screen = [window screen];
  v4 = screen;
  if (screen)
  {
    [screen scale];
    v6 = v5;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v6 = v8;
  }

  return [MKIconManager imageForTrafficIncidentType:4 size:0 forScale:v6];
}

- (unint64_t)_displayableDeparturesCount
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = objc_opt_class();
  _departureDates = [(MKTransitDeparturesCell *)self _departureDates];
  countdownReferenceDate = [(MKTransitDeparturesCell *)self countdownReferenceDate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MKTransitDeparturesCell__displayableDeparturesCount__block_invoke;
  v9[3] = &unk_1E76CAB60;
  v9[4] = v14;
  v9[5] = &v10;
  [v3 _enumerateMinutesUntilDepartureDates:_departureDates withReferenceDate:countdownReferenceDate block:v9];

  departureStyle = [(MKTransitDeparturesCell *)self departureStyle];
  if (departureStyle > 5 || ((1 << departureStyle) & 0x34) == 0)
  {
    if ([(MKTransitDeparturesCell *)self isShowingNoConnectionEmDash])
    {
      ++v11[3];
    }
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
  return v7;
}

uint64_t __54__MKTransitDeparturesCell__displayableDeparturesCount__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = *(*(result + 32) + 8);
    if (*(v3 + 24))
    {
      return result;
    }

    *(v3 + 24) = 1;
  }

  ++*(*(*(result + 40) + 8) + 24);
  return result;
}

- (id)_departureDates
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  departures = [(MKTransitDeparturesCell *)self departures];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(departures, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  departures2 = [(MKTransitDeparturesCell *)self departures];
  v7 = [departures2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(departures2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        departureDate = [v11 departureDate];
        if (([v11 isCanceled] & 1) == 0 && departureDate)
        {
          [v5 addObject:departureDate];
        }
      }

      v8 = [departures2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)setFrequency:(id)frequency
{
  frequencyCopy = frequency;
  if (([(NSString *)self->_frequency isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_frequency, frequency);
  }
}

- (void)setOperatingHours:(id)hours
{
  hoursCopy = hours;
  if (([(NSString *)self->_operatingHours isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_operatingHours, hours);
  }
}

- (void)setDepartures:(id)departures
{
  departuresCopy = departures;
  if (([(NSArray *)self->_departures isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_departures, departures);
  }
}

- (void)setCountdownReferenceDate:(id)date
{
  dateCopy = date;
  if (![(NSDate *)self->_countdownReferenceDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_countdownReferenceDate, date);
  }
}

- (void)setShowNoConnectionEnDash:(BOOL)dash
{
  if (self->_showNoConnectionEmDash != dash)
  {
    self->_showNoConnectionEmDash = dash;
  }
}

- (void)setLineImageViewSize:(double)size
{
  if (self->_lineImageViewSize != size)
  {
    self->_lineImageViewSize = size;
    if (![(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
    {
      [(MKTransitDeparturesCell *)self lineImageViewSize];
      [(MKTransitDeparturesCell *)self _labelMarginWithLineImageViewWidth:?];
      [(NSLayoutConstraint *)self->_labelLeadingMarginConstraint setConstant:?];
    }

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setAccessibilityOrder
{
  v39[5] = *MEMORY[0x1E69E9840];
  v33 = objc_alloc_init(MEMORY[0x1E696AD60]);
  text = [(_MKUILabel *)self->_primaryLabel text];
  v4 = text;
  if (text)
  {
    null = text;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = null;

  v39[0] = v6;
  text2 = [(MKMultiPartLabel *)self->_secondaryLabel text];
  v8 = text2;
  if (text2)
  {
    null2 = text2;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v10 = null2;

  v39[1] = v10;
  text3 = [(_MKUILabel *)self->_departureLabel text];
  v12 = text3;
  if (text3)
  {
    null3 = text3;
  }

  else
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = null3;

  v39[2] = v14;
  text4 = [(_MKUILabel *)self->_departureDetailLabel text];
  v16 = text4;
  if (text4)
  {
    null4 = text4;
  }

  else
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null4;

  v39[3] = v18;
  text5 = [(MKMultiPartLabel *)self->_tertiaryLabel text];
  v20 = text5;
  if (text5)
  {
    null5 = text5;
  }

  else
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null5;

  v39[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v34 + 1) + 8 * i);
        null6 = [MEMORY[0x1E695DFB0] null];
        v31 = [v29 isEqual:null6];

        if ((v31 & 1) == 0)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, ", v29];
          [v33 appendString:v32];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v26);
  }

  [(MKTransitDeparturesCell *)self setAccessibilityLabel:v33];
}

- (void)refreshDeparturesDisplay
{
  v49 = *MEMORY[0x1E69E9840];
  _displayableDeparturesCount = [(MKTransitDeparturesCell *)self _displayableDeparturesCount];
  departures = [(MKTransitDeparturesCell *)self departures];
  firstObject = [departures firstObject];

  liveStatus = [firstObject liveStatus];
  if (self->_departureStyle == 1 && liveStatus == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = liveStatus;
  }

  departureStyle = [(MKTransitDeparturesCell *)self departureStyle];
  if (departureStyle - 2 > 3)
  {
    v10 = 1;
    if (!_displayableDeparturesCount)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = qword_1A30F7AC8[departureStyle - 2];
    if (!_displayableDeparturesCount)
    {
      goto LABEL_15;
    }
  }

  if (v10 == 2)
  {
    self->_enforceMinimumDepartureLabelWidth = 0;
    if ((v8 - 1) >= 2)
    {
      [firstObject scheduledDepartureDate];
    }

    else
    {
      [firstObject liveDepartureDate];
    }
    _displayableDeparturesCount = ;
    v16 = objc_opt_class();
    departureTimeZone = [(MKTransitDeparturesCell *)self departureTimeZone];
    v18 = [v16 _stringFromTimestampDate:_displayableDeparturesCount departureTimeZone:departureTimeZone];

    _mapkit_isDarkModeEnabled = [(UIView *)self _mapkit_isDarkModeEnabled];
    if (v18)
    {
      v14 = [MEMORY[0x1E696AAB0] _mapkit_attributedLiveTransitStringFromDepartureString:v18 departure:firstObject darkMode:_mapkit_isDarkModeEnabled];
    }

    else
    {
      v14 = 0;
    }

    liveStatusString = [firstObject liveStatusString];

    if (liveStatusString)
    {
      v15 = 0;
    }

    else
    {
      v21 = objc_opt_class();
      liveDepartureDate = [firstObject liveDepartureDate];
      departureTimeZone2 = [(MKTransitDeparturesCell *)self departureTimeZone];
      v15 = [v21 _stringFromTimestampDate:liveDepartureDate departureTimeZone:departureTimeZone2];
    }

    goto LABEL_27;
  }

  if (v10 != 1)
  {
    v15 = 0;
    _displayableDeparturesCount = 0;
    goto LABEL_28;
  }

  self->_enforceMinimumDepartureLabelWidth = 1;
  v11 = objc_opt_class();
  _departureDates = [(MKTransitDeparturesCell *)self _departureDates];
  countdownReferenceDate = [(MKTransitDeparturesCell *)self countdownReferenceDate];
  _displayableDeparturesCount = [v11 _attributedStringForCountdownDepartures:_departureDates referenceDate:countdownReferenceDate isShowingNoConnectionEmDash:{-[MKTransitDeparturesCell isShowingNoConnectionEmDash](self, "isShowingNoConnectionEmDash")}];

  if (!firstObject)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_28;
  }

  v14 = [MEMORY[0x1E696AAB0] _mapkit_attributedLiveTransitStringFromAttributedDepartureString:_displayableDeparturesCount liveStatus:v8 darkMode:-[UIView _mapkit_isDarkModeEnabled](self symbolOverrideColor:{"_mapkit_isDarkModeEnabled"), 0}];
  v15 = 0;
LABEL_27:

  _displayableDeparturesCount = v14;
LABEL_28:
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_34;
  }

  liveStatusString2 = [firstObject liveStatusString];

  if (!liveStatusString2)
  {
    departureDate = [firstObject departureDate];

    if (departureDate)
    {
      v27 = MKTransitLiveDepartureColorForViewWithLiveStatus(self, v8);
      v46 = *MEMORY[0x1E69DB650];
      *v47 = v27;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v35 = objc_alloc(MEMORY[0x1E696AAB0]);
      v36 = [MEMORY[0x1E696AEC0] _navigation_formattedDescriptionForLiveStatus:v8 updatedDepartureTimeString:v15];
      attributedString = [v35 initWithString:v36 attributes:v34];

      goto LABEL_33;
    }

LABEL_34:
    attributedString = 0;
    goto LABEL_35;
  }

  memset(&v47[12], 0, 15);
  v48 = 0;
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  +[MKTransitItemReferenceDateUpdater referenceDateAsTimeInterval];
  v39 = 1;
  v40 = 0u;
  v41 = 0;
  v42 = IsRightToLeft;
  v43 = 0;
  v44 = 0;
  v45 = v26;
  v27 = [[MKServerFormattedStringParameters alloc] initWithOptions:&v39 variableOverrides:0];
  v28 = [MKServerFormattedString alloc];
  liveStatusString3 = [firstObject liveStatusString];
  v30 = [(MKServerFormattedString *)v28 initWithGeoServerString:liveStatusString3 parameters:v27];

  v31 = [(MKServerFormattedString *)v30 multiPartAttributedStringWithAttributes:MEMORY[0x1E695E0F8]];
  attributedString = [v31 attributedString];

LABEL_33:
LABEL_35:
  if (-[MKTransitDeparturesCell _newStationCardUIEnabled](self, "_newStationCardUIEnabled") && ![_displayableDeparturesCount length] && -[NSString length](self->_frequency, "length"))
  {
    v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_frequency];

    _displayableDeparturesCount = v37;
  }

  if (-[MKTransitDeparturesCell _newStationCardUIEnabled](self, "_newStationCardUIEnabled") && ![_displayableDeparturesCount length] && -[NSString length](self->_operatingHours, "length"))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_operatingHours];

    _displayableDeparturesCount = v38;
  }

  -[_MKUILabel setHidden:](self->_departureDetailLabel, "setHidden:", [attributedString length] == 0);
  -[_MKUILabel setHidden:](self->_departureLabel, "setHidden:", [_displayableDeparturesCount length] == 0);
  [(_MKUILabel *)self->_departureLabel setAttributedText:_displayableDeparturesCount];
  [(_MKUILabel *)self->_departureDetailLabel setAttributedText:attributedString];
  [(MKTransitDeparturesCell *)self _updateDepartureDependentConstraintsForCurrentState];
  [(NSLayoutConstraint *)self->_minimumDepartureLabelWidthConstraint setActive:[(MKTransitDeparturesCell *)self _shouldEnforceMinimumDepartureLabelWidth]];
}

- (void)setShowDisclosureArrow:(BOOL)arrow
{
  arrowCopy = arrow;
  if ([(UIImageView *)self->_disclosureArrowImageView isHidden]== arrow)
  {
    [(UIImageView *)self->_disclosureArrowImageView setHidden:!arrowCopy];

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setTertiaryText:(id)text
{
  tertiaryLabel = self->_tertiaryLabel;
  textCopy = text;
  LODWORD(tertiaryLabel) = [(MKThemeMultiPartLabel *)tertiaryLabel isHidden];
  [(MKMultiPartLabel *)self->_tertiaryLabel setMultiPartString:textCopy];

  text = [(MKMultiPartLabel *)self->_tertiaryLabel text];
  -[MKThemeMultiPartLabel setHidden:](self->_tertiaryLabel, "setHidden:", [text length] == 0);

  if (tertiaryLabel != [(MKThemeMultiPartLabel *)self->_tertiaryLabel isHidden])
  {

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setSecondaryText:(id)text
{
  secondaryLabel = self->_secondaryLabel;
  textCopy = text;
  LODWORD(secondaryLabel) = [(MKThemeMultiPartLabel *)secondaryLabel isHidden];
  [(MKMultiPartLabel *)self->_secondaryLabel setMultiPartString:textCopy];

  text = [(MKMultiPartLabel *)self->_secondaryLabel text];
  -[MKThemeMultiPartLabel setHidden:](self->_secondaryLabel, "setHidden:", [text length] == 0);

  if (secondaryLabel != [(MKThemeMultiPartLabel *)self->_secondaryLabel isHidden])
  {

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setPrimaryText:(id)text
{
  v13[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v5 = sPrimaryLabelParagraphStyle;
  if (!sPrimaryLabelParagraphStyle)
  {
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v7 = [defaultParagraphStyle mutableCopy];

    LODWORD(v8) = 1008981770;
    [v7 setHyphenationFactor:v8];
    v9 = sPrimaryLabelParagraphStyle;
    sPrimaryLabelParagraphStyle = v7;

    v5 = sPrimaryLabelParagraphStyle;
  }

  v12 = *MEMORY[0x1E69DB688];
  v13[0] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  if (textCopy)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:textCopy attributes:v10];
    [(_MKUILabel *)self->_primaryLabel setAttributedText:v11];
  }

  else
  {
    [(_MKUILabel *)self->_primaryLabel setAttributedText:0];
  }
}

- (void)setLineImage:(id)image
{
  [(UIImageView *)self->_lineImageView setImage:?];
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    image = [(UIImageView *)self->_lineImageView image];
    [image size];
    [(MKTransitDeparturesCell *)self _labelMarginWithLineImageViewWidth:?];
    [(NSLayoutConstraint *)self->_labelLeadingMarginConstraint setConstant:?];

    [(NSLayoutConstraint *)self->_lineImageViewHeightConstraint setActive:image != 0];
  }

  [(MKTransitDeparturesCell *)self _updateLineImageViewConstraintConstants];
}

- (double)_separatorHeight
{
  _screen = [(MKTransitDeparturesCell *)self _screen];
  [_screen nativeScale];
  v4 = 1.0 / v3;

  return v4;
}

- (void)_updateLabelFonts
{
  _primaryFont = [objc_opt_class() _primaryFont];
  [(_MKUILabel *)self->_primaryLabel setFont:_primaryFont];

  defaultSecondaryFont = [objc_opt_class() defaultSecondaryFont];
  [(MKMultiPartLabel *)self->_secondaryLabel setFont:defaultSecondaryFont];

  defaultSecondaryFont2 = [objc_opt_class() defaultSecondaryFont];
  [(MKMultiPartLabel *)self->_tertiaryLabel setFont:defaultSecondaryFont2];

  _departureLabelFont = [objc_opt_class() _departureLabelFont];
  [(_MKUILabel *)self->_departureLabel setFont:_departureLabelFont];

  _departureDetailLabelFont = [objc_opt_class() _departureDetailLabelFont];
  [(_MKUILabel *)self->_departureDetailLabel setFont:_departureDetailLabelFont];

  defaultSecondaryFont3 = [objc_opt_class() defaultSecondaryFont];
  titleLabel = [(UIButton *)self->_incidentButton titleLabel];
  [titleLabel setFont:defaultSecondaryFont3];
}

- (void)infoCardThemeChanged
{
  v5.receiver = self;
  v5.super_class = MKTransitDeparturesCell;
  [(UIView *)&v5 infoCardThemeChanged];
  mk_theme = [(UIView *)self mk_theme];
  lightTextColor = [mk_theme lightTextColor];
  [(UIImageView *)self->_lineImageView setTintColor:lightTextColor];

  [(MKTransitDeparturesCell *)self refreshDeparturesDisplay];
}

- (void)_updateDepartureDependentConstraintsForCurrentState
{
  v4 = 0;
  v5 = 0;
  [(MKTransitDeparturesCell *)self _getDepartureDependentConstraintsToActivate:&v5 toDeactivate:&v4];
  v2 = v5;
  v3 = v4;
  if (v3)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v3];
  }

  if (v2)
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v2];
  }
}

- (void)_getDepartureDependentConstraintsToActivate:(id *)activate toDeactivate:(id *)deactivate
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (![(NSMapTable *)self->_departureDependentConstraintsByView count])
  {
    return;
  }

  if ([(MKTransitDeparturesCell *)self _shouldEnforceDepartureDependentConstraints])
  {
    attributedText = [(_MKUILabel *)self->_departureLabel attributedText];
    v8 = [attributedText length];

    attributedText2 = [(_MKUILabel *)self->_departureDetailLabel attributedText];
    v10 = [attributedText2 length];

    v11 = 1;
    if (v8)
    {
      v11 = 2;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8 != 0;
    }

    secondaryLabel = self->_secondaryLabel;
    v29[0] = self->_primaryLabel;
    v29[1] = secondaryLabel;
    incidentButton = self->_incidentButton;
    v29[2] = self->_tertiaryLabel;
    v29[3] = incidentButton;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    if (activate)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
      if (deactivate)
      {
LABEL_10:
        v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
LABEL_16:
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __84__MKTransitDeparturesCell__getDepartureDependentConstraintsToActivate_toDeactivate___block_invoke;
        v25[3] = &unk_1E76CAAE8;
        v25[4] = self;
        v20 = v16;
        v26 = v20;
        v28 = v12;
        v21 = v17;
        v27 = v21;
        [v15 enumerateObjectsUsingBlock:v25];
        if (deactivate)
        {
          v22 = v21;
          *deactivate = v21;
        }

        if (activate)
        {
          v23 = v20;
          *activate = v20;
        }

        return;
      }
    }

    else
    {
      v16 = 0;
      if (deactivate)
      {
        goto LABEL_10;
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

  v18 = MEMORY[0x1E696ACD8];
  objectEnumerator = [(NSMapTable *)self->_departureDependentConstraintsByView objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [v18 deactivateConstraints:allObjects];
}

void __84__MKTransitDeparturesCell__getDepartureDependentConstraintsToActivate_toDeactivate___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 1184) objectForKey:?];
  if (v3)
  {
    v4 = (a1 + 40);
    if ([*(a1 + 40) count] >= *(a1 + 56) || objc_msgSend(v5, "isHidden"))
    {
      v4 = (a1 + 48);
    }

    [*v4 addObject:v3];
  }
}

- (BOOL)_shouldPinSecondaryStackViewToBottom
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_cellStyle == 2)
  {
    return 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  arrangedSubviews = [(UIStackView *)self->_secondaryTextStackView arrangedSubviews];
  v5 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(arrangedSubviews);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      if (([v9 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          attributedText = [v9 attributedText];
        }

        else
        {
          if (![(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
          {
            goto LABEL_18;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_15;
          }

          attributedText = [v9 text];
        }

        v11 = attributedText;
        v12 = [attributedText length];

        if (v12)
        {
LABEL_18:
          v2 = 1;
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v6 == ++v8)
      {
        v6 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v2 = 0;
LABEL_19:

  return v2;
}

- (BOOL)_isDisplayingDepartureInfo
{
  attributedText = [(_MKUILabel *)self->_departureLabel attributedText];
  if ([attributedText length])
  {
    v4 = 1;
  }

  else
  {
    attributedText2 = [(_MKUILabel *)self->_departureDetailLabel attributedText];
    v4 = [attributedText2 length] != 0;
  }

  return v4;
}

- (BOOL)_shouldEnforceMinimumDepartureLabelWidth
{
  if (!self->_enforceMinimumDepartureLabelWidth)
  {
    return 0;
  }

  if ([(MKTransitDeparturesCell *)self isInactive])
  {
    return 0;
  }

  return self->_cellStyle != 2;
}

- (void)_updateLineImageViewConstraintConstants
{
  cellStyle = self->_cellStyle;
  if (cellStyle < 2)
  {
    image = [(UIImageView *)self->_lineImageView image];
    [image size];
    v6 = v5;

    [(MKTransitDeparturesCell *)self _separatorHeight];
    v8 = v7;
    if (v6 >= 35.0)
    {
      _primaryFont = [objc_opt_class() _primaryFont];
      v10 = _primaryFont;
      if (v6 < 40.0)
      {
        [_primaryFont _mapkit_scaledValueForValue:21.5];
        UIRoundToViewScale();
LABEL_10:
        v15 = v14 - v8;
        [(NSLayoutConstraint *)self->_lineImageViewCenteringVerticalPaddingConstraint setConstant:v15];
        p_lineImageViewToBottomConstraint = &self->_lineImageViewToBottomConstraint;
        [(NSLayoutConstraint *)self->_lineImageViewToBottomConstraint setConstant:v15];
        [(NSLayoutConstraint *)self->_lineImageViewTopConstraint setConstant:v15];

        v13 = 0.0;
        if ([(MKCustomSeparatorCell *)self isSeparatorHidden])
        {
          [(NSLayoutConstraint *)*p_lineImageViewToBottomConstraint constant];
          if (v16 + -8.0 >= 0.0)
          {
            [(NSLayoutConstraint *)*p_lineImageViewToBottomConstraint constant];
            v13 = v17 + -8.0;
          }
        }

        goto LABEL_13;
      }

      v11 = 19.0;
    }

    else
    {
      _primaryFont = [objc_opt_class() _primaryFont];
      v10 = _primaryFont;
      v11 = 23.0;
    }

    [_primaryFont _mapkit_scaledValueForValue:v11];
    goto LABEL_10;
  }

  if (cellStyle != 2)
  {
    return;
  }

  [(NSLayoutConstraint *)self->_lineImageViewTopConstraint setConstant:12.0];
  p_lineImageViewToBottomConstraint = &self->_lineImageViewToBottomConstraint;
  v13 = 8.0;
LABEL_13:
  v18 = *p_lineImageViewToBottomConstraint;

  [(NSLayoutConstraint *)v18 setConstant:v13];
}

- (id)_fontForView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    font = [viewCopy font];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleLabel = [viewCopy titleLabel];
    font = [titleLabel font];
  }

  else
  {
LABEL_7:
    font = 0;
  }

LABEL_8:

  return font;
}

- (double)_baselineSpacingAboveView:(id)view
{
  viewCopy = view;
  v5 = [(MKTransitDeparturesCell *)self _fontForView:viewCopy];
  if (v5)
  {
    if (self->_departureLabel == viewCopy)
    {
      v7 = 3.0;
    }

    else
    {
      incidentButton = self->_incidentButton;
      v7 = 0.0;
      if (incidentButton == viewCopy)
      {
        configuration = [(UIButton *)incidentButton configuration];
        [configuration contentInsets];
        v7 = v9 + 3.0;
      }
    }

    [v5 _scaledValueForValue:v7];
    v12 = v11;
    [v5 _mapkit_lineHeight];
    v10 = v12 + v13;
  }

  else
  {
    v10 = 3.40282347e38;
  }

  return v10;
}

- (void)_updateConstraintValues
{
  v59 = *MEMORY[0x1E69E9840];
  defaultSecondaryFont = [objc_opt_class() defaultSecondaryFont];
  [defaultSecondaryFont _mapkit_lineHeight];
  [(UIStackView *)self->_secondaryTextStackView setSpacing:?];
  useCompressedGutter = [(MKTransitDeparturesCell *)self useCompressedGutter];
  v5 = -12.0;
  if (useCompressedGutter)
  {
    v5 = -8.0;
  }

  [(NSLayoutConstraint *)self->_lineImageToTextGutterConstraint setConstant:v5];
  cellStyle = self->_cellStyle;
  v7 = 23.0;
  if (cellStyle)
  {
    if (cellStyle == 2)
    {
      font = [(_MKUILabel *)self->_primaryLabel font];
      [font _mapkit_lineHeight];
      v13 = v12;
      font2 = [(_MKUILabel *)self->_primaryLabel font];
      [font2 ascender];
      [(NSLayoutConstraint *)self->_primaryToTopConstraint setConstant:-(v13 - v15)];

      arrangedSubviews = [(UIStackView *)self->_secondaryTextStackView arrangedSubviews];
      v17 = [arrangedSubviews count];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __50__MKTransitDeparturesCell__updateConstraintValues__block_invoke;
      v50[3] = &unk_1E76CAAC0;
      selfCopy = self;
      v53 = v17;
      v51 = arrangedSubviews;
      v18 = arrangedSubviews;
      [v18 enumerateObjectsUsingBlock:v50];

      goto LABEL_31;
    }

    if (cellStyle != 1)
    {
      goto LABEL_31;
    }

    [(MKTransitDeparturesCell *)self _labelToTopScaledConstantForFullCenteredCellStyle];
    v9 = v8;
    if (self->_cellStyle == 1)
    {
      [(MKTransitDeparturesCell *)self _labelToBottomScaledConstantForFullCenteredCellStyle];
      v7 = v10;
    }
  }

  else
  {
    v9 = 35.0;
  }

  _primaryFont = [objc_opt_class() _primaryFont];
  [_primaryFont _scaledValueForValue:v9];
  v21 = v20;
  [(MKTransitDeparturesCell *)self _separatorHeight];
  v23 = v21 - v22;
  _primaryFont2 = [objc_opt_class() _primaryFont];
  [_primaryFont2 pointSize];
  [(NSLayoutConstraint *)self->_primaryToTopConstraint setConstant:v23 - v25];

  [defaultSecondaryFont _scaledValueForValue:20.0];
  [(NSLayoutConstraint *)self->_secondaryStackToPrimaryConstraint setConstant:?];
  [defaultSecondaryFont _scaledValueForValue:v7];
  v27 = v26;
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled]&& [(UIStackView *)self->_secondaryTextStackView isHidden])
  {
    v27 = 0.0;
  }

  [(NSLayoutConstraint *)self->_secondaryStackToBottomConstraint setConstant:v27];
  _primaryFont3 = [objc_opt_class() _primaryFont];
  [_primaryFont3 _scaledValueForValue:v7];
  [(NSLayoutConstraint *)self->_primaryToBottomConstraint setConstant:?];

  [objc_opt_class() _maxExpectedDepartureLabelWidth];
  [(NSLayoutConstraint *)self->_minimumDepartureLabelWidthConstraint setConstant:?];
  [(NSLayoutConstraint *)self->_minimumDepartureLabelWidthConstraint setActive:[(MKTransitDeparturesCell *)self _shouldEnforceMinimumDepartureLabelWidth]];
  if ([(MKCustomSeparatorCell *)self isSeparatorHidden])
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = v29;
    if (self->_primaryToBottomConstraint)
    {
      [v29 addObject:?];
    }

    if (self->_secondaryStackToBottomConstraint)
    {
      [v30 addObject:?];
    }

    if (self->_departureStackViewToBottomConstraint)
    {
      [v30 addObject:?];
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v55;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v55 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v54 + 1) + 8 * i);
          [v36 constant];
          v38 = v37 + -8.0;
          v39 = 0.0;
          if (v38 >= 0.0)
          {
            [v36 constant];
            v39 = v40 + -8.0;
          }

          [v36 setConstant:v39];
        }

        v33 = [v31 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v33);
    }
  }

  _departureDetailLabelFont = [objc_opt_class() _departureDetailLabelFont];
  [_departureDetailLabelFont _scaledValueForValue:20.0];
  [(UIStackView *)self->_departureStackView setSpacing:?];

  [(NSLayoutConstraint *)self->_secondaryStackToBottomConstraint constant];
  [(NSLayoutConstraint *)self->_departureStackViewToBottomConstraint setConstant:?];
  [(UIStackView *)self->_secondaryTextStackView setCustomSpacing:self->_primaryLabel afterView:3.40282347e38];
  [(UIStackView *)self->_secondaryTextStackView setCustomSpacing:self->_secondaryLabel afterView:3.40282347e38];
  [(UIStackView *)self->_secondaryTextStackView setCustomSpacing:self->_tertiaryLabel afterView:3.40282347e38];
LABEL_31:
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    image = [(UIImageView *)self->_lineImageView image];
    [image size];
    [(MKTransitDeparturesCell *)self _labelMarginWithLineImageViewWidth:?];
    [(NSLayoutConstraint *)self->_labelLeadingMarginConstraint setConstant:?];
  }

  else
  {
    [(MKTransitDeparturesCell *)self lineImageViewSize];
    [(MKTransitDeparturesCell *)self _labelMarginWithLineImageViewWidth:?];
    [(NSLayoutConstraint *)self->_labelLeadingMarginConstraint setConstant:?];
  }

  [(NSLayoutConstraint *)self->_lineImageToContainerTrailingConstraint setConstant:self->_lineImageCenteringValue];
  if ([(NSLayoutConstraint *)self->_incidentIconHorizontalConstraint isActive])
  {
    v43 = 10.0;
    if (![(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
    {
      image2 = [(UIImageView *)self->_incidentIconImageView image];
      [image2 size];
      v43 = v45;
    }

    image3 = [(UIImageView *)self->_lineImageView image];
    [image3 size];
    v48 = v47;

    v49 = 2.0;
    if (v43 >= v48)
    {
      UIRoundToViewScale();
    }

    [(NSLayoutConstraint *)self->_incidentIconHorizontalConstraint setConstant:v49];
  }

  [(NSLayoutConstraint *)self->_secondaryStackToBottomConstraint setActive:[(MKTransitDeparturesCell *)self _shouldPinSecondaryStackViewToBottom]];
  [(NSLayoutConstraint *)self->_labelToDisclosureArrowConstraint setActive:[(UIImageView *)self->_disclosureArrowImageView isHidden]^ 1];
  [(MKTransitDeparturesCell *)self _updateDepartureDependentConstraintsForCurrentState];
  [(MKTransitDeparturesCell *)self _updateLineImageViewConstraintConstants];
}

void __50__MKTransitDeparturesCell__updateConstraintValues__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3 + 1;
  if (a3 + 1 != *(a1 + 48))
  {
    v9 = v5;
    v7 = 0;
    do
    {
      v8 = v7;
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];

      if (![v7 isHidden])
      {
        break;
      }

      ++v6;
    }

    while (v6 < *(a1 + 48));
    [*(a1 + 40) _baselineSpacingAboveView:v7];
    [*(*(a1 + 40) + 1152) setCustomSpacing:v9 afterView:?];

    v5 = v9;
  }
}

- (id)_constraintsForCellStyle:(unint64_t)style
{
  v214 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contentView = [(MKTransitDeparturesCell *)self contentView];
  bottomAnchor = [contentView bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_lineImageView bottomAnchor];
  v9 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  lineImageViewToBottomConstraint = self->_lineImageViewToBottomConstraint;
  self->_lineImageViewToBottomConstraint = v9;

  [v5 addObject:self->_lineImageViewToBottomConstraint];
  v11 = 0x1E696A000uLL;
  v12 = MEMORY[0x1E696ACD8];
  v13 = _NSDictionaryOfVariableBindings(&cfstr_Lineimageview_0.isa, self->_lineImageView, 0);
  v14 = [v12 constraintsWithVisualFormat:@"V:|[_lineImageView]|" options:0 metrics:0 views:v13];
  [v5 addObjectsFromArray:v14];

  leadingAnchor = [(UIImageView *)self->_lineImageView leadingAnchor];
  superview = [(UIImageView *)self->_lineImageView superview];
  leadingAnchor2 = [superview leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v5 addObject:v18];

  trailingAnchor = [(UIImageView *)self->_lineImageView trailingAnchor];
  superview2 = [(UIImageView *)self->_lineImageView superview];
  trailingAnchor2 = [superview2 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  lineImageToContainerTrailingConstraint = self->_lineImageToContainerTrailingConstraint;
  self->_lineImageToContainerTrailingConstraint = v22;

  v192 = v5;
  [v5 addObject:self->_lineImageToContainerTrailingConstraint];
  contentView2 = [(MKTransitDeparturesCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor3 = [layoutMarginsGuide leadingAnchor];

  contentView3 = [(MKTransitDeparturesCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];

  selfCopy = self;
  if (style > 1)
  {
    departureDependentConstraintsByView = self->_departureDependentConstraintsByView;
    self->_departureDependentConstraintsByView = 0;

    minimumDepartureLabelWidthConstraint = self->_minimumDepartureLabelWidthConstraint;
    self->_minimumDepartureLabelWidthConstraint = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

    v60 = v5;
  }

  else
  {
    styleCopy = style;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    secondaryLabel = self->_secondaryLabel;
    v212[0] = self->_primaryLabel;
    v212[1] = secondaryLabel;
    incidentButton = self->_incidentButton;
    v212[2] = self->_tertiaryLabel;
    v212[3] = incidentButton;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:4];
    v31 = [v30 countByEnumeratingWithState:&v204 objects:v213 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v205;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v205 != v33)
          {
            objc_enumerationMutation(v30);
          }

          trailingAnchor4 = [*(*(&v204 + 1) + 8 * i) trailingAnchor];
          v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];

          LODWORD(v37) = 1148829696;
          [v36 setPriority:v37];
          [v192 addObject:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v204 objects:v213 count:16];
      }

      while (v32);
    }

    widthAnchor = [(_MKUILabel *)selfCopy->_departureLabel widthAnchor];
    isInactive = [(MKTransitDeparturesCell *)selfCopy isInactive];
    v40 = 0.0;
    if (!isInactive)
    {
      [objc_opt_class() _maxExpectedDepartureLabelWidth];
    }

    v41 = [widthAnchor constraintGreaterThanOrEqualToConstant:v40];
    v42 = selfCopy->_minimumDepartureLabelWidthConstraint;
    selfCopy->_minimumDepartureLabelWidthConstraint = v41;

    LODWORD(v43) = 1148829696;
    [(NSLayoutConstraint *)selfCopy->_minimumDepartureLabelWidthConstraint setPriority:v43];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:selfCopy selector:sel__updateConstraintValues name:*MEMORY[0x1E695D8F0] object:0];

    if ([(MKTransitDeparturesCell *)selfCopy _shouldEnforceMinimumDepartureLabelWidth])
    {
      [v192 addObject:selfCopy->_minimumDepartureLabelWidthConstraint];
    }

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v200 = 0u;
    v201 = 0u;
    primaryLabel = selfCopy->_primaryLabel;
    v202 = 0u;
    v203 = 0u;
    v47 = selfCopy->_secondaryLabel;
    tertiaryLabel = selfCopy->_tertiaryLabel;
    v210[0] = primaryLabel;
    v210[1] = v47;
    v49 = selfCopy->_incidentButton;
    v210[2] = tertiaryLabel;
    v210[3] = v49;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:4];
    v51 = [v50 countByEnumeratingWithState:&v200 objects:v211 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v201;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v201 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v200 + 1) + 8 * j);
          leadingAnchor4 = [(UIStackView *)selfCopy->_departureStackView leadingAnchor];
          trailingAnchor5 = [v55 trailingAnchor];
          v58 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:12.0];
          [weakToStrongObjectsMapTable setObject:v58 forKey:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v200 objects:v211 count:16];
      }

      while (v52);
    }

    objc_storeStrong(&selfCopy->_departureDependentConstraintsByView, weakToStrongObjectsMapTable);
    v199 = 0;
    [(MKTransitDeparturesCell *)selfCopy _getDepartureDependentConstraintsToActivate:&v199 toDeactivate:0];
    v59 = v199;
    v60 = v192;
    if ([v59 count])
    {
      [v192 addObjectsFromArray:v59];
    }

    firstBaselineAnchor = [(UIImageView *)selfCopy->_disclosureArrowImageView firstBaselineAnchor];
    firstBaselineAnchor2 = [(UIStackView *)selfCopy->_departureStackView firstBaselineAnchor];
    v63 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:-1.0];
    [v192 addObject:v63];

    trailingAnchor6 = [(UIImageView *)selfCopy->_disclosureArrowImageView trailingAnchor];
    v65 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor3];
    [v192 addObject:v65];

    leadingAnchor5 = [(UIImageView *)selfCopy->_disclosureArrowImageView leadingAnchor];
    trailingAnchor7 = [(UIStackView *)selfCopy->_departureStackView trailingAnchor];
    v68 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor7 constant:4.0];
    labelToDisclosureArrowConstraint = selfCopy->_labelToDisclosureArrowConstraint;
    selfCopy->_labelToDisclosureArrowConstraint = v68;

    if (([(UIImageView *)selfCopy->_disclosureArrowImageView isHidden]& 1) == 0)
    {
      [v192 addObject:selfCopy->_labelToDisclosureArrowConstraint];
    }

    trailingAnchor8 = [(UIStackView *)selfCopy->_departureStackView trailingAnchor];
    v71 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor8 constant:0.0];

    [v192 addObject:v71];
    contentView4 = [(MKTransitDeparturesCell *)selfCopy contentView];
    bottomAnchor3 = [contentView4 bottomAnchor];
    bottomAnchor4 = [(UIStackView *)selfCopy->_departureStackView bottomAnchor];
    v75 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
    departureStackViewToBottomConstraint = selfCopy->_departureStackViewToBottomConstraint;
    selfCopy->_departureStackViewToBottomConstraint = v75;

    [v192 addObject:selfCopy->_departureStackViewToBottomConstraint];
    topAnchor = [(_MKUILabel *)selfCopy->_primaryLabel topAnchor];
    contentView5 = [(MKTransitDeparturesCell *)selfCopy contentView];
    topAnchor2 = [contentView5 topAnchor];
    v80 = [topAnchor constraintEqualToAnchor:topAnchor2];
    primaryToTopConstraint = selfCopy->_primaryToTopConstraint;
    selfCopy->_primaryToTopConstraint = v80;

    [v192 addObject:selfCopy->_primaryToTopConstraint];
    leadingAnchor6 = [(_MKUILabel *)selfCopy->_primaryLabel leadingAnchor];
    v83 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor3];
    labelLeadingMarginConstraint = selfCopy->_labelLeadingMarginConstraint;
    selfCopy->_labelLeadingMarginConstraint = v83;

    [v192 addObject:selfCopy->_labelLeadingMarginConstraint];
    leadingAnchor7 = [(UIStackView *)selfCopy->_secondaryTextStackView leadingAnchor];
    leadingAnchor8 = [(_MKUILabel *)selfCopy->_primaryLabel leadingAnchor];
    v87 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v192 addObject:v87];

    trailingAnchor9 = [(_MKUILabel *)selfCopy->_primaryLabel trailingAnchor];
    v89 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor9 constant:12.0];
    [v192 addObject:v89];

    topAnchor3 = [(UIStackView *)selfCopy->_secondaryTextStackView topAnchor];
    topAnchor4 = [(_MKUILabel *)selfCopy->_departureLabel topAnchor];
    v92 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [v192 addObject:v92];

    trailingAnchor10 = [(UIStackView *)selfCopy->_secondaryTextStackView trailingAnchor];
    v94 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor10 constant:0.0];
    [v192 addObject:v94];

    firstBaselineAnchor3 = [(UIStackView *)selfCopy->_secondaryTextStackView firstBaselineAnchor];
    lastBaselineAnchor = [(_MKUILabel *)selfCopy->_primaryLabel lastBaselineAnchor];
    v97 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:20.0];
    secondaryStackToPrimaryConstraint = selfCopy->_secondaryStackToPrimaryConstraint;
    selfCopy->_secondaryStackToPrimaryConstraint = v97;

    [v192 addObject:selfCopy->_secondaryStackToPrimaryConstraint];
    contentView6 = [(MKTransitDeparturesCell *)selfCopy contentView];
    bottomAnchor5 = [contentView6 bottomAnchor];
    lastBaselineAnchor2 = [(UIStackView *)selfCopy->_secondaryTextStackView lastBaselineAnchor];
    v102 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
    secondaryStackToBottomConstraint = selfCopy->_secondaryStackToBottomConstraint;
    selfCopy->_secondaryStackToBottomConstraint = v102;

    [v192 addObject:selfCopy->_secondaryStackToBottomConstraint];
    contentView7 = [(MKTransitDeparturesCell *)selfCopy contentView];
    bottomAnchor6 = [contentView7 bottomAnchor];
    lastBaselineAnchor3 = [(_MKUILabel *)selfCopy->_primaryLabel lastBaselineAnchor];
    v107 = [bottomAnchor6 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor3];
    primaryToBottomConstraint = selfCopy->_primaryToBottomConstraint;
    selfCopy->_primaryToBottomConstraint = v107;

    [v192 addObject:selfCopy->_primaryToBottomConstraint];
    superview3 = [(UIImageView *)selfCopy->_lineImageView superview];
    trailingAnchor11 = [superview3 trailingAnchor];
    leadingAnchor9 = [(_MKUILabel *)selfCopy->_primaryLabel leadingAnchor];
    v112 = [trailingAnchor11 constraintEqualToAnchor:leadingAnchor9 constant:-12.0];
    lineImageToTextGutterConstraint = selfCopy->_lineImageToTextGutterConstraint;
    selfCopy->_lineImageToTextGutterConstraint = v112;

    LODWORD(v114) = 1148829696;
    [(NSLayoutConstraint *)selfCopy->_lineImageToTextGutterConstraint setPriority:v114];
    [v192 addObject:selfCopy->_lineImageToTextGutterConstraint];

    self = selfCopy;
    style = styleCopy;
    v11 = 0x1E696A000;
  }

  if (style == 2)
  {
    topAnchor5 = [(UIImageView *)self->_lineImageView topAnchor];
    contentView8 = [(MKTransitDeparturesCell *)self contentView];
    topAnchor6 = [contentView8 topAnchor];
    v143 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    lineImageViewTopConstraint = self->_lineImageViewTopConstraint;
    self->_lineImageViewTopConstraint = v143;

    [v60 addObject:self->_lineImageViewTopConstraint];
    topAnchor7 = [(UIStackView *)self->_secondaryTextStackView topAnchor];
    topAnchor8 = [(UIImageView *)self->_lineImageView topAnchor];
    v147 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v148 = self->_primaryToTopConstraint;
    self->_primaryToTopConstraint = v147;

    [v192 addObject:self->_primaryToTopConstraint];
    leadingAnchor10 = [(UIStackView *)self->_secondaryTextStackView leadingAnchor];
    v150 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor3];
    v151 = self->_labelLeadingMarginConstraint;
    self->_labelLeadingMarginConstraint = v150;

    [v192 addObject:self->_labelLeadingMarginConstraint];
    superview4 = [(UIImageView *)self->_lineImageView superview];
    trailingAnchor12 = [superview4 trailingAnchor];
    v154 = v192;
    leadingAnchor11 = [(UIStackView *)self->_secondaryTextStackView leadingAnchor];
    v156 = [trailingAnchor12 constraintEqualToAnchor:leadingAnchor11 constant:-12.0];
    v157 = self->_lineImageToTextGutterConstraint;
    self->_lineImageToTextGutterConstraint = v156;

    LODWORD(v158) = 1148829696;
    [(NSLayoutConstraint *)self->_lineImageToTextGutterConstraint setPriority:v158];
    [v192 addObject:self->_lineImageToTextGutterConstraint];
    firstBaselineAnchor4 = [(UIImageView *)self->_disclosureArrowImageView firstBaselineAnchor];
    firstBaselineAnchor5 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
    v161 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:-1.0];
    [v192 addObject:v161];

    trailingAnchor13 = [(UIImageView *)self->_disclosureArrowImageView trailingAnchor];
    v163 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor3];
    [v192 addObject:v163];

    v197 = 0u;
    v198 = 0u;
    v164 = self->_primaryLabel;
    v195 = 0u;
    v196 = 0u;
    v165 = self->_secondaryLabel;
    v208[0] = v164;
    v208[1] = v165;
    departureLabel = self->_departureLabel;
    v208[2] = self->_tertiaryLabel;
    v208[3] = departureLabel;
    v208[4] = self->_departureDetailLabel;
    v167 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:5];
    v168 = [v167 countByEnumeratingWithState:&v195 objects:v209 count:16];
    if (v168)
    {
      v169 = v168;
      v170 = *v196;
      do
      {
        for (k = 0; k != v169; ++k)
        {
          if (*v196 != v170)
          {
            objc_enumerationMutation(v167);
          }

          v172 = *(*(&v195 + 1) + 8 * k);
          if (v172 == self->_primaryLabel && (disclosureArrowImageView = self->_disclosureArrowImageView) != 0)
          {
            leadingAnchor12 = [(UIImageView *)disclosureArrowImageView leadingAnchor];
            trailingAnchor14 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
            v177 = [leadingAnchor12 constraintEqualToAnchor:trailingAnchor14 constant:4.0];
            v178 = selfCopy->_labelToDisclosureArrowConstraint;
            selfCopy->_labelToDisclosureArrowConstraint = v177;

            self = selfCopy;
            v154 = v192;
            [v192 addObject:selfCopy->_labelToDisclosureArrowConstraint];
            v173 = 1148829696;
          }

          else
          {
            v173 = 1148846080;
          }

          trailingAnchor15 = [(_MKUILabel *)v172 trailingAnchor];
          v180 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor15];

          LODWORD(v181) = v173;
          [v180 setPriority:v181];
          [v154 addObject:v180];
        }

        v169 = [v167 countByEnumeratingWithState:&v195 objects:v209 count:16];
      }

      while (v169);
    }

    trailingAnchor16 = [(UIStackView *)self->_secondaryTextStackView trailingAnchor];
    v183 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor16];
    [v154 addObject:v183];

    contentView9 = [(MKTransitDeparturesCell *)self contentView];
    bottomAnchor7 = [contentView9 bottomAnchor];
    bottomAnchor8 = [(UIStackView *)self->_secondaryTextStackView bottomAnchor];
    v187 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8 constant:8.0];
    [v192 addObject:v187];

    v60 = v192;
  }

  else
  {
    if (style == 1)
    {
      topAnchor9 = [(UIStackView *)self->_departureStackView topAnchor];
      topAnchor10 = [(_MKUILabel *)self->_primaryLabel topAnchor];
      v130 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
      departureStackViewTopToPrimaryTopConstraint = self->_departureStackViewTopToPrimaryTopConstraint;
      self->_departureStackViewTopToPrimaryTopConstraint = v130;

      [v60 addObject:self->_departureStackViewTopToPrimaryTopConstraint];
      v132 = *(v11 + 3288);
      lineImageView = self->_lineImageView;
      contentView10 = [(MKTransitDeparturesCell *)self contentView];
      v135 = [v132 constraintWithItem:lineImageView attribute:20 relatedBy:0 toItem:contentView10 attribute:20 multiplier:1.0 constant:0.0];
      lineImageViewCenteringConstraint = self->_lineImageViewCenteringConstraint;
      self->_lineImageViewCenteringConstraint = v135;

      [v60 addObject:self->_lineImageViewCenteringConstraint];
      topAnchor11 = [(UIImageView *)self->_lineImageView topAnchor];
      contentView11 = [(MKTransitDeparturesCell *)self contentView];
      topAnchor12 = [contentView11 topAnchor];
      v138 = [topAnchor11 constraintGreaterThanOrEqualToAnchor:topAnchor12];
      v126 = 1256;
      lineImageViewCenteringVerticalPaddingConstraint = self->_lineImageViewCenteringVerticalPaddingConstraint;
      self->_lineImageViewCenteringVerticalPaddingConstraint = v138;
    }

    else
    {
      if (style)
      {
        goto LABEL_44;
      }

      topAnchor13 = [(UIImageView *)self->_lineImageView topAnchor];
      contentView12 = [(MKTransitDeparturesCell *)self contentView];
      topAnchor14 = [contentView12 topAnchor];
      v121 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
      v122 = self->_lineImageViewTopConstraint;
      self->_lineImageViewTopConstraint = v121;

      [v60 addObject:self->_lineImageViewTopConstraint];
      topAnchor11 = [(UIStackView *)self->_departureStackView topAnchor];
      contentView11 = [(_MKUILabel *)self->_primaryLabel topAnchor];
      v125 = [topAnchor11 constraintEqualToAnchor:contentView11];
      v126 = 1240;
      v127 = self->_departureStackViewTopToPrimaryTopConstraint;
      self->_departureStackViewTopToPrimaryTopConstraint = v125;
    }

    [v60 addObject:*(&self->super.super.super.super.super.super.isa + v126)];
  }

LABEL_44:
  v188 = [v60 copy];

  return v188;
}

- (void)_setCellStyle:(unint64_t)style
{
  v33[3] = *MEMORY[0x1E69E9840];
  self->_cellStyle = style;
  if (style >= 2)
  {
    if (style == 2)
    {
      [(_MKUILabel *)self->_primaryLabel removeFromSuperview];
      [(_MKUILabel *)self->_departureLabel setTextAlignment:4];
      [(_MKUILabel *)self->_departureDetailLabel setTextAlignment:4];
      LODWORD(v16) = 1148829696;
      [(UIView *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v16];
      LODWORD(v17) = 1148829696;
      [(UIView *)self->_secondaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v17];
      LODWORD(v18) = 1148829696;
      [(UIView *)self->_tertiaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v18];
      LODWORD(v19) = 1148829696;
      [(UIView *)self->_departureLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v19];
      LODWORD(v20) = 1148829696;
      [(UIView *)self->_departureDetailLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v20];
      LODWORD(v21) = 1148829696;
      [(UIView *)self->_primaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v21];
      LODWORD(v22) = 1148846080;
      [(UIView *)self->_secondaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v22];
      LODWORD(v23) = 1148846080;
      [(UIView *)self->_tertiaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v23];
      LODWORD(v24) = 1148846080;
      [(UIView *)self->_departureLabel _mapkit_setContentHuggingPriority:1 forAxis:v24];
      LODWORD(v25) = 1148846080;
      [(UIView *)self->_departureDetailLabel _mapkit_setContentHuggingPriority:1 forAxis:v25];
      secondaryTextStackView = self->_secondaryTextStackView;
      secondaryLabel = self->_secondaryLabel;
      v31[0] = self->_primaryLabel;
      v31[1] = secondaryLabel;
      departureDetailLabel = self->_departureDetailLabel;
      v31[2] = self->_departureLabel;
      v31[3] = departureDetailLabel;
      incidentButton = self->_incidentButton;
      v31[4] = self->_tertiaryLabel;
      v31[5] = incidentButton;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
      [(UIStackView *)secondaryTextStackView _mapkit_setArrangedSubviews:v30];

      [(UIStackView *)self->_departureStackView _mapkit_setArrangedSubviews:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    contentView = [(MKTransitDeparturesCell *)self contentView];
    [contentView addSubview:self->_primaryLabel];

    if (MKApplicationLayoutDirectionIsRightToLeft())
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }

    [(_MKUILabel *)self->_departureLabel setTextAlignment:v5];
    [(_MKUILabel *)self->_departureDetailLabel setTextAlignment:[(_MKUILabel *)self->_departureLabel textAlignment]];
    v6 = self->_secondaryTextStackView;
    tertiaryLabel = self->_tertiaryLabel;
    v33[0] = self->_secondaryLabel;
    v33[1] = tertiaryLabel;
    v33[2] = self->_incidentButton;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
    [(UIStackView *)v6 _mapkit_setArrangedSubviews:v8];

    departureStackView = self->_departureStackView;
    v10 = self->_departureDetailLabel;
    v32[0] = self->_departureLabel;
    v32[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    [(UIStackView *)departureStackView _mapkit_setArrangedSubviews:v11];

    LODWORD(v12) = 1132068864;
    [(UIView *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1132068864;
    [(UIView *)self->_secondaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v13];
    LODWORD(v14) = 1132068864;
    [(UIView *)self->_tertiaryLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148829696;
    [(UIStackView *)self->_secondaryTextStackView _mapkit_setContentCompressionResistancePriority:1 forAxis:v15];
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (unint64_t)_bestCellStyleForCurrentState
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = 2;
    goto LABEL_11;
  }

  text = [(MKMultiPartLabel *)self->_secondaryLabel text];
  if ([text length])
  {
    goto LABEL_6;
  }

  text2 = [(MKMultiPartLabel *)self->_tertiaryLabel text];
  if ([text2 length])
  {

LABEL_6:
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  isHidden = [(UIButton *)self->_incidentButton isHidden];

  if (!isHidden)
  {
    goto LABEL_7;
  }

  [(_MKUILabel *)self->_primaryLabel bounds];
  v14 = v13;
  [(_MKUILabel *)self->_primaryLabel textRectForBounds:0 limitedToNumberOfLines:0.0, 0.0];
  v16 = v15;
  [(_MKUILabel *)self->_primaryLabel textRectForBounds:1 limitedToNumberOfLines:0.0, 0.0, v14, 1.79769313e308];
  v8 = v16 == v17;
LABEL_8:
  attributedText = [(_MKUILabel *)self->_departureDetailLabel attributedText];
  v10 = [attributedText length];

  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v5 = v8;
  }

LABEL_11:

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  cellStyle = self->_cellStyle;
  _bestCellStyleForCurrentState = [(MKTransitDeparturesCell *)self _bestCellStyleForCurrentState];
  if (_bestCellStyleForCurrentState != cellStyle)
  {
    [(MKTransitDeparturesCell *)self _setCellStyle:_bestCellStyleForCurrentState];
    [(UIView *)self _mapkit_updateConstraintsIfNeeded];
  }

  v16.receiver = self;
  v16.super_class = MKTransitDeparturesCell;
  *&v12 = priority;
  *&v13 = fittingPriority;
  [(MKTransitDeparturesCell *)&v16 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v12, v13];
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)_contentSizeCategoryDidChange
{
  v3 = sPrimaryLabelFont;
  sPrimaryLabelFont = 0;

  v4 = sDepartureLabelFont;
  sDepartureLabelFont = 0;

  v5 = sStrongSecondaryFont;
  sStrongSecondaryFont = 0;

  v6 = sDefaultSecondaryFont;
  sDefaultSecondaryFont = 0;

  v7 = sDepartureLabelFont;
  sDepartureLabelFont = 0;

  v8 = sDepartureDetailLabelFont;
  sDepartureDetailLabelFont = 0;

  [(MKTransitDeparturesCell *)self _updateLabelFonts];

  [(MKTransitDeparturesCell *)self _updateConstraintValues];
}

- (void)setUseMultilineDeparturesLabel:(BOOL)label
{
  if (self->_useMultilineDeparturesLabel != label)
  {
    self->_useMultilineDeparturesLabel = label;
    [(_MKUILabel *)self->_departureLabel setNumberOfLines:!label];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v6 layoutSubviews];
  contentView = [(MKTransitDeparturesCell *)self contentView];
  [contentView layoutSubviews];

  _bestCellStyleForCurrentState = [(MKTransitDeparturesCell *)self _bestCellStyleForCurrentState];
  if (_bestCellStyleForCurrentState != self->_cellStyle)
  {
    [(MKTransitDeparturesCell *)self _setCellStyle:_bestCellStyleForCurrentState];
    [(MKTransitDeparturesCell *)self updateConstraints];
    v5.receiver = self;
    v5.super_class = MKTransitDeparturesCell;
    [(MKTransitDeparturesCell *)&v5 layoutSubviews];
  }
}

- (void)updateConstraints
{
  constraintsByCellStyle = self->_constraintsByCellStyle;
  if (!constraintsByCellStyle)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v5 = self->_constraintsByCellStyle;
    self->_constraintsByCellStyle = v4;

    constraintsByCellStyle = self->_constraintsByCellStyle;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cellStyle];
  v7 = [(NSMutableDictionary *)constraintsByCellStyle objectForKeyedSubscript:v6];

  currentCellStyleConstraints = self->_currentCellStyleConstraints;
  if (v7)
  {
    v9 = v7 == currentCellStyleConstraints;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    if (currentCellStyleConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      v10 = self->_currentCellStyleConstraints;
      self->_currentCellStyleConstraints = 0;
    }

    if (!v7)
    {
      [(NSMutableDictionary *)self->_constraintsByCellStyle removeAllObjects];
      v7 = [(MKTransitDeparturesCell *)self _constraintsForCellStyle:self->_cellStyle];
      v11 = self->_constraintsByCellStyle;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cellStyle];
      [(NSMutableDictionary *)v11 setObject:v7 forKeyedSubscript:v12];
    }

    objc_storeStrong(&self->_currentCellStyleConstraints, v7);
    [MEMORY[0x1E696ACD8] activateConstraints:v7];
  }

  [(MKTransitDeparturesCell *)self _updateConstraintValues];
  v13.receiver = self;
  v13.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v13 updateConstraints];
}

- (void)_commonInit
{
  v101[1] = *MEMORY[0x1E69E9840];
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    contentView = [(MKTransitDeparturesCell *)self contentView];
    [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];
  }

  else
  {
    LODWORD(v3) = 1148846080;
    [(UIImageView *)self->_lineImageView _mapkit_setContentCompressionResistancePriority:1 forAxis:v3];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [(MKTransitDeparturesCell *)self setAccessibilityIdentifier:v7];

  v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  lineImageView = self->_lineImageView;
  self->_lineImageView = v8;

  [(UIImageView *)self->_lineImageView setAccessibilityIdentifier:@"LineImageView"];
  _newStationCardUIEnabled = [(MKTransitDeparturesCell *)self _newStationCardUIEnabled];
  v11 = self->_lineImageView;
  if (_newStationCardUIEnabled)
  {
    heightAnchor = [(UIImageView *)v11 heightAnchor];
    v13 = [heightAnchor constraintEqualToConstant:24.0];
    lineImageViewHeightConstraint = self->_lineImageViewHeightConstraint;
    self->_lineImageViewHeightConstraint = v13;

    LODWORD(v15) = 1144750080;
    [(NSLayoutConstraint *)self->_lineImageViewHeightConstraint setPriority:v15];
    [(NSLayoutConstraint *)self->_lineImageViewHeightConstraint setActive:0];
    v11 = self->_lineImageView;
    v16 = 1;
  }

  else
  {
    v16 = 4;
  }

  [(UIImageView *)v11 setContentMode:v16];
  mk_theme = [(UIView *)self mk_theme];
  lightTextColor = [mk_theme lightTextColor];
  [(UIImageView *)self->_lineImageView setTintColor:lightTextColor];

  v19 = objc_alloc_init(_MKUILabel);
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v19;

  [(_MKUILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(_MKUILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_primaryLabel setTextAlignment:4];
  [(_MKUILabel *)self->_primaryLabel set_mapkit_themeColorProvider:&__block_literal_global_36244];
  LODWORD(v21) = 1148846080;
  [(UIView *)self->_primaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v21];
  LODWORD(v22) = 1132068864;
  [(UIView *)self->_primaryLabel _mapkit_setContentHuggingPriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [(UIView *)self->_primaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v23];
  contentView2 = [(MKTransitDeparturesCell *)self contentView];
  [contentView2 addSubview:self->_primaryLabel];

  v25 = objc_alloc_init(MKThemeMultiPartLabel);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v25;

  [(MKThemeMultiPartLabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  [(MKThemeMultiPartLabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMultiPartLabel *)self->_secondaryLabel setTextAlignment:4];
  v27 = *MEMORY[0x1E69DDCE0];
  v28 = *(MEMORY[0x1E69DDCE0] + 8);
  v29 = *(MEMORY[0x1E69DDCE0] + 16);
  v30 = *(MEMORY[0x1E69DDCE0] + 24);
  [(MKMultiPartLabel *)self->_secondaryLabel setTextInset:*MEMORY[0x1E69DDCE0], v28, v29, v30];
  [(MKThemeMultiPartLabel *)self->_secondaryLabel set_mapkit_themeColorProvider:&__block_literal_global_19_36246];
  LODWORD(v31) = 1148846080;
  [(UIView *)self->_secondaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v31];
  LODWORD(v32) = 1132068864;
  [(UIView *)self->_secondaryLabel _mapkit_setContentHuggingPriority:0 forAxis:v32];
  LODWORD(v33) = 1144750080;
  [(UIView *)self->_secondaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v33];
  v34 = objc_alloc_init(MKThemeMultiPartLabel);
  tertiaryLabel = self->_tertiaryLabel;
  self->_tertiaryLabel = v34;

  [(MKThemeMultiPartLabel *)self->_tertiaryLabel setAccessibilityIdentifier:@"TertiaryLabel"];
  [(MKThemeMultiPartLabel *)self->_tertiaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMultiPartLabel *)self->_tertiaryLabel setTextAlignment:4];
  [(MKMultiPartLabel *)self->_tertiaryLabel setTextInset:v27, v28, v29, v30];
  [(MKThemeMultiPartLabel *)self->_tertiaryLabel set_mapkit_themeColorProvider:&__block_literal_global_24];
  LODWORD(v36) = 1148846080;
  [(UIView *)self->_tertiaryLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v36];
  LODWORD(v37) = 1132068864;
  [(UIView *)self->_tertiaryLabel _mapkit_setContentHuggingPriority:0 forAxis:v37];
  LODWORD(v38) = 1144750080;
  [(UIView *)self->_tertiaryLabel _mapkit_setContentHuggingPriority:1 forAxis:v38];
  [(MKThemeMultiPartLabel *)self->_tertiaryLabel setHidden:1];
  v39 = objc_alloc_init(_MKUILabel);
  departureLabel = self->_departureLabel;
  self->_departureLabel = v39;

  [(_MKUILabel *)self->_departureLabel setAccessibilityIdentifier:@"DepartureLabel"];
  [(_MKUILabel *)self->_departureLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_departureLabel set_mapkit_themeColorProvider:&__block_literal_global_29];
  LODWORD(v41) = 1148846080;
  [(UIView *)self->_departureLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v41];
  v42 = objc_alloc_init(_MKUILabel);
  departureDetailLabel = self->_departureDetailLabel;
  self->_departureDetailLabel = v42;

  [(_MKUILabel *)self->_departureDetailLabel setAccessibilityIdentifier:@"DepartureDetailLabel"];
  [(_MKUILabel *)self->_departureDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)self->_departureDetailLabel setHidden:1];
  LODWORD(v44) = 1148846080;
  [(UIView *)self->_departureDetailLabel _mapkit_setContentCompressionResistancePriority:1 forAxis:v44];
  LODWORD(v45) = 1148846080;
  [(UIView *)self->_departureLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1148846080;
  [(UIView *)self->_departureDetailLabel _mapkit_setContentCompressionResistancePriority:0 forAxis:v46];
  v47 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v47 setAccessibilityIdentifier:@"LineImageContainer"];
  [(UIImageView *)self->_lineImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 addSubview:self->_lineImageView];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(MKTransitDeparturesCell *)self contentView];
  v99 = v47;
  [contentView3 addSubview:v47];

  v49 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  v50 = MEMORY[0x1E69DB878];
  v51 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
  v100 = *MEMORY[0x1E69DB990];
  v52 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v101[0] = v52;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
  v54 = [v51 fontDescriptorByAddingAttributes:v53];
  v55 = [v50 fontWithDescriptor:v54 size:0.0];

  v98 = v55;
  v56 = [MEMORY[0x1E69DCAD8] configurationWithFont:v55];
  v57 = [v49 imageWithConfiguration:v56];

  v58 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v57];
  disclosureArrowImageView = self->_disclosureArrowImageView;
  self->_disclosureArrowImageView = v58;

  [(UIImageView *)self->_disclosureArrowImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)self->_disclosureArrowImageView setTintColor:tertiaryLabelColor];

  LODWORD(v61) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentCompressionResistancePriority:1 forAxis:v61];
  LODWORD(v62) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentCompressionResistancePriority:0 forAxis:v62];
  LODWORD(v63) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentHuggingPriority:1 forAxis:v63];
  LODWORD(v64) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentHuggingPriority:0 forAxis:v64];
  contentView4 = [(MKTransitDeparturesCell *)self contentView];
  [contentView4 addSubview:self->_disclosureArrowImageView];

  [(_MKUILabel *)self->_primaryLabel setAccessibilityElementsHidden:1];
  [(MKThemeMultiPartLabel *)self->_secondaryLabel setAccessibilityElementsHidden:1];
  [(MKThemeMultiPartLabel *)self->_tertiaryLabel setAccessibilityElementsHidden:1];
  [(_MKUILabel *)self->_departureLabel setAccessibilityElementsHidden:1];
  [(_MKUILabel *)self->_departureDetailLabel setAccessibilityElementsHidden:1];
  [(_MKUILabel *)self->_primaryLabel setNumberOfLines:0];
  [(MKMultiPartLabel *)self->_secondaryLabel setNumberOfLines:0];
  [(MKMultiPartLabel *)self->_tertiaryLabel setNumberOfLines:0];
  v66 = objc_alloc(MEMORY[0x1E69DCF90]);
  v67 = MEMORY[0x1E695E0F0];
  v68 = [v66 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  secondaryTextStackView = self->_secondaryTextStackView;
  self->_secondaryTextStackView = v68;

  [(UIStackView *)self->_secondaryTextStackView setAccessibilityIdentifier:@"SecondaryTextStackView"];
  [(UIStackView *)self->_secondaryTextStackView setBaselineRelativeArrangement:1];
  [(UIStackView *)self->_secondaryTextStackView setAlignment:1];
  v70 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v67];
  departureStackView = self->_departureStackView;
  self->_departureStackView = v70;

  [(UIStackView *)self->_departureStackView setAccessibilityIdentifier:@"DepartureStackView"];
  [(UIStackView *)self->_departureStackView setBaselineRelativeArrangement:1];
  [(UIStackView *)self->_departureStackView setAlignment:4];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration contentInsets];
  v74 = v73;
  [plainButtonConfiguration contentInsets];
  [plainButtonConfiguration setContentInsets:{v74, 0.0}];
  v75 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  incidentButton = self->_incidentButton;
  self->_incidentButton = v75;

  traitCollection = [(MKTransitDeparturesCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    [(UIButton *)self->_incidentButton setPreferredBehavioralStyle:1];
    v79 = self->_incidentButton;
    tintColor = [(MKTransitDeparturesCell *)self tintColor];
    [(UIButton *)v79 setTitleColor:tintColor forState:0];
  }

  defaultSecondaryFont = [objc_opt_class() defaultSecondaryFont];
  titleLabel = [(UIButton *)self->_incidentButton titleLabel];
  [titleLabel setFont:defaultSecondaryFont];

  if ([MEMORY[0x1E696AAE8] _navigation_isRunningInSiri])
  {
    [(UIButton *)self->_incidentButton setEnabled:0];
    v83 = self->_incidentButton;
    mk_theme2 = [(UIView *)self mk_theme];
    lightTextColor2 = [mk_theme2 lightTextColor];
    [(UIButton *)v83 setTitleColor:lightTextColor2 forState:2];
  }

  titleLabel2 = [(UIButton *)self->_incidentButton titleLabel];
  [titleLabel2 setNumberOfLines:2];

  titleLabel3 = [(UIButton *)self->_incidentButton titleLabel];
  [titleLabel3 setLineBreakMode:4];

  titleLabel4 = [(UIButton *)self->_incidentButton titleLabel];
  [titleLabel4 setTextAlignment:4];

  [(UIButton *)self->_incidentButton setContentHorizontalAlignment:4];
  [(UIButton *)self->_incidentButton addTarget:self action:sel__incidentButtonPressed forControlEvents:64];
  [(UIStackView *)self->_secondaryTextStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_secondaryTextStackView set_mk_axis:1];
  [(UIStackView *)self->_secondaryTextStackView setDistribution:0];
  contentView5 = [(MKTransitDeparturesCell *)self contentView];
  [contentView5 addSubview:self->_secondaryTextStackView];

  [(UIStackView *)self->_departureStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_departureStackView set_mk_axis:1];
  [(UIStackView *)self->_departureStackView setDistribution:0];
  contentView6 = [(MKTransitDeparturesCell *)self contentView];
  [contentView6 addSubview:self->_departureStackView];

  LODWORD(v91) = 1148813312;
  [(UIStackView *)self->_secondaryTextStackView _mapkit_setContentCompressionResistancePriority:0 forAxis:v91];
  LODWORD(v92) = 1148829696;
  [(UIStackView *)self->_secondaryTextStackView _mapkit_setContentCompressionResistancePriority:1 forAxis:v92];
  LODWORD(v93) = 1148846080;
  [(UIStackView *)self->_secondaryTextStackView _mapkit_setContentHuggingPriority:1 forAxis:v93];
  LODWORD(v94) = 1132068864;
  [(UIStackView *)self->_secondaryTextStackView _mapkit_setContentHuggingPriority:0 forAxis:v94];
  LODWORD(v95) = 1148846080;
  [(UIStackView *)self->_departureStackView _mapkit_setContentCompressionResistancePriority:1 forAxis:v95];
  LODWORD(v96) = 1148846080;
  [(UIStackView *)self->_departureStackView _mapkit_setContentCompressionResistancePriority:0 forAxis:v96];
  [(UIButton *)self->_incidentButton setHidden:1];
  -[UIButton setEnabled:](self->_incidentButton, "setEnabled:", [MEMORY[0x1E696AAE8] _navigation_isRunningInSiri] ^ 1);
  [(UIButton *)self->_incidentButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKTransitDeparturesCell *)self setSeparatorHidden:0];
  [(MKTransitDeparturesCell *)self setUseCompressedGutter:0];
  [(MKTransitDeparturesCell *)self setUseCompressedLeading:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MKTransitDeparturesCell *)self _updateLabelFonts];
  [(MKTransitDeparturesCell *)self _setCellStyle:0];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v8 setHighlighted:highlighted animated:animated];
  if (highlightedCopy)
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v6 = ;
  contentView = [(MKTransitDeparturesCell *)self contentView];
  [contentView setBackgroundColor:v6];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v8 setSelected:selected animated:animated];
  if (selectedCopy)
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v6 = ;
  contentView = [(MKTransitDeparturesCell *)self contentView];
  [contentView setBackgroundColor:v6];
}

- (void)setInactive:(BOOL)inactive
{
  if (self->_inactive != inactive)
  {
    self->_inactive = inactive;
    if (inactive)
    {
      textColor = [(MKMultiPartLabel *)self->_secondaryLabel textColor];
      [(_MKUILabel *)self->_primaryLabel setTextColor:textColor];
    }

    else
    {
      textColor = [(UIView *)self mk_theme];
      v5TextColor = [textColor textColor];
      [(_MKUILabel *)self->_primaryLabel setTextColor:v5TextColor];
    }

    [(MKTransitDeparturesCell *)self _updateConstraintValues];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v4 dealloc];
}

- (MKTransitDeparturesCell)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = MKTransitDeparturesCell;
  v3 = [(MKCustomSeparatorCell *)&v6 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(MKTransitDeparturesCell *)v3 _commonInit];
  }

  return v4;
}

+ (id)_primaryFont
{
  v2 = sPrimaryLabelFont;
  if (!sPrimaryLabelFont)
  {
    v3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
    v4 = sPrimaryLabelFont;
    sPrimaryLabelFont = v3;

    v2 = sPrimaryLabelFont;
  }

  return v2;
}

+ (id)_departureDetailLabelFont
{
  v2 = sDepartureDetailLabelFont;
  if (!sDepartureDetailLabelFont)
  {
    v3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleTimeDisplayInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0];
    v4 = sDepartureDetailLabelFont;
    sDepartureDetailLabelFont = v3;

    v2 = sDepartureDetailLabelFont;
  }

  return v2;
}

+ (id)_departureLabelFont
{
  v2 = sDepartureLabelFont;
  if (!sDepartureLabelFont)
  {
    v3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0];
    v4 = sDepartureLabelFont;
    sDepartureLabelFont = v3;

    v2 = sDepartureLabelFont;
  }

  return v2;
}

+ (id)defaultSecondaryFont
{
  v2 = sDefaultSecondaryFont;
  if (!sDefaultSecondaryFont)
  {
    v3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:0x8000];
    v4 = sDefaultSecondaryFont;
    sDefaultSecondaryFont = v3;

    v2 = sDefaultSecondaryFont;
  }

  return v2;
}

+ (id)strongSecondaryFont
{
  v2 = sStrongSecondaryFont;
  if (!sStrongSecondaryFont)
  {
    v3 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] addingSymbolicTraits:32770];
    v4 = sStrongSecondaryFont;
    sStrongSecondaryFont = v3;

    v2 = sStrongSecondaryFont;
  }

  return v2;
}

+ (void)useCompressedGutter:(BOOL *)gutter compressedLeading:(BOOL *)leading forImageWidth:(double)width inWidth:(double)inWidth
{
  gutterCopy = leading;
  if (gutter)
  {
    *gutter = 0;
  }

  if (leading)
  {
    *leading = 0;
  }

  [objc_opt_class() _minTextWidth];
  v11 = inWidth - v10 - width;
  if (v11 + -12.0 < 0.0)
  {
    if (v11 + -8.0 >= 0.0)
    {
      gutterCopy = gutter;
      if (!gutter)
      {
        return;
      }
    }

    else
    {
      if (gutter)
      {
        *gutter = 1;
      }

      if (!gutterCopy)
      {
        return;
      }
    }

    *gutterCopy = 1;
  }
}

+ (double)_maxExpectedDepartureLabelWidth
{
  if ([self _needsUpdateMaxLabelWidths])
  {
    [self _calculateMaxLabelWidths];
  }

  return *&sMaxDepartureLabelWidth;
}

+ (void)_calculateMaxLabelWidths
{
  v40[2] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  v40[0] = date;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*MEMORY[0x1E69A27E8]];
  v40[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  date2 = [MEMORY[0x1E695DF00] date];
  v7 = [self _attributedStringForCountdownDepartures:v5 referenceDate:date2 isShowingNoConnectionEmDash:1];

  v33 = v7;
  string = [v7 string];
  v9 = *MEMORY[0x1E69DB648];
  v38 = *MEMORY[0x1E69DB648];
  _departureLabelFont = [self _departureLabelFont];
  v39 = _departureLabelFont;
  v11 = 0x1E695D000uLL;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [string sizeWithAttributes:v12];
  v14 = v13;

  date3 = [MEMORY[0x1E695DF00] date];
  v16 = [self _stringFromTimestampDate:date3 departureTimeZone:0];
  v17 = 0;
  v18 = 0.0;
  while (1)
  {

    if (v17 > 5 || ((1 << v17) & 0x35) == 0)
    {
      break;
    }

    date3 = [MEMORY[0x1E696AEC0] _navigation_formattedDescriptionForLiveStatus:v17 updatedDepartureTimeString:v16];
    if (date3)
    {
      v36 = v9;
      _departureDetailLabelFont = [self _departureDetailLabelFont];
      v37 = _departureDetailLabelFont;
      v20 = [*(v11 + 3872) dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [date3 sizeWithAttributes:v20];
      if (v18 <= v21)
      {
        v34 = v9;
        _departureDetailLabelFont2 = [self _departureDetailLabelFont];
        v35 = _departureDetailLabelFont2;
        [*(v11 + 3872) dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = v23 = v11;
        [date3 sizeWithAttributes:v24];
        v18 = v25;

        v11 = v23;
      }
    }

    ++v17;
  }

  if (v14 <= v18)
  {
    *&v26 = v18;
  }

  else
  {
    *&v26 = v14;
  }

  sMaxDepartureLabelWidth = v26;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v28 = sLastMaxLabelWidthUpdateLocale;
  sLastMaxLabelWidthUpdateLocale = currentLocale;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v31 = [preferredContentSizeCategory copy];
  v32 = sLastMaxLabelWidthUpdateContentSizeCategory;
  sLastMaxLabelWidthUpdateContentSizeCategory = v31;
}

+ (BOOL)_needsUpdateMaxLabelWidths
{
  v2 = sLastMaxLabelWidthUpdateLocale;
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  if ([v2 isEqual:currentLocale])
  {
    v4 = sLastMaxLabelWidthUpdateContentSizeCategory;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    v7 = [v4 isEqualToString:preferredContentSizeCategory] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (double)maxLineImageWidthforWidth:(double)width
{
  result = width * 0.150000006;
  if (result < 22.0)
  {
    return 22.0;
  }

  return result;
}

+ (void)_addEmDashAttributes:(id)attributes
{
  attributesCopy = attributes;
  string = [attributesCopy string];
  v4 = [string rangeOfString:@"—"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = v5;
    v8 = *MEMORY[0x1E69DB650];
    v9 = +[MKInfoCardThemeManager currentTheme];
    lightTextColor = [v9 lightTextColor];
    [attributesCopy addAttribute:v8 value:lightTextColor range:{v6, v7}];
  }
}

+ (void)_enumerateMinutesUntilDepartureDates:(id)dates withReferenceDate:(id)date block:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  dateCopy = date;
  blockCopy = block;
  if (blockCopy)
  {
    v23 = 0;
    if (!dateCopy)
    {
      dateCopy = [MEMORY[0x1E695DF00] date];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = datesCopy;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
LABEL_6:
      v14 = 0;
      while (1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        [v15 timeIntervalSinceDate:{dateCopy, v19}];
        v17 = v16;
        if ((GEOTransitDepartureIsImminentDepartureTimeInterval() & 1) != 0 || v17 < -59)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17 / 60;
        }

        blockCopy[2](blockCopy, v15, v18, &v23);
        if (v23)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v12)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

+ (id)displayableCountdowDepartureDatesFromDates:(id)dates withReferenceDate:(id)date
{
  datesCopy = dates;
  dateCopy = date;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__MKTransitDeparturesCell_displayableCountdowDepartureDatesFromDates_withReferenceDate___block_invoke;
  v11[3] = &unk_1E76CAB38;
  v13 = v15;
  v9 = v8;
  v12 = v9;
  v14 = 2;
  [self _enumerateMinutesUntilDepartureDates:datesCopy withReferenceDate:dateCopy block:v11];

  _Block_object_dispose(v15, 8);

  return v9;
}

void __88__MKTransitDeparturesCell_displayableCountdowDepartureDatesFromDates_withReferenceDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v9 = v7;
  if (!a3)
  {
    v8 = *(*(a1 + 40) + 8);
    if (*(v8 + 24))
    {
      goto LABEL_5;
    }

    *(v8 + 24) = 1;
  }

  [*(a1 + 32) addObject:v7];
LABEL_5:
  if ([*(a1 + 32) count] == *(a1 + 48))
  {
    *a4 = 1;
  }
}

+ (id)_attributedStringForCountdownDepartures:(id)departures referenceDate:(id)date isShowingNoConnectionEmDash:(BOOL)dash
{
  dashCopy = dash;
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E69DB648];
  dateCopy = date;
  departuresCopy = departures;
  _departureLabelFont = [self _departureLabelFont];
  v17[0] = _departureLabelFont;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v12 = [self _stringForCountdownDepartures:departuresCopy referenceDate:dateCopy isShowingNoConnectionEmDash:dashCopy];

  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:v11];
  [self _addEmDashAttributes:v13];
  v14 = [v13 copy];

  return v14;
}

+ (id)_stringForCountdownDepartures:(id)departures referenceDate:(id)date isShowingNoConnectionEmDash:(BOOL)dash
{
  dashCopy = dash;
  departuresCopy = departures;
  dateCopy = date;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v9 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = [v9 initWithCapacity:v35[3]];
  v11 = objc_opt_class();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __99__MKTransitDeparturesCell__stringForCountdownDepartures_referenceDate_isShowingNoConnectionEmDash___block_invoke;
  v26[3] = &unk_1E76CAB10;
  v28 = &v30;
  v29 = &v34;
  v12 = v10;
  v27 = v12;
  [v11 _enumerateMinutesUntilDepartureDates:departuresCopy withReferenceDate:dateCopy block:v26];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  if ([v12 count])
  {
    _mapkit_componentsJoinedInCommaDelimitedList = [v12 _mapkit_componentsJoinedInCommaDelimitedList];
    v16 = _MKLocalizedStringFromThisBundle(@"%@ min [PlaceCard, Transit, Departures, Countdown]");
    v17 = dashCopy;
    v18 = _MKLocalizedStringFromThisBundle(@"min [PlaceCard, Transit, Departures, Countdown, Unit]");
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:v16, _mapkit_componentsJoinedInCommaDelimitedList, v18];
    [v13 addObject:v19];

    dashCopy = v17;
  }

  if (*(v31 + 24) == 1)
  {
    v20 = +[MKTransitDeparturesCell _nowString];
    [v13 insertObject:v20 atIndex:0];
  }

  v21 = [v12 count];
  if (dashCopy && v21 + *(v31 + 24) <= 1)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"—"];
    if (IsRightToLeft)
    {
      v23 = 0;
    }

    else
    {
      v23 = [v13 count];
    }

    [v13 insertObject:v22 atIndex:v23];
  }

  _mapkit_componentsJoinedInCommaDelimitedList2 = [v13 _mapkit_componentsJoinedInCommaDelimitedList];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return _mapkit_componentsJoinedInCommaDelimitedList2;
}

void __99__MKTransitDeparturesCell__stringForCountdownDepartures_referenceDate_isShowingNoConnectionEmDash___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:a3];
    [v7 addObject:v8];
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      --*(*(*(a1 + 48) + 8) + 24);
    }
  }

  if ([*(a1 + 32) count] == *(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
  }
}

+ (id)_stringFromTimestampDate:(id)date departureTimeZone:(id)zone
{
  zoneCopy = zone;
  if (date)
  {
    v6 = MEMORY[0x1E695DEE8];
    dateCopy = date;
    currentCalendar = [v6 currentCalendar];
    timeZone = [currentCalendar timeZone];
    if (!timeZone)
    {
      timeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    if (zoneCopy)
    {
      v10 = zoneCopy;
    }

    else
    {
      v10 = timeZone;
    }

    v11 = _stringFromTimestampDate_departureTimeZone__onceToken;
    v12 = v10;
    if (v11 != -1)
    {
      dispatch_once(&_stringFromTimestampDate_departureTimeZone__onceToken, &__block_literal_global_97);
    }

    [_stringFromTimestampDate_departureTimeZone__timestampFormatter setTimeZone:v12];

    v13 = [_stringFromTimestampDate_departureTimeZone__timestampFormatter stringFromDate:dateCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __70__MKTransitDeparturesCell__stringFromTimestampDate_departureTimeZone___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _stringFromTimestampDate_departureTimeZone__timestampFormatter;
  _stringFromTimestampDate_departureTimeZone__timestampFormatter = v0;

  v2 = _stringFromTimestampDate_departureTimeZone__timestampFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  [_stringFromTimestampDate_departureTimeZone__timestampFormatter setDateStyle:0];
  v4 = _stringFromTimestampDate_departureTimeZone__timestampFormatter;

  return [v4 setTimeStyle:1];
}

@end