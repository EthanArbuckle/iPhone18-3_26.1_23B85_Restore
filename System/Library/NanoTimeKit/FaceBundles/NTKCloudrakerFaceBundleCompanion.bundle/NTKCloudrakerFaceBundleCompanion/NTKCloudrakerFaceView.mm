@interface NTKCloudrakerFaceView
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NTKCloudrakerFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationsContainerViewAlphaForEditMode:(int64_t)mode;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (id)_digitalTimeLabelFont;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)_applyTransitionFraction:(double)fraction fromNumeral:(unint64_t)numeral toNumeral:(unint64_t)toNumeral;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_handleLocaleDidChange;
- (void)_loadLayoutRules;
- (void)_setNumerals:(unint64_t)numerals;
- (void)invalidateDigitalTimeLabelStyle;
@end

@implementation NTKCloudrakerFaceView

- (NTKCloudrakerFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKCloudrakerFaceView;
  result = [(NTKCloudrakerFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (result)
  {
    result->_numberSystem = -1;
  }

  return result;
}

- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides
{
  digitalTimeLabelFontScaleFactorForNumberSystemOverrides = self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
  if (!digitalTimeLabelFontScaleFactorForNumberSystemOverrides)
  {
    self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides = &off_8D28;

    digitalTimeLabelFontScaleFactorForNumberSystemOverrides = self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
  }

  return digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
}

- (void)_handleLocaleDidChange
{
  v3.receiver = self;
  v3.super_class = NTKCloudrakerFaceView;
  [(NTKCloudrakerFaceView *)&v3 _handleLocaleDidChange];
  [(NTKCloudrakerFaceView *)self invalidateDigitalTimeLabelStyle];
}

- (void)invalidateDigitalTimeLabelStyle
{
  v4.receiver = self;
  v4.super_class = NTKCloudrakerFaceView;
  [(NTKCloudrakerFaceView *)&v4 invalidateDigitalTimeLabelStyle];
  timeView = [(NTKCloudrakerFaceView *)self timeView];
  [timeView setForcedNumberSystem:self->_numberSystem];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NTKCloudrakerFaceView *)self device:mode];
  sub_41EC(v9, &v18);

  _digitalTimeLabelFont = [(NTKCloudrakerFaceView *)self _digitalTimeLabelFont];
  v11 = *&v20;
  [_digitalTimeLabelFont capHeight];
  v13 = v11 + v12 * 0.5;
  v14 = *(&v19 + 1);
  device = [(NTKCloudrakerFaceView *)self device];
  v16 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:_digitalTimeLabelFont applyAdvanceFudge:device withBaselineY:x withFont:y forDevice:width, height, v14, v13];

  [v16 setTracking:&off_8E30];

  return v16;
}

- (id)_digitalTimeLabelFont
{
  v3 = [(NTKCloudrakerFaceView *)self device:0];
  sub_41EC(v3, &v16);

  v4 = CLKCurrentLocaleIs24HourMode();
  v5 = &v17 + 1;
  if (v4)
  {
    v5 = &v18;
  }

  v6 = *v5;
  device = [(NTKCloudrakerFaceView *)self device];
  v8 = NTKShowIndicScriptNumerals();

  if ((v8 & 1) == 0)
  {
    v13 = UIFontWeightMedium;
LABEL_9:
    v14 = [CLKFont compactSoftFontOfSize:v6 weight:v13];
    goto LABEL_10;
  }

  if (self->_numberSystem != -1)
  {
    digitalTimeLabelFontScaleFactorForNumberSystemOverrides = [(NTKCloudrakerFaceView *)self digitalTimeLabelFontScaleFactorForNumberSystemOverrides];
    v10 = [digitalTimeLabelFontScaleFactorForNumberSystemOverrides objectAtIndexedSubscript:self->_numberSystem];
    [v10 doubleValue];

    device2 = [(NTKCloudrakerFaceView *)self device];
    CLKRoundForDevice();
    v6 = v12;
  }

  v13 = UIFontWeightMedium;
  v14 = [NTKSFCompactFont numericSoftFontOfSize:v6 weight:UIFontWeightMedium];
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v14;
}

- (void)_setNumerals:(unint64_t)numerals
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    device = [(NTKCloudrakerFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      timeView = [(NTKCloudrakerFaceView *)self timeView];
      [timeView setForcedNumberSystem:v5];

      [(NTKCloudrakerFaceView *)self invalidateDigitalTimeLabelStyle];

      [(NTKCloudrakerFaceView *)self setNeedsLayout];
    }
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 19)
  {
    -[NTKCloudrakerFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
  }

  else if (mode == 10)
  {
    faceColorPalette = [(NTKCloudrakerFaceView *)self faceColorPalette];
    faceColorPalette2 = [(NTKCloudrakerFaceView *)self faceColorPalette];
    [(NTKCloudrakerFaceView *)self _applyTransitionFraction:faceColorPalette fromColorPalette:faceColorPalette2 toColorPalette:0.0];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 19)
  {
    -[NTKCloudrakerFaceView _applyTransitionFraction:fromNumeral:toNumeral:](self, "_applyTransitionFraction:fromNumeral:toNumeral:", [optionCopy numeralOption], objc_msgSend(toOptionCopy, "numeralOption"), fraction);
  }

  else if (mode == 10)
  {
    interpolatedColorPalette = [(NTKCloudrakerFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    interpolatedColorPalette2 = [(NTKCloudrakerFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    [(NTKCloudrakerFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:toPalette toColorPalette:fraction];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromNumeral:(unint64_t)numeral toNumeral:(unint64_t)toNumeral
{
  if (fraction >= 0.5)
  {
    v7 = fraction + -0.5 + fraction + -0.5;
    numeralCopy = toNumeral;
  }

  else
  {
    numeralCopy = numeral;
    v7 = 1.0 - (fraction + fraction);
  }

  v8 = [(NTKCloudrakerFaceView *)self timeView:numeral];
  [v8 setAlpha:v7];

  [(NTKCloudrakerFaceView *)self _setNumerals:numeralCopy];
}

- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  primaryColor = [paletteCopy primaryColor];
  primaryColor2 = [colorPaletteCopy primaryColor];
  v12 = NTKInterpolateBetweenColors();
  [(NTKCloudrakerFaceView *)self setInterpolatedComplicationColor:v12];
  if (([paletteCopy isMulticolor] & 1) != 0 || objc_msgSend(colorPaletteCopy, "isMulticolor"))
  {
    if ([colorPaletteCopy isMulticolor] && !objc_msgSend(paletteCopy, "isMulticolor"))
    {
      fraction = 1.0 - fraction;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ([colorPaletteCopy isMulticolor])
  {
    v14 = primaryColor;
  }

  else
  {
    v14 = primaryColor2;
  }

  [(NTKCloudrakerFaceView *)self setComplicationColor:v14];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_35D4;
  v15[3] = &unk_8388;
  v15[4] = self;
  v16 = v13;
  *&v15[5] = fraction;
  [(NTKCloudrakerFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 19)
  {
    NTKKeylineCornerRadiusLarge();
    v4 = NTKKeylineViewWithContinuousCurveCornerRadius();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKCloudrakerFaceView;
    v4 = [(NTKCloudrakerFaceView *)&v6 _keylineViewForCustomEditMode:mode slot:slot];
  }

  return v4;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 19)
  {
    v5 = [(NTKCloudrakerFaceView *)self timeView:19];
    [v5 frame];
    v7 = v6;

    timeView = [(NTKCloudrakerFaceView *)self timeView];
    [timeView center];
    v10 = v9;

    v11 = v10 + v7 * -0.5;
    [(NTKCloudrakerFaceView *)self frame];
    v13 = 0.0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKCloudrakerFaceView;
    [(NTKCloudrakerFaceView *)&v18 _relativeKeylineFrameForCustomEditMode:mode slot:slot];
    v11 = v14;
    v7 = v15;
  }

  v16 = v11;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v12;
  result.origin.y = v16;
  result.origin.x = v13;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 19)
  {
    return 164;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKCloudrakerFaceView;
  return [(NTKCloudrakerFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:mode slot:slot];
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKCloudrakerFaceView *)self _complicationsContainerViewAlphaForEditMode:?];
  v6 = v5;
  complicationContainerView = [(NTKCloudrakerFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v6];

  [(NTKCloudrakerFaceView *)self _timeViewAlphaForEditMode:mode];
  v9 = v8;
  timeView = [(NTKCloudrakerFaceView *)self timeView];
  [timeView setAlpha:v9];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKCloudrakerFaceView *)self _timeViewAlphaForEditMode:?];
  [(NTKCloudrakerFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  [(NTKCloudrakerFaceView *)self _complicationsContainerViewAlphaForEditMode:mode];
  [(NTKCloudrakerFaceView *)self _complicationsContainerViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  complicationContainerView = [(NTKCloudrakerFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v11];

  timeView = [(NTKCloudrakerFaceView *)self timeView];
  [timeView setAlpha:v9];
}

- (double)_complicationsContainerViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 19)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, v7, v7);
  if (mode == 10)
  {
    v8 = v9;
    [(NTKCloudrakerFaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v7, v7);
  NTKAlphaForRubberBandingFraction();
  if (mode == 10)
  {
    v9 = v8;
    v10 = v11;
    [(NTKCloudrakerFaceView *)self setTransform:&v10];
    [(NTKCloudrakerFaceView *)self setAlpha:v9];
  }
}

- (void)_loadLayoutRules
{
  device = [(NTKCloudrakerFaceView *)self device];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_41EC(device, v15);
  [(NTKCloudrakerFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, *v15, *v15);
  NTKWhistlerSubdialComplicationDiameter();
  NTKWhistlerSubdialComplicationContentDiameter();
  NTKWhistlerLargeRectangularComplicationSize();
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  CGRectGetWidth(v17);
  v13 = device;
  v12 = device;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v6 = NTKComplicationSlotTopLeft;
  complicationCopy = complication;
  v8 = [slot isEqualToString:v6];
  v9 = NTKRichComplicationCircularBaseView_ptr;
  if (!v8)
  {
    v9 = NTKRichComplicationRectangularBaseView_ptr;
  }

  v10 = *v9;
  complicationType = [complicationCopy complicationType];

  [v10 viewWithLegacyComplicationType:complicationType];
  return objc_claimAutoreleasedReturnValue();
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  faceColorPalette = [(NTKCloudrakerFaceView *)self faceColorPalette];
  isMulticolor = [faceColorPalette isMulticolor];

  if (isMulticolor)
  {
    [viewCopy transitionToMonochromeWithFraction:0.0];
  }

  else
  {
    [viewCopy updateMonochromeColor];
  }
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKCloudrakerFaceView;
    v5 = [(NTKCloudrakerFaceView *)&v7 _keylineStyleForComplicationSlot:slotCopy];
  }

  return v5;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (([slotCopy isEqualToString:NTKComplicationSlotCenter] & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottom))
  {
    device = [(NTKCloudrakerFaceView *)self device];
    [NTKModuleView cornerRadiusForComplicationFamily:1 forDevice:device];
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKCloudrakerFaceView;
    [(NTKCloudrakerFaceView *)&v10 _keylineCornerRadiusForComplicationSlot:slotCopy];
    v7 = v8;
  }

  return v7;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  if (mode == 19)
  {
    _digitalTimeLabelFont = [(NTKCloudrakerFaceView *)self _digitalTimeLabelFont];
    device = [(NTKCloudrakerFaceView *)self device];
    v11 = [optionCopy swatchImageWithFont:_digitalTimeLabelFont device:device baseline:0.0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKCloudrakerFaceView;
    v11 = [(NTKCloudrakerFaceView *)&v13 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v11;
}

@end