@interface MKTransitDeparturesCell
+ (BOOL)_needsUpdateMaxLabelWidths;
+ (double)_maxExpectedDepartureLabelWidth;
+ (double)maxLineImageWidthforWidth:(double)a3;
+ (id)_attributedStringForCountdownDepartures:(id)a3 referenceDate:(id)a4 isShowingNoConnectionEmDash:(BOOL)a5;
+ (id)_departureDetailLabelFont;
+ (id)_departureLabelFont;
+ (id)_primaryFont;
+ (id)_stringForCountdownDepartures:(id)a3 referenceDate:(id)a4 isShowingNoConnectionEmDash:(BOOL)a5;
+ (id)_stringFromTimestampDate:(id)a3 departureTimeZone:(id)a4;
+ (id)defaultSecondaryFont;
+ (id)displayableCountdowDepartureDatesFromDates:(id)a3 withReferenceDate:(id)a4;
+ (id)strongSecondaryFont;
+ (void)_addEmDashAttributes:(id)a3;
+ (void)_calculateMaxLabelWidths;
+ (void)_enumerateMinutesUntilDepartureDates:(id)a3 withReferenceDate:(id)a4 block:(id)a5;
+ (void)useCompressedGutter:(BOOL *)a3 compressedLeading:(BOOL *)a4 forImageWidth:(double)a5 inWidth:(double)a6;
- (BOOL)_isDisplayingDepartureInfo;
- (BOOL)_shouldEnforceMinimumDepartureLabelWidth;
- (BOOL)_shouldPinSecondaryStackViewToBottom;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (MKTransitDeparturesCell)initWithReuseIdentifier:(id)a3;
- (MKTransitDeparturesCellDelegate)delegate;
- (double)_baselineSpacingAboveView:(id)a3;
- (double)_labelMarginWithLineImageViewWidth:(double)a3;
- (double)_labelToBottomScaledConstantForFullCenteredCellStyle;
- (double)_labelToTopScaledConstantForFullCenteredCellStyle;
- (double)_separatorHeight;
- (double)labelMargin;
- (id)_constraintsForCellStyle:(unint64_t)a3;
- (id)_departureDates;
- (id)_fontForView:(id)a3;
- (id)_incidentIcon;
- (id)_operatingHoursDescriptionForSequence:(id)a3 mapItem:(id)a4 useNewLineDelimeter:(BOOL)a5;
- (id)_startEndDatesForSequence:(id)a3 date:(id)a4 mapItem:(id)a5;
- (id)multipartStringSeparator;
- (unint64_t)_bestCellStyleForCurrentState;
- (unint64_t)_displayableDeparturesCount;
- (void)_addIncidentIcon;
- (void)_commonInit;
- (void)_contentSizeCategoryDidChange;
- (void)_getDepartureDependentConstraintsToActivate:(id *)a3 toDeactivate:(id *)a4;
- (void)_incidentButtonPressed;
- (void)_setCellStyle:(unint64_t)a3;
- (void)_updateConstraintValues;
- (void)_updateDepartureDependentConstraintsForCurrentState;
- (void)_updateLabelFonts;
- (void)_updateLineImageViewConstraintConstants;
- (void)configureCellForRowIndex:(int64_t)a3 withMapItem:(id)a4 sectionController:(id)a5 outNextLineIsSame:(BOOL *)a6;
- (void)configureLeadingWithTableViewContentMargin:(double)a3 width:(double)a4;
- (void)dealloc;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)refreshDeparturesDisplay;
- (void)setAccessibilityOrder;
- (void)setCountdownReferenceDate:(id)a3;
- (void)setDepartures:(id)a3;
- (void)setFrequency:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setInactive:(BOOL)a3;
- (void)setIncidentButtonHidden:(BOOL)a3;
- (void)setIncidentTitle:(id)a3;
- (void)setLineImage:(id)a3;
- (void)setLineImageViewSize:(double)a3;
- (void)setOperatingHours:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)setShowDisclosureArrow:(BOOL)a3;
- (void)setShowIncidentIcon:(BOOL)a3;
- (void)setShowNoConnectionEnDash:(BOOL)a3;
- (void)setTertiaryText:(id)a3;
- (void)setUseCompressedGutter:(BOOL)a3;
- (void)setUseCompressedLeading:(BOOL)a3;
- (void)setUseMultilineDeparturesLabel:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation MKTransitDeparturesCell

- (void)configureCellForRowIndex:(int64_t)a3 withMapItem:(id)a4 sectionController:(id)a5 outNextLineIsSame:(BOOL *)a6
{
  v98 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v95 = 1;
  [(MKTransitDeparturesCell *)self setInactive:0];
  [(MKTransitDeparturesCell *)self setFrequency:0];
  [(MKTransitDeparturesCell *)self setOperatingHours:0];
  v12 = [[MKTransitItemIncidentsController alloc] initWithMapItem:v10];
  v13 = [(MKTransitDeparturesCell *)self departureCutoffDate];
  [(MKTransitItemIncidentsController *)v12 setReferenceDate:v13];

  v14 = [(MKTransitDeparturesCell *)self _newStationCardUIEnabled];
  [(MKTransitDeparturesCell *)self setUseMultilineDeparturesLabel:v14];
  if (a3 != -1 || !v14)
  {
    v26 = [v11 sequenceForRow:a3 outIsNewLine:&v95 outNextLineIsSame:a6];
    v80 = [v26 displayStyle];
    v88 = [v26 line];
    -[MKTransitDeparturesCell setDepartureStyle:](self, "setDepartureStyle:", [v26 departureTimeDisplayStyle]);
    v27 = [(MKTransitDeparturesCell *)self departureCutoffDate];
    v28 = [v26 departuresValidForDate:v27];

    v84 = v28;
    [(MKTransitDeparturesCell *)self setDepartures:v28];
    v29 = [(MKTransitItemIncidentsController *)v12 incidentsForDepartureSequence:v26];
    v85 = [v29 firstObject];

    if (!v14)
    {
      if (v85)
      {
        v30 = [v85 messageForRouteStepping];
        if (v30)
        {
          [(MKTransitDeparturesCell *)self setIncidentTitle:v30];
        }

        else
        {
          v31 = [v85 title];
          [(MKTransitDeparturesCell *)self setIncidentTitle:v31];
        }
      }

      else
      {
        [(MKTransitDeparturesCell *)self setIncidentTitle:0];
      }
    }

    v32 = [v26 line];
    v33 = [v32 name];

    v90 = [(MKTransitDeparturesCell *)self _operatingHoursDescriptionForSequence:v26 mapItem:v10 useNewLineDelimeter:v14];
    if ([v90 length])
    {
      v34 = 0;
    }

    else
    {
      v34 = [v11 serviceGapDescriptionForRow:a3];
    }

    v86 = [MEMORY[0x1E695DF70] array];
    v82 = v33;
    v83 = v11;
    v81 = v10;
    if (![v11 departuresAreVehicleSpecific])
    {
      if (v14)
      {
        v40 = [v26 displayName];
        [(MKTransitDeparturesCell *)self setPrimaryText:v40];

        v41 = v34;
        v42 = v86;
        if ([v90 length])
        {
LABEL_67:
          [(MKTransitDeparturesCell *)self setOperatingHours:v90];
        }

LABEL_69:
        if (![v41 length])
        {
          v63 = [(MKTransitDeparturesCell *)self countdownReferenceDate];
          v64 = [v26 hasFrequencyAtDate:v63];

          if (v64)
          {
            v65 = MEMORY[0x1E696AEC0];
            v66 = [(MKTransitDeparturesCell *)self countdownReferenceDate];
            v67 = [v26 frequencyToDescribeAtDate:v66];
            v68 = [v65 _navigation_formattedDescriptionForFrequency:v67];

            if ([v68 length])
            {
              if (v14)
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
          v70 = [(MKTransitDeparturesCell *)self multipartStringSeparator];
          v71 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v42 repeatedSeparator:v70];
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

        v15 = v88;
        v75 = v41;
        [(MKTransitDeparturesCell *)self setTertiaryText:v74];
        if (v14)
        {
          [(MKTransitDeparturesCell *)self setLineImage:0];
          [(MKTransitDeparturesCell *)self setShowIncidentIcon:0];
          v76 = v85;
        }

        else
        {
          v76 = v85;
          v77 = [(MKTransitDeparturesCell *)self delegate];
          v78 = [v77 imageForTransitLine:v88];

          [(MKTransitDeparturesCell *)self setLineImage:v78];
          [(MKTransitDeparturesCell *)self setShowIncidentIcon:v85 != 0];

          v15 = v88;
        }

        v11 = v83;
        v10 = v81;
        goto LABEL_86;
      }

      v41 = v34;
      if (![v33 length] || v80 != 1)
      {
        v52 = [v26 headsign];
        [(MKTransitDeparturesCell *)self setPrimaryText:v52];

        v42 = v86;
        if (v80 != 2 || ![v33 length])
        {
          goto LABEL_65;
        }

        v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v33];
        [v86 addObject:v35];
        goto LABEL_64;
      }

      [(MKTransitDeparturesCell *)self setPrimaryText:v33];
      v43 = [v26 headsign];
      v44 = [v43 length];

      v42 = v86;
      if (!v44)
      {
LABEL_65:
        if (![v90 length])
        {
          goto LABEL_69;
        }

        if (v14)
        {
          goto LABEL_67;
        }

        v62 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v90];
        [v42 addObject:v62];

        goto LABEL_69;
      }

      v45 = objc_alloc(MEMORY[0x1E696AAB0]);
      v35 = [v26 headsign];
      v46 = [v45 initWithString:v35];
      [v86 addObject:v46];
LABEL_63:

LABEL_64:
      goto LABEL_65;
    }

    v35 = [v84 firstObject];
    v79 = [v35 vehicleIdentifier];
    v36 = [v79 length];
    v37 = [v33 length];
    if (v36)
    {
      if (v37)
      {
        v38 = v14;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        v39 = v79;
LABEL_41:
        v46 = v39;
        goto LABEL_47;
      }

      v47 = MEMORY[0x1E696AEC0];
      v48 = _MKLocalizedStringFromThisBundle(@"train number line name format");
      [v35 vehicleIdentifier];
      v49 = v35;
      v51 = v50 = v26;
      v46 = [v47 stringWithFormat:v48, v51, v82];

      v26 = v50;
      v35 = v49;
      v11 = v83;
    }

    else
    {
      if (v37)
      {
        v39 = v33;
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
      v41 = [v11 serviceGapDescriptionForRow:a3];
    }

    v42 = v86;
    if ([(__CFString *)v46 length]&& v80 == 1)
    {
      [(MKTransitDeparturesCell *)self setPrimaryText:v46];
      v53 = [v26 headsign];
      v54 = [v53 length];

      if (v54)
      {
        v55 = objc_alloc(MEMORY[0x1E696AAB0]);
        v56 = [v26 headsign];
        v57 = [v55 initWithString:v56];
        [v86 addObject:v57];

LABEL_61:
      }
    }

    else
    {
      if (v14)
      {
        v58 = [v35 displayName];
        v59 = v58;
        if (v58)
        {
          v60 = v58;
        }

        else
        {
          v60 = [v26 displayName];
        }

        v56 = v60;

        [(MKTransitDeparturesCell *)self setPrimaryText:v56];
        goto LABEL_61;
      }

      v61 = [v26 headsign];
      [(MKTransitDeparturesCell *)self setPrimaryText:v61];

      if ([(__CFString *)v46 length])
      {
        v56 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v46];
        [v86 addObject:v56];
        goto LABEL_61;
      }
    }

    goto LABEL_63;
  }

  v15 = [v11 sequenceForRow:0 outIsNewLine:&v95 outNextLineIsSame:a6];
  v16 = [(MKTransitDeparturesCell *)self delegate];
  v17 = [v16 imageForDepartureSequence:v15];

  [(MKTransitDeparturesCell *)self setLineImage:v17];
  [(MKTransitDeparturesCell *)self setIncidentTitle:0];
  [(MKTransitDeparturesCell *)self setDepartures:MEMORY[0x1E695E0F0]];
  [(MKTransitDeparturesCell *)self setSecondaryText:0];
  [(MKTransitDeparturesCell *)self setTertiaryText:0];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v18 = [v11 sequences];
  v19 = [v18 countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v19)
  {
    v87 = v15;
    v89 = v17;
    v20 = v11;
    v21 = v10;
    v22 = *v92;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v92 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = [(MKTransitItemIncidentsController *)v12 incidentsForDepartureSequence:*(*(&v91 + 1) + 8 * i)];
        v25 = [v24 count];

        if (v25)
        {
          v19 = 1;
          goto LABEL_17;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

LABEL_17:
    v10 = v21;
    v11 = v20;
    v15 = v87;
    v17 = v89;
  }

  [(MKTransitDeparturesCell *)self setShowIncidentIcon:v19];
LABEL_86:
}

- (id)_operatingHoursDescriptionForSequence:(id)a3 mapItem:(id)a4 useNewLineDelimeter:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 departureTimeDisplayStyle] == 3 && (objc_msgSend(v8, "operatingHours"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [(MKTransitDeparturesCell *)self departureCutoffDate];
    v13 = [(MKTransitDeparturesCell *)self _startEndDatesForSequence:v8 date:v12 mapItem:v9];

    v14 = [v9 timeZone];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v18 = [MEMORY[0x1E695DEE8] currentCalendar];
      v16 = [v18 timeZone];
    }

    if (v5)
    {
      [MEMORY[0x1E696AEC0] _navigation_formattedStringForHourRanges:v13 timeZone:v16 delimeter:@"\n"];
    }

    else
    {
      [MEMORY[0x1E696AEC0] _navigation_formattedStringForHourRanges:v13 timeZone:v16];
    }
    v17 = ;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_startEndDatesForSequence:(id)a3 date:(id)a4 mapItem:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a5 timeZone];
  v10 = [v7 operatingHoursForDate:v8 inTimeZone:v9];

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
        v18 = [v17 startDate];
        [v11 addObject:v18];

        v19 = [v17 endDate];
        [v11 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  return v11;
}

- (void)configureLeadingWithTableViewContentMargin:(double)a3 width:(double)a4
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
  v2 = [(MKTransitDeparturesCell *)self _newStationCardUIEnabled];
  result = 33.0;
  if (v2)
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

  v3 = [(UIImageView *)self->_lineImageView image];

  result = 37.0;
  if (!v3)
  {
    return 29.0;
  }

  return result;
}

- (void)setSeparatorHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(MKCustomSeparatorCell *)self isSeparatorHidden];
  v6.receiver = self;
  v6.super_class = MKTransitDeparturesCell;
  [(MKCustomSeparatorCell *)&v6 setSeparatorHidden:v3];
  if (v5 != [(MKCustomSeparatorCell *)self isSeparatorHidden])
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

- (void)setUseCompressedLeading:(BOOL)a3
{
  if (self->_useCompressedLeading == a3)
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
    self->_useCompressedLeading = a3;
  }

  v5 = [(MKTransitDeparturesCell *)self contentView];
  v6 = [v5 layoutMarginsGuide];
  v16 = [v6 leadingAnchor];

  if (self->_useCompressedLeading)
  {
    p_lineImageCompressedLeadingConstraint = &self->_lineImageCompressedLeadingConstraint;
    if (!self->_lineImageCompressedLeadingConstraint)
    {
      v8 = [(UIImageView *)self->_lineImageView leadingAnchor];
      v9 = [v8 constraintGreaterThanOrEqualToAnchor:v16 constant:12.0];
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
      v13 = [(UIImageView *)self->_lineImageView leadingAnchor];
      v14 = [v13 constraintGreaterThanOrEqualToAnchor:v16];
      v15 = *p_lineImageCompressedLeadingConstraint;
      *p_lineImageCompressedLeadingConstraint = v14;
    }

    v12 = &OBJC_IVAR___MKTransitDeparturesCell__lineImageCompressedLeadingConstraint;
  }

  [*(&self->super.super.super.super.super.super.isa + *v12) setActive:0];
  [*p_lineImageCompressedLeadingConstraint setActive:1];
}

- (void)setUseCompressedGutter:(BOOL)a3
{
  if (self->_useCompressedGutter != a3)
  {
    self->_useCompressedGutter = a3;
    lineImageToTextGutterConstraint = self->_lineImageToTextGutterConstraint;
    v4 = -12.0;
    if (a3)
    {
      v4 = -8.0;
    }

    [(NSLayoutConstraint *)lineImageToTextGutterConstraint setConstant:v4];
  }
}

- (double)_labelMarginWithLineImageViewWidth:(double)a3
{
  if (![(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    return a3 + 12.0;
  }

  v5 = [(UIImageView *)self->_lineImageView image];

  result = a3 + 12.0;
  if (!v5)
  {
    return 0.0;
  }

  return result;
}

- (void)setIncidentButtonHidden:(BOOL)a3
{
  v3 = a3;
  if ([(UIButton *)self->_incidentButton isHidden]!= a3)
  {
    [(UIButton *)self->_incidentButton setHidden:v3];
    if (!v3)
    {
      incidentButton = self->_incidentButton;
      v6 = [(MKTransitDeparturesCell *)self incidentTitle];
      [(UIButton *)incidentButton setTitle:v6 forState:0];
    }
  }
}

- (void)_incidentButtonPressed
{
  v3 = [(MKTransitDeparturesCell *)self delegate];
  [v3 incidentButtonSelectedInDeparturesCell:self];
}

- (void)setIncidentTitle:(id)a3
{
  v4 = a3;
  incidentTitle = self->_incidentTitle;
  if (incidentTitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)incidentTitle isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_incidentTitle;
      self->_incidentTitle = v7;

      [(MKTransitDeparturesCell *)self setIncidentButtonHidden:[(NSString *)self->_incidentTitle length]== 0];
      v4 = v9;
    }
  }
}

- (void)setShowIncidentIcon:(BOOL)a3
{
  if (self->_showIncidentIcon != a3)
  {
    self->_showIncidentIcon = a3;
    if (a3)
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
    v6 = [(MKTransitDeparturesCell *)self _incidentIcon];
    [(UIImageView *)self->_incidentIconImageView setImage:v6];
  }

  v7 = [(MKTransitDeparturesCell *)self contentView];
  [v7 addSubview:self->_incidentIconImageView];

  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    v8 = [(UIImageView *)self->_incidentIconImageView heightAnchor];
    v9 = [v8 constraintEqualToConstant:10.0];

    [v9 setActive:1];
    v10 = [(UIImageView *)self->_incidentIconImageView widthAnchor];
    v11 = [(UIImageView *)self->_incidentIconImageView heightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];
  }

  incidentIconHorizontalConstraint = self->_incidentIconHorizontalConstraint;
  if (!incidentIconHorizontalConstraint)
  {
    v14 = [(UIImageView *)self->_incidentIconImageView trailingAnchor];
    v15 = [(UIImageView *)self->_lineImageView trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v17 = self->_incidentIconHorizontalConstraint;
    self->_incidentIconHorizontalConstraint = v16;

    incidentIconHorizontalConstraint = self->_incidentIconHorizontalConstraint;
  }

  v18 = MEMORY[0x1E696ACD8];
  v23[0] = incidentIconHorizontalConstraint;
  v19 = [(UIImageView *)self->_incidentIconImageView bottomAnchor];
  v20 = [(UIImageView *)self->_lineImageView bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:4.0];
  v23[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  [v18 activateConstraints:v22];

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (id)_incidentIcon
{
  v2 = [(MKTransitDeparturesCell *)self window];
  v3 = [v2 screen];
  v4 = v3;
  if (v3)
  {
    [v3 scale];
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
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
  v4 = [(MKTransitDeparturesCell *)self _departureDates];
  v5 = [(MKTransitDeparturesCell *)self countdownReferenceDate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MKTransitDeparturesCell__displayableDeparturesCount__block_invoke;
  v9[3] = &unk_1E76CAB60;
  v9[4] = v14;
  v9[5] = &v10;
  [v3 _enumerateMinutesUntilDepartureDates:v4 withReferenceDate:v5 block:v9];

  v6 = [(MKTransitDeparturesCell *)self departureStyle];
  if (v6 > 5 || ((1 << v6) & 0x34) == 0)
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
  v4 = [(MKTransitDeparturesCell *)self departures];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MKTransitDeparturesCell *)self departures];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 departureDate];
        if (([v11 isCanceled] & 1) == 0 && v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)setFrequency:(id)a3
{
  v5 = a3;
  if (([(NSString *)self->_frequency isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_frequency, a3);
  }
}

- (void)setOperatingHours:(id)a3
{
  v5 = a3;
  if (([(NSString *)self->_operatingHours isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_operatingHours, a3);
  }
}

- (void)setDepartures:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_departures isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_departures, a3);
  }
}

- (void)setCountdownReferenceDate:(id)a3
{
  v5 = a3;
  if (![(NSDate *)self->_countdownReferenceDate isEqualToDate:?])
  {
    objc_storeStrong(&self->_countdownReferenceDate, a3);
  }
}

- (void)setShowNoConnectionEnDash:(BOOL)a3
{
  if (self->_showNoConnectionEmDash != a3)
  {
    self->_showNoConnectionEmDash = a3;
  }
}

- (void)setLineImageViewSize:(double)a3
{
  if (self->_lineImageViewSize != a3)
  {
    self->_lineImageViewSize = a3;
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
  v3 = [(_MKUILabel *)self->_primaryLabel text];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;

  v39[0] = v6;
  v7 = [(MKMultiPartLabel *)self->_secondaryLabel text];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v10 = v9;

  v39[1] = v10;
  v11 = [(_MKUILabel *)self->_departureLabel text];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = v13;

  v39[2] = v14;
  v15 = [(_MKUILabel *)self->_departureDetailLabel text];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v17;

  v39[3] = v18;
  v19 = [(MKMultiPartLabel *)self->_tertiaryLabel text];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v21;

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
        v30 = [MEMORY[0x1E695DFB0] null];
        v31 = [v29 isEqual:v30];

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
  v3 = [(MKTransitDeparturesCell *)self _displayableDeparturesCount];
  v4 = [(MKTransitDeparturesCell *)self departures];
  v5 = [v4 firstObject];

  v6 = [v5 liveStatus];
  if (self->_departureStyle == 1 && v6 == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  v9 = [(MKTransitDeparturesCell *)self departureStyle];
  if (v9 - 2 > 3)
  {
    v10 = 1;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = qword_1A30F7AC8[v9 - 2];
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (v10 == 2)
  {
    self->_enforceMinimumDepartureLabelWidth = 0;
    if ((v8 - 1) >= 2)
    {
      [v5 scheduledDepartureDate];
    }

    else
    {
      [v5 liveDepartureDate];
    }
    v3 = ;
    v16 = objc_opt_class();
    v17 = [(MKTransitDeparturesCell *)self departureTimeZone];
    v18 = [v16 _stringFromTimestampDate:v3 departureTimeZone:v17];

    v19 = [(UIView *)self _mapkit_isDarkModeEnabled];
    if (v18)
    {
      v14 = [MEMORY[0x1E696AAB0] _mapkit_attributedLiveTransitStringFromDepartureString:v18 departure:v5 darkMode:v19];
    }

    else
    {
      v14 = 0;
    }

    v20 = [v5 liveStatusString];

    if (v20)
    {
      v15 = 0;
    }

    else
    {
      v21 = objc_opt_class();
      v22 = [v5 liveDepartureDate];
      v23 = [(MKTransitDeparturesCell *)self departureTimeZone];
      v15 = [v21 _stringFromTimestampDate:v22 departureTimeZone:v23];
    }

    goto LABEL_27;
  }

  if (v10 != 1)
  {
    v15 = 0;
    v3 = 0;
    goto LABEL_28;
  }

  self->_enforceMinimumDepartureLabelWidth = 1;
  v11 = objc_opt_class();
  v12 = [(MKTransitDeparturesCell *)self _departureDates];
  v13 = [(MKTransitDeparturesCell *)self countdownReferenceDate];
  v3 = [v11 _attributedStringForCountdownDepartures:v12 referenceDate:v13 isShowingNoConnectionEmDash:{-[MKTransitDeparturesCell isShowingNoConnectionEmDash](self, "isShowingNoConnectionEmDash")}];

  if (!v5)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_28;
  }

  v14 = [MEMORY[0x1E696AAB0] _mapkit_attributedLiveTransitStringFromAttributedDepartureString:v3 liveStatus:v8 darkMode:-[UIView _mapkit_isDarkModeEnabled](self symbolOverrideColor:{"_mapkit_isDarkModeEnabled"), 0}];
  v15 = 0;
LABEL_27:

  v3 = v14;
LABEL_28:
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_34;
  }

  v24 = [v5 liveStatusString];

  if (!v24)
  {
    v33 = [v5 departureDate];

    if (v33)
    {
      v27 = MKTransitLiveDepartureColorForViewWithLiveStatus(self, v8);
      v46 = *MEMORY[0x1E69DB650];
      *v47 = v27;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v35 = objc_alloc(MEMORY[0x1E696AAB0]);
      v36 = [MEMORY[0x1E696AEC0] _navigation_formattedDescriptionForLiveStatus:v8 updatedDepartureTimeString:v15];
      v32 = [v35 initWithString:v36 attributes:v34];

      goto LABEL_33;
    }

LABEL_34:
    v32 = 0;
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
  v29 = [v5 liveStatusString];
  v30 = [(MKServerFormattedString *)v28 initWithGeoServerString:v29 parameters:v27];

  v31 = [(MKServerFormattedString *)v30 multiPartAttributedStringWithAttributes:MEMORY[0x1E695E0F8]];
  v32 = [v31 attributedString];

LABEL_33:
LABEL_35:
  if (-[MKTransitDeparturesCell _newStationCardUIEnabled](self, "_newStationCardUIEnabled") && ![v3 length] && -[NSString length](self->_frequency, "length"))
  {
    v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_frequency];

    v3 = v37;
  }

  if (-[MKTransitDeparturesCell _newStationCardUIEnabled](self, "_newStationCardUIEnabled") && ![v3 length] && -[NSString length](self->_operatingHours, "length"))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_operatingHours];

    v3 = v38;
  }

  -[_MKUILabel setHidden:](self->_departureDetailLabel, "setHidden:", [v32 length] == 0);
  -[_MKUILabel setHidden:](self->_departureLabel, "setHidden:", [v3 length] == 0);
  [(_MKUILabel *)self->_departureLabel setAttributedText:v3];
  [(_MKUILabel *)self->_departureDetailLabel setAttributedText:v32];
  [(MKTransitDeparturesCell *)self _updateDepartureDependentConstraintsForCurrentState];
  [(NSLayoutConstraint *)self->_minimumDepartureLabelWidthConstraint setActive:[(MKTransitDeparturesCell *)self _shouldEnforceMinimumDepartureLabelWidth]];
}

- (void)setShowDisclosureArrow:(BOOL)a3
{
  v3 = a3;
  if ([(UIImageView *)self->_disclosureArrowImageView isHidden]== a3)
  {
    [(UIImageView *)self->_disclosureArrowImageView setHidden:!v3];

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setTertiaryText:(id)a3
{
  tertiaryLabel = self->_tertiaryLabel;
  v5 = a3;
  LODWORD(tertiaryLabel) = [(MKThemeMultiPartLabel *)tertiaryLabel isHidden];
  [(MKMultiPartLabel *)self->_tertiaryLabel setMultiPartString:v5];

  v6 = [(MKMultiPartLabel *)self->_tertiaryLabel text];
  -[MKThemeMultiPartLabel setHidden:](self->_tertiaryLabel, "setHidden:", [v6 length] == 0);

  if (tertiaryLabel != [(MKThemeMultiPartLabel *)self->_tertiaryLabel isHidden])
  {

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setSecondaryText:(id)a3
{
  secondaryLabel = self->_secondaryLabel;
  v5 = a3;
  LODWORD(secondaryLabel) = [(MKThemeMultiPartLabel *)secondaryLabel isHidden];
  [(MKMultiPartLabel *)self->_secondaryLabel setMultiPartString:v5];

  v6 = [(MKMultiPartLabel *)self->_secondaryLabel text];
  -[MKThemeMultiPartLabel setHidden:](self->_secondaryLabel, "setHidden:", [v6 length] == 0);

  if (secondaryLabel != [(MKThemeMultiPartLabel *)self->_secondaryLabel isHidden])
  {

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)setPrimaryText:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sPrimaryLabelParagraphStyle;
  if (!sPrimaryLabelParagraphStyle)
  {
    v6 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v7 = [v6 mutableCopy];

    LODWORD(v8) = 1008981770;
    [v7 setHyphenationFactor:v8];
    v9 = sPrimaryLabelParagraphStyle;
    sPrimaryLabelParagraphStyle = v7;

    v5 = sPrimaryLabelParagraphStyle;
  }

  v12 = *MEMORY[0x1E69DB688];
  v13[0] = v5;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  if (v4)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v10];
    [(_MKUILabel *)self->_primaryLabel setAttributedText:v11];
  }

  else
  {
    [(_MKUILabel *)self->_primaryLabel setAttributedText:0];
  }
}

- (void)setLineImage:(id)a3
{
  [(UIImageView *)self->_lineImageView setImage:?];
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    v5 = [(UIImageView *)self->_lineImageView image];
    [v5 size];
    [(MKTransitDeparturesCell *)self _labelMarginWithLineImageViewWidth:?];
    [(NSLayoutConstraint *)self->_labelLeadingMarginConstraint setConstant:?];

    [(NSLayoutConstraint *)self->_lineImageViewHeightConstraint setActive:a3 != 0];
  }

  [(MKTransitDeparturesCell *)self _updateLineImageViewConstraintConstants];
}

- (double)_separatorHeight
{
  v2 = [(MKTransitDeparturesCell *)self _screen];
  [v2 nativeScale];
  v4 = 1.0 / v3;

  return v4;
}

- (void)_updateLabelFonts
{
  v3 = [objc_opt_class() _primaryFont];
  [(_MKUILabel *)self->_primaryLabel setFont:v3];

  v4 = [objc_opt_class() defaultSecondaryFont];
  [(MKMultiPartLabel *)self->_secondaryLabel setFont:v4];

  v5 = [objc_opt_class() defaultSecondaryFont];
  [(MKMultiPartLabel *)self->_tertiaryLabel setFont:v5];

  v6 = [objc_opt_class() _departureLabelFont];
  [(_MKUILabel *)self->_departureLabel setFont:v6];

  v7 = [objc_opt_class() _departureDetailLabelFont];
  [(_MKUILabel *)self->_departureDetailLabel setFont:v7];

  v9 = [objc_opt_class() defaultSecondaryFont];
  v8 = [(UIButton *)self->_incidentButton titleLabel];
  [v8 setFont:v9];
}

- (void)infoCardThemeChanged
{
  v5.receiver = self;
  v5.super_class = MKTransitDeparturesCell;
  [(UIView *)&v5 infoCardThemeChanged];
  v3 = [(UIView *)self mk_theme];
  v4 = [v3 lightTextColor];
  [(UIImageView *)self->_lineImageView setTintColor:v4];

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

- (void)_getDepartureDependentConstraintsToActivate:(id *)a3 toDeactivate:(id *)a4
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (![(NSMapTable *)self->_departureDependentConstraintsByView count])
  {
    return;
  }

  if ([(MKTransitDeparturesCell *)self _shouldEnforceDepartureDependentConstraints])
  {
    v7 = [(_MKUILabel *)self->_departureLabel attributedText];
    v8 = [v7 length];

    v9 = [(_MKUILabel *)self->_departureDetailLabel attributedText];
    v10 = [v9 length];

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
    if (a3)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
      if (a4)
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
        if (a4)
        {
          v22 = v21;
          *a4 = v21;
        }

        if (a3)
        {
          v23 = v20;
          *a3 = v20;
        }

        return;
      }
    }

    else
    {
      v16 = 0;
      if (a4)
      {
        goto LABEL_10;
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

  v18 = MEMORY[0x1E696ACD8];
  v24 = [(NSMapTable *)self->_departureDependentConstraintsByView objectEnumerator];
  v19 = [v24 allObjects];
  [v18 deactivateConstraints:v19];
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
  v4 = [(UIStackView *)self->_secondaryTextStackView arrangedSubviews];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      if (([v9 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 attributedText];
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

          v10 = [v9 text];
        }

        v11 = v10;
        v12 = [v10 length];

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
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(_MKUILabel *)self->_departureLabel attributedText];
  if ([v3 length])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_MKUILabel *)self->_departureDetailLabel attributedText];
    v4 = [v5 length] != 0;
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
    v4 = [(UIImageView *)self->_lineImageView image];
    [v4 size];
    v6 = v5;

    [(MKTransitDeparturesCell *)self _separatorHeight];
    v8 = v7;
    if (v6 >= 35.0)
    {
      v9 = [objc_opt_class() _primaryFont];
      v10 = v9;
      if (v6 < 40.0)
      {
        [v9 _mapkit_scaledValueForValue:21.5];
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
      v9 = [objc_opt_class() _primaryFont];
      v10 = v9;
      v11 = 23.0;
    }

    [v9 _mapkit_scaledValueForValue:v11];
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

- (id)_fontForView:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 font];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 titleLabel];
    v4 = [v5 font];
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

LABEL_8:

  return v4;
}

- (double)_baselineSpacingAboveView:(id)a3
{
  v4 = a3;
  v5 = [(MKTransitDeparturesCell *)self _fontForView:v4];
  if (v5)
  {
    if (self->_departureLabel == v4)
    {
      v7 = 3.0;
    }

    else
    {
      incidentButton = self->_incidentButton;
      v7 = 0.0;
      if (incidentButton == v4)
      {
        v8 = [(UIButton *)incidentButton configuration];
        [v8 contentInsets];
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
  v3 = [objc_opt_class() defaultSecondaryFont];
  [v3 _mapkit_lineHeight];
  [(UIStackView *)self->_secondaryTextStackView setSpacing:?];
  v4 = [(MKTransitDeparturesCell *)self useCompressedGutter];
  v5 = -12.0;
  if (v4)
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
      v11 = [(_MKUILabel *)self->_primaryLabel font];
      [v11 _mapkit_lineHeight];
      v13 = v12;
      v14 = [(_MKUILabel *)self->_primaryLabel font];
      [v14 ascender];
      [(NSLayoutConstraint *)self->_primaryToTopConstraint setConstant:-(v13 - v15)];

      v16 = [(UIStackView *)self->_secondaryTextStackView arrangedSubviews];
      v17 = [v16 count];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __50__MKTransitDeparturesCell__updateConstraintValues__block_invoke;
      v50[3] = &unk_1E76CAAC0;
      v52 = self;
      v53 = v17;
      v51 = v16;
      v18 = v16;
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

  v19 = [objc_opt_class() _primaryFont];
  [v19 _scaledValueForValue:v9];
  v21 = v20;
  [(MKTransitDeparturesCell *)self _separatorHeight];
  v23 = v21 - v22;
  v24 = [objc_opt_class() _primaryFont];
  [v24 pointSize];
  [(NSLayoutConstraint *)self->_primaryToTopConstraint setConstant:v23 - v25];

  [v3 _scaledValueForValue:20.0];
  [(NSLayoutConstraint *)self->_secondaryStackToPrimaryConstraint setConstant:?];
  [v3 _scaledValueForValue:v7];
  v27 = v26;
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled]&& [(UIStackView *)self->_secondaryTextStackView isHidden])
  {
    v27 = 0.0;
  }

  [(NSLayoutConstraint *)self->_secondaryStackToBottomConstraint setConstant:v27];
  v28 = [objc_opt_class() _primaryFont];
  [v28 _scaledValueForValue:v7];
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

  v41 = [objc_opt_class() _departureDetailLabelFont];
  [v41 _scaledValueForValue:20.0];
  [(UIStackView *)self->_departureStackView setSpacing:?];

  [(NSLayoutConstraint *)self->_secondaryStackToBottomConstraint constant];
  [(NSLayoutConstraint *)self->_departureStackViewToBottomConstraint setConstant:?];
  [(UIStackView *)self->_secondaryTextStackView setCustomSpacing:self->_primaryLabel afterView:3.40282347e38];
  [(UIStackView *)self->_secondaryTextStackView setCustomSpacing:self->_secondaryLabel afterView:3.40282347e38];
  [(UIStackView *)self->_secondaryTextStackView setCustomSpacing:self->_tertiaryLabel afterView:3.40282347e38];
LABEL_31:
  if ([(MKTransitDeparturesCell *)self _newStationCardUIEnabled])
  {
    v42 = [(UIImageView *)self->_lineImageView image];
    [v42 size];
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
      v44 = [(UIImageView *)self->_incidentIconImageView image];
      [v44 size];
      v43 = v45;
    }

    v46 = [(UIImageView *)self->_lineImageView image];
    [v46 size];
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

- (id)_constraintsForCellStyle:(unint64_t)a3
{
  v214 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MKTransitDeparturesCell *)self contentView];
  v7 = [v6 bottomAnchor];
  v8 = [(UIImageView *)self->_lineImageView bottomAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];
  lineImageViewToBottomConstraint = self->_lineImageViewToBottomConstraint;
  self->_lineImageViewToBottomConstraint = v9;

  [v5 addObject:self->_lineImageViewToBottomConstraint];
  v11 = 0x1E696A000uLL;
  v12 = MEMORY[0x1E696ACD8];
  v13 = _NSDictionaryOfVariableBindings(&cfstr_Lineimageview_0.isa, self->_lineImageView, 0);
  v14 = [v12 constraintsWithVisualFormat:@"V:|[_lineImageView]|" options:0 metrics:0 views:v13];
  [v5 addObjectsFromArray:v14];

  v15 = [(UIImageView *)self->_lineImageView leadingAnchor];
  v16 = [(UIImageView *)self->_lineImageView superview];
  v17 = [v16 leadingAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v5 addObject:v18];

  v19 = [(UIImageView *)self->_lineImageView trailingAnchor];
  v20 = [(UIImageView *)self->_lineImageView superview];
  v21 = [v20 trailingAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  lineImageToContainerTrailingConstraint = self->_lineImageToContainerTrailingConstraint;
  self->_lineImageToContainerTrailingConstraint = v22;

  v192 = v5;
  [v5 addObject:self->_lineImageToContainerTrailingConstraint];
  v24 = [(MKTransitDeparturesCell *)self contentView];
  v25 = [v24 layoutMarginsGuide];
  v191 = [v25 leadingAnchor];

  v26 = [(MKTransitDeparturesCell *)self contentView];
  v27 = [v26 layoutMarginsGuide];
  v194 = [v27 trailingAnchor];

  v193 = self;
  if (a3 > 1)
  {
    departureDependentConstraintsByView = self->_departureDependentConstraintsByView;
    self->_departureDependentConstraintsByView = 0;

    minimumDepartureLabelWidthConstraint = self->_minimumDepartureLabelWidthConstraint;
    self->_minimumDepartureLabelWidthConstraint = 0;

    v117 = [MEMORY[0x1E696AD88] defaultCenter];
    [v117 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

    v60 = v5;
  }

  else
  {
    v190 = a3;
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

          v35 = [*(*(&v204 + 1) + 8 * i) trailingAnchor];
          v36 = [v194 constraintEqualToAnchor:v35 constant:0.0];

          LODWORD(v37) = 1148829696;
          [v36 setPriority:v37];
          [v192 addObject:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v204 objects:v213 count:16];
      }

      while (v32);
    }

    v38 = [(_MKUILabel *)v193->_departureLabel widthAnchor];
    v39 = [(MKTransitDeparturesCell *)v193 isInactive];
    v40 = 0.0;
    if (!v39)
    {
      [objc_opt_class() _maxExpectedDepartureLabelWidth];
    }

    v41 = [v38 constraintGreaterThanOrEqualToConstant:v40];
    v42 = v193->_minimumDepartureLabelWidthConstraint;
    v193->_minimumDepartureLabelWidthConstraint = v41;

    LODWORD(v43) = 1148829696;
    [(NSLayoutConstraint *)v193->_minimumDepartureLabelWidthConstraint setPriority:v43];
    v44 = [MEMORY[0x1E696AD88] defaultCenter];
    [v44 addObserver:v193 selector:sel__updateConstraintValues name:*MEMORY[0x1E695D8F0] object:0];

    if ([(MKTransitDeparturesCell *)v193 _shouldEnforceMinimumDepartureLabelWidth])
    {
      [v192 addObject:v193->_minimumDepartureLabelWidthConstraint];
    }

    v45 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v200 = 0u;
    v201 = 0u;
    primaryLabel = v193->_primaryLabel;
    v202 = 0u;
    v203 = 0u;
    v47 = v193->_secondaryLabel;
    tertiaryLabel = v193->_tertiaryLabel;
    v210[0] = primaryLabel;
    v210[1] = v47;
    v49 = v193->_incidentButton;
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
          v56 = [(UIStackView *)v193->_departureStackView leadingAnchor];
          v57 = [v55 trailingAnchor];
          v58 = [v56 constraintEqualToAnchor:v57 constant:12.0];
          [v45 setObject:v58 forKey:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v200 objects:v211 count:16];
      }

      while (v52);
    }

    objc_storeStrong(&v193->_departureDependentConstraintsByView, v45);
    v199 = 0;
    [(MKTransitDeparturesCell *)v193 _getDepartureDependentConstraintsToActivate:&v199 toDeactivate:0];
    v59 = v199;
    v60 = v192;
    if ([v59 count])
    {
      [v192 addObjectsFromArray:v59];
    }

    v61 = [(UIImageView *)v193->_disclosureArrowImageView firstBaselineAnchor];
    v62 = [(UIStackView *)v193->_departureStackView firstBaselineAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:-1.0];
    [v192 addObject:v63];

    v64 = [(UIImageView *)v193->_disclosureArrowImageView trailingAnchor];
    v65 = [v64 constraintEqualToAnchor:v194];
    [v192 addObject:v65];

    v66 = [(UIImageView *)v193->_disclosureArrowImageView leadingAnchor];
    v67 = [(UIStackView *)v193->_departureStackView trailingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:4.0];
    labelToDisclosureArrowConstraint = v193->_labelToDisclosureArrowConstraint;
    v193->_labelToDisclosureArrowConstraint = v68;

    if (([(UIImageView *)v193->_disclosureArrowImageView isHidden]& 1) == 0)
    {
      [v192 addObject:v193->_labelToDisclosureArrowConstraint];
    }

    v70 = [(UIStackView *)v193->_departureStackView trailingAnchor];
    v71 = [v194 constraintGreaterThanOrEqualToAnchor:v70 constant:0.0];

    [v192 addObject:v71];
    v72 = [(MKTransitDeparturesCell *)v193 contentView];
    v73 = [v72 bottomAnchor];
    v74 = [(UIStackView *)v193->_departureStackView bottomAnchor];
    v75 = [v73 constraintGreaterThanOrEqualToAnchor:v74];
    departureStackViewToBottomConstraint = v193->_departureStackViewToBottomConstraint;
    v193->_departureStackViewToBottomConstraint = v75;

    [v192 addObject:v193->_departureStackViewToBottomConstraint];
    v77 = [(_MKUILabel *)v193->_primaryLabel topAnchor];
    v78 = [(MKTransitDeparturesCell *)v193 contentView];
    v79 = [v78 topAnchor];
    v80 = [v77 constraintEqualToAnchor:v79];
    primaryToTopConstraint = v193->_primaryToTopConstraint;
    v193->_primaryToTopConstraint = v80;

    [v192 addObject:v193->_primaryToTopConstraint];
    v82 = [(_MKUILabel *)v193->_primaryLabel leadingAnchor];
    v83 = [v82 constraintEqualToAnchor:v191];
    labelLeadingMarginConstraint = v193->_labelLeadingMarginConstraint;
    v193->_labelLeadingMarginConstraint = v83;

    [v192 addObject:v193->_labelLeadingMarginConstraint];
    v85 = [(UIStackView *)v193->_secondaryTextStackView leadingAnchor];
    v86 = [(_MKUILabel *)v193->_primaryLabel leadingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    [v192 addObject:v87];

    v88 = [(_MKUILabel *)v193->_primaryLabel trailingAnchor];
    v89 = [v194 constraintGreaterThanOrEqualToAnchor:v88 constant:12.0];
    [v192 addObject:v89];

    v90 = [(UIStackView *)v193->_secondaryTextStackView topAnchor];
    v91 = [(_MKUILabel *)v193->_departureLabel topAnchor];
    v92 = [v90 constraintGreaterThanOrEqualToAnchor:v91];
    [v192 addObject:v92];

    v93 = [(UIStackView *)v193->_secondaryTextStackView trailingAnchor];
    v94 = [v194 constraintGreaterThanOrEqualToAnchor:v93 constant:0.0];
    [v192 addObject:v94];

    v95 = [(UIStackView *)v193->_secondaryTextStackView firstBaselineAnchor];
    v96 = [(_MKUILabel *)v193->_primaryLabel lastBaselineAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:20.0];
    secondaryStackToPrimaryConstraint = v193->_secondaryStackToPrimaryConstraint;
    v193->_secondaryStackToPrimaryConstraint = v97;

    [v192 addObject:v193->_secondaryStackToPrimaryConstraint];
    v99 = [(MKTransitDeparturesCell *)v193 contentView];
    v100 = [v99 bottomAnchor];
    v101 = [(UIStackView *)v193->_secondaryTextStackView lastBaselineAnchor];
    v102 = [v100 constraintGreaterThanOrEqualToAnchor:v101];
    secondaryStackToBottomConstraint = v193->_secondaryStackToBottomConstraint;
    v193->_secondaryStackToBottomConstraint = v102;

    [v192 addObject:v193->_secondaryStackToBottomConstraint];
    v104 = [(MKTransitDeparturesCell *)v193 contentView];
    v105 = [v104 bottomAnchor];
    v106 = [(_MKUILabel *)v193->_primaryLabel lastBaselineAnchor];
    v107 = [v105 constraintGreaterThanOrEqualToAnchor:v106];
    primaryToBottomConstraint = v193->_primaryToBottomConstraint;
    v193->_primaryToBottomConstraint = v107;

    [v192 addObject:v193->_primaryToBottomConstraint];
    v109 = [(UIImageView *)v193->_lineImageView superview];
    v110 = [v109 trailingAnchor];
    v111 = [(_MKUILabel *)v193->_primaryLabel leadingAnchor];
    v112 = [v110 constraintEqualToAnchor:v111 constant:-12.0];
    lineImageToTextGutterConstraint = v193->_lineImageToTextGutterConstraint;
    v193->_lineImageToTextGutterConstraint = v112;

    LODWORD(v114) = 1148829696;
    [(NSLayoutConstraint *)v193->_lineImageToTextGutterConstraint setPriority:v114];
    [v192 addObject:v193->_lineImageToTextGutterConstraint];

    self = v193;
    a3 = v190;
    v11 = 0x1E696A000;
  }

  if (a3 == 2)
  {
    v140 = [(UIImageView *)self->_lineImageView topAnchor];
    v141 = [(MKTransitDeparturesCell *)self contentView];
    v142 = [v141 topAnchor];
    v143 = [v140 constraintEqualToAnchor:v142];
    lineImageViewTopConstraint = self->_lineImageViewTopConstraint;
    self->_lineImageViewTopConstraint = v143;

    [v60 addObject:self->_lineImageViewTopConstraint];
    v145 = [(UIStackView *)self->_secondaryTextStackView topAnchor];
    v146 = [(UIImageView *)self->_lineImageView topAnchor];
    v147 = [v145 constraintEqualToAnchor:v146];
    v148 = self->_primaryToTopConstraint;
    self->_primaryToTopConstraint = v147;

    [v192 addObject:self->_primaryToTopConstraint];
    v149 = [(UIStackView *)self->_secondaryTextStackView leadingAnchor];
    v150 = [v149 constraintEqualToAnchor:v191];
    v151 = self->_labelLeadingMarginConstraint;
    self->_labelLeadingMarginConstraint = v150;

    [v192 addObject:self->_labelLeadingMarginConstraint];
    v152 = [(UIImageView *)self->_lineImageView superview];
    v153 = [v152 trailingAnchor];
    v154 = v192;
    v155 = [(UIStackView *)self->_secondaryTextStackView leadingAnchor];
    v156 = [v153 constraintEqualToAnchor:v155 constant:-12.0];
    v157 = self->_lineImageToTextGutterConstraint;
    self->_lineImageToTextGutterConstraint = v156;

    LODWORD(v158) = 1148829696;
    [(NSLayoutConstraint *)self->_lineImageToTextGutterConstraint setPriority:v158];
    [v192 addObject:self->_lineImageToTextGutterConstraint];
    v159 = [(UIImageView *)self->_disclosureArrowImageView firstBaselineAnchor];
    v160 = [(_MKUILabel *)self->_primaryLabel firstBaselineAnchor];
    v161 = [v159 constraintEqualToAnchor:v160 constant:-1.0];
    [v192 addObject:v161];

    v162 = [(UIImageView *)self->_disclosureArrowImageView trailingAnchor];
    v163 = [v162 constraintEqualToAnchor:v194];
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
            v175 = [(UIImageView *)disclosureArrowImageView leadingAnchor];
            v176 = [(_MKUILabel *)self->_primaryLabel trailingAnchor];
            v177 = [v175 constraintEqualToAnchor:v176 constant:4.0];
            v178 = v193->_labelToDisclosureArrowConstraint;
            v193->_labelToDisclosureArrowConstraint = v177;

            self = v193;
            v154 = v192;
            [v192 addObject:v193->_labelToDisclosureArrowConstraint];
            v173 = 1148829696;
          }

          else
          {
            v173 = 1148846080;
          }

          v179 = [(_MKUILabel *)v172 trailingAnchor];
          v180 = [v194 constraintEqualToAnchor:v179];

          LODWORD(v181) = v173;
          [v180 setPriority:v181];
          [v154 addObject:v180];
        }

        v169 = [v167 countByEnumeratingWithState:&v195 objects:v209 count:16];
      }

      while (v169);
    }

    v182 = [(UIStackView *)self->_secondaryTextStackView trailingAnchor];
    v183 = [v194 constraintEqualToAnchor:v182];
    [v154 addObject:v183];

    v184 = [(MKTransitDeparturesCell *)self contentView];
    v185 = [v184 bottomAnchor];
    v186 = [(UIStackView *)self->_secondaryTextStackView bottomAnchor];
    v187 = [v185 constraintEqualToAnchor:v186 constant:8.0];
    [v192 addObject:v187];

    v60 = v192;
  }

  else
  {
    if (a3 == 1)
    {
      v128 = [(UIStackView *)self->_departureStackView topAnchor];
      v129 = [(_MKUILabel *)self->_primaryLabel topAnchor];
      v130 = [v128 constraintEqualToAnchor:v129];
      departureStackViewTopToPrimaryTopConstraint = self->_departureStackViewTopToPrimaryTopConstraint;
      self->_departureStackViewTopToPrimaryTopConstraint = v130;

      [v60 addObject:self->_departureStackViewTopToPrimaryTopConstraint];
      v132 = *(v11 + 3288);
      lineImageView = self->_lineImageView;
      v134 = [(MKTransitDeparturesCell *)self contentView];
      v135 = [v132 constraintWithItem:lineImageView attribute:20 relatedBy:0 toItem:v134 attribute:20 multiplier:1.0 constant:0.0];
      lineImageViewCenteringConstraint = self->_lineImageViewCenteringConstraint;
      self->_lineImageViewCenteringConstraint = v135;

      [v60 addObject:self->_lineImageViewCenteringConstraint];
      v123 = [(UIImageView *)self->_lineImageView topAnchor];
      v124 = [(MKTransitDeparturesCell *)self contentView];
      v137 = [v124 topAnchor];
      v138 = [v123 constraintGreaterThanOrEqualToAnchor:v137];
      v126 = 1256;
      lineImageViewCenteringVerticalPaddingConstraint = self->_lineImageViewCenteringVerticalPaddingConstraint;
      self->_lineImageViewCenteringVerticalPaddingConstraint = v138;
    }

    else
    {
      if (a3)
      {
        goto LABEL_44;
      }

      v118 = [(UIImageView *)self->_lineImageView topAnchor];
      v119 = [(MKTransitDeparturesCell *)self contentView];
      v120 = [v119 topAnchor];
      v121 = [v118 constraintEqualToAnchor:v120];
      v122 = self->_lineImageViewTopConstraint;
      self->_lineImageViewTopConstraint = v121;

      [v60 addObject:self->_lineImageViewTopConstraint];
      v123 = [(UIStackView *)self->_departureStackView topAnchor];
      v124 = [(_MKUILabel *)self->_primaryLabel topAnchor];
      v125 = [v123 constraintEqualToAnchor:v124];
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

- (void)_setCellStyle:(unint64_t)a3
{
  v33[3] = *MEMORY[0x1E69E9840];
  self->_cellStyle = a3;
  if (a3 >= 2)
  {
    if (a3 == 2)
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
    v4 = [(MKTransitDeparturesCell *)self contentView];
    [v4 addSubview:self->_primaryLabel];

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
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = 2;
    goto LABEL_11;
  }

  v6 = [(MKMultiPartLabel *)self->_secondaryLabel text];
  if ([v6 length])
  {
    goto LABEL_6;
  }

  v7 = [(MKMultiPartLabel *)self->_tertiaryLabel text];
  if ([v7 length])
  {

LABEL_6:
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v12 = [(UIButton *)self->_incidentButton isHidden];

  if (!v12)
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
  v9 = [(_MKUILabel *)self->_departureDetailLabel attributedText];
  v10 = [v9 length];

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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  cellStyle = self->_cellStyle;
  v11 = [(MKTransitDeparturesCell *)self _bestCellStyleForCurrentState];
  if (v11 != cellStyle)
  {
    [(MKTransitDeparturesCell *)self _setCellStyle:v11];
    [(UIView *)self _mapkit_updateConstraintsIfNeeded];
  }

  v16.receiver = self;
  v16.super_class = MKTransitDeparturesCell;
  *&v12 = a4;
  *&v13 = a5;
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

- (void)setUseMultilineDeparturesLabel:(BOOL)a3
{
  if (self->_useMultilineDeparturesLabel != a3)
  {
    self->_useMultilineDeparturesLabel = a3;
    [(_MKUILabel *)self->_departureLabel setNumberOfLines:!a3];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v6 layoutSubviews];
  v3 = [(MKTransitDeparturesCell *)self contentView];
  [v3 layoutSubviews];

  v4 = [(MKTransitDeparturesCell *)self _bestCellStyleForCurrentState];
  if (v4 != self->_cellStyle)
  {
    [(MKTransitDeparturesCell *)self _setCellStyle:v4];
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
    v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    v5 = [(MKTransitDeparturesCell *)self contentView];
    [v5 setBackgroundColor:v4];
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
  v10 = [(MKTransitDeparturesCell *)self _newStationCardUIEnabled];
  v11 = self->_lineImageView;
  if (v10)
  {
    v12 = [(UIImageView *)v11 heightAnchor];
    v13 = [v12 constraintEqualToConstant:24.0];
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
  v17 = [(UIView *)self mk_theme];
  v18 = [v17 lightTextColor];
  [(UIImageView *)self->_lineImageView setTintColor:v18];

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
  v24 = [(MKTransitDeparturesCell *)self contentView];
  [v24 addSubview:self->_primaryLabel];

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
  v48 = [(MKTransitDeparturesCell *)self contentView];
  v99 = v47;
  [v48 addSubview:v47];

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
  v60 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)self->_disclosureArrowImageView setTintColor:v60];

  LODWORD(v61) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentCompressionResistancePriority:1 forAxis:v61];
  LODWORD(v62) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentCompressionResistancePriority:0 forAxis:v62];
  LODWORD(v63) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentHuggingPriority:1 forAxis:v63];
  LODWORD(v64) = 1148846080;
  [(UIImageView *)self->_disclosureArrowImageView _mapkit_setContentHuggingPriority:0 forAxis:v64];
  v65 = [(MKTransitDeparturesCell *)self contentView];
  [v65 addSubview:self->_disclosureArrowImageView];

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
  v72 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v72 contentInsets];
  v74 = v73;
  [v72 contentInsets];
  [v72 setContentInsets:{v74, 0.0}];
  v75 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v72 primaryAction:0];
  incidentButton = self->_incidentButton;
  self->_incidentButton = v75;

  v77 = [(MKTransitDeparturesCell *)self traitCollection];
  v78 = [v77 userInterfaceIdiom];

  if (v78 == 5)
  {
    [(UIButton *)self->_incidentButton setPreferredBehavioralStyle:1];
    v79 = self->_incidentButton;
    v80 = [(MKTransitDeparturesCell *)self tintColor];
    [(UIButton *)v79 setTitleColor:v80 forState:0];
  }

  v81 = [objc_opt_class() defaultSecondaryFont];
  v82 = [(UIButton *)self->_incidentButton titleLabel];
  [v82 setFont:v81];

  if ([MEMORY[0x1E696AAE8] _navigation_isRunningInSiri])
  {
    [(UIButton *)self->_incidentButton setEnabled:0];
    v83 = self->_incidentButton;
    v84 = [(UIView *)self mk_theme];
    v85 = [v84 lightTextColor];
    [(UIButton *)v83 setTitleColor:v85 forState:2];
  }

  v86 = [(UIButton *)self->_incidentButton titleLabel];
  [v86 setNumberOfLines:2];

  v87 = [(UIButton *)self->_incidentButton titleLabel];
  [v87 setLineBreakMode:4];

  v88 = [(UIButton *)self->_incidentButton titleLabel];
  [v88 setTextAlignment:4];

  [(UIButton *)self->_incidentButton setContentHorizontalAlignment:4];
  [(UIButton *)self->_incidentButton addTarget:self action:sel__incidentButtonPressed forControlEvents:64];
  [(UIStackView *)self->_secondaryTextStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_secondaryTextStackView set_mk_axis:1];
  [(UIStackView *)self->_secondaryTextStackView setDistribution:0];
  v89 = [(MKTransitDeparturesCell *)self contentView];
  [v89 addSubview:self->_secondaryTextStackView];

  [(UIStackView *)self->_departureStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_departureStackView set_mk_axis:1];
  [(UIStackView *)self->_departureStackView setDistribution:0];
  v90 = [(MKTransitDeparturesCell *)self contentView];
  [v90 addSubview:self->_departureStackView];

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
  v97 = [MEMORY[0x1E696AD88] defaultCenter];
  [v97 addObserver:self selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MKTransitDeparturesCell *)self _updateLabelFonts];
  [(MKTransitDeparturesCell *)self _setCellStyle:0];
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v8 setHighlighted:a3 animated:a4];
  if (v4)
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v6 = ;
  v7 = [(MKTransitDeparturesCell *)self contentView];
  [v7 setBackgroundColor:v6];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v8 setSelected:a3 animated:a4];
  if (v4)
  {
    [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v6 = ;
  v7 = [(MKTransitDeparturesCell *)self contentView];
  [v7 setBackgroundColor:v6];
}

- (void)setInactive:(BOOL)a3
{
  if (self->_inactive != a3)
  {
    self->_inactive = a3;
    if (a3)
    {
      v5 = [(MKMultiPartLabel *)self->_secondaryLabel textColor];
      [(_MKUILabel *)self->_primaryLabel setTextColor:v5];
    }

    else
    {
      v5 = [(UIView *)self mk_theme];
      v6 = [v5 textColor];
      [(_MKUILabel *)self->_primaryLabel setTextColor:v6];
    }

    [(MKTransitDeparturesCell *)self _updateConstraintValues];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MKTransitDeparturesCell;
  [(MKTransitDeparturesCell *)&v4 dealloc];
}

- (MKTransitDeparturesCell)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKTransitDeparturesCell;
  v3 = [(MKCustomSeparatorCell *)&v6 initWithStyle:0 reuseIdentifier:a3];
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

+ (void)useCompressedGutter:(BOOL *)a3 compressedLeading:(BOOL *)a4 forImageWidth:(double)a5 inWidth:(double)a6
{
  v8 = a4;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  [objc_opt_class() _minTextWidth];
  v11 = a6 - v10 - a5;
  if (v11 + -12.0 < 0.0)
  {
    if (v11 + -8.0 >= 0.0)
    {
      v8 = a3;
      if (!a3)
      {
        return;
      }
    }

    else
    {
      if (a3)
      {
        *a3 = 1;
      }

      if (!v8)
      {
        return;
      }
    }

    *v8 = 1;
  }
}

+ (double)_maxExpectedDepartureLabelWidth
{
  if ([a1 _needsUpdateMaxLabelWidths])
  {
    [a1 _calculateMaxLabelWidths];
  }

  return *&sMaxDepartureLabelWidth;
}

+ (void)_calculateMaxLabelWidths
{
  v40[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  v40[0] = v3;
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:*MEMORY[0x1E69A27E8]];
  v40[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [a1 _attributedStringForCountdownDepartures:v5 referenceDate:v6 isShowingNoConnectionEmDash:1];

  v33 = v7;
  v8 = [v7 string];
  v9 = *MEMORY[0x1E69DB648];
  v38 = *MEMORY[0x1E69DB648];
  v10 = [a1 _departureLabelFont];
  v39 = v10;
  v11 = 0x1E695D000uLL;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v8 sizeWithAttributes:v12];
  v14 = v13;

  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [a1 _stringFromTimestampDate:v15 departureTimeZone:0];
  v17 = 0;
  v18 = 0.0;
  while (1)
  {

    if (v17 > 5 || ((1 << v17) & 0x35) == 0)
    {
      break;
    }

    v15 = [MEMORY[0x1E696AEC0] _navigation_formattedDescriptionForLiveStatus:v17 updatedDepartureTimeString:v16];
    if (v15)
    {
      v36 = v9;
      v19 = [a1 _departureDetailLabelFont];
      v37 = v19;
      v20 = [*(v11 + 3872) dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [v15 sizeWithAttributes:v20];
      if (v18 <= v21)
      {
        v34 = v9;
        v22 = [a1 _departureDetailLabelFont];
        v35 = v22;
        [*(v11 + 3872) dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v24 = v23 = v11;
        [v15 sizeWithAttributes:v24];
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
  v27 = [MEMORY[0x1E695DF58] currentLocale];
  v28 = sLastMaxLabelWidthUpdateLocale;
  sLastMaxLabelWidthUpdateLocale = v27;

  v29 = [MEMORY[0x1E69DC668] sharedApplication];
  v30 = [v29 preferredContentSizeCategory];
  v31 = [v30 copy];
  v32 = sLastMaxLabelWidthUpdateContentSizeCategory;
  sLastMaxLabelWidthUpdateContentSizeCategory = v31;
}

+ (BOOL)_needsUpdateMaxLabelWidths
{
  v2 = sLastMaxLabelWidthUpdateLocale;
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  if ([v2 isEqual:v3])
  {
    v4 = sLastMaxLabelWidthUpdateContentSizeCategory;
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 isEqualToString:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (double)maxLineImageWidthforWidth:(double)a3
{
  result = a3 * 0.150000006;
  if (result < 22.0)
  {
    return 22.0;
  }

  return result;
}

+ (void)_addEmDashAttributes:(id)a3
{
  v11 = a3;
  v3 = [v11 string];
  v4 = [v3 rangeOfString:@"—"];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v4;
    v7 = v5;
    v8 = *MEMORY[0x1E69DB650];
    v9 = +[MKInfoCardThemeManager currentTheme];
    v10 = [v9 lightTextColor];
    [v11 addAttribute:v8 value:v10 range:{v6, v7}];
  }
}

+ (void)_enumerateMinutesUntilDepartureDates:(id)a3 withReferenceDate:(id)a4 block:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v23 = 0;
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DF00] date];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v7;
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
        [v15 timeIntervalSinceDate:{v8, v19}];
        v17 = v16;
        if ((GEOTransitDepartureIsImminentDepartureTimeInterval() & 1) != 0 || v17 < -59)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17 / 60;
        }

        v9[2](v9, v15, v18, &v23);
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

+ (id)displayableCountdowDepartureDatesFromDates:(id)a3 withReferenceDate:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [a1 _enumerateMinutesUntilDepartureDates:v6 withReferenceDate:v7 block:v11];

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

+ (id)_attributedStringForCountdownDepartures:(id)a3 referenceDate:(id)a4 isShowingNoConnectionEmDash:(BOOL)a5
{
  v5 = a5;
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = *MEMORY[0x1E69DB648];
  v8 = a4;
  v9 = a3;
  v10 = [a1 _departureLabelFont];
  v17[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v12 = [a1 _stringForCountdownDepartures:v9 referenceDate:v8 isShowingNoConnectionEmDash:v5];

  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:v11];
  [a1 _addEmDashAttributes:v13];
  v14 = [v13 copy];

  return v14;
}

+ (id)_stringForCountdownDepartures:(id)a3 referenceDate:(id)a4 isShowingNoConnectionEmDash:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
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
  [v11 _enumerateMinutesUntilDepartureDates:v7 withReferenceDate:v8 block:v26];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
  if ([v12 count])
  {
    v15 = [v12 _mapkit_componentsJoinedInCommaDelimitedList];
    v16 = _MKLocalizedStringFromThisBundle(@"%@ min [PlaceCard, Transit, Departures, Countdown]");
    v17 = v5;
    v18 = _MKLocalizedStringFromThisBundle(@"min [PlaceCard, Transit, Departures, Countdown, Unit]");
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:v16, v15, v18];
    [v13 addObject:v19];

    v5 = v17;
  }

  if (*(v31 + 24) == 1)
  {
    v20 = +[MKTransitDeparturesCell _nowString];
    [v13 insertObject:v20 atIndex:0];
  }

  v21 = [v12 count];
  if (v5 && v21 + *(v31 + 24) <= 1)
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

  v24 = [v13 _mapkit_componentsJoinedInCommaDelimitedList];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v24;
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

+ (id)_stringFromTimestampDate:(id)a3 departureTimeZone:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = MEMORY[0x1E695DEE8];
    v7 = a3;
    v8 = [v6 currentCalendar];
    v9 = [v8 timeZone];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DFE8] defaultTimeZone];
    }

    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v9;
    }

    v11 = _stringFromTimestampDate_departureTimeZone__onceToken;
    v12 = v10;
    if (v11 != -1)
    {
      dispatch_once(&_stringFromTimestampDate_departureTimeZone__onceToken, &__block_literal_global_97);
    }

    [_stringFromTimestampDate_departureTimeZone__timestampFormatter setTimeZone:v12];

    v13 = [_stringFromTimestampDate_departureTimeZone__timestampFormatter stringFromDate:v7];
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