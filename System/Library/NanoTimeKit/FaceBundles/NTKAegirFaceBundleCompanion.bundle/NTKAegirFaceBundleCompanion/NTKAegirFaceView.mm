@interface NTKAegirFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_styleOptionIsRandom;
- (BOOL)_vistaOptionIsRandom;
- (BOOL)_wheelChangedWithEvent:(id)event;
- (CGRect)_topComplicationFrame;
- (NTKAegirFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)topComplicationFontSize;
- (id)_centerTimeLabelStyleForViewMode:(int64_t)mode;
- (id)_cornerTimeLabelStyleForViewMode:(int64_t)mode;
- (id)_createDigitalTimeLabel;
- (id)_createVistaView;
- (id)_date;
- (id)_homeScreenDateLabelFont;
- (id)_homeScreenTimeViewConfiguration;
- (id)_numeralSwatchForNumeralOption:(id)option typefaceOption:(id)typefaceOption vistaOption:(id)vistaOption styleOption:(id)styleOption;
- (id)_renderNumeralSwatchForNumeralOption:(id)option typefaceOption:(id)typefaceOption vistaOption:(id)vistaOption styleOption:(id)styleOption;
- (id)_renderTypefaceSwatchForTypefaceOption:(id)option vistaOption:(id)vistaOption styleOption:(id)styleOption;
- (id)_renderVistaSwatchForVistaOption:(id)option styleOption:(id)styleOption;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_typefaceSwatchForTypefaceOption:(id)option vistaOption:(id)vistaOption styleOption:(id)styleOption;
- (id)_vistaSwatchForVistaOption:(id)option styleOption:(id)styleOption;
- (id)topComplicationFont;
- (unint64_t)shuffledStyleForStyle:(unint64_t)style shuffle:(BOOL)shuffle;
- (unint64_t)shuffledVistaForVista:(unint64_t)vista shuffle:(BOOL)shuffle;
- (void)_animateTransitionToViewMode:(int64_t)mode completion:(id)completion;
- (void)_applyDataMode;
- (void)_applyDataModeAnimated:(BOOL)animated;
- (void)_applyFromElementOrder:(unint64_t)order toElementOrder:(unint64_t)elementOrder fraction:(double)fraction;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyViewMode:(int64_t)mode;
- (void)_applyVista:(unint64_t)vista;
- (void)_asyncUpdateLocale;
- (void)_asyncUpdateTime;
- (void)_becameActiveFace;
- (void)_becameInactiveFace;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterZoom;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_disableCrown;
- (void)_enableCrownForAegirVista:(unint64_t)vista;
- (void)_interpolateFromPose:(const NTKAegirFaceViewAnimationPose *)pose toPose:(const NTKAegirFaceViewAnimationPose *)toPose progress:(float)progress;
- (void)_invalidateTimeLabelStyles;
- (void)_layoutPhaseLabel;
- (void)_layoutSpheroidLabel:(int)label;
- (void)_loadSnapshotContentViews;
- (void)_physicalButtonDelayedBlockFired;
- (void)_prepareForEditing;
- (void)_prepareToZoom;
- (void)_setElementOrder:(unint64_t)order;
- (void)_setFaceViewModeActive;
- (void)_setFaceViewModeDeactive;
- (void)_setFaceViewModeInteractive;
- (void)_setFaceViewModeSupplemental;
- (void)_setNumerals:(unint64_t)numerals;
- (void)_setTypeface:(unint64_t)typeface;
- (void)_setUpViews;
- (void)_setViewMode:(int64_t)mode;
- (void)_shuffleStyleIfNecessary;
- (void)_shuffleVistaIfNecessary;
- (void)_unloadSnapshotContentViews;
- (void)_wheelDelayedBlockFired;
- (void)astronomyVistaControllerWillEnterInteractiveMode:(id)mode;
- (void)dealloc;
- (void)exitInteractiveModeAnimated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKAegirFaceView

- (NTKAegirFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = NTKAegirFaceView;
  v9 = [(NTKAegirFaceView *)&v17 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKAegirFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    v18[0] = NTKComplicationSlotBottom;
    v18[1] = NTKComplicationSlotTopRight;
    v11 = [NSArray arrayWithObjects:v18 count:2];
    [(NTKAegirFaceViewComplicationFactory *)v10 setSupportedComplicationSlots:v11];

    [(NTKAegirFaceViewComplicationFactory *)v10 setUsesLegibility:1 faceView:v9];
    v12 = +[UIColor whiteColor];
    [(NTKAegirFaceViewComplicationFactory *)v10 setForegroundColor:v12 faceView:v9];

    [(NTKAegirFaceViewComplicationFactory *)v10 setAlpha:v9 faceView:1.0];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v10;
    v14 = v10;

    v9->_currentShuffledStyle = 3;
    v9->_homeScreenAlphaOverride = 1.0;
    v15 = +[CLKSensitiveUIMonitor sharedMonitor];

    [v15 addSensitiveUIObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[CLKSensitiveUIMonitor sharedMonitor];
  [v3 removeSensitiveUIObserver:self];

  v4.receiver = self;
  v4.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v4 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKAegirFaceView *)self _setUpViews];
}

- (void)_setUpViews
{
  contentView = [(NTKAegirFaceView *)self contentView];
  [(NTKAegirFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NTKAegirFaceView *)self device];
  self->_viewMode = 1;
  *(self + 328) &= ~1u;
  *(self + 328) &= ~2u;
  v13 = objc_opt_new();
  v14 = self->_scrubDateFormatter[0];
  self->_scrubDateFormatter[0] = v13;

  v15 = objc_opt_new();
  v16 = self->_scrubDateFormatter[1];
  self->_scrubDateFormatter[1] = v15;

  v17 = objc_opt_new();
  v18 = self->_scrubDateFormatter[2];
  self->_scrubDateFormatter[2] = v17;

  objc_storeStrong(&self->_scrubDateFormatter[4], self->_scrubDateFormatter[2]);
  objc_storeStrong(&self->_scrubDateFormatter[5], self->_scrubDateFormatter[2]);
  objc_storeStrong(&self->_scrubDateFormatter[6], self->_scrubDateFormatter[0]);
  objc_storeStrong(&self->_scrubDateFormatter[7], self->_scrubDateFormatter[0]);
  objc_storeStrong(&self->_scrubDateFormatter[3], self->_scrubDateFormatter[0]);
  objc_storeStrong(&self->_scrubDateFormatter[8], self->_scrubDateFormatter[0]);
  objc_storeStrong(&self->_scrubDateFormatter[9], self->_scrubDateFormatter[0]);
  sub_22BC(v19, device);
  _createVistaView = [(NTKAegirFaceView *)self _createVistaView];
  [contentView addSubview:_createVistaView];
  [_createVistaView setObserver:self];
  v21 = +[NTKLocationManager sharedLocationManager];
  currentLocation = [v21 currentLocation];

  if (currentLocation)
  {
    [v21 currentLocation];
  }

  else
  {
    [v21 anyLocation];
  }
  v23 = ;
  [v23 coordinate];

  astronomyController = self->_astronomyController;
  currentLocation2 = [v21 currentLocation];
  v87 = v21;
  anyLocation = [v21 anyLocation];
  [(NUNIAstronomyVistaController *)astronomyController updateLocation:currentLocation2 fallbackLocation:anyLocation];

  _createDigitalTimeLabel = [(NTKAegirFaceView *)self _createDigitalTimeLabel];
  centerTimeLabelFront = self->_centerTimeLabelFront;
  self->_centerTimeLabelFront = _createDigitalTimeLabel;

  _createDigitalTimeLabel2 = [(NTKAegirFaceView *)self _createDigitalTimeLabel];
  centerTimeLabelBack = self->_centerTimeLabelBack;
  self->_centerTimeLabelBack = _createDigitalTimeLabel2;

  _createDigitalTimeLabel3 = [(NTKAegirFaceView *)self _createDigitalTimeLabel];
  cornerTimeLabel = self->_cornerTimeLabel;
  self->_cornerTimeLabel = _createDigitalTimeLabel3;

  quadViews = [_createVistaView quadViews];
  firstObject = [quadViews firstObject];

  [_createVistaView insertSubview:self->_centerTimeLabelFront aboveSubview:firstObject];
  v90 = _createVistaView;
  v86 = firstObject;
  [_createVistaView insertSubview:self->_centerTimeLabelBack belowSubview:firstObject];
  v88 = device;
  uIFontWeightSemibold = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:device weight:v5 forDevice:v7, v9, v11, UIFontWeightSemibold];
  designatorFont = [uIFontWeightSemibold designatorFont];
  [designatorFont pointSize];
  v38 = v37;

  v39 = [CLKFont systemFontOfSize:v38 weight:UIFontWeightSemibold];
  cLKFontWithMonospacedNumbers = [v39 CLKFontWithMonospacedNumbers];
  cLKFontWithAlternativePunctuation = [cLKFontWithMonospacedNumbers CLKFontWithAlternativePunctuation];

  cLKFontWithMonospacedNumbers2 = [cLKFontWithAlternativePunctuation CLKFontWithMonospacedNumbers];
  cLKFontWithAlternativePunctuation2 = [cLKFontWithMonospacedNumbers2 CLKFontWithAlternativePunctuation];

  selfCopy = self;
  v45 = [CLKUIColoringLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v49 = [v45 initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  scrubLabel = self->_scrubLabel;
  self->_scrubLabel = v49;

  [(CLKUIColoringLabel *)self->_scrubLabel setFont:cLKFontWithAlternativePunctuation2];
  [(CLKUIColoringLabel *)self->_scrubLabel setUsesLegibility:1];
  v51 = self->_scrubLabel;
  v52 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)v51 setTextColor:v52];

  v53 = self->_scrubLabel;
  v54 = +[UIColor blackColor];
  [(CLKUIColoringLabel *)v53 setShadowColor:v54];

  [contentView addSubview:self->_scrubLabel];
  v55 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  phaseLabel = self->_phaseLabel;
  self->_phaseLabel = v55;

  [(CLKUIColoringLabel *)self->_phaseLabel setNumberOfLines:0];
  [(CLKUIColoringLabel *)self->_phaseLabel setUsesLegibility:1];
  [(CLKUIColoringLabel *)self->_phaseLabel setFont:cLKFontWithAlternativePunctuation2];
  v57 = self->_phaseLabel;
  v58 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)v57 setTextColor:v58];

  v59 = self->_phaseLabel;
  v60 = +[UIColor blackColor];
  [(CLKUIColoringLabel *)v59 setShadowColor:v60];

  [contentView addSubview:self->_phaseLabel];
  v61 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  travelTimeLabel = self->_travelTimeLabel;
  self->_travelTimeLabel = v61;

  [(CLKUIColoringLabel *)self->_travelTimeLabel setTextAlignment:0];
  [(CLKUIColoringLabel *)self->_travelTimeLabel setFont:cLKFontWithAlternativePunctuation2];
  [(CLKUIColoringLabel *)self->_travelTimeLabel setUsesLegibility:1];
  v63 = self->_travelTimeLabel;
  v64 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)v63 setTextColor:v64];

  v65 = self->_travelTimeLabel;
  v66 = +[UIColor blackColor];
  [(CLKUIColoringLabel *)v65 setShadowColor:v66];

  [contentView addSubview:self->_travelTimeLabel];
  [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setFont:cLKFontWithAlternativePunctuation2];
  [contentView addSubview:self->_cornerTimeLabel];
  v67 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v68 = [CLKFont systemFontOfSize:*&dword_1A230];
  [v67 setFont:v68];

  v69 = +[UIColor whiteColor];
  [v67 setTextColor:v69];

  v89 = selfCopy;
  objc_initWeak(location, selfCopy);
  for (i = 0; i != 8; ++i)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_31FC;
    block[3] = &unk_145B0;
    objc_copyWeak(&v94, location);
    v95 = i;
    v71 = v67;
    v92 = v71;
    v72 = contentView;
    v93 = v72;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v94);
  }

  [(NTKAegirFaceView *)selfCopy _invalidateTimeLabelStyles];
  [(NTKAegirFaceView *)selfCopy _applyVista:[(NUNIAstronomyVistaController *)selfCopy->_astronomyController vista]];
  [(NTKAegirFaceView *)selfCopy _applyViewMode:1];
  [(NTKAegirFaceView *)selfCopy _applyDataModeAnimated:0];
  [(NTKAegirFaceView *)selfCopy _updateLocaleAnimated:0];
  [v90 updateSunLocationAnimated:0];
  [(NTKAegirFaceView *)selfCopy setNeedsLayout];
  v73 = +[NSNotificationCenter defaultCenter];
  [v73 addObserver:v89 selector:"_asyncUpdateTime" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v73 addObserver:v89 selector:"_asyncUpdateTime" name:NSCalendarDayChangedNotification object:0];
  [v73 addObserver:v89 selector:"_asyncUpdateLocale" name:NSCurrentLocaleDidChangeNotification object:0];
  v74 = [NTKRoundedCornerOverlayView alloc];
  [(NTKAegirFaceView *)v89 bounds];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  device2 = [(NTKAegirFaceView *)v89 device];
  v84 = [v74 initWithFrame:device2 forDeviceCornerRadius:{v76, v78, v80, v82}];
  cornerOverlayView = v89->_cornerOverlayView;
  v89->_cornerOverlayView = v84;

  [(NTKAegirFaceView *)v89 addSubview:v89->_cornerOverlayView];
  objc_destroyWeak(location);
}

- (void)_unloadSnapshotContentViews
{
  v24.receiver = self;
  v24.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v24 _unloadSnapshotContentViews];
  [(NUNIAstronomyVistaController *)self->_astronomyController stopClockUpdates];
  [(UIImageView *)self->_randomVistaSnapshot removeFromSuperview];
  randomVistaSnapshot = self->_randomVistaSnapshot;
  self->_randomVistaSnapshot = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v4 removeObserver:self name:NSCalendarDayChangedNotification object:0];
  [v4 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
  [(NTKDelayedBlock *)self->_wheelDelayedBlock cancel];
  wheelDelayedBlock = self->_wheelDelayedBlock;
  self->_wheelDelayedBlock = 0;

  [(NTKDelayedBlock *)self->_physicalButtonDelayedBlock cancel];
  physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
  self->_physicalButtonDelayedBlock = 0;

  v7 = 0;
  *(self + 328) &= ~2u;
  scrubDateFormatter = self->_scrubDateFormatter;
  do
  {
    v9 = scrubDateFormatter[v7];
    scrubDateFormatter[v7] = 0;

    ++v7;
  }

  while (v7 != 10);
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront removeFromSuperview];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack removeFromSuperview];
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [vistaView removeFromSuperview];

  [(CLKUIColoringLabel *)self->_scrubLabel removeFromSuperview];
  [(CLKUIColoringLabel *)self->_phaseLabel removeFromSuperview];
  [(CLKUIColoringLabel *)self->_travelTimeLabel removeFromSuperview];
  [(NTKDigitalTimeLabel *)self->_cornerTimeLabel removeFromSuperview];
  [(UIView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;

  centerTimeLabelFront = self->_centerTimeLabelFront;
  self->_centerTimeLabelFront = 0;

  centerTimeLabelBack = self->_centerTimeLabelBack;
  self->_centerTimeLabelBack = 0;

  astronomyController = self->_astronomyController;
  self->_astronomyController = 0;

  scrubLabel = self->_scrubLabel;
  self->_scrubLabel = 0;

  phaseLabel = self->_phaseLabel;
  self->_phaseLabel = 0;

  travelTimeLabel = self->_travelTimeLabel;
  self->_travelTimeLabel = 0;

  cornerTimeLabel = self->_cornerTimeLabel;
  self->_cornerTimeLabel = 0;

  crownDate = self->_crownDate;
  self->_crownDate = 0;

  v20 = 0;
  spheroidLabels = self->_spheroidLabels;
  do
  {
    v22 = spheroidLabels[v20];
    [(UIImageView *)v22 removeFromSuperview];
    v23 = spheroidLabels[v20];
    spheroidLabels[v20] = 0;

    ++v20;
  }

  while (v20 != 8);
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  overrideDate = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];

  if (overrideDate != dateCopy)
  {
    [(NUNIAstronomyVistaController *)self->_astronomyController setOverrideDate:dateCopy animated:duration > 0.0];
    [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setOverrideDate:dateCopy duration:0.0];
    [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setOverrideDate:dateCopy duration:0.0];
    [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setOverrideDate:dateCopy duration:0.0];
  }
}

- (void)setTimeOffset:(double)offset
{
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setTimeOffset:?];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setTimeOffset:offset];
  cornerTimeLabel = self->_cornerTimeLabel;

  [(NTKDigitalTimeLabel *)cornerTimeLabel setTimeOffset:offset];
}

- (void)_prepareForEditing
{
  v9.receiver = self;
  v9.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v9 _prepareForEditing];
  [(NTKAegirFaceView *)self _applyDataModeAnimated:0];
  [(NTKAegirFaceViewComplicationFactory *)self->_complicationFactory prepareForEditingForFaceView:self];
  [(NUNIAstronomyVistaController *)self->_astronomyController prepareForTransitions];
  [(NUNIAstronomyVistaController *)self->_astronomyController setVistaTransitionStyle:1];
  v3 = [UIImageView alloc];
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [vistaView bounds];
  v5 = [v3 initWithFrame:?];
  randomVistaSnapshot = self->_randomVistaSnapshot;
  self->_randomVistaSnapshot = v5;

  _randomVistaImage = [(NTKAegirFaceView *)self _randomVistaImage];
  [(UIImageView *)self->_randomVistaSnapshot setImage:_randomVistaImage];
  [(UIImageView *)self->_randomVistaSnapshot setUserInteractionEnabled:0];
  [(UIImageView *)self->_randomVistaSnapshot setAlpha:0.0];
  vistaView2 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [vistaView2 addSubview:self->_randomVistaSnapshot];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v4 _cleanupAfterEditing];
  [(NUNIAstronomyVistaController *)self->_astronomyController cleanUpAfterTransitions];
  [(NTKAegirFaceView *)self _applyVista:[(NUNIAstronomyVistaController *)self->_astronomyController vista]];
  [(NTKAegirFaceView *)self _applyDataModeAnimated:0];
  [(NTKAegirFaceViewComplicationFactory *)self->_complicationFactory cleanupAfterEditingForFaceView:self];
  [(UIImageView *)self->_randomVistaSnapshot removeFromSuperview];
  randomVistaSnapshot = self->_randomVistaSnapshot;
  self->_randomVistaSnapshot = 0;
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  [(NUNIAstronomyVistaController *)self->_astronomyController cleanUpAfterTransitions:option];
  astronomyController = self->_astronomyController;

  [(NUNIAstronomyVistaController *)astronomyController prepareForTransitions];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  CLKInterpolateBetweenFloatsClipped();
  v7 = fmin(v6, self->_homeScreenAlphaOverride);
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [vistaView setAlpha:v7];

  self->_elementOrder;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setAlpha:?];
  self->_elementOrder;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setAlpha:?];
  [(NTKAegirFaceView *)self _vistaOptionIsRandom];
  CLKInterpolateBetweenFloatsClipped();
  randomVistaSnapshot = self->_randomVistaSnapshot;

  [(UIImageView *)randomVistaSnapshot setAlpha:?];
}

- (void)_configureForEditMode:(int64_t)mode
{
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  v6 = vistaView;
  v7 = NTKEditModeBackgroundContentAlpha;
  if (mode != 1)
  {
    v7 = 1.0;
  }

  [vistaView setAlpha:v7];

  v8 = 0.0;
  v9 = 0.0;
  if (!self->_elementOrder)
  {
    v10 = mode == 13 || mode == 0;
    v11 = v10 || mode == 19;
    v9 = NTKEditModeDimmedAlpha;
    if (v11)
    {
      v9 = 1.0;
    }
  }

  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setAlpha:fmin(v9, self->_homeScreenAlphaOverride)];
  centerTimeLabelBack = self->_centerTimeLabelBack;
  if (self->_elementOrder == 1)
  {
    if (mode == 13 || mode == 0 || mode == 19)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = NTKEditModeDimmedAlpha;
    }
  }

  v15 = fmin(v8, self->_homeScreenAlphaOverride);

  [(NTKDigitalTimeLabel *)centerTimeLabelBack setAlpha:v15];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode > 14)
  {
    if (mode == 15)
    {
      v25 = -[NTKAegirFaceView shuffledStyleForStyle:shuffle:](self, "shuffledStyleForStyle:shuffle:", [optionCopy style], 0);
      v26 = -[NTKAegirFaceView shuffledStyleForStyle:shuffle:](self, "shuffledStyleForStyle:shuffle:", [toOptionCopy style], 0);
      [(NUNIAstronomyVistaController *)self->_astronomyController applyTransitionFraction:v25 fromStyle:v26 toStyle:fraction];
      if (((v25 & 0xFFFFFFFFFFFFFFFELL) == 2) != ((v26 & 0xFFFFFFFFFFFFFFFELL) == 2))
      {
        [NTKAegirFaceView _applyFromElementOrder:"_applyFromElementOrder:toElementOrder:fraction:" toElementOrder:fraction fraction:?];
      }

      else
      {
        [(NTKAegirFaceView *)self _setElementOrder:?];
      }

      goto LABEL_34;
    }

    if (mode != 19)
    {
      goto LABEL_34;
    }

    numeralOption = [optionCopy numeralOption];
    numeralOption2 = [toOptionCopy numeralOption];
    if (numeralOption == numeralOption2)
    {
      [(NTKAegirFaceView *)self _setNumerals:numeralOption];
      goto LABEL_34;
    }

    if (fraction >= 0.5)
    {
      v33 = numeralOption2;
      CLKMapFractionIntoRange();
      v28 = v34;
      numeralOption = v33;
    }

    else
    {
      CLKMapFractionIntoRange();
      v28 = v29;
    }

    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v35, v35);
    [(NTKAegirFaceView *)self _setNumerals:numeralOption];
    goto LABEL_28;
  }

  if (mode != 12)
  {
    if (mode != 13)
    {
      goto LABEL_34;
    }

    typeface = [optionCopy typeface];
    typeface2 = [toOptionCopy typeface];
    if (typeface == typeface2)
    {
      [(NTKAegirFaceView *)self _setTypeface:typeface];
      goto LABEL_34;
    }

    if (fraction >= 0.5)
    {
      v30 = typeface2;
      CLKMapFractionIntoRange();
      v28 = v31;
      typeface = v30;
    }

    else
    {
      CLKMapFractionIntoRange();
      v28 = v27;
    }

    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v32, v32);
    [(NTKAegirFaceView *)self _setTypeface:typeface];
LABEL_28:
    v36 = fmin(v28, self->_homeScreenAlphaOverride);
    if (self->_elementOrder)
    {
      v37 = 32;
    }

    else
    {
      v37 = 24;
    }

    [*&self->NTKFaceView_opaque[v37] setAlpha:v36];
    v38 = *&self->NTKFaceView_opaque[v37];
    v39 = v40;
    [v38 setTransform:&v39];
    goto LABEL_34;
  }

  vista = [optionCopy vista];
  vista2 = [toOptionCopy vista];
  v21 = [(NTKAegirFaceView *)self shuffledVistaForVista:vista shuffle:0];
  v22 = [(NTKAegirFaceView *)self shuffledVistaForVista:vista2 shuffle:0];
  [(NUNIAstronomyVistaController *)self->_astronomyController applyTransitionFraction:v21 fromVista:v22 toVista:fraction];
  [(NTKAegirFaceView *)self _applyFromVista:v21 toVista:v22 fraction:fraction];
  if (vista2 == &dword_8 + 2 && vista == &dword_8 + 2)
  {
    [(NTKAegirFaceView *)self _applyOption:optionCopy forCustomEditMode:12 slot:0];
    randomVistaSnapshot = self->_randomVistaSnapshot;
    fractionCopy = 1.0;
  }

  else if (vista2 == &dword_8 + 2)
  {
    [(NTKAegirFaceView *)self _applyOption:optionCopy forCustomEditMode:12 slot:0];
    randomVistaSnapshot = self->_randomVistaSnapshot;
    fractionCopy = fraction;
  }

  else if (vista == &dword_8 + 2)
  {
    [(NTKAegirFaceView *)self _applyOption:toOptionCopy forCustomEditMode:12 slot:0];
    fractionCopy = 1.0 - fraction;
    randomVistaSnapshot = self->_randomVistaSnapshot;
  }

  else
  {
    randomVistaSnapshot = self->_randomVistaSnapshot;
    fractionCopy = 0.0;
  }

  [(UIImageView *)randomVistaSnapshot setAlpha:fractionCopy];
LABEL_34:
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode > 14)
  {
    if (mode == 15)
    {
      style = [optionCopy style];
      v12 = [(NTKAegirFaceView *)self shuffledStyleForStyle:style shuffle:0];
      [(NUNIAstronomyVistaController *)self->_astronomyController applyStyle:v12];
      if (style != &dword_4 + 3)
      {
        [(NTKAegirFaceView *)self shuffleRandomStyle];
      }

      [(NTKAegirFaceView *)self _setElementOrder:(v12 & 0xFFFFFFFFFFFFFFFELL) == 2];
    }

    else if (mode == 19)
    {
      -[NTKAegirFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
    }
  }

  else if (mode == 12)
  {
    vista = [optionCopy vista];
    v10 = [(NTKAegirFaceView *)self shuffledVistaForVista:vista shuffle:0];
    if ([(NUNIAstronomyVistaController *)self->_astronomyController vista]!= v10)
    {
      if ([(NTKAegirFaceView *)self editing])
      {
        [(NUNIAstronomyVistaController *)self->_astronomyController setVista:v10];
      }

      else
      {
        [(NTKAegirFaceView *)self _applyVista:v10];
      }
    }

    v13 = 0.0;
    if (vista == &dword_8 + 2)
    {
      v13 = 1.0;
    }

    [(UIImageView *)self->_randomVistaSnapshot setAlpha:v13];
  }

  else if (mode == 13)
  {
    -[NTKAegirFaceView _setTypeface:](self, "_setTypeface:", [optionCopy typeface]);
  }
}

- (unint64_t)shuffledVistaForVista:(unint64_t)vista shuffle:(BOOL)shuffle
{
  if (vista > 5)
  {
    if (vista <= 7)
    {
      v9 = 3;
      if (vista != 7)
      {
        v9 = 0;
      }

      if (vista == 6)
      {
        return 7;
      }

      else
      {
        return v9;
      }
    }

    else if (vista != 8 && vista != 9)
    {
      if (vista == 10)
      {
        if (shuffle)
        {
          [(NTKAegirFaceView *)self shuffleRandomVista];
        }

        return self->_currentShuffledVista;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = 4;
    v5 = 5;
    v6 = 6;
    if (vista != 5)
    {
      v6 = 0;
    }

    if (vista != 4)
    {
      v5 = v6;
    }

    if (vista != 3)
    {
      v4 = v5;
    }

    if (vista == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (vista == 1)
    {
      v7 = 1;
    }

    if (vista <= 2)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  return vista;
}

- (unint64_t)shuffledStyleForStyle:(unint64_t)style shuffle:(BOOL)shuffle
{
  if (style <= 3)
  {
    if (style == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (style == 2)
    {
      v4 = 2;
    }

    v5 = style == 1;
    goto LABEL_13;
  }

  if (style <= 5)
  {
    if (style == 5)
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }

    v5 = style == 4;
LABEL_13:
    if (!v5)
    {
      return v4;
    }

    return style;
  }

  if (style != 6)
  {
    if (style == 7)
    {
      if (shuffle)
      {
        [(NTKAegirFaceView *)self shuffleRandomStyle];
      }

      return self->_currentShuffledStyle;
    }

    else
    {
      return 0;
    }
  }

  return style;
}

- (void)_applyShowContentForUnadornedSnapshot
{
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setHidden:[(NTKAegirFaceView *)self showContentForUnadornedSnapshot]];
  centerTimeLabelBack = self->_centerTimeLabelBack;
  showContentForUnadornedSnapshot = [(NTKAegirFaceView *)self showContentForUnadornedSnapshot];

  [(NTKDigitalTimeLabel *)centerTimeLabelBack setHidden:showContentForUnadornedSnapshot];
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v35 layoutSubviews];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setFrameUsingCurrentStyle];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setFrameUsingCurrentStyle];
  [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setFrameUsingCurrentStyle];
  [(NTKAegirFaceView *)self _topComplicationFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKAegirFaceViewComplicationFactory *)self->_complicationFactory topComplicationFrame];
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  if (!CGRectEqualToRect(v36, v37))
  {
    [(NTKAegirFaceViewComplicationFactory *)self->_complicationFactory setTopComplicationFrame:v4, v6, v8, v10];
    [(NTKAegirFaceView *)self invalidateComplicationLayout];
  }

  device = [(NTKAegirFaceView *)self device];
  [(NTKAegirFaceView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [vistaView setFrame:{v13, v15, v17, v19}];

  uIFontWeightSemibold = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:device weight:v13 forDevice:v15, v17, v19, UIFontWeightSemibold];
  layoutRule = [uIFontWeightSemibold layoutRule];
  [layoutRule referenceFrame];
  v24 = v23;

  text = [(CLKUIColoringLabel *)self->_travelTimeLabel text];
  travelTimeLabel = self->_travelTimeLabel;
  v27 = sub_4820();
  [(CLKUIColoringLabel *)travelTimeLabel setText:v27];

  [(CLKUIColoringLabel *)self->_travelTimeLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_travelTimeLabel frame];
  v29 = v28;
  [(CLKUIColoringLabel *)self->_travelTimeLabel setText:text];
  device2 = [(NTKAegirFaceView *)self device];
  sub_22BC(device2, device2);
  v31 = *&qword_1A248;

  [(CLKUIColoringLabel *)self->_travelTimeLabel setFrame:v31, v24, v31 * -2.0 + v17 * 0.75, v29];
  v32 = v17 + v31 * -2.0;
  [(CLKUIColoringLabel *)self->_scrubLabel setFrame:v31, v19 - v29 - v24, v32, v29];
  [(CLKUIColoringLabel *)self->_scrubLabel frame];
  self->_phaseLabelDefaultFrame.origin.x = v31;
  self->_phaseLabelDefaultFrame.origin.y = v33 - v29;
  self->_phaseLabelDefaultFrame.size.width = v32;
  self->_phaseLabelDefaultFrame.size.height = v29;
  [(NTKAegirFaceView *)self _layoutPhaseLabel];
  v34 = 0;
  do
  {
    [(NTKAegirFaceView *)self _layoutSpheroidLabel:v34];
    v34 = (v34 + 1);
  }

  while (v34 != 8);
}

- (void)_becameActiveFace
{
  v3 = +[NTKLocationManager sharedLocationManager];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4960;
  v6[3] = &unk_145D8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startLocationUpdatesWithIdentifier:@"ntk.aegir.face" handler:v6];
  locationManagerToken = self->_locationManagerToken;
  self->_locationManagerToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_becameInactiveFace
{
  if (self->_locationManagerToken)
  {
    v3 = +[NTKLocationManager sharedLocationManager];
    [v3 stopLocationUpdatesForToken:self->_locationManagerToken];

    locationManagerToken = self->_locationManagerToken;
    self->_locationManagerToken = 0;
  }
}

- (void)_asyncUpdateLocale
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4B10;
  v2[3] = &unk_14600;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_asyncUpdateTime
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4BF4;
  v2[3] = &unk_14600;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)topComplicationFont
{
  [(NTKAegirFaceView *)self topComplicationFontSize];
  v4 = v3;
  [(NTKAegirFaceView *)self topComplicationFontWeight];

  return [CLKFont systemFontOfSize:v4 weight:v5];
}

- (double)topComplicationFontSize
{
  device = [(NTKAegirFaceView *)self device];
  sub_22BC(device, device);

  return *&qword_1A258;
}

- (CGRect)_topComplicationFrame
{
  [(NTKAegirFaceView *)self bounds];
  device = [(NTKAegirFaceView *)self device];
  sub_22BC(device, device);
  topComplicationFont = [(NTKAegirFaceView *)self topComplicationFont];
  [topComplicationFont ascender];
  [topComplicationFont descender];
  CLKRoundForDevice();
  v6 = v5;
  CLKRoundForDevice();
  v8 = v7;
  CLKRoundForDevice();
  v10 = v9;
  CLKRoundForDevice();
  v12 = v11;

  v13 = v12;
  v14 = v10;
  v15 = v8;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setTypeface:(unint64_t)typeface
{
  if (self->_typeface != typeface)
  {
    self->_typeface = typeface;
    [(NTKAegirFaceView *)self _invalidateTimeLabelStyles];
  }
}

- (void)_setNumerals:(unint64_t)numerals
{
  if (self->_numeralOption != numerals)
  {
    self->_numeralOption = numerals;
    device = [(NTKAegirFaceView *)self device];
    v5 = NTKShowIndicScriptNumerals();

    if (v5)
    {

      [(NTKAegirFaceView *)self _invalidateTimeLabelStyles];
    }
  }
}

- (void)_setElementOrder:(unint64_t)order
{
  if (self->_elementOrder != order)
  {
    self->_elementOrder = order;
    fromEditMode = [(NTKAegirFaceView *)self fromEditMode];
    v7 = 0.0;
    v8 = 0.0;
    if (!order)
    {
      v9 = fromEditMode == &dword_C + 1 || fromEditMode == 0;
      v10 = v9 || fromEditMode == &dword_10 + 3;
      v8 = NTKEditModeDimmedAlpha;
      if (v10)
      {
        v8 = 1.0;
      }
    }

    [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setAlpha:fmin(v8, self->_homeScreenAlphaOverride)];
    centerTimeLabelBack = self->_centerTimeLabelBack;
    if (order == 1)
    {
      if (fromEditMode == &dword_C + 1 || fromEditMode == 0 || fromEditMode == &dword_10 + 3)
      {
        v7 = 1.0;
      }

      else
      {
        v7 = NTKEditModeDimmedAlpha;
      }
    }

    v14 = fmin(v7, self->_homeScreenAlphaOverride);

    [(NTKDigitalTimeLabel *)centerTimeLabelBack setAlpha:v14];
  }
}

- (void)_applyFromElementOrder:(unint64_t)order toElementOrder:(unint64_t)elementOrder fraction:(double)fraction
{
  [(NTKAegirFaceView *)self fromEditMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setAlpha:fmin(v6, self->_homeScreenAlphaOverride)];
  CLKInterpolateBetweenFloatsClipped();
  v8 = fmin(v7, self->_homeScreenAlphaOverride);
  centerTimeLabelBack = self->_centerTimeLabelBack;

  [(NTKDigitalTimeLabel *)centerTimeLabelBack setAlpha:v8];
}

- (void)_invalidateTimeLabelStyles
{
  v9 = [(NTKAegirFaceView *)self _centerTimeLabelStyleForViewMode:self->_viewMode];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setStyle:v9];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setStyle:v9];
  cornerTimeLabel = self->_cornerTimeLabel;
  v4 = [(NTKAegirFaceView *)self _cornerTimeLabelStyleForViewMode:self->_viewMode];
  [(NTKDigitalTimeLabel *)cornerTimeLabel setStyle:v4];

  numeralOption = self->_numeralOption;
  v6 = CLKLocaleNumberSystemFromNumeralOption();
  device = [(NTKAegirFaceView *)self device];
  v8 = NTKShowIndicScriptNumerals();

  if (!v8)
  {
    v6 = -1;
  }

  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setForcedNumberSystem:v6];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setForcedNumberSystem:v6];
  [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setForcedNumberSystem:v6];
  [(NTKAegirFaceView *)self setNeedsLayout];
}

- (id)_centerTimeLabelStyleForViewMode:(int64_t)mode
{
  [(NTKAegirFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKAegirFaceView *)self device];
  v14 = device;
  if (mode == 2)
  {
    v15 = sub_5724(device, v6, v8, v10, v12);
    [v15 pointSize];
    v17 = sub_54F8(v16, v14, self->_typeface, self->_numeralOption);
    v18 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v17 withFont:v14 forDevice:v6, v8, v10, v12];
  }

  else
  {
    v15 = sub_54F8(round(v12 * 0.198660714), device, self->_typeface, self->_numeralOption);
    v18 = sub_564C(v14, v15, v6, v8, v10, v12);
  }

  return v18;
}

- (id)_cornerTimeLabelStyleForViewMode:(int64_t)mode
{
  [(NTKAegirFaceView *)self bounds];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  device = [(NTKAegirFaceView *)self device];
  v14 = device;
  if (mode == 2)
  {
    v15 = sub_5724(device, x, y, width, height);
    device2 = [(NTKAegirFaceView *)self device];
    sub_22BC(device2, device2);

    if (*&qword_1A248 > 0.0)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v23 = CGRectInset(v22, *&qword_1A248 * 0.5 - *&qword_1A250, 0.0);
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
    }

    height = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v15 withFont:v14 forDevice:x, y, width, height];
  }

  else
  {
    device3 = [(NTKAegirFaceView *)self device];
    v15 = sub_5994(round(height * 0.198660714));

    height = sub_564C(v14, v15, x, y, width, height);
  }

  v19 = height;

  return v19;
}

- (void)_prepareToZoom
{
  v5.receiver = self;
  v5.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v5 _prepareToZoom];
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  scene = [vistaView scene];

  [scene setUpdatable:0];
}

- (void)_cleanupAfterZoom
{
  v5.receiver = self;
  v5.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v5 _cleanupAfterZoom];
  vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  scene = [vistaView scene];

  [scene setUpdatable:1];
}

- (BOOL)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if ([(NTKAegirFaceView *)self _shouldHandleHardwareEvents]&& !self->_physicalButtonDelayedBlock)
  {
    if (![(NTKAegirFaceView *)self _canEnterInteractiveMode])
    {
      v5 = 1;
      goto LABEL_4;
    }

    if (!self->_wheelDelayedBlock)
    {
      objc_initWeak(&location, self);
      v7 = [NTKDelayedBlock alloc];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_5CBC;
      v10[3] = &unk_14628;
      objc_copyWeak(&v11, &location);
      v8 = [v7 initWithDelay:v10 action:0.2];
      wheelDelayedBlock = self->_wheelDelayedBlock;
      self->_wheelDelayedBlock = v8;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (void)exitInteractiveModeAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if ([(NTKAegirFaceView *)self _styleOptionIsRandom])
  {
    [(NUNIAstronomyVistaController *)self->_astronomyController setStyle:self->_currentShuffledStyle];
  }

  if (animatedCopy)
  {
    [(NTKAegirFaceView *)self _animateTransitionToViewMode:0 completion:completionCopy];
LABEL_9:
    v6 = completionCopy;
    goto LABEL_10;
  }

  [(NTKAegirFaceView *)self _setViewMode:0];
  if ([(NTKAegirFaceView *)self _styleOptionIsRandom])
  {
    [(NUNIAstronomyVistaController *)self->_astronomyController applyStyle:self->_currentShuffledStyle];
  }

  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_wheelDelayedBlockFired
{
  wheelDelayedBlock = self->_wheelDelayedBlock;
  self->_wheelDelayedBlock = 0;

  if (!self->_physicalButtonDelayedBlock && [(NTKAegirFaceView *)self _canEnterInteractiveMode])
  {

    [(NTKAegirFaceView *)self _animateTransitionToViewMode:2];
  }
}

- (void)_physicalButtonDelayedBlockFired
{
  physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
  self->_physicalButtonDelayedBlock = 0;
  _objc_release_x1();
}

- (void)_enableCrownForAegirVista:(unint64_t)vista
{
  v5.receiver = self;
  v5.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v5 _enableCrown];
  if ([(NTKAegirFaceView *)self editing])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  *(self + 328) = *(self + 328) & 0xFD | v4;
}

- (void)_disableCrown
{
  v4.receiver = self;
  v4.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v4 _disableCrown];
  crownDate = self->_crownDate;
  self->_crownDate = 0;

  *(self + 328) &= ~2u;
  [(NUNIAstronomyVistaController *)self->_astronomyController updateTimeAnimated:1];
}

- (void)astronomyVistaControllerWillEnterInteractiveMode:(id)mode
{
  if ([(NTKAegirFaceView *)self _canEnterInteractiveMode])
  {

    [(NTKAegirFaceView *)self _animateTransitionToViewMode:2];
  }
}

- (void)_applyVista:(unint64_t)vista
{
  [(NUNIAstronomyVistaController *)self->_astronomyController setVista:vista];
  astronomyController = self->_astronomyController;

  [(NUNIAstronomyVistaController *)astronomyController updateTimeAnimated:0];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  deviceCopy = device;
  v7 = options - 12;
  if (options - 12) < 8 && ((0x8Bu >> v7))
  {
    v8 = (&off_14760)[v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___NTKAegirFaceView;
    v8 = objc_msgSendSuper2(&v10, "_swatchForEditModeDependsOnOptions:forDevice:", options, deviceCopy);
  }

  return v8;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode > 14)
  {
    if (mode != 15)
    {
      if (mode == 19)
      {
        +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [optionCopy swatchStyle]);
        v15 = v14;
        v17 = v16;
        device = [(NTKAegirFaceView *)self device];
        uIFontWeightSemibold = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:device weight:0.0 forDevice:0.0, v15, v17, UIFontWeightSemibold];
        designatorFont = [uIFontWeightSemibold designatorFont];
        [designatorFont pointSize];
        v22 = v21;

        device2 = [(NTKAegirFaceView *)self device];
        v24 = sub_54F8(v22, device2, self->_typeface, [optionCopy numeralOption]);

        device3 = [(NTKAegirFaceView *)self device];
        v13 = [optionCopy swatchImageWithFont:v24 device:device3 baseline:0.3125];

        goto LABEL_16;
      }

      goto LABEL_8;
    }

    v11 = [optionsCopy objectForKeyedSubscript:&off_15788];
    selfCopy2 = self;
    v28 = v11;
    v29 = optionCopy;
    goto LABEL_13;
  }

  if (mode == 12)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_157A0];
    if ([optionCopy vista] == &dword_8 + 2)
    {
      _randomVistaImage = [(NTKAegirFaceView *)self _randomVistaImage];
LABEL_14:
      v13 = _randomVistaImage;
      goto LABEL_15;
    }

    selfCopy2 = self;
    v28 = optionCopy;
    v29 = v11;
LABEL_13:
    _randomVistaImage = [(NTKAegirFaceView *)selfCopy2 _vistaSwatchForVistaOption:v28 styleOption:v29];
    goto LABEL_14;
  }

  if (mode != 13)
  {
LABEL_8:
    v31.receiver = self;
    v31.super_class = NTKAegirFaceView;
    v13 = [(NTKAegirFaceView *)&v31 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
    goto LABEL_16;
  }

  v11 = [optionsCopy objectForKeyedSubscript:&off_15788];
  v12 = [v10 objectForKeyedSubscript:&off_157A0];
  v13 = [(NTKAegirFaceView *)self _typefaceSwatchForTypefaceOption:optionCopy vistaOption:v11 styleOption:v12];

LABEL_15:
LABEL_16:

  return v13;
}

- (id)_numeralSwatchForNumeralOption:(id)option typefaceOption:(id)typefaceOption vistaOption:(id)vistaOption styleOption:(id)styleOption
{
  optionCopy = option;
  typefaceOptionCopy = typefaceOption;
  vistaOptionCopy = vistaOption;
  styleOptionCopy = styleOption;
  if (qword_1A288 != -1)
  {
    sub_9AEC();
  }

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionCopy numeralOption]);
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vistaOptionCopy vista]);
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [styleOptionCopy style]);
  v17 = [NSString stringWithFormat:@"%@-%@-%@", v14, v15, v16];

  v18 = [qword_1A280 objectForKey:v17];
  if (!v18)
  {
    v18 = [(NTKAegirFaceView *)self _renderNumeralSwatchForNumeralOption:optionCopy typefaceOption:typefaceOptionCopy vistaOption:vistaOptionCopy styleOption:styleOptionCopy];
    [qword_1A280 setObject:v18 forKey:v17];
  }

  return v18;
}

- (id)_renderNumeralSwatchForNumeralOption:(id)option typefaceOption:(id)typefaceOption vistaOption:(id)vistaOption styleOption:(id)styleOption
{
  styleOptionCopy = styleOption;
  vistaOptionCopy = vistaOption;
  typefaceOptionCopy = typefaceOption;
  optionCopy = option;
  [(NTKAegirFaceView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [NTKAegirFaceView alloc];
  device = [(NTKAegirFaceView *)self device];
  v24 = [(NTKAegirFaceView *)v22 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

  [v24 setFrame:{v15, v17, v19, v21}];
  [v24 _loadSnapshotContentViews];
  numeralOption = [optionCopy numeralOption];

  [v24 _setNumerals:numeralOption];
  [v24 setOption:typefaceOptionCopy forCustomEditMode:13 slot:0];

  [v24 setOption:vistaOptionCopy forCustomEditMode:12 slot:0];
  [v24 setOption:styleOptionCopy forCustomEditMode:15 slot:0];
  v26 = NTKIdealizedDate();
  [v24 setOverrideDate:v26 duration:0.0];

  v27 = [(NTKAegirFaceView *)self _vistaSwatchForVistaOption:vistaOptionCopy styleOption:styleOptionCopy];

  vistaView = [v24[6] vistaView];
  v29 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v15, v17, v19, v21}];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_67E8;
  v34[3] = &unk_14690;
  v37 = v15;
  v38 = v17;
  v39 = v19;
  v40 = v21;
  v35 = v27;
  v36 = vistaView;
  v30 = vistaView;
  v31 = v27;
  v32 = [v29 imageWithActions:v34];

  return v32;
}

- (id)_typefaceSwatchForTypefaceOption:(id)option vistaOption:(id)vistaOption styleOption:(id)styleOption
{
  optionCopy = option;
  vistaOptionCopy = vistaOption;
  styleOptionCopy = styleOption;
  if (qword_1A298 != -1)
  {
    sub_9B00();
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionCopy typeface]);
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vistaOptionCopy vista]);
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [styleOptionCopy style]);
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, v13];

  v15 = [qword_1A290 objectForKey:v14];
  if (!v15)
  {
    v15 = [(NTKAegirFaceView *)self _renderTypefaceSwatchForTypefaceOption:optionCopy vistaOption:vistaOptionCopy styleOption:styleOptionCopy];
    [qword_1A290 setObject:v15 forKey:v14];
  }

  return v15;
}

- (id)_renderTypefaceSwatchForTypefaceOption:(id)option vistaOption:(id)vistaOption styleOption:(id)styleOption
{
  styleOptionCopy = styleOption;
  vistaOptionCopy = vistaOption;
  optionCopy = option;
  +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [optionCopy swatchStyle]);
  v12 = v11;
  v14 = v13;
  v15 = [NTKAegirFaceView alloc];
  device = [(NTKAegirFaceView *)self device];
  v17 = [(NTKAegirFaceView *)v15 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

  [v17 setFrame:{0.0, 0.0, v12, v14}];
  [v17 _loadSnapshotContentViews];
  [v17 setOption:optionCopy forCustomEditMode:13 slot:0];

  v18 = NTKIdealizedDate();
  [v17 setOverrideDate:v18 duration:0.0];

  v19 = [(NTKAegirFaceView *)self _vistaSwatchForVistaOption:vistaOptionCopy styleOption:styleOptionCopy];

  vistaView = [v17[6] vistaView];
  v21 = [[UIGraphicsImageRenderer alloc] initWithBounds:{0.0, 0.0, v12, v14}];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_6C64;
  v26[3] = &unk_14690;
  v29 = 0;
  v30 = 0;
  v31 = v12;
  v32 = v14;
  v27 = v19;
  v28 = vistaView;
  v22 = vistaView;
  v23 = v19;
  v24 = [v21 imageWithActions:v26];

  return v24;
}

- (id)_vistaSwatchForVistaOption:(id)option styleOption:(id)styleOption
{
  optionCopy = option;
  styleOptionCopy = styleOption;
  if (qword_1A2A8 != -1)
  {
    sub_9B14();
  }

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionCopy vista]);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [styleOptionCopy style]);
  v10 = [NSString stringWithFormat:@"%@-%@", v8, v9];

  v11 = [qword_1A2A0 objectForKey:v10];
  if (!v11)
  {
    v11 = [(NTKAegirFaceView *)self _renderVistaSwatchForVistaOption:optionCopy styleOption:styleOptionCopy];
    [qword_1A2A0 setObject:v11 forKey:v10];
  }

  return v11;
}

- (id)_renderVistaSwatchForVistaOption:(id)option styleOption:(id)styleOption
{
  optionCopy = option;
  styleOptionCopy = styleOption;
  device = [(NTKAegirFaceView *)self device];
  v9 = [[NTKAegirFaceView alloc] initWithFaceStyle:44 forDevice:device clientIdentifier:0];
  [(NTKAegirFaceView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(NTKAegirFaceView *)v9 setFrame:?];
  [(NTKAegirFaceView *)v9 _loadSnapshotContentViews];
  [(NTKAegirFaceView *)v9 setOption:optionCopy forCustomEditMode:12 slot:0];
  [(NTKAegirFaceView *)v9 setOption:styleOptionCopy forCustomEditMode:15 slot:0];

  v18 = NTKIdealizedDate();
  [(NTKAegirFaceView *)v9 setOverrideDate:v18 duration:0.0];

  vistaView = [(NUNIAstronomyVistaController *)v9->_astronomyController vistaView];
  quadViews = [vistaView quadViews];
  lastObject = [quadViews lastObject];

  objc_opt_class();
  v22 = 0;
  if (objc_opt_isKindOfClass())
  {
    [device screenScale];
    v24 = [lastObject snapshotInRect:v11 scale:v13 time:{v15, v17, v23, 0.0}];
    +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [optionCopy swatchStyle]);
    v26 = v25;
    v28 = v27;
    v29 = [[UIGraphicsImageRenderer alloc] initWithBounds:{0.0, 0.0, v25, v27}];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_70FC;
    v32[3] = &unk_146F8;
    v34 = 0;
    v35 = 0;
    v33 = v24;
    v36 = v26;
    v37 = v28;
    v30 = v24;
    v22 = [v29 imageWithActions:v32];
  }

  return v22;
}

- (id)_createDigitalTimeLabel
{
  device = [(NTKAegirFaceView *)self device];
  v4 = [NTKDigitalTimeLabel labelWithOptions:1 forDevice:device];

  [v4 setUsesLegibility:1];
  v5 = +[UIColor whiteColor];
  [v4 setTextColor:v5];

  v6 = +[NTKTimeOffsetManager sharedManager];
  [v6 timeOffset];
  [v4 setTimeOffset:?];

  overrideDate = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];
  [v4 setOverrideDate:overrideDate duration:0.0];

  return v4;
}

- (id)_createVistaView
{
  device = [(NTKAegirFaceView *)self device];
  sub_22BC(device, device);
  v4 = dword_1A234;
  v6 = dword_1A23C;
  v5 = dword_1A240;
  v7 = dword_1A244;
  [(NTKAegirFaceView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:device];
  [v16 setRendererStyle:3];
  [v16 setTextureSuffix:@"calliope"];
  [v16 setColorSpace:2];
  [v16 setQuadViewOptions:{objc_msgSend(v16, "quadViewOptions") | 0x140}];
  v17 = [[NUNIAstronomyVistaView alloc] initWithFrame:v16 configuration:{v9, v11, v13, v15}];
  v18 = [[NUNIAstronomyVistaController alloc] initWithVistaView:v17];
  astronomyController = self->_astronomyController;
  self->_astronomyController = v18;

  [(NUNIAstronomyVistaController *)self->_astronomyController setDelegate:self];
  [(NUNIAstronomyVistaController *)self->_astronomyController setIsBacklightTransitionEnabled:0];
  LODWORD(v20) = v6;
  [v17 setSupplementalTopInset:v20];
  LODWORD(v21) = v5;
  [v17 setSupplementalBottomInset:v21];
  LODWORD(v22) = v4;
  [v17 setSupplementalHorizontalInset:v22];
  LODWORD(v23) = v7;
  [v17 setSupplementalSpheroidSize:v23];
  objc_initWeak(&location, self);
  v24 = [NUNIScene alloc];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_7478;
  v30 = &unk_14720;
  objc_copyWeak(&v31, &location);
  v25 = [v24 initWithSphereoids:16515070 currentDateBlock:&v27];
  [v25 setSnap:{3, v27, v28, v29, v30}];
  [v17 setScene:v25];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  return v17;
}

- (void)_interpolateFromPose:(const NTKAegirFaceViewAnimationPose *)pose toPose:(const NTKAegirFaceViewAnimationPose *)toPose progress:(float)progress
{
  device = [(NTKAegirFaceView *)self device];
  sub_22BC(device, device);

  IsRTL = CLKLayoutIsRTL();
  if (IsRTL)
  {
    device2 = [(NTKAegirFaceView *)self device];
    [device2 screenBounds];
    v12 = v11 - *&dword_1A238;
  }

  else
  {
    v12 = *&dword_1A238;
  }

  v13 = v12;
  v14 = 80;
  v15 = 8;
  do
  {
    v16 = *&self->NTKFaceView_opaque[v14];
    if (v16)
    {
      var1 = pose->var1;
      v18 = toPose->var1;
      v19 = v16;
      CLKInterpolateBetweenFloatsClipped();
      [v19 setAlpha:?];
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      var0 = pose->var0;
      v27 = toPose->var0;
      CLKInterpolateBetweenFloatsClipped();
      if (IsRTL)
      {
        v28 = -v28 - v23;
      }

      [v19 setFrame:{v28 + v13, v21, v23, v25}];
    }

    v14 += 8;
    --v15;
  }

  while (v15);
  if (([(NTKAegirFaceView *)self editing]& 1) == 0)
  {
    var4 = pose->var4;
    v30 = toPose->var4;
    CLKInterpolateBetweenFloatsClipped();
    v32 = v31;
    [(CLKUIColoringLabel *)self->_travelTimeLabel setAlpha:?];
    [(CLKUIColoringLabel *)self->_scrubLabel setAlpha:v32];
    var3 = pose->var3;
    v34 = toPose->var3;
    CLKInterpolateBetweenFloatsClipped();
    if (v32 <= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = fmax(v32, v35);
    if (v32 <= v35 || v37 <= 0.0)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = v32;
    }

    if (v37 <= 0.0)
    {
      v40 = 0.0;
    }

    else
    {
      v40 = v36;
    }

    [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setAlpha:v39];
    v41 = fmin(v40, self->_homeScreenAlphaOverride);
    if (self->_elementOrder)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = 1.0;
    }

    [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setAlpha:v41 * v42];
    if (self->_elementOrder == 1)
    {
      v43 = 1.0;
    }

    else
    {
      v43 = 0.0;
    }

    [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setAlpha:v41 * v43];
    phaseLabel = self->_phaseLabel;
    var6 = pose->var6;
    v46 = toPose->var6;
    CLKInterpolateBetweenFloatsClipped();
    [(CLKUIColoringLabel *)phaseLabel setAlpha:?];
    complicationFactory = self->_complicationFactory;
    var2 = pose->var2;
    v49 = toPose->var2;
    CLKInterpolateBetweenFloatsClipped();

    [(NTKAegirFaceViewComplicationFactory *)complicationFactory setAlpha:self faceView:?];
  }
}

- (id)_date
{
  overrideDate = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];
  if (overrideDate)
  {
    overrideDate2 = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];
  }

  else
  {
    crownDate = self->_crownDate;
    if (crownDate)
    {
      overrideDate2 = crownDate;
    }

    else
    {
      overrideDate2 = +[NTKDate faceDate];
    }
  }

  v6 = overrideDate2;

  return v6;
}

- (void)_animateTransitionToViewMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if ((*(self + 328) & 1) == 0)
  {
    if (self->_viewMode == mode)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self->_animatingToViewMode != mode)
  {
LABEL_5:
    self->_animatingToViewMode = mode;
    [(NUNIAstronomyVistaController *)self->_astronomyController animateTransitionToMode:mode];
    [(NTKDelayedBlock *)self->_wheelDelayedBlock cancel];
    wheelDelayedBlock = self->_wheelDelayedBlock;
    self->_wheelDelayedBlock = 0;

    [(NTKDelayedBlock *)self->_physicalButtonDelayedBlock cancel];
    physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
    self->_physicalButtonDelayedBlock = 0;

    *(self + 328) |= 1u;
    [(NUNIAstronomyVistaController *)self->_astronomyController setVista:[(NUNIAstronomyVistaController *)self->_astronomyController vista]];
    vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
    [vistaView showSupplemental:mode == 3 animated:0];

    [(NTKAegirFaceView *)self _setIsAnimatingViewMode:0];
    [(NTKAegirFaceView *)self _setViewMode:mode];
    completionCopy = v10;
  }

LABEL_6:
  if (completionCopy)
  {
    completionCopy[2](v10);
    completionCopy = v10;
  }
}

- (void)_setViewMode:(int64_t)mode
{
  if (self->_viewMode != mode || (*(self + 328) & 1) != 0)
  {
    [(NTKAegirFaceView *)self _applyViewMode:?];
  }
}

- (void)_applyViewMode:(int64_t)mode
{
  self->_viewMode = mode;
  [(NTKAegirFaceView *)self _invalidateTimeLabelStyles];
  *(self + 328) &= ~1u;
  delegate = [(NTKAegirFaceView *)self delegate];
  [delegate faceViewWantsStatusBarHidden:-[NTKAegirFaceView _shouldHideStatusBarForViewMode:](self animated:{"_shouldHideStatusBarForViewMode:", mode), 0}];

  if (mode <= 1)
  {
    if (mode)
    {
      if (mode == 1)
      {
        [(NTKAegirFaceView *)self _setFaceViewModeDeactive];
      }
    }

    else
    {
      [(NTKAegirFaceView *)self _setFaceViewModeActive];
    }

LABEL_9:
    p_astronomyController = &self->_astronomyController;
    [(NUNIAstronomyVistaController *)self->_astronomyController vista];
    v8 = &unk_1102C;
    goto LABEL_13;
  }

  if (mode != 2)
  {
    if (mode == 3)
    {
      [(NTKAegirFaceView *)self _setFaceViewModeSupplemental];
      p_astronomyController = &self->_astronomyController;
      [(NUNIAstronomyVistaController *)self->_astronomyController vista];
      v8 = &unk_10FD8;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  [(NTKAegirFaceView *)self _setFaceViewModeInteractive];
  p_astronomyController = &self->_astronomyController;
  vista = [(NUNIAstronomyVistaController *)self->_astronomyController vista];
  v10 = 28;
  if (vista == &dword_0 + 1)
  {
    v10 = 56;
  }

  v8 = &unk_10FD8 + v10;
LABEL_13:
  LODWORD(v7) = 1.0;
  [(NTKAegirFaceView *)self _interpolateFromPose:v8 toPose:v8 progress:v7];
  v11 = *p_astronomyController;

  [(NUNIAstronomyVistaController *)v11 applyMode:mode];
}

- (void)_setFaceViewModeSupplemental
{
  [(NTKAegirFaceView *)self _setComplicationsInteractionEnabled:0];
  [(NTKAegirFaceView *)self _disableCrown];
  travelTimeLabel = self->_travelTimeLabel;
  v4 = sub_4820();
  [(CLKUIColoringLabel *)travelTimeLabel setText:v4];

  [(CLKUIColoringLabel *)self->_scrubLabel setText:&stru_14CD0];
  phaseLabel = self->_phaseLabel;

  [(CLKUIColoringLabel *)phaseLabel setText:&stru_14CD0];
}

- (void)_setFaceViewModeActive
{
  [(NTKAegirFaceView *)self _setComplicationsInteractionEnabled:1];
  if (NTKStarbearEnabled())
  {
    [(NTKAegirFaceView *)self _disableCrown];
  }

  else
  {
    [(NTKAegirFaceView *)self _enableCrownForAegirVista:[(NUNIAstronomyVistaController *)self->_astronomyController vista]];
  }

  travelTimeLabel = self->_travelTimeLabel;
  v4 = sub_4820();
  [(CLKUIColoringLabel *)travelTimeLabel setText:v4];

  [(CLKUIColoringLabel *)self->_scrubLabel setText:&stru_14CD0];
  phaseLabel = self->_phaseLabel;

  [(CLKUIColoringLabel *)phaseLabel setText:&stru_14CD0];
}

- (void)_setFaceViewModeDeactive
{
  [(NTKAegirFaceView *)self _setComplicationsInteractionEnabled:0];
  [(NTKAegirFaceView *)self _disableCrown];
  travelTimeLabel = self->_travelTimeLabel;
  v4 = sub_4820();
  [(CLKUIColoringLabel *)travelTimeLabel setText:v4];

  [(CLKUIColoringLabel *)self->_scrubLabel setText:&stru_14CD0];
  phaseLabel = self->_phaseLabel;

  [(CLKUIColoringLabel *)phaseLabel setText:&stru_14CD0];
}

- (void)_setFaceViewModeInteractive
{
  [(NTKAegirFaceView *)self _setComplicationsInteractionEnabled:0];
  vista = [(NUNIAstronomyVistaController *)self->_astronomyController vista];

  [(NTKAegirFaceView *)self _enableCrownForAegirVista:vista];
}

- (void)_applyDataMode
{
  dataMode = [(NTKAegirFaceView *)self dataMode];
  if (dataMode == &dword_0 + 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = dataMode != &dword_0 + 2 && self->_previousDataMode == 1;
  }

  [(NTKAegirFaceView *)self _applyDataModeAnimated:v4];
}

- (void)_applyDataModeAnimated:(BOOL)animated
{
  if (([(NTKAegirFaceView *)self zooming]& 1) == 0)
  {
    viewMode = self->_viewMode;
    dataMode = [(NTKAegirFaceView *)self dataMode];
    if (self->_previousDataMode != dataMode)
    {
      self->_previousDataMode = dataMode;
    }

    if (dataMode == &dword_0 + 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NTKAegirFaceView *)self editing]^ 1;
    }

    if (((*(self + 328) & 1) != 0 || v7 != viewMode) && ((*(self + 328) & 1) == 0 || v7 != self->_animatingToViewMode || !animated))
    {
      if (animated)
      {

        [(NTKAegirFaceView *)self _animateTransitionToViewMode:v7];
      }

      else
      {
        vistaView = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
        [vistaView updateSunLocationAnimated:0];

        [(NTKAegirFaceView *)self _applyViewMode:v7];
      }
    }
  }
}

- (void)_layoutPhaseLabel
{
  p_phaseLabelDefaultFrame = &self->_phaseLabelDefaultFrame;
  x = self->_phaseLabelDefaultFrame.origin.x;
  y = self->_phaseLabelDefaultFrame.origin.y;
  height = self->_phaseLabelDefaultFrame.size.height;
  [(CLKUIColoringLabel *)self->_phaseLabel sizeThatFits:self->_phaseLabelDefaultFrame.size.width, 0.0];
  v8 = v7;
  phaseLabel = self->_phaseLabel;
  v10 = y + height - v7;
  width = p_phaseLabelDefaultFrame->size.width;

  [(CLKUIColoringLabel *)phaseLabel setFrame:x, v10, width, v8];
}

- (void)_layoutSpheroidLabel:(int)label
{
  v5 = self->_spheroidLabels[label];
  if (v5)
  {
    v18 = v5;
    device = [(NTKAegirFaceView *)self device];
    sub_22BC(device, device);

    LODWORD(device) = CLKLayoutIsRTL();
    device2 = [(NTKAegirFaceView *)self device];
    [device2 screenBounds];
    v9 = v8 - *&dword_1A23C - *&dword_1A240;

    v10 = *&dword_1A23C + v9 / 7.0 * label;
    [(UIImageView *)v18 sizeToFit];
    [(UIImageView *)v18 frame];
    v12 = v11;
    v14 = v13;
    if (device)
    {
      device3 = [(NTKAegirFaceView *)self device];
      [device3 screenBounds];
      v17 = v16 - *&dword_1A238 - v12;
    }

    else
    {
      v17 = *&dword_1A238;
    }

    [(UIImageView *)v18 setFrame:v17, v10 + v14 * -0.5, v12, v14];
    v5 = v18;
  }
}

- (BOOL)_vistaOptionIsRandom
{
  v2 = [(NTKAegirFaceView *)self optionForCustomEditMode:12 slot:0];
  v3 = [v2 vista] == &dword_8 + 2;

  return v3;
}

- (BOOL)_styleOptionIsRandom
{
  v2 = [(NTKAegirFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == &dword_4 + 3;

  return v3;
}

- (void)_shuffleVistaIfNecessary
{
  if ([(NTKAegirFaceView *)self _vistaOptionIsRandom])
  {
    v3 = [(NTKAegirFaceView *)self shuffledVistaForVista:10 shuffle:1];
    astronomyController = self->_astronomyController;

    [(NUNIAstronomyVistaController *)astronomyController setVista:v3];
  }
}

- (void)_shuffleStyleIfNecessary
{
  if ([(NTKAegirFaceView *)self _styleOptionIsRandom])
  {
    v3 = [(NTKAegirFaceView *)self shuffledStyleForStyle:7 shuffle:1];
    astronomyController = self->_astronomyController;

    [(NUNIAstronomyVistaController *)astronomyController setStyle:v3];
  }
}

- (id)_homeScreenTimeViewConfiguration
{
  v3 = objc_alloc_init(CLKUIDigitalClockViewConfiguration);
  device = [(NTKAegirFaceView *)self device];
  [(NTKAegirFaceView *)self bounds];
  v5 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:"smallInUpperRightCornerStyleForBounds:weight:forDevice:" weight:device forDevice:?];
  designatorFont = [v5 designatorFont];
  [designatorFont pointSize];
  v8 = v7;

  device2 = [(NTKAegirFaceView *)self device];
  LODWORD(v5) = NTKShowIndicScriptNumerals();

  if (v5)
  {
    v10 = [(NTKAegirFaceView *)self optionForCustomEditMode:19 slot:0];
    [v10 numeralOption];

    v11 = [NSNumber numberWithUnsignedInteger:CLKLocaleNumberSystemFromNumeralOption()];
    [v3 setForcedNumberSystem:v11];
  }

  device3 = [(NTKAegirFaceView *)self device];
  v13 = sub_54F8(v8, device3, 1, self->_numeralOption);
  [v3 setTimeLabelFont:v13];

  return v3;
}

- (id)_homeScreenDateLabelFont
{
  device = [(NTKAegirFaceView *)self device];
  [(NTKAegirFaceView *)self bounds];
  v4 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:"smallInUpperRightCornerStyleForBounds:weight:forDevice:" weight:device forDevice:?];
  designatorFont = [v4 designatorFont];
  [designatorFont pointSize];
  v7 = v6;

  return [CLKFont systemFontOfSize:v7];
}

@end