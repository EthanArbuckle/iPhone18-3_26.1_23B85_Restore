@interface MKPlaceHoursView
- (BOOL)_shouldCollapseTopMessageLabel;
- (MKPlaceHoursView)initWithBusinessHours:(id)a3;
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
- (void)setHoursBuilder:(id)a3;
- (void)setPlaceHoursViewOptions:(unint64_t)a3;
- (void)setTopLabel:(id)a3;
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

  v2 = [(_MKUILabel *)self->_topMessageLabel text];
  v3 = [v2 length] == 0;

  return v3;
}

- (void)_collapseAllLabelsFromOptions
{
  v11 = objc_opt_new();
  if ([(MKPlaceHoursView *)self _shouldCollapseTopMessageLabel])
  {
    v3 = [(_MKUILabel *)self->_topMessageLabel heightAnchor];
    v4 = [v3 constraintEqualToConstant:0.0];
    [v11 addObject:v4];

    if ([(NSArray *)self->_labels count])
    {
      [(MKPlaceHoursView *)self setTopLabel:self->_topDayOrHourLabel];
    }
  }

  placeHoursViewOptions = self->_placeHoursViewOptions;
  if ((placeHoursViewOptions & 0x20) != 0)
  {
    v6 = [(_MKUILabel *)self->_bottomMessageLabel heightAnchor];
    v7 = [v6 constraintEqualToConstant:0.0];
    [v11 addObject:v7];

    placeHoursViewOptions = self->_placeHoursViewOptions;
  }

  if ((placeHoursViewOptions & 0x104) == 0x100)
  {
    collapsableOpenStateLabel = self->_collapsableOpenStateLabel;
    if (collapsableOpenStateLabel)
    {
      v9 = [(_MKUILabel *)collapsableOpenStateLabel heightAnchor];
      v10 = [v9 constraintEqualToConstant:0.0];
      [v11 addObject:v10];
    }
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v11];
}

- (void)_updateHoursView
{
  v2 = self;
  v105[1] = *MEMORY[0x1E69E9840];
  [(MKPlaceHoursView *)self applyRulesForTopAndBottomLabel];
  if (!v2->_hoursBuilder || (v2->_placeHoursViewOptions | 0x40) == 0x40 || ![(GEOBusinessHours *)v2->_businessHours hoursType]|| [(GEOBusinessHours *)v2->_businessHours hoursType]== 4 || [(GEOBusinessHours *)v2->_businessHours hoursType]== 3)
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v2->_topAndBottomLabelConstraints];

    [(MKPlaceHoursView *)v2 _collapseAllLabelsFromOptions];
  }

  else
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:v2->_topAndBottomLabelConstraints];
    v3 = [(MKPlaceHoursView *)v2 formattedHoursData];

    if (v3)
    {
      [(MKPlaceHoursView *)v2 _updateOptionsForCollapsingToSingleLineAndColor];
      if ((v2->_placeHoursViewOptions & 8) != 0)
      {
        [(MKPlaceHoursView *)v2 bounds];
        if (CGRectGetWidth(v107) == 0.0)
        {
          v8 = +[MKSystemController sharedInstance];
          [v8 screenSize];
        }

        [(MKPlaceHoursView *)v2 layoutMargins];
        v5 = [(NSDictionary *)v2->_formattedHoursData objectForKeyedSubscript:@"DaysFull"];
        v85 = [(NSDictionary *)v2->_formattedHoursData objectForKeyedSubscript:@"HoursFull"];
      }

      else
      {
        v4 = [(NSDictionary *)v2->_formattedHoursData objectForKeyedSubscript:@"CurrentHours"];
        v105[0] = v4;
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];

        v6 = [(NSDictionary *)v2->_formattedHoursData objectForKeyedSubscript:@"CurrentOpenState"];
        v103 = v6;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
        v104 = v7;
        v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
      }

      [(NSArray *)v2->_labels makeObjectsPerformSelector:sel_removeFromSuperview];
      v9 = MEMORY[0x1E695E0F0];
      v10 = [MEMORY[0x1E695E0F0] mutableCopy];
      v86 = [v9 mutableCopy];
      v11 = [v9 mutableCopy];
      v94 = [v9 mutableCopy];
      collapsableOpenStateLabel = v2->_collapsableOpenStateLabel;
      v2->_collapsableOpenStateLabel = 0;

      v13 = [(_MKUILabel *)v2->_topMessageLabel firstBaselineAnchor];
      v14 = [(MKPlaceHoursView *)v2 topAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:22.0];
      baselineToTop = v2->_baselineToTop;
      v2->_baselineToTop = v15;

      [v11 addObject:v2->_baselineToTop];
      v17 = &OBJC_IVAR___MKScaleView__useMetric;
      v87 = v5;
      if ([v5 count])
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v90 = v10;
        v89 = v2;
        v96 = v11;
        do
        {
          v22 = v21;
          v23 = [(MKPlaceHoursView *)v2 _standardLabel];
          v24 = [v5 objectAtIndexedSubscript:v18];
          [v23 setText:v24];

          [v94 addObject:v23];
          v88 = v18;
          if (!v18)
          {
            objc_storeStrong(&v2->_topDayOrHourLabel, v23);
            [(MKPlaceHoursView *)v2 setTopLabel:v2->_topDayOrHourLabel];
          }

          v25 = [v23 leadingAnchor];
          v26 = [(MKPlaceHoursView *)v2 layoutMarginsGuide];
          v27 = [v26 leadingAnchor];
          v28 = [v25 constraintEqualToAnchor:v27];
          [v96 addObject:v28];

          v29 = [(MKPlaceHoursView *)v2 bottomAnchor];
          v30 = [v23 lastBaselineAnchor];
          v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
          [v86 addObject:v31];

          if (v2->_placeHoursViewOptions)
          {
            v32 = [v23 trailingAnchor];
            v33 = [(MKPlaceHoursView *)v2 layoutMarginsGuide];
            v34 = [v33 trailingAnchor];
            v35 = [v32 constraintEqualToAnchor:v34];
            [v96 addObject:v35];
          }

          v36 = [v23 firstBaselineAnchor];
          if (v22 && v20)
          {
            v37 = [(_MKUILabel *)v22 lastBaselineAnchor];
            v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37];
            [v10 addObject:v38];

            v36 = [v23 firstBaselineAnchor];
            topMessageLabel = v20;
          }

          else
          {
            topMessageLabel = v2->_topMessageLabel;
          }

          v40 = [(_MKUILabel *)topMessageLabel lastBaselineAnchor];
          v41 = [v36 constraintGreaterThanOrEqualToAnchor:v40];
          [v10 addObject:v41];

          v42 = v23;
          v43 = v42;

          v21 = v43;
          v91 = v21;
          v44 = v88;
          if ((v2->_placeHoursViewOptions & 4) != 0 || v88 >= [v85 count])
          {
            [(_MKUILabel *)v21 set_mapkit_themeColorProvider:0];
            v73 = [(MKPlaceHoursView *)v2 hoursBuilder];
            v74 = [v73 hoursStateLabelColor];
            [(_MKUILabel *)v91 setTextColor:v74];

            v21 = v91;
            v19 = v91;
            v75 = v2->_collapsableOpenStateLabel;
            v2->_collapsableOpenStateLabel = v19;
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
                  v51 = [(MKPlaceHoursView *)v2 _standardLabel];
                  [v51 setText:v50];
                  [v94 addObject:v51];
                  if ((v2->_placeHoursViewOptions & 8) != 0)
                  {
                    v55 = [(MKPlaceHoursView *)v2 layoutMarginsGuide];
                    v56 = [v55 trailingAnchor];
                    v57 = [v51 trailingAnchor];
                    v58 = [v56 constraintEqualToAnchor:v57];
                    [v96 addObject:v58];
                  }

                  else
                  {
                    [v51 set_mapkit_themeColorProvider:0];
                    v52 = [(MKPlaceHoursView *)v2 hoursBuilder];
                    v53 = [v52 hoursStateLabelColor];
                    [v51 setTextColor:v53];

                    v54 = v51;
                    v55 = v2->_collapsableOpenStateLabel;
                    v2->_collapsableOpenStateLabel = v54;
                  }

                  placeHoursViewOptions = v2->_placeHoursViewOptions;
                  v60 = [v51 firstBaselineAnchor];
                  if ((placeHoursViewOptions & 1) != 0 || !v47)
                  {
                    v66 = [(_MKUILabel *)v21 lastBaselineAnchor];
                    v67 = [v60 constraintGreaterThanOrEqualToAnchor:v66 constant:22.0];
                    [v90 addObject:v67];

                    if (v49)
                    {
                      v68 = [v51 firstBaselineAnchor];
                      v69 = [(_MKUILabel *)v49 lastBaselineAnchor];
                      v70 = [v68 constraintGreaterThanOrEqualToAnchor:v69 constant:22.0];
                      [v90 addObject:v70];
                    }

                    v63 = [(MKPlaceHoursView *)v89 layoutMarginsGuide];
                    v64 = [v63 leadingAnchor];
                    v65 = [v51 leadingAnchor];
                    v71 = [v64 constraintLessThanOrEqualToAnchor:v65];
                    [v96 addObject:v71];

                    v2 = v89;
                    v21 = v91;
                  }

                  else
                  {
                    v61 = [(_MKUILabel *)v21 firstBaselineAnchor];
                    v62 = [v60 constraintEqualToAnchor:v61];
                    [v96 addObject:v62];

                    v63 = [v51 leadingAnchor];
                    v64 = [(_MKUILabel *)v21 trailingAnchor];
                    v65 = [v63 constraintGreaterThanOrEqualToAnchor:v64 constant:8.0];
                    [v96 addObject:v65];
                  }

                  v20 = v51;
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
          v76 = [(_MKUILabel *)v2->_bottomMessageLabel firstBaselineAnchor];
          v77 = [(_MKUILabel *)v19 lastBaselineAnchor];
          v78 = [v76 constraintEqualToAnchor:v77 constant:22.0];
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

      v80 = [(MKPlaceHoursView *)v2 bottomAnchor];
      v81 = [*(&v2->super.super.super.isa + v17[693]) lastBaselineAnchor];
      v82 = [v80 constraintEqualToAnchor:v81];
      [v86 addObject:v82];

      objc_storeStrong(&v2->_baselineToBaselineConstraints, v10);
      [v79 addObjectsFromArray:v2->_baselineToBaselineConstraints];
      objc_storeStrong(&v2->_baselineToBottomConstraints, v86);
      [v79 addObjectsFromArray:v2->_baselineToBottomConstraints];
      [MEMORY[0x1E696ACD8] activateConstraints:v79];
      [(MKPlaceHoursView *)v2 _collapseAllLabelsFromOptions];
      objc_storeStrong(&v2->_labels, v94);
      [(MKPlaceHoursView *)v2 _contentSizeDidChange];
      WeakRetained = objc_loadWeakRetained(&v2->_hoursDelegate);
      LOBYTE(v81) = objc_opt_respondsToSelector();

      if (v81)
      {
        v84 = [(MKPlaceHoursView *)v2 hoursDelegate];
        [v84 hoursViewDidUpdate:v2];
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
  v6 = [v5 bodyFont];
  [(_MKUILabel *)v4 setFont:v6];

  [(_MKUILabel *)v4 setNumberOfLines:4];
  [(MKPlaceHoursView *)self addSubview:v4];

  return v4;
}

- (void)infoCardThemeChanged
{
  v7.receiver = self;
  v7.super_class = MKPlaceHoursView;
  [(UIView *)&v7 infoCardThemeChanged];
  v3 = [(MKPlaceHoursView *)self hoursBuilder];
  [v3 updateHoursLabelColor];

  collapsableOpenStateLabel = self->_collapsableOpenStateLabel;
  v5 = [(MKPlaceHoursView *)self hoursBuilder];
  v6 = [v5 hoursStateLabelColor];
  [(_MKUILabel *)collapsableOpenStateLabel setTextColor:v6];
}

- (void)applyRulesForTopAndBottomLabel
{
  p_topMessageLabel = &self->_topMessageLabel;
  [(_MKUILabel *)self->_topMessageLabel setText:&stru_1F15B23C0];
  v4 = *p_topMessageLabel;
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)v4 setTextColor:v5];

  [(_MKUILabel *)self->_bottomMessageLabel setText:&stru_1F15B23C0];
  bottomMessageLabel = self->_bottomMessageLabel;
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [(_MKUILabel *)bottomMessageLabel setTextColor:v7];

  placeHoursViewOptions = self->_placeHoursViewOptions;
  v9 = [(GEOBusinessHours *)self->_businessHours hoursType];
  if ((placeHoursViewOptions & 8) != 0)
  {
    if (v9 <= 2)
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          return;
        }

        p_topMessageLabel = &self->_topLabel;
LABEL_10:
        topLabel = *p_topMessageLabel;
        v11 = [(GEOBusinessHours *)self->_businessHours localizedMessage];
        if (!v11)
        {
          v12 = [_MKLocalizedHoursBuilder localizedHoursDayRangeString:self->_businessHours];
          if (!v12)
          {
            v13 = +[_MKLocalizedHoursBuilder localizedHoursStringSpecialHours];
            [(_MKUILabel *)topLabel setText:v13];

LABEL_21:
            v19 = 0;
            goto LABEL_22;
          }

LABEL_20:
          [(_MKUILabel *)topLabel setText:v12];
          goto LABEL_21;
        }

LABEL_18:
        v19 = v11;
        [(_MKUILabel *)topLabel setText:v11];
        goto LABEL_22;
      }

LABEL_17:
      p_topMessageLabel = &self->_topLabel;
      topLabel = self->_topLabel;
      v11 = [(GEOBusinessHours *)self->_businessHours localizedMessage];
      if (!v11)
      {
        v12 = +[_MKLocalizedHoursBuilder localizedHoursStringNormalHours];
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v9 != 3 && v9 != 4)
  {
    return;
  }

  v14 = *p_topMessageLabel;
  v15 = [(_MKLocalizedHoursBuilder *)self->_hoursBuilder localizedOpenState];
  [(_MKUILabel *)v14 setText:v15];

  v16 = *p_topMessageLabel;
  v17 = [(_MKLocalizedHoursBuilder *)self->_hoursBuilder hoursStateLabelColor];
  [(_MKUILabel *)v16 setTextColor:v17];

  v18 = self->_bottomMessageLabel;
  v19 = [(GEOBusinessHours *)self->_businessHours localizedMessage];
  [(_MKUILabel *)v18 setText:v19];
  p_topMessageLabel = &self->_bottomMessageLabel;
LABEL_22:

  v20 = *p_topMessageLabel;
  v21 = [(MKPlaceHoursView *)self hoursGrayColor];
  [(_MKUILabel *)v20 setTextColor:v21];
}

- (void)setPlaceHoursViewOptions:(unint64_t)a3
{
  if (self->_placeHoursViewOptions != a3)
  {
    self->_placeHoursViewOptions = a3;
    [(MKPlaceHoursView *)self _updateHoursView];
  }
}

- (void)setHoursBuilder:(id)a3
{
  v5 = a3;
  if (self->_hoursBuilder != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_hoursBuilder, a3);
    [(MKPlaceHoursView *)self _updateHoursView];
    v5 = v6;
  }
}

- (NSDictionary)formattedHoursData
{
  if (self->_placeHoursViewOptions)
  {
    v3 = [(MKPlaceHoursView *)self hoursBuilder];
    v4 = [v3 formatData:self->_placeDailyHours];
    formattedHoursData = self->_formattedHoursData;
    self->_formattedHoursData = v4;
  }

  v6 = self->_formattedHoursData;

  return v6;
}

- (void)setTopLabel:(id)a3
{
  v5 = a3;
  if (self->_topLabel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_topLabel, a3);
    v5 = v6;
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
  v4 = [v3 bodyFont];
  [v4 _mapkit_scaledValueForValue:22.0];
  [(NSLayoutConstraint *)self->_baselineToTop setConstant:?];

  v5 = +[MKFontManager sharedManager];
  v6 = [v5 bodyFont];
  [v6 _mapkit_scaledValueForValue:22.0];
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
  v15 = [v14 bodyFont];
  [v15 _mapkit_scaledValueForValue:17.0];
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  v4 = [(MKPlaceHoursView *)self _standardLabel];
  topMessageLabel = self->_topMessageLabel;
  self->_topMessageLabel = v4;

  [(_MKUILabel *)self->_topMessageLabel set_mapkit_themeColorProvider:0];
  v6 = self->_topMessageLabel;
  v7 = [MEMORY[0x1E69DC888] grayColor];
  [(_MKUILabel *)v6 setTextColor:v7];

  v8 = [(MKPlaceHoursView *)self _standardLabel];
  bottomMessageLabel = self->_bottomMessageLabel;
  self->_bottomMessageLabel = v8;

  [(_MKUILabel *)self->_bottomMessageLabel set_mapkit_themeColorProvider:0];
  v10 = self->_bottomMessageLabel;
  v11 = [MEMORY[0x1E69DC888] grayColor];
  [(_MKUILabel *)v10 setTextColor:v11];

  v33 = MEMORY[0x1E696ACD8];
  v41 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  v39 = [v41 leadingAnchor];
  v38 = [(_MKUILabel *)self->_topMessageLabel leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v44[0] = v37;
  v36 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  v35 = [v36 trailingAnchor];
  v34 = [(_MKUILabel *)self->_topMessageLabel trailingAnchor];
  v32 = [v35 constraintEqualToAnchor:v34];
  v44[1] = v32;
  v31 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  v12 = [v31 leadingAnchor];
  v13 = [(_MKUILabel *)self->_bottomMessageLabel leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v44[2] = v14;
  v15 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  v16 = [v15 trailingAnchor];
  v17 = [(_MKUILabel *)self->_bottomMessageLabel trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v44[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v33 activateConstraints:v19];

  v42 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  v40 = [v42 topAnchor];
  v20 = [(_MKUILabel *)self->_topMessageLabel topAnchor];
  v21 = [v40 constraintEqualToAnchor:v20];
  v43[0] = v21;
  v22 = [(_MKUILabel *)self->_topMessageLabel bottomAnchor];
  v23 = [(_MKUILabel *)self->_bottomMessageLabel topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v43[1] = v24;
  v25 = [(MKPlaceHoursView *)self layoutMarginsGuide];
  v26 = [v25 bottomAnchor];
  v27 = [(_MKUILabel *)self->_bottomMessageLabel bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v43[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
  topAndBottomLabelConstraints = self->_topAndBottomLabelConstraints;
  self->_topAndBottomLabelConstraints = v29;
}

- (MKPlaceHoursView)initWithBusinessHours:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MKPlaceHoursView;
  v6 = [(MKPlaceHoursView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessHours, a3);
    v8 = [(GEOBusinessHours *)v7->_businessHours placeDailyHours];
    placeDailyHours = v7->_placeDailyHours;
    v7->_placeDailyHours = v8;

    [(MKPlaceHoursView *)v7 _commonInit];
  }

  return v7;
}

@end