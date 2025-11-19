@interface NTKVictoryAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (CGPoint)_contentCenterOffset;
- (CGPoint)_myContentCenterOffset;
- (NTKVictoryAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backgroundAlphaForEditMode:(int64_t)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (double)_handsAlphaForEditMode:(int64_t)a3;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_keylineEdgeGapForState:(int64_t)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (unint64_t)textLayoutStyleForSlot:(int64_t)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColor:(id)a3 alternateColor:(id)a4 toComplicationView:(id)a5;
- (void)_applyComplicationViewColor:(id)a3 alternateColor:(id)a4;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_setStyle:(unint64_t)a3;
- (void)_unloadSnapshotContentViews;
- (void)logoTappedFromRect:(CGRect)a3;
@end

@implementation NTKVictoryAnalogFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (NTKVictoryAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v21.receiver = self;
  v21.super_class = NTKVictoryAnalogFaceView;
  v9 = [(NTKVictoryAnalogFaceView *)&v21 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v20 = 0.0;
    v18 = 0u;
    v19 = 0u;
    v11 = [(NTKVictoryAnalogFaceView *)v9 device:0];
    sub_5CB0(v11, &v17);

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    utilityComplicationFactory = v10->_utilityComplicationFactory;
    v10->_utilityComplicationFactory = v12;

    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setDelegate:v10];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setBottomCenterLayout:3];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setScreenEdgeInsets:v18, v19];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setMaxNormalLongWidth:v20];
    v14 = [(NTKVictoryAnalogFaceView *)v10 device];
    v15 = [v14 deviceCategory];

    if (v15 != &dword_0 + 1)
    {
      [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setNormalSidePadding:0.0];
      [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setNormalCircularPadding:CGSizeZero.width, CGSizeZero.height];
      [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setCrownIndicatorGap:0.0];
    }

    [(NTKVictoryAnalogFaceView *)v10 setComplicationFactory:v10->_utilityComplicationFactory];
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKVictoryAnalogColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v19.receiver = self;
  v19.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v19 _loadSnapshotContentViews];
  v3 = [(NTKVictoryAnalogFaceView *)self device];
  v4 = [UIView alloc];
  [v3 screenBounds];
  v5 = [v4 initWithFrame:?];
  scaleView = self->_scaleView;
  self->_scaleView = v5;

  v7 = [(NTKVictoryAnalogFaceView *)self contentView];
  [v7 insertSubview:self->_scaleView atIndex:0];

  v8 = [NTKVictoryAnalogBackgroundView alloc];
  [v3 screenBounds];
  v9 = [v8 initWithFrame:v3 forDevice:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v9;

  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setDelegate:self];
  [(UIView *)self->_scaleView addSubview:self->_backgroundView];
  v11 = [NTKRoundedCornerOverlayView alloc];
  [(NTKVictoryAnalogFaceView *)self bounds];
  v12 = [v11 initWithFrame:v3 forDeviceCornerRadius:?];
  cornerView = self->_cornerView;
  self->_cornerView = v12;

  v14 = [(NTKVictoryAnalogFaceView *)self contentView];
  [v14 insertSubview:self->_cornerView aboveSubview:self->_scaleView];

  v15 = [UIView alloc];
  [v3 screenBounds];
  v16 = [v15 initWithFrame:?];
  contentBackgroundView = self->_contentBackgroundView;
  self->_contentBackgroundView = v16;

  v18 = [(NTKVictoryAnalogFaceView *)self contentView];
  [v18 insertSubview:self->_contentBackgroundView atIndex:0];
}

- (void)_unloadSnapshotContentViews
{
  [(UIView *)self->_contentBackgroundView removeFromSuperview];
  contentBackgroundView = self->_contentBackgroundView;
  self->_contentBackgroundView = 0;

  [(UIView *)self->_scaleView removeFromSuperview];
  scaleView = self->_scaleView;
  self->_scaleView = 0;

  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;

  v7.receiver = self;
  v7.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v7 _unloadSnapshotContentViews];
}

- (void)_configureTimeView:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKVictoryAnalogFaceView;
  v3 = a3;
  [(NTKVictoryAnalogFaceView *)&v6 _configureTimeView:v3];
  v4 = [v3 secondHandView];

  v5 = +[UIColor blackColor];
  [v4 setHandDotColor:v5];
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKVictoryAppLauncher prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)_applyDataMode
{
  v3 = [(NTKVictoryAnalogFaceView *)self dataMode]== &dword_0 + 1;
  backgroundView = self->_backgroundView;

  [(NTKVictoryAnalogBackgroundView *)backgroundView setUserInteractionEnabled:v3];
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  v4 = [(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:a3];

  [(NTKUtilityComplicationFactory *)utilityComplicationFactory keylineCornerRadiusForSlot:v4];
  return result;
}

- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v4 = &NTKEditSpeedComplicationsDefault;
  if (a3 != 10)
  {
    v4 = &NTKEditSpeedCustomEditModeDefault;
  }

  return *v4;
}

- (CGPoint)_contentCenterOffset
{
  [(NTKVictoryAnalogFaceView *)self _myContentCenterOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_myContentCenterOffset
{
  v3 = [(NTKVictoryAnalogFaceView *)self optionForCustomEditMode:11 slot:0];
  v4 = [v3 style];

  if (v4 == &dword_4)
  {
    goto LABEL_2;
  }

  v7 = [(NTKVictoryAnalogFaceView *)self delegate];
  v8 = [v7 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottomCenter];

  y = 2.0;
  x = 0.0;
  if (v8)
  {
    goto LABEL_10;
  }

  v9 = [(NTKVictoryAnalogFaceView *)self delegate];
  if ([v9 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotTopLeft])
  {
    v10 = [(NTKVictoryAnalogFaceView *)self delegate];
    v11 = [v10 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotTopRight];

    if (v11)
    {
LABEL_2:
      x = CGPointZero.x;
      y = CGPointZero.y;
      goto LABEL_10;
    }
  }

  else
  {
  }

  y = 2.0;
  if (v4 != (&dword_0 + 3))
  {
    y = 1.0;
  }

LABEL_10:
  v12 = x;
  result.y = y;
  result.x = v12;
  return result;
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKVictoryAnalogFaceView *)self palette];
  v3 = [v2 background];
  v4 = CLKIsBlackColor();

  return v4 ^ 1;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v32 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    backgroundView = self->_backgroundView;
    v10 = [(NTKVictoryAnalogFaceView *)self palette];
    [(NTKVictoryAnalogBackgroundView *)backgroundView setPalette:v10];

    v11 = [(NTKVictoryAnalogFaceView *)self palette];
    v12 = [v11 background];
    [(UIView *)self->_contentBackgroundView setBackgroundColor:v12];

    v13 = [(NTKVictoryAnalogFaceView *)self delegate];
    [v13 faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (a4 == 11)
  {
    -[NTKVictoryAnalogFaceView _setStyle:](self, "_setStyle:", [v32 style]);
  }

  else if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    goto LABEL_9;
  }

  v14 = [(NTKVictoryAnalogFaceView *)self optionForCustomEditMode:10 slot:0];
  v15 = [v14 pigmentEditOption];

  if (v15)
  {
    v16 = [(NTKVictoryAnalogFaceView *)self palette];
    v17 = [v16 hands];

    v18 = [(NTKVictoryAnalogFaceView *)self timeView];
    v19 = [v18 minuteHandView];
    [v19 setColor:v17];

    v20 = [v18 hourHandView];
    [v20 setColor:v17];

    v21 = [v18 secondHandView];
    v22 = [(NTKVictoryAnalogFaceView *)self palette];
    v23 = [v22 secondHand];
    [v21 setColor:v23];

    v24 = [(NTKVictoryAnalogFaceView *)self palette];
    v25 = [v24 handInlay];

    v26 = [v18 minuteHandView];
    [v26 setInlayColor:v25];

    v27 = [v18 hourHandView];
    [v27 setInlayColor:v25];

    v28 = [(NTKVictoryAnalogFaceView *)self palette];
    v29 = [v28 cornerComplicationsAccent];
    v30 = [(NTKVictoryAnalogFaceView *)self palette];
    v31 = [v30 cornerComplicationsAlternate];
    [(NTKVictoryAnalogFaceView *)self _applyComplicationViewColor:v29 alternateColor:v31];
  }

LABEL_9:
}

- (void)_setStyle:(unint64_t)a3
{
  self->_style = a3;
  v5 = [(NTKVictoryAnalogFaceView *)self palette];
  [v5 setStyle:a3];

  backgroundView = self->_backgroundView;
  v7 = [(NTKVictoryAnalogFaceView *)self palette];
  [(NTKVictoryAnalogBackgroundView *)backgroundView setPalette:v7];

  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setStyle:a3];
  v9 = [(NTKVictoryAnalogFaceView *)self palette];
  v8 = [v9 background];
  [(UIView *)self->_contentBackgroundView setBackgroundColor:v8];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 == 10)
  {
    backgroundView = self->_backgroundView;
    v20 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    v21 = [v20 fromPalette];
    v22 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    v23 = [v22 toPalette];
    [(NTKVictoryAnalogBackgroundView *)backgroundView applyTransitionFraction:v21 fromPalette:v23 toPalette:[(NTKVictoryAnalogBackgroundView *)self->_backgroundView style] style:a3];

    v24 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    v25 = [v24 cornerComplicationsAccent];
    v26 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    v27 = [v26 cornerComplicationsAlternate];
    [(NTKVictoryAnalogFaceView *)self _applyComplicationViewColor:v25 alternateColor:v27];

    v28 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    v29 = [v28 background];
    [(UIView *)self->_contentBackgroundView setBackgroundColor:v29];
LABEL_9:

    goto LABEL_10;
  }

  if (a6 == 11)
  {
    v15 = [v12 style];
    v16 = [v13 style];
    if (v15 != v16)
    {
      if (a3 >= 0.5)
      {
        v30 = v16;
        CLKMapFractionIntoRange();
        v18 = v31;
        v15 = v30;
      }

      else
      {
        CLKMapFractionIntoRange();
        v18 = v17;
      }

      v32 = [(NTKVictoryAnalogFaceView *)self palette];
      v28 = [v32 copy];

      [v28 setStyle:v15];
      CLKMapFractionIntoRange();
      memset(&v38, 0, sizeof(v38));
      CGAffineTransformMakeScale(&v38, v33, v33);
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setStyle:v15];
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setPalette:v28];
      v37 = v38;
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setTransform:&v37];
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setAlpha:v18];
      v29 = [(NTKVictoryAnalogFaceView *)self palette];
      v34 = [v29 cornerComplicationsAccent];
      v35 = [(NTKVictoryAnalogFaceView *)self palette];
      v36 = [v35 cornerComplicationsAlternate];
      [(NTKVictoryAnalogFaceView *)self _applyComplicationViewColor:v34 alternateColor:v36];

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_applyComplicationViewColor:(id)a3 alternateColor:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4060;
  v7[3] = &unk_C4B0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKVictoryAnalogFaceView *)v8 enumerateComplicationDisplayWrappersWithBlock:v7];
}

- (void)_applyColor:(id)a3 alternateColor:(id)a4 toComplicationView:(id)a5
{
  v10 = a3;
  v7 = a5;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = v7;
    v9 = [(NTKVictoryAnalogFaceView *)self faceColorPalette];
    [v8 applyFaceColorPalette:v9 units:1];

    [v8 setForegroundColor:v10];
    [v8 setForegroundAlpha:1.0];
    [v8 setForegroundImageAlpha:1.0];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v21.receiver = self;
  v21.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v21 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    [(NTKVictoryAnalogFaceView *)self _complicationAlphaForEditMode:a4];
    v12 = v10 * v11;
    [(NTKVictoryAnalogFaceView *)self _backgroundAlphaForEditMode:a4];
    v14 = v10 * v13;
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeScale(&v20, v8, v8);
    v15 = [(NTKVictoryAnalogFaceView *)self foregroundContainerView];
    v19 = v20;
    [v15 setTransform:&v19];
    [v15 setAlpha:v12];
    backgroundView = self->_backgroundView;
    v19 = v20;
    [(NTKVictoryAnalogBackgroundView *)backgroundView setTransform:&v19];
    [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setAlpha:v14];
    cornerView = self->_cornerView;
    v19 = v20;
    [(NTKRoundedCornerOverlayView *)cornerView setTransform:&v19];
    contentBackgroundView = self->_contentBackgroundView;
    v19 = v20;
    [(UIView *)contentBackgroundView setTransform:&v19];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v12 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, v7, v7);
    v8 = [(NTKVictoryAnalogFaceView *)self contentView];
    v10 = v11;
    [v8 setTransform:&v10];

    v9 = [(NTKVictoryAnalogFaceView *)self complicationContainerView];
    v10 = v11;
    [v9 setTransform:&v10];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v14.receiver = self;
  v14.super_class = NTKVictoryAnalogFaceView;
  [NTKVictoryAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKVictoryAnalogFaceView *)self _handsAlphaForEditMode:a4];
  [(NTKVictoryAnalogFaceView *)self _handsAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKVictoryAnalogFaceView *)self timeView];
  [v10 setAlpha:v9];

  [(NTKVictoryAnalogFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKVictoryAnalogFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKVictoryAnalogFaceView *)self foregroundContainerView];
  [v13 setAlpha:v12];

  [(NTKVictoryAnalogFaceView *)self _backgroundAlphaForEditMode:a4];
  [(NTKVictoryAnalogFaceView *)self _backgroundAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setAlpha:?];
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

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    return 1.0;
  }

  return result;
}

- (double)_handsAlphaForEditMode:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 10) >= 2)
  {
    if (a3 == 1)
    {
      return NTKEditModeDimmedAlpha;
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v3 _prepareForEditing];
  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView willBeginEditing];
}

- (void)logoTappedFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(NTKVictoryAnalogFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:v8];

  v9 = [(NTKVictoryAnalogFaceView *)self delegate];
  [v9 faceViewRequestedLaunchFromRect:{x, y, width, height}];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  v9 = a5;
  v10 = a3;
  v11 = [(NTKUtilityComplicationFactory *)utilityComplicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:v9]];

  [(NTKVictoryAnalogFaceView *)self _configureComplicationView:v11 forSlot:v9];
  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v15 _configureComplicationView:v6 forSlot:v7];
  v8 = [(NTKVictoryAnalogFaceView *)self optionForCustomEditMode:10 slot:0];
  v9 = [v8 pigmentEditOption];

  if (v9)
  {
    v10 = [(NTKVictoryAnalogFaceView *)self palette];
    v11 = [v10 cornerComplicationsAccent];
    v12 = [(NTKVictoryAnalogFaceView *)self palette];
    v13 = [v12 cornerComplicationsAlternate];
    [(NTKVictoryAnalogFaceView *)self _applyColor:v11 alternateColor:v13 toComplicationView:v6];

    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
    {
      v14 = v6;
      [v14 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKVictoryAnalogFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v7))}];
      [v14 setAlwaysEnforcePlatterInset:{objc_msgSend(v7, "isEqualToString:", NTKComplicationSlotBottomCenter)}];
    }
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  v6 = [(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:a4];

  return [(NTKUtilityComplicationFactory *)utilityComplicationFactory layoutOverrideForComplicationType:a3 inSlot:v6];
}

- (int64_t)_utilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  switch(a3)
  {
    case 1:
      v4 = &NTKComplicationSlotTopLeft;
LABEL_7:
      v5 = *v4;

      return v5;
    case 10:
      v4 = &NTKComplicationSlotBottomCenter;
      goto LABEL_7;
    case 2:
      v4 = &NTKComplicationSlotTopRight;
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (void)_loadLayoutRules
{
  [(NTKVictoryAnalogFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29[0] = NTKComplicationSlotTopLeft;
  v29[1] = NTKComplicationSlotTopRight;
  v29[2] = NTKComplicationSlotBottomCenter;
  v11 = [NSArray arrayWithObjects:v29 count:3];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [(NTKVictoryAnalogFaceView *)self complicationLayoutforSlot:v16];
        [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory configureComplicationLayout:v17 forSlot:[(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_4C84;
  v24[3] = &unk_C500;
  v24[4] = self;
  v18 = objc_retainBlock(v24);
  v19 = [(NTKVictoryAnalogFaceView *)self device];
  NTKDefaultCornerComplicationScaleForFullscreenOpaqueFaceForDevice();
  v21 = v20;

  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, v21, v21);
  v22 = v18;
  NTKEnumerateComplicationStates();
}

- (double)_keylineEdgeGapForState:(int64_t)a3
{
  v3 = 0.0;
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v4 = [(NTKVictoryAnalogFaceView *)self device];
      sub_5CB0(v4, v6);
      v3 = *&v6[1];
    }

    else
    {
      v4 = [(NTKVictoryAnalogFaceView *)self device];
      sub_5CB0(v4, v7);
      v3 = v7[0];
    }
  }

  return v3;
}

- (double)_keylinePaddingForState:(int64_t)a3
{
  result = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    return v4 + 1.5;
  }

  return result;
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)a3
{
  v4 = [(NTKVictoryAnalogFaceView *)self _slotForUtilitySlot:a3];
  v5 = [(NTKVictoryAnalogFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    return &off_CDD0;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 == 11)
  {
    v10 = v8;
    v11 = [a5 objectForKeyedSubscript:&off_CB38];
    v12 = [v11 pigmentEditOption];

    if (!qword_12490)
    {
      v13 = objc_opt_new();
      v14 = qword_12490;
      qword_12490 = v13;
    }

    v15 = [NSString stringWithFormat:@"%@-%@", v10, v12];
    v16 = [qword_12490 objectForKey:v15];
    if (!v16)
    {
      [(NTKVictoryAnalogFaceView *)self palette];
      v17 = v65 = v15;
      v18 = [v17 copyWithOption:v12];

      [v18 setStyle:{objc_msgSend(v10, "style")}];
      v61 = [v18 backgroundColor];
      v19 = [NTKVictoryAnalogBackgroundView alloc];
      v20 = [(NTKVictoryAnalogFaceView *)self device];
      [v20 screenBounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = [(NTKVictoryAnalogFaceView *)self device];
      v30 = [v19 initWithFrame:v29 forDevice:{v22, v24, v26, v28}];

      [v30 setStyle:{objc_msgSend(v10, "style")}];
      v31 = v18;
      [v30 setPalette:v18];
      v32 = [v18 hands];
      v62 = v18;
      v33 = [v18 handInlay];
      v34 = NTKImageNamed();
      v35 = v34;
      v63 = v32;
      v64 = v33;
      if (v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v32;
      }

      v58 = [v34 _flatImageWithColor:v36];

      v37 = NTKImageNamed();
      v38 = [v37 _flatImageWithColor:v32];

      v39 = NTKImageNamed();
      v40 = NTKImageNamed();
      [v31 secondHand];
      v41 = v66 = v12;
      v42 = [v40 _flatImageWithColor:v41];

      v43 = [(NTKVictoryAnalogFaceView *)self device];
      [v43 screenBounds];
      v45 = v44;
      v47 = v46;

      v48 = [[UIGraphicsImageRenderer alloc] initWithSize:{v45, v47}];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_544C;
      v70[3] = &unk_C550;
      v71 = v61;
      v72 = v30;
      v73 = v38;
      v74 = v39;
      v75 = v58;
      v76 = v42;
      v60 = v42;
      v59 = v58;
      v49 = v39;
      v57 = v38;
      v56 = v30;
      v50 = v61;
      v51 = [v48 imageWithActions:v70];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      v52 = [UIGraphicsImageRenderer alloc];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      v53 = v52;
      v12 = v66;
      v54 = [v53 initWithSize:?];

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_55D0;
      v68[3] = &unk_C578;
      v69 = v51;
      v15 = v65;
      v16 = [v54 imageWithActions:v68];
      [qword_12490 setObject:v16 forKey:v65];
    }
  }

  else
  {
    v67.receiver = self;
    v67.super_class = NTKVictoryAnalogFaceView;
    v16 = [(NTKVictoryAnalogFaceView *)&v67 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v16;
}

@end