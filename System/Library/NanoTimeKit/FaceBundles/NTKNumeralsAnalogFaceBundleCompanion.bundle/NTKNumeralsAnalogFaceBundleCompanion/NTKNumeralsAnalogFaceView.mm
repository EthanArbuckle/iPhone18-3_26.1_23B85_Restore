@interface NTKNumeralsAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_needComplicationAnimationForChangeToHour:(int64_t)a3;
- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4;
- (CGRect)_keylineFrameForFullScreenEditingReducedForOutsideLabel;
- (CGRect)_keylineFrameForStyleEditing;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKNumeralsAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_handsAlphaForEditMode:(int64_t)a3;
- (double)_secondHandAlphaForEditMode:(int64_t)a3;
- (id)_faceConfiguration;
- (id)_faceConfigurationWithPalette:(id)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (int64_t)_complicationPlacementForCurrentHour;
- (int64_t)_complicationPlacementForHour:(int64_t)a3;
- (int64_t)_currentHour;
- (int64_t)_styleIndexForStyle:(unint64_t)a3;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyFaceColorPalette:(id)a3 toComplicationView:(id)a4;
- (void)_applyForegroundAlphaForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyStyle:(unint64_t)a3;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterStyleEditing;
- (void)_configureComplicationFactory:(id)a3;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForStyleEditing;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_displayLinkFired;
- (void)_enumerateComplicationViewsWithBlock:(id)a3;
- (void)_handleTimeChange;
- (void)_loadHoursManagerIfNecessary;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForHourChangeWithSecondsUntilChange:(double)a3;
- (void)_unloadSnapshotContentViews;
- (void)_updateAreAllComplicationsOffState;
- (void)_updateComplicationAndHourNodePlacementsWithToHour:(int64_t)a3 duration:(double)a4;
- (void)_updateComplicationPositionWithAnimationProgress:(double)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKNumeralsAnalogFaceView

- (NTKNumeralsAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKNumeralsAnalogFaceView;
  v9 = [(NTKNumeralsAnalogFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v10;

    [(NTKNumeralsAnalogFaceView *)v9 _configureComplicationFactory:v9->_complicationFactory];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"_handleTimeChange" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (self->_clockTimerToken)
  {
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }

  v6.receiver = self;
  v6.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v7 layoutSubviews];
  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:0.0];
  if (self->_stylePickerView)
  {
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    v3 = [(NTKNumeralsAnalogFaceView *)self device];
    sub_74AC(v3, &v4);

    [(NTKEditOptionPickerView *)self->_stylePickerView frame];
    [(NTKEditOptionPickerView *)self->_stylePickerView setFrame:0.0, v4, *&v5];
  }
}

- (void)_applyFrozen
{
  v13.receiver = self;
  v13.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v13 _applyFrozen];
  v3 = [(NTKNumeralsAnalogFaceView *)self isFrozen];
  clockTimerToken = self->_clockTimerToken;
  if (v3)
  {
    if (clockTimerToken)
    {
      v5 = +[CLKClockTimer sharedInstance];
      [v5 stopUpdatesForToken:self->_clockTimerToken];

      v6 = self->_clockTimerToken;
      self->_clockTimerToken = 0;
    }
  }

  else if (!clockTimerToken)
  {
    objc_initWeak(&location, self);
    v7 = +[CLKClockTimer sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3DF8;
    v10[3] = &unk_10500;
    objc_copyWeak(&v11, &location);
    v8 = [v7 startUpdatesWithUpdateFrequency:3 withHandler:v10 identificationLog:&stru_10540];
    v9 = self->_clockTimerToken;
    self->_clockTimerToken = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_displayLinkFired
{
  if (([(NTKNumeralsAnalogFaceView *)self dataMode]== &dword_0 + 1 || [(NTKNumeralsAnalogFaceView *)self dataMode]== &dword_4 + 1) && ![(NTKNumeralsAnalogFaceView *)self _isInTimeTravel])
  {
    v3 = [(NTKNumeralsAnalogFaceView *)self timeView];
    v4 = [v3 calendar];

    v5 = [(NTKNumeralsAnalogFaceView *)self _faceCurrentDate];
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    [v4 getHour:&v10 minute:&v9 second:&v8 nanosecond:&v7 fromDate:v5];
    v6 = v10 % 12;
    if (!(v10 % 12))
    {
      v6 = 12;
    }

    v10 = v6;
    NTKHourMinuteSecondAnglesForTime();
    if (v9 == 59 && 0.0 >= 6.25700537 && *&qword_16620 < 6.25700537)
    {
      [(NTKNumeralsAnalogFaceView *)self _prepareForHourChangeWithSecondsUntilChange:(60 - v8) + v7 / -1000000000.0];
    }

    qword_16620 = 0;
  }
}

- (void)_loadLayoutRules
{
  v12.receiver = self;
  v12.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v12 _loadLayoutRules];
  [(NTKNumeralsAnalogFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKNumeralsAnalogFaceView *)self complicationLayoutforSlot:NTKComplicationSlot1];
  self->_utilitySlot = [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForCurrentHour];
  [(NTKNumeralsAnalogFaceView *)self _updateAreAllComplicationsOffState];
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v11 forSlot:self->_utilitySlot withBounds:v4, v6, v8, v10];
}

- (void)_configureComplicationFactory:(id)a3
{
  v9 = a3;
  [v9 setForegroundAlpha:1.0];
  [v9 setForegroundImageAlpha:1.0];
  v4 = [(NTKNumeralsAnalogFaceView *)self device];
  v5 = [v4 deviceCategory];

  v6 = [(NTKNumeralsAnalogFaceView *)self device];
  v7 = [v6 sizeClass];

  if (v5 != &dword_0 + 1)
  {
    [v9 setNormalCircularPadding:{CGSizeZero.width, CGSizeZero.height}];
    v8 = 23.5;
    if (v7 != &dword_0 + 3)
    {
      v8 = 21.0;
    }

    [v9 setScreenEdgeInsets:{v8, 4.5, v8, 4.5}];
  }
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  complicationFactory = self->_complicationFactory;
  utilitySlot = self->_utilitySlot;
  v10 = a5;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:a3 family:a4 forSlot:utilitySlot];
  [(NTKNumeralsAnalogFaceView *)self _configureComplicationView:v11 forSlot:v10];

  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v8 = a3;
  if ([v8 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    complicationFactory = self->_complicationFactory;
    v6 = v8;
    [(NTKUtilityComplicationFactory *)complicationFactory foregroundAlphaForEditing:[(NTKNumeralsAnalogFaceView *)self editing]];
    [v6 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKNumeralsAnalogFaceView *)self editing]];
    [v6 setForegroundImageAlpha:?];
    [v6 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", self->_utilitySlot)}];
    [v6 setFontWeight:UIFontWeightSemibold];
  }

  v7 = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
  [(NTKNumeralsAnalogFaceView *)self _applyFaceColorPalette:v7 toComplicationView:v8];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v18 _configureForEditMode:?];
  [(NTKNumeralsAnalogFaceView *)self _applyForegroundAlphaForTransitionFraction:a3 fromEditMode:a3 toEditMode:0.0];
  [(NTKNumeralsHourViewsManager *)self->_hourViewsManager configureForEditMode:a3];
  if (a3 == 13)
  {
    [(NTKNumeralsAnalogFaceView *)self _configureForStyleEditing];
  }

  else
  {
    [(NTKNumeralsAnalogFaceView *)self _cleanupAfterStyleEditing];
  }

  [(NTKNumeralsAnalogFaceView *)self _secondHandAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKNumeralsAnalogFaceView *)self timeView];
  v8 = [v7 secondHandView];
  [v8 setAlpha:v6];

  [(NTKNumeralsAnalogFaceView *)self _handsAlphaForEditMode:a3];
  v10 = v9;
  v11 = [(NTKNumeralsAnalogFaceView *)self timeView];
  v12 = [v11 minuteHandView];
  [v12 setAlpha:v10];

  v13 = [(NTKNumeralsAnalogFaceView *)self timeView];
  v14 = [v13 hourHandView];
  [v14 setAlpha:v10];

  if (a3 == 1)
  {
    v15 = [(NTKNumeralsAnalogFaceView *)self complicationContainerView];
    v16 = *&CGAffineTransformIdentity.c;
    v17[0] = *&CGAffineTransformIdentity.a;
    v17[1] = v16;
    v17[2] = *&CGAffineTransformIdentity.tx;
    [v15 setTransform:v17];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v24.receiver = self;
  v24.super_class = NTKNumeralsAnalogFaceView;
  [NTKNumeralsAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKNumeralsAnalogFaceView *)self _applyForegroundAlphaForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
  if (a5 != 13)
  {
    [(NTKNumeralsAnalogFaceView *)self _cleanupAfterStyleEditing];
  }

  hourViewsManager = self->_hourViewsManager;
  v10 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
  [(NTKNumeralsHourViewsManager *)hourViewsManager applyTransitionFraction:a4 fromEditMode:a5 toEditMode:v10 faceConfiguration:a3];

  [(NTKNumeralsAnalogFaceView *)self _secondHandAlphaForEditMode:a4];
  [(NTKNumeralsAnalogFaceView *)self _secondHandAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKNumeralsAnalogFaceView *)self timeView];
  v14 = [v13 secondHandView];
  [v14 setAlpha:v12];

  [(NTKNumeralsAnalogFaceView *)self _handsAlphaForEditMode:a4];
  [(NTKNumeralsAnalogFaceView *)self _handsAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  v17 = [(NTKNumeralsAnalogFaceView *)self timeView];
  v18 = [v17 minuteHandView];
  [v18 setAlpha:v16];

  v19 = [(NTKNumeralsAnalogFaceView *)self timeView];
  v20 = [v19 hourHandView];
  [v20 setAlpha:v16];

  if (a5 == 1 && fabs(a3 + -1.0) < 0.00000011920929 || a4 == 1 && fabs(a3) < 0.00000011920929)
  {
    v21 = [(NTKNumeralsAnalogFaceView *)self complicationContainerView];
    v22 = *&CGAffineTransformIdentity.c;
    v23[0] = *&CGAffineTransformIdentity.a;
    v23[1] = v22;
    v23[2] = *&CGAffineTransformIdentity.tx;
    [v21 setTransform:v23];
  }
}

- (void)_applyForegroundAlphaForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [NTKUtilityComplicationFactory foregroundAlphaForTransitionFraction:"foregroundAlphaForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v10 = v9;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4800;
  v12[3] = &unk_10560;
  v12[4] = v10;
  v12[5] = v11;
  [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v12];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 10)
  {
    v10 = [(NTKNumeralsAnalogFaceView *)self device];
    v11 = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
    v12 = [NTKFaceColorScheme colorSchemeForDevice:v10 withFaceColorPalette:v11 units:25];

    hourViewsManager = self->_hourViewsManager;
    v14 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    [(NTKNumeralsHourViewsManager *)hourViewsManager applyFaceColorFromFaceConfiguration:v14];

    v15 = [v12 foregroundColor];
    v16 = [(NTKNumeralsAnalogFaceView *)self timeView];
    [v16 applySecondHandColor:v15];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_4A1C;
    v17[3] = &unk_10588;
    v17[4] = self;
    [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v17];
  }

  else if (a4 == 13)
  {
    -[NTKNumeralsAnalogFaceView _applyStyle:](self, "_applyStyle:", [v8 style]);
    [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:0.0];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 == 10)
  {
    v36 = v12;
    v15 = [(NTKNumeralsAnalogFaceView *)self device];
    v16 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    v17 = [v16 fromPalette];
    v18 = [NTKFaceColorScheme colorSchemeForDevice:v15 withFaceColorPalette:v17 units:25];
    [(NTKNumeralsAnalogFaceView *)self device];
    v19 = v34 = v14;
    v20 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    [v20 toPalette];
    v21 = v35 = v13;
    v22 = [NTKFaceColorScheme colorSchemeForDevice:v19 withFaceColorPalette:v21 units:25];
    v23 = [NTKFaceColorScheme interpolationFrom:v18 to:v22 fraction:a3];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_4D7C;
    v37[3] = &unk_10588;
    v38 = v23;
    v24 = v23;
    [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v37];
    v25 = [(NTKNumeralsAnalogFaceView *)self timeView];
    v26 = [v24 foregroundColor];
    [v25 applySecondHandColor:v26];

    hourViewsManager = self->_hourViewsManager;
    v28 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    v29 = [v28 fromPalette];
    v30 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    v31 = [v30 toPalette];
    v32 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    v33 = hourViewsManager;
    v12 = v36;
    [(NTKNumeralsHourViewsManager *)v33 applyTransitionFraction:v29 fromFaceColorPalette:v31 toFaceColorPalette:v32 faceConfiguration:a3];

    v14 = v34;
    v13 = v35;
  }

  else if (a6 == 13)
  {
    -[NTKEditOptionPickerView setTransitionFraction:fromIndex:toIndex:](self->_stylePickerView, "setTransitionFraction:fromIndex:toIndex:", -[NTKNumeralsAnalogFaceView _styleIndexForStyle:](self, "_styleIndexForStyle:", [v12 style]), -[NTKNumeralsAnalogFaceView _styleIndexForStyle:](self, "_styleIndexForStyle:", objc_msgSend(v13, "style")), a3);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v15 _applyTransitionFraction:a4 fromComplication:a5 toComplication:v10 slot:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4EE4;
  v12[3] = &unk_105B0;
  v13 = v10;
  v14 = self;
  v11 = v10;
  [(NTKNumeralsAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_configureForStyleEditing
{
  if (!self->_stylePickerView)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v3 = [(NTKNumeralsAnalogFaceView *)self device];
    sub_74AC(v3, &v21);

    v4 = [(NTKNumeralsAnalogFaceView *)self device];
    v5 = [NTKNumeralsAnalogStyleEditOption availableOrderedValuesForDevice:v4];

    v6 = [NTKEditOptionPickerView alloc];
    v7 = [NSNumber numberWithUnsignedInteger:self->_selectedStyle];
    v8 = [v6 initWithOptions:v5 selectedOption:v7];
    stylePickerView = self->_stylePickerView;
    self->_stylePickerView = v8;

    objc_initWeak(&location, self);
    v10 = self->_stylePickerView;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_5164;
    v15 = &unk_105D8;
    objc_copyWeak(&v16, &location);
    v17 = v21;
    v18 = v22;
    v19 = v23;
    [(NTKEditOptionPickerView *)v10 setOptionToViewMapper:&v12];
    [(NTKEditOptionPickerView *)self->_stylePickerView setNumberOfSides:SDWORD2(v22), v12, v13, v14, v15];
    [(NTKEditOptionPickerView *)self->_stylePickerView setActive:1];
    [(NTKEditOptionPickerView *)self->_stylePickerView setClipsToBounds:1];
    v11 = [(NTKNumeralsAnalogFaceView *)self contentView];
    [v11 addSubview:self->_stylePickerView];

    [(NTKNumeralsAnalogFaceView *)self setNeedsLayout];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)_cleanupAfterStyleEditing
{
  stylePickerView = self->_stylePickerView;
  if (stylePickerView)
  {
    [(NTKEditOptionPickerView *)stylePickerView removeFromSuperview];
    v4 = self->_stylePickerView;
    self->_stylePickerView = 0;
  }
}

- (void)_applyStyle:(unint64_t)a3
{
  if (self->_selectedStyle != a3)
  {
    self->_selectedStyle = a3;
    hourViewsManager = self->_hourViewsManager;
    if (hourViewsManager)
    {
      [(NTKNumeralsHourViewsManager *)hourViewsManager removeHourViews];
      v5 = self->_hourViewsManager;
      self->_hourViewsManager = 0;

      [(NTKNumeralsAnalogFaceView *)self _loadHoursManagerIfNecessary];
    }
  }
}

- (void)_loadHoursManagerIfNecessary
{
  if (!self->_hourViewsManager)
  {
    v3 = [NTKNumeralsHourViewsManager alloc];
    v4 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    v5 = [(NTKNumeralsAnalogFaceView *)self device];
    v6 = [(NTKNumeralsHourViewsManager *)v3 initWithStyleFromFaceConfiguration:v4 forDevice:v5];
    hourViewsManager = self->_hourViewsManager;
    self->_hourViewsManager = v6;

    v8 = self->_hourViewsManager;
    v9 = [(NTKNumeralsAnalogFaceView *)self _currentHour];
    utilitySlot = self->_utilitySlot;
    v11 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    [(NTKNumeralsHourViewsManager *)v8 updateVisibleHour:v9 targetUtilitySlot:utilitySlot faceConfiguration:v11 animationProgress:[(NTKNumeralsAnalogFaceView *)self toEditMode] forEditMode:1.0];

    if ([(NTKNumeralsAnalogFaceView *)self editing])
    {
      v12 = [(NTKNumeralsAnalogFaceView *)self fromEditMode];
      v13 = [(NTKNumeralsAnalogFaceView *)self toEditMode];
      v14 = self->_hourViewsManager;
      if (v12 == v13)
      {
        [(NTKNumeralsHourViewsManager *)v14 configureForEditMode:[(NTKNumeralsAnalogFaceView *)self toEditMode]];
      }

      else
      {
        [(NTKNumeralsAnalogFaceView *)self editModeTransitionFraction];
        v16 = v15;
        v17 = [(NTKNumeralsAnalogFaceView *)self fromEditMode];
        v18 = [(NTKNumeralsAnalogFaceView *)self toEditMode];
        v19 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
        [(NTKNumeralsHourViewsManager *)v14 applyTransitionFraction:v17 fromEditMode:v18 toEditMode:v19 faceConfiguration:v16];
      }
    }

    v20 = self->_hourViewsManager;
    v21 = [(NTKNumeralsAnalogFaceView *)self contentView];
    [(NTKNumeralsHourViewsManager *)v20 addHourViewsToSuperview:v21];
  }
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v5 _loadSnapshotContentViews];
  [(NTKNumeralsAnalogFaceView *)self _loadHoursManagerIfNecessary];
  v3 = [(NTKNumeralsAnalogFaceView *)self contentView];
  v4 = +[UIColor blackColor];
  [v3 setBackgroundColor:v4];
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v5 _unloadSnapshotContentViews];
  v3 = [(NTKNumeralsAnalogFaceView *)self contentView];
  [v3 setBackgroundColor:0];

  [(NTKNumeralsHourViewsManager *)self->_hourViewsManager removeHourViews];
  hourViewsManager = self->_hourViewsManager;
  self->_hourViewsManager = 0;
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 13)
  {
    NTKKeylineCornerRadiusSmall();
    v4 = NTKKeylineViewWithContinuousCurveCornerRadius();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKNumeralsAnalogFaceView;
    v4 = [(NTKNumeralsAnalogFaceView *)&v6 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v4;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 13)
  {
    [(NTKNumeralsAnalogFaceView *)self _keylineFrameForStyleEditing:13];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKNumeralsAnalogFaceView;
    [(NTKNumeralsAnalogFaceView *)&v8 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 13)
  {
    return 140;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKNumeralsAnalogFaceView;
  return [(NTKNumeralsAnalogFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:a3 slot:a4];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v17 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    [(NTKNumeralsHourViewsManager *)self->_hourViewsManager applyBreathingFraction:10 forCustomEditMode:a3];
    NTKLargeElementScaleForBreathingFraction();
    v11 = v10;
    v12 = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
    CGAffineTransformMakeScale(&v16, v11, v11);
    [v12 setTransform:&v16];

    v13 = [(NTKNumeralsAnalogFaceView *)self complicationContainerView];
    CGAffineTransformMakeScale(&v16, v11, v11);
    [v13 setTransform:&v16];

    v14 = [(NTKNumeralsAnalogFaceView *)self timeView];
    v15 = [v14 secondHandView];
    [v15 setScale:v11];
  }

  else if (a4 == 13)
  {
    NTKLargeElementScaleForBreathingFraction();
    stylePickerView = self->_stylePickerView;
    CGAffineTransformMakeScale(&v16, v9, v9);
    [(NTKEditOptionPickerView *)stylePickerView setTransform:&v16];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v21.receiver = self;
  v21.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v21 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKScaleForRubberBandingFraction();
  v9 = v8;
  NTKAlphaForRubberBandingFraction();
  v11 = v10;
  if (a4 == 13)
  {
    stylePickerView = self->_stylePickerView;
    CGAffineTransformMakeScale(&v20, v9, v9);
    [(NTKEditOptionPickerView *)stylePickerView setTransform:&v20];
    [(NTKEditOptionPickerView *)self->_stylePickerView setAlpha:v11];
  }

  else
  {
    if (a4 == 10)
    {
      [(NTKNumeralsHourViewsManager *)self->_hourViewsManager applyRubberBandingFraction:10 forCustomEditMode:a3];
      v14 = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
      CGAffineTransformMakeScale(&v20, v9, v9);
      [v14 setTransform:&v20];

      v15 = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
      [v15 setAlpha:v11];

      v16 = [(NTKNumeralsAnalogFaceView *)self timeView];
      v17 = [v16 secondHandView];
      [v17 setScale:v9];

      v13 = [(NTKNumeralsAnalogFaceView *)self timeView];
      v18 = [v13 secondHandView];
      [v18 setAlpha:v11];
    }

    else
    {
      if (a4)
      {
        return;
      }

      v12 = [(NTKNumeralsAnalogFaceView *)self timeView];
      CGAffineTransformMakeScale(&v20, v9, v9);
      [v12 setTransform:&v20];

      v13 = [(NTKNumeralsAnalogFaceView *)self timeView];
      [v13 setAlpha:v11];
    }
  }
}

- (CGRect)_keylineFrameForComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v5 = a3;
  v6 = [(NTKNumeralsAnalogFaceView *)self delegate];
  v7 = [v6 faceViewComplicationIsEmptyForSlot:v5];

  v20.receiver = self;
  v20.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v20 _keylineFrameForComplicationSlot:v5 selected:v7];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 13)
  {
    return &off_114E8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!qword_16628)
  {
    v10 = objc_opt_new();
    v11 = qword_16628;
    qword_16628 = v10;
  }

  if (a4 == 13)
  {
    v12 = v8;
    v13 = [v9 objectForKeyedSubscript:&off_11080];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, v13];
    v15 = [qword_16628 objectForKey:v14];
    if (!v15)
    {
      v16 = [v12 style];
      if (v16 > 8)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(&off_10748 + v16);
      }

      v29 = [NSString stringWithFormat:@"Swatch-Numerals-%@", v17];
      v18 = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
      v19 = [v18 copy];

      v20 = [NTKFaceColorPaletteConfiguration alloc];
      v21 = [v13 pigmentEditOption];
      v22 = [v20 initWithPigmentEditOption:v21];
      [v19 setConfiguration:v22];

      v23 = [(NTKNumeralsAnalogFaceView *)self device];
      v24 = [NTKFaceColorScheme colorSchemeForDevice:v23 withFaceColorPalette:v19 units:1];
      v25 = [v24 foregroundColor];

      v26 = [v25 colorWithAlphaComponent:1.0];

      v27 = [NTKNumeralsAnalogFaceBundle imageWithName:v29];
      v15 = [v27 _flatImageWithColor:v26];

      [qword_16628 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKNumeralsAnalogFaceView;
    v15 = [(NTKNumeralsAnalogFaceView *)&v30 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v15;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6.receiver = self;
  v6.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v6 setOverrideDate:a3 duration:?];
  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:a4];
}

- (void)_applyDataMode
{
  v4.receiver = self;
  v4.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v4 _applyDataMode];
  v3 = [(NTKNumeralsAnalogFaceView *)self dataMode];
  if (v3 <= 5 && ((1 << v3) & 0x32) != 0)
  {
    [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:0.0];
  }
}

- (void)_handleTimeChange
{
  v3 = [(NTKNumeralsAnalogFaceView *)self _currentHour];

  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:v3 duration:0.0];
}

- (CGRect)_keylineFrameForStyleEditing
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = [(NTKNumeralsAnalogFaceView *)self device];
  sub_74AC(v2, &v7);

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v5 = *&v8;
  v6 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v6;
  return result;
}

- (CGRect)_keylineFrameForFullScreenEditingReducedForOutsideLabel
{
  [(NTKNumeralsAnalogFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  memset(v14, 0, sizeof(v14));
  v9 = [(NTKNumeralsAnalogFaceView *)self device];
  sub_74AC(v9, v14);

  v10 = *v14;
  v11 = v8 - *v14;
  v12 = v4;
  v13 = v6;
  result.size.height = v11;
  result.size.width = v13;
  result.origin.y = v10;
  result.origin.x = v12;
  return result;
}

- (void)_enumerateComplicationViewsWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6120;
  v5[3] = &unk_10600;
  v6 = a3;
  v4 = v6;
  [(NTKNumeralsAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_updateAreAllComplicationsOffState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6268;
  v4[3] = &unk_10628;
  v4[4] = &v5;
  [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v4];
  v3 = *(v6 + 24);
  if (self->_areAllComplicationsOff != v3)
  {
    self->_areAllComplicationsOff = v3;
    self->_complicationPositionNeedsUpdate = 1;
  }

  _Block_object_dispose(&v5, 8);
}

- (BOOL)_needComplicationAnimationForChangeToHour:(int64_t)a3
{
  if (([(NTKNumeralsAnalogFaceView *)self timeScrubbing]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForHour:a3]!= self->_utilitySlot || self->_complicationPositionNeedsUpdate;
  }
}

- (void)_updateComplicationAndHourNodePlacementsWithToHour:(int64_t)a3 duration:(double)a4
{
  if ([(NTKNumeralsAnalogFaceView *)self _isInTimeTravel])
  {
    utilitySlot = self->_utilitySlot;
  }

  else
  {
    utilitySlot = [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForHour:a3];
  }

  [(NTKNumeralsAnalogFaceView *)self _updateAreAllComplicationsOffState];
  v7 = [NTKNumeralsAnalogFaceConfiguration alloc];
  v8 = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
  areAllComplicationsOff = self->_areAllComplicationsOff;
  selectedStyle = self->_selectedStyle;
  v11 = [(NTKNumeralsAnalogFaceView *)self device];
  v12 = [(NTKNumeralsAnalogFaceConfiguration *)v7 initWithFaceColorPalette:v8 colorSchemeUnits:25 areAllComplicationsOff:areAllComplicationsOff utilitySlot:utilitySlot selectedStyle:selectedStyle forDevice:v11];

  v13 = [(NTKNumeralsHourViewsManager *)self->_hourViewsManager needHourAnimationForChangeToHour:a3 toFaceConfiguration:v12];
  v14 = [(NTKNumeralsAnalogFaceView *)self _needComplicationAnimationForChangeToHour:a3];
  v15 = v14;
  if ((v13 & 1) != 0 || v14)
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_658C;
    v22[3] = &unk_10650;
    objc_copyWeak(v23, &location);
    v24 = v15;
    v25 = v13;
    v23[1] = a3;
    v23[2] = utilitySlot;
    v16 = objc_retainBlock(v22);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_665C;
    v18[3] = &unk_10678;
    objc_copyWeak(v19, &location);
    v20 = v15;
    v21 = v13;
    v19[1] = a3;
    v19[2] = utilitySlot;
    v17 = objc_retainBlock(v18);
    (v16[2])(v16, 1.0);
    (v17[2])(v17, 1);

    objc_destroyWeak(v19);
    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

- (void)_updateComplicationPositionWithAnimationProgress:(double)a3
{
  v5 = [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForCurrentHour];
  if (a3 >= 0.5 && (self->_utilitySlot != v5 || self->_complicationPositionNeedsUpdate))
  {
    [(NTKNumeralsAnalogFaceView *)self _loadLayoutRules];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_689C;
    v10[3] = &unk_106A0;
    v10[4] = self;
    [(NTKNumeralsAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v10];
    v6 = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
    [v6 setNeedsLayout];

    v7 = [(NTKNumeralsAnalogFaceView *)self delegate];
    [v7 faceViewWantsComplicationKeylineFramesReloaded];

    self->_complicationPositionNeedsUpdate = 0;
  }

  v8 = 1.0 - a3 * 2.0;
  if (a3 >= 0.5)
  {
    v8 = a3 * 2.0 + -1.0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6950;
  v9[3] = &unk_106C0;
  *&v9[4] = v8;
  [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v9];
}

- (int64_t)_complicationPlacementForHour:(int64_t)a3
{
  v4 = [(NTKNumeralsAnalogFaceView *)self device];
  v5 = [NTKNumeralsAnalogElementsPlacement complicationPlacementForHour:a3 forDevice:v4];

  return v5;
}

- (int64_t)_complicationPlacementForCurrentHour
{
  v3 = [(NTKNumeralsAnalogFaceView *)self _currentHour];

  return [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForHour:v3];
}

- (int64_t)_currentHour
{
  v2 = [(NTKNumeralsAnalogFaceView *)self currentDisplayDate];
  v3 = NTKDateHourIn12HourTime();

  return v3;
}

- (void)_applyFaceColorPalette:(id)a3 toComplicationView:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    [v5 applyFaceColorPalette:v6 units:25];
  }
}

- (int64_t)_styleIndexForStyle:(unint64_t)a3
{
  v4 = [(NTKNumeralsAnalogFaceView *)self device];
  v5 = [NTKNumeralsAnalogStyleEditOption indexForNumeralsStyle:a3 forDevice:v4];

  return v5;
}

- (id)_faceConfiguration
{
  v3 = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
  v4 = [(NTKNumeralsAnalogFaceView *)self _faceConfigurationWithPalette:v3];

  return v4;
}

- (id)_faceConfigurationWithPalette:(id)a3
{
  v4 = a3;
  v5 = [NTKNumeralsAnalogFaceConfiguration alloc];
  areAllComplicationsOff = self->_areAllComplicationsOff;
  utilitySlot = self->_utilitySlot;
  selectedStyle = self->_selectedStyle;
  v9 = [(NTKNumeralsAnalogFaceView *)self device];
  v10 = [(NTKNumeralsAnalogFaceConfiguration *)v5 initWithFaceColorPalette:v4 colorSchemeUnits:25 areAllComplicationsOff:areAllComplicationsOff utilitySlot:utilitySlot selectedStyle:selectedStyle forDevice:v9];

  return v10;
}

- (double)_secondHandAlphaForEditMode:(int64_t)a3
{
  if (a3 == 13)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_handsAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3 <= 0xD && ((1 << a3) & 0x2402) != 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_prepareForHourChangeWithSecondsUntilChange:(double)a3
{
  v5 = [(NTKNumeralsAnalogFaceView *)self currentDisplayDate];
  v6 = [v5 dateByAddingTimeInterval:a3];

  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:NTKDateHourIn12HourTime() duration:a3 + a3];
}

@end