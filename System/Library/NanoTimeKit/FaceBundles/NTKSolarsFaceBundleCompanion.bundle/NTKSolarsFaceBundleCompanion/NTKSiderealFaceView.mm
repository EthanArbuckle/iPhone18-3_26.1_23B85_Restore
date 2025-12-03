@interface NTKSiderealFaceView
- (CGImage)newImageRefFromSolarContainerView:(id)view withHeight:(double)height;
- (CGImage)newImageRefFromView:(id)view;
- (CGPath)newTimeViewPathForDarkeningView;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot;
- (CGRect)_timeViewKeylineFrameForEditing;
- (NTKSiderealFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_darkeningViewAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_idealizedSolarDayProgress;
- (double)_solarDayProgressForCurrentTime;
- (double)_timeDarkeningViewAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_dayDiscImageFromSolarContainerView:(id)view;
- (id)_dayDiskBloomImageFromSolarContainerView:(id)view;
- (id)_dayGnomonImageFromSolarContainerView:(id)view;
- (id)_dialViewImageRef;
- (id)_faceDisplayTime;
- (id)_gnomonImage;
- (id)_innerComplicationColors;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_newGnomonLayer;
- (id)_nightDiscImageFromSolarContainerView:(id)view;
- (id)_nightGnomonImageFromSolarContainerView:(id)view;
- (id)_nightRingImageFromSolarContainerView:(id)view;
- (id)_outerComplicationColors;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_waypointViewImageRef;
- (id)closestWaypointForSolarDayProgress:(double)progress range:(double)range;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)waypointBetweenPreviousOffset:(double)offset currentOffset:(double)currentOffset;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyScaleToTimeView;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_asyncUpdateLocale;
- (void)_buttonPressTimerFired;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterSettingViewMode:(unint64_t)mode previousViewMode:(unint64_t)viewMode;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_disableCrown;
- (void)_enableCrown;
- (void)_forceSolarDayUpdate;
- (void)_handleViewModeTapGesture:(id)gesture;
- (void)_interpolateFromViewMode:(unint64_t)mode toViewMode:(unint64_t)viewMode progress:(double)progress;
- (void)_loadAuxiliaryDialLabelsIfNeeded;
- (void)_loadDial;
- (void)_loadLayoutRules;
- (void)_loadOffsetLabelIfNeeded;
- (void)_loadSnapshotContentViews;
- (void)_loadTimeView;
- (void)_loadUI;
- (void)_prepareForEditing;
- (void)_prepareForSettingViewMode:(unint64_t)mode animated:(BOOL)animated;
- (void)_refreshGlowPathState;
- (void)_resetInteractionProgress;
- (void)_setSolarDayProgress:(double)progress;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_tearDownAuxiliaryDialLabels;
- (void)_tearDownOffsetLabel;
- (void)_timeDidUpdate:(id)update;
- (void)_unloadDial;
- (void)_unloadSnapshotContentViews;
- (void)_unloadTimeView;
- (void)_unloadUI;
- (void)_updateFramerate;
- (void)_updateLocale;
- (void)_updateSolarOrbitGlowPath:(double)path;
- (void)_updateStatusBarVisibility;
- (void)_updateSunsetFilter;
- (void)_updateTimeLabelsWithReferenceDate:(id)date overrideDate:(id)overrideDate;
- (void)_updateTimeScrubbingContent:(double)content;
- (void)_updateTimeViewOrbitWithSolarDayProgress:(double)progress;
- (void)_updateWaypointLabel;
- (void)_wheelDelayTimerFired;
- (void)dataSourceDidUpdateSolarData:(id)data;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performScrollTestNamed:(id)named completion:(id)completion;
- (void)setDataMode:(int64_t)mode;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setupDarkeningViewIfNeeded;
- (void)tearDownDarkeningView;
@end

@implementation NTKSiderealFaceView

- (NTKSiderealFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NTKSiderealFaceView;
  v9 = [(NTKSiderealFaceView *)&v18 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v9->_useXR = 0;
    v11 = +[UIColor blackColor];
    [(NTKSiderealFaceView *)v10 setBackgroundColor:v11];

    v10->_previousDataMode = 0;
    v12 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    faceViewComplicationFactory = v10->_faceViewComplicationFactory;
    v10->_faceViewComplicationFactory = v12;

    _accessPrewarmedData = [(NTKSiderealFaceView *)v10 _accessPrewarmedData];
    object = [_accessPrewarmedData object];
    dataSource = v10->_dataSource;
    v10->_dataSource = object;

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
  device = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device, v50);
  v4 = v50[0];

  v5 = [NTKSiderealSolarContainerView alloc];
  device2 = [(NTKSiderealFaceView *)self device];
  [device2 screenBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  device3 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device3, &v48);
  v16 = v49;
  device4 = [(NTKSiderealFaceView *)self device];
  v43 = [(NTKSiderealSolarContainerView *)v5 initWithFrame:device4 orbitDiameter:v8 device:v10, v12, v14, v16];

  v18 = [NTKSiderealDialBackgroundView alloc];
  device5 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device5, &v46);
  v19 = v47;
  device6 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device6, &v44);
  v20 = v45;
  timeView = [(NTKSiderealFaceView *)self timeView];
  [timeView bounds];
  v22 = v21 * 0.5;
  _dialViewImageRef = [(NTKSiderealFaceView *)self _dialViewImageRef];
  _waypointViewImageRef = [(NTKSiderealFaceView *)self _waypointViewImageRef];
  _gnomonImage = [(NTKSiderealFaceView *)self _gnomonImage];
  v39 = [(NTKSiderealFaceView *)self _dayGnomonImageFromSolarContainerView:v43];
  v25 = [(NTKSiderealFaceView *)self _dayDiskBloomImageFromSolarContainerView:v43];
  v26 = [(NTKSiderealFaceView *)self _dayDiscImageFromSolarContainerView:v43];
  v27 = [(NTKSiderealFaceView *)self _nightGnomonImageFromSolarContainerView:v43];
  v28 = [(NTKSiderealFaceView *)self _nightDiscImageFromSolarContainerView:v43];
  v29 = [(NTKSiderealFaceView *)self _nightRingImageFromSolarContainerView:v43];
  LOBYTE(v37) = self->_useXR;
  v30 = [(NTKSiderealDialBackgroundView *)v18 initWithFrame:_dialViewImageRef orbitDiameter:_waypointViewImageRef timeOrbitRadius:_gnomonImage timeRadius:v39 dialImage:v25 waypointImage:v26 gnomonImage:0.0 dayGnomonImage:0.0 dayDiskBloomImage:v4 dayDiscImage:v4 nightGnomonImage:v19 nightDiscImage:v20 nightRingImage:v22 initialData:v27 useXR:v28, v29, self->_currentData, v37];
  dialBackgroundView = self->_dialBackgroundView;
  self->_dialBackgroundView = v30;

  v32 = self->_dialBackgroundView;
  device7 = [(NTKSiderealFaceView *)self device];
  [device7 screenBounds];
  CLKRectGetCenter();
  [(NTKSiderealDialBackgroundView *)v32 setCenter:?];

  v34 = self->_dialBackgroundView;
  sectors = [(NTKSiderealData *)self->_currentData sectors];
  [(NTKSiderealDialBackgroundView *)v34 setSectors:sectors];

  contentView = [(NTKSiderealFaceView *)self contentView];
  [contentView insertSubview:self->_dialBackgroundView atIndex:0];
}

- (void)_unloadDial
{
  [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView removeFromSuperview];
  dialBackgroundView = self->_dialBackgroundView;
  self->_dialBackgroundView = 0;
}

- (void)_loadTimeView
{
  device = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device, &v10);
  v4 = *(&v10 + 1);

  v5 = [NTKSiderealTimeView alloc];
  device2 = [(NTKSiderealFaceView *)self device];
  v7 = [(NTKSiderealTimeView *)v5 initWithFrame:0 style:device2 andDevice:0.0, 0.0, v4, v4];
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
    highlightImageView = [(NTKFaceViewTapControl *)self->_viewModeTapButton highlightImageView];
    device = [(NTKSiderealFaceView *)self device];
    v10 = NTKNoHighlightDialTapImage();
    [highlightImageView setImage:v10];

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

- (void)setDataMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_viewModeTapButton setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_viewModeTapButton setUserInteractionEnabled:mode == 1];
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
    dataMode = [(NTKSiderealFaceView *)self dataMode];
    v6 = -1.0;
    if (dataMode > 2)
    {
      if ((dataMode - 4) >= 2)
      {
        if (dataMode != &dword_0 + 3)
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

    else if (dataMode)
    {
      if (dataMode == &dword_0 + 1)
      {
        v9 = self->_previousDataMode;
        v10 = v9 == 3;
        if (v9 == 3)
        {
          timeView = [(NTKSiderealFaceView *)self timeView];
          [timeView setOverrideDate:0 duration:0.5];
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

      if (dataMode != &dword_0 + 2)
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

  quadView = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quadView];
  [quadView setPaused:1];
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

- (void)_updateTimeScrubbingContent:(double)content
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v10 = [(NTKSiderealData *)self->_currentData interpolateBetweenCalendricalMidnights:content];
  _faceDisplayTime = [(NTKSiderealFaceView *)self _faceDisplayTime];
  v6 = NTKRoundDateDownToNearestMinute();

  [(NTKSiderealFaceView *)self _updateTimeLabelsWithReferenceDate:v6 overrideDate:v10];
  if (self->_viewMode == 1 || self->_transitionState - 1 <= 1)
  {
    timeView = [(NTKSiderealFaceView *)self timeView];
    [timeView setOverrideDate:v10 duration:0.0];
  }

  [(NTKSiderealFaceView *)self _setSolarDayProgress:content];
  quadView = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quadView];
  [quadView renderSynchronouslyWithImageQueueDiscard:0 inGroup:0 completion:0];

  +[CATransaction commit];
}

- (void)_resetInteractionProgress
{
  [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
  self->_interactionProgress = v3;
  timeView = [(NTKSiderealFaceView *)self timeView];
  [timeView setOverrideDate:0 duration:0.0];
}

- (id)_faceDisplayTime
{
  v2 = +[NTKTimeOffsetManager sharedManager];
  faceDisplayTime = [v2 faceDisplayTime];

  return faceDisplayTime;
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

- (void)_timeDidUpdate:(id)update
{
  updateCopy = update;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = updateCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[NTKSiderealFaceView] _updateForChangedDate with date:%@", &v8, 0xCu);
  }

  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:updateCopy];
  v7 = v6;
  if (([(NTKSiderealData *)self->_currentData isDateInReferenceDate:updateCopy]& 1) != 0)
  {
    if (self->_viewMode != 1 && ![(NTKSiderealFaceView *)self _isDayAnimationRunning])
    {
      self->_interactionProgress = v7;
      [(NTKSiderealFaceView *)self _updateTimeScrubbingContent:v7];
    }
  }

  else
  {
    [(NTKSiderealDataSource *)self->_dataSource updateModelWithDate:updateCopy];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v7.receiver = self;
  v7.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  if (![(NTKSiderealFaceView *)self _isDayAnimationRunning]&& !self->_viewMode)
  {
    if (dateCopy)
    {
      [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:dateCopy];
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
  sunriseSunsetInfo = [(NTKSiderealData *)v23 sunriseSunsetInfo];
  sunriseTime = [(NTKSiderealData *)v23 sunriseTime];
  sunsetTime = [(NTKSiderealData *)v23 sunsetTime];
  referenceDate = [(NTKSiderealData *)v23 referenceDate];
  v7 = NTKEndOfDayForDate();

  [sunsetTime timeIntervalSinceDate:sunriseTime];
  v9 = v8;
  [v7 timeIntervalSinceDate:sunsetTime];
  v11 = v10;
  if (([(NTKSiderealData *)v23 sunsetFollowsSunrise]& 1) == 0)
  {
    self->_sunsetFilterEnabled = 0;
    goto LABEL_14;
  }

  v12 = +[NSCalendar currentCalendar];
  referenceDate2 = [(NTKSiderealData *)v23 referenceDate];
  v14 = [v12 components:160 fromDate:referenceDate2];

  [v14 setSecond:0];
  [v14 setHour:22];
  referenceDate3 = [(NTKSiderealData *)v23 referenceDate];
  v16 = [v12 nextDateAfterDate:referenceDate3 matchingComponents:v14 options:2];

  if (v9 < 14400.0)
  {
    goto LABEL_3;
  }

  if (v9 < 28800.0)
  {
    self->_sunsetFilterEnabled = 1;
    solarNoon = [sunriseSunsetInfo solarNoon];
LABEL_9:
    v18 = solarNoon;
    if (v11 >= 7200.0)
    {
      v19 = sunsetTime;
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
    solarNoon = [sunsetTime dateByAddingTimeInterval:-14400.0];
    goto LABEL_9;
  }

LABEL_3:
  self->_sunsetFilterEnabled = 0;
LABEL_13:

LABEL_14:
}

- (void)dataSourceDidUpdateSolarData:(id)data
{
  dataCopy = data;
  if (self->_currentData != dataCopy)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[NTKSiderealFaceView] dataSourceDidUpdateSolarData", v15, 2u);
    }

    objc_storeStrong(&self->_currentData, data);
    dialBackgroundView = self->_dialBackgroundView;
    sectors = [(NTKSiderealData *)self->_currentData sectors];
    [(NTKSiderealDialBackgroundView *)dialBackgroundView setSectors:sectors];

    v9 = +[NTKSiderealCache sharedCache];
    [v9 purgeCachedKey:NTKSiderealCacheWaypointViewKey];

    v10 = +[NTKSiderealCache sharedCache];
    [v10 purgeAPLCache];

    v11 = self->_dialBackgroundView;
    if (v11)
    {
      quad = [(NTKSiderealDialBackgroundView *)v11 quad];
      _waypointViewImageRef = [(NTKSiderealFaceView *)self _waypointViewImageRef];
      [quad updateWaypointImage:_waypointViewImageRef];
    }

    [(NTKSiderealFaceView *)self _updateSunsetFilter];
    quad2 = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
    [quad2 siderealDataChanged:dataCopy];
  }
}

- (void)_setSolarDayProgress:(double)progress
{
  currentSolarDayProgress = self->_currentSolarDayProgress;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_currentSolarDayProgress = progress;
    v6 = 0.0;
    if (self->_sunsetFilterEnabled && self->_useXR)
    {
      progressCopy = progress;
      sunsetFilterRampUpStartProgress = self->_sunsetFilterRampUpStartProgress;
      v9 = ((self->_sunsetFilterRampDownStartProgress - sunsetFilterRampUpStartProgress) + -0.083333) * 0.5;
      v10 = ((v9 + 0.083333) / 0.083333) - fabsf((((progressCopy + -0.083333) - sunsetFilterRampUpStartProgress) - v9) / 0.083333);
      if (v10 < 0.0)
      {
        v10 = 0.0;
      }

      v6 = fminf(v10, 1.0);
    }

    quad = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
    *&v12 = v6;
    [quad setSunsetFilter:v12];

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

- (void)_updateTimeViewOrbitWithSolarDayProgress:(double)progress
{
  device = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device, &v7);

  device2 = [(NTKSiderealFaceView *)self device];
  [device2 screenBounds];
  CLKRectGetCenter();

  CLKDegreesToRadians();
  NTKPointOnCircle();
  siderealTimeView = self->_siderealTimeView;

  [(NTKSiderealTimeView *)siderealTimeView setCenter:?];
}

- (void)_handleViewModeTapGesture:(id)gesture
{
  _isDayAnimationRunning = [(NTKSiderealFaceView *)self _isDayAnimationRunning];
  viewMode = self->_viewMode;
  if (!_isDayAnimationRunning || viewMode)
  {

    [(NTKSiderealFaceView *)self _setViewMode:viewMode != 1 animated:1];
  }
}

- (void)_prepareForSettingViewMode:(unint64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  viewMode = self->_viewMode;
  if (viewMode != 1)
  {
    if (!viewMode)
    {
      [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels willStartTransition];
      [(NTKSiderealFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_2CBE0];
      if (animatedCopy)
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
  if (animatedCopy)
  {
    [(NTKSiderealFaceView *)self enableCrownEventReception];
  }

  [(NTKSiderealTimeView *)self->_siderealTimeView setUseMonospacedDigitalNumbers:1];
  [(NTKSiderealTimeView *)self->_siderealTimeView setSecondsHidden:1 animated:1];
  [(NTKSiderealFaceView *)self _updateWaypointLabel];
  sunriseSunsetInfo = [(NTKSiderealData *)self->_currentData sunriseSunsetInfo];
  rise = [sunriseSunsetInfo rise];
  v11 = [sunriseSunsetInfo set];
  if (rise)
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
      v25 = *&rise;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "sunrise exists (%@) but sunset doesn't (nil), setting to end of day (%@)", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v13 = v11;
  if (rise)
  {
LABEL_18:
    [v13 timeIntervalSinceDate:rise];
    v14 = v16;
    goto LABEL_19;
  }

  v14 = 0.0;
LABEL_19:
  constantSun = [sunriseSunsetInfo constantSun];
  v18 = v14;
  v19 = v14 != 0.0 || constantSun != &dword_0 + 2;
  if (v14 == 0.0 && constantSun == &dword_0 + 2)
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
      v27 = rise;
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

- (void)_interpolateFromViewMode:(unint64_t)mode toViewMode:(unint64_t)viewMode progress:(double)progress
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

- (void)_cleanupAfterSettingViewMode:(unint64_t)mode previousViewMode:(unint64_t)viewMode
{
  self->_transitionState = 0;
  viewMode = self->_viewMode;
  if (viewMode == 1)
  {
    [(NTKSiderealAuxiliaryDialLabels *)self->_auxiliaryDialLabels didFinishTransition:mode];
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
    if (viewMode != 2)
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

  [(NTKSiderealFaceView *)self _refreshGlowPathState:mode];
}

- (void)_updateStatusBarVisibility
{
  delegate = [(NTKSiderealFaceView *)self delegate];
  [delegate faceViewWantsStatusBarHidden:self->_viewMode == 1 animated:1];
}

- (void)_refreshGlowPathState
{
  v2 = self->_transitionState - 1;
  viewMode = self->_viewMode;
  quad = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
  v7 = quad;
  v6 = v2 < 2 || viewMode == 1;
  [quad setShouldDrawGlowPath:v6];
}

- (void)_updateSolarOrbitGlowPath:(double)path
{
  [(NTKSiderealFaceView *)self _solarDayProgressForCurrentTime];
  v6 = v5 * 6.28318531;
  quad = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
  [quad setGlowViewStartAngle:v6 endAngle:path * 6.28318531];
}

- (void)_updateWaypointLabel
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sectors = [(NTKSiderealData *)self->_currentData sectors];
  v4 = [sectors countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(sectors);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        startingEvent = [v8 startingEvent];
        [startingEvent degree];
        NTKSiderealDegreesToSolarDayProgress();
        v11 = v10;

        endingEvent = [v8 endingEvent];
        [endingEvent degree];
        NTKSiderealDegreesToSolarDayProgress();
        v14 = v13;

        interactionProgress = self->_interactionProgress;
        if (interactionProgress >= v11 && interactionProgress <= v14)
        {
          auxiliaryDialLabels = self->_auxiliaryDialLabels;
          localizedName = [v8 localizedName];
          [(NTKSiderealAuxiliaryDialLabels *)auxiliaryDialLabels setTopText:localizedName];

          goto LABEL_13;
        }
      }

      v5 = [sectors countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

LABEL_13:
}

- (void)_updateTimeLabelsWithReferenceDate:(id)date overrideDate:(id)overrideDate
{
  dateCopy = date;
  overrideDateCopy = overrideDate;
  v7 = overrideDateCopy;
  if (self->_viewMode == 1 || self->_transitionState == 1)
  {
    [overrideDateCopy timeIntervalSinceDate:dateCopy];
    v9 = sub_1113C(1, v8);
    text = [(UILabel *)self->_offsetLabel text];
    v11 = [text isEqualToString:v9];

    if ((v11 & 1) == 0)
    {
      [(UILabel *)self->_offsetLabel setText:v9];
    }

    v12 = [(NSDateFormatter *)self->_interactiveModeDateFormatter stringFromDate:dateCopy];
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
    device = [(NTKSiderealFaceView *)self device];
    v13 = [(NTKSiderealAuxiliaryDialLabels *)v3 initWithFrame:device device:v5, v7, v9, v11];
    auxiliaryDialLabels = self->_auxiliaryDialLabels;
    self->_auxiliaryDialLabels = v13;

    contentView = [(NTKSiderealFaceView *)self contentView];
    [contentView addSubview:self->_auxiliaryDialLabels];
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
    device = [(NTKSiderealFaceView *)self device];
    sub_14ADC(device, v25);
    v4 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v26 design:UIFontWeightMedium];
    cLKFontWithMonospacedNumbers = [v4 CLKFontWithMonospacedNumbers];

    NTKSingleLineHeight();
    v6 = v5;
    device2 = [(NTKSiderealFaceView *)self device];
    sub_14ADC(device2, v23);
    v8 = v24 - v6;
    [(NTKSiderealTimeView *)self->_siderealTimeView bounds];
    v10 = v9;

    v11 = [[UILabel alloc] initWithFrame:{0.0, v8, v10, v6}];
    offsetLabel = self->_offsetLabel;
    self->_offsetLabel = v11;

    [(UILabel *)self->_offsetLabel setFont:cLKFontWithMonospacedNumbers];
    v13 = self->_offsetLabel;
    v14 = [UIColor colorWithRed:1.0 green:0.941176471 blue:0.501960784 alpha:1.0];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)self->_offsetLabel setTextAlignment:1];
    layer = [(UILabel *)self->_offsetLabel layer];
    [layer setShadowRadius:5.0];

    layer2 = [(UILabel *)self->_offsetLabel layer];
    LODWORD(v17) = 1041865114;
    [layer2 setShadowOpacity:v17];

    layer3 = [(UILabel *)self->_offsetLabel layer];
    [layer3 setShadowOffset:{0.0, 0.0}];

    v19 = self->_offsetLabel;
    v20 = [UIColor colorWithWhite:0.0 alpha:0.15];
    [(UILabel *)v19 setShadowColor:v20];

    dialBackgroundView = [(NTKSiderealTimeView *)self->_siderealTimeView dialBackgroundView];
    [dialBackgroundView addSubview:self->_offsetLabel];
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
  timeView = [(NTKSiderealFaceView *)self timeView];
  [timeView setEditing:1];

  [(NTKSiderealFaceView *)self setupDarkeningViewIfNeeded];
  [(NTKSiderealFaceView *)self _updateFramerate];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKSiderealFaceView;
  [(NTKSiderealFaceView *)&v4 _cleanupAfterEditing];
  timeView = [(NTKSiderealFaceView *)self timeView];
  [timeView setEditing:0];

  [(NTKSiderealFaceView *)self tearDownDarkeningView];
  [(NTKSiderealFaceView *)self _updateFramerate];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    siderealTimeView = self->_siderealTimeView;
    style = [option style];

    [(NTKSiderealTimeView *)siderealTimeView setStyle:style];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    siderealTimeView = self->_siderealTimeView;
    toOptionCopy = toOption;
    style = [option style];
    style2 = [toOptionCopy style];

    [(NTKSiderealTimeView *)siderealTimeView applyTransitionFraction:style fromStyle:style2 toStyle:fraction];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [(NTKSiderealFaceView *)self device:mode];
  sub_14ADC(v6, &v9);
  NTKScaleForBreathingFraction();
  v8 = v7;

  self->_breathScaleModifier = v8;

  [(NTKSiderealFaceView *)self _applyScaleToTimeView];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
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
  newTimeViewPathForDarkeningView = [(NTKSiderealFaceView *)self newTimeViewPathForDarkeningView];
  [(CAShapeLayer *)self->_dialDarkeningLayer setPath:newTimeViewPathForDarkeningView];
  CGPathRelease(newTimeViewPathForDarkeningView);
  [(NTKSiderealTimeView *)self->_siderealTimeView frame];
  v6 = v5;
  [(CALayer *)self->_timeViewDarkeningLayer setFrame:?];
  [(CALayer *)self->_timeViewDarkeningLayer setCornerRadius:v6 * 0.5];
  *&v6 = self->_rubberBandScaleModifier;
  quad = [(NTKSiderealDialBackgroundView *)self->_dialBackgroundView quad];
  LODWORD(v8) = LODWORD(v6);
  [quad setBlurScale:v8];

  +[CATransaction commit];
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKSiderealFaceView *)self _applyScaleToTimeView];
  dialDarkeningLayer = self->_dialDarkeningLayer;
  [(NTKSiderealFaceView *)self _darkeningViewAlphaForEditMode:mode];
  *&v6 = v6;
  [(CAShapeLayer *)dialDarkeningLayer setOpacity:v6];
  timeViewDarkeningLayer = self->_timeViewDarkeningLayer;
  [(NTKSiderealFaceView *)self _timeDarkeningViewAlphaForEditMode:mode];
  *&v8 = v8;
  [(CALayer *)timeViewDarkeningLayer setOpacity:v8];
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  [(NTKSiderealFaceView *)self _complicationAlphaForEditMode:mode];

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory setAlpha:self faceView:?];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKSiderealFaceView *)self _darkeningViewAlphaForEditMode:?];
  [(NTKSiderealFaceView *)self _darkeningViewAlphaForEditMode:editMode];
  dialDarkeningLayer = self->_dialDarkeningLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v9 = v9;
  [(CAShapeLayer *)dialDarkeningLayer setOpacity:v9];
  [(NTKSiderealFaceView *)self _timeDarkeningViewAlphaForEditMode:mode];
  [(NTKSiderealFaceView *)self _timeDarkeningViewAlphaForEditMode:editMode];
  timeViewDarkeningLayer = self->_timeViewDarkeningLayer;
  CLKInterpolateBetweenFloatsClipped();
  *&v11 = v11;
  [(CALayer *)timeViewDarkeningLayer setOpacity:v11];
  [(NTKSiderealFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKSiderealFaceView *)self _complicationAlphaForEditMode:editMode];
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  CLKInterpolateBetweenFloatsClipped();

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory setAlpha:self faceView:?];
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 15)
  {
    return 1.0;
  }

  return result;
}

- (double)_darkeningViewAlphaForEditMode:(int64_t)mode
{
  result = 0.7;
  if (!mode)
  {
    return 0.0;
  }

  return result;
}

- (double)_timeDarkeningViewAlphaForEditMode:(int64_t)mode
{
  result = 0.7;
  if (mode != 1)
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

    newTimeViewPathForDarkeningView = [(NTKSiderealFaceView *)self newTimeViewPathForDarkeningView];
    v7 = objc_alloc_init(CAShapeLayer);
    dialDarkeningLayer = self->_dialDarkeningLayer;
    self->_dialDarkeningLayer = v7;

    [(CAShapeLayer *)self->_dialDarkeningLayer setPath:newTimeViewPathForDarkeningView];
    [(CAShapeLayer *)self->_dialDarkeningLayer setFillRule:kCAFillRuleEvenOdd];
    v9 = +[UIColor blackColor];
    -[CAShapeLayer setFillColor:](self->_dialDarkeningLayer, "setFillColor:", [v9 CGColor]);

    v10 = self->_dialDarkeningLayer;
    v32 = @"opacity";
    v11 = +[NSNull null];
    v33 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    [(CAShapeLayer *)v10 setActions:v12];

    layer = [(UIView *)self->_darkeningContainerView layer];
    [layer addSublayer:self->_dialDarkeningLayer];

    CGPathRelease(newTimeViewPathForDarkeningView);
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

    layer2 = [(UIView *)self->_darkeningContainerView layer];
    [layer2 addSublayer:self->_timeViewDarkeningLayer];

    [(NTKSiderealFaceView *)self insertSubview:self->_darkeningContainerView aboveSubview:self->_dialBackgroundView];
  }
}

- (void)tearDownDarkeningView
{
  [(UIView *)self->_darkeningContainerView removeFromSuperview];
  darkeningContainerView = self->_darkeningContainerView;
  self->_darkeningContainerView = 0;
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineViewForComplicationSlot:slotCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKSiderealFaceView;
    v7 = [(NTKSiderealFaceView *)&v10 _keylineViewForComplicationSlot:slotCopy];
  }

  v8 = v7;

  return v8;
}

- (id)_keylineViewForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    [(NTKSiderealFaceView *)self _faceEditingScaleForEditMode:15 slot:slot];
    [(NTKSiderealTimeView *)self->_siderealTimeView bounds];
    v5 = NTKKeylineViewWithCircle();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSiderealFaceView;
    v5 = [(NTKSiderealFaceView *)&v7 _keylineViewForCustomEditMode:mode slot:slot];
  }

  return v5;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKSiderealFaceView;
  return [(NTKSiderealFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:mode slot:slot];
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    [(NTKSiderealFaceView *)self _timeViewKeylineFrameForEditing:15];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKSiderealFaceView;
    [(NTKSiderealFaceView *)&v8 _relativeKeylineFrameForCustomEditMode:mode slot:slot];
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
  device = [(NTKSiderealFaceView *)self device];
  v3 = sub_12908(v14, device);
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
  device = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device, v5);
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5[0]];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slot faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
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

- (id)_dayGnomonImageFromSolarContainerView:(id)view
{
  viewCopy = view;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheDayGnomonImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_134B4;
  v10[3] = &unk_2CCA0;
  v11 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_dayDiskBloomImageFromSolarContainerView:(id)view
{
  viewCopy = view;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheDayDiskBloomImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1362C;
  v10[3] = &unk_2CCA0;
  v11 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_dayDiscImageFromSolarContainerView:(id)view
{
  viewCopy = view;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheDayDiscImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_137A4;
  v10[3] = &unk_2CCA0;
  v11 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_nightGnomonImageFromSolarContainerView:(id)view
{
  viewCopy = view;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheNightGnomonImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1391C;
  v10[3] = &unk_2CCA0;
  v11 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_nightDiscImageFromSolarContainerView:(id)view
{
  viewCopy = view;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheNightDiscImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13A94;
  v10[3] = &unk_2CCA0;
  v11 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (id)_nightRingImageFromSolarContainerView:(id)view
{
  viewCopy = view;
  v5 = [NTKSiderealCachedMTLTexture alloc];
  v6 = NTKSiderealCacheNightRingImageViewKey;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13C0C;
  v10[3] = &unk_2CCA0;
  v11 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  v8 = [(NTKSiderealCachedMTLTexture *)v5 initWithCachedImageKey:v6 isAlphaOnly:1 imageGenerationBlock:v10];

  return v8;
}

- (CGImage)newImageRefFromSolarContainerView:(id)view withHeight:(double)height
{
  viewCopy = view;
  [viewCopy bounds];
  v8 = v7;
  v10 = v9;
  device = [(NTKSiderealFaceView *)self device];
  [device screenScale];
  v13 = v12;
  v21.width = v8;
  v21.height = v10;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v13);

  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [viewCopy layer];

  [layer renderInContext:CurrentContext];
  Image = CGBitmapContextCreateImage(CurrentContext);
  UIGraphicsEndImageContext();
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  v22.origin.x = vcvtd_n_f64_u64(Width, 1uLL);
  v22.origin.y = (Height + height * -2.0) * 0.5;
  v22.size.height = height + height;
  v22.size.width = v22.origin.x;
  v19 = CGImageCreateWithImageInRect(Image, v22);
  CGImageRelease(Image);
  return v19;
}

- (CGImage)newImageRefFromView:(id)view
{
  viewCopy = view;
  device = [(NTKSiderealFaceView *)self device];
  [device screenBounds];
  v7 = v6;
  v9 = v8;
  device2 = [(NTKSiderealFaceView *)self device];
  [device2 screenScale];
  v12 = v11;
  v26.width = v7;
  v26.height = v9;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  layer = [viewCopy layer];

  [layer renderInContext:CurrentContext];
  Image = CGBitmapContextCreateImage(CurrentContext);
  UIGraphicsEndImageContext();
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  device3 = [(NTKSiderealFaceView *)self device];
  sub_14ADC(device3, v25);
  v19 = v25[0];
  device4 = [(NTKSiderealFaceView *)self device];
  [device4 screenScale];
  v22 = v19 * v21;

  v27.origin.x = (Width - v22) * 0.5;
  v27.origin.y = (Height - v22) * 0.5;
  v27.size.width = v22;
  v27.size.height = v22;
  v23 = CGImageCreateWithImageInRect(Image, v27);
  CGImageRelease(Image);
  return v23;
}

- (id)closestWaypointForSolarDayProgress:(double)progress range:(double)range
{
  v6 = progress * 360.0;
  v7 = fmodf(v6, 360.0);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  waypoints = [(NTKSiderealData *)self->_currentData waypoints];
  v9 = [waypoints countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(waypoints);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        [v16 degree];
        v18 = vabdd_f64(v17, v12);
        if (v18 <= range && v18 < v14)
        {
          v20 = v16;

          v14 = v18;
          v11 = v20;
        }
      }

      v10 = [waypoints countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)waypointBetweenPreviousOffset:(double)offset currentOffset:(double)currentOffset
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  waypoints = [(NTKSiderealData *)self->_currentData waypoints];
  v7 = [waypoints countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(waypoints);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        [v11 degree];
        NTKSiderealDegreesToSolarDayProgress();
        if ((v12 <= offset || v12 >= currentOffset) && (v12 <= currentOffset || v12 >= offset))
        {
          continue;
        }

        v15 = v11;
        goto LABEL_19;
      }

      v8 = [waypoints countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  _faceDisplayTime = [(NTKSiderealFaceView *)self _faceDisplayTime];
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:_faceDisplayTime];
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

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  _outerComplicationColors = [(NTKSiderealFaceView *)self _outerComplicationColors];
  _innerComplicationColors = [(NTKSiderealFaceView *)self _innerComplicationColors];
  v8 = CLKUIMonochromeFiltersForStyleWithTintedBackground();

  return v8;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  _outerComplicationColors = [(NTKSiderealFaceView *)self _outerComplicationColors];
  _innerComplicationColors = [(NTKSiderealFaceView *)self _innerComplicationColors];
  if (style <= 2)
  {
    if (!style)
    {
LABEL_10:
      v10 = NTKFlatMonochromeFilter();
      goto LABEL_11;
    }

    if (style != 1)
    {
      if (style != 2)
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

  if (style == 3 || style == 4 || style == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v5;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  _outerComplicationColors = [(NTKSiderealFaceView *)self _outerComplicationColors];
  _innerComplicationColors = [(NTKSiderealFaceView *)self _innerComplicationColors];
  if (style <= 2)
  {
    if (!style)
    {
LABEL_10:
      v9 = NTKFlatMonochromeFilterOpaque();
      goto LABEL_11;
    }

    if (style != 1)
    {
      if (style != 2)
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

  if (style == 3 || style == 4 || style == 5)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v4;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  if (accented)
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

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  v9 = optionCopy;
  if (mode == 15)
  {
    style = [optionCopy style];
    v11 = @"Digital";
    if (style != &dword_0 + 1)
    {
      v11 = 0;
    }

    if (!style)
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
    v13 = [(NTKSiderealFaceView *)&v15 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v13;
}

- (void)performScrollTestNamed:(id)named completion:(id)completion
{
  completionCopy = completion;
  [(NTKSiderealFaceView *)self _setSolarDayProgress:0.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_14970;
  v6[3] = &unk_2CC08;
  v6[4] = self;
  [(NTKSiderealFaceView *)self _animateSolarDayFromProgress:v6 toProgress:0.0 minDuration:1.0 completion:1.0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

@end