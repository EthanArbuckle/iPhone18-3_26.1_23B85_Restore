@interface NTKMargaritaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_faceEditingViewShouldOffsetForComplicationEditMode;
- (BOOL)_hasBezelComplication;
- (BOOL)_shouldShowDial;
- (BOOL)_usePrimaryColorForNonAccentedColorForView:(id)a3;
- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5 selectedSlot:(id)a6;
- (CGRect)_keylineFrameForStripeAtSlot:(id)a3 withEditOption:(id)a4 stripeCount:(unint64_t)a5 selectedSlot:(id)a6;
- (NTKCircularAnalogDialView)dialView;
- (NTKInterpolatedColorPalette)transitionalPalette;
- (NTKMargaritaFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_analogTimeViewAlphaForStyle:(unint64_t)a3;
- (double)_backgroundAlphaForEditMode:(int64_t)a3;
- (double)_bezelComplicationTextWidthInRadians;
- (double)_complicationAlphaForEditMode:(int64_t)a3 style:(unint64_t)a4;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_digitalTimeScaleForStyle:(unint64_t)a3 shouldShowDial:(BOOL)a4;
- (double)_digitalTimeViewAlphaForStyle:(unint64_t)a3;
- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_complicationSlotsHiddenByCurrentConfiguration;
- (id)_enabledStripeColorsWithCount:(unint64_t)a3;
- (id)_findMostFrequentColorWithFrequencies:(id)a3 withLongestColor:(id)a4 longestLength:(unint64_t)a5;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4 selectedSlot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_utilityBezelComplicationView;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)colorPalette;
- (id)createFaceColorPalette;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)suggestedColorOptionForComplicationColor;
- (unint64_t)slotIndexForOption:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDigitalTimeTransformForCurrentStyle;
- (void)_applyDigitalTimeTransformForStyle:(unint64_t)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyStyle:(unint64_t)a3;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_keylineSelectionChangingTo:(id)a3 editMode:(int64_t)a4;
- (void)_loadContentViews;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_removeContentViews;
- (void)_removeDialView;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColors;
- (void)_updateDialTicksForBezelText;
- (void)_updateDialVisibility;
- (void)layoutSubviews;
@end

@implementation NTKMargaritaFaceView

- (NTKMargaritaFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v25.receiver = self;
  v25.super_class = NTKMargaritaFaceView;
  v9 = [(NTKMargaritaFaceView *)&v25 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = objc_alloc_init(NTKCompositeComplicationFactory);
    v11 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v12 = [(NTKMargaritaFaceView *)v9 device];
    v13 = [v11 initWithFaceView:v9 dialDiameter:v8 device:{sub_59AC(v12, v12)}];

    [v13 setUsesNarrowTopSlots:1];
    v26[0] = NTKComplicationSlotTopLeft;
    v26[1] = NTKComplicationSlotTopRight;
    v26[2] = NTKComplicationSlotBottomLeft;
    v26[3] = NTKComplicationSlotBottomRight;
    v14 = [NSArray arrayWithObjects:v26 count:4];
    [v10 registerFactory:v13 forSlots:v14];

    v15 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    [v15 setFaceView:v9];
    v16 = [(NTKMargaritaFaceView *)v9 device];
    [v15 setDialDiameter:{sub_59AC(v16, v16)}];

    [v10 registerFactory:v15 forSlot:NTKComplicationSlotBezel];
    [(NTKMargaritaFaceView *)v9 setComplicationFactory:v10];
    v17 = [NTKMargaritaBackgroundView alloc];
    v18 = [(NTKMargaritaFaceView *)v9 device];
    v19 = [(NTKMargaritaBackgroundView *)v17 initWithDevice:v18];
    [(NTKMargaritaFaceView *)v9 setBackgroundView:v19];

    v20 = objc_alloc_init(NTKFaceColorPalette);
    blackPalette = v9->_blackPalette;
    v9->_blackPalette = v20;

    v22 = [NTKPigmentEditOption pigmentNamed:ntk_seasons_black];
    [(NTKFaceColorPalette *)v9->_blackPalette setPigmentEditOption:v22];

    v23 = v9;
  }

  return v9;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKMargaritaColorPalette);

  return v2;
}

- (id)colorPalette
{
  v3 = [(NTKMargaritaFaceView *)self faceColorPalette];
  [v3 setEditing:{-[NTKMargaritaFaceView editing](self, "editing")}];
  [v3 setStyle:self->_style];

  return v3;
}

- (NTKInterpolatedColorPalette)transitionalPalette
{
  transitionalPalette = self->_transitionalPalette;
  if (!transitionalPalette)
  {
    v4 = [NTKInterpolatedColorPalette alloc];
    v5 = [(NTKMargaritaFaceView *)self colorPalette];
    v6 = [v4 initWithColorPalette:v5];
    v7 = self->_transitionalPalette;
    self->_transitionalPalette = v6;

    transitionalPalette = self->_transitionalPalette;
  }

  return transitionalPalette;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKMargaritaFaceView *)self _loadContentViews];
}

- (void)_loadContentViews
{
  analogTimeView = self->_analogTimeView;
  if (!analogTimeView)
  {
    v4 = [NTKAnalogHandsView alloc];
    v5 = [(NTKMargaritaFaceView *)self device];
    v6 = [v4 initForDevice:v5];
    v7 = self->_analogTimeView;
    self->_analogTimeView = v6;

    v8 = NTKColorWithRGBA();
    [(NTKAnalogHandsView *)self->_analogTimeView applySecondHandColor:v8];
    v9 = [(NTKAnalogHandsView *)self->_analogTimeView hourHandView];
    v10 = [(NTKAnalogHandsView *)self->_analogTimeView minuteHandView];
    v11 = [(NTKAnalogHandsView *)self->_analogTimeView secondHandView];
    v12 = +[UIColor clearColor];
    [v9 setHandDotColor:v12];
    [v10 setHandDotColor:v12];
    [v11 setHandDotColor:v12];

    analogTimeView = self->_analogTimeView;
  }

  v13 = [(NTKAnalogHandsView *)analogTimeView superview];
  v14 = [(NTKMargaritaFaceView *)self contentView];

  if (v13 != v14)
  {
    v15 = [(NTKMargaritaFaceView *)self contentView];
    [v15 addSubview:self->_analogTimeView];
  }

  [(NTKMargaritaFaceView *)self setTimeView:self->_analogTimeView];
  v16 = [(NTKMargaritaBackgroundView *)self->_backgroundView superview];
  v17 = [(NTKMargaritaFaceView *)self contentView];

  if (v16 != v17)
  {
    v20 = [(NTKMargaritaFaceView *)self contentView];
    backgroundView = self->_backgroundView;
    v19 = [(NTKMargaritaFaceView *)self timeView];
    [v20 insertSubview:backgroundView belowSubview:v19];
  }
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKMargaritaFaceView *)self _removeContentViews];
}

- (void)_removeContentViews
{
  [(NTKMargaritaBackgroundView *)self->_backgroundView removeFromSuperview];
  analogTimeView = self->_analogTimeView;
  if (analogTimeView)
  {
    [(NTKAnalogHandsView *)analogTimeView removeFromSuperview];
    v4 = self->_analogTimeView;
    self->_analogTimeView = 0;
  }

  digitalTimeView = self->_digitalTimeView;
  if (digitalTimeView)
  {
    [(NTKBigNumeralsDigitalTimeView *)digitalTimeView removeFromSuperview];
    v6 = self->_digitalTimeView;
    self->_digitalTimeView = 0;
  }

  dialView = self->_dialView;
  if (dialView)
  {
    [(NTKCircularAnalogDialView *)dialView removeFromSuperview];
    v8 = self->_dialView;
    self->_dialView = 0;
  }
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v19 layoutSubviews];
  [(NTKMargaritaFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CLKRectGetCenter();
  v12 = v11;
  v14 = v13;
  v15 = [(NTKMargaritaFaceView *)self backgroundView];
  [v15 setBounds:{v4, v6, v8, v10}];

  v16 = [(NTKMargaritaFaceView *)self backgroundView];
  [v16 setCenter:{v12, v14}];

  v17 = [(NTKMargaritaFaceView *)self analogTimeView];
  [v17 setBounds:{v4, v6, v8, v10}];

  v18 = [(NTKMargaritaFaceView *)self analogTimeView];
  [v18 setCenter:{v12, v14}];
}

- (void)_prepareForSnapshotting
{
  v5.receiver = self;
  v5.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v5 _prepareForSnapshotting];
  v3 = [(NTKMargaritaFaceView *)self delegate];
  v4 = [v3 faceViewShouldIgnoreSnapshotImages];

  if ((v4 & 1) == 0)
  {
    [(NTKMargaritaFaceView *)self _removeDialView];
  }
}

- (NTKCircularAnalogDialView)dialView
{
  dialView = self->_dialView;
  if (!dialView)
  {
    v4 = [(NTKMargaritaFaceView *)self device];
    sub_59AC(v4, v4);
    [(NTKMargaritaFaceView *)self bounds];
    CLKSizeCenteredInRectForDevice();
    v9 = [[NTKCircularAnalogDialView alloc] initWithFrame:v4 forDevice:{v5, v6, v7, v8}];
    v10 = self->_dialView;
    self->_dialView = v9;

    [(NTKCircularAnalogDialView *)self->_dialView showAllTicksInDial];
    [(NTKCircularAnalogDialView *)self->_dialView applyColorTransitionFraction:self->_blackPalette fromFaceColorPalette:self->_blackPalette toFaceColorPalette:1.0];
    v11 = self->_dialView;
    v12 = +[UIColor clearColor];
    [(NTKCircularAnalogDialView *)v11 setBackgroundColor:v12];

    dialView = self->_dialView;
  }

  v13 = [(NTKCircularAnalogDialView *)dialView superview];
  v14 = [(NTKMargaritaFaceView *)self contentView];

  if (v13 != v14)
  {
    v15 = [(NTKMargaritaFaceView *)self contentView];
    [v15 insertSubview:self->_dialView atIndex:0];
  }

  v16 = self->_dialView;

  return v16;
}

- (void)_removeDialView
{
  dialView = self->_dialView;
  if (dialView)
  {
    [(NTKCircularAnalogDialView *)dialView removeFromSuperview];
    v4 = self->_dialView;
    self->_dialView = 0;
  }
}

- (BOOL)_shouldShowDial
{
  v3 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  v4 = [v3 style];

  return ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2) & [(NTKMargaritaFaceView *)self _hasBezelComplication];
}

- (BOOL)_hasBezelComplication
{
  v3 = [(NTKMargaritaFaceView *)self delegate];
  if (v3)
  {
    v4 = [(NTKMargaritaFaceView *)self delegate];
    v5 = [v4 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_updateDialVisibility
{
  v3 = [(NTKMargaritaFaceView *)self _shouldShowDial];
  v4 = [(NTKMargaritaFaceView *)self dialView];
  [v4 setHidden:v3 ^ 1];

  v5 = [(NTKMargaritaFaceView *)self _hasBezelComplication];
  v6 = [(NTKMargaritaFaceView *)self backgroundView];
  [v6 setCompactCircular:v5];

  [(NTKMargaritaFaceView *)self _applyDigitalTimeTransformForCurrentStyle];
}

- (void)_updateDialTicksForBezelText
{
  v6 = [(NTKMargaritaFaceView *)self dialView];
  [(NTKMargaritaFaceView *)self _bezelComplicationTextWidthInRadians];
  v4 = v3;
  [(NTKMargaritaFaceView *)self _bezelComplicationTextWidthInRadians];
  [v6 transitTicksWithInitialBezelTextWidthInRadius:v4 finalBezelTextWidthInRadius:v5 fraction:1.0];
}

- (double)_bezelComplicationTextWidthInRadians
{
  v2 = [(NTKMargaritaFaceView *)self _utilityBezelComplicationView];
  [v2 textWidthInRadians];
  v4 = v3;

  return v4;
}

- (void)_applyDigitalTimeTransformForCurrentStyle
{
  v3 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  v4 = [v3 style];

  [(NTKMargaritaFaceView *)self _applyDigitalTimeTransformForStyle:v4];
}

- (void)_applyDigitalTimeTransformForStyle:(unint64_t)a3
{
  [(NTKMargaritaFaceView *)self _digitalTimeScaleForStyle:a3 shouldShowDial:[(NTKMargaritaFaceView *)self _shouldShowDial]];
  v5 = v4;
  v6 = [(NTKMargaritaFaceView *)self digitalTimeView];
  CGAffineTransformMakeScale(&v7, v5, v5);
  [v6 setTransform:&v7];
}

- (double)_digitalTimeScaleForStyle:(unint64_t)a3 shouldShowDial:(BOOL)a4
{
  v4 = a4;
  v5 = [(NTKMargaritaFaceView *)self _digitalTimeViewIsSmallerForStyle:a3];
  result = 0.6;
  if (v4)
  {
    result = 0.55;
  }

  if (!v5)
  {
    return 0.9;
  }

  return result;
}

- (double)_analogTimeViewAlphaForStyle:(unint64_t)a3
{
  result = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    return 1.0;
  }

  return result;
}

- (double)_digitalTimeViewAlphaForStyle:(unint64_t)a3
{
  result = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyStyle:(unint64_t)a3
{
  v5 = [(NTKMargaritaFaceView *)self analogTimeView];
  [(NTKMargaritaFaceView *)self _analogTimeViewAlphaForStyle:a3];
  [v5 setAlpha:?];

  v6 = [(NTKMargaritaFaceView *)self complicationContainerView];
  if ([(NTKMargaritaFaceView *)self editing])
  {
    v7 = 15;
  }

  else
  {
    v7 = 0;
  }

  [(NTKMargaritaFaceView *)self _complicationAlphaForEditMode:v7 style:a3];
  [v6 setAlpha:?];

  if (self->_style != a3)
  {
    self->_style = a3;
    v8 = [(NTKMargaritaFaceView *)self delegate];
    [v8 faceViewDidChangeWantsStatusBarIconShadow];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  v8 = [(NTKMargaritaFaceView *)self analogTimeView];
  [(NTKMargaritaFaceView *)self _analogTimeViewAlphaForStyle:a4];
  [(NTKMargaritaFaceView *)self _analogTimeViewAlphaForStyle:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  v9 = [(NTKMargaritaFaceView *)self complicationContainerView];
  [(NTKMargaritaFaceView *)self _complicationAlphaForEditMode:15 style:a4];
  [(NTKMargaritaFaceView *)self _complicationAlphaForEditMode:15 style:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];
}

- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    return 100.0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v7 _editSpeedForCustomEditMode:a3 slot:a4];
  return result;
}

- (void)_prepareForEditing
{
  v2.receiver = self;
  v2.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v2 _prepareForEditing];
}

- (void)_cleanupAfterEditing
{
  v6.receiver = self;
  v6.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v6 _cleanupAfterEditing];
  v3 = [(NTKMargaritaFaceView *)self _shouldShowDial];
  v4 = [(NTKMargaritaFaceView *)self backgroundView];
  [v4 setCompactCircular:v3];

  v5 = [(NTKMargaritaFaceView *)self delegate];
  [v5 faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  v6 = [v5 style];

  [(NTKMargaritaFaceView *)self _timeViewAlphaForEditMode:a3];
  v8 = v7;
  [(NTKMargaritaFaceView *)self _analogTimeViewAlphaForStyle:v6];
  v10 = v8 * v9;
  v11 = [(NTKMargaritaFaceView *)self analogTimeView];
  [v11 setAlpha:v10];

  v12 = [(NTKMargaritaFaceView *)self backgroundView];
  v18 = v12;
  if (a3 == 10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  [v12 setStyle:v13];
  v14 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:14 slot:0];
  v15 = [v14 rotation];
  if (a3 == 10)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  [v18 setRotation:v16];
  [(NTKMargaritaFaceView *)self _backgroundAlphaForEditMode:a3];
  [v18 setAlpha:?];
  v17 = [(NTKMargaritaFaceView *)self complicationContainerView];
  [(NTKMargaritaFaceView *)self _complicationAlphaForEditMode:a3 style:v13];
  [v17 setAlpha:?];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v9 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  v10 = [v9 style];

  [(NTKMargaritaFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKMargaritaFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  [(NTKMargaritaFaceView *)self _analogTimeViewAlphaForStyle:v10];
  v14 = v12 * v13;
  v15 = [(NTKMargaritaFaceView *)self analogTimeView];
  [v15 setAlpha:v14];

  v16 = [(NTKMargaritaFaceView *)self backgroundView];
  if (a4 != a5 && (a4 == 10 || a5 == 10))
  {
    v17 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:14 slot:0];
    v18 = [v17 rotation];

    v19 = 360;
    if (v18 <= 180)
    {
      v19 = 0;
    }

    if (a5 == 10)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    if (a5 == 10)
    {
      v21 = 0;
    }

    else
    {
      v21 = v10;
    }

    if (a4 == 10)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (a4 == 10)
    {
      v10 = 0;
    }

    [v16 applyTransitionFraction:v22 fromRotation:v20 toRotation:a3];
    [v16 applyTransitionFraction:v10 fromStyle:v21 toStyle:a3];
  }

  [(NTKMargaritaFaceView *)self _backgroundAlphaForEditMode:a4];
  [(NTKMargaritaFaceView *)self _backgroundAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v16 setAlpha:?];
  v23 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  v24 = [v23 style];

  v25 = [(NTKMargaritaFaceView *)self complicationContainerView];
  [(NTKMargaritaFaceView *)self _complicationAlphaForEditMode:a4 style:v24];
  [(NTKMargaritaFaceView *)self _complicationAlphaForEditMode:a5 style:v24];
  CLKInterpolateBetweenFloatsClipped();
  [v25 setAlpha:?];

  if (!a4 || !a5)
  {
    if (!a5)
    {
      a3 = 1.0 - a3;
    }

    v26 = [(NTKMargaritaFaceView *)self editConfigurations];
    v27 = [v26 objectForKeyedSubscript:&off_15AE0];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_291C;
    v29[3] = &unk_145C8;
    v32 = a3;
    v29[4] = self;
    v30 = v27;
    v31 = v16;
    v28 = v27;
    [v28 enumerateSlotsWithBlock:v29];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (a4 > 13)
  {
    if (a4 == 14)
    {
      v11 = [(NTKMargaritaFaceView *)self backgroundView];
      [v11 setRotation:{objc_msgSend(v14, "rotation")}];
    }

    else
    {
      if (a4 != 15)
      {
        goto LABEL_12;
      }

      v10 = [v14 style];
      [(NTKMargaritaFaceView *)self _applyStyle:v10];
      v11 = [(NTKMargaritaFaceView *)self backgroundView];
      [v11 setStyle:v10];
    }
  }

  else
  {
    if (a4 == 10)
    {
      v9 = [(NTKMargaritaFaceView *)self backgroundView];
      v12 = [(NTKMargaritaFaceView *)self colorPalette];
      v13 = [v12 stripe];
      [v9 setStripeColor:v13 atIndex:{objc_msgSend(v8, "integerValue")}];
    }

    else
    {
      if (a4 != 11)
      {
        goto LABEL_12;
      }

      self->_stripeCount = [v14 count];
      v9 = [(NTKMargaritaFaceView *)self backgroundView];
      [v9 setStripeCount:self->_stripeCount];
    }

    [(NTKMargaritaFaceView *)self _updateComplicationColors];
  }

LABEL_12:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v21 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 > 13)
  {
    if (a6 == 14)
    {
      v19 = [v21 rotation];
      v20 = [v12 rotation];
      v14 = [(NTKMargaritaFaceView *)self backgroundView];
      [v14 applyTransitionFraction:v19 fromRotation:v20 toRotation:a3];
    }

    else
    {
      if (a6 != 15)
      {
        goto LABEL_11;
      }

      v15 = [v21 style];
      v16 = [v12 style];
      [(NTKMargaritaFaceView *)self _applyTransitionFraction:v15 fromStyle:v16 toStyle:a3];
      v14 = [(NTKMargaritaFaceView *)self backgroundView];
      [v14 applyTransitionFraction:v15 fromStyle:v16 toStyle:a3];
    }
  }

  else if (a6 == 10)
  {
    v14 = [(NTKMargaritaFaceView *)self backgroundView];
    v17 = [(NTKMargaritaFaceView *)self interpolatedColorPalette];
    v18 = [v17 stripe];
    [v14 setStripeColor:v18 atIndex:{objc_msgSend(v13, "integerValue")}];
  }

  else
  {
    if (a6 != 11)
    {
      goto LABEL_11;
    }

    v14 = [(NTKMargaritaFaceView *)self backgroundView];
    [v14 applyTransitionFraction:objc_msgSend(v21 fromStripeCount:"count") toStripeCount:{objc_msgSend(v12, "count"), a3}];
  }

LABEL_11:
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11.receiver = self;
  v11.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v11 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if ([(NTKMargaritaFaceView *)self _shouldApplyBreathingForEditMode:a4])
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v9, v7, v7);
    CGAffineTransformTranslate(&v10, &v9, 0.0, 1.0);
    v8 = [(NTKMargaritaFaceView *)self backgroundView];
    v9 = v10;
    [v8 setTransform:&v9];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v14 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if ([(NTKMargaritaFaceView *)self _shouldApplyBreathingForEditMode:a4])
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    v9 = [(NTKMargaritaFaceView *)self backgroundView];
    CGAffineTransformMakeScale(&v13, v8, v8);
    [v9 setTransform:&v13];

    NTKAlphaForRubberBandingFraction();
    v11 = v10;
    v12 = [(NTKMargaritaFaceView *)self backgroundView];
    [v12 setAlpha:v11];
  }
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  v3 = 0.0;
  if (a3 != 1 && a3 != 10 && [(NTKMargaritaFaceView *)self _shouldShowDial])
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 0xB || a3 == 14)
    {
      return NTKEditModeDimmedAlpha;
    }

    else
    {
      return 1.0;
    }
  }

  return v3;
}

- (double)_backgroundAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3 style:(unint64_t)a4
{
  v4 = NTKEditModeDimmedAlpha;
  v5 = 0.0;
  if (a3 == 10)
  {
    v4 = 0.0;
  }

  if (a3 < 2)
  {
    v4 = 1.0;
  }

  if (a4 >= 2)
  {
    v5 = 1.0;
  }

  return v5 * v4;
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
{
  if (a3 > 10)
  {
    if (a3 != 14 && a3 != 11)
    {
      return 1.0;
    }

    return NTKEditModeDimmedAlpha;
  }

  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 0.0;
  if (a3 != 10)
  {
    return 1.0;
  }

  return result;
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4 selectedSlot:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 != 10)
  {
    v160.receiver = self;
    v160.super_class = NTKMargaritaFaceView;
    v41 = [(NTKMargaritaFaceView *)&v160 _keylineViewForCustomEditMode:a3 slot:v8 selectedSlot:v9];
    goto LABEL_64;
  }

  if ([v8 integerValue] >= self->_stripeCount)
  {
    v41 = 0;
    goto LABEL_64;
  }

  v10 = [v8 integerValue];
  v11 = [v9 integerValue];
  if ([v9 isEqualToString:v8])
  {
    v12 = 3.0;
  }

  else
  {
    v12 = 0.5;
  }

  v13 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:10 slot:v9];
  [(NTKMargaritaFaceView *)self _keylineFrameForStripeAtSlot:v8 withEditOption:v13 stripeCount:self->_stripeCount selectedSlot:v9];
  x = v170.origin.x;
  y = v170.origin.y;
  recta = v170.size.width;
  height = v170.size.height;
  v142 = v12;
  v171 = CGRectInset(v170, v12 + 15.0, v12 + 15.0);
  v14 = v171.origin.x;
  v15 = v171.origin.y;
  width = v171.size.width;
  v17 = v171.size.height;
  v161.receiver = self;
  v161.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v161 _keylineFrameForCustomEditMode:10 option:v13 slot:v8 selectedSlot:v9];
  v154 = v18;
  v20 = v19;
  v134 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(NTKMargaritaFaceView *)self device];
  [v25 screenCornerRadius];
  v27 = v22 * v26;
  [v25 screenBounds];
  v29 = v27 / v28;
  v172.origin.x = v154;
  v172.origin.y = v20;
  v172.size.width = v22;
  v172.size.height = v24;
  v30 = v24;
  v153 = v29;
  v173 = CGRectInset(v172, v29, v29);
  v124 = v173.origin.x;
  v31 = v173.origin.y;
  v130 = v173.size.width;
  v32 = v173.size.height;
  v173.origin.x = v14;
  v173.origin.y = v15;
  v173.size.width = width;
  v173.size.height = v17;
  MaxX = CGRectGetMaxX(v173);
  v174.origin.x = v14;
  v174.origin.y = v15;
  v174.size.width = width;
  v174.size.height = v17;
  MaxY = CGRectGetMaxY(v174);
  v175.origin.x = v14;
  v175.origin.y = v15;
  v175.size.width = width;
  v175.size.height = v17;
  MinX = CGRectGetMinX(v175);
  v176.origin.x = v14;
  v176.origin.y = v15;
  v176.size.width = width;
  v176.size.height = v17;
  v141 = CGRectGetMaxY(v176);
  v177.origin.x = v14;
  v177.origin.y = v15;
  v177.size.width = width;
  v177.size.height = v17;
  v152 = CGRectGetMinX(v177);
  v178.origin.x = v14;
  v178.origin.y = v15;
  v178.size.width = width;
  v178.size.height = v17;
  MinY = CGRectGetMinY(v178);
  v179.origin.x = v14;
  v179.origin.y = v15;
  v179.size.width = width;
  v179.size.height = v17;
  v151 = CGRectGetMaxX(v179);
  v156 = v14;
  v157 = v15;
  v180.origin.x = v14;
  v180.origin.y = v15;
  v158 = width;
  v180.size.width = width;
  v133 = v17;
  v180.size.height = v17;
  v148 = CGRectGetMinY(v180);
  v181.origin.x = x;
  v181.size.height = height;
  v181.origin.y = y;
  v181.size.width = recta;
  MidY = CGRectGetMidY(v181);
  v182.origin.x = v154;
  v182.origin.y = v134;
  v34 = v22;
  v182.size.width = v22;
  v182.size.height = v30;
  v35 = CGRectGetMidY(v182);
  v183.origin.x = v124;
  v183.origin.y = v31;
  v183.size.width = v130;
  v183.size.height = v32;
  v123 = CGRectGetMinX(v183);
  v36 = v124;
  v37 = v31;
  v38 = v130;
  v39 = v32;
  if (MidY >= v35)
  {
    v122 = CGRectGetMaxY(*&v36);
    v186.origin.x = v124;
    v186.origin.y = v31;
    v186.size.width = v130;
    v186.size.height = v32;
    v121 = CGRectGetMaxX(v186);
    v187.origin.x = v124;
    v187.origin.y = v31;
    v187.size.width = v130;
    v187.size.height = v32;
    v40 = CGRectGetMaxY(v187);
  }

  else
  {
    v122 = CGRectGetMinY(*&v36);
    v184.origin.x = v124;
    v184.origin.y = v31;
    v184.size.width = v130;
    v184.size.height = v32;
    v121 = CGRectGetMaxX(v184);
    v185.origin.x = v124;
    v185.origin.y = v31;
    v185.size.width = v130;
    v185.size.height = v32;
    v40 = CGRectGetMinY(v185);
  }

  v120 = v40;
  v125 = v153 - v142;
  v188.origin.x = v124;
  v188.origin.y = v31;
  v188.size.width = v130;
  v188.size.height = v32;
  rect = CGRectGetMaxX(v188);
  v189.origin.x = v124;
  v189.origin.y = v31;
  v189.size.width = v130;
  v189.size.height = v32;
  v145 = CGRectGetMaxY(v189);
  v190.origin.x = v154;
  v190.origin.y = v134;
  v190.size.width = v22;
  v190.size.height = v30;
  v127 = CGRectGetMinX(v190);
  v191.origin.x = v124;
  v191.origin.y = v31;
  v191.size.width = v130;
  v191.size.height = v32;
  v132 = CGRectGetMaxY(v191);
  v192.origin.x = v154;
  v192.origin.y = v134;
  v192.size.width = v22;
  v192.size.height = v30;
  v137 = CGRectGetMinX(v192) + -1.0;
  v193.origin.x = v154;
  v193.origin.y = v134;
  v193.size.width = v22;
  v193.size.height = v30;
  v136 = CGRectGetMinY(v193) + -1.0;
  v194.origin.x = v124;
  v194.origin.y = v31;
  v194.size.width = v130;
  v194.size.height = v32;
  v42 = CGRectGetMaxX(v194);
  v195.origin.x = v154;
  v195.origin.y = v134;
  v195.size.width = v34;
  v195.size.height = v30;
  v43 = CGRectGetMinY(v195) + -1.0;
  v196.origin.x = v42;
  v196.origin.y = v43;
  v196.size.width = v153 + 1.0;
  v196.size.height = v153 + 1.0;
  v44 = MaxX;
  v163.x = MaxX;
  v163.y = MaxY;
  v45 = CGRectContainsPoint(v196, v163);
  v46 = v145;
  v129 = v43;
  v131 = v42;
  if (v45)
  {
    v197.origin.x = v42;
    v197.origin.y = v43;
    v197.size.width = v153 + 1.0;
    v197.size.height = v153 + 1.0;
    v47 = CGRectGetMaxY(v197);
    v198.origin.x = v156;
    v198.origin.y = v157;
    v198.size.width = v158;
    v48 = v17;
    v198.size.height = v17;
    v49 = CGRectGetMaxY(v198);
    v50 = acos((v47 - v49) / v125);
    v199.origin.x = v42;
    v199.origin.y = v43;
    v199.size.width = v153 + 1.0;
    v199.size.height = v153 + 1.0;
    v51 = CGRectGetMinX(v199);
    v44 = v51 + sin(v50) * v125;
    v52 = v50 + 4.71238898;
    v53 = v141;
    v54 = v153 - v142;
  }

  else
  {
    v55 = rect;
    v56 = v153 + 1.0;
    v57 = v153 + 1.0;
    v164.x = MaxX;
    v164.y = MaxY;
    v58 = CGRectContainsPoint(*(&v46 - 1), v164);
    v52 = 0.0;
    v53 = v141;
    v48 = v17;
    v54 = v153 - v142;
    if (v58)
    {
      v200.origin.x = v156;
      v200.origin.y = v157;
      v200.size.width = v158;
      v200.size.height = v17;
      v59 = CGRectGetMaxY(v200);
      v201.origin.x = rect;
      v201.origin.y = v145;
      v201.size.width = v153 + 1.0;
      v201.size.height = v153 + 1.0;
      v60 = (v59 - CGRectGetMinY(v201)) / v125;
      if (v60 > 1.0)
      {
        v60 = 1.0;
      }

      v61 = acos(v60);
      v202.origin.x = rect;
      v202.origin.y = v145;
      v202.size.width = v153 + 1.0;
      v202.size.height = v153 + 1.0;
      v62 = CGRectGetMinX(v202);
      v44 = v62 + sin(v61) * v125;
      v52 = 1.57079633 - v61;
    }
  }

  v155 = v52;
  v150 = v44;
  v63 = v127 + -1.0;
  v203.origin.x = v137;
  v203.origin.y = v136;
  v203.size.width = v153 + 1.0;
  v203.size.height = v153 + 1.0;
  v165.x = MinX;
  v165.y = v53;
  v64 = CGRectContainsPoint(v203, v165);
  v65 = v53;
  if (v64)
  {
    v204.origin.x = v137;
    v204.origin.y = v136;
    v204.size.width = v153 + 1.0;
    v204.size.height = v153 + 1.0;
    v66 = CGRectGetMaxY(v204);
    v205.origin.x = v156;
    v205.origin.y = v157;
    v205.size.width = v158;
    v205.size.height = v48;
    v67 = CGRectGetMaxY(v205);
    v68 = acos((v66 - v67) / v54);
    v206.origin.x = v137;
    v206.origin.y = v136;
    v206.size.width = v153 + 1.0;
    v206.size.height = v153 + 1.0;
    v69 = CGRectGetMaxX(v206);
    MinX = v69 - sin(v68) * v54;
    v128 = 4.71238898 - v68;
    v70 = MinY;
    v71 = v63;
  }

  else
  {
    v207.origin.x = v127 + -1.0;
    v207.origin.y = v132;
    v207.size.width = v153 + 1.0;
    v207.size.height = v153 + 1.0;
    v72 = MinX;
    v71 = v127 + -1.0;
    if (CGRectContainsPoint(v207, *(&v65 - 1)))
    {
      v208.origin.x = v156;
      v208.origin.y = v157;
      v208.size.width = v158;
      v208.size.height = v48;
      v73 = CGRectGetMaxY(v208);
      v209.origin.x = v127 + -1.0;
      v209.origin.y = v132;
      v209.size.width = v153 + 1.0;
      v209.size.height = v153 + 1.0;
      v74 = (v73 - CGRectGetMinY(v209)) / v54;
      if (v74 > 1.0)
      {
        v74 = 1.0;
      }

      v75 = acos(v74);
      v210.origin.x = v127 + -1.0;
      v210.origin.y = v132;
      v210.size.width = v153 + 1.0;
      v210.size.height = v153 + 1.0;
      v76 = CGRectGetMaxX(v210);
      MinX = v76 - sin(v75) * v54;
      v77 = v75 + 1.57079633;
    }

    else
    {
      v77 = 3.14159265;
    }

    v128 = v77;
    v70 = MinY;
  }

  v211.origin.x = v71;
  v211.origin.y = v132;
  v211.size.width = v153 + 1.0;
  v211.size.height = v153 + 1.0;
  v166.x = v152;
  v166.y = v70;
  v126 = v71;
  if (CGRectContainsPoint(v211, v166))
  {
    v212.origin.x = v156;
    v212.origin.y = v157;
    v212.size.width = v158;
    v212.size.height = v48;
    v78 = CGRectGetMinY(v212);
    v213.origin.x = v71;
    v213.origin.y = v132;
    v213.size.width = v153 + 1.0;
    v213.size.height = v153 + 1.0;
    v79 = CGRectGetMinY(v213);
    v80 = acos((v78 - v79) / v54);
    v214.origin.x = v71;
    v214.origin.y = v132;
    v214.size.width = v153 + 1.0;
    v214.size.height = v153 + 1.0;
    v81 = CGRectGetMaxX(v214);
    v82 = v54;
    v152 = v81 - sin(v80) * v54;
    v83 = v80 + 1.57079633;
  }

  else
  {
    v82 = v54;
    v215.origin.x = v137;
    v215.origin.y = v136;
    v215.size.width = v153 + 1.0;
    v215.size.height = v153 + 1.0;
    v167.x = v152;
    v167.y = v70;
    if (CGRectContainsPoint(v215, v167))
    {
      v216.origin.x = v137;
      v216.origin.y = v136;
      v216.size.width = v153 + 1.0;
      v216.size.height = v153 + 1.0;
      v84 = CGRectGetMaxY(v216);
      v217.origin.x = v156;
      v217.origin.y = v157;
      v217.size.width = v158;
      v217.size.height = v48;
      v85 = (v84 - CGRectGetMinY(v217)) / v54;
      if (v85 > 1.0)
      {
        v85 = 1.0;
      }

      v86 = acos(v85);
      v218.origin.x = v137;
      v218.origin.y = v136;
      v218.size.width = v153 + 1.0;
      v218.size.height = v153 + 1.0;
      v87 = CGRectGetMaxX(v218);
      v152 = v87 - sin(v86) * v54;
      v83 = 4.71238898 - v86;
    }

    else
    {
      v83 = 3.14159265;
    }
  }

  v135 = v83;
  v219.origin.x = rect;
  v219.origin.y = v145;
  v219.size.width = v153 + 1.0;
  v219.size.height = v153 + 1.0;
  v168.x = v151;
  v168.y = v148;
  if (CGRectContainsPoint(v219, v168))
  {
    v220.origin.x = v156;
    v220.origin.y = v157;
    v220.size.width = v158;
    v220.size.height = v133;
    v88 = CGRectGetMinY(v220);
    v221.origin.x = rect;
    v221.origin.y = v145;
    v221.size.width = v153 + 1.0;
    v221.size.height = v153 + 1.0;
    v89 = CGRectGetMinY(v221);
    v90 = acos((v88 - v89) / v82);
    v222.origin.x = rect;
    v222.origin.y = v145;
    v222.size.width = v153 + 1.0;
    v222.size.height = v153 + 1.0;
    v91 = CGRectGetMinX(v222);
    v151 = v91 + sin(v90) * v82;
    v92 = 1.57079633 - v90;
    v93 = x;
    v94 = v129;
  }

  else
  {
    v223.origin.x = v131;
    v94 = v129;
    v223.origin.y = v129;
    v223.size.width = v153 + 1.0;
    v223.size.height = v153 + 1.0;
    v169.x = v151;
    v169.y = v148;
    v92 = 0.0;
    v93 = x;
    if (CGRectContainsPoint(v223, v169))
    {
      v224.origin.x = v131;
      v224.origin.y = v129;
      v224.size.width = v153 + 1.0;
      v224.size.height = v153 + 1.0;
      v95 = CGRectGetMaxY(v224);
      v225.origin.x = v156;
      v225.origin.y = v157;
      v225.size.width = v158;
      v225.size.height = v133;
      v96 = (v95 - CGRectGetMinY(v225)) / v82;
      if (v96 > 1.0)
      {
        v96 = 1.0;
      }

      v97 = acos(v96);
      v226.origin.x = v131;
      v226.origin.y = v129;
      v226.size.width = v153 + 1.0;
      v226.size.height = v153 + 1.0;
      v98 = CGRectGetMinX(v226);
      v151 = v98 + sin(v97) * v82;
      v92 = v97 + 4.71238898;
    }
  }

  v99 = v10 - 1;
  if (v10 - 1 == v11)
  {
    v111 = v153 + -3.0;
    v230.origin.x = v137;
    v230.origin.y = v136;
    v230.size.width = v153 + 1.0;
    v230.size.height = v153 + 1.0;
    MinY = MinY + -3.5;
    v112 = fmax((CGRectGetMaxY(v230) - MinY) / (v153 + -3.0), 0.0);
    if (v112 > 1.0)
    {
      v112 = 1.0;
    }

    v113 = acos(v112);
    v231.origin.x = v137;
    v231.origin.y = v136;
    v231.size.width = v153 + 1.0;
    v231.size.height = v153 + 1.0;
    v114 = CGRectGetMaxX(v231);
    v115 = sin(v113);
    v152 = v114 - v115 * v111;
    v135 = 4.71238898 - v113;
    v148 = v148 + -3.5;
    v232.origin.x = v131;
    v232.origin.y = v94;
    v232.size.width = v153 + 1.0;
    v232.size.height = v153 + 1.0;
    v151 = CGRectGetMinX(v232) + v115 * v111;
    if (v113 + 4.71238898 >= 6.28318531)
    {
      v92 = v113 + 4.71238898 + -6.28318531;
    }

    else
    {
      v92 = v113 + 4.71238898;
    }

    v106 = 1;
    v108 = 1.57079633;
    v107 = v142;
    v110 = 3.0;
    v109 = 1.57079633;
  }

  else
  {
    if (v10 + 1 == v11)
    {
      v100 = v153 + -3.0;
      v227.origin.x = v126;
      v227.origin.y = v132;
      v227.size.width = v153 + 1.0;
      v227.size.height = v153 + 1.0;
      v141 = v141 + 3.5;
      v101 = fmax((v141 - CGRectGetMinY(v227)) / (v153 + -3.0), 0.0);
      if (v101 > 1.0)
      {
        v101 = 1.0;
      }

      v102 = acos(v101);
      v228.origin.x = v126;
      v228.origin.y = v132;
      v228.size.width = v153 + 1.0;
      v228.size.height = v153 + 1.0;
      v103 = CGRectGetMaxX(v228);
      v104 = sin(v102);
      MinX = v103 - v104 * v100;
      v105 = v102 + 1.57079633;
      MaxY = MaxY + 3.5;
      v93 = x;
      v229.origin.y = v145;
      v229.origin.x = rect;
      v229.size.width = v153 + 1.0;
      v229.size.height = v153 + 1.0;
      v106 = 0;
      v150 = CGRectGetMinX(v229) + v104 * v100;
      v155 = 1.57079633 - v102;
      v107 = 3.0;
      v108 = 4.71238898;
      v109 = 4.71238898;
      v110 = v142;
      goto LABEL_51;
    }

    v106 = 1;
    v109 = 1.57079633;
    v108 = 4.71238898;
    v110 = v142;
    v107 = v142;
  }

  v105 = v128;
LABEL_51:
  v116 = +[UIBezierPath bezierPath];
  v117 = v116;
  v118 = v155;
  if (vabdd_f64(v92, v155) > 0.0001)
  {
    [v116 addArcWithCenter:1 radius:v121 - v93 startAngle:v120 - y endAngle:v153 clockwise:{v92, v155}];
    v118 = v155;
  }

  if (vabdd_f64(v109, v118) > 0.0001)
  {
    [v117 addArcWithCenter:v106 radius:v150 - v93 startAngle:MaxY - y endAngle:v107 clockwise:?];
  }

  if (vabdd_f64(v105, v109) > 0.0001)
  {
    [v117 addArcWithCenter:v106 radius:MinX - v93 startAngle:v141 - y endAngle:v107 clockwise:{v109, v105}];
  }

  if (vabdd_f64(v105, v135) > 0.0001)
  {
    [v117 addArcWithCenter:1 radius:v123 - v93 startAngle:v122 - y endAngle:v153 clockwise:{v105, v135}];
  }

  if (vabdd_f64(v108, v135) > 0.0001)
  {
    [v117 addArcWithCenter:v99 != v11 radius:v152 - v93 startAngle:MinY - y endAngle:v110 clockwise:{v135, v108}];
  }

  if (vabdd_f64(v92, v108) > 0.0001)
  {
    [v117 addArcWithCenter:v99 != v11 radius:v151 - v93 startAngle:v148 - y endAngle:v110 clockwise:{v108, v92}];
  }

  [v117 closePath];
  v41 = NTKKeylineViewWithBezierPath();

LABEL_64:

  return v41;
}

- (BOOL)_faceEditingViewShouldOffsetForComplicationEditMode
{
  v2 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
    v4 = [v3 style] == &dword_0 + 2 || objc_msgSend(v3, "style") == &dword_0 + 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_keylineSelectionChangingTo:(id)a3 editMode:(int64_t)a4
{
  v7 = a3;
  if (a4 == 10)
  {
    v9 = v7;
    v8 = [(NTKMargaritaFaceView *)self delegate];
    [v8 faceViewWantsCustomKeylineFramesReloadedForEditMode:10];

    objc_storeStrong(&self->_selectedStripeSlot, a3);
    v7 = v9;
  }
}

- (CGRect)_keylineFrameForCustomEditMode:(int64_t)a3 option:(id)a4 slot:(id)a5 selectedSlot:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3 == 10)
  {
    v13 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:11 slot:0];
    v14 = [v13 count];

    v15 = v10;
    if (([v11 isEqualToString:v12] & 1) == 0)
    {
      v16 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:10 slot:v12];

      v15 = v16;
    }

    [(NTKMargaritaFaceView *)self _keylineFrameForStripeAtSlot:v11 withEditOption:v15 stripeCount:v14 selectedSlot:v12];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v33.receiver = self;
    v33.super_class = NTKMargaritaFaceView;
    [(NTKMargaritaFaceView *)&v33 _keylineFrameForCustomEditMode:a3 option:v10 slot:v11 selectedSlot:v12];
    v18 = v25;
    v20 = v26;
    v22 = v27;
    v24 = v28;
  }

  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGRect)_keylineFrameForStripeAtSlot:(id)a3 withEditOption:(id)a4 stripeCount:(unint64_t)a5 selectedSlot:(id)a6
{
  v28.receiver = self;
  v28.super_class = NTKMargaritaFaceView;
  v9 = a4;
  v10 = a3;
  [(NTKMargaritaFaceView *)&v28 _keylineFrameForCustomEditMode:10 option:v9 slot:0 selectedSlot:0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v27.receiver = self;
  v27.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v27 _faceViewFrameForEditMode:10 option:v9 slot:v10];
  v20 = v19;
  v22 = v21;

  v23 = [v10 integerValue];
  v24 = v22 / a5;
  if (v23)
  {
    MinY = v20 + v24 * v23;
  }

  else
  {
    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    MinY = CGRectGetMinY(v29);
  }

  if (v23 == (a5 - 1))
  {
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    MaxY = CGRectGetMaxY(v30);
  }

  else
  {
    MaxY = v20 + v24 * (v23 + 1);
  }

  v31.size.height = MaxY - MinY;
  v31.origin.x = v12;
  v31.origin.y = MinY;
  v31.size.width = v16;
  return CGRectInset(v31, -15.0, -15.0);
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v12 = a4;
  v10 = a5;
  if ([a6 isEqualToString:NTKComplicationSlotBezel])
  {
    if ([v12 complicationType])
    {
      if ([v10 complicationType])
      {
        goto LABEL_6;
      }

      a3 = 1.0 - a3;
    }

    v11 = [(NTKMargaritaFaceView *)self backgroundView];
    [v11 applyTransitionFractionToCompactCircular:a3];
  }

LABEL_6:
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKMargaritaFaceView;
  [(NTKMargaritaFaceView *)&v7 _configureComplicationView:v6 forSlot:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }
}

- (id)_complicationSlotsHiddenByCurrentConfiguration
{
  v3 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:15 slot:0];
  v4 = [v3 style];

  v5 = 0;
  if (v4 <= 1)
  {
    v6 = [(NTKMargaritaFaceView *)self delegate];
    v7 = [v6 faceViewComplicationSlots];
    v5 = [NSSet setWithArray:v7];
  }

  return v5;
}

- (void)_updateComplicationColors
{
  v3 = [(NTKMargaritaFaceView *)self suggestedColorOptionForComplicationColor];
  if (v3)
  {
    v4 = [(NTKMargaritaFaceView *)self colorPalette];
    [v4 setPigmentEditOption:v3];
  }

  v5 = [(NTKMargaritaFaceView *)self colorPalette];
  v6 = [v5 complication];

  [(NTKMargaritaFaceView *)self setComplicationColor:v6];
  [(NTKMargaritaFaceView *)self setInterpolatedComplicationColor:v6];
  [(NTKMargaritaFaceView *)self setAlternateComplicationColor:v6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_454C;
  v7[3] = &unk_145F0;
  v7[4] = self;
  [(NTKMargaritaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
}

- (id)_utilityBezelComplicationView
{
  v2 = [(NTKMargaritaFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  v3 = [v2 display];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityFlatComplicationView];

  if (v4)
  {
    v5 = [v2 display];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v6 = a3;
  v7 = [(NTKMargaritaFaceView *)self colorForView:v6 accented:0];
  v8 = [(NTKMargaritaFaceView *)self colorForView:v6 accented:1];

  v9 = CLKUIMonochromeFiltersForStyleWithTintedBackground();

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v7 = a3;
  v8 = [(NTKMargaritaFaceView *)self colorForView:v7 accented:0];
  v9 = [(NTKMargaritaFaceView *)self colorForView:v7 accented:1];

  if (a4 <= 2)
  {
    if (!a4)
    {
LABEL_10:
      v10 = NTKFlatMonochromeFilter();
      goto LABEL_11;
    }

    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_9:
    v10 = NTKDesatMonochromeFilter();
LABEL_11:
    v7 = v10;
    goto LABEL_12;
  }

  if (a4 == 3 || a4 == 4 || a4 == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v7;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKMargaritaFaceView *)self colorForView:v6 accented:0];
  v8 = [(NTKMargaritaFaceView *)self colorForView:v6 accented:1];

  if (a4 <= 2)
  {
    if (!a4)
    {
LABEL_10:
      v9 = NTKFlatMonochromeFilterOpaque();
      goto LABEL_11;
    }

    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

LABEL_9:
    v9 = NTKDesatMonochromeFilterOpaque();
LABEL_11:
    v6 = v9;
    goto LABEL_12;
  }

  if (a4 == 3 || a4 == 4 || a4 == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v6;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v6 = a3;
  v7 = [(NTKMargaritaFaceView *)self _usePrimaryColorForNonAccentedColorForView:v6];
  if (a4 || v7)
  {
    v9 = [(NTKMargaritaFaceView *)self suggestedColorOptionForComplicationColor];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_4A98;
    v18 = sub_4AA8;
    v19 = 0;
    if (v9)
    {
      v10 = [(NTKMargaritaFaceView *)self colorPalette];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_4AB0;
      v13[3] = &unk_14618;
      v13[4] = &v14;
      [v10 executeWithOption:v9 block:v13];

      v11 = v15[5];
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = CLKUIDefaultAlternateComplicationColor();
  }

  return v8;
}

- (BOOL)_usePrimaryColorForNonAccentedColorForView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [v4 complicationTemplate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      goto LABEL_5;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

LABEL_5:
  v7 = 1;
LABEL_7:

  return v7;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKMargaritaFaceView *)self device];
  switch(a4)
  {
    case 11:
      v28 = -[NTKMargaritaFaceView _enabledStripeColorsWithCount:](self, "_enabledStripeColorsWithCount:", [v8 count]);
      v27 = [NTKMargaritaBackgroundView stripeCountSwatchImageForDevice:v10 withColors:v28];
      goto LABEL_10;
    case 14:
      v28 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:11 slot:0];
      v29 = -[NTKMargaritaFaceView _enabledStripeColorsWithCount:](self, "_enabledStripeColorsWithCount:", [v28 count]);
      v27 = +[NTKMargaritaBackgroundView rotationSwatchImageForDevice:withColors:rotation:](NTKMargaritaBackgroundView, "rotationSwatchImageForDevice:withColors:rotation:", v10, v29, [v8 rotation]);

LABEL_10:
      break;
    case 15:
      v11 = [[NTKMargaritaFaceView alloc] initWithFaceStyle:44 forDevice:v10 clientIdentifier:0];
      [v10 screenBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(NTKMargaritaFaceView *)v11 setFrame:?];
      [(NTKMargaritaFaceView *)v11 _loadSnapshotContentViews];
      v20 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:11 slot:0];
      [(NTKMargaritaFaceView *)v11 _applyOption:v20 forCustomEditMode:11 slot:0];
      [(NTKMargaritaFaceView *)v11 _applyOption:v8 forCustomEditMode:15 slot:0];
      v31 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:14 slot:0];
      [NTKMargaritaFaceView _applyOption:v11 forCustomEditMode:"_applyOption:forCustomEditMode:slot:" slot:?];
      if ([v20 count])
      {
        v21 = 0;
        do
        {
          v22 = [NSString stringWithFormat:@"%lu", v21];
          v23 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:10 slot:v22];
          [(NTKMargaritaFaceView *)v11 setOption:v23 forCustomEditMode:10 slot:v22];

          ++v21;
        }

        while (v21 < [v20 count]);
      }

      v24 = NTKIdealizedDate();
      [(NTKMargaritaFaceView *)v11 setOverrideDate:v24 duration:0.0];

      v25 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v13, v15, v17, v19}];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_4F44;
      v33[3] = &unk_14640;
      v34 = v11;
      v26 = v11;
      v27 = [v25 imageWithActions:v33];

      break;
    default:
      v32.receiver = self;
      v32.super_class = NTKMargaritaFaceView;
      v27 = [(NTKMargaritaFaceView *)&v32 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
      break;
  }

  return v27;
}

- (id)_enabledStripeColorsWithCount:(unint64_t)a3
{
  v5 = objc_opt_new();
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = [NSString stringWithFormat:@"%lu", v6];
      v8 = [(NTKMargaritaFaceView *)self optionForCustomEditMode:10 slot:v7];
      v9 = [v8 pigmentEditOption];

      v10 = [(NTKMargaritaFaceView *)self colorPalette];
      [v10 setPigmentEditOption:v9];

      v11 = [(NTKMargaritaFaceView *)self colorPalette];
      v12 = [v11 stripe];
      [v5 addObject:v12];

      ++v6;
    }

    while (a3 != v6);
  }

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if ((a3 - 11) > 4)
  {
    return 0;
  }

  else
  {
    return (&off_146B0)[a3 - 11];
  }
}

- (id)suggestedColorOptionForComplicationColor
{
  v3 = [(NTKMargaritaFaceView *)self editConfigurations];
  v4 = [v3 objectForKeyedSubscript:&off_15AE0];

  v5 = +[NSMutableDictionary dictionary];
  v27 = v4;
  v6 = [v4 editOptionForSlot:@"0"];
  v7 = [v6 pigmentEditOption];

  v25 = v7;
  if (v25)
  {
    if (self->_stripeCount)
    {
      v8 = 0;
      v26 = 1;
      v9 = 1;
      v10 = v25;
      while (1)
      {
        v11 = [NSNumber numberWithInteger:v8];
        v12 = [v11 stringValue];
        v13 = [v27 editOptionForSlot:v12];
        v14 = [v13 pigmentEditOption];

        if (v14)
        {
          v15 = [v5 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [v5 objectForKeyedSubscript:v14];
            v17 = [v16 integerValue];

            v18 = [NSNumber numberWithInteger:v17 + 1];
            [v5 setObject:v18 forKeyedSubscript:v14];

            if (!v8)
            {
              goto LABEL_17;
            }

LABEL_9:
            v19 = v14;
            if ([v19 isEqual:v10])
            {
              v20 = v9 + 1;
LABEL_16:

              v9 = v20;
              goto LABEL_17;
            }

            if (v9 > v26)
            {
LABEL_14:
              v21 = v10;

              v25 = v21;
            }

            else if ([v25 isWhiteColor])
            {
              if (v9 == v26)
              {
                goto LABEL_14;
              }

              v9 = v26;
            }

            else
            {
              v9 = v26;
            }

            v22 = v19;

            v10 = v22;
            v20 = 1;
            v26 = v9;
            goto LABEL_16;
          }

          [v5 setObject:&off_15B28 forKeyedSubscript:v14];
          if (v8)
          {
            goto LABEL_9;
          }
        }

LABEL_17:

        if (++v8 >= self->_stripeCount)
        {
          goto LABEL_23;
        }
      }
    }

    v26 = 1;
    v10 = v25;
LABEL_23:
    v23 = [(NTKMargaritaFaceView *)self _findMostFrequentColorWithFrequencies:v5 withLongestColor:v25 longestLength:v26];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_findMostFrequentColorWithFrequencies:(id)a3 withLongestColor:(id)a4 longestLength:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_4A98;
  v23 = sub_4AA8;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_553C;
  v14[3] = &unk_14668;
  v14[5] = &v15;
  v14[6] = &v19;
  v14[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];
  v9 = [v7 objectForKey:v8];
  v10 = [v9 integerValue];

  v11 = v8;
  if (v10 != v16[3])
  {
    v11 = v20[5];
  }

  v12 = v11;
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v12;
}

- (unint64_t)slotIndexForOption:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = [(NTKMargaritaFaceView *)self editConfigurations];
  v6 = [v5 objectForKeyedSubscript:&off_15AE0];

  v7 = [(NTKMargaritaFaceView *)self device];
  v8 = [NTKMargaritaFace _slotsForCustomEditMode:10 forDevice:v7];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5798;
  v13[3] = &unk_14690;
  v9 = v6;
  v14 = v9;
  v10 = v4;
  v15 = v10;
  v16 = &v17;
  [v8 enumerateObjectsUsingBlock:v13];
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

@end