@interface NTKSiderealFaceView
- (CGImage)newImageRefFromSolarContainerView:(id)a3 withHeight:(double)a4;
- (CGImage)newImageRefFromView:(id)a3;
- (CGPath)newTimeViewPathForDarkeningView;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (CGRect)_timeViewKeylineFrameForEditing;
- (NTKSiderealFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_darkeningViewAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_idealizedSolarDayProgress;
- (double)_solarDayProgressForCurrentTime;
- (double)_timeDarkeningViewAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_dayDiscImageFromSolarContainerView:(id)a3;
- (id)_dayDiskBloomImageFromSolarContainerView:(id)a3;
- (id)_dayGnomonImageFromSolarContainerView:(id)a3;
- (id)_dialViewImageRef;
- (id)_faceDisplayTime;
- (id)_gnomonImage;
- (id)_innerComplicationColors;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newGnomonLayer;
- (id)_nightDiscImageFromSolarContainerView:(id)a3;
- (id)_nightGnomonImageFromSolarContainerView:(id)a3;
- (id)_nightRingImageFromSolarContainerView:(id)a3;
- (id)_outerComplicationColors;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_waypointViewImageRef;
- (id)closestWaypointForSolarDayProgress:(double)a3 range:(double)a4;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)waypointBetweenPreviousOffset:(double)a3 currentOffset:(double)a4;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyScaleToTimeView;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_asyncUpdateLocale;
- (void)_buttonPressTimerFired;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterSettingViewMode:(unint64_t)a3 previousViewMode:(unint64_t)a4;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_disableCrown;
- (void)_enableCrown;
- (void)_forceSolarDayUpdate;
- (void)_handleViewModeTapGesture:(id)a3;
- (void)_interpolateFromViewMode:(unint64_t)a3 toViewMode:(unint64_t)a4 progress:(double)a5;
- (void)_loadAuxiliaryDialLabelsIfNeeded;
- (void)_loadDial;
- (void)_loadLayoutRules;
- (void)_loadOffsetLabelIfNeeded;
- (void)_loadSnapshotContentViews;
- (void)_loadTimeView;
- (void)_loadUI;
- (void)_prepareForEditing;
- (void)_prepareForSettingViewMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)_refreshGlowPathState;
- (void)_resetInteractionProgress;
- (void)_setSolarDayProgress:(double)a3;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_tearDownAuxiliaryDialLabels;
- (void)_tearDownOffsetLabel;
- (void)_timeDidUpdate:(id)a3;
- (void)_unloadDial;
- (void)_unloadSnapshotContentViews;
- (void)_unloadTimeView;
- (void)_unloadUI;
- (void)_updateFramerate;
- (void)_updateLocale;
- (void)_updateSolarOrbitGlowPath:(double)a3;
- (void)_updateStatusBarVisibility;
- (void)_updateSunsetFilter;
- (void)_updateTimeLabelsWithReferenceDate:(id)a3 overrideDate:(id)a4;
- (void)_updateTimeScrubbingContent:(double)a3;
- (void)_updateTimeViewOrbitWithSolarDayProgress:(double)a3;
- (void)_updateWaypointLabel;
- (void)_wheelDelayTimerFired;
- (void)dataSourceDidUpdateSolarData:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performScrollTestNamed:(id)a3 completion:(id)a4;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setupDarkeningViewIfNeeded;
- (void)tearDownDarkeningView;
@end

@implementation NTKSiderealFaceView

- (NTKSiderealFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NTKSiderealFaceView;
  v9 = [(NTKSiderealFaceView *)&v18 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v9->_useXR = 0;
    v11 = +[UIColor blackColor];
    [(NTKSiderealFaceView *)v10 setBackgroundColor:v11];

    v10->_previousDataMode = 0;
    v12 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:v8];
    faceViewComplicationFactory = v10->_faceViewComplicationFactory;
    v10->_faceViewComplicationFactory = v12;

    v14 = [(NTKSiderealFaceView *)v10 _accessPrewarmedData];
    v15 = [v14 object];
    dataSource = v10->_dataSource;
    v10->_dataSource = v15;

    [(NTKSiderealDataSource *)v10->_dataSource addObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NTKSiderealDataSource *)self->_dataSource removeObserver:self];
  v4.receiver = self;
  v4.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v4 dealloc];
}

- (void)_loadUI
{
  self->_currentSolarDayProgress = -1.0;
  [(NTKSiderealFaceView *)self _loadTimeView];
  [(NTKSiderealFaceView *)self _loadDial];
  siderealTimeView = self->_siderealTimeView;

  [(NTKSiderealFaceView *)self bringSubviewToFront:siderealTimeView];
}

- (void)_unloadUI
{
  [(NTKSiderealFaceView *)self _unloadTimeView];

  [(NTKSiderealFaceView *)self _unloadDial];
}

- (void)_loadDial
{
  v3 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v3, v50);
  v4 = v50[0];

  v5 = [NTKSiderealSolarContainerView alloc];
  v6 = [(NTKSiderealFaceView *)self device];
  [v6 screenBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v15, &v48);
  v16 = v49;
  v17 = [(NTKSiderealFaceView *)self device];
  v43 = [(NTKSiderealSolarContainerView *)v5 initWithFrame:v17 orbitDiameter:v8 device:v10, v12, v14, v16];

  v18 = [NTKSiderealDialBackgroundView alloc];
  v42 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v42, &v46);
  v19 = v47;
  v41 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v41, &v44);
  v20 = v45;
  v40 = [(NTKSiderealFaceView *)self timeView];
  [v40 bounds];
  v22 = v21 * 0.5;
  v38 = [(NTKSiderealFaceView *)self _dialViewImageRef];
  v23 = [(NTKSiderealFaceView *)self _waypointViewImageRef];
  v24 = [(NTKSiderealFaceView *)self _gnomonImage];
  v39 = [(NTKSiderealFaceView *)self _dayGnomonImageFromSolarContainerView:v43];
  v25 = [(NTKSiderealFaceView *)self _dayDiskBloomImageFromSolarContainerView:v43];
  v26 = [(NTKSiderealFaceView *)self _dayDiscImageFromSolarContainerView:v43];
  v27 = [(NTKSiderealFaceView *)self _nightGnomonImageFromSolarContainerView:v43];
  v28 = [(NTKSiderealFaceView *)self _nightDiscImageFromSolarContainerView:v43];
  v29 = [(NTKSiderealFaceView *)self _nightRingImageFromSolarContainerView:v43];
  LOBYTE(v37) = self->_useXR;
  v30 = [(NTKSiderealDialBackgroundView *)v18 initWithFrame:v38 orbitDiameter:v23 timeOrbitRadius:v24 timeRadius:v39 dialImage:v25 waypointImage:v26 gnomonImage:0.0 dayGnomonImage:0.0 dayDiskBloomImage:v4 dayDiscImage:v4 nightGnomonImage:v19 nightDiscImage:v20 nightRingImage:v22 initialData:v27 useXR:v28, v29, self->_currentData, v37];
  dialBackgroundView = self->_dialBackgroundView;
  self->_dialBackgroundView = v30;

  v32 = self->_dialBackgroundView;
  v33 = [(NTKSiderealFaceView *)self device];
  [v33 screenBounds];
  CLKRectGetCenter();
  [(NTKSiderealDialBackgroundView *)v32 setCenter:?];

  v34 = self->_dialBackgroundView;
  v35 = [(NTKSiderealData *)self->_currentData sectors];
  [(NTKSiderealDialBackgroundView *)v34 setSectors:v35];

  v36 = [(NTKSiderealFaceView *)self contentView];
  [v36 insertSubview:self->_dialBackgroundView atIndex:0];
}

- (void)_unloadDial
{
  [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView removeFromSuperview];
  dialBackgroundView = self->_dialBackgroundView;
  self->_dialBackgroundView = 0;
}

- (void)_loadTimeView
{
  v3 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v3, &v10);
  v4 = *(&v10 + 1);

  v5 = [NTKSiderealTimeView alloc];
  v6 = [(NTKSiderealFaceView *)self device];
  v7 = [(NTKSiderealTimeView *)v5 initWithFrame:0 style:v6 andDevice:0.0, 0.0, v4, v4];
  siderealTimeView = self->_siderealTimeView;
  self->_siderealTimeView = v7;

  [(NTKSiderealFaceView *)self addSubview:self->_siderealTimeView];
  v9 = self->_siderealTimeView;

  [(NTKSiderealFaceView *)self setTimeView:v9];
}

- (void)_unloadTimeView
{
  [(NTKSiderealTimeView *)self->_siderealTimeView removeFromSuperview];
  siderealTimeView = self->_siderealTimeView;
  self->_siderealTimeView = 0;
}

- (void)_loadSnapshotContentViews
{
  v11.receiver = self;
  v11.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v11 _loadSnapshotContentViews];
  self->_breathScaleModifier = 1.0;
  self->_rubberBandScaleModifier = 1.0;
  v3 = objc_opt_new();
  interactiveModeDateFormatter = self->_interactiveModeDateFormatter;
  self->_interactiveModeDateFormatter = v3;

  [(NTKSiderealFaceView *)self _updateLocale];
  [(NTKSiderealFaceView *)self _loadUI];
  self->_viewMode = 0;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_asyncUpdateLocale" name:NSCurrentLocaleDidChangeNotification object:0];

  if (!self->_viewModeTapButton)
  {
    v6 = objc_opt_new();
    viewModeTapButton = self->_viewModeTapButton;
    self->_viewModeTapButton = v6;

    [(NTKFaceViewTapControl *)self->_viewModeTapButton addTarget:self action:"_handleViewModeTapGesture:" forControlEvents:64];
    v8 = [(NTKFaceViewTapControl *)self->_viewModeTapButton highlightImageView];
    v9 = [(NTKSiderealFaceView *)self device];
    v10 = NTKNoHighlightDialTapImage();
    [v8 setImage:v10];

    [(NTKSiderealFaceView *)self addSubview:self->_viewModeTapButton];
  }
}

- (void)_unloadSnapshotContentViews
{
  [(NTKSiderealFaceView *)self _unloadUI];
  [(NTKSiderealFaceView *)self _stopClockUpdates];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  [(NTKFaceViewTapControl *)self->_viewModeTapButton removeFromSuperview];
  viewModeTapButton = self->_viewModeTapButton;
  self->_viewModeTapButton = 0;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v5 layoutSubviews];
  viewModeTapButton = self->_viewModeTapButton;
  [(NTKSiderealFaceView *)self bounds];
  MidX = CGRectGetMidX(v6);
  [(NTKSiderealFaceView *)self bounds];
  [(NTKFaceViewTapControl *)viewModeTapButton setCenter:MidX, CGRectGetMidY(v7)];
  [(NTKFaceViewTapControl *)self->_viewModeTapButton sizeToFit];
}

- (void)setDataMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_viewModeTapButton setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_viewModeTapButton setUserInteractionEnabled:a3 == 1];
  [(NTKSiderealFaceView *)self _updateFramerate];
}

- (void)_applyDataMode
{
  v13.receiver = self;
  v13.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v13 _applyDataMode];
  previousDataMode = self->_previousDataMode;
  if (previousDataMode != [(NTKSiderealFaceView *)self dataMode])
  {
    currentSolarDayProgress = self->_currentSolarDayProgress;
    v5 = [(NTKSiderealFaceView *)self dataMode];
    v6 = -1.0;
    if (v5 > 2)
    {
      if ((v5 - 4) >= 2)
      {
        if (v5 != &dword_0 + 3)
        {
          goto LABEL_15;
        }

        [(NTKSiderealFaceView *)self _idealizedSolarDayProgress];
        v6 = v8;
        if (self->_previousDataMode != 1)
        {
          goto LABEL_15;
        }

        self->_interactionProgress = v8;
        if (self->_viewMode == 1)
        {
          [(NTKSiderealFaceView *)self _setViewMode:0 animated:0];
        }

        [(NTKSiderealFaceView *)self _setViewMode:2 animated:0];
        goto LABEL_14;
      }
    }

    else if (v5)
    {
      if (v5 == &dword_0 + 1)
      {
        v9 = self->_previousDataMode;
        v10 = v9 == 3;
        if (v9 == 3)
        {
          v11 = [(NTKSiderealFaceView *)self timeView];
          [v11 setOverrideDate:0 duration:0.5];
        }

        [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
        v6 = v12;
        self->_interactionProgress = v12;
        [(NTKSiderealFaceView *)self _startClockUpdates];
        [(NTKSiderealFaceView *)self _setViewMode:0 animated:0];
        if (!v10)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (v5 != &dword_0 + 2)
      {
LABEL_15:
        if (self->_previousDataMode)
        {
          [(NTKSiderealFaceView *)self _animateSolarDayFromProgress:0 toProgress:currentSolarDayProgress minDuration:v6 completion:0.5];
        }

        goto LABEL_17;
      }

LABEL_14:
      [(NTKSiderealFaceView *)self _stopClockUpdates];
      goto LABEL_15;
    }

    [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
    self->_interactionProgress = v7;
    [(NTKSiderealFaceView *)self _stopClockUpdates];
    [(NTKSiderealFaceView *)self _setViewMode:0 animated:0];
LABEL_17:
    self->_previousDataMode = [(NTKSiderealFaceView *)self dataMode];
  }
}

- (void)_updateFramerate
{
  if (NTKIsScreenOn())
  {
    [(NTKSiderealFaceView *)self isFrozen];
  }

  v3 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quadView];
  [v3 setPaused:1];
}

- (void)_enableCrown
{
  v3.receiver = self;
  v3.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v3 _enableCrown];
  self->_isHandlingHardwareEvents = 1;
}

- (void)_disableCrown
{
  v3.receiver = self;
  v3.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v3 _disableCrown];
  self->_isHandlingHardwareEvents = 0;
}

- (void)_wheelDelayTimerFired
{
  wheelDelayTimer = self->_wheelDelayTimer;
  self->_wheelDelayTimer = 0;

  if (!self->_buttonPressTimer && [(NTKSiderealFaceView *)self _canEnterInteractiveMode])
  {

    [(NTKSiderealFaceView *)self _setViewMode:1 animated:1];
  }
}

- (void)_buttonPressTimerFired
{
  buttonPressTimer = self->_buttonPressTimer;
  self->_buttonPressTimer = 0;
  _objc_release_x1();
}

- (void)_updateTimeScrubbingContent:(double)a3
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v10 = [(NTKSiderealData *)self->_currentData interpolateBetweenCalendricalMidnights:a3];
  v5 = [(NTKSiderealFaceView *)self _faceDisplayTime];
  v6 = NTKRoundDateDownToNearestMinute();

  [(NTKSiderealFaceView *)self _updateTimeLabelsWithReferenceDate:v6 overrideDate:v10];
  if (self->_viewMode == 1 || self->_transitionState - 1 <= 1)
  {
    v8 = [(NTKSiderealFaceView *)self timeView];
    [v8 setOverrideDate:v10 duration:0.0];
  }

  [(NTKSiderealFaceView *)self _setSolarDayProgress:a3];
  v9 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quadView];
  [v9 renderSynchronouslyWithImageQueueDiscard:0 inGroup:0 completion:0];

  +[CATransaction commit];
}

- (void)_resetInteractionProgress
{
  [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
  self->_interactionProgress = v3;
  v4 = [(NTKSiderealFaceView *)self timeView];
  [v4 setOverrideDate:0 duration:0.0];
}

- (id)_faceDisplayTime
{
  v2 = +[NTKTimeOffsetManager sharedManager];
  v3 = [v2 faceDisplayTime];

  return v3;
}

- (void)_startClockUpdates
{
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    v3 = +[CLKClockTimer sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_FEBC;
    v6[3] = &unk_2C8F0;
    objc_copyWeak(&v7, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&stru_2CB30];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  if (self->_clockTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_timeDidUpdate:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[NTKSiderealFaceView] _updateForChangedDate with date:%@", &v8, 0xCu);
  }

  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v4];
  v7 = v6;
  if (([(NTKSiderealData *)self->_currentData isDateInReferenceDate:v4]& 1) != 0)
  {
    if (self->_viewMode != 1 && ![(NTKSiderealFaceView *)self _isDayAnimationRunning])
    {
      self->_interactionProgress = v7;
      [(NTKSiderealFaceView *)self _updateTimeScrubbingContent:v7];
    }
  }

  else
  {
    [(NTKSiderealDataSource *)self->_dataSource updateModelWithDate:v4];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v7 setOverrideDate:v6 duration:a4];
  if (![(NTKSiderealFaceView *)self _isDayAnimationRunning]&& !self->_viewMode)
  {
    if (v6)
    {
      [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v6];
    }

    else
    {
      [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
    }

    [(NTKSiderealFaceView *)self _updateTimeScrubbingContent:?];
  }
}

- (void)_asyncUpdateLocale
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1029C;
  v2[3] = &unk_2C958;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_updateLocale
{
  v3 = +[NSLocale currentLocale];
  v4 = CLKLocaleIs24HourMode();

  interactiveModeDateFormatter = self->_interactiveModeDateFormatter;
  if (v4)
  {
    v6 = @"H:mm";
  }

  else
  {
    v6 = @"h:mm a";
  }

  [(NSDateFormatter *)interactiveModeDateFormatter setLocalizedDateFormatFromTemplate:v6];
}

- (void)_updateSunsetFilter
{
  v23 = self->_currentData;
  v3 = [(NTKSiderealData *)v23 sunriseSunsetInfo];
  v4 = [(NTKSiderealData *)v23 sunriseTime];
  v5 = [(NTKSiderealData *)v23 sunsetTime];
  v6 = [(NTKSiderealData *)v23 referenceDate];
  v7 = NTKEndOfDayForDate();

  [v5 timeIntervalSinceDate:v4];
  v9 = v8;
  [v7 timeIntervalSinceDate:v5];
  v11 = v10;
  if (([(NTKSiderealData *)v23 sunsetFollowsSunrise]& 1) == 0)
  {
    self->_sunsetFilterEnabled = 0;
    goto LABEL_14;
  }

  v12 = +[NSCalendar currentCalendar];
  v13 = [(NTKSiderealData *)v23 referenceDate];
  v14 = [v12 components:160 fromDate:v13];

  [v14 setSecond:0];
  [v14 setHour:22];
  v15 = [(NTKSiderealData *)v23 referenceDate];
  v16 = [v12 nextDateAfterDate:v15 matchingComponents:v14 options:2];

  if (v9 < 14400.0)
  {
    goto LABEL_3;
  }

  if (v9 < 28800.0)
  {
    self->_sunsetFilterEnabled = 1;
    v17 = [v3 solarNoon];
LABEL_9:
    v18 = v17;
    if (v11 >= 7200.0)
    {
      v19 = v5;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19;
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v18];
    *&v21 = v21;
    self->_sunsetFilterRampUpStartProgress = *&v21;
    [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v20];
    *&v22 = v22;
    self->_sunsetFilterRampDownStartProgress = *&v22;

    goto LABEL_13;
  }

  if (v9 < 72000.0)
  {
    self->_sunsetFilterEnabled = 1;
    v17 = [v5 dateByAddingTimeInterval:-14400.0];
    goto LABEL_9;
  }

LABEL_3:
  self->_sunsetFilterEnabled = 0;
LABEL_13:

LABEL_14:
}

- (void)dataSourceDidUpdateSolarData:(id)a3
{
  v5 = a3;
  if (self->_currentData != v5)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[NTKSiderealFaceView] dataSourceDidUpdateSolarData", v15, 2u);
    }

    objc_storeStrong(&self->_currentData, a3);
    dialBackgroundView = self->_dialBackgroundView;
    v8 = [(NTKSiderealData *)self->_currentData sectors];
    [(NTKSiderealDialBackgroundView *)dialBackgroundView setSectors:v8];

    v9 = +[NTKSiderealCache sharedCache];
    [v9 purgeCachedKey:NTKSiderealCacheWaypointViewKey];

    v10 = +[NTKSiderealCache sharedCache];
    [v10 purgeAPLCache];

    v11 = self->_dialBackgroundView;
    if (v11)
    {
      v12 = [(NTKSiderealDialBackgroundView *)v11 quad];
      v13 = [(NTKSiderealFaceView *)self _waypointViewImageRef];
      [v12 updateWaypointImage:v13];
    }

    [(NTKSiderealFaceView *)self _updateSunsetFilter];
    v14 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
    [v14 siderealDataChanged:v5];
  }
}

- (void)_setSolarDayProgress:(double)a3
{
  currentSolarDayProgress = self->_currentSolarDayProgress;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_currentSolarDayProgress = a3;
    v6 = 0.0;
    if (self->_sunsetFilterEnabled && self->_useXR)
    {
      v7 = a3;
      sunsetFilterRampUpStartProgress = self->_sunsetFilterRampUpStartProgress;
      v9 = ((self->_sunsetFilterRampDownStartProgress - sunsetFilterRampUpStartProgress) + -0.083333) * 0.5;
      v10 = ((v9 + 0.083333) / 0.083333) - fabsf((((v7 + -0.083333) - sunsetFilterRampUpStartProgress) - v9) / 0.083333);
      if (v10 < 0.0)
      {
        v10 = 0.0;
      }

      v6 = fminf(v10, 1.0);
    }

    v11 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
    *&v12 = v6;
    [v11 setSunsetFilter:v12];

    [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView setSolarDayProgress:self->_currentSolarDayProgress];
    [(NTKSiderealFaceView *)self _updateTimeViewOrbitWithSolarDayProgress:self->_currentSolarDayProgress];
    [(NTKSiderealFaceView *)self _updateSolarOrbitGlowPath:self->_currentSolarDayProgress];
    [(NTKSiderealFaceView *)self _updateWaypointLabel];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_108FC;
    v13[3] = &unk_2CB58;
    v13[4] = self;
    [(NTKSiderealFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v13];
  }
}

- (void)_forceSolarDayUpdate
{
  [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
  [(NTKSiderealFaceView *)self _updateTimeScrubbingContent:?];

  [(NTKSiderealFaceView *)self _setViewMode:0 animated:0];
}

- (void)_updateTimeViewOrbitWithSolarDayProgress:(double)a3
{
  v4 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v4, &v7);

  v5 = [(NTKSiderealFaceView *)self device];
  [v5 screenBounds];
  CLKRectGetCenter();

  CLKDegreesToRadians();
  NTKPointOnCircle();
  siderealTimeView = self->_siderealTimeView;

  [(NTKSiderealTimeView *)siderealTimeView setCenter:?];
}

- (void)_handleViewModeTapGesture:(id)a3
{
  v4 = [(NTKSiderealFaceView *)self _isDayAnimationRunning];
  viewMode = self->_viewMode;
  if (!v4 || viewMode)
  {

    [(NTKSiderealFaceView *)self _setViewMode:viewMode != 1 animated:1];
  }
}

- (void)_prepareForSettingViewMode:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  viewMode = self->_viewMode;
  if (viewMode != 1)
  {
    if (!viewMode)
    {
      [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels willStartTransition];
      [(NTKSiderealFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_2CBE0];
      if (v4)
      {
        currentSolarDayProgress = self->_currentSolarDayProgress;
        [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_11134;
        v23[3] = &unk_2CC08;
        v23[4] = self;
        [(NTKSiderealFaceView *)self _animateSolarDayFromProgress:v23 toProgress:currentSolarDayProgress minDuration:v8 completion:0.5];
      }

      else
      {
        [(NTKSiderealFaceView *)self _resetInteractionProgress];
      }

      [(NTKSiderealTimeView *)self->_siderealTimeView setUseMonospacedDigitalNumbers:0];
    }

    goto LABEL_27;
  }

  [(NTKSiderealFaceView *)self _updateStatusBarVisibility];
  [(NTKSiderealFaceView *)self _loadAuxiliaryDialLabelsIfNeeded];
  [(NTKSiderealFaceView *)self _loadOffsetLabelIfNeeded];
  if (v4)
  {
    [(NTKSiderealFaceView *)self enableCrownEventReception];
  }

  [(NTKSiderealTimeView *)self->_siderealTimeView setUseMonospacedDigitalNumbers:1];
  [(NTKSiderealTimeView *)self->_siderealTimeView setSecondsHidden:1 animated:1];
  [(NTKSiderealFaceView *)self _updateWaypointLabel];
  v9 = [(NTKSiderealData *)self->_currentData sunriseSunsetInfo];
  v10 = [v9 rise];
  v11 = [v9 set];
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = NTKEndOfDayForDate();
    v15 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = *&v10;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "sunrise exists (%@) but sunset doesn't (nil), setting to end of day (%@)", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v13 = v11;
  if (v10)
  {
LABEL_18:
    [v13 timeIntervalSinceDate:v10];
    v14 = v16;
    goto LABEL_19;
  }

  v14 = 0.0;
LABEL_19:
  v17 = [v9 constantSun];
  v18 = v14;
  v19 = v14 != 0.0 || v17 != &dword_0 + 2;
  if (v14 == 0.0 && v17 == &dword_0 + 2)
  {
    v14 = 86400.0;
  }

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL && v19)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v25 = v14;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v13;
      _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "dayLength is not valid (%f). Derived from sunrise (%@) sunset (%@)", buf, 0x20u);
    }

    v22 = &stru_2D1E0;
  }

  else
  {
    v20 = sub_1113C(0, v14);
    v21 = [NTKSolarDialFaceBundle localizedStringForKey:@"SOLAR_DAY_LENGTH" comment:@"Day Length"];
    v22 = [NSString stringWithFormat:@"%@: %@", v21, v20];
  }

  [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels setBottomText:v22];
LABEL_27:
  [(NTKSiderealFaceView *)self _updateFramerate];
  [(NTKSiderealFaceView *)self _refreshGlowPathState];
}

- (void)_interpolateFromViewMode:(unint64_t)a3 toViewMode:(unint64_t)a4 progress:(double)a5
{
  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory setAlpha:self faceView:?];
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  [(UILabel *)self->_offsetLabel setAlpha:?];
  CLKInterpolateBetweenFloatsClipped();
  auxiliaryDialLabels = self->_auxiliaryDialLabels;

  [(NTKSiderealAuxiliaryDialLabels *)auxiliaryDialLabels applyTransitionFraction:?];
}

- (void)_cleanupAfterSettingViewMode:(unint64_t)a3 previousViewMode:(unint64_t)a4
{
  self->_transitionState = 0;
  viewMode = self->_viewMode;
  if (viewMode == 1)
  {
    [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels didFinishTransition:a3];
    [(NTKSiderealFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_2CC28];
    if (NTKStarbearEnabled())
    {
      [(NTKSiderealFaceView *)self _enableCrown];
    }
  }

  else if (!viewMode)
  {
    [(NTKSiderealFaceView *)self _tearDownAuxiliaryDialLabels];
    [(NTKSiderealFaceView *)self _tearDownOffsetLabel];
    [(NTKSiderealFaceView *)self _updateStatusBarVisibility];
    [(NTKSiderealTimeView *)self->_siderealTimeView setSecondsHidden:0 animated:1];
    if (a4 != 2)
    {
      [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
      [(NTKSiderealFaceView *)self _updateTimeScrubbingContent:?];
    }

    [(NTKSiderealFaceView *)self _resetInteractionProgress];
    if (NTKStarbearEnabled())
    {
      [(NTKSiderealFaceView *)self _disableCrown];
    }
  }

  [(NTKSiderealFaceView *)self _refreshGlowPathState:a3];
}

- (void)_updateStatusBarVisibility
{
  v3 = [(NTKSiderealFaceView *)self delegate];
  [v3 faceViewWantsStatusBarHidden:self->_viewMode == 1 animated:1];
}

- (void)_refreshGlowPathState
{
  v2 = self->_transitionState - 1;
  viewMode = self->_viewMode;
  v4 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
  v7 = v4;
  v6 = v2 < 2 || viewMode == 1;
  [v4 setShouldDrawGlowPath:v6];
}

- (void)_updateSolarOrbitGlowPath:(double)a3
{
  [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
  v6 = v5 * 6.28318531;
  v7 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
  [v7 setGlowViewStartAngle:v6 endAngle:a3 * 6.28318531];
}

- (void)_updateWaypointLabel
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NTKSiderealData *)self->_currentData sectors];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 startingEvent];
        [v9 degree];
        NTKSiderealDegreesToSolarDayProgress();
        v11 = v10;

        v12 = [v8 endingEvent];
        [v12 degree];
        NTKSiderealDegreesToSolarDayProgress();
        v14 = v13;

        interactionProgress = self->_interactionProgress;
        if (interactionProgress >= v11 && interactionProgress <= v14)
        {
          auxiliaryDialLabels = self->_auxiliaryDialLabels;
          v18 = [v8 localizedName];
          [(NTKSiderealAuxiliaryDialLabels *)auxiliaryDialLabels setTopText:v18];

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

LABEL_13:
}

- (void)_updateTimeLabelsWithReferenceDate:(id)a3 overrideDate:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_viewMode == 1 || self->_transitionState == 1)
  {
    [v6 timeIntervalSinceDate:v17];
    v9 = sub_1113C(1, v8);
    v10 = [(UILabel *)self->_offsetLabel text];
    v11 = [v10 isEqualToString:v9];

    if ((v11 & 1) == 0)
    {
      [(UILabel *)self->_offsetLabel setText:v9];
    }

    v12 = [(NSDateFormatter *)self->_interactiveModeDateFormatter stringFromDate:v17];
    v13 = +[NSLocale currentLocale];
    v14 = [v12 uppercaseStringWithLocale:v13];

    v15 = [NTKSolarDialFaceBundle localizedStringForKey:@"SOLAR_DATE_NOW" comment:@"Now"];
    v16 = [NSString stringWithFormat:@"%@ %@", v15, v14];

    [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels setBottomText:v16];
  }
}

- (void)_loadAuxiliaryDialLabelsIfNeeded
{
  if (!self->_auxiliaryDialLabels)
  {
    v3 = [NTKSiderealAuxiliaryDialLabels alloc];
    [(NTKSiderealFaceView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(NTKSiderealFaceView *)self device];
    v13 = [(NTKSiderealAuxiliaryDialLabels *)v3 initWithFrame:v12 device:v5, v7, v9, v11];
    auxiliaryDialLabels = self->_auxiliaryDialLabels;
    self->_auxiliaryDialLabels = v13;

    v15 = [(NTKSiderealFaceView *)self contentView];
    [v15 addSubview:self->_auxiliaryDialLabels];
  }
}

- (void)_tearDownAuxiliaryDialLabels
{
  [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels removeFromSuperview];
  auxiliaryDialLabels = self->_auxiliaryDialLabels;
  self->_auxiliaryDialLabels = 0;
}

- (void)_loadOffsetLabelIfNeeded
{
  if (!self->_offsetLabel)
  {
    v3 = [(NTKSiderealFaceView *)self device];
    sub_14ADC(v3, v25);
    v4 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v26 design:UIFontWeightMedium];
    v22 = [v4 CLKFontWithMonospacedNumbers];

    NTKSingleLineHeight();
    v6 = v5;
    v7 = [(NTKSiderealFaceView *)self device];
    sub_14ADC(v7, v23);
    v8 = v24 - v6;
    [(NTKSiderealTimeView *)self->_siderealTimeView bounds];
    v10 = v9;

    v11 = [[UILabel alloc] initWithFrame:{0.0, v8, v10, v6}];
    offsetLabel = self->_offsetLabel;
    self->_offsetLabel = v11;

    [(UILabel *)self->_offsetLabel setFont:v22];
    v13 = self->_offsetLabel;
    v14 = [UIColor colorWithRed:1.0 green:0.941176471 blue:0.501960784 alpha:1.0];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)self->_offsetLabel setTextAlignment:1];
    v15 = [(UILabel *)self->_offsetLabel layer];
    [v15 setShadowRadius:5.0];

    v16 = [(UILabel *)self->_offsetLabel layer];
    LODWORD(v17) = 1041865114;
    [v16 setShadowOpacity:v17];

    v18 = [(UILabel *)self->_offsetLabel layer];
    [v18 setShadowOffset:{0.0, 0.0}];

    v19 = self->_offsetLabel;
    v20 = [UIColor colorWithWhite:0.0 alpha:0.15];
    [(UILabel *)v19 setShadowColor:v20];

    v21 = [(NTKSiderealTimeView *)self->_siderealTimeView dialBackgroundView];
    [v21 addSubview:self->_offsetLabel];
  }
}

- (void)_tearDownOffsetLabel
{
  [(UILabel *)self->_offsetLabel removeFromSuperview];
  offsetLabel = self->_offsetLabel;
  self->_offsetLabel = 0;
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v4 _prepareForEditing];
  self->_breathScaleModifier = 1.0;
  self->_rubberBandScaleModifier = 1.0;
  v3 = [(NTKSiderealFaceView *)self timeView];
  [v3 setEditing:1];

  [(NTKSiderealFaceView *)self setupDarkeningViewIfNeeded];
  [(NTKSiderealFaceView *)self _updateFramerate];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v4 _cleanupAfterEditing];
  v3 = [(NTKSiderealFaceView *)self timeView];
  [v3 setEditing:0];

  [(NTKSiderealFaceView *)self tearDownDarkeningView];
  [(NTKSiderealFaceView *)self _updateFramerate];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 15)
  {
    siderealTimeView = self->_siderealTimeView;
    v7 = [a3 style];

    [(NTKSiderealTimeView *)siderealTimeView setStyle:v7];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 15)
  {
    siderealTimeView = self->_siderealTimeView;
    v11 = a5;
    v12 = [a4 style];
    v13 = [v11 style];

    [(NTKSiderealTimeView *)siderealTimeView applyTransitionFraction:v12 fromStyle:v13 toStyle:a3];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v6 = [(NTKSiderealFaceView *)self device:a4];
  sub_14ADC(v6, &v9);
  NTKScaleForBreathingFraction();
  v8 = v7;

  self->_breathScaleModifier = v8;

  [(NTKSiderealFaceView *)self _applyScaleToTimeView];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  self->_rubberBandScaleModifier = v6;

  [(NTKSiderealFaceView *)self _applyScaleToTimeView];
}

- (void)_applyScaleToTimeView
{
  +[CATransaction begin];
  [CATransaction setValue:kCFBooleanTrue forKey:kCATransactionDisableActions];
  siderealTimeView = self->_siderealTimeView;
  [(NTKSiderealFaceView *)self _timeViewScaleTransform];
  [(NTKSiderealTimeView *)siderealTimeView setTransform:&v9];
  v4 = [(NTKSiderealFaceView *)self newTimeViewPathForDarkeningView];
  [(CAShapeLayer *)self->_dialDarkeningLayer setPath:v4];
  CGPathRelease(v4);
  [(NTKSiderealTimeView *)self->_siderealTimeView frame];
  v6 = v5;
  [(CALayer *)self->_timeViewDarkeningLayer setFrame:?];
  [(CALayer *)self->_timeViewDarkeningLayer setCornerRadius:v6 * 0.5];
  *&v6 = self->_rubberBandScaleModifier;
  v7 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
  LODWORD(v8) = LODWORD(v6);
  [v7 setBlurScale:v8];

  +[CATransaction commit];
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKSiderealFaceView *)self _applyScaleToTimeView];
  dialDarkeningLayer = self->_dialDarkeningLayer;
  [(NTKSiderealFaceView *)self _darkeningViewAlphaForEditMode:a3];
  *&v6 = v6;
  [(CAShapeLayer *)dialDarkeningLayer setOpacity:v6];
  timeViewDarkeningLayer = self->_timeViewDarkeningLayer;
  [(NTKSiderealFaceView *)self _timeDarkeningViewAlphaForEditMode:a3];
  *&v8 = v8;
  [(CALayer *)timeViewDarkeningLayer setOpacity:v8];
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  [(NTKSiderealFaceView *)self _complicationAlphaForEditMode:a3];

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory setAlpha:self faceView:?];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKSiderealFaceView *)self _darkeningViewAlphaForEditMode:?];
  [(NTKSiderealFaceView *)self _darkeningViewAlphaForEditMode:a5];
  dialDarkeningLayer = self->_dialDarkeningLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v9 = v9;
  [(CAShapeLayer *)dialDarkeningLayer setOpacity:v9];
  [(NTKSiderealFaceView *)self _timeDarkeningViewAlphaForEditMode:a4];
  [(NTKSiderealFaceView *)self _timeDarkeningViewAlphaForEditMode:a5];
  timeViewDarkeningLayer = self->_timeViewDarkeningLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v11 = v11;
  [(CALayer *)timeViewDarkeningLayer setOpacity:v11];
  [(NTKSiderealFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKSiderealFaceView *)self _complicationAlphaForEditMode:a5];
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  CLKInterpolateBetweenFloatsClipped();

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory setAlpha:self faceView:?];
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
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
  if (a3 != 15)
  {
    return 1.0;
  }

  return result;
}

- (double)_darkeningViewAlphaForEditMode:(int64_t)a3
{
  result = 0.7;
  if (!a3)
  {
    return 0.0;
  }

  return result;
}

- (double)_timeDarkeningViewAlphaForEditMode:(int64_t)a3
{
  result = 0.7;
  if (a3 != 1)
  {
    return 0.0;
  }

  return result;
}

- (void)setupDarkeningViewIfNeeded
{
  if (!self->_darkeningContainerView)
  {
    v3 = [UIView alloc];
    [(NTKSiderealFaceView *)self bounds];
    v4 = [v3 initWithFrame:?];
    darkeningContainerView = self->_darkeningContainerView;
    self->_darkeningContainerView = v4;

    v6 = [(NTKSiderealFaceView *)self newTimeViewPathForDarkeningView];
    v7 = objc_alloc_init(CAShapeLayer);
    dialDarkeningLayer = self->_dialDarkeningLayer;
    self->_dialDarkeningLayer = v7;

    [(CAShapeLayer *)self->_dialDarkeningLayer setPath:v6];
    [(CAShapeLayer *)self->_dialDarkeningLayer setFillRule:kCAFillRuleEvenOdd];
    v9 = +[UIColor blackColor];
    -[CAShapeLayer setFillColor:](self->_dialDarkeningLayer, "setFillColor:", [v9 CGColor]);

    v10 = self->_dialDarkeningLayer;
    v32 = @"opacity";
    v11 = +[NSNull null];
    v33 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [(CAShapeLayer *)v10 setActions:v12];

    v13 = [(UIView *)self->_darkeningContainerView layer];
    [v13 addSublayer:self->_dialDarkeningLayer];

    CGPathRelease(v6);
    [(NTKSiderealTimeView *)self->_siderealTimeView frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = objc_alloc_init(CALayer);
    timeViewDarkeningLayer = self->_timeViewDarkeningLayer;
    self->_timeViewDarkeningLayer = v22;

    [(CALayer *)self->_timeViewDarkeningLayer setFrame:v15, v17, v19, v21];
    [(CALayer *)self->_timeViewDarkeningLayer setCornerRadius:v19 * 0.5];
    v24 = self->_timeViewDarkeningLayer;
    v25 = +[UIColor blackColor];
    -[CALayer setBackgroundColor:](v24, "setBackgroundColor:", [v25 CGColor]);

    v26 = self->_timeViewDarkeningLayer;
    v30 = @"opacity";
    v27 = +[NSNull null];
    v31 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [(CALayer *)v26 setActions:v28];

    v29 = [(UIView *)self->_darkeningContainerView layer];
    [v29 addSublayer:self->_timeViewDarkeningLayer];

    [(NTKSiderealFaceView *)self insertSubview:self->_darkeningContainerView aboveSubview:self->_dialBackgroundView];
  }
}

- (void)tearDownDarkeningView
{
  [(UIView *)self->_darkeningContainerView removeFromSuperview];
  darkeningContainerView = self->_darkeningContainerView;
  self->_darkeningContainerView = 0;
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineViewForComplicationSlot:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKSiderealFaceView;
    v7 = [(NTKSiderealFaceView *)&v10 _keylineViewForComplicationSlot:v4];
  }

  v8 = v7;

  return v8;
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    [(NTKSiderealFaceView *)self _faceEditingScaleForEditMode:15 slot:a4];
    [(NTKSiderealTimeView *)self->_siderealTimeView bounds];
    v5 = NTKKeylineViewWithCircle();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSiderealFaceView;
    v5 = [(NTKSiderealFaceView *)&v7 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v5;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKSiderealFaceView;
  return [(NTKSiderealFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:a3 slot:a4];
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
  {
    [(NTKSiderealFaceView *)self _timeViewKeylineFrameForEditing:15];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKSiderealFaceView;
    [(NTKSiderealFaceView *)&v8 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_timeViewKeylineFrameForEditing
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_12908;
  v14[3] = &unk_2CC50;
  v14[4] = self;
  v2 = [(NTKSiderealFaceView *)self device];
  v3 = sub_12908(v14, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_loadLayoutRules
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  v4 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v4, v5);
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5[0]];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v6 forSlot:a4 faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }
}

- (id)_dialViewImageRef
{
  v3 = [NTKSiderealCachedMTLTexture alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_12CF0;
  v6[3] = &unk_2CC78;
  v6[4] = self;
  v4 = [(NTKSiderealCachedMTLTexture *)v3 initWithCachedImageKey:NTKSiderealCacheDialViewKey isAlphaOnly:1 imageGenerationBlock:v6];

  return v4;
}

- (id)_waypointViewImageRef
{
  v3 = [NTKSiderealCachedMTLTexture alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_12EC4;
  v6[3] = &unk_2CC78;
  v6[4] = self;
  v4 = [(NTKSiderealCachedMTLTexture *)v3 initWithCachedImageKey:NTKSiderealCacheWaypointViewKey isAlphaOnly:1 imageGenerationBlock:v6];

  return v4;
}

- (id)_newGnomonLayer
{
  v10 = 0u;
  v2 = [CLKDevice currentDevice:0];
  sub_14ADC(v2, &v9);

  v3 = +[CAGradientLayer layer];
  [v3 setOpaque:0];
  [v3 setFrame:{0.0, 0.0, v10}];
  [v3 setStartPoint:{0.0, 0.5}];
  [v3 setEndPoint:{1.0, 0.5}];
  [v3 setType:kCAGradientLayerAxial];
  [v3 setLocations:&off_2E070];
  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.0);
  v11[0] = SRGB;
  v5 = CGColorCreateSRGB(0.8, 0.941176471, 1.0, 0.3);
  v11[1] = v5;
  v6 = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.0);
  v11[2] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:3];
  [v3 setColors:v7];

  return v3;
}

- (id)_gnomonImage
{
  v3 = [NTKSiderealCachedMTLTexture alloc];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_13274;
  v6[3] = &unk_2CC78;
  v6[4] = self;
  v4 = [(NTKSiderealCachedMTLTexture *)v3 initWithCachedImageKey:NTKSiderealCacheGnomonViewKey isAlphaOnly:1 imageGenerationBlock:v6];

  return v4;
}

- (id)_dayGnomonImageFromSolarContainerView:(id)a3
{
  v4 = a3;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheDayGnomonImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_134B4;
  v10[3] = &unk_2CCA0;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_dayDiskBloomImageFromSolarContainerView:(id)a3
{
  v4 = a3;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheDayDiskBloomImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1362C;
  v10[3] = &unk_2CCA0;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_dayDiscImageFromSolarContainerView:(id)a3
{
  v4 = a3;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheDayDiscImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_137A4;
  v10[3] = &unk_2CCA0;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_nightGnomonImageFromSolarContainerView:(id)a3
{
  v4 = a3;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheNightGnomonImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1391C;
  v10[3] = &unk_2CCA0;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_nightDiscImageFromSolarContainerView:(id)a3
{
  v4 = a3;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheNightDiscImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13A94;
  v10[3] = &unk_2CCA0;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_nightRingImageFromSolarContainerView:(id)a3
{
  v4 = a3;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheNightRingImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13C0C;
  v10[3] = &unk_2CCA0;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (CGImage)newImageRefFromSolarContainerView:(id)a3 withHeight:(double)a4
{
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(NTKSiderealFaceView *)self device];
  [v11 screenScale];
  v13 = v12;
  v21.width = v8;
  v21.height = v10;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v13);

  CurrentContext = UIGraphicsGetCurrentContext();
  v15 = [v6 layer];

  [v15 renderInContext:CurrentContext];
  Image = CGBitmapContextCreateImage(CurrentContext);
  UIGraphicsEndImageContext();
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  v22.origin.x = vcvtd_n_f64_u64(Width, 1uLL);
  v22.origin.y = (Height + a4 * -2.0) * 0.5;
  v22.size.height = a4 + a4;
  v22.size.width = v22.origin.x;
  v19 = CGImageCreateWithImageInRect(Image, v22);
  CGImageRelease(Image);
  return v19;
}

- (CGImage)newImageRefFromView:(id)a3
{
  v4 = a3;
  v5 = [(NTKSiderealFaceView *)self device];
  [v5 screenBounds];
  v7 = v6;
  v9 = v8;
  v10 = [(NTKSiderealFaceView *)self device];
  [v10 screenScale];
  v12 = v11;
  v26.width = v7;
  v26.height = v9;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = [v4 layer];

  [v14 renderInContext:CurrentContext];
  Image = CGBitmapContextCreateImage(CurrentContext);
  UIGraphicsEndImageContext();
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  v18 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(v18, v25);
  v19 = v25[0];
  v20 = [(NTKSiderealFaceView *)self device];
  [v20 screenScale];
  v22 = v19 * v21;

  v27.origin.x = (Width - v22) * 0.5;
  v27.origin.y = (Height - v22) * 0.5;
  v27.size.width = v22;
  v27.size.height = v22;
  v23 = CGImageCreateWithImageInRect(Image, v27);
  CGImageRelease(Image);
  return v23;
}

- (id)closestWaypointForSolarDayProgress:(double)a3 range:(double)a4
{
  v6 = a3 * 360.0;
  v7 = fmodf(v6, 360.0);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(NTKSiderealData *)self->_currentData waypoints];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v7;
    v13 = *v23;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [v16 degree];
        v18 = vabdd_f64(v17, v12);
        if (v18 <= a4 && v18 < v14)
        {
          v20 = v16;

          v14 = v18;
          v11 = v20;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)waypointBetweenPreviousOffset:(double)a3 currentOffset:(double)a4
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(NTKSiderealData *)self->_currentData waypoints];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 degree];
        NTKSiderealDegreesToSolarDayProgress();
        if ((v12 <= a3 || v12 >= a4) && (v12 <= a4 || v12 >= a3))
        {
          continue;
        }

        v15 = v11;
        goto LABEL_19;
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (double)_solarDayProgressForCurrentTime
{
  v2 = [(NTKSiderealFaceView *)self _faceDisplayTime];
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v2];
  v4 = v3;

  return v4;
}

- (double)_idealizedSolarDayProgress
{
  v2 = NTKIdealizedDate();
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v2];
  v4 = v3;

  return v4;
}

- (CGPath)newTimeViewPathForDarkeningView
{
  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeScale(&transform, 1.02, 1.02);
  [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView frame];
  v4 = v3 * -0.01;
  [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView frame];
  v9 = transform;
  CGAffineTransformTranslate(&v10, &v9, v4, v5 * -0.01);
  transform = v10;
  [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView frame];
  v6 = CGPathCreateWithEllipseInRect(v12, &transform);
  MutableCopy = CGPathCreateMutableCopy(v6);
  CGPathRelease(v6);
  [(NTKSiderealTimeView *)self->_siderealTimeView frame];
  CGPathAddEllipseInRect(MutableCopy, 0, v13);
  return MutableCopy;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v6 = [(NTKSiderealFaceView *)self _outerComplicationColors];
  v7 = [(NTKSiderealFaceView *)self _innerComplicationColors];
  v8 = CLKUIMonochromeFiltersForStyleWithTintedBackground();

  return v8;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(NTKSiderealFaceView *)self _outerComplicationColors];
  v9 = [(NTKSiderealFaceView *)self _innerComplicationColors];
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
    v5 = v10;
    goto LABEL_12;
  }

  if (a4 == 3 || a4 == 4 || a4 == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v5;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v7 = [(NTKSiderealFaceView *)self _outerComplicationColors];
  v8 = [(NTKSiderealFaceView *)self _innerComplicationColors];
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
    v4 = v9;
    goto LABEL_12;
  }

  if (a4 == 3 || a4 == 4 || a4 == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v4;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  if (a4)
  {
    [(NTKSiderealFaceView *)self _innerComplicationColors];
  }

  else
  {
    [(NTKSiderealFaceView *)self _outerComplicationColors];
  }
  v4 = ;

  return v4;
}

- (id)_outerComplicationColors
{
  if (qword_355C0 != -1)
  {
    sub_19EFC();
  }

  v3 = qword_355B8;
  [(NTKSiderealData *)self->_currentData altitudeForProgress:self->_currentSolarDayProgress];

  return [v3 colorForAltitude:?];
}

- (id)_innerComplicationColors
{
  if (qword_355D0 != -1)
  {
    sub_19F10();
  }

  v3 = qword_355C8;
  [(NTKSiderealData *)self->_currentData altitudeForProgress:self->_currentSolarDayProgress];

  return [v3 colorForAltitude:?];
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 == 15)
  {
    v10 = [v8 style];
    v11 = @"Digital";
    if (v10 != &dword_0 + 1)
    {
      v11 = 0;
    }

    if (!v10)
    {
      v11 = @"Analog";
    }

    v12 = [NSString stringWithFormat:@"Swatch-Sidereal-%@", v11];
    v13 = [NTKSolarDialFaceBundle imageWithName:v12];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKSiderealFaceView;
    v13 = [(NTKSiderealFaceView *)&v15 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v13;
}

- (void)performScrollTestNamed:(id)a3 completion:(id)a4
{
  v5 = a4;
  [(NTKSiderealFaceView *)self _setSolarDayProgress:0.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_14970;
  v6[3] = &unk_2CC08;
  v6[4] = self;
  [(NTKSiderealFaceView *)self _animateSolarDayFromProgress:v6 toProgress:0.0 minDuration:1.0 completion:1.0];
  if (v5)
  {
    v5[2](v5);
  }
}

@end