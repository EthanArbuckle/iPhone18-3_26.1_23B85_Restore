@interface NTKAstronomyFaceView
- (BOOL)_wheelChangedWithEvent:(id)event;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (NTKAstronomyFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_date;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (void)_animateTransitionToViewMode:(int64_t)mode completion:(id)completion;
- (void)_applyDataMode;
- (void)_applyDataModeAnimated:(BOOL)animated;
- (void)_applyFromVista:(unint64_t)vista toVista:(unint64_t)toVista fraction:(double)fraction;
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
- (void)_cleanupAfterZoom;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_disableCrown;
- (void)_enableCrownForAstronomyVista:(unint64_t)vista;
- (void)_handleInteractiveModeGesture:(id)gesture;
- (void)_handleSpheroidPanGesture:(id)gesture;
- (void)_handleSupplementalModeGesture:(id)gesture;
- (void)_hideLocationDot;
- (void)_interpolateFromPose:(const NTKAstronomyFaceViewAnimationPose *)pose toPose:(const NTKAstronomyFaceViewAnimationPose *)toPose progress:(float)progress;
- (void)_layoutForegroundContainerView;
- (void)_layoutLegacyViews;
- (void)_layoutPhaseLabel;
- (void)_layoutSpheroidLabel:(int)label;
- (void)_loadSnapshotContentViews;
- (void)_physicalButtonDelayedBlockFired;
- (void)_prepareForEditing;
- (void)_prepareToZoom;
- (void)_setAstronomyFaceViewModeDefault;
- (void)_setAstronomyFaceViewModeInteractive;
- (void)_setAstronomyFaceViewModeNonInteractive;
- (void)_setAstronomyFaceViewModeSupplemental;
- (void)_setupAstronomyVistaView;
- (void)_showLocationDotIfNeeded;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_unloadSnapshotContentViews;
- (void)_updateLocation:(id)location lastLocation:(id)lastLocation;
- (void)_wheelDelayedBlockFired;
- (void)astronomyVistaViewContentsAnimationFinished:(id)finished;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
- (void)setViewMode:(int64_t)mode;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKAstronomyFaceView

- (NTKAstronomyFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKAstronomyFaceView;
  v9 = [(NTKAstronomyFaceView *)&v13 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)v9->_faceViewComplicationFactory setUsesLegibility:1 faceView:v9];
  }

  return v9;
}

- (void)dealloc
{
  [(NTKAstronomyFaceView *)self _unloadSnapshotContentViews];
  v3.receiver = self;
  v3.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v3 dealloc];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  interactiveModeTapGesture = self->_interactiveModeTapGesture;
  v8 = (interactiveModeTapGesture == recognizer || self->_spheroidPanGesture == recognizer) && (interactiveModeTapGesture == gestureRecognizerCopy || self->_spheroidPanGesture == gestureRecognizerCopy);

  return v8;
}

- (void)_interpolateFromPose:(const NTKAstronomyFaceViewAnimationPose *)pose toPose:(const NTKAstronomyFaceViewAnimationPose *)toPose progress:(float)progress
{
  device = [(NTKAstronomyFaceView *)self device];
  sub_1200(device, device);

  IsRTL = CLKLayoutIsRTL();
  if (IsRTL)
  {
    device2 = [(NTKAstronomyFaceView *)self device];
    [device2 screenBounds];
    v12 = v11 - *&dword_1575C;
  }

  else
  {
    v12 = *&dword_1575C;
  }

  v13 = v12;
  v14 = 160;
  v15 = 8;
  do
  {
    v16 = *&self->NTKDigitalFaceView_opaque[v14];
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
  if (([(NTKAstronomyFaceView *)self editing]& 1) == 0)
  {
    timeView = [(NTKAstronomyFaceView *)self timeView];
    var3 = pose->var3;
    v31 = toPose->var3;
    CLKInterpolateBetweenFloatsClipped();
    [timeView setAlpha:?];

    overrideDateLabel = self->_overrideDateLabel;
    var4 = pose->var4;
    v34 = toPose->var4;
    CLKInterpolateBetweenFloatsClipped();
    [(CLKUIColoringLabel *)overrideDateLabel setAlpha:?];
    scrubLabel = self->_scrubLabel;
    v36 = pose->var4;
    v37 = toPose->var4;
    CLKInterpolateBetweenFloatsClipped();
    [(CLKUIColoringLabel *)scrubLabel setAlpha:?];
    phaseLabel = self->_phaseLabel;
    var6 = pose->var6;
    v40 = toPose->var6;
    CLKInterpolateBetweenFloatsClipped();
    [(CLKUIColoringLabel *)phaseLabel setAlpha:?];
    faceViewComplicationFactory = self->_faceViewComplicationFactory;
    var2 = pose->var2;
    v43 = toPose->var2;
    CLKInterpolateBetweenFloatsClipped();

    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)faceViewComplicationFactory setAlpha:self faceView:?];
  }
}

- (id)_date
{
  overrideDate = self->_overrideDate;
  if (overrideDate || (overrideDate = self->_crownDate) != 0)
  {
    v3 = overrideDate;
  }

  else
  {
    v3 = +[NTKDate faceDate];
  }

  return v3;
}

- (void)_animateTransitionToViewMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  viewMode = [(NTKAstronomyFaceView *)self viewMode];
  if ((*(self + 416) & 1) == 0 && viewMode == mode || (*(self + 416) & 1) != 0 && self->_animatingToViewMode == mode)
  {
    v7 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    self->_animatingToViewMode = mode;
    [(NTKDelayedBlock *)self->_wheelDelayedBlock cancel];
    wheelDelayedBlock = self->_wheelDelayedBlock;
    self->_wheelDelayedBlock = 0;

    [(NTKDelayedBlock *)self->_physicalButtonDelayedBlock cancel];
    physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
    self->_physicalButtonDelayedBlock = 0;

    *(self + 416) |= 1u;
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView applyVista:self->_vista transitionStyle:0];
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView showSupplemental:mode == 3 animated:0];
    [(NTKAstronomyFaceView *)self _setIsAnimatingViewMode:0];
    [(NTKAstronomyFaceView *)self setViewMode:mode];
  }

  v7 = completionCopy;
LABEL_9:
}

- (void)setViewMode:(int64_t)mode
{
  if (*(self + 416) & 2) != 0 && ([(NTKAstronomyFaceView *)self viewMode]!= mode || (*(self + 416)))
  {

    [(NTKAstronomyFaceView *)self _applyViewMode:mode];
  }
}

- (void)_applyViewMode:(int64_t)mode
{
  v12.receiver = self;
  v12.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v12 setViewMode:?];
  [(NTKAstronomyFaceView *)self invalidateDigitalTimeLabelStyle];
  *(self + 416) &= ~1u;
  delegate = [(NTKAstronomyFaceView *)self delegate];
  [delegate faceViewWantsStatusBarHidden:-[NTKAstronomyFaceView _shouldHideStatusBarForViewMode:](self animated:{"_shouldHideStatusBarForViewMode:", mode), 0}];

  v7 = &unk_991C;
  if (mode <= 1)
  {
    if (mode)
    {
      if (mode != 1)
      {
LABEL_10:
        p_vista = &self->_vista;
        LODWORD(v6) = 1.0;
        [(NTKAstronomyFaceView *)self _interpolateFromPose:v7 toPose:v7 progress:v6];
        if (self->_vista != 2 && ([(NUNIAstronomyRotationModel *)self->_rotationModel isAtHomeCoordinate]& 1) == 0)
        {
          [(NUNIAstronomyRotationModel *)self->_rotationModel stop];
          v9 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:*p_vista];
          [v9 homeCoordinate];
          [v9 setCenterCoordinate:0 animated:?];
        }

        goto LABEL_16;
      }

      [(NTKAstronomyFaceView *)self _setAstronomyFaceViewModeNonInteractive];
    }

    else
    {
      [(NTKAstronomyFaceView *)self _setAstronomyFaceViewModeDefault];
    }

    v7 = &unk_991C;
    goto LABEL_10;
  }

  if (mode != 2)
  {
    if (mode == 3)
    {
      [(NTKAstronomyFaceView *)self _setAstronomyFaceViewModeSupplemental];
      v7 = &unk_98C8;
    }

    goto LABEL_10;
  }

  [(NTKAstronomyFaceView *)self _setAstronomyFaceViewModeInteractive];
  p_vista = &self->_vista;
  v11 = 28;
  if (self->_vista == 1)
  {
    v11 = 56;
  }

  LODWORD(v10) = 1.0;
  [(NTKAstronomyFaceView *)self _interpolateFromPose:&unk_98C8 + v11 toPose:&unk_98C8 + v11 progress:v10];
LABEL_16:
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView applyVista:*p_vista transitionStyle:0];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView showSupplemental:mode == 3 animated:0];
}

- (void)_startClockUpdates
{
  objc_initWeak(&location, self);
  if (!self->_clockTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1F98;
    v6[3] = &unk_103F0;
    objc_copyWeak(&v7, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&stru_10430];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
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

- (void)_setAstronomyFaceViewModeSupplemental
{
  [(NTKAstronomyFaceView *)self _disableCrown];
  overrideDateLabel = self->_overrideDateLabel;
  v4 = sub_2198();
  [(CLKUIColoringLabel *)overrideDateLabel setText:v4];

  [(CLKUIColoringLabel *)self->_scrubLabel setText:&stru_10690];
  [(CLKUIColoringLabel *)self->_phaseLabel setText:&stru_10690];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:1];
  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
  [(NTKAstronomyFaceView *)self _hideLocationDot];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:3];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];

  [(NTKAstronomyFaceView *)self _startClockUpdates];
}

- (void)_setAstronomyFaceViewModeDefault
{
  [(NTKAstronomyFaceView *)self _enableCrownForAstronomyVista:self->_vista];
  overrideDateLabel = self->_overrideDateLabel;
  v4 = sub_2198();
  [(CLKUIColoringLabel *)overrideDateLabel setText:v4];

  [(CLKUIColoringLabel *)self->_scrubLabel setText:&stru_10690];
  [(CLKUIColoringLabel *)self->_phaseLabel setText:&stru_10690];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:0];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:1];
  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
  [(NTKAstronomyFaceView *)self _showLocationDotIfNeeded];
  astronomyVistaView = self->_astronomyVistaView;
  if ([(NTKAstronomyFaceView *)self editing])
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  [(NUNIAstronomyVistaView *)astronomyVistaView setFrameInterval:v6];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];

  [(NTKAstronomyFaceView *)self _startClockUpdates];
}

- (void)_setAstronomyFaceViewModeNonInteractive
{
  [(NTKAstronomyFaceView *)self _disableCrown];
  overrideDateLabel = self->_overrideDateLabel;
  v4 = sub_2198();
  [(CLKUIColoringLabel *)overrideDateLabel setText:v4];

  [(CLKUIColoringLabel *)self->_scrubLabel setText:&stru_10690];
  [(CLKUIColoringLabel *)self->_phaseLabel setText:&stru_10690];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:0];
  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setEnabled:0];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:0];
  [(NTKAstronomyFaceView *)self _hideLocationDot];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:3];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView stopAnimation];

  [(NTKAstronomyFaceView *)self _stopClockUpdates];
}

- (void)_setAstronomyFaceViewModeInteractive
{
  [(NTKAstronomyFaceView *)self _enableCrownForAstronomyVista:self->_vista];
  [(UITapGestureRecognizer *)self->_interactiveModeTapGesture setEnabled:1];
  [(UITapGestureRecognizer *)self->_supplementalModeDoubleTapGesture setEnabled:1];
  [(UIPanGestureRecognizer *)self->_spheroidPanGesture setEnabled:1];
  [(NTKAstronomyFaceView *)self _hideLocationDot];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:0];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];

  [(NTKAstronomyFaceView *)self _startClockUpdates];
}

- (void)_handleInteractiveModeGesture:(id)gesture
{
  if ([gesture state] == &dword_0 + 3 && (*(self + 416) & 1) == 0)
  {
    viewMode = [(NTKAstronomyFaceView *)self viewMode];
    if ((viewMode - 2) >= 2)
    {
      if (viewMode)
      {
        return;
      }

      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [(NTKAstronomyFaceView *)self _animateTransitionToViewMode:v5];
  }
}

- (void)_handleSupplementalModeGesture:(id)gesture
{
  if ([gesture state] == &dword_0 + 3 && (*(self + 416) & 1) == 0 && self->_vista == 2)
  {
    viewMode = [(NTKAstronomyFaceView *)self viewMode];
    v5 = 3;
    if (viewMode && viewMode != &dword_0 + 2)
    {
      if (viewMode != &dword_0 + 3)
      {
        return;
      }

      v5 = 0;
    }

    [(NTKAstronomyFaceView *)self _animateTransitionToViewMode:v5];
  }
}

- (void)_handleSpheroidPanGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_vista != 2 && !self->_overrideDate)
  {
    v32 = gestureCopy;
    rotatable = [(NUNIAstronomyRotationModel *)self->_rotationModel rotatable];
    interactionSettings = [(NUNIAstronomyRotationModel *)self->_rotationModel interactionSettings];
    vista = self->_vista;
    LODWORD(v8) = 1.0;
    v29 = v8;
    if (vista)
    {
      if (vista == 1)
      {
        [(NUNIAstronomyRotationModel *)self->_rotationModel setPulling:1, *&v8];
        v9 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
        [v9 homeCoordinate];
        v10 = v11 < 0.0;
        LODWORD(v11) = 1.0;
        if (v10)
        {
          *&v11 = -1.0;
        }

        v29 = v11;
      }
    }

    else
    {
      [(NUNIAstronomyRotationModel *)self->_rotationModel setPulling:0, *&v8];
    }

    state = [v32 state];
    if (state == &dword_0 + 3)
    {
      rotationModel = self->_rotationModel;
      view = [v32 view];
      [v32 velocityInView:view];
      v28.f64[1] = v27;
      [(NUNIAstronomyRotationModel *)rotationModel push:COERCE_DOUBLE(vmul_f32(interactionSettings[1], vmul_n_f32(vcvt_f32_f64(v28), v30)))];
    }

    else if (state == &dword_0 + 2)
    {
      view2 = [v32 view];
      [v32 translationInView:view2];
      v17.f64[1] = v16;
      v18 = vmul_n_f32(vcvt_f32_f64(v17), v30);

      v19 = vsub_f32(*self->_previousTranslation, v18);
      v20 = sqrtf(COERCE_FLOAT(vmul_f32(v19, v19).i32[1]) + (v19.f32[0] * v19.f32[0]));
      recentMovement = self->_recentMovement;
      if (recentMovement != 0.0)
      {
        v20 = (recentMovement * 0.6) + (v20 * 0.4);
      }

      self->_recentMovement = v20;
      v31 = vmul_f32(v18, *interactionSettings).f32[0];
      *self->_previousTranslation = v18;
      p_initialCoordinate = &self->_initialCoordinate;
      latitude = p_initialCoordinate->latitude;
      NUNIAstronomyClampLatitude();
      [rotatable setCenterCoordinate:{v24, p_initialCoordinate->longitude + v31}];
    }

    else if (state == &dword_0 + 1)
    {
      [(NUNIAstronomyRotationModel *)self->_rotationModel stop];
      [rotatable centerCoordinate];
      self->_recentMovement = 0.0;
      self->_initialCoordinate.latitude = v13;
      self->_initialCoordinate.longitude = v14;
      *self->_previousTranslation = 0;
    }

    gestureCopy = v32;
  }
}

- (void)astronomyVistaViewContentsAnimationFinished:(id)finished
{
  if (([(NTKAstronomyFaceView *)self viewMode]& 0xFFFFFFFFFFFFFFFDLL) == 0 && (*(self + 416) & 1) == 0)
  {
    [(NTKAstronomyFaceView *)self _enableCrownForAstronomyVista:self->_vista];
  }

  [(NTKAstronomyFaceView *)self _showLocationDotIfNeeded];

  kdebug_trace();
}

- (void)_applyDataMode
{
  dataMode = [(NTKAstronomyFaceView *)self dataMode];
  if (dataMode == &dword_0 + 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = dataMode != &dword_0 + 2 && self->_previousDataMode == 1;
  }

  [(NTKAstronomyFaceView *)self _applyDataModeAnimated:v4];
}

- (void)_applyDataModeAnimated:(BOOL)animated
{
  if ((*(self + 416) & 2) != 0 && ([(NTKAstronomyFaceView *)self zooming]& 1) == 0)
  {
    viewMode = [(NTKAstronomyFaceView *)self viewMode];
    dataMode = [(NTKAstronomyFaceView *)self dataMode];
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
      v7 = ([(NTKAstronomyFaceView *)self editing]^ 1);
    }

    if (((*(self + 416) & 1) != 0 || v7 != viewMode) && ((*(self + 416) & 1) == 0 || v7 != self->_animatingToViewMode || !animated))
    {
      if (animated)
      {

        [(NTKAstronomyFaceView *)self _animateTransitionToViewMode:v7];
      }

      else
      {
        [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:0];

        [(NTKAstronomyFaceView *)self _applyViewMode:v7];
      }
    }
  }
}

- (void)_loadSnapshotContentViews
{
  v103.receiver = self;
  v103.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v103 _loadSnapshotContentViews];
  if ((*(self + 416) & 2) == 0)
  {
    foregroundContainerView = [(NTKAstronomyFaceView *)self foregroundContainerView];
    v102.receiver = self;
    v102.super_class = NTKAstronomyFaceView;
    [(NTKAstronomyFaceView *)&v102 setViewMode:1];
    *(self + 416) &= ~1u;
    *(self + 416) &= ~8u;
    v4 = objc_opt_new();
    rotationModel = self->_rotationModel;
    self->_rotationModel = v4;

    [(NUNIAstronomyRotationModel *)self->_rotationModel setObserver:self];
    v6 = objc_opt_new();
    v7 = self->_scrubDateFormatter[0];
    self->_scrubDateFormatter[0] = v6;

    v8 = objc_opt_new();
    v9 = self->_scrubDateFormatter[1];
    self->_scrubDateFormatter[1] = v8;

    v10 = objc_opt_new();
    v11 = self->_scrubDateFormatter[2];
    self->_scrubDateFormatter[2] = v10;

    device = [(NTKAstronomyFaceView *)self device];
    sub_1200(device, device);

    [(NTKAstronomyFaceView *)self _setupAstronomyVistaView];
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView setObserver:self];
    v13 = +[NTKLocationManager sharedLocationManager];
    currentLocation = [v13 currentLocation];

    v15 = *(self + 416);
    v93 = v13;
    if (currentLocation)
    {
      *(self + 416) = v15 | 4;
      [v13 currentLocation];
    }

    else
    {
      *(self + 416) = v15 & 0xFB;
      [v13 anyLocation];
    }
    v16 = ;
    [v16 coordinate];
    v18 = v17;
    v20 = v19;

    v21 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
    v22 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:1];
    [v22 setHomeCoordinate:{0.0, 0.0}];
    v91 = v22;
    [v22 setCenterCoordinate:{0.0, 0.0}];
    [v21 setHomeCoordinate:{v18, v20}];
    v92 = v21;
    [v21 setCenterCoordinate:{v18, v20}];
    timeView = [(NTKAstronomyFaceView *)self timeView];
    [timeView setOverrideDate:self->_overrideDate duration:0.0];

    v24 = +[NSLocale currentLocale];
    v25 = [v24 objectForKey:NSLocaleLanguageCode];

    device2 = [(NTKAstronomyFaceView *)self device];
    LODWORD(v22) = [device2 nrDeviceVersion];

    if (v22 >> 16 <= 4)
    {
      v27 = [NTKDateComplicationLabel alloc];
      device3 = [(NTKAstronomyFaceView *)self device];
      v29 = [v27 initWithSizeStyle:1 accentType:1 forDevice:device3];
      legacyDateLabel = self->_legacyDateLabel;
      self->_legacyDateLabel = v29;

      v31 = [CLKFont systemFontOfSize:*&dword_15750];
      [(NTKDateComplicationLabel *)self->_legacyDateLabel setFont:v31];

      v32 = +[UIColor whiteColor];
      [(NTKDateComplicationLabel *)self->_legacyDateLabel setTextColor:v32];

      if ([v25 isEqualToString:@"he"])
      {
        v33 = 2048;
      }

      else
      {
        v33 = 8;
      }

      [(NTKDateComplicationLabel *)self->_legacyDateLabel setOverrideDateStyle:v33];
      [(NTKDateComplicationLabel *)self->_legacyDateLabel setUserInteractionEnabled:0];
      [(NTKAstronomyFaceView *)self addSubview:self->_legacyDateLabel];
      v34 = [UIImageView alloc];
      v35 = NTKImageNamed();
      v36 = [v34 initWithImage:v35];
      legacyLeftBottomImageView = self->_legacyLeftBottomImageView;
      self->_legacyLeftBottomImageView = v36;

      [(UIImageView *)self->_legacyLeftBottomImageView setUserInteractionEnabled:0];
      [(NTKAstronomyFaceView *)self addSubview:self->_legacyLeftBottomImageView];
      v38 = [UIImageView alloc];
      v39 = NTKImageNamed();
      v40 = [v38 initWithImage:v39];
      legacyRightBottomImageView = self->_legacyRightBottomImageView;
      self->_legacyRightBottomImageView = v40;

      [(UIImageView *)self->_legacyRightBottomImageView setUserInteractionEnabled:0];
      [(NTKAstronomyFaceView *)self addSubview:self->_legacyRightBottomImageView];
    }

    digitalTimeLabelSmallInUpperRightCornerStyle = [(NTKAstronomyFaceView *)self digitalTimeLabelSmallInUpperRightCornerStyle];
    designatorFont = [digitalTimeLabelSmallInUpperRightCornerStyle designatorFont];
    [designatorFont pointSize];
    v45 = v44;

    v46 = [CLKFont systemFontOfSize:v45 weight:UIFontWeightSemibold];
    cLKFontWithMonospacedNumbers = [v46 CLKFontWithMonospacedNumbers];
    cLKFontWithAlternativePunctuation = [cLKFontWithMonospacedNumbers CLKFontWithAlternativePunctuation];

    v49 = [CLKUIColoringLabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v53 = [v49 initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
    scrubLabel = self->_scrubLabel;
    self->_scrubLabel = v53;

    [(CLKUIColoringLabel *)self->_scrubLabel setFont:cLKFontWithAlternativePunctuation];
    [(CLKUIColoringLabel *)self->_scrubLabel setUsesLegibility:1];
    [foregroundContainerView addSubview:self->_scrubLabel];
    v55 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
    phaseLabel = self->_phaseLabel;
    self->_phaseLabel = v55;

    [(CLKUIColoringLabel *)self->_phaseLabel setNumberOfLines:0];
    [(CLKUIColoringLabel *)self->_phaseLabel setUsesLegibility:1];
    v95 = cLKFontWithAlternativePunctuation;
    [(CLKUIColoringLabel *)self->_phaseLabel setFont:cLKFontWithAlternativePunctuation];
    v57 = self->_phaseLabel;
    v58 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:1];
    [(CLKUIColoringLabel *)v57 setTextColor:v58];

    v59 = self->_phaseLabel;
    v60 = sub_3564(1);
    [(CLKUIColoringLabel *)v59 setShadowColor:v60];

    [foregroundContainerView addSubview:self->_phaseLabel];
    v61 = [[CLKUIColoringLabel alloc] initWithFrame:0 options:{CGRectZero.origin.x, y, width, height}];
    overrideDateLabel = self->_overrideDateLabel;
    self->_overrideDateLabel = v61;

    [(CLKUIColoringLabel *)self->_overrideDateLabel setTextAlignment:0];
    if ([v25 isEqualToString:@"th"] && (-[NTKAstronomyFaceView device](self, "device"), v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "deviceCategory"), v63, v64 == &dword_0 + 1))
    {
      v65 = self->_overrideDateLabel;
      v66 = [CLKFont systemFontOfSize:v45 + -4.0 weight:UIFontWeightSemibold];
      cLKFontWithMonospacedNumbers2 = [v66 CLKFontWithMonospacedNumbers];
      cLKFontWithAlternativePunctuation2 = [cLKFontWithMonospacedNumbers2 CLKFontWithAlternativePunctuation];
      [(CLKUIColoringLabel *)v65 setFont:cLKFontWithAlternativePunctuation2];
    }

    else
    {
      [(CLKUIColoringLabel *)self->_overrideDateLabel setFont:cLKFontWithAlternativePunctuation];
    }

    [(CLKUIColoringLabel *)self->_overrideDateLabel setUsesLegibility:1];
    [foregroundContainerView addSubview:self->_overrideDateLabel];
    v69 = objc_alloc_init(NUNIAstronomyLocationDot);
    locationDot = self->_locationDot;
    self->_locationDot = v69;

    v71 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v72 = [CLKFont systemFontOfSize:*&dword_15754];
    [v71 setFont:v72];

    v73 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:2];
    [v71 setTextColor:v73];

    font = [v71 font];
    [font lineHeight];
    v76 = v75;
    v90 = font;
    [font descender];
    *&v77 = v76 + v77;
    self->_supplementalFontLineHeightPlusDescender = roundf(*&v77);
    selfCopy = self;
    objc_initWeak(&location, self);
    v78 = foregroundContainerView;
    for (i = 0; i != 8; ++i)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_35C0;
      block[3] = &unk_10498;
      objc_copyWeak(&v99, &location);
      v100 = i;
      v80 = v71;
      v97 = v80;
      v81 = v78;
      v98 = v81;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v99);
    }

    v82 = selfCopy;
    v83 = [[UIPanGestureRecognizer alloc] initWithTarget:selfCopy action:"_handleSpheroidPanGesture:"];
    spheroidPanGesture = selfCopy->_spheroidPanGesture;
    selfCopy->_spheroidPanGesture = v83;

    [(UIPanGestureRecognizer *)selfCopy->_spheroidPanGesture setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v82->_spheroidPanGesture setDelegate:v82];
    v85 = [[UITapGestureRecognizer alloc] initWithTarget:selfCopy action:"_handleSupplementalModeGesture:"];
    supplementalModeDoubleTapGesture = selfCopy->_supplementalModeDoubleTapGesture;
    selfCopy->_supplementalModeDoubleTapGesture = v85;

    [(UITapGestureRecognizer *)selfCopy->_supplementalModeDoubleTapGesture setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)selfCopy->_supplementalModeDoubleTapGesture setNumberOfTouchesRequired:1];
    v87 = [[UITapGestureRecognizer alloc] initWithTarget:selfCopy action:"_handleInteractiveModeGesture:"];
    interactiveModeTapGesture = selfCopy->_interactiveModeTapGesture;
    selfCopy->_interactiveModeTapGesture = v87;

    [(UITapGestureRecognizer *)selfCopy->_interactiveModeTapGesture setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)selfCopy->_interactiveModeTapGesture setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)v82->_interactiveModeTapGesture setDelegate:v82];
    [(UITapGestureRecognizer *)selfCopy->_interactiveModeTapGesture setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v82->_interactiveModeTapGesture requireGestureRecognizerToFail:v82->_supplementalModeDoubleTapGesture];
    [(NTKAstronomyFaceView *)v82 addGestureRecognizer:v82->_spheroidPanGesture];
    [(NTKAstronomyFaceView *)v82 addGestureRecognizer:v82->_interactiveModeTapGesture];
    [(NTKAstronomyFaceView *)v82 addGestureRecognizer:v82->_supplementalModeDoubleTapGesture];
    *(selfCopy + 416) |= 2u;
    [(NTKAstronomyFaceView *)v82 _applyVista:v82->_vista];
    [(NTKAstronomyFaceView *)selfCopy _applyViewMode:1];
    [(NTKAstronomyFaceView *)selfCopy _applyDataModeAnimated:0];
    [(NTKAstronomyFaceView *)selfCopy _updateLocaleAnimated:0];
    [(NUNIAstronomyVistaView *)selfCopy->_astronomyVistaView updateSunLocationAnimated:0];
    [(NTKAstronomyFaceView *)selfCopy setNeedsLayout];
    v89 = +[NSNotificationCenter defaultCenter];
    [v89 addObserver:selfCopy selector:"_asyncUpdateTime" name:UIApplicationSignificantTimeChangeNotification object:0];
    [v89 addObserver:selfCopy selector:"_asyncUpdateTime" name:NSCalendarDayChangedNotification object:0];
    [v89 addObserver:selfCopy selector:"_asyncUpdateLocale" name:NSCurrentLocaleDidChangeNotification object:0];

    objc_destroyWeak(&location);
  }
}

- (void)_layoutForegroundContainerView
{
  v24.receiver = self;
  v24.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v24 _layoutForegroundContainerView];
  [(NTKAstronomyFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  digitalTimeLabelSmallInUpperRightCornerStyle = [(NTKAstronomyFaceView *)self digitalTimeLabelSmallInUpperRightCornerStyle];
  layoutRule = [digitalTimeLabelSmallInUpperRightCornerStyle layoutRule];
  [layoutRule referenceFrame];
  v10 = v9;

  text = [(CLKUIColoringLabel *)self->_scrubLabel text];
  scrubLabel = self->_scrubLabel;
  v13 = sub_2198();
  [(CLKUIColoringLabel *)scrubLabel setText:v13];

  [(CLKUIColoringLabel *)self->_scrubLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_scrubLabel frame];
  v15 = v14;
  [(CLKUIColoringLabel *)self->_scrubLabel setText:text];
  device = [(NTKAstronomyFaceView *)self device];
  sub_1200(device, device);
  v17 = *&qword_15770;

  [(CLKUIColoringLabel *)self->_overrideDateLabel setFrame:v17, v10, v17 * -2.0 + v4 * 0.75, v15];
  v18 = self->_scrubLabel;
  [(CLKUIColoringLabel *)self->_overrideDateLabel frame];
  [(CLKUIColoringLabel *)v18 setFrame:v17, v6 - v15 - v19, v4 + v17 * -2.0, v15];
  [(CLKUIColoringLabel *)self->_scrubLabel frame];
  self->_phaseLabelDefaultFrame.origin.x = v17;
  self->_phaseLabelDefaultFrame.origin.y = v20 - v15;
  self->_phaseLabelDefaultFrame.size.width = v4 + v17 * -2.0;
  self->_phaseLabelDefaultFrame.size.height = v15;
  [(NTKAstronomyFaceView *)self _layoutPhaseLabel];
  v21 = 0;
  do
  {
    [(NTKAstronomyFaceView *)self _layoutSpheroidLabel:v21];
    v21 = (v21 + 1);
  }

  while (v21 != 8);
  locationDot = self->_locationDot;
  CLKRectGetCenter();
  [(NUNIAstronomyLocationDot *)locationDot setCenter:?];
  foregroundContainerView = [(NTKAstronomyFaceView *)self foregroundContainerView];
  [foregroundContainerView bringSubviewToFront:self->_locationDot];

  [(NTKAstronomyFaceView *)self _showLocationDotIfNeeded];
}

- (void)_unloadSnapshotContentViews
{
  v30.receiver = self;
  v30.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v30 _unloadSnapshotContentViews];
  if ((*(self + 416) & 2) != 0)
  {
    [(NTKAstronomyFaceView *)self _stopClockUpdates];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
    [v3 removeObserver:self name:NSCalendarDayChangedNotification object:0];
    [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
    [(NTKDelayedBlock *)self->_wheelDelayedBlock cancel];
    wheelDelayedBlock = self->_wheelDelayedBlock;
    self->_wheelDelayedBlock = 0;

    [(NTKDelayedBlock *)self->_physicalButtonDelayedBlock cancel];
    physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
    self->_physicalButtonDelayedBlock = 0;

    *(self + 416) &= ~2u;
    *(self + 416) &= ~8u;
    *(self + 416) &= ~4u;
    [(NUNIAstronomyRotationModel *)self->_rotationModel setObserver:0];
    rotationModel = self->_rotationModel;
    self->_rotationModel = 0;

    v7 = self->_scrubDateFormatter[0];
    self->_scrubDateFormatter[0] = 0;

    v8 = self->_scrubDateFormatter[1];
    self->_scrubDateFormatter[1] = 0;

    v9 = self->_scrubDateFormatter[2];
    self->_scrubDateFormatter[2] = 0;

    [(NTKAstronomyFaceView *)self removeGestureRecognizer:self->_interactiveModeTapGesture];
    [(NTKAstronomyFaceView *)self removeGestureRecognizer:self->_supplementalModeDoubleTapGesture];
    [(NTKAstronomyFaceView *)self removeGestureRecognizer:self->_spheroidPanGesture];
    interactiveModeTapGesture = self->_interactiveModeTapGesture;
    self->_interactiveModeTapGesture = 0;

    supplementalModeDoubleTapGesture = self->_supplementalModeDoubleTapGesture;
    self->_supplementalModeDoubleTapGesture = 0;

    spheroidPanGesture = self->_spheroidPanGesture;
    self->_spheroidPanGesture = 0;

    device = [(NTKAstronomyFaceView *)self device];
    nrDeviceVersion = [device nrDeviceVersion];

    if (HIWORD(nrDeviceVersion) <= 4u)
    {
      [(NTKDateComplicationLabel *)self->_legacyDateLabel removeFromSuperview];
      [(UIImageView *)self->_legacyLeftBottomImageView removeFromSuperview];
      [(UIImageView *)self->_legacyRightBottomImageView removeFromSuperview];
      legacyDateLabel = self->_legacyDateLabel;
      self->_legacyDateLabel = 0;

      legacyLeftBottomImageView = self->_legacyLeftBottomImageView;
      self->_legacyLeftBottomImageView = 0;

      legacyRightBottomImageView = self->_legacyRightBottomImageView;
      self->_legacyRightBottomImageView = 0;
    }

    [(NUNIAstronomyVistaView *)self->_astronomyVistaView removeFromSuperview];
    [(CLKUIColoringLabel *)self->_scrubLabel removeFromSuperview];
    [(CLKUIColoringLabel *)self->_phaseLabel removeFromSuperview];
    [(CLKUIColoringLabel *)self->_overrideDateLabel removeFromSuperview];
    [(NUNIAstronomyLocationDot *)self->_locationDot removeFromSuperview];
    astronomyVistaView = self->_astronomyVistaView;
    self->_astronomyVistaView = 0;

    scrubLabel = self->_scrubLabel;
    self->_scrubLabel = 0;

    phaseLabel = self->_phaseLabel;
    self->_phaseLabel = 0;

    overrideDateLabel = self->_overrideDateLabel;
    self->_overrideDateLabel = 0;

    locationDot = self->_locationDot;
    self->_locationDot = 0;

    crownDate = self->_crownDate;
    self->_crownDate = 0;

    digitalTimeLabelDefaultStyle = self->_digitalTimeLabelDefaultStyle;
    self->_digitalTimeLabelDefaultStyle = 0;

    digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelSmallInUpperRightCornerStyle;
    self->_digitalTimeLabelSmallInUpperRightCornerStyle = 0;

    v26 = 0;
    spheroidLabels = self->_spheroidLabels;
    do
    {
      v28 = spheroidLabels[v26];
      [(UIImageView *)v28 removeFromSuperview];
      v29 = spheroidLabels[v26];
      spheroidLabels[v26] = 0;

      ++v26;
    }

    while (v26 != 8);
  }
}

- (void)_applyShowContentForUnadornedSnapshot
{
  timeView = [(NTKAstronomyFaceView *)self timeView];
  [timeView setHidden:{-[NTKAstronomyFaceView showContentForUnadornedSnapshot](self, "showContentForUnadornedSnapshot")}];
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
    device = [(NTKAstronomyFaceView *)self device];
    sub_1200(device, device);

    LODWORD(device) = CLKLayoutIsRTL();
    device2 = [(NTKAstronomyFaceView *)self device];
    [device2 screenBounds];
    v9 = v8 - *&dword_15760 - *&dword_15764;

    v10 = *&dword_15760 + v9 / 7.0 * label;
    [(UIImageView *)v18 sizeToFit];
    [(UIImageView *)v18 frame];
    v12 = v11;
    v14 = v13;
    if (device)
    {
      device3 = [(NTKAstronomyFaceView *)self device];
      [device3 screenBounds];
      v17 = v16 - *&dword_1575C - v12;
    }

    else
    {
      v17 = *&dword_1575C;
    }

    [(UIImageView *)v18 setFrame:v17, v10 + v14 * -0.5, v12, v14];
    v5 = v18;
  }
}

- (void)_layoutLegacyViews
{
  device = [(NTKAstronomyFaceView *)self device];
  nrDeviceVersion = [device nrDeviceVersion];

  if (HIWORD(nrDeviceVersion) <= 4u)
  {
    [(NTKDateComplicationLabel *)self->_legacyDateLabel sizeToFit];
    [(NTKDateComplicationLabel *)self->_legacyDateLabel frame];
    v6 = v5;
    v8 = v7;
    device2 = [(NTKAstronomyFaceView *)self device];
    CLKRoundForDevice();
    v11 = v10;

    [(NTKDateComplicationLabel *)self->_legacyDateLabel setFrame:v11, 0.0, v6, v8];
    [(NTKAstronomyFaceView *)self bounds];
    v13 = v12;
    v15 = v14;
    image = [(UIImageView *)self->_legacyLeftBottomImageView image];
    [image size];
    v18 = v17;

    image2 = [(UIImageView *)self->_legacyLeftBottomImageView image];
    [image2 size];
    v21 = v20;

    [(UIImageView *)self->_legacyLeftBottomImageView setFrame:0.0, v15 - v21, v18, v21];
    image3 = [(UIImageView *)self->_legacyRightBottomImageView image];
    [image3 size];
    v24 = v23;

    image4 = [(UIImageView *)self->_legacyRightBottomImageView image];
    [image4 size];
    v27 = v26;

    legacyRightBottomImageView = self->_legacyRightBottomImageView;

    [(UIImageView *)legacyRightBottomImageView setFrame:v13 - v24, v15 - v27, v24, v27];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v3 layoutSubviews];
  [(NTKAstronomyFaceView *)self bounds];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrame:?];
  [(NTKAstronomyFaceView *)self _layoutLegacyViews];
}

- (void)traitCollectionDidChange:(id)change
{
  digitalTimeLabelDefaultStyle = self->_digitalTimeLabelDefaultStyle;
  self->_digitalTimeLabelDefaultStyle = 0;
  changeCopy = change;

  digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelSmallInUpperRightCornerStyle;
  self->_digitalTimeLabelSmallInUpperRightCornerStyle = 0;

  v7.receiver = self;
  v7.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v7 traitCollectionDidChange:changeCopy];
}

- (void)_showLocationDotIfNeeded
{
  if (self->_astronomyVistaView && !self->_vista && (*(self + 416) & 4) != 0 && [(NUNIAstronomyRotationModel *)self->_rotationModel isAtHomeCoordinate]&& ([(NUNIAstronomyLocationDot *)self->_locationDot animating]& 1) == 0)
  {
    [(NUNIAstronomyLocationDot *)self->_locationDot superview];
    if (objc_claimAutoreleasedReturnValue() || [(NTKAstronomyFaceView *)self viewMode]|| [(NTKAstronomyFaceView *)self editing])
    {

      _objc_release_x1();
    }

    else if ((*(self + 416) & 1) == 0)
    {
      foregroundContainerView = [(NTKAstronomyFaceView *)self foregroundContainerView];
      [foregroundContainerView addSubview:self->_locationDot];

      [(NUNIAstronomyLocationDot *)self->_locationDot setAlpha:1.0];
      locationDot = self->_locationDot;

      [(NUNIAstronomyLocationDot *)locationDot startAnimation];
    }
  }
}

- (void)_hideLocationDot
{
  [(NUNIAstronomyLocationDot *)self->_locationDot stopAnimation];
  [(NUNIAstronomyLocationDot *)self->_locationDot setAlpha:0.0];
  locationDot = self->_locationDot;

  [(NUNIAstronomyLocationDot *)locationDot removeFromSuperview];
}

- (void)_asyncUpdateLocale
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_441C;
  v2[3] = &unk_104C0;
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
  v2[2] = sub_4500;
  v2[3] = &unk_104C0;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_updateLocation:(id)location lastLocation:(id)lastLocation
{
  locationCopy = location;
  lastLocationCopy = lastLocation;
  v7 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:0];
  v8 = *(self + 416);
  if (locationCopy)
  {
    *(self + 416) = v8 | 4;
    [locationCopy coordinate];
    [v7 setHomeCoordinate:?];
    [(NTKAstronomyFaceView *)self _showLocationDotIfNeeded];
  }

  else
  {
    *(self + 416) = v8 & 0xFB;
    [lastLocationCopy coordinate];
    [v7 setHomeCoordinate:?];
    [(NTKAstronomyFaceView *)self _hideLocationDot];
  }

  [(NTKAstronomyFaceView *)self _updateTimeAnimated:1];
}

- (void)_becameActiveFace
{
  v3 = +[NTKLocationManager sharedLocationManager];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_493C;
  v6[3] = &unk_104E8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startLocationUpdatesWithIdentifier:@"ntk.astronomyFace" handler:v6];
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

- (void)_setupAstronomyVistaView
{
  device = [(NTKAstronomyFaceView *)self device];
  sub_1200(device, device);
  v4 = dword_15758;
  v6 = dword_15760;
  v5 = dword_15764;
  v7 = dword_15768;

  [(NTKAstronomyFaceView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  device2 = [(NTKAstronomyFaceView *)self device];
  v17 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:device2];

  v18 = [[NUNIAstronomyVistaView alloc] initWithFrame:v17 configuration:{v9, v11, v13, v15}];
  astronomyVistaView = self->_astronomyVistaView;
  self->_astronomyVistaView = v18;

  LODWORD(v20) = v6;
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setSupplementalTopInset:v20];
  LODWORD(v21) = v5;
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setSupplementalBottomInset:v21];
  LODWORD(v22) = v4;
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setSupplementalHorizontalInset:v22];
  LODWORD(v23) = v7;
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setSupplementalSpheroidSize:v23];
  objc_initWeak(&location, self);
  v24 = [NUNIScene alloc];
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_4C64;
  v30 = &unk_10510;
  objc_copyWeak(&v31, &location);
  v25 = [v24 initWithSphereoids:16515070 currentDateBlock:&v27];
  [v25 setSnap:{3, v27, v28, v29, v30}];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setScene:v25];
  contentView = [(NTKAstronomyFaceView *)self contentView];
  [contentView addSubview:self->_astronomyVistaView];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode
{
  [(NTKAstronomyFaceView *)self bounds];

  return [(NTKAstronomyFaceView *)self _digitalTimeLabelStyleFromViewMode:mode faceBounds:?];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  if (mode > 1)
  {
    p_digitalTimeLabelSmallInUpperRightCornerStyle = &self->_digitalTimeLabelSmallInUpperRightCornerStyle;
    digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelSmallInUpperRightCornerStyle;
    if (digitalTimeLabelSmallInUpperRightCornerStyle)
    {
      goto LABEL_7;
    }

    [(NTKAstronomyFaceView *)self bounds:bounds.origin.x];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    device = [(NTKAstronomyFaceView *)self device];
    uIFontWeightSemibold = [NTKDigitalTimeLabelStyle smallInUpperRightCornerStyleForBounds:device weight:v22 forDevice:v24, v26, v28, UIFontWeightSemibold];
    device2 = *p_digitalTimeLabelSmallInUpperRightCornerStyle;
    *p_digitalTimeLabelSmallInUpperRightCornerStyle = uIFontWeightSemibold;
  }

  else
  {
    p_digitalTimeLabelSmallInUpperRightCornerStyle = &self->_digitalTimeLabelDefaultStyle;
    digitalTimeLabelSmallInUpperRightCornerStyle = self->_digitalTimeLabelDefaultStyle;
    if (digitalTimeLabelSmallInUpperRightCornerStyle)
    {
      goto LABEL_7;
    }

    [(NTKAstronomyFaceView *)self bounds:bounds.origin.x];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    device = [(NTKAstronomyFaceView *)self device];
    NTKDigitalTimeLabelStyleWideRightSideMargin();
    v17 = v16;
    device2 = [(NTKAstronomyFaceView *)self device];
    v19 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:device2 applyAdvanceFudge:v8 forDevice:v10, v12, v14, v17];
    v20 = *p_digitalTimeLabelSmallInUpperRightCornerStyle;
    *p_digitalTimeLabelSmallInUpperRightCornerStyle = v19;
  }

  digitalTimeLabelSmallInUpperRightCornerStyle = *p_digitalTimeLabelSmallInUpperRightCornerStyle;
LABEL_7:

  return digitalTimeLabelSmallInUpperRightCornerStyle;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  if ((*(self + 416) & 2) != 0 && self->_overrideDate != dateCopy)
  {
    v9 = dateCopy;
    objc_storeStrong(&self->_overrideDate, date);
    timeView = [(NTKAstronomyFaceView *)self timeView];
    [timeView setOverrideDate:v9 duration:0.0];
    [timeView setFrameUsingCurrentStyle];
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:duration > 0.0];

    dateCopy = v9;
  }
}

- (void)setTimeOffset:(double)offset
{
  if ((*(self + 416) & 2) != 0)
  {
    timeView = [(NTKAstronomyFaceView *)self timeView];
    [timeView setTimeOffset:offset];
  }
}

- (void)_prepareToZoom
{
  v4.receiver = self;
  v4.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v4 _prepareToZoom];
  if ((*(self + 416) & 2) != 0)
  {
    scene = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];
    [scene setUpdatable:0];
  }
}

- (void)_cleanupAfterZoom
{
  v4.receiver = self;
  v4.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v4 _cleanupAfterZoom];
  if ((*(self + 416) & 2) != 0)
  {
    scene = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];
    [scene setUpdatable:1];
  }
}

- (BOOL)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if (!self->_physicalButtonDelayedBlock)
  {
    if (![(NTKAstronomyFaceView *)self _canEnterInteractiveMode])
    {
      v5 = 1;
      goto LABEL_3;
    }

    if (!self->_wheelDelayedBlock)
    {
      objc_initWeak(&location, self);
      v7 = [NTKDelayedBlock alloc];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_5204;
      v10[3] = &unk_10538;
      objc_copyWeak(&v11, &location);
      v8 = [v7 initWithDelay:v10 action:0.2];
      wheelDelayedBlock = self->_wheelDelayedBlock;
      self->_wheelDelayedBlock = v8;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  v5 = 0;
LABEL_3:

  return v5;
}

- (void)_wheelDelayedBlockFired
{
  wheelDelayedBlock = self->_wheelDelayedBlock;
  self->_wheelDelayedBlock = 0;

  if (!self->_physicalButtonDelayedBlock && [(NTKAstronomyFaceView *)self _canEnterInteractiveMode])
  {

    [(NTKAstronomyFaceView *)self _animateTransitionToViewMode:2];
  }
}

- (void)_physicalButtonDelayedBlockFired
{
  physicalButtonDelayedBlock = self->_physicalButtonDelayedBlock;
  self->_physicalButtonDelayedBlock = 0;
  _objc_release_x1();
}

- (void)_enableCrownForAstronomyVista:(unint64_t)vista
{
  v5.receiver = self;
  v5.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v5 _enableCrown];
  if ([(NTKAstronomyFaceView *)self editing])
  {
    v4 = 0;
  }

  else
  {
    v4 = 8;
  }

  *(self + 416) = *(self + 416) & 0xF7 | v4;
}

- (void)_disableCrown
{
  v4.receiver = self;
  v4.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v4 _disableCrown];
  crownDate = self->_crownDate;
  self->_crownDate = 0;

  *(self + 416) &= ~8u;
  [(NTKAstronomyFaceView *)self _updateTimeAnimated:1];
}

- (void)_applyVista:(unint64_t)vista
{
  kdebug_trace();
  self->_vista = vista;
  if ((*(self + 416) & 2) != 0)
  {
    [(NUNIAstronomyRotationModel *)self->_rotationModel stop];
    v7 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView rotatable:vista];
    [(NUNIAstronomyRotationModel *)self->_rotationModel setRotatable:v7];
    if (v7)
    {
      [v7 homeCoordinate];
      [v7 setCenterCoordinate:0 animated:?];
    }

    [(NUNIAstronomyVistaView *)self->_astronomyVistaView applyVista:vista transitionStyle:0];
    [(NTKAstronomyFaceView *)self _updateTimeAnimated:0];
    v5 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:self->_vista];
    v6 = sub_3564(self->_vista);
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory setShadowColor:v6 faceView:self];
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory setForegroundColor:v5 faceView:self];
    [(CLKUIColoringLabel *)self->_overrideDateLabel setTextColor:v5];
    [(CLKUIColoringLabel *)self->_overrideDateLabel setShadowColor:v6];
    [(CLKUIColoringLabel *)self->_scrubLabel setTextColor:v5];
    [(CLKUIColoringLabel *)self->_scrubLabel setShadowColor:v6];
  }
}

- (void)_applyFromVista:(unint64_t)vista toVista:(unint64_t)toVista fraction:(double)fraction
{
  v8 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:?];
  v9 = [NUNIAstronomyVistaConfiguration complicationForgroundColorForVista:toVista];
  v13 = NTKInterpolateBetweenColors();

  v10 = sub_3564(vista);
  v11 = sub_3564(toVista);
  v12 = NTKInterpolateBetweenColors();

  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory setShadowColor:v12 faceView:self];
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory setForegroundColor:v13 faceView:self];
  [(CLKUIColoringLabel *)self->_overrideDateLabel setTextColor:v13];
  [(CLKUIColoringLabel *)self->_overrideDateLabel setShadowColor:v12];
  [(CLKUIColoringLabel *)self->_scrubLabel setTextColor:v13];
  [(CLKUIColoringLabel *)self->_scrubLabel setShadowColor:v12];
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  astronomyVista = [option astronomyVista];
  if (astronomyVista <= 2)
  {
    v6 = *(&off_105D8 + astronomyVista);
  }

  return NTKImageNamed();
}

- (void)_prepareForEditing
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v7 _prepareForEditing];
  scene = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];
  [scene setUpdatable:0];

  [(NTKAstronomyFaceView *)self _applyDataModeAnimated:0];
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory prepareForEditingForFaceView:self];
  for (i = 0; i != 4; ++i)
  {
    v5 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView generateAnimationArrayFromVista:i toVista:(i + 1) & 3 transitionStyle:0];
    v6 = self->_editingAnimations[i];
    self->_editingAnimations[i] = v5;
  }

  [(NTKAstronomyFaceView *)self _hideLocationDot];
}

- (void)_cleanupAfterEditing
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyFaceView;
  [(NTKAstronomyFaceView *)&v7 _cleanupAfterEditing];
  [(NTKAstronomyFaceView *)self _applyVista:self->_vista];
  scene = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];
  [scene setUpdatable:1];

  [(NTKAstronomyFaceView *)self _applyDataModeAnimated:0];
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory cleanupAfterEditingForFaceView:self];
  v4 = 0;
  editingAnimations = self->_editingAnimations;
  do
  {
    v6 = editingAnimations[v4];
    editingAnimations[v4] = 0;

    ++v4;
  }

  while (v4 != 4);
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  astronomyVistaView = self->_astronomyVistaView;
  CLKInterpolateBetweenFloatsClipped();
  [(NUNIAstronomyVistaView *)astronomyVistaView setAlpha:?];
  timeView = [(NTKAstronomyFaceView *)self timeView];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];
}

- (void)_configureForEditMode:(int64_t)mode
{
  astronomyVistaView = self->_astronomyVistaView;
  v6 = NTKEditModeBackgroundContentAlpha;
  if (mode != 1)
  {
    v6 = 1.0;
  }

  [(NUNIAstronomyVistaView *)astronomyVistaView setAlpha:v6];
  timeView = [(NTKAstronomyFaceView *)self timeView];
  v9 = timeView;
  v8 = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    v8 = 1.0;
  }

  [timeView setAlpha:v8];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  toOptionCopy = toOption;
  if (mode == 12)
  {
    astronomyVista = [option astronomyVista];
    astronomyVista2 = [toOptionCopy astronomyVista];
    v14 = astronomyVista2;
    if (astronomyVista + 1 == astronomyVista2)
    {
      v15 = self->_editingAnimations[astronomyVista];
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else if (astronomyVista2 + 1 == astronomyVista)
    {
      v15 = self->_editingAnimations[astronomyVista2];
      fraction = 1.0 - fraction;
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (astronomyVista != astronomyVista2)
      {
        goto LABEL_18;
      }

      v15 = self->_editingAnimations[astronomyVista];
      fraction = 0.0;
      if (!v15)
      {
        goto LABEL_18;
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v16);
          }

          fractionCopy = fraction;
          *&v18 = fractionCopy;
          [*(*(&v23 + 1) + 8 * v22) apply:{v18, v23}];
          v22 = v22 + 1;
        }

        while (v19 != v22);
        v19 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v19);
    }

    [(NTKAstronomyFaceView *)self _applyFromVista:astronomyVista toVista:v14 fraction:fraction];
  }

LABEL_18:
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 12)
  {
    astronomyVista = [option astronomyVista];
    if (self->_vista != astronomyVista)
    {
      v7 = astronomyVista;
      if ([(NTKAstronomyFaceView *)self editing])
      {
        self->_vista = v7;
      }

      else
      {

        [(NTKAstronomyFaceView *)self _applyVista:v7];
      }
    }
  }
}

@end