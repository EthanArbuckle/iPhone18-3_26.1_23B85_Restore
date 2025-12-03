@interface _PKInkAttributesPickerView
+ (id)angleWeightsToImages;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_PKInkAttributesPickerView)initWithInk:(id)ink toolConfiguration:(id)configuration;
- (_PKInkAttributesPickerViewDelegate)delegate;
- (int64_t)colorUserInterfaceStyle;
- (void)_azimuthValueChanged:(id)changed;
- (void)_colorAlphaSliderUserDidEndDraggingSlider:(id)slider;
- (void)_colorAlphaSliderUserDidStartDraggingSlider:(id)slider;
- (void)_opacityValueChanged:(id)changed;
- (void)_thicknessValueChanged:(id)changed;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setInk:(id)ink animated:(BOOL)animated;
- (void)setMinimumOpacityValue:(double)value;
- (void)setShowsTopSeparator:(BOOL)separator;
@end

@implementation _PKInkAttributesPickerView

+ (id)angleWeightsToImages
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___PKInkAttributesPickerView_angleWeightsToImages__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EC297250 != -1)
  {
    dispatch_once(&qword_1EC297250, block);
  }

  v2 = _MergedGlobals_9;

  return v2;
}

- (_PKInkAttributesPickerView)initWithInk:(id)ink toolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v39.receiver = self;
  v39.super_class = _PKInkAttributesPickerView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  inkCopy = ink;
  v13 = [(_PKInkAttributesPickerView *)&v39 initWithFrame:v8, v9, v10, v11];
  v13->_minimumOpacityValue = 0.0;
  objc_storeStrong(&v13->_toolConfiguration, configuration);
  v14 = [[_PKInkThicknessPicker alloc] initWithToolConfiguration:configurationCopy];
  thicknessPicker = v13->_thicknessPicker;
  v13->_thicknessPicker = v14;

  [(_PKInkThicknessPicker *)v13->_thicknessPicker addTarget:v13 action:sel__thicknessValueChanged_ forControlEvents:4096];
  thicknessPicker = [(_PKInkAttributesPickerView *)v13 thicknessPicker];
  [(_PKInkAttributesPickerView *)v13 addSubview:thicknessPicker];

  v17 = [_PKInkThicknessPicker alloc];
  v18 = +[_PKInkAttributesPickerView angleWeightsToImages];
  v19 = [PKToolConfiguration _orderedAzimuthValuesForToolWithIdentifier:@"com.apple.ink.reedcalligraphy"];
  v20 = [(_PKInkThicknessPicker *)v17 initWithWeightsToButtonImages:v18 sortedWeights:v19];
  azimuthPicker = v13->_azimuthPicker;
  v13->_azimuthPicker = v20;

  [(_PKInkThicknessPicker *)v13->_azimuthPicker addTarget:v13 action:sel__azimuthValueChanged_ forControlEvents:4096];
  azimuthPicker = [(_PKInkAttributesPickerView *)v13 azimuthPicker];
  [(_PKInkAttributesPickerView *)v13 addSubview:azimuthPicker];

  v23 = [[_PKColorAlphaSliderIOS alloc] initWithFrame:v8, v9, v10, v11];
  colorAlphaSliderView = v13->_colorAlphaSliderView;
  v13->_colorAlphaSliderView = &v23->super;

  objc_storeStrong(&v13->_colorAlphaSlider, v13->_colorAlphaSliderView);
  [(_PKColorAlphaSlider *)v13->_colorAlphaSlider setDelegate:v13];
  [(_PKColorAlphaSlider *)v13->_colorAlphaSlider setMaxAlpha:1.0];
  colorAlphaSliderView = [(_PKInkAttributesPickerView *)v13 colorAlphaSliderView];
  [(_PKInkAttributesPickerView *)v13 addSubview:colorAlphaSliderView];

  v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
  topSeparatorView = v13->_topSeparatorView;
  v13->_topSeparatorView = v26;

  pk_separatorLineColor = [MEMORY[0x1E69DC888] pk_separatorLineColor];
  [(UIView *)v13->_topSeparatorView setBackgroundColor:pk_separatorLineColor];

  [(_PKInkAttributesPickerView *)v13 addSubview:v13->_topSeparatorView];
  v29 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
  middleSeparatorViewB = v13->_middleSeparatorViewB;
  v13->_middleSeparatorViewB = v29;

  pk_separatorLineColor2 = [MEMORY[0x1E69DC888] pk_separatorLineColor];
  [(UIView *)v13->_middleSeparatorViewB setBackgroundColor:pk_separatorLineColor2];

  [(_PKInkAttributesPickerView *)v13 addSubview:v13->_middleSeparatorViewB];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v32 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    middleSeparatorView = v13->_middleSeparatorView;
    v13->_middleSeparatorView = v32;

    pk_separatorLineColor3 = [MEMORY[0x1E69DC888] pk_separatorLineColor];
    [(UIView *)v13->_middleSeparatorView setBackgroundColor:pk_separatorLineColor3];

    [(_PKInkAttributesPickerView *)v13 addSubview:v13->_middleSeparatorView];
  }

  [(_PKInkAttributesPickerView *)v13 setInk:inkCopy];
  [(_PKInkAttributesPickerView *)v13 setDisplayMode:1];
  +[PKLayoutConstants inkAttributesPickerViewCornerRadius];
  [(_PKInkAttributesPickerView *)v13 _setContinuousCornerRadius:?];
  v35 = MEMORY[0x1E696AEC0];
  identifier = [inkCopy identifier];

  v37 = [v35 stringWithFormat:@"%@%@", identifier, @"_InkAttributesPicker", v39.receiver, v39.super_class];
  [(_PKInkAttributesPickerView *)v13 setAccessibilityIdentifier:v37];

  [(_PKInkAttributesPickerView *)v13 _updateUI];
  return v13;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_PKInkAttributesPickerView *)self thicknessPicker:fits.width];
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  [v4 sizeThatFits:{*MEMORY[0x1E695F060], v6}];
  v8 = v7;
  v10 = v9;

  toolConfiguration = [(_PKInkAttributesPickerView *)self toolConfiguration];
  [toolConfiguration strokeWeightButtonSize];
  v13 = v12;
  v15 = v14;

  [_PKInkThicknessPicker sizeWithButtonCount:5 buttonSize:v13, v15];
  v17 = v16;
  colorAlphaSliderView = [(_PKInkAttributesPickerView *)self colorAlphaSliderView];
  [colorAlphaSliderView sizeThatFits:{v5, v6}];
  v20 = v19;

  +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
  v22 = v21;
  +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
  v24 = v23 + v23;
  if (([(_PKInkAttributesPickerView *)self displayMode]& 4) != 0)
  {
    +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
    v24 = v10 + v24 + v25;
  }

  if (([(_PKInkAttributesPickerView *)self displayMode]& 1) != 0)
  {
    if (([(_PKInkAttributesPickerView *)self displayMode]& 4) != 0)
    {
      +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
      v24 = v24 + v26;
    }

    v24 = v10 + v24;
  }

  if (([(_PKInkAttributesPickerView *)self displayMode]& 2) != 0)
  {
    if (([(_PKInkAttributesPickerView *)self displayMode]& 1) != 0)
    {
      +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
      v24 = v24 + v27;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
        v24 = v24 + v28;
      }
    }

    v24 = v20 + v24;
  }

  v29 = fmax(v8, v17) + v22 * 2.0;
  v30 = v24;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = _PKInkAttributesPickerView;
  [(_PKInkAttributesPickerView *)&v96 layoutSubviews];
  v3 = [(_PKInkAttributesPickerView *)self ink];
  [v3 weight];
  v5 = v4;
  thicknessPicker = [(_PKInkAttributesPickerView *)self thicknessPicker];
  v7 = thicknessPicker;
  if (thicknessPicker)
  {
    thicknessPicker[58] = v5;
    [thicknessPicker setNeedsLayout];
  }

  v8 = [(_PKInkAttributesPickerView *)self ink];
  [v8 _azimuth];
  v10 = v9;
  azimuthPicker = [(_PKInkAttributesPickerView *)self azimuthPicker];
  v12 = azimuthPicker;
  if (azimuthPicker)
  {
    azimuthPicker[58] = v10;
    [azimuthPicker setNeedsLayout];
  }

  v13 = [(_PKInkAttributesPickerView *)self ink];
  v14 = [v13 colorForUIAllowHDR:1];
  colorAlphaSlider = [(_PKInkAttributesPickerView *)self colorAlphaSlider];
  [colorAlphaSlider setColor:v14];

  [(_PKInkAttributesPickerView *)self bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
  v25 = v24;
  +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
  v27 = v26;
  v97.origin.x = v17;
  v97.origin.y = v19;
  v97.size.width = v21;
  v97.size.height = v23;
  v98 = CGRectInset(v97, v25, v27);
  x = v98.origin.x;
  y = v98.origin.y;
  width = v98.size.width;
  height = v98.size.height;
  displayMode = [(_PKInkAttributesPickerView *)self displayMode];
  displayMode2 = [(_PKInkAttributesPickerView *)self displayMode];
  displayMode3 = [(_PKInkAttributesPickerView *)self displayMode];
  azimuthPicker2 = [(_PKInkAttributesPickerView *)self azimuthPicker];
  v36 = azimuthPicker2;
  if ((displayMode & 4) != 0)
  {
    [azimuthPicker2 setAlpha:1.0];

    azimuthPicker3 = [(_PKInkAttributesPickerView *)self azimuthPicker];
    [azimuthPicker3 setAccessibilityIdentifier:@"Angle Picker"];

    thicknessPicker2 = [(_PKInkAttributesPickerView *)self thicknessPicker];
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = height;
    [thicknessPicker2 sizeThatFits:{CGRectGetWidth(v99), 0.0}];
    v41 = DKDRectWithSizeAlignedToRect(2, 1, v39, v40, x, y, width, height);
    v43 = v42;
    v45 = v44;
    v47 = v46;

    traitCollection = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection displayScale];
    UIRectIntegralWithScale();
    [(_PKInkThicknessPicker *)self->_azimuthPicker setFrame:?];

    v100.origin.x = v41;
    v100.origin.y = v43;
    v100.size.width = v45;
    v100.size.height = v47;
    MaxY = CGRectGetMaxY(v100);
    +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
    v51 = MaxY + v50;
    traitCollection2 = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection2 displayScale];

    [(_PKInkAttributesPickerView *)self bounds];
    CGRectGetWidth(v101);
    traitCollection3 = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection3 displayScale];
    UIRectIntegralWithScale();
    [(UIView *)self->_middleSeparatorViewB setFrame:?];

    if (_UISolariumEnabled())
    {
      [(UIView *)self->_middleSeparatorViewB frame];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      +[PKLayoutConstants inkAttributesPickerViewOuterPadding];
      v63 = v62;
      v102.origin.x = v55;
      v102.origin.y = v57;
      v102.size.width = v59;
      v102.size.height = v61;
      v103 = CGRectInset(v102, v63, 0.0);
      [(UIView *)self->_middleSeparatorViewB setFrame:v103.origin.x, v103.origin.y, v103.size.width, v103.size.height];
    }

    +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
    y = v51 + v64;
  }

  else
  {
    [azimuthPicker2 setAlpha:0.0];
  }

  v65 = 1.0;
  if (!(displayMode3 & 2 | displayMode2 & 1))
  {
    v65 = 0.0;
  }

  if ((displayMode & 4) != 0)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = [(_PKInkAttributesPickerView *)self middleSeparatorViewB:0.0];
  [v67 setAlpha:v66];

  thicknessPicker3 = [(_PKInkAttributesPickerView *)self thicknessPicker];
  v69 = thicknessPicker3;
  if (displayMode2)
  {
    v70 = (displayMode3 >> 1) & 1;
    [thicknessPicker3 setAlpha:1.0];

    thicknessPicker4 = [(_PKInkAttributesPickerView *)self thicknessPicker];
    [thicknessPicker4 setAccessibilityIdentifier:@"Thickness Picker"];

    thicknessPicker5 = [(_PKInkAttributesPickerView *)self thicknessPicker];
    v104.origin.x = x;
    v104.origin.y = y;
    v104.size.width = width;
    v104.size.height = height;
    [thicknessPicker5 sizeThatFits:{CGRectGetWidth(v104), 0.0}];
    v75 = DKDRectWithSizeAlignedToRect(2, 1, v73, v74, x, y, width, height);
    v77 = v76;
    v79 = v78;
    v81 = v80;

    traitCollection4 = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection4 displayScale];
    UIRectIntegralWithScale();
    [(_PKInkThicknessPicker *)self->_thicknessPicker setFrame:?];

    v105.origin.x = v75;
    v105.origin.y = v77;
    v105.size.width = v79;
    v105.size.height = v81;
    v83 = CGRectGetMaxY(v105);
    +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
    y = v83 + v84;
    if ((_UISolariumEnabled() & 1) == 0)
    {
      traitCollection5 = [(_PKInkAttributesPickerView *)self traitCollection];
      [traitCollection5 displayScale];

      [(_PKInkAttributesPickerView *)self bounds];
      CGRectGetWidth(v106);
      traitCollection6 = [(_PKInkAttributesPickerView *)self traitCollection];
      [traitCollection6 displayScale];
      UIRectIntegralWithScale();
      [(UIView *)self->_middleSeparatorView setFrame:?];

      +[PKLayoutConstants inkAttributesPickerViewInnerPadding];
      y = y + v87;
    }
  }

  else
  {
    [thicknessPicker3 setAlpha:0.0];

    LODWORD(v70) = 0;
  }

  if (_UISolariumEnabled())
  {
    v88 = 0.0;
  }

  else
  {
    v88 = v70;
  }

  middleSeparatorView = [(_PKInkAttributesPickerView *)self middleSeparatorView];
  [middleSeparatorView setAlpha:v88];

  colorAlphaSliderView = [(_PKInkAttributesPickerView *)self colorAlphaSliderView];
  traitCollection7 = colorAlphaSliderView;
  if ((displayMode3 & 2) != 0)
  {
    [colorAlphaSliderView setAlpha:1.0];

    v107.origin.x = x;
    v107.origin.y = y;
    v107.size.width = width;
    v107.size.height = height;
    CGRectGetMinX(v107);
    colorAlphaSliderView2 = [(_PKInkAttributesPickerView *)self colorAlphaSliderView];
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = width;
    v108.size.height = height;
    [colorAlphaSliderView2 sizeThatFits:{CGRectGetWidth(v108), 0.0}];

    traitCollection7 = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection7 displayScale];
    UIRectIntegralWithScale();
    [(UIView *)self->_colorAlphaSliderView setFrame:?];
  }

  else
  {
    [colorAlphaSliderView setAlpha:0.0];
  }

  topSeparatorView = self->_topSeparatorView;
  if (self->_showsTopSeparator)
  {
    [(UIView *)topSeparatorView setAlpha:1.0];
    traitCollection8 = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection8 displayScale];

    [(_PKInkAttributesPickerView *)self bounds];
    CGRectGetWidth(v109);
    traitCollection9 = [(_PKInkAttributesPickerView *)self traitCollection];
    [traitCollection9 displayScale];
    UIRectIntegralWithScale();
    [(UIView *)self->_topSeparatorView setFrame:?];
  }

  else
  {
    [(UIView *)topSeparatorView setAlpha:0.0];
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  colorAlphaSlider = [(_PKInkAttributesPickerView *)self colorAlphaSlider];
  [colorAlphaSlider setColorUserInterfaceStyle:style];
}

- (int64_t)colorUserInterfaceStyle
{
  colorAlphaSlider = [(_PKInkAttributesPickerView *)self colorAlphaSlider];
  colorUserInterfaceStyle = [colorAlphaSlider colorUserInterfaceStyle];

  return colorUserInterfaceStyle;
}

- (void)setMinimumOpacityValue:(double)value
{
  if (self->_minimumOpacityValue != value)
  {
    self->_minimumOpacityValue = value;
    [(_PKInkAttributesPickerView *)self _updateUI];
  }
}

- (void)setShowsTopSeparator:(BOOL)separator
{
  if (self->_showsTopSeparator != separator)
  {
    self->_showsTopSeparator = separator;
    [(_PKInkAttributesPickerView *)self setNeedsLayout];
  }
}

- (void)_updateUI
{
  [(_PKInkAttributesPickerView *)self minimumOpacityValue];
  v4 = v3;
  colorAlphaSlider = [(_PKInkAttributesPickerView *)self colorAlphaSlider];
  [colorAlphaSlider setMinAlpha:v4];
}

- (void)setInk:(id)ink animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_ink, ink);
  [(_PKInkAttributesPickerView *)self setNeedsLayout];
  v6 = [(_PKInkAttributesPickerView *)self ink];
  [v6 weight];
  v8 = v7;
  thicknessPicker = [(_PKInkAttributesPickerView *)self thicknessPicker];
  v10 = thicknessPicker;
  if (thicknessPicker)
  {
    thicknessPicker[58] = v8;
    [thicknessPicker setNeedsLayout];
  }

  v11 = [(_PKInkAttributesPickerView *)self ink];
  [v11 _azimuth];
  v13 = v12;
  azimuthPicker = [(_PKInkAttributesPickerView *)self azimuthPicker];
  v15 = azimuthPicker;
  if (azimuthPicker)
  {
    azimuthPicker[58] = v13;
    [azimuthPicker setNeedsLayout];
  }

  colorAlphaSlider = [(_PKInkAttributesPickerView *)self colorAlphaSlider];
  v16 = [(_PKInkAttributesPickerView *)self ink];
  v17 = [v16 colorForUIAllowHDR:1];
  [colorAlphaSlider setColor:v17 animated:animatedCopy];
}

- (void)_azimuthValueChanged:(id)changed
{
  if (changed)
  {
    v4 = *(changed + 58);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [(_PKInkAttributesPickerView *)self ink];
  v6 = v4 + 6.28318531;
  if (v4 >= 0.0)
  {
    v6 = v4;
  }

  v7 = [PKInk inkFromInk:v5 azimuth:v6];
  [(_PKInkAttributesPickerView *)self setInk:v7];

  delegate = [(_PKInkAttributesPickerView *)self delegate];
  [delegate inkAttributesPickerViewDidChangeInkAzimuth:self];
}

- (void)_thicknessValueChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(_PKInkAttributesPickerView *)self ink];
  if (changedCopy)
  {
    v6 = changedCopy[58];
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [PKInk inkFromInk:v5 weight:v6];
  [(_PKInkAttributesPickerView *)self setInk:v7];

  delegate = [(_PKInkAttributesPickerView *)self delegate];
  [delegate inkAttributesPickerViewDidChangeInkThickness:self];
}

- (void)_opacityValueChanged:(id)changed
{
  changedCopy = changed;
  v5 = [(_PKInkAttributesPickerView *)self ink];
  v6 = [v5 colorForUIAllowHDR:1];

  color = [changedCopy color];

  [color alphaComponent];
  v9 = v8;

  v13 = [v6 colorWithAlphaComponent:v9];

  v10 = [(_PKInkAttributesPickerView *)self ink];
  v11 = [PKInk inkFromInk:v10 color:v13];
  [(_PKInkAttributesPickerView *)self setInk:v11];

  delegate = [(_PKInkAttributesPickerView *)self delegate];
  [delegate inkAttributesPickerViewDidChangeInkOpacity:self];
}

- (void)_colorAlphaSliderUserDidStartDraggingSlider:(id)slider
{
  delegate = [(_PKInkAttributesPickerView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(_PKInkAttributesPickerView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(_PKInkAttributesPickerView *)self delegate];
      [delegate3 _inkAttributesPickerViewUserDidStartDraggingSlider:self];
    }
  }
}

- (void)_colorAlphaSliderUserDidEndDraggingSlider:(id)slider
{
  delegate = [(_PKInkAttributesPickerView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(_PKInkAttributesPickerView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(_PKInkAttributesPickerView *)self delegate];
      [delegate3 _inkAttributesPickerViewUserDidEndDraggingSlider:self];
    }
  }
}

- (_PKInkAttributesPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end