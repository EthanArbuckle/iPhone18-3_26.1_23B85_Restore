@interface NTKAegirFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_styleOptionIsRandom;
- (BOOL)_vistaOptionIsRandom;
- (BOOL)_wheelChangedWithEvent:(id)a3;
- (CGRect)_topComplicationFrame;
- (NTKAegirFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)topComplicationFontSize;
- (id)_centerTimeLabelStyleForViewMode:(int64_t)a3;
- (id)_cornerTimeLabelStyleForViewMode:(int64_t)a3;
- (id)_createDigitalTimeLabel;
- (id)_createVistaView;
- (id)_date;
- (id)_homeScreenDateLabelFont;
- (id)_homeScreenTimeViewConfiguration;
- (id)_numeralSwatchForNumeralOption:(id)a3 typefaceOption:(id)a4 vistaOption:(id)a5 styleOption:(id)a6;
- (id)_renderNumeralSwatchForNumeralOption:(id)a3 typefaceOption:(id)a4 vistaOption:(id)a5 styleOption:(id)a6;
- (id)_renderTypefaceSwatchForTypefaceOption:(id)a3 vistaOption:(id)a4 styleOption:(id)a5;
- (id)_renderVistaSwatchForVistaOption:(id)a3 styleOption:(id)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_typefaceSwatchForTypefaceOption:(id)a3 vistaOption:(id)a4 styleOption:(id)a5;
- (id)_vistaSwatchForVistaOption:(id)a3 styleOption:(id)a4;
- (id)topComplicationFont;
- (unint64_t)shuffledStyleForStyle:(unint64_t)a3 shuffle:(BOOL)a4;
- (unint64_t)shuffledVistaForVista:(unint64_t)a3 shuffle:(BOOL)a4;
- (void)_animateTransitionToViewMode:(int64_t)a3 completion:(id)a4;
- (void)_applyDataMode;
- (void)_applyDataModeAnimated:(BOOL)a3;
- (void)_applyFromElementOrder:(unint64_t)a3 toElementOrder:(unint64_t)a4 fraction:(double)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyViewMode:(int64_t)a3;
- (void)_applyVista:(unint64_t)a3;
- (void)_asyncUpdateLocale;
- (void)_asyncUpdateTime;
- (void)_becameActiveFace;
- (void)_becameInactiveFace;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_cleanupAfterZoom;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_disableCrown;
- (void)_enableCrownForAegirVista:(unint64_t)a3;
- (void)_interpolateFromPose:(const NTKAegirFaceViewAnimationPose *)a3 toPose:(const NTKAegirFaceViewAnimationPose *)a4 progress:(float)a5;
- (void)_invalidateTimeLabelStyles;
- (void)_layoutPhaseLabel;
- (void)_layoutSpheroidLabel:(int)a3;
- (void)_loadSnapshotContentViews;
- (void)_physicalButtonDelayedBlockFired;
- (void)_prepareForEditing;
- (void)_prepareToZoom;
- (void)_setElementOrder:(unint64_t)a3;
- (void)_setFaceViewModeActive;
- (void)_setFaceViewModeDeactive;
- (void)_setFaceViewModeInteractive;
- (void)_setFaceViewModeSupplemental;
- (void)_setNumerals:(unint64_t)a3;
- (void)_setTypeface:(unint64_t)a3;
- (void)_setUpViews;
- (void)_setViewMode:(int64_t)a3;
- (void)_shuffleStyleIfNecessary;
- (void)_shuffleVistaIfNecessary;
- (void)_unloadSnapshotContentViews;
- (void)_wheelDelayedBlockFired;
- (void)astronomyVistaControllerWillEnterInteractiveMode:(id)a3;
- (void)dealloc;
- (void)exitInteractiveModeAnimated:(BOOL)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
@end

@implementation NTKAegirFaceView

- (NTKAegirFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v17.receiver = self;
  v17.super_class = NTKAegirFaceView;
  v9 = [(NTKAegirFaceView *)&v17 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKAegirFaceViewComplicationFactory alloc] initForDevice:v8];
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
  v3 = [(NTKAegirFaceView *)self contentView];
  [(NTKAegirFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(NTKAegirFaceView *)self device];
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
  sub_22BC(v19, v12);
  v20 = [(NTKAegirFaceView *)self _createVistaView];
  [v3 addSubview:v20];
  [v20 setObserver:self];
  v21 = +[NTKLocationManager sharedLocationManager];
  v22 = [v21 currentLocation];

  if (v22)
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
  v25 = [v21 currentLocation];
  v87 = v21;
  v26 = [v21 anyLocation];
  [(NUNIAstronomyVistaController *)astronomyController updateLocation:v25 fallbackLocation:v26];

  v27 = [(NTKAegirFaceView *)self _createDigitalTimeLabel];
  centerTimeLabelFront = self->_centerTimeLabelFront;
  self->_centerTimeLabelFront = v27;

  v29 = [(NTKAegirFaceView *)self _createDigitalTimeLabel];
  centerTimeLabelBack = self->_centerTimeLabelBack;
  self->_centerTimeLabelBack = v29;

  v31 = [(NTKAegirFaceView *)self _createDigitalTimeLabel];
  cornerTimeLabel = self->_cornerTimeLabel;
  self->_cornerTimeLabel = v31;

  v33 = [v20 quadViews];
  v34 = [v33 firstObject];

  [v20 insertSubview:self->_centerTimeLabelFront aboveSubview:v34];
  v90 = v20;
  v86 = v34;
  [v20 insertSubview:self->_centerTimeLabelBack belowSubview:v34];
  v88 = v12;
  v35 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v12 weight:v5 forDevice:v7, v9, v11, UIFontWeightSemibold];
  v36 = [v35 designatorFont];
  [v36 pointSize];
  v38 = v37;

  v39 = [CLKFont systemFontOfSize:v38 weight:UIFontWeightSemibold];
  v40 = [v39 CLKFontWithMonospacedNumbers];
  v41 = [v40 CLKFontWithAlternativePunctuation];

  v42 = [v41 CLKFontWithMonospacedNumbers];
  v43 = [v42 CLKFontWithAlternativePunctuation];

  v44 = self;
  v45 = [CLKUIColoringLabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v49 = [v45 initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  scrubLabel = self->_scrubLabel;
  self->_scrubLabel = v49;

  [(CLKUIColoringLabel *)self->_scrubLabel setFont:v43];
  [(CLKUIColoringLabel *)self->_scrubLabel setUsesLegibility:1];
  v51 = self->_scrubLabel;
  v52 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)v51 setTextColor:v52];

  v53 = self->_scrubLabel;
  v54 = +[UIColor blackColor];
  [(CLKUIColoringLabel *)v53 setShadowColor:v54];

  [v3 addSubview:self->_scrubLabel];
  v55 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  phaseLabel = self->_phaseLabel;
  self->_phaseLabel = v55;

  [(CLKUIColoringLabel *)self->_phaseLabel setNumberOfLines:0];
  [(CLKUIColoringLabel *)self->_phaseLabel setUsesLegibility:1];
  [(CLKUIColoringLabel *)self->_phaseLabel setFont:v43];
  v57 = self->_phaseLabel;
  v58 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)v57 setTextColor:v58];

  v59 = self->_phaseLabel;
  v60 = +[UIColor blackColor];
  [(CLKUIColoringLabel *)v59 setShadowColor:v60];

  [v3 addSubview:self->_phaseLabel];
  v61 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
  travelTimeLabel = self->_travelTimeLabel;
  self->_travelTimeLabel = v61;

  [(CLKUIColoringLabel *)self->_travelTimeLabel setTextAlignment:0];
  [(CLKUIColoringLabel *)self->_travelTimeLabel setFont:v43];
  [(CLKUIColoringLabel *)self->_travelTimeLabel setUsesLegibility:1];
  v63 = self->_travelTimeLabel;
  v64 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)v63 setTextColor:v64];

  v65 = self->_travelTimeLabel;
  v66 = +[UIColor blackColor];
  [(CLKUIColoringLabel *)v65 setShadowColor:v66];

  [v3 addSubview:self->_travelTimeLabel];
  [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setFont:v43];
  [v3 addSubview:self->_cornerTimeLabel];
  v67 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v68 = [CLKFont systemFontOfSize:*&dword_1A230];
  [v67 setFont:v68];

  v69 = +[UIColor whiteColor];
  [v67 setTextColor:v69];

  v89 = v44;
  objc_initWeak(location, v44);
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
    v72 = v3;
    v93 = v72;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v94);
  }

  [(NTKAegirFaceView *)v44 _invalidateTimeLabelStyles];
  [(NTKAegirFaceView *)v44 _applyVista:[(NUNIAstronomyVistaController *)v44->_astronomyController vista]];
  [(NTKAegirFaceView *)v44 _applyViewMode:1];
  [(NTKAegirFaceView *)v44 _applyDataModeAnimated:0];
  [(NTKAegirFaceView *)v44 _updateLocaleAnimated:0];
  [v90 updateSunLocationAnimated:0];
  [(NTKAegirFaceView *)v44 setNeedsLayout];
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
  v83 = [(NTKAegirFaceView *)v89 device];
  v84 = [v74 initWithFrame:v83 forDeviceCornerRadius:{v76, v78, v80, v82}];
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
  v10 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [v10 removeFromSuperview];

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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v6 = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];

  if (v6 != v7)
  {
    [(NUNIAstronomyVistaController *)self->_astronomyController setOverrideDate:v7 animated:a4 > 0.0];
    [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setOverrideDate:v7 duration:0.0];
    [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setOverrideDate:v7 duration:0.0];
    [(NTKDigitalTimeLabel *)self->_cornerTimeLabel setOverrideDate:v7 duration:0.0];
  }
}

- (void)setTimeOffset:(double)a3
{
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setTimeOffset:?];
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelBack setTimeOffset:a3];
  cornerTimeLabel = self->_cornerTimeLabel;

  [(NTKDigitalTimeLabel *)cornerTimeLabel setTimeOffset:a3];
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
  v4 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  randomVistaSnapshot = self->_randomVistaSnapshot;
  self->_randomVistaSnapshot = v5;

  v7 = [(NTKAegirFaceView *)self _randomVistaImage];
  [(UIImageView *)self->_randomVistaSnapshot setImage:v7];
  [(UIImageView *)self->_randomVistaSnapshot setUserInteractionEnabled:0];
  [(UIImageView *)self->_randomVistaSnapshot setAlpha:0.0];
  v8 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [v8 addSubview:self->_randomVistaSnapshot];
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

- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  [(NUNIAstronomyVistaController *)self->_astronomyController cleanUpAfterTransitions:a3];
  astronomyController = self->_astronomyController;

  [(NUNIAstronomyVistaController *)astronomyController prepareForTransitions];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  CLKInterpolateBetweenFloatsClipped();
  v7 = fmin(v6, self->_homeScreenAlphaOverride);
  v8 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [v8 setAlpha:v7];

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

- (void)_configureForEditMode:(int64_t)a3
{
  v5 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  v6 = v5;
  v7 = NTKEditModeBackgroundContentAlpha;
  if (a3 != 1)
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8 = 0.0;
  v9 = 0.0;
  if (!self->_elementOrder)
  {
    v10 = a3 == 13 || a3 == 0;
    v11 = v10 || a3 == 19;
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
    if (a3 == 13 || a3 == 0 || a3 == 19)
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

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 > 14)
  {
    if (a6 == 15)
    {
      v25 = -[NTKAegirFaceView shuffledStyleForStyle:shuffle:](self, "shuffledStyleForStyle:shuffle:", [v12 style], 0);
      v26 = -[NTKAegirFaceView shuffledStyleForStyle:shuffle:](self, "shuffledStyleForStyle:shuffle:", [v13 style], 0);
      [(NUNIAstronomyVistaController *)self->_astronomyController applyTransitionFraction:v25 fromStyle:v26 toStyle:a3];
      if (((v25 & 0xFFFFFFFFFFFFFFFELL) == 2) != ((v26 & 0xFFFFFFFFFFFFFFFELL) == 2))
      {
        [NTKAegirFaceView _applyFromElementOrder:"_applyFromElementOrder:toElementOrder:fraction:" toElementOrder:a3 fraction:?];
      }

      else
      {
        [(NTKAegirFaceView *)self _setElementOrder:?];
      }

      goto LABEL_34;
    }

    if (a6 != 19)
    {
      goto LABEL_34;
    }

    v17 = [v12 numeralOption];
    v18 = [v13 numeralOption];
    if (v17 == v18)
    {
      [(NTKAegirFaceView *)self _setNumerals:v17];
      goto LABEL_34;
    }

    if (a3 >= 0.5)
    {
      v33 = v18;
      CLKMapFractionIntoRange();
      v28 = v34;
      v17 = v33;
    }

    else
    {
      CLKMapFractionIntoRange();
      v28 = v29;
    }

    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v35, v35);
    [(NTKAegirFaceView *)self _setNumerals:v17];
    goto LABEL_28;
  }

  if (a6 != 12)
  {
    if (a6 != 13)
    {
      goto LABEL_34;
    }

    v15 = [v12 typeface];
    v16 = [v13 typeface];
    if (v15 == v16)
    {
      [(NTKAegirFaceView *)self _setTypeface:v15];
      goto LABEL_34;
    }

    if (a3 >= 0.5)
    {
      v30 = v16;
      CLKMapFractionIntoRange();
      v28 = v31;
      v15 = v30;
    }

    else
    {
      CLKMapFractionIntoRange();
      v28 = v27;
    }

    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v32, v32);
    [(NTKAegirFaceView *)self _setTypeface:v15];
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

  v19 = [v12 vista];
  v20 = [v13 vista];
  v21 = [(NTKAegirFaceView *)self shuffledVistaForVista:v19 shuffle:0];
  v22 = [(NTKAegirFaceView *)self shuffledVistaForVista:v20 shuffle:0];
  [(NUNIAstronomyVistaController *)self->_astronomyController applyTransitionFraction:v21 fromVista:v22 toVista:a3];
  [(NTKAegirFaceView *)self _applyFromVista:v21 toVista:v22 fraction:a3];
  if (v20 == &dword_8 + 2 && v19 == &dword_8 + 2)
  {
    [(NTKAegirFaceView *)self _applyOption:v12 forCustomEditMode:12 slot:0];
    randomVistaSnapshot = self->_randomVistaSnapshot;
    v24 = 1.0;
  }

  else if (v20 == &dword_8 + 2)
  {
    [(NTKAegirFaceView *)self _applyOption:v12 forCustomEditMode:12 slot:0];
    randomVistaSnapshot = self->_randomVistaSnapshot;
    v24 = a3;
  }

  else if (v19 == &dword_8 + 2)
  {
    [(NTKAegirFaceView *)self _applyOption:v13 forCustomEditMode:12 slot:0];
    v24 = 1.0 - a3;
    randomVistaSnapshot = self->_randomVistaSnapshot;
  }

  else
  {
    randomVistaSnapshot = self->_randomVistaSnapshot;
    v24 = 0.0;
  }

  [(UIImageView *)randomVistaSnapshot setAlpha:v24];
LABEL_34:
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (a4 > 14)
  {
    if (a4 == 15)
    {
      v11 = [v14 style];
      v12 = [(NTKAegirFaceView *)self shuffledStyleForStyle:v11 shuffle:0];
      [(NUNIAstronomyVistaController *)self->_astronomyController applyStyle:v12];
      if (v11 != &dword_4 + 3)
      {
        [(NTKAegirFaceView *)self shuffleRandomStyle];
      }

      [(NTKAegirFaceView *)self _setElementOrder:(v12 & 0xFFFFFFFFFFFFFFFELL) == 2];
    }

    else if (a4 == 19)
    {
      -[NTKAegirFaceView _setNumerals:](self, "_setNumerals:", [v14 numeralOption]);
    }
  }

  else if (a4 == 12)
  {
    v9 = [v14 vista];
    v10 = [(NTKAegirFaceView *)self shuffledVistaForVista:v9 shuffle:0];
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
    if (v9 == &dword_8 + 2)
    {
      v13 = 1.0;
    }

    [(UIImageView *)self->_randomVistaSnapshot setAlpha:v13];
  }

  else if (a4 == 13)
  {
    -[NTKAegirFaceView _setTypeface:](self, "_setTypeface:", [v14 typeface]);
  }
}

- (unint64_t)shuffledVistaForVista:(unint64_t)a3 shuffle:(BOOL)a4
{
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      v9 = 3;
      if (a3 != 7)
      {
        v9 = 0;
      }

      if (a3 == 6)
      {
        return 7;
      }

      else
      {
        return v9;
      }
    }

    else if (a3 != 8 && a3 != 9)
    {
      if (a3 == 10)
      {
        if (a4)
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
    if (a3 != 5)
    {
      v6 = 0;
    }

    if (a3 != 4)
    {
      v5 = v6;
    }

    if (a3 != 3)
    {
      v4 = v5;
    }

    if (a3 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (a3 == 1)
    {
      v7 = 1;
    }

    if (a3 <= 2)
    {
      return v7;
    }

    else
    {
      return v4;
    }
  }

  return a3;
}

- (unint64_t)shuffledStyleForStyle:(unint64_t)a3 shuffle:(BOOL)a4
{
  if (a3 <= 3)
  {
    if (a3 == 3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (a3 == 2)
    {
      v4 = 2;
    }

    v5 = a3 == 1;
    goto LABEL_13;
  }

  if (a3 <= 5)
  {
    if (a3 == 5)
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }

    v5 = a3 == 4;
LABEL_13:
    if (!v5)
    {
      return v4;
    }

    return a3;
  }

  if (a3 != 6)
  {
    if (a3 == 7)
    {
      if (a4)
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

  return a3;
}

- (void)_applyShowContentForUnadornedSnapshot
{
  [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setHidden:[(NTKAegirFaceView *)self showContentForUnadornedSnapshot]];
  centerTimeLabelBack = self->_centerTimeLabelBack;
  v4 = [(NTKAegirFaceView *)self showContentForUnadornedSnapshot];

  [(NTKDigitalTimeLabel *)centerTimeLabelBack setHidden:v4];
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

  v11 = [(NTKAegirFaceView *)self device];
  [(NTKAegirFaceView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v11 weight:v13 forDevice:v15, v17, v19, UIFontWeightSemibold];
  v22 = [v21 layoutRule];
  [v22 referenceFrame];
  v24 = v23;

  v25 = [(CLKUIColoringLabel *)self->_travelTimeLabel text];
  travelTimeLabel = self->_travelTimeLabel;
  v27 = sub_4820();
  [(CLKUIColoringLabel *)travelTimeLabel setText:v27];

  [(CLKUIColoringLabel *)self->_travelTimeLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_travelTimeLabel frame];
  v29 = v28;
  [(CLKUIColoringLabel *)self->_travelTimeLabel setText:v25];
  v30 = [(NTKAegirFaceView *)self device];
  sub_22BC(v30, v30);
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
  v2 = [(NTKAegirFaceView *)self device];
  sub_22BC(v2, v2);

  return *&qword_1A258;
}

- (CGRect)_topComplicationFrame
{
  [(NTKAegirFaceView *)self bounds];
  v3 = [(NTKAegirFaceView *)self device];
  sub_22BC(v3, v3);
  v4 = [(NTKAegirFaceView *)self topComplicationFont];
  [v4 ascender];
  [v4 descender];
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

- (void)_setTypeface:(unint64_t)a3
{
  if (self->_typeface != a3)
  {
    self->_typeface = a3;
    [(NTKAegirFaceView *)self _invalidateTimeLabelStyles];
  }
}

- (void)_setNumerals:(unint64_t)a3
{
  if (self->_numeralOption != a3)
  {
    self->_numeralOption = a3;
    v4 = [(NTKAegirFaceView *)self device];
    v5 = NTKShowIndicScriptNumerals();

    if (v5)
    {

      [(NTKAegirFaceView *)self _invalidateTimeLabelStyles];
    }
  }
}

- (void)_setElementOrder:(unint64_t)a3
{
  if (self->_elementOrder != a3)
  {
    self->_elementOrder = a3;
    v6 = [(NTKAegirFaceView *)self fromEditMode];
    v7 = 0.0;
    v8 = 0.0;
    if (!a3)
    {
      v9 = v6 == &dword_C + 1 || v6 == 0;
      v10 = v9 || v6 == &dword_10 + 3;
      v8 = NTKEditModeDimmedAlpha;
      if (v10)
      {
        v8 = 1.0;
      }
    }

    [(NTKDigitalTimeLabel *)self->_centerTimeLabelFront setAlpha:fmin(v8, self->_homeScreenAlphaOverride)];
    centerTimeLabelBack = self->_centerTimeLabelBack;
    if (a3 == 1)
    {
      if (v6 == &dword_C + 1 || v6 == 0 || v6 == &dword_10 + 3)
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

- (void)_applyFromElementOrder:(unint64_t)a3 toElementOrder:(unint64_t)a4 fraction:(double)a5
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
  v7 = [(NTKAegirFaceView *)self device];
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

- (id)_centerTimeLabelStyleForViewMode:(int64_t)a3
{
  [(NTKAegirFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKAegirFaceView *)self device];
  v14 = v13;
  if (a3 == 2)
  {
    v15 = sub_5724(v13, v6, v8, v10, v12);
    [v15 pointSize];
    v17 = sub_54F8(v16, v14, self->_typeface, self->_numeralOption);
    v18 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v17 withFont:v14 forDevice:v6, v8, v10, v12];
  }

  else
  {
    v15 = sub_54F8(round(v12 * 0.198660714), v13, self->_typeface, self->_numeralOption);
    v18 = sub_564C(v14, v15, v6, v8, v10, v12);
  }

  return v18;
}

- (id)_cornerTimeLabelStyleForViewMode:(int64_t)a3
{
  [(NTKAegirFaceView *)self bounds];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  v13 = [(NTKAegirFaceView *)self device];
  v14 = v13;
  if (a3 == 2)
  {
    v15 = sub_5724(v13, x, y, width, height);
    v16 = [(NTKAegirFaceView *)self device];
    sub_22BC(v16, v16);

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

    v17 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v15 withFont:v14 forDevice:x, y, width, height];
  }

  else
  {
    v18 = [(NTKAegirFaceView *)self device];
    v15 = sub_5994(round(height * 0.198660714));

    v17 = sub_564C(v14, v15, x, y, width, height);
  }

  v19 = v17;

  return v19;
}

- (void)_prepareToZoom
{
  v5.receiver = self;
  v5.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v5 _prepareToZoom];
  v3 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  v4 = [v3 scene];

  [v4 setUpdatable:0];
}

- (void)_cleanupAfterZoom
{
  v5.receiver = self;
  v5.super_class = NTKAegirFaceView;
  [(NTKAegirFaceView *)&v5 _cleanupAfterZoom];
  v3 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
  v4 = [v3 scene];

  [v4 setUpdatable:1];
}

- (BOOL)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
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

- (void)exitInteractiveModeAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(NTKAegirFaceView *)self _styleOptionIsRandom])
  {
    [(NUNIAstronomyVistaController *)self->_astronomyController setStyle:self->_currentShuffledStyle];
  }

  if (v4)
  {
    [(NTKAegirFaceView *)self _animateTransitionToViewMode:0 completion:v7];
LABEL_9:
    v6 = v7;
    goto LABEL_10;
  }

  [(NTKAegirFaceView *)self _setViewMode:0];
  if ([(NTKAegirFaceView *)self _styleOptionIsRandom])
  {
    [(NUNIAstronomyVistaController *)self->_astronomyController applyStyle:self->_currentShuffledStyle];
  }

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7);
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

- (void)_enableCrownForAegirVista:(unint64_t)a3
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

- (void)astronomyVistaControllerWillEnterInteractiveMode:(id)a3
{
  if ([(NTKAegirFaceView *)self _canEnterInteractiveMode])
  {

    [(NTKAegirFaceView *)self _animateTransitionToViewMode:2];
  }
}

- (void)_applyVista:(unint64_t)a3
{
  [(NUNIAstronomyVistaController *)self->_astronomyController setVista:a3];
  astronomyController = self->_astronomyController;

  [(NUNIAstronomyVistaController *)astronomyController updateTimeAnimated:0];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  v7 = a3 - 12;
  if (a3 - 12) < 8 && ((0x8Bu >> v7))
  {
    v8 = (&off_14760)[v7];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___NTKAegirFaceView;
    v8 = objc_msgSendSuper2(&v10, "_swatchForEditModeDependsOnOptions:forDevice:", a3, v6);
  }

  return v8;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 > 14)
  {
    if (a4 != 15)
    {
      if (a4 == 19)
      {
        +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v8 swatchStyle]);
        v15 = v14;
        v17 = v16;
        v18 = [(NTKAegirFaceView *)self device];
        v19 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:v18 weight:0.0 forDevice:0.0, v15, v17, UIFontWeightSemibold];
        v20 = [v19 designatorFont];
        [v20 pointSize];
        v22 = v21;

        v23 = [(NTKAegirFaceView *)self device];
        v24 = sub_54F8(v22, v23, self->_typeface, [v8 numeralOption]);

        v25 = [(NTKAegirFaceView *)self device];
        v13 = [v8 swatchImageWithFont:v24 device:v25 baseline:0.3125];

        goto LABEL_16;
      }

      goto LABEL_8;
    }

    v11 = [v9 objectForKeyedSubscript:&off_15788];
    v27 = self;
    v28 = v11;
    v29 = v8;
    goto LABEL_13;
  }

  if (a4 == 12)
  {
    v11 = [v9 objectForKeyedSubscript:&off_157A0];
    if ([v8 vista] == &dword_8 + 2)
    {
      v26 = [(NTKAegirFaceView *)self _randomVistaImage];
LABEL_14:
      v13 = v26;
      goto LABEL_15;
    }

    v27 = self;
    v28 = v8;
    v29 = v11;
LABEL_13:
    v26 = [(NTKAegirFaceView *)v27 _vistaSwatchForVistaOption:v28 styleOption:v29];
    goto LABEL_14;
  }

  if (a4 != 13)
  {
LABEL_8:
    v31.receiver = self;
    v31.super_class = NTKAegirFaceView;
    v13 = [(NTKAegirFaceView *)&v31 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
    goto LABEL_16;
  }

  v11 = [v9 objectForKeyedSubscript:&off_15788];
  v12 = [v10 objectForKeyedSubscript:&off_157A0];
  v13 = [(NTKAegirFaceView *)self _typefaceSwatchForTypefaceOption:v8 vistaOption:v11 styleOption:v12];

LABEL_15:
LABEL_16:

  return v13;
}

- (id)_numeralSwatchForNumeralOption:(id)a3 typefaceOption:(id)a4 vistaOption:(id)a5 styleOption:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_1A288 != -1)
  {
    sub_9AEC();
  }

  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 numeralOption]);
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 vista]);
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 style]);
  v17 = [NSString stringWithFormat:@"%@-%@-%@", v14, v15, v16];

  v18 = [qword_1A280 objectForKey:v17];
  if (!v18)
  {
    v18 = [(NTKAegirFaceView *)self _renderNumeralSwatchForNumeralOption:v10 typefaceOption:v11 vistaOption:v12 styleOption:v13];
    [qword_1A280 setObject:v18 forKey:v17];
  }

  return v18;
}

- (id)_renderNumeralSwatchForNumeralOption:(id)a3 typefaceOption:(id)a4 vistaOption:(id)a5 styleOption:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(NTKAegirFaceView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [NTKAegirFaceView alloc];
  v23 = [(NTKAegirFaceView *)self device];
  v24 = [(NTKAegirFaceView *)v22 initWithFaceStyle:44 forDevice:v23 clientIdentifier:0];

  [v24 setFrame:{v15, v17, v19, v21}];
  [v24 _loadSnapshotContentViews];
  v25 = [v13 numeralOption];

  [v24 _setNumerals:v25];
  [v24 setOption:v12 forCustomEditMode:13 slot:0];

  [v24 setOption:v11 forCustomEditMode:12 slot:0];
  [v24 setOption:v10 forCustomEditMode:15 slot:0];
  v26 = NTKIdealizedDate();
  [v24 setOverrideDate:v26 duration:0.0];

  v27 = [(NTKAegirFaceView *)self _vistaSwatchForVistaOption:v11 styleOption:v10];

  v28 = [v24[6] vistaView];
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
  v36 = v28;
  v30 = v28;
  v31 = v27;
  v32 = [v29 imageWithActions:v34];

  return v32;
}

- (id)_typefaceSwatchForTypefaceOption:(id)a3 vistaOption:(id)a4 styleOption:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1A298 != -1)
  {
    sub_9B00();
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 typeface]);
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 vista]);
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 style]);
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, v13];

  v15 = [qword_1A290 objectForKey:v14];
  if (!v15)
  {
    v15 = [(NTKAegirFaceView *)self _renderTypefaceSwatchForTypefaceOption:v8 vistaOption:v9 styleOption:v10];
    [qword_1A290 setObject:v15 forKey:v14];
  }

  return v15;
}

- (id)_renderTypefaceSwatchForTypefaceOption:(id)a3 vistaOption:(id)a4 styleOption:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
  v12 = v11;
  v14 = v13;
  v15 = [NTKAegirFaceView alloc];
  v16 = [(NTKAegirFaceView *)self device];
  v17 = [(NTKAegirFaceView *)v15 initWithFaceStyle:44 forDevice:v16 clientIdentifier:0];

  [v17 setFrame:{0.0, 0.0, v12, v14}];
  [v17 _loadSnapshotContentViews];
  [v17 setOption:v10 forCustomEditMode:13 slot:0];

  v18 = NTKIdealizedDate();
  [v17 setOverrideDate:v18 duration:0.0];

  v19 = [(NTKAegirFaceView *)self _vistaSwatchForVistaOption:v9 styleOption:v8];

  v20 = [v17[6] vistaView];
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
  v28 = v20;
  v22 = v20;
  v23 = v19;
  v24 = [v21 imageWithActions:v26];

  return v24;
}

- (id)_vistaSwatchForVistaOption:(id)a3 styleOption:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1A2A8 != -1)
  {
    sub_9B14();
  }

  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 vista]);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 style]);
  v10 = [NSString stringWithFormat:@"%@-%@", v8, v9];

  v11 = [qword_1A2A0 objectForKey:v10];
  if (!v11)
  {
    v11 = [(NTKAegirFaceView *)self _renderVistaSwatchForVistaOption:v6 styleOption:v7];
    [qword_1A2A0 setObject:v11 forKey:v10];
  }

  return v11;
}

- (id)_renderVistaSwatchForVistaOption:(id)a3 styleOption:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKAegirFaceView *)self device];
  v9 = [[NTKAegirFaceView alloc] initWithFaceStyle:44 forDevice:v8 clientIdentifier:0];
  [(NTKAegirFaceView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(NTKAegirFaceView *)v9 setFrame:?];
  [(NTKAegirFaceView *)v9 _loadSnapshotContentViews];
  [(NTKAegirFaceView *)v9 setOption:v6 forCustomEditMode:12 slot:0];
  [(NTKAegirFaceView *)v9 setOption:v7 forCustomEditMode:15 slot:0];

  v18 = NTKIdealizedDate();
  [(NTKAegirFaceView *)v9 setOverrideDate:v18 duration:0.0];

  v19 = [(NUNIAstronomyVistaController *)v9->_astronomyController vistaView];
  v20 = [v19 quadViews];
  v21 = [v20 lastObject];

  objc_opt_class();
  v22 = 0;
  if (objc_opt_isKindOfClass())
  {
    [v8 screenScale];
    v24 = [v21 snapshotInRect:v11 scale:v13 time:{v15, v17, v23, 0.0}];
    +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v6 swatchStyle]);
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
  v3 = [(NTKAegirFaceView *)self device];
  v4 = [NTKDigitalTimeLabel labelWithOptions:1 forDevice:v3];

  [v4 setUsesLegibility:1];
  v5 = +[UIColor whiteColor];
  [v4 setTextColor:v5];

  v6 = +[NTKTimeOffsetManager sharedManager];
  [v6 timeOffset];
  [v4 setTimeOffset:?];

  v7 = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];
  [v4 setOverrideDate:v7 duration:0.0];

  return v4;
}

- (id)_createVistaView
{
  v3 = [(NTKAegirFaceView *)self device];
  sub_22BC(v3, v3);
  v4 = dword_1A234;
  v6 = dword_1A23C;
  v5 = dword_1A240;
  v7 = dword_1A244;
  [(NTKAegirFaceView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:v3];
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

- (void)_interpolateFromPose:(const NTKAegirFaceViewAnimationPose *)a3 toPose:(const NTKAegirFaceViewAnimationPose *)a4 progress:(float)a5
{
  v8 = [(NTKAegirFaceView *)self device];
  sub_22BC(v8, v8);

  IsRTL = CLKLayoutIsRTL();
  if (IsRTL)
  {
    v10 = [(NTKAegirFaceView *)self device];
    [v10 screenBounds];
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
      var1 = a3->var1;
      v18 = a4->var1;
      v19 = v16;
      CLKInterpolateBetweenFloatsClipped();
      [v19 setAlpha:?];
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      var0 = a3->var0;
      v27 = a4->var0;
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
    var4 = a3->var4;
    v30 = a4->var4;
    CLKInterpolateBetweenFloatsClipped();
    v32 = v31;
    [(CLKUIColoringLabel *)self->_travelTimeLabel setAlpha:?];
    [(CLKUIColoringLabel *)self->_scrubLabel setAlpha:v32];
    var3 = a3->var3;
    v34 = a4->var3;
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
    var6 = a3->var6;
    v46 = a4->var6;
    CLKInterpolateBetweenFloatsClipped();
    [(CLKUIColoringLabel *)phaseLabel setAlpha:?];
    complicationFactory = self->_complicationFactory;
    var2 = a3->var2;
    v49 = a4->var2;
    CLKInterpolateBetweenFloatsClipped();

    [(NTKAegirFaceViewComplicationFactory *)complicationFactory setAlpha:self faceView:?];
  }
}

- (id)_date
{
  v3 = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];
  if (v3)
  {
    v4 = [(NUNIAstronomyVistaController *)self->_astronomyController overrideDate];
  }

  else
  {
    crownDate = self->_crownDate;
    if (crownDate)
    {
      v4 = crownDate;
    }

    else
    {
      v4 = +[NTKDate faceDate];
    }
  }

  v6 = v4;

  return v6;
}

- (void)_animateTransitionToViewMode:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v10 = v6;
  if ((*(self + 328) & 1) == 0)
  {
    if (self->_viewMode == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (self->_animatingToViewMode != a3)
  {
LABEL_5:
    self->_animatingToViewMode = a3;
    [(NUNIAstronomyVistaController *)self->_astronomyController animateTransitionToMode:a3];
    [(NTKDelayedBlock *)self->_wheelDelayedBlock cancel];
    wheelDelayedBlock = self->_wheelDelayedBlock;
    self->_wheelDelayedBlock = 0;

    [(NTKDelayedBlock *)self->_physicalButtonDelayedBlock cancel];
    physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
    self->_physicalButtonDelayedBlock = 0;

    *(self + 328) |= 1u;
    [(NUNIAstronomyVistaController *)self->_astronomyController setVista:[(NUNIAstronomyVistaController *)self->_astronomyController vista]];
    v9 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
    [v9 showSupplemental:a3 == 3 animated:0];

    [(NTKAegirFaceView *)self _setIsAnimatingViewMode:0];
    [(NTKAegirFaceView *)self _setViewMode:a3];
    v6 = v10;
  }

LABEL_6:
  if (v6)
  {
    v6[2](v10);
    v6 = v10;
  }
}

- (void)_setViewMode:(int64_t)a3
{
  if (self->_viewMode != a3 || (*(self + 328) & 1) != 0)
  {
    [(NTKAegirFaceView *)self _applyViewMode:?];
  }
}

- (void)_applyViewMode:(int64_t)a3
{
  self->_viewMode = a3;
  [(NTKAegirFaceView *)self _invalidateTimeLabelStyles];
  *(self + 328) &= ~1u;
  v5 = [(NTKAegirFaceView *)self delegate];
  [v5 faceViewWantsStatusBarHidden:-[NTKAegirFaceView _shouldHideStatusBarForViewMode:](self animated:{"_shouldHideStatusBarForViewMode:", a3), 0}];

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
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

  if (a3 != 2)
  {
    if (a3 == 3)
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
  v9 = [(NUNIAstronomyVistaController *)self->_astronomyController vista];
  v10 = 28;
  if (v9 == &dword_0 + 1)
  {
    v10 = 56;
  }

  v8 = &unk_10FD8 + v10;
LABEL_13:
  LODWORD(v7) = 1.0;
  [(NTKAegirFaceView *)self _interpolateFromPose:v8 toPose:v8 progress:v7];
  v11 = *p_astronomyController;

  [(NUNIAstronomyVistaController *)v11 applyMode:a3];
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
  v3 = [(NUNIAstronomyVistaController *)self->_astronomyController vista];

  [(NTKAegirFaceView *)self _enableCrownForAegirVista:v3];
}

- (void)_applyDataMode
{
  v3 = [(NTKAegirFaceView *)self dataMode];
  if (v3 == &dword_0 + 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 != &dword_0 + 2 && self->_previousDataMode == 1;
  }

  [(NTKAegirFaceView *)self _applyDataModeAnimated:v4];
}

- (void)_applyDataModeAnimated:(BOOL)a3
{
  if (([(NTKAegirFaceView *)self zooming]& 1) == 0)
  {
    viewMode = self->_viewMode;
    v6 = [(NTKAegirFaceView *)self dataMode];
    if (self->_previousDataMode != v6)
    {
      self->_previousDataMode = v6;
    }

    if (v6 == &dword_0 + 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NTKAegirFaceView *)self editing]^ 1;
    }

    if (((*(self + 328) & 1) != 0 || v7 != viewMode) && ((*(self + 328) & 1) == 0 || v7 != self->_animatingToViewMode || !a3))
    {
      if (a3)
      {

        [(NTKAegirFaceView *)self _animateTransitionToViewMode:v7];
      }

      else
      {
        v8 = [(NUNIAstronomyVistaController *)self->_astronomyController vistaView];
        [v8 updateSunLocationAnimated:0];

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

- (void)_layoutSpheroidLabel:(int)a3
{
  v5 = self->_spheroidLabels[a3];
  if (v5)
  {
    v18 = v5;
    v6 = [(NTKAegirFaceView *)self device];
    sub_22BC(v6, v6);

    LODWORD(v6) = CLKLayoutIsRTL();
    v7 = [(NTKAegirFaceView *)self device];
    [v7 screenBounds];
    v9 = v8 - *&dword_1A23C - *&dword_1A240;

    v10 = *&dword_1A23C + v9 / 7.0 * a3;
    [(UIImageView *)v18 sizeToFit];
    [(UIImageView *)v18 frame];
    v12 = v11;
    v14 = v13;
    if (v6)
    {
      v15 = [(NTKAegirFaceView *)self device];
      [v15 screenBounds];
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
  v4 = [(NTKAegirFaceView *)self device];
  [(NTKAegirFaceView *)self bounds];
  v5 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:"smallInUpperRightCornerStyleForBounds:weight:forDevice:" weight:v4 forDevice:?];
  v6 = [v5 designatorFont];
  [v6 pointSize];
  v8 = v7;

  v9 = [(NTKAegirFaceView *)self device];
  LODWORD(v5) = NTKShowIndicScriptNumerals();

  if (v5)
  {
    v10 = [(NTKAegirFaceView *)self optionForCustomEditMode:19 slot:0];
    [v10 numeralOption];

    v11 = [NSNumber numberWithUnsignedInteger:CLKLocaleNumberSystemFromNumeralOption()];
    [v3 setForcedNumberSystem:v11];
  }

  v12 = [(NTKAegirFaceView *)self device];
  v13 = sub_54F8(v8, v12, 1, self->_numeralOption);
  [v3 setTimeLabelFont:v13];

  return v3;
}

- (id)_homeScreenDateLabelFont
{
  v3 = [(NTKAegirFaceView *)self device];
  [(NTKAegirFaceView *)self bounds];
  v4 = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:"smallInUpperRightCornerStyleForBounds:weight:forDevice:" weight:v3 forDevice:?];
  v5 = [v4 designatorFont];
  [v5 pointSize];
  v7 = v6;

  return [CLKFont systemFontOfSize:v7];
}

@end