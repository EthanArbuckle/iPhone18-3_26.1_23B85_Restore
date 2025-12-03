@interface MKPlaceHoursView
- (BOOL)_shouldCollapseTopMessageLabel;
- (MKPlaceHoursView)initWithBusinessHours:(id)hours;
- (MKPlaceHoursViewDelegate)hoursDelegate;
- (NSDictionary)formattedHoursData;
- (_MKUILabel)topLabel;
- (id)_standardLabel;
- (id)hoursGrayColor;
- (void)_collapseAllLabelsFromOptions;
- (void)_commonInit;
- (void)_contentSizeDidChange;
- (void)_updateHoursView;
- (void)_updateOptionsForCollapsingToSingleLineAndColor;
- (void)applyRulesForTopAndBottomLabel;
- (void)infoCardThemeChanged;
- (void)setHoursBuilder:(id)builder;
- (void)setPlaceHoursViewOptions:(unint64_t)options;
- (void)setTopLabel:(id)label;
@end

@implementation MKPlaceHoursView

- (MKPlaceHoursViewDelegate)hoursDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hoursDelegate);

  return WeakRetained;
}

- (BOOL)_shouldCollapseTopMessageLabel
{
  if ((self->_placeHoursViewOptions & 0x10) != 0)
  {
    return 1;
  }

  text = [(_MKUILabel *)self->_topMessageLabel text];
  v3 = [text length] == 0;

  return v3;
}

- (void)_collapseAllLabelsFromOptions
{
  v11 = objc_opt_new();
  if ([(MKPlaceHoursView *)self _shouldCollapseTopMessageLabel])
  {
    heightAnchor = [(_MKUILabel *)self->_topMessageLabel heightAnchor];
    v4 = [heightAnchor constraintEqualToConstant:0.0];
    [v11 addObject:v4];

    if ([(NSArray *)self->_labels count])
    {
      [(MKPlaceHoursView *)self setTopLabel:self->_topDayOrHourLabel];
    }
  }

  placeHoursViewOptions = self->_placeHoursViewOptions;
  if ((placeHoursViewOptions & 0x20) != 0)
  {
    heightAnchor2 = [(_MKUILabel *)self->_bottomMessageLabel heightAnchor];
    v7 = [heightAnchor2 constraintEqualToConstant:0.0];
    [v11 addObject:v7];

    placeHoursViewOptions = self->_placeHoursViewOptions;
  }

  if ((placeHoursViewOptions & 0x104) == 0x100)
  {
    collapsableOpenStateLabel = self->_collapsableOpenStateLabel;
    if (collapsableOpenStateLabel)
    {
      heightAnchor3 = [(_MKUILabel *)collapsableOpenStateLabel heightAnchor];
      v10 = [heightAnchor3 constraintEqualToConstant:0.0];
      [v11 addObject:v10];
    }
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v11];
}

- (void)_updateHoursView
{
  selfCopy = self;
  v105[1] = *MEMORY[0x1E69E9840];
  [(MKPlaceHoursView *)self applyRulesForTopAndBottomLabel];
  if (!selfCopy->_hoursBuilder || (selfCopy->_placeHoursViewOptions | 0x40) == 0x40 || ![(GEOBusinessHours *)selfCopy->_businessHours hoursType]|| [(GEOBusinessHours *)selfCopy->_businessHours hoursType]== 4 || [(GEOBusinessHours *)selfCopy->_businessHours hoursType]== 3)
  {
    [MEMORY[0x1E696ACD8] activateConstraints:selfCopy->_topAndBottomLabelConstraints];

    [(MKPlaceHoursView *)selfCopy _collapseAllLabelsFromOptions];
  }

  else
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:selfCopy->_topAndBottomLabelConstraints];
    formattedHoursData = [(MKPlaceHoursView *)selfCopy formattedHoursData];

    if (formattedHoursData)
    {
      [(MKPlaceHoursView *)selfCopy _updateOptionsForCollapsingToSingleLineAndColor];
      if ((selfCopy->_placeHoursViewOptions & 8) != 0)
      {
        [(MKPlaceHoursView *)selfCopy bounds];
        if (CGRectGetWidth(v107) == 0.0)
        {
          v8 = +[MKSystemController sharedInstance];
          [v8 screenSize];
        }

        [(MKPlaceHoursView *)selfCopy layoutMargins];
        v5 = [(NSDictionary *)selfCopy->_formattedHoursData objectForKeyedSubscript:@"DaysFull"];
        v85 = [(NSDictionary *)selfCopy->_formattedHoursData objectForKeyedSubscript:@"HoursFull"];
      }

      else
      {
        v4 = [(NSDictionary *)selfCopy->_formattedHoursData objectForKeyedSubscript:@"CurrentHours"];
        v105[0] = v4;
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];

        v6 = [(NSDictionary *)selfCopy->_formattedHoursData objectForKeyedSubscript:@"CurrentOpenState"];
        v103 = v6;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
        v104 = v7;
        v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
      }

      [(NSArray *)selfCopy->_labels makeObjectsPerformSelector:sel_removeFromSuperview];
      v9 = MEMORY[0x1E695E0F0];
      v10 = [MEMORY[0x1E695E0F0] mutableCopy];
      v86 = [v9 mutableCopy];
      v11 = [v9 mutableCopy];
      v94 = [v9 mutableCopy];
      collapsableOpenStateLabel = selfCopy->_collapsableOpenStateLabel;
      selfCopy->_collapsableOpenStateLabel = 0;

      firstBaselineAnchor = [(_MKUILabel *)selfCopy->_topMessageLabel firstBaselineAnchor];
      topAnchor = [(MKPlaceHoursView *)selfCopy topAnchor];
      v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:22.0];
      baselineToTop = selfCopy->_baselineToTop;
      selfCopy->_baselineToTop = v15;

      [v11 addObject:selfCopy->_baselineToTop];
      v17 = &OBJC_IVAR___MKScaleView__useMetric;
      v87 = v5;
      if ([v5 count])
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v90 = v10;
        v89 = selfCopy;
        v96 = v11;
        do
        {
          v22 = v21;
          _standardLabel = [(MKPlaceHoursView *)selfCopy _standardLabel];
          v24 = [v5 objectAtIndexedSubscript:v18];
          [_standardLabel setText:v24];

          [v94 addObject:_standardLabel];
          v88 = v18;
          if (!v18)
          {
            objc_storeStrong(&selfCopy->_topDayOrHourLabel, _standardLabel);
            [(MKPlaceHoursView *)selfCopy setTopLabel:selfCopy->_topDayOrHourLabel];
          }

          leadingAnchor = [_standardLabel leadingAnchor];
          layoutMarginsGuide = [(MKPlaceHoursView *)selfCopy layoutMarginsGuide];
          leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
          v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          [v96 addObject:v28];

          bottomAnchor = [(MKPlaceHoursView *)selfCopy bottomAnchor];
          lastBaselineAnchor = [_standardLabel lastBaselineAnchor];
          v31 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor];
          [v86 addObject:v31];

          if (selfCopy->_placeHoursViewOptions)
          {
            trailingAnchor = [_standardLabel trailingAnchor];
            layoutMarginsGuide2 = [(MKPlaceHoursView *)selfCopy layoutMarginsGuide];
            trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
            v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
            [v96 addObject:v35];
          }

          firstBaselineAnchor2 = [_standardLabel firstBaselineAnchor];
          if (v22 && v20)
          {
            lastBaselineAnchor2 = [(_MKUILabel *)v22 lastBaselineAnchor];
            v38 = [firstBaselineAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
            [v10 addObject:v38];

            firstBaselineAnchor2 = [_standardLabel firstBaselineAnchor];
            topMessageLabel = v20;
          }

          else
          {
            topMessageLabel = selfCopy->_topMessageLabel;
          }

          lastBaselineAnchor3 = [(_MKUILabel *)topMessageLabel lastBaselineAnchor];
          v41 = [firstBaselineAnchor2 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor3];
          [v10 addObject:v41];

          v42 = _standardLabel;
          v43 = v42;

          v21 = v43;
          v91 = v21;
          v44 = v88;
          if ((selfCopy->_placeHoursViewOptions & 4) != 0 || v88 >= [v85 count])
          {
            [(_MKUILabel *)v21 set_mapkit_themeColorProvider:0];
            hoursBuilder = [(MKPlaceHoursView *)selfCopy hoursBuilder];
            hoursStateLabelColor = [hoursBuilder hoursStateLabelColor];
            [(_MKUILabel *)v91 setTextColor:hoursStateLabelColor];

            v21 = v91;
            v19 = v91;
            v75 = selfCopy->_collapsableOpenStateLabel;
            selfCopy->_collapsableOpenStateLabel = v19;
            v47 = v19;
            v5 = v87;
          }

          else
          {
            v45 = [v85 objectAtIndexedSubscript:v88];
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            obj = v45;
            v5 = v87;
            v95 = [(_MKUILabel *)v45 countByEnumeratingWithState:&v98 objects:v102 count:16];
            if (v95)
            {
              v93 = *v99;
              v46 = v21;
              v47 = v21;
              do
              {
                v48 = 0;
                v49 = v20;
                do
                {
                  v97 = v46;
                  if (*v99 != v93)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v50 = *(*(&v98 + 1) + 8 * v48);
                  _standardLabel2 = [(MKPlaceHoursView *)selfCopy _standardLabel];
                  [_standardLabel2 setText:v50];
                  [v94 addObject:_standardLabel2];
                  if ((selfCopy->_placeHoursViewOptions & 8) != 0)
                  {
                    layoutMarginsGuide3 = [(MKPlaceHoursView *)selfCopy layoutMarginsGuide];
                    trailingAnchor3 = [layoutMarginsGuide3 trailingAnchor];
                    trailingAnchor4 = [_standardLabel2 trailingAnchor];
                    v58 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
                    [v96 addObject:v58];
                  }

                  else
                  {
                    [_standardLabel2 set_mapkit_themeColorProvider:0];
                    hoursBuilder2 = [(MKPlaceHoursView *)selfCopy hoursBuilder];
                    hoursStateLabelColor2 = [hoursBuilder2 hoursStateLabelColor];
                    [_standardLabel2 setTextColor:hoursStateLabelColor2];

                    v54 = _standardLabel2;
                    layoutMarginsGuide3 = selfCopy->_collapsableOpenStateLabel;
                    selfCopy->_collapsableOpenStateLabel = v54;
                  }

                  placeHoursViewOptions = selfCopy->_placeHoursViewOptions;
                  firstBaselineAnchor3 = [_standardLabel2 firstBaselineAnchor];
                  if ((placeHoursViewOptions & 1) != 0 || !v47)
                  {
                    lastBaselineAnchor4 = [(_MKUILabel *)v21 lastBaselineAnchor];
                    v67 = [firstBaselineAnchor3 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor4 constant:22.0];
                    [v90 addObject:v67];

                    if (v49)
                    {
                      firstBaselineAnchor4 = [_standardLabel2 firstBaselineAnchor];
                      lastBaselineAnchor5 = [(_MKUILabel *)v49 lastBaselineAnchor];
                      v70 = [firstBaselineAnchor4 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor5 constant:22.0];
                      [v90 addObject:v70];
                    }

                    layoutMarginsGuide4 = [(MKPlaceHoursView *)v89 layoutMarginsGuide];
                    leadingAnchor3 = [layoutMarginsGuide4 leadingAnchor];
                    leadingAnchor4 = [_standardLabel2 leadingAnchor];
                    v71 = [leadingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor4];
                    [v96 addObject:v71];

                    selfCopy = v89;
                    v21 = v91;
                  }

                  else
                  {
                    firstBaselineAnchor5 = [(_MKUILabel *)v21 firstBaselineAnchor];
                    v62 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor5];
                    [v96 addObject:v62];

                    layoutMarginsGuide4 = [_standardLabel2 leadingAnchor];
                    leadingAnchor3 = [(_MKUILabel *)v21 trailingAnchor];
                    leadingAnchor4 = [layoutMarginsGuide4 constraintGreaterThanOrEqualToAnchor:leadingAnchor3 constant:8.0];
                    [v96 addObject:leadingAnchor4];
                  }

                  v20 = _standardLabel2;
                  v47 = 0;
                  ++v48;
                  v49 = v20;
                  v46 = v20;
                }

                while (v95 != v48);
                v72 = [(_MKUILabel *)obj countByEnumeratingWithState:&v98 objects:v102 count:16];
                v47 = 0;
                v46 = v20;
                v95 = v72;
              }

              while (v72);
              v19 = v20;
              v5 = v87;
              v44 = v88;
            }

            else
            {
              v19 = v21;
              v47 = v21;
            }

            v75 = obj;
          }

          v18 = v44 + 1;
          v10 = v90;
        }

        while (v18 < [v5 count]);
        if (v19)
        {
          firstBaselineAnchor6 = [(_MKUILabel *)selfCopy->_bottomMessageLabel firstBaselineAnchor];
          lastBaselineAnchor6 = [(_MKUILabel *)v19 lastBaselineAnchor];
          v78 = [firstBaselineAnchor6 constraintEqualToAnchor:lastBaselineAnchor6 constant:22.0];
          v79 = v96;
          [v96 addObject:v78];

          v17 = &OBJC_IVAR___MKScaleView__useMetric;
        }

        else
        {
          v79 = v96;
          v17 = &OBJC_IVAR___MKScaleView__useMetric;
        }
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v91 = 0;
        v79 = v11;
      }

      bottomAnchor2 = [(MKPlaceHoursView *)selfCopy bottomAnchor];
      lastBaselineAnchor7 = [*(&selfCopy->super.super.super.isa + v17[693]) lastBaselineAnchor];
      v82 = [bottomAnchor2 constraintEqualToAnchor:lastBaselineAnchor7];
      [v86 addObject:v82];

      objc_storeStrong(&selfCopy->_baselineToBaselineConstraints, v10);
      [v79 addObjectsFromArray:selfCopy->_baselineToBaselineConstraints];
      objc_storeStrong(&selfCopy->_baselineToBottomConstraints, v86);
      [v79 addObjectsFromArray:selfCopy->_baselineToBottomConstraints];
      [MEMORY[0x1E696ACD8] activateConstraints:v79];
      [(MKPlaceHoursView *)selfCopy _collapseAllLabelsFromOptions];
      objc_storeStrong(&selfCopy->_labels, v94);
      [(MKPlaceHoursView *)selfCopy _contentSizeDidChange];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_hoursDelegate);
      LOBYTE(lastBaselineAnchor7) = objc_opt_respondsToSelector();

      if (lastBaselineAnchor7)
      {
        hoursDelegate = [(MKPlaceHoursView *)selfCopy hoursDelegate];
        [hoursDelegate hoursViewDidUpdate:selfCopy];
      }
    }
  }
}

- (void)_updateOptionsForCollapsingToSingleLineAndColor
{
  self->_placeHoursViewOptions &= ~4uLL;
  v3 = ([(_MKLocalizedHoursBuilder *)self->_hoursBuilder geoMapItemOpeningHourOptions]& 8) != 0 && (self->_placeHoursViewOptions & 8) == 0;
  v4 = ([(_MKLocalizedHoursBuilder *)self->_hoursBuilder geoMapItemOpeningHourOptions]& 0x10) != 0 && (self->_placeHoursViewOptions & 8) == 0;
  if (v3 || v4)
  {
    self->_placeHoursViewOptions |= 4uLL;
  }
}

- (id)_standardLabel
{
  v3 = [_MKUILabel alloc];
  v4 = [(_MKUILabel *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(_MKUILabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_MKUILabel *)v4 set_mapkit_themeColorProvider:&__block_literal_global_41971];
  v5 = +[MKFontManager sharedManager];
  bodyFont = [v5 bodyFont];
  [(_MKUILabel *)v4 setFont:bodyFont];

  [(_MKUILabel *)v4 setNumberOfLines:4];
  [(MKPlaceHoursView *)self addSubview:v4];

  return v4;
}

- (void)infoCardThemeChanged
{
  v7.receiver = self;
  v7.super_class = MKPlaceHoursView;
  [(UIView *)&v7 infoCardThemeChanged];
  hoursBuilder = [(MKPlaceHoursView *)self hoursBuilder];
  [hoursBuilder updateHoursLabelColor];

  collapsableOpenStateLabel = self->_collapsableOpenStateLabel;
  hoursBuilder2 = [(MKPlaceHoursView *)self hoursBuilder];
  hoursStateLabelColor = [hoursBuilder2 hoursStateLabelColor];
  [(_MKUILabel *)collapsableOpenStateLabel setTextColor:hoursStateLabelColor];
}

- (void)applyRulesForTopAndBottomLabel
{
  p_topMessageLabel = &self->_topMessageLabel;
  [(_MKUILabel *)self->_topMessageLabel setText:&stru_1F15B23C0];
  v4 = *p_topMessageLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)v4 setTextColor:clearColor];

  [(_MKUILabel *)self->_bottomMessageLabel setText:&stru_1F15B23C0];
  bottomMessageLabel = self->_bottomMessageLabel;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)bottomMessageLabel setTextColor:clearColor2];

  placeHoursViewOptions = self->_placeHoursViewOptions;
  hoursType = [(GEOBusinessHours *)self->_businessHours hoursType];
  if ((placeHoursViewOptions & 8) != 0)
  {
    if (hoursType <= 2)
    {
      if (hoursType != 1)
      {
        if (hoursType != 2)
        {
          return;
        }

        p_topMessageLabel = &self->_topLabel;
LABEL_10:
        topLabel = *p_topMessageLabel;
        localizedMessage = [(GEOBusinessHours *)self->_businessHours localizedMessage];
        if (!localizedMessage)
        {
          v12 = [_MKLocalizedHoursBuilder localizedHoursDayRangeString:self->_businessHours];
          if (!v12)
          {
            v13 = +[_MKLocalizedHoursBuilder localizedHoursStringSpecialHours];
            [(_MKUILabel *)topLabel setText:v13];

LABEL_21:
            localizedMessage2 = 0;
            goto LABEL_22;
          }

LABEL_20:
          [(_MKUILabel *)topLabel setText:v12];
          goto LABEL_21;
        }

LABEL_18:
        localizedMessage2 = localizedMessage;
        [(_MKUILabel *)topLabel setText:localizedMessage];
        goto LABEL_22;
      }

LABEL_17:
      p_topMessageLabel = &self->_topLabel;
      topLabel = self->_topLabel;
      localizedMessage = [(GEOBusinessHours *)self->_businessHours localizedMessage];
      if (!localizedMessage)
      {
        v12 = +[_MKLocalizedHoursBuilder localizedHoursStringNormalHours];
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if (hoursType <= 2)
  {
    if (hoursType != 1)
    {
      if (hoursType != 2)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (hoursType != 3 && hoursType != 4)
  {
    return;
  }

  v14 = *p_topMessageLabel;
  localizedOpenState = [(_MKLocalizedHoursBuilder *)self->_hoursBuilder localizedOpenState];
  [(_MKUILabel *)v14 setText:localizedOpenState];

  v16 = *p_topMessageLabel;
  hoursStateLabelColor = [(_MKLocalizedHoursBuilder *)self->_hoursBuilder hoursStateLabelColor];
  [(_MKUILabel *)v16 setTextColor:hoursStateLabelColor];

  v18 = self->_bottomMessageLabel;
  localizedMessage2 = [(GEOBusinessHours *)self->_businessHours localizedMessage];
  [(_MKUILabel *)v18 setText:localizedMessage2];
  p_topMessageLabel = &self->_bottomMessageLabel;
LABEL_22:

  v20 = *p_topMessageLabel;
  hoursGrayColor = [(MKPlaceHoursView *)self hoursGrayColor];
  [(_MKUILabel *)v20 setTextColor:hoursGrayColor];
}

- (void)setPlaceHoursViewOptions:(unint64_t)options
{
  if (self->_placeHoursViewOptions != options)
  {
    self->_placeHoursViewOptions = options;
    [(MKPlaceHoursView *)self _updateHoursView];
  }
}

- (void)setHoursBuilder:(id)builder
{
  builderCopy = builder;
  if (self->_hoursBuilder != builderCopy)
  {
    v6 = builderCopy;
    objc_storeStrong(&self->_hoursBuilder, builder);
    [(MKPlaceHoursView *)self _updateHoursView];
    builderCopy = v6;
  }
}

- (NSDictionary)formattedHoursData
{
  if (self->_placeHoursViewOptions)
  {
    hoursBuilder = [(MKPlaceHoursView *)self hoursBuilder];
    v4 = [hoursBuilder formatData:self->_placeDailyHours];
    formattedHoursData = self->_formattedHoursData;
    self->_formattedHoursData = v4;
  }

  v6 = self->_formattedHoursData;

  return v6;
}

- (void)setTopLabel:(id)label
{
  labelCopy = label;
  if (self->_topLabel != labelCopy)
  {
    v6 = labelCopy;
    objc_storeStrong(&self->_topLabel, label);
    labelCopy = v6;
  }
}

- (_MKUILabel)topLabel
{
  if (![(MKPlaceHoursView *)self _shouldCollapseTopMessageLabel]|| (topMessageLabel = self->_topDayOrHourLabel) == 0)
  {
    topMessageLabel = self->_topMessageLabel;
  }

  v4 = topMessageLabel;
  topLabel = self->_topLabel;
  self->_topLabel = v4;

  v6 = self->_topLabel;

  return v6;
}

- (void)_contentSizeDidChange
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = +[MKFontManager sharedManager];
  bodyFont = [v3 bodyFont];
  [bodyFont _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_baselineToTop setConstant:?];

  v5 = +[MKFontManager sharedManager];
  bodyFont2 = [v5 bodyFont];
  [bodyFont2 _mapkit_scaledValueForValue:22.0];
  v8 = v7;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = self->_baselineToBaselineConstraints;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v27 + 1) + 8 * v13++) setConstant:v8];
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v14 = +[MKFontManager sharedManager];
  bodyFont3 = [v14 bodyFont];
  [bodyFont3 _mapkit_scaledValueForValue:17.0];
  v17 = v16;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = self->_baselineToBottomConstraints;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * v22++) setConstant:{v17, v23}];
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

- (id)hoursGrayColor
{
  if (MapKitIdiomIsMacCatalyst())
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] grayColor];
  }
  v2 = ;

  return v2;
}

- (void)_commonInit
{
  v44[4] = *MEMORY[0x1E69E9840];
  [(MKPlaceHoursView *)self setPreservesSuperviewLayoutMargins:1];
  [(MKPlaceHoursView *)self setClipsToBounds:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  _standardLabel = [(MKPlaceHoursView *)self _standardLabel];
  topMessageLabel = self->_topMessageLabel;
  self->_topMessageLabel = _standardLabel;

  [(_MKUILabel *)self->_topMessageLabel set_mapkit_themeColorProvider:0];
  v6 = self->_topMessageLabel;
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  [(_MKUILabel *)v6 setTextColor:grayColor];

  _standardLabel2 = [(MKPlaceHoursView *)self _standardLabel];
  bottomMessageLabel = self->_bottomMessageLabel;
  self->_bottomMessageLabel = _standardLabel2;

  [(_MKUILabel *)self->_bottomMessageLabel set_mapkit_themeColorProvider:0];
  v10 = self->_bottomMessageLabel;
  grayColor2 = [MEMORY[0x1E69DC888] grayColor];
  [(_MKUILabel *)v10 setTextColor:grayColor2];

  v33 = MEMORY[0x1E696ACD8];
  layoutMarginsGuide = [(MKPlaceHoursView *)self layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  leadingAnchor2 = [(_MKUILabel *)self->_topMessageLabel leadingAnchor];
  v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v37;
  layoutMarginsGuide2 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [(_MKUILabel *)self->_topMessageLabel trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v32;
  layoutMarginsGuide3 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  leadingAnchor3 = [layoutMarginsGuide3 leadingAnchor];
  leadingAnchor4 = [(_MKUILabel *)self->_bottomMessageLabel leadingAnchor];
  v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v44[2] = v14;
  layoutMarginsGuide4 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
  trailingAnchor4 = [(_MKUILabel *)self->_bottomMessageLabel trailingAnchor];
  v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v44[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v33 activateConstraints:v19];

  layoutMarginsGuide5 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide5 topAnchor];
  topAnchor2 = [(_MKUILabel *)self->_topMessageLabel topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v21;
  bottomAnchor = [(_MKUILabel *)self->_topMessageLabel bottomAnchor];
  topAnchor3 = [(_MKUILabel *)self->_bottomMessageLabel topAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v43[1] = v24;
  layoutMarginsGuide6 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide6 bottomAnchor];
  bottomAnchor3 = [(_MKUILabel *)self->_bottomMessageLabel bottomAnchor];
  v28 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v43[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  topAndBottomLabelConstraints = self->_topAndBottomLabelConstraints;
  self->_topAndBottomLabelConstraints = v29;
}

- (MKPlaceHoursView)initWithBusinessHours:(id)hours
{
  hoursCopy = hours;
  v11.receiver = self;
  v11.super_class = MKPlaceHoursView;
  v6 = [(MKPlaceHoursView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessHours, hours);
    placeDailyHours = [(GEOBusinessHours *)v7->_businessHours placeDailyHours];
    placeDailyHours = v7->_placeDailyHours;
    v7->_placeDailyHours = placeDailyHours;

    [(MKPlaceHoursView *)v7 _commonInit];
  }

  return v7;
}

@end