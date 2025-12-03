@interface NTKNumeralsAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_needComplicationAnimationForChangeToHour:(int64_t)hour;
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (CGRect)_keylineFrameForFullScreenEditingReducedForOutsideLabel;
- (CGRect)_keylineFrameForStyleEditing;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (NTKNumeralsAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_handsAlphaForEditMode:(int64_t)mode;
- (double)_secondHandAlphaForEditMode:(int64_t)mode;
- (id)_faceConfiguration;
- (id)_faceConfigurationWithPalette:(id)palette;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (int64_t)_complicationPlacementForCurrentHour;
- (int64_t)_complicationPlacementForHour:(int64_t)hour;
- (int64_t)_currentHour;
- (int64_t)_styleIndexForStyle:(unint64_t)style;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFaceColorPalette:(id)palette toComplicationView:(id)view;
- (void)_applyForegroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyStyle:(unint64_t)style;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterStyleEditing;
- (void)_configureComplicationFactory:(id)factory;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForStyleEditing;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_displayLinkFired;
- (void)_enumerateComplicationViewsWithBlock:(id)block;
- (void)_handleTimeChange;
- (void)_loadHoursManagerIfNecessary;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForHourChangeWithSecondsUntilChange:(double)change;
- (void)_unloadSnapshotContentViews;
- (void)_updateAreAllComplicationsOffState;
- (void)_updateComplicationAndHourNodePlacementsWithToHour:(int64_t)hour duration:(double)duration;
- (void)_updateComplicationPositionWithAnimationProgress:(double)progress;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKNumeralsAnalogFaceView

- (NTKNumeralsAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKNumeralsAnalogFaceView;
  v9 = [(NTKNumeralsAnalogFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
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
    device = [(NTKNumeralsAnalogFaceView *)self device];
    sub_74AC(device, &v4);

    [(NTKEditOptionPickerView *)self->_stylePickerView frame];
    [(NTKEditOptionPickerView *)self->_stylePickerView setFrame:0.0, v4, *&v5];
  }
}

- (void)_applyFrozen
{
  v13.receiver = self;
  v13.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v13 _applyFrozen];
  isFrozen = [(NTKNumeralsAnalogFaceView *)self isFrozen];
  clockTimerToken = self->_clockTimerToken;
  if (isFrozen)
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
    timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
    calendar = [timeView calendar];

    _faceCurrentDate = [(NTKNumeralsAnalogFaceView *)self _faceCurrentDate];
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    [calendar getHour:&v10 minute:&v9 second:&v8 nanosecond:&v7 fromDate:_faceCurrentDate];
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

- (void)_configureComplicationFactory:(id)factory
{
  factoryCopy = factory;
  [factoryCopy setForegroundAlpha:1.0];
  [factoryCopy setForegroundImageAlpha:1.0];
  device = [(NTKNumeralsAnalogFaceView *)self device];
  deviceCategory = [device deviceCategory];

  device2 = [(NTKNumeralsAnalogFaceView *)self device];
  sizeClass = [device2 sizeClass];

  if (deviceCategory != &dword_0 + 1)
  {
    [factoryCopy setNormalCircularPadding:{CGSizeZero.width, CGSizeZero.height}];
    v8 = 23.5;
    if (sizeClass != &dword_0 + 3)
    {
      v8 = 21.0;
    }

    [factoryCopy setScreenEdgeInsets:{v8, 4.5, v8, 4.5}];
  }
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  utilitySlot = self->_utilitySlot;
  slotCopy = slot;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:complication family:family forSlot:utilitySlot];
  [(NTKNumeralsAnalogFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];

  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    complicationFactory = self->_complicationFactory;
    v6 = viewCopy;
    [(NTKUtilityComplicationFactory *)complicationFactory foregroundAlphaForEditing:[(NTKNumeralsAnalogFaceView *)self editing]];
    [v6 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKNumeralsAnalogFaceView *)self editing]];
    [v6 setForegroundImageAlpha:?];
    [v6 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", self->_utilitySlot)}];
    [v6 setFontWeight:UIFontWeightSemibold];
  }

  faceColorPalette = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
  [(NTKNumeralsAnalogFaceView *)self _applyFaceColorPalette:faceColorPalette toComplicationView:viewCopy];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v18.receiver = self;
  v18.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v18 _configureForEditMode:?];
  [(NTKNumeralsAnalogFaceView *)self _applyForegroundAlphaForTransitionFraction:mode fromEditMode:mode toEditMode:0.0];
  [(NTKNumeralsHourViewsManager *)self->_hourViewsManager configureForEditMode:mode];
  if (mode == 13)
  {
    [(NTKNumeralsAnalogFaceView *)self _configureForStyleEditing];
  }

  else
  {
    [(NTKNumeralsAnalogFaceView *)self _cleanupAfterStyleEditing];
  }

  [(NTKNumeralsAnalogFaceView *)self _secondHandAlphaForEditMode:mode];
  v6 = v5;
  timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setAlpha:v6];

  [(NTKNumeralsAnalogFaceView *)self _handsAlphaForEditMode:mode];
  v10 = v9;
  timeView2 = [(NTKNumeralsAnalogFaceView *)self timeView];
  minuteHandView = [timeView2 minuteHandView];
  [minuteHandView setAlpha:v10];

  timeView3 = [(NTKNumeralsAnalogFaceView *)self timeView];
  hourHandView = [timeView3 hourHandView];
  [hourHandView setAlpha:v10];

  if (mode == 1)
  {
    complicationContainerView = [(NTKNumeralsAnalogFaceView *)self complicationContainerView];
    v16 = *&CGAffineTransformIdentity.c;
    v17[0] = *&CGAffineTransformIdentity.a;
    v17[1] = v16;
    v17[2] = *&CGAffineTransformIdentity.tx;
    [complicationContainerView setTransform:v17];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v24.receiver = self;
  v24.super_class = NTKNumeralsAnalogFaceView;
  [NTKNumeralsAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKNumeralsAnalogFaceView *)self _applyForegroundAlphaForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
  if (editMode != 13)
  {
    [(NTKNumeralsAnalogFaceView *)self _cleanupAfterStyleEditing];
  }

  hourViewsManager = self->_hourViewsManager;
  _faceConfiguration = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
  [(NTKNumeralsHourViewsManager *)hourViewsManager applyTransitionFraction:mode fromEditMode:editMode toEditMode:_faceConfiguration faceConfiguration:fraction];

  [(NTKNumeralsAnalogFaceView *)self _secondHandAlphaForEditMode:mode];
  [(NTKNumeralsAnalogFaceView *)self _secondHandAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setAlpha:v12];

  [(NTKNumeralsAnalogFaceView *)self _handsAlphaForEditMode:mode];
  [(NTKNumeralsAnalogFaceView *)self _handsAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  timeView2 = [(NTKNumeralsAnalogFaceView *)self timeView];
  minuteHandView = [timeView2 minuteHandView];
  [minuteHandView setAlpha:v16];

  timeView3 = [(NTKNumeralsAnalogFaceView *)self timeView];
  hourHandView = [timeView3 hourHandView];
  [hourHandView setAlpha:v16];

  if (editMode == 1 && fabs(fraction + -1.0) < 0.00000011920929 || mode == 1 && fabs(fraction) < 0.00000011920929)
  {
    complicationContainerView = [(NTKNumeralsAnalogFaceView *)self complicationContainerView];
    v22 = *&CGAffineTransformIdentity.c;
    v23[0] = *&CGAffineTransformIdentity.a;
    v23[1] = v22;
    v23[2] = *&CGAffineTransformIdentity.tx;
    [complicationContainerView setTransform:v23];
  }
}

- (void)_applyForegroundAlphaForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [NTKUtilityComplicationFactory foregroundAlphaForTransitionFraction:"foregroundAlphaForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v10 = v9;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4800;
  v12[3] = &unk_10560;
  v12[4] = v10;
  v12[5] = v11;
  [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v12];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKNumeralsAnalogFaceView *)self device];
    faceColorPalette = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
    v12 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:faceColorPalette units:25];

    hourViewsManager = self->_hourViewsManager;
    _faceConfiguration = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    [(NTKNumeralsHourViewsManager *)hourViewsManager applyFaceColorFromFaceConfiguration:_faceConfiguration];

    foregroundColor = [v12 foregroundColor];
    timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
    [timeView applySecondHandColor:foregroundColor];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_4A1C;
    v17[3] = &unk_10588;
    v17[4] = self;
    [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v17];
  }

  else if (mode == 13)
  {
    -[NTKNumeralsAnalogFaceView _applyStyle:](self, "_applyStyle:", [optionCopy style]);
    [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:0.0];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    v36 = optionCopy;
    device = [(NTKNumeralsAnalogFaceView *)self device];
    interpolatedColorPalette = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    v18 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:fromPalette units:25];
    [(NTKNumeralsAnalogFaceView *)self device];
    v19 = v34 = slotCopy;
    interpolatedColorPalette2 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    [interpolatedColorPalette2 toPalette];
    v21 = v35 = toOptionCopy;
    v22 = [NTKFaceColorScheme colorSchemeForDevice:v19 withFaceColorPalette:v21 units:25];
    v23 = [NTKFaceColorScheme interpolationFrom:v18 to:v22 fraction:fraction];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_4D7C;
    v37[3] = &unk_10588;
    v38 = v23;
    v24 = v23;
    [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v37];
    timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
    foregroundColor = [v24 foregroundColor];
    [timeView applySecondHandColor:foregroundColor];

    hourViewsManager = self->_hourViewsManager;
    interpolatedColorPalette3 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    fromPalette2 = [interpolatedColorPalette3 fromPalette];
    interpolatedColorPalette4 = [(NTKNumeralsAnalogFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette4 toPalette];
    _faceConfiguration = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    v33 = hourViewsManager;
    optionCopy = v36;
    [(NTKNumeralsHourViewsManager *)v33 applyTransitionFraction:fromPalette2 fromFaceColorPalette:toPalette toFaceColorPalette:_faceConfiguration faceConfiguration:fraction];

    slotCopy = v34;
    toOptionCopy = v35;
  }

  else if (mode == 13)
  {
    -[NTKEditOptionPickerView setTransitionFraction:fromIndex:toIndex:](self->_stylePickerView, "setTransitionFraction:fromIndex:toIndex:", -[NTKNumeralsAnalogFaceView _styleIndexForStyle:](self, "_styleIndexForStyle:", [optionCopy style]), -[NTKNumeralsAnalogFaceView _styleIndexForStyle:](self, "_styleIndexForStyle:", objc_msgSend(toOptionCopy, "style")), fraction);
  }
}

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  slotCopy = slot;
  v15.receiver = self;
  v15.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v15 _applyTransitionFraction:complication fromComplication:toComplication toComplication:slotCopy slot:fraction];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_4EE4;
  v12[3] = &unk_105B0;
  v13 = slotCopy;
  selfCopy = self;
  v11 = slotCopy;
  [(NTKNumeralsAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (void)_configureForStyleEditing
{
  if (!self->_stylePickerView)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    device = [(NTKNumeralsAnalogFaceView *)self device];
    sub_74AC(device, &v21);

    device2 = [(NTKNumeralsAnalogFaceView *)self device];
    v5 = [NTKNumeralsAnalogStyleEditOption availableOrderedValuesForDevice:device2];

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
    contentView = [(NTKNumeralsAnalogFaceView *)self contentView];
    [contentView addSubview:self->_stylePickerView];

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

- (void)_applyStyle:(unint64_t)style
{
  if (self->_selectedStyle != style)
  {
    self->_selectedStyle = style;
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
    _faceConfiguration = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    device = [(NTKNumeralsAnalogFaceView *)self device];
    v6 = [(NTKNumeralsHourViewsManager *)v3 initWithStyleFromFaceConfiguration:_faceConfiguration forDevice:device];
    hourViewsManager = self->_hourViewsManager;
    self->_hourViewsManager = v6;

    v8 = self->_hourViewsManager;
    _currentHour = [(NTKNumeralsAnalogFaceView *)self _currentHour];
    utilitySlot = self->_utilitySlot;
    _faceConfiguration2 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
    [(NTKNumeralsHourViewsManager *)v8 updateVisibleHour:_currentHour targetUtilitySlot:utilitySlot faceConfiguration:_faceConfiguration2 animationProgress:[(NTKNumeralsAnalogFaceView *)self toEditMode] forEditMode:1.0];

    if ([(NTKNumeralsAnalogFaceView *)self editing])
    {
      fromEditMode = [(NTKNumeralsAnalogFaceView *)self fromEditMode];
      toEditMode = [(NTKNumeralsAnalogFaceView *)self toEditMode];
      v14 = self->_hourViewsManager;
      if (fromEditMode == toEditMode)
      {
        [(NTKNumeralsHourViewsManager *)v14 configureForEditMode:[(NTKNumeralsAnalogFaceView *)self toEditMode]];
      }

      else
      {
        [(NTKNumeralsAnalogFaceView *)self editModeTransitionFraction];
        v16 = v15;
        fromEditMode2 = [(NTKNumeralsAnalogFaceView *)self fromEditMode];
        toEditMode2 = [(NTKNumeralsAnalogFaceView *)self toEditMode];
        _faceConfiguration3 = [(NTKNumeralsAnalogFaceView *)self _faceConfiguration];
        [(NTKNumeralsHourViewsManager *)v14 applyTransitionFraction:fromEditMode2 fromEditMode:toEditMode2 toEditMode:_faceConfiguration3 faceConfiguration:v16];
      }
    }

    v20 = self->_hourViewsManager;
    contentView = [(NTKNumeralsAnalogFaceView *)self contentView];
    [(NTKNumeralsHourViewsManager *)v20 addHourViewsToSuperview:contentView];
  }
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v5 _loadSnapshotContentViews];
  [(NTKNumeralsAnalogFaceView *)self _loadHoursManagerIfNecessary];
  contentView = [(NTKNumeralsAnalogFaceView *)self contentView];
  v4 = +[UIColor blackColor];
  [contentView setBackgroundColor:v4];
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v5 _unloadSnapshotContentViews];
  contentView = [(NTKNumeralsAnalogFaceView *)self contentView];
  [contentView setBackgroundColor:0];

  [(NTKNumeralsHourViewsManager *)self->_hourViewsManager removeHourViews];
  hourViewsManager = self->_hourViewsManager;
  self->_hourViewsManager = 0;
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 13)
  {
    NTKKeylineCornerRadiusSmall();
    v4 = NTKKeylineViewWithContinuousCurveCornerRadius();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKNumeralsAnalogFaceView;
    v4 = [(NTKNumeralsAnalogFaceView *)&v6 _keylineViewForCustomEditMode:mode slot:slot];
  }

  return v4;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 13)
  {
    [(NTKNumeralsAnalogFaceView *)self _keylineFrameForStyleEditing:13];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKNumeralsAnalogFaceView;
    [(NTKNumeralsAnalogFaceView *)&v8 _relativeKeylineFrameForCustomEditMode:mode slot:slot];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 13)
  {
    return 140;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKNumeralsAnalogFaceView;
  return [(NTKNumeralsAnalogFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:mode slot:slot];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v17.receiver = self;
  v17.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v17 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    [(NTKNumeralsHourViewsManager *)self->_hourViewsManager applyBreathingFraction:10 forCustomEditMode:fraction];
    NTKLargeElementScaleForBreathingFraction();
    v11 = v10;
    foregroundContainerView = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
    CGAffineTransformMakeScale(&v16, v11, v11);
    [foregroundContainerView setTransform:&v16];

    complicationContainerView = [(NTKNumeralsAnalogFaceView *)self complicationContainerView];
    CGAffineTransformMakeScale(&v16, v11, v11);
    [complicationContainerView setTransform:&v16];

    timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
    secondHandView = [timeView secondHandView];
    [secondHandView setScale:v11];
  }

  else if (mode == 13)
  {
    NTKLargeElementScaleForBreathingFraction();
    stylePickerView = self->_stylePickerView;
    CGAffineTransformMakeScale(&v16, v9, v9);
    [(NTKEditOptionPickerView *)stylePickerView setTransform:&v16];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v21.receiver = self;
  v21.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v21 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  NTKScaleForRubberBandingFraction();
  v9 = v8;
  NTKAlphaForRubberBandingFraction();
  v11 = v10;
  if (mode == 13)
  {
    stylePickerView = self->_stylePickerView;
    CGAffineTransformMakeScale(&v20, v9, v9);
    [(NTKEditOptionPickerView *)stylePickerView setTransform:&v20];
    [(NTKEditOptionPickerView *)self->_stylePickerView setAlpha:v11];
  }

  else
  {
    if (mode == 10)
    {
      [(NTKNumeralsHourViewsManager *)self->_hourViewsManager applyRubberBandingFraction:10 forCustomEditMode:fraction];
      foregroundContainerView = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
      CGAffineTransformMakeScale(&v20, v9, v9);
      [foregroundContainerView setTransform:&v20];

      foregroundContainerView2 = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
      [foregroundContainerView2 setAlpha:v11];

      timeView = [(NTKNumeralsAnalogFaceView *)self timeView];
      secondHandView = [timeView secondHandView];
      [secondHandView setScale:v9];

      timeView2 = [(NTKNumeralsAnalogFaceView *)self timeView];
      secondHandView2 = [timeView2 secondHandView];
      [secondHandView2 setAlpha:v11];
    }

    else
    {
      if (mode)
      {
        return;
      }

      timeView3 = [(NTKNumeralsAnalogFaceView *)self timeView];
      CGAffineTransformMakeScale(&v20, v9, v9);
      [timeView3 setTransform:&v20];

      timeView2 = [(NTKNumeralsAnalogFaceView *)self timeView];
      [timeView2 setAlpha:v11];
    }
  }
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  slotCopy = slot;
  delegate = [(NTKNumeralsAnalogFaceView *)self delegate];
  v7 = [delegate faceViewComplicationIsEmptyForSlot:slotCopy];

  v20.receiver = self;
  v20.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v20 _keylineFrameForComplicationSlot:slotCopy selected:v7];
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 13)
  {
    return &off_114E8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (!qword_16628)
  {
    v10 = objc_opt_new();
    v11 = qword_16628;
    qword_16628 = v10;
  }

  if (mode == 13)
  {
    v12 = optionCopy;
    v13 = [optionsCopy objectForKeyedSubscript:&off_11080];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, v13];
    v15 = [qword_16628 objectForKey:v14];
    if (!v15)
    {
      style = [v12 style];
      if (style > 8)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(&off_10748 + style);
      }

      v29 = [NSString stringWithFormat:@"Swatch-Numerals-%@", v17];
      faceColorPalette = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
      v19 = [faceColorPalette copy];

      v20 = [NTKFaceColorPaletteConfiguration alloc];
      pigmentEditOption = [v13 pigmentEditOption];
      v22 = [v20 initWithPigmentEditOption:pigmentEditOption];
      [v19 setConfiguration:v22];

      device = [(NTKNumeralsAnalogFaceView *)self device];
      v24 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:v19 units:1];
      foregroundColor = [v24 foregroundColor];

      v26 = [foregroundColor colorWithAlphaComponent:1.0];

      v27 = [NTKNumeralsAnalogFaceBundle imageWithName:v29];
      v15 = [v27 _flatImageWithColor:v26];

      [qword_16628 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKNumeralsAnalogFaceView;
    v15 = [(NTKNumeralsAnalogFaceView *)&v30 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v6 setOverrideDate:date duration:?];
  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:duration];
}

- (void)_applyDataMode
{
  v4.receiver = self;
  v4.super_class = NTKNumeralsAnalogFaceView;
  [(NTKNumeralsAnalogFaceView *)&v4 _applyDataMode];
  dataMode = [(NTKNumeralsAnalogFaceView *)self dataMode];
  if (dataMode <= 5 && ((1 << dataMode) & 0x32) != 0)
  {
    [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:[(NTKNumeralsAnalogFaceView *)self _currentHour] duration:0.0];
  }
}

- (void)_handleTimeChange
{
  _currentHour = [(NTKNumeralsAnalogFaceView *)self _currentHour];

  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:_currentHour duration:0.0];
}

- (CGRect)_keylineFrameForStyleEditing
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  device = [(NTKNumeralsAnalogFaceView *)self device];
  sub_74AC(device, &v7);

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
  device = [(NTKNumeralsAnalogFaceView *)self device];
  sub_74AC(device, v14);

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

- (void)_enumerateComplicationViewsWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_6120;
  v5[3] = &unk_10600;
  blockCopy = block;
  v4 = blockCopy;
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

- (BOOL)_needComplicationAnimationForChangeToHour:(int64_t)hour
{
  if (([(NTKNumeralsAnalogFaceView *)self timeScrubbing]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForHour:hour]!= self->_utilitySlot || self->_complicationPositionNeedsUpdate;
  }
}

- (void)_updateComplicationAndHourNodePlacementsWithToHour:(int64_t)hour duration:(double)duration
{
  if ([(NTKNumeralsAnalogFaceView *)self _isInTimeTravel])
  {
    utilitySlot = self->_utilitySlot;
  }

  else
  {
    utilitySlot = [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForHour:hour];
  }

  [(NTKNumeralsAnalogFaceView *)self _updateAreAllComplicationsOffState];
  v7 = [NTKNumeralsAnalogFaceConfiguration alloc];
  faceColorPalette = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
  areAllComplicationsOff = self->_areAllComplicationsOff;
  selectedStyle = self->_selectedStyle;
  device = [(NTKNumeralsAnalogFaceView *)self device];
  v12 = [(NTKNumeralsAnalogFaceConfiguration *)v7 initWithFaceColorPalette:faceColorPalette colorSchemeUnits:25 areAllComplicationsOff:areAllComplicationsOff utilitySlot:utilitySlot selectedStyle:selectedStyle forDevice:device];

  v13 = [(NTKNumeralsHourViewsManager *)self->_hourViewsManager needHourAnimationForChangeToHour:hour toFaceConfiguration:v12];
  v14 = [(NTKNumeralsAnalogFaceView *)self _needComplicationAnimationForChangeToHour:hour];
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
    v23[1] = hour;
    v23[2] = utilitySlot;
    v16 = objc_retainBlock(v22);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_665C;
    v18[3] = &unk_10678;
    objc_copyWeak(v19, &location);
    v20 = v15;
    v21 = v13;
    v19[1] = hour;
    v19[2] = utilitySlot;
    v17 = objc_retainBlock(v18);
    (v16[2])(v16, 1.0);
    (v17[2])(v17, 1);

    objc_destroyWeak(v19);
    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

- (void)_updateComplicationPositionWithAnimationProgress:(double)progress
{
  _complicationPlacementForCurrentHour = [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForCurrentHour];
  if (progress >= 0.5 && (self->_utilitySlot != _complicationPlacementForCurrentHour || self->_complicationPositionNeedsUpdate))
  {
    [(NTKNumeralsAnalogFaceView *)self _loadLayoutRules];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_689C;
    v10[3] = &unk_106A0;
    v10[4] = self;
    [(NTKNumeralsAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v10];
    foregroundContainerView = [(NTKNumeralsAnalogFaceView *)self foregroundContainerView];
    [foregroundContainerView setNeedsLayout];

    delegate = [(NTKNumeralsAnalogFaceView *)self delegate];
    [delegate faceViewWantsComplicationKeylineFramesReloaded];

    self->_complicationPositionNeedsUpdate = 0;
  }

  v8 = 1.0 - progress * 2.0;
  if (progress >= 0.5)
  {
    v8 = progress * 2.0 + -1.0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_6950;
  v9[3] = &unk_106C0;
  *&v9[4] = v8;
  [(NTKNumeralsAnalogFaceView *)self _enumerateComplicationViewsWithBlock:v9];
}

- (int64_t)_complicationPlacementForHour:(int64_t)hour
{
  device = [(NTKNumeralsAnalogFaceView *)self device];
  v5 = [NTKNumeralsAnalogElementsPlacement complicationPlacementForHour:hour forDevice:device];

  return v5;
}

- (int64_t)_complicationPlacementForCurrentHour
{
  _currentHour = [(NTKNumeralsAnalogFaceView *)self _currentHour];

  return [(NTKNumeralsAnalogFaceView *)self _complicationPlacementForHour:_currentHour];
}

- (int64_t)_currentHour
{
  currentDisplayDate = [(NTKNumeralsAnalogFaceView *)self currentDisplayDate];
  v3 = NTKDateHourIn12HourTime();

  return v3;
}

- (void)_applyFaceColorPalette:(id)palette toComplicationView:(id)view
{
  paletteCopy = palette;
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    [viewCopy applyFaceColorPalette:paletteCopy units:25];
  }
}

- (int64_t)_styleIndexForStyle:(unint64_t)style
{
  device = [(NTKNumeralsAnalogFaceView *)self device];
  v5 = [NTKNumeralsAnalogStyleEditOption indexForNumeralsStyle:style forDevice:device];

  return v5;
}

- (id)_faceConfiguration
{
  faceColorPalette = [(NTKNumeralsAnalogFaceView *)self faceColorPalette];
  v4 = [(NTKNumeralsAnalogFaceView *)self _faceConfigurationWithPalette:faceColorPalette];

  return v4;
}

- (id)_faceConfigurationWithPalette:(id)palette
{
  paletteCopy = palette;
  v5 = [NTKNumeralsAnalogFaceConfiguration alloc];
  areAllComplicationsOff = self->_areAllComplicationsOff;
  utilitySlot = self->_utilitySlot;
  selectedStyle = self->_selectedStyle;
  device = [(NTKNumeralsAnalogFaceView *)self device];
  v10 = [(NTKNumeralsAnalogFaceConfiguration *)v5 initWithFaceColorPalette:paletteCopy colorSchemeUnits:25 areAllComplicationsOff:areAllComplicationsOff utilitySlot:utilitySlot selectedStyle:selectedStyle forDevice:device];

  return v10;
}

- (double)_secondHandAlphaForEditMode:(int64_t)mode
{
  if (mode == 13)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (mode == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_handsAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode <= 0xD && ((1 << mode) & 0x2402) != 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_prepareForHourChangeWithSecondsUntilChange:(double)change
{
  currentDisplayDate = [(NTKNumeralsAnalogFaceView *)self currentDisplayDate];
  v6 = [currentDisplayDate dateByAddingTimeInterval:change];

  [(NTKNumeralsAnalogFaceView *)self _updateComplicationAndHourNodePlacementsWithToHour:NTKDateHourIn12HourTime() duration:change + change];
}

@end