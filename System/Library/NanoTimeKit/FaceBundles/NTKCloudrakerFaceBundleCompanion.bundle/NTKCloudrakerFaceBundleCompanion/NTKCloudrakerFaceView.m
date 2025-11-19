@interface NTKCloudrakerFaceView
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NTKCloudrakerFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationsContainerViewAlphaForEditMode:(int64_t)a3;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (id)_digitalTimeLabelFont;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromNumeral:(unint64_t)a4 toNumeral:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_handleLocaleDidChange;
- (void)_loadLayoutRules;
- (void)_setNumerals:(unint64_t)a3;
- (void)invalidateDigitalTimeLabelStyle;
@end

@implementation NTKCloudrakerFaceView

- (NTKCloudrakerFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKCloudrakerFaceView;
  result = [(NTKCloudrakerFaceView *)&v6 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
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
  v3 = [(NTKCloudrakerFaceView *)self timeView];
  [v3 setForcedNumberSystem:self->_numberSystem];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NTKCloudrakerFaceView *)self device:a3];
  sub_41EC(v9, &v18);

  v10 = [(NTKCloudrakerFaceView *)self _digitalTimeLabelFont];
  v11 = *&v20;
  [v10 capHeight];
  v13 = v11 + v12 * 0.5;
  v14 = *(&v19 + 1);
  v15 = [(NTKCloudrakerFaceView *)self device];
  v16 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v10 applyAdvanceFudge:v15 withBaselineY:x withFont:y forDevice:width, height, v14, v13];

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
  v7 = [(NTKCloudrakerFaceView *)self device];
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
    v9 = [(NTKCloudrakerFaceView *)self digitalTimeLabelFontScaleFactorForNumberSystemOverrides];
    v10 = [v9 objectAtIndexedSubscript:self->_numberSystem];
    [v10 doubleValue];

    v11 = [(NTKCloudrakerFaceView *)self device];
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

- (void)_setNumerals:(unint64_t)a3
{
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    v6 = [(NTKCloudrakerFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      v8 = [(NTKCloudrakerFaceView *)self timeView];
      [v8 setForcedNumberSystem:v5];

      [(NTKCloudrakerFaceView *)self invalidateDigitalTimeLabelStyle];

      [(NTKCloudrakerFaceView *)self setNeedsLayout];
    }
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (a4 == 19)
  {
    -[NTKCloudrakerFaceView _setNumerals:](self, "_setNumerals:", [v11 numeralOption]);
  }

  else if (a4 == 10)
  {
    v9 = [(NTKCloudrakerFaceView *)self faceColorPalette];
    v10 = [(NTKCloudrakerFaceView *)self faceColorPalette];
    [(NTKCloudrakerFaceView *)self _applyTransitionFraction:v9 fromColorPalette:v10 toColorPalette:0.0];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v18 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 19)
  {
    -[NTKCloudrakerFaceView _applyTransitionFraction:fromNumeral:toNumeral:](self, "_applyTransitionFraction:fromNumeral:toNumeral:", [v18 numeralOption], objc_msgSend(v12, "numeralOption"), a3);
  }

  else if (a6 == 10)
  {
    v14 = [(NTKCloudrakerFaceView *)self interpolatedColorPalette];
    v15 = [v14 fromPalette];
    v16 = [(NTKCloudrakerFaceView *)self interpolatedColorPalette];
    v17 = [v16 toPalette];
    [(NTKCloudrakerFaceView *)self _applyTransitionFraction:v15 fromColorPalette:v17 toColorPalette:a3];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromNumeral:(unint64_t)a4 toNumeral:(unint64_t)a5
{
  if (a3 >= 0.5)
  {
    v7 = a3 + -0.5 + a3 + -0.5;
    v6 = a5;
  }

  else
  {
    v6 = a4;
    v7 = 1.0 - (a3 + a3);
  }

  v8 = [(NTKCloudrakerFaceView *)self timeView:a4];
  [v8 setAlpha:v7];

  [(NTKCloudrakerFaceView *)self _setNumerals:v6];
}

- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 primaryColor];
  v11 = [v9 primaryColor];
  v12 = NTKInterpolateBetweenColors();
  [(NTKCloudrakerFaceView *)self setInterpolatedComplicationColor:v12];
  if (([v8 isMulticolor] & 1) != 0 || objc_msgSend(v9, "isMulticolor"))
  {
    if ([v9 isMulticolor] && !objc_msgSend(v8, "isMulticolor"))
    {
      a3 = 1.0 - a3;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if ([v9 isMulticolor])
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  [(NTKCloudrakerFaceView *)self setComplicationColor:v14];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_35D4;
  v15[3] = &unk_8388;
  v15[4] = self;
  v16 = v13;
  *&v15[5] = a3;
  [(NTKCloudrakerFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 19)
  {
    NTKKeylineCornerRadiusLarge();
    v4 = NTKKeylineViewWithContinuousCurveCornerRadius();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKCloudrakerFaceView;
    v4 = [(NTKCloudrakerFaceView *)&v6 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v4;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 19)
  {
    v5 = [(NTKCloudrakerFaceView *)self timeView:19];
    [v5 frame];
    v7 = v6;

    v8 = [(NTKCloudrakerFaceView *)self timeView];
    [v8 center];
    v10 = v9;

    v11 = v10 + v7 * -0.5;
    [(NTKCloudrakerFaceView *)self frame];
    v13 = 0.0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKCloudrakerFaceView;
    [(NTKCloudrakerFaceView *)&v18 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
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

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 19)
  {
    return 164;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKCloudrakerFaceView;
  return [(NTKCloudrakerFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:a3 slot:a4];
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKCloudrakerFaceView *)self _complicationsContainerViewAlphaForEditMode:?];
  v6 = v5;
  v7 = [(NTKCloudrakerFaceView *)self complicationContainerView];
  [v7 setAlpha:v6];

  [(NTKCloudrakerFaceView *)self _timeViewAlphaForEditMode:a3];
  v9 = v8;
  v10 = [(NTKCloudrakerFaceView *)self timeView];
  [v10 setAlpha:v9];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKCloudrakerFaceView *)self _timeViewAlphaForEditMode:?];
  [(NTKCloudrakerFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  [(NTKCloudrakerFaceView *)self _complicationsContainerViewAlphaForEditMode:a4];
  [(NTKCloudrakerFaceView *)self _complicationsContainerViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  v12 = [(NTKCloudrakerFaceView *)self complicationContainerView];
  [v12 setAlpha:v11];

  v13 = [(NTKCloudrakerFaceView *)self timeView];
  [v13 setAlpha:v9];
}

- (double)_complicationsContainerViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 19)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, v7, v7);
  if (a4 == 10)
  {
    v8 = v9;
    [(NTKCloudrakerFaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v7, v7);
  NTKAlphaForRubberBandingFraction();
  if (a4 == 10)
  {
    v9 = v8;
    v10 = v11;
    [(NTKCloudrakerFaceView *)self setTransform:&v10];
    [(NTKCloudrakerFaceView *)self setAlpha:v9];
  }
}

- (void)_loadLayoutRules
{
  v3 = [(NTKCloudrakerFaceView *)self device];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_41EC(v3, v15);
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
  v13 = v3;
  v12 = v3;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v6 = NTKComplicationSlotTopLeft;
  v7 = a3;
  v8 = [a5 isEqualToString:v6];
  v9 = NTKRichComplicationCircularBaseView_ptr;
  if (!v8)
  {
    v9 = NTKRichComplicationRectangularBaseView_ptr;
  }

  v10 = *v9;
  v11 = [v7 complicationType];

  [v10 viewWithLegacyComplicationType:v11];
  return objc_claimAutoreleasedReturnValue();
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v7 = a3;
  v5 = [(NTKCloudrakerFaceView *)self faceColorPalette];
  v6 = [v5 isMulticolor];

  if (v6)
  {
    [v7 transitionToMonochromeWithFraction:0.0];
  }

  else
  {
    [v7 updateMonochromeColor];
  }
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotTopLeft])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKCloudrakerFaceView;
    v5 = [(NTKCloudrakerFaceView *)&v7 _keylineStyleForComplicationSlot:v4];
  }

  return v5;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:NTKComplicationSlotCenter] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotBottom))
  {
    v5 = [(NTKCloudrakerFaceView *)self device];
    [NTKModuleView cornerRadiusForComplicationFamily:1 forDevice:v5];
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKCloudrakerFaceView;
    [(NTKCloudrakerFaceView *)&v10 _keylineCornerRadiusForComplicationSlot:v4];
    v7 = v8;
  }

  return v7;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  if (a4 == 19)
  {
    v9 = [(NTKCloudrakerFaceView *)self _digitalTimeLabelFont];
    v10 = [(NTKCloudrakerFaceView *)self device];
    v11 = [v8 swatchImageWithFont:v9 device:v10 baseline:0.0];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKCloudrakerFaceView;
    v11 = [(NTKCloudrakerFaceView *)&v13 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v11;
}

@end