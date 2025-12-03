@interface NTKCollieFaceView
+ (CGSize)_snapshotImageSize;
+ (double)avatarFramingTopMargin;
+ (double)preferredMemojiFieldOfView;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (CGPoint)_fractionalLocationOfGesture:(id)gesture inView:(id)view;
- (CGRect)_dateComplicationFrame;
- (NTKCollieFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_bgColorForEditMode:(int64_t)mode;
- (id)_dateComplicationFont;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_existingSnapshotImageForOption:(id)option state:(unint64_t)state;
- (id)_snapshotImageForOption:(id)option machineState:(unint64_t)state resolveToyBox:(BOOL)box force:(BOOL)force;
- (id)_snapshotImageFromCurrentAvatarForEditMode:(int64_t)mode;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler;
- (void)_addSecondActivities;
- (void)_addTapGestureRecognizers;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_asyncSetImageView0:(id)view0 imageView1:(id)view1 image:(id)image forOption:(id)option state:(unint64_t)state completion:(id)completion;
- (void)_asyncSetImageViewsForOption:(id)option state:(unint64_t)state resolveToyBox:(BOOL)box;
- (void)_avatarStoreDidChange:(id)change;
- (void)_becameActiveFace;
- (void)_becameInactiveFace;
- (void)_cleanupAfterEditing;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_didFirstUnlock;
- (void)_handleOrdinaryScreenWake;
- (void)_handleWristRaiseScreenWake;
- (void)_loadAvatarAsyncForOption:(id)option completion:(id)completion;
- (void)_loadSharedViews;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_pushBackMachineStateResetTimer:(double)timer completionHandler:(id)handler;
- (void)_reloadToyBoxAvatar;
- (void)_removeTapGestureRecognizers;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)_reorderSwitcherSnapshotView;
- (void)_reportStats;
- (void)_restartRenderForAvatar:(id)avatar fromState:(unint64_t)state completion:(id)completion;
- (void)_setBackgroundAlpha:(double)alpha contentAlpha:(double)contentAlpha complicationsAlpha:(double)complicationsAlpha complicationsColor:(id)color timeAlpha:(double)timeAlpha timeColor:(id)timeColor;
- (void)_setComplicationsColor:(id)color;
- (void)_setContentAlpha:(double)alpha complicationsAlpha:(double)complicationsAlpha complicationsColor:(id)color timeAlpha:(double)timeAlpha timeColor:(id)timeColor;
- (void)_setContentOpaqueTimeAlpha:(double)alpha complicationsAlpha:(double)complicationsAlpha;
- (void)_setNumerals:(unint64_t)numerals;
- (void)_startMachineFromState:(unint64_t)state;
- (void)_stopMachineImmediate:(BOOL)immediate;
- (void)_stopSecondActivities;
- (void)_topOfTheMinuteReached;
- (void)_transitionBackgroundToBlackImmediate:(BOOL)immediate;
- (void)_transitionBackgroundToColor;
- (void)_transitionFromAvatarToImageForOption:(id)option toState:(unint64_t)state immediate:(BOOL)immediate retainAvatar:(BOOL)avatar forceImage:(BOOL)image completion:(id)completion;
- (void)_transitionFromAvatarToImagePart2ForOption:(id)option toState:(unint64_t)state retainAvatar:(BOOL)avatar forceImage:(BOOL)image;
- (void)_transitionFromAvatarToImagePart3ForOption:(id)option immediate:(BOOL)immediate retainAvatar:(BOOL)avatar;
- (void)_transitionFromImageToAvatarForOption:(id)option fromState:(unint64_t)state;
- (void)_transitionFromImageToAvatarForOption:(id)option fromState:(unint64_t)state completion:(id)completion;
- (void)_transitionFromImageToCurrentAvatarImmediate:(BOOL)immediate;
- (void)_transitionToMachineState:(unint64_t)state immediate:(BOOL)immediate;
- (void)_unloadAvatar;
- (void)_unloadSharedViews;
- (void)_unloadSnapshotContentViews;
- (void)_viewSingleTapped:(id)tapped;
- (void)dealloc;
- (void)layoutSubviews;
- (void)populateFaceViewEditOptionsFromFace:(id)face;
- (void)screenDidTurnOffAnimated:(BOOL)animated;
- (void)willMoveToWindow:(id)window;
@end

@implementation NTKCollieFaceView

- (id)_dateComplicationFont
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NTKCollieFaceView *)self device:0];
  sub_1150C(v2, &v6);

  v3 = *(&v7 + 1);
  v4 = CLKRoundedFontDesignName;

  return [CLKFont systemFontOfSize:v4 weight:v3 design:UIFontWeightMedium];
}

- (CGRect)_dateComplicationFrame
{
  v3 = [(NTKCollieFaceView *)self device:0];
  sub_1150C(v3, &v21);

  _dateComplicationFont = [(NTKCollieFaceView *)self _dateComplicationFont];
  [_dateComplicationFont ascender];
  [_dateComplicationFont descender];
  device = [(NTKCollieFaceView *)self device];
  CLKRoundForDevice();
  v7 = v6;

  device2 = [(NTKCollieFaceView *)self device];
  CLKRoundForDevice();
  v10 = v9;

  device3 = [(NTKCollieFaceView *)self device];
  CLKRoundForDevice();
  v13 = v12;

  [(NTKCollieFaceView *)self bounds];
  device4 = [(NTKCollieFaceView *)self device];
  CLKRoundForDevice();
  v16 = v15;

  v17 = v16;
  v18 = v13;
  v19 = v10;
  v20 = v7;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (CGSize)_snapshotImageSize
{
  v2 = +[CLKDevice currentDevice];
  [v2 screenBounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (double)preferredMemojiFieldOfView
{
  v2 = +[CLKDevice currentDevice];
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_1150C(v2, v5);
  v3 = *(&v6 + 1);

  return v3;
}

+ (double)avatarFramingTopMargin
{
  v2 = +[CLKDevice currentDevice];
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_1150C(v2, &v5);
  v3 = *&v6;

  return v3;
}

- (void)_setComplicationsColor:(id)color
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A7AC;
  v5[3] = &unk_2CB48;
  colorCopy = color;
  v4 = colorCopy;
  [(NTKCollieFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_setContentAlpha:(double)alpha complicationsAlpha:(double)complicationsAlpha complicationsColor:(id)color timeAlpha:(double)timeAlpha timeColor:(id)timeColor
{
  timeColorCopy = timeColor;
  colorCopy = color;
  contentView = [(NTKCollieFaceView *)self contentView];
  [contentView setAlpha:alpha];

  complicationContainerView = [(NTKCollieFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:complicationsAlpha];

  [(NTKCollieFaceView *)self _setComplicationsColor:colorCopy];
  timeView = [(NTKCollieFaceView *)self timeView];
  [timeView setAlpha:timeAlpha];

  timeView2 = [(NTKCollieFaceView *)self timeView];
  [timeView2 setTextColor:timeColorCopy];
}

- (void)_setBackgroundAlpha:(double)alpha contentAlpha:(double)contentAlpha complicationsAlpha:(double)complicationsAlpha complicationsColor:(id)color timeAlpha:(double)timeAlpha timeColor:(id)timeColor
{
  backgroundColorView = self->_backgroundColorView;
  timeColorCopy = timeColor;
  colorCopy = color;
  [(UIView *)backgroundColorView setAlpha:alpha];
  [(NTKCollieFaceView *)self _setContentAlpha:colorCopy complicationsAlpha:timeColorCopy complicationsColor:contentAlpha timeAlpha:complicationsAlpha timeColor:timeAlpha];
}

- (void)_setContentOpaqueTimeAlpha:(double)alpha complicationsAlpha:(double)complicationsAlpha
{
  v7 = +[UIColor whiteColor];
  [(NTKCollieFaceView *)self _setContentAlpha:v7 complicationsAlpha:v7 complicationsColor:1.0 timeAlpha:complicationsAlpha timeColor:alpha];
}

- (id)_snapshotImageFromCurrentAvatarForEditMode:(int64_t)mode
{
  avtView = self->_avtView;
  [(NTKCollieFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKCollieFaceView *)self device];
  [device screenScale];
  v15 = [(CLKUIMetalQuadView *)avtView snapshotInRect:v6 scale:v8 time:v10, v12, v14, CACurrentMediaTime()];

  return v15;
}

- (NTKCollieFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v10 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_18988();
  }

  v34.receiver = self;
  v34.super_class = NTKCollieFaceView;
  v11 = [(NTKCollieFaceView *)&v34 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifierCopy];
  if (v11)
  {
    v12 = [NTKCollieFaceViewComplicationFactory alloc];
    device = [(NTKCollieFaceView *)v11 device];
    v14 = [(NTKCollieFaceViewComplicationFactory *)v12 initForDevice:device];

    v35[0] = NTKComplicationSlotBottom;
    v35[1] = NTKComplicationSlotDate;
    v15 = [NSArray arrayWithObjects:v35 count:2];
    [v14 setSupportedComplicationSlots:v15];

    [v14 setUsesLegibility:1 faceView:v11];
    v16 = +[UIColor whiteColor];
    [v14 setForegroundColor:v16 faceView:v11];

    [v14 setAlpha:v11 faceView:1.0];
    objc_storeStrong(&v11->_collieFaceViewComplicationFactory, v14);
    v11->_numberSystem = -1;
    v17 = [UIColor colorWithRed:0.105882354 green:0.105882354 blue:0.105882354 alpha:1.0];
    complicationsEditModeColor = v11->_complicationsEditModeColor;
    v11->_complicationsEditModeColor = v17;

    v19 = objc_alloc_init(AVTAvatarPhysicsState);
    nullPhysicsState = v11->_nullPhysicsState;
    v11->_nullPhysicsState = v19;

    out_token = 0;
    objc_initWeak(&location, v11);
    v21 = dispatch_get_global_queue(25, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_AF08;
    handler[3] = &unk_2CB70;
    objc_copyWeak(&v31, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v21, handler);

    v22 = +[NSNotificationCenter defaultCenter];
    v23 = +[NSOperationQueue mainQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_AF60;
    v28[3] = &unk_2CB98;
    objc_copyWeak(&v29, &location);
    v24 = [v22 addObserverForName:@"NTKCollieAvatarStoreDidChangeNotification" object:0 queue:v23 usingBlock:v28];
    avatarChangedObserver = v11->_avatarChangedObserver;
    v11->_avatarChangedObserver = v24;

    v26 = v11;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  if (self->_avatarChangedObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_avatarChangedObserver];
  }

  v4.receiver = self;
  v4.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v4 dealloc];
}

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  v4.receiver = self;
  v4.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v4 _renderSynchronouslyWithImageQueueDiscard:discard inGroup:group];
}

- (void)_loadSharedViews
{
  v3 = [UIView alloc];
  [(NTKCollieFaceView *)self bounds];
  v4 = [v3 initWithFrame:?];
  backgroundColorView = self->_backgroundColorView;
  self->_backgroundColorView = v4;

  [(NTKCollieFaceView *)self addSubview:self->_backgroundColorView];
  v6 = objc_alloc_init(UIImageView);
  vignetteImageView = self->_vignetteImageView;
  self->_vignetteImageView = v6;

  [(UIImageView *)self->_vignetteImageView setContentMode:2];
  [(NTKCollieFaceView *)self bounds];
  [(UIImageView *)self->_vignetteImageView setFrame:?];
  [(UIImageView *)self->_vignetteImageView setAlpha:1.0];
  v8 = objc_opt_class();
  [(NTKCollieFaceView *)self bounds];
  v11 = [v8 _backgroundMaskFromImageNamed:@"FaceVignette" size:{v9, v10}];
  [(UIImageView *)self->_vignetteImageView setImage:v11];

  [(UIView *)self->_backgroundColorView addSubview:self->_vignetteImageView];
  faceColorPalette = [(NTKCollieFaceView *)self faceColorPalette];
  primaryColor = [faceColorPalette primaryColor];
  [(NTKCollieFaceView *)self _setBackgroundColor:primaryColor radiance:1.0];

  v14 = objc_opt_new();
  fromSnapshotView = self->_fromSnapshotView;
  self->_fromSnapshotView = v14;

  [(NTKCollieFaceImageView *)self->_fromSnapshotView setContentMode:4];
  layer = [(NTKCollieFaceImageView *)self->_fromSnapshotView layer];
  [layer setContentsGravity:kCAGravityBottom];

  contentView = [(NTKCollieFaceView *)self contentView];
  [contentView addSubview:self->_fromSnapshotView];

  v18 = objc_opt_new();
  toSnapshotView = self->_toSnapshotView;
  self->_toSnapshotView = v18;

  [(NTKCollieFaceImageView *)self->_toSnapshotView setContentMode:4];
  layer2 = [(NTKCollieFaceImageView *)self->_toSnapshotView layer];
  [layer2 setContentsGravity:kCAGravityBottom];

  contentView2 = [(NTKCollieFaceView *)self contentView];
  [contentView2 addSubview:self->_toSnapshotView];

  device = [(NTKCollieFaceView *)self device];
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  sub_1150C(device, &v38);
  v23 = *&v39 * 0.5;

  [(NTKCollieFaceImageView *)self->_toSnapshotView setVOffset:v23];
  [(NTKCollieFaceImageView *)self->_fromSnapshotView setVOffset:v23];
  [(NTKCollieFaceView *)self _createTimeViewIfNecessary];
  timeView = [(NTKCollieFaceView *)self timeView];
  v25 = [NTKRoundedCornerOverlayView alloc];
  [(NTKCollieFaceView *)self bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  device2 = [(NTKCollieFaceView *)self device];
  v35 = [v25 initWithFrame:device2 forDeviceCornerRadius:{v27, v29, v31, v33}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v35;

  v37 = self->_cornerOverlayView;

  [(NTKCollieFaceView *)self addSubview:v37];
}

- (void)_unloadSharedViews
{
  [(UIView *)self->_backgroundColorView removeFromSuperview];
  backgroundColorView = self->_backgroundColorView;
  self->_backgroundColorView = 0;

  [(UIImageView *)self->_vignetteImageView removeFromSuperview];
  vignetteImageView = self->_vignetteImageView;
  self->_vignetteImageView = 0;

  [(NTKCollieFaceImageView *)self->_fromSnapshotView removeFromSuperview];
  fromSnapshotView = self->_fromSnapshotView;
  self->_fromSnapshotView = 0;

  [(NTKCollieFaceImageView *)self->_toSnapshotView removeFromSuperview];
  toSnapshotView = self->_toSnapshotView;
  self->_toSnapshotView = 0;

  [(UIView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_loadSnapshotContentViews
{
  v3 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_189FC();
  }

  currentStyleEditOption = self->_currentStyleEditOption;
  if (currentStyleEditOption)
  {
    v5 = currentStyleEditOption;
  }

  else
  {
    device = [(NTKCollieFaceView *)self device];
    v5 = [NTKCollieStyleEditOption defaultOptionForDevice:device];
  }

  v16.receiver = self;
  v16.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v16 _loadSnapshotContentViews];
  [(NTKCollieFaceView *)self _loadSharedViews];
  timeView = [(NTKCollieFaceView *)self timeView];
  [timeView setForcedNumberSystem:self->_numberSystem];

  v8 = [[NTKCollieMetalQuadView alloc] initWithFrame:@"Coli" identifier:15 options:0 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  avtView = self->_avtView;
  self->_avtView = v8;

  [(CLKUIMetalQuadView *)self->_avtView setPreferredFramesPerSecond:30];
  v10 = +[UIColor clearColor];
  [(CLKUIMetalQuadView *)self->_avtView setBackgroundColor:v10];

  v11 = objc_alloc_init(NTKCollieQuad);
  avtQuad = self->_avtQuad;
  self->_avtQuad = v11;

  [(CLKUIMetalQuadView *)self->_avtView addQuad:self->_avtQuad];
  contentView = [(NTKCollieFaceView *)self contentView];
  [contentView addSubview:self->_avtView];

  [(NTKCollieFaceView *)self _addTapGestureRecognizers];
  [(NTKCollieFaceView *)self _addCrownSequencer];
  v14 = objc_opt_new();
  animationCache = self->_animationCache;
  self->_animationCache = v14;

  [(NTKCollieFaceView *)self _transitionFromAvatarToImageForOption:v5 toState:0 immediate:1 retainAvatar:0];
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v6 _unloadSnapshotContentViews];
  [(NTKCollieFaceView *)self _unloadSharedViews];
  [(CLKUIMetalQuadView *)self->_avtView removeFromSuperview];
  [(NTKCollieFaceView *)self _unloadAvatar];
  avtView = self->_avtView;
  self->_avtView = 0;

  avtQuad = self->_avtQuad;
  self->_avtQuad = 0;

  [(NTKCollieFaceView *)self _removeTapGestureRecognizers];
  [(NTKCollieFaceView *)self _removeCrownSequencer];
  animationCache = self->_animationCache;
  self->_animationCache = 0;
}

- (void)_didFirstUnlock
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_B788;
  v2[3] = &unk_2CBC0;
  objc_copyWeak(&v3, &location);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_addTapGestureRecognizers
{
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_viewSingleTapped:"];
  [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)v3 setEnabled:1];
  [(UITapGestureRecognizer *)v3 setCancelsTouchesInView:0];
  [(NTKCollieFaceView *)self addGestureRecognizer:v3];
  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
  self->_singleTapGestureRecognizer = v3;
}

- (void)_removeTapGestureRecognizers
{
  [(NTKCollieFaceView *)self removeGestureRecognizer:self->_singleTapGestureRecognizer];
  singleTapGestureRecognizer = self->_singleTapGestureRecognizer;
  self->_singleTapGestureRecognizer = 0;
}

- (void)_addSecondActivities
{
  [(NTKCollieFaceView *)self _stopSecondActivities];
  if ([(NTKCollieFaceView *)self dataMode]== &dword_0 + 1)
  {
    objc_initWeak(&location, self);
    v3 = +[CLKClockTimer sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_BA9C;
    v6[3] = &unk_2CBE8;
    objc_copyWeak(&v7, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:1 withHandler:v6 identificationLog:&stru_2CC28];
    secondsActivityTimerToken = self->_secondsActivityTimerToken;
    self->_secondsActivityTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_stopSecondActivities
{
  objc_initWeak(&location, self);
  if (self->_secondsActivityTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_secondsActivityTimerToken];

    v4 = objc_loadWeakRetained(&location);
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 13);
      *(v4 + 13) = 0;
    }
  }

  objc_destroyWeak(&location);
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v23 layoutSubviews];
  device = [(NTKCollieFaceView *)self device];
  [device screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  p_avtView = &self->_avtView;
  [(CLKUIMetalQuadView *)self->_avtView setFrame:v5, v7, v9, v11];
  [(NTKCollieFaceImageView *)self->_fromSnapshotView setFrame:v5, v7, v9, v11];
  [(NTKCollieFaceImageView *)self->_toSnapshotView setFrame:v5, v7, v9, v11];
  if (([(NTKCollieFaceView *)self _shouldHideUI]& 1) == 0)
  {
    rootContainerView = [(NTKCollieFaceView *)self rootContainerView];
    [(NTKCollieFaceView *)self bringSubviewToFront:rootContainerView];

    timeView = [(NTKCollieFaceView *)self timeView];
    [(NTKCollieFaceView *)self bringSubviewToFront:timeView];
  }

  currentDataMode = self->_currentDataMode;
  contentView = [(NTKCollieFaceView *)self contentView];
  v17 = contentView;
  if (currentDataMode == 1)
  {
    p_fromSnapshotView = &self->_fromSnapshotView;
  }

  else
  {
    p_fromSnapshotView = &self->_avtView;
  }

  if (currentDataMode != 1)
  {
    p_avtView = &self->_fromSnapshotView;
  }

  [contentView bringSubviewToFront:*p_fromSnapshotView];

  contentView2 = [(NTKCollieFaceView *)self contentView];
  [contentView2 bringSubviewToFront:self->_toSnapshotView];

  contentView3 = [(NTKCollieFaceView *)self contentView];
  [contentView3 bringSubviewToFront:*p_avtView];

  rootContainerView2 = [(NTKCollieFaceView *)self rootContainerView];
  complicationContainerView = [(NTKCollieFaceView *)self complicationContainerView];
  [rootContainerView2 bringSubviewToFront:complicationContainerView];

  [(NTKCollieFaceView *)self bringSubviewToFront:self->_cornerOverlayView];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  device = [(NTKCollieFaceView *)self device];
  v9 = sub_BF04(device);
  memset(v19, 0, sizeof(v19));
  sub_1150C(device, v19);
  v10 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v9 applyAdvanceFudge:device withBaselineY:x withFont:y forDevice:width, height, 0.0, *(v19 + 1)];
  layoutRule = [v10 layoutRule];
  [layoutRule referenceFrame];
  v13 = v12;
  v15 = v14;

  layoutRule2 = [v10 layoutRule];
  [layoutRule2 setReferenceFrame:{0.0, v13, width, v15}];

  layoutRule3 = [v10 layoutRule];
  [layoutRule3 setHorizontalLayout:1];

  return v10;
}

- (void)_applyDataMode
{
  v29.receiver = self;
  v29.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v29 _applyDataMode];
  dataMode = [(NTKCollieFaceView *)self dataMode];
  v4 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_18B70();
  }

  if (self->_currentDataMode != dataMode)
  {
    [(UITapGestureRecognizer *)self->_singleTapGestureRecognizer setEnabled:dataMode == (&dword_0 + 1)];
    self->_isHandlingHardwareEvents = dataMode == (&dword_0 + 1);
    [(NTKCollieFaceView *)self _repositionCrownSequencer];
    currentStyleEditOption = self->_currentStyleEditOption;
    if (currentStyleEditOption)
    {
      v6 = currentStyleEditOption;
    }

    else
    {
      device = [(NTKCollieFaceView *)self device];
      v6 = [NTKCollieStyleEditOption defaultOptionForDevice:device];
    }

    currentDataMode = self->_currentDataMode;
    if (currentDataMode == 2)
    {
      if (dataMode == (&dword_0 + 1))
      {
        v11 = (&dword_0 + 2);
LABEL_17:
        objc_initWeak(&location, self);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_C400;
        v25[3] = &unk_2CC70;
        objc_copyWeak(v27, &location);
        v27[1] = v11;
        v12 = v6;
        v26 = v12;
        v13 = objc_retainBlock(v25);
        if (v11 != &dword_0 + 2)
        {
          avatar = [(NTKCollieQuad *)self->_avtQuad avatar];

          if (!avatar)
          {
            resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
            [objc_opt_class() _snapshotImageSize];
            v19 = v18;
            v21 = v20;
            device2 = [(NTKCollieFaceView *)self device];
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_C464;
            v23[3] = &unk_2CCC0;
            v24 = v13;
            [NTKCollieStyleEditOption prewarmOption:v12 resourceDirectory:resourceDirectory size:device2 forDevice:v23 completion:v19, v21];

            goto LABEL_23;
          }

          v15 = +[NTKCollieFaceBundle logObject];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_18C9C();
          }
        }

        (v13[2])(v13);
LABEL_23:

        objc_destroyWeak(v27);
        objc_destroyWeak(&location);
LABEL_28:
        self->_currentDataMode = dataMode;

        return;
      }

      v16 = +[NTKCollieFaceBundle logObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_18C00(&self->_currentDataMode, dataMode, v16);
      }

      [(NTKCollieFaceView *)self _unloadAvatar];
    }

    else
    {
      if (currentDataMode == 1)
      {
        v9 = sub_C3A0(dataMode);
        v10 = dataMode == &dword_4 || dataMode == (&dword_0 + 2);
        [NTKCollieFaceView _transitionFromAvatarToImageForOption:"_transitionFromAvatarToImageForOption:toState:immediate:retainAvatar:completion:" toState:v6 immediate:v9 retainAvatar:v10 completion:?];
        self->_tritiumAfterOnRestartNeeded = 0;
      }

      if (dataMode == (&dword_0 + 1))
      {
        v11 = self->_currentDataMode;
        goto LABEL_17;
      }
    }

    [(NTKCollieFaceView *)self _stopSecondActivities];
    goto LABEL_28;
  }
}

- (id)_bgColorForEditMode:(int64_t)mode
{
  if (mode == 1)
  {
    primaryColor2 = self->_complicationsEditModeColor;
  }

  else
  {
    if (mode == 15)
    {
      faceColorPalette = [(NTKCollieFaceView *)self faceColorPalette];
      primaryColor = [faceColorPalette primaryColor];
      primaryColor2 = NTKColorByApplyingBlackOverlay();
    }

    else
    {
      faceColorPalette = [(NTKCollieFaceView *)self faceColorPalette];
      primaryColor2 = [faceColorPalette primaryColor];
    }
  }

  return primaryColor2;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v9 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "[NTKCollieFaceView _configureForTransitionFraction:fromEditMode:toEditMode:]";
    *&buf[12] = 2048;
    *&buf[14] = fraction;
    *&buf[22] = 1024;
    *&buf[24] = mode;
    *&buf[28] = 1024;
    *&buf[30] = editMode;
    _os_log_debug_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%s: fraction = %f fromMode = %u toMode = %u", buf, 0x22u);
  }

  v29.receiver = self;
  v29.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v29 _configureForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
  v10 = [(NTKCollieFaceView *)self _bgColorForEditMode:mode];
  if (mode == 10)
  {
    v11 = 0.333000004;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = [(NTKCollieFaceView *)self _bgColorForEditMode:editMode, v11];
  v13 = NTKInterpolateBetweenColors();
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  CLKInterpolateBetweenFloatsClipped();
  v17 = v16;
  CLKInterpolateBetweenFloatsClipped();
  v19 = v18;
  [(NTKCollieFaceView *)self _setBackgroundColor:v13 radiance:v15];
  [(NTKCollieFaceView *)self _setContentOpaqueTimeAlpha:v17 complicationsAlpha:v19];
  device = [(NTKCollieFaceView *)self device];
  v21 = device;
  if (mode != 15)
  {
    memset(buf, 0, 48);
    sub_1150C(device, buf);
  }

  device2 = [(NTKCollieFaceView *)self device];
  v23 = device2;
  if (editMode != 15)
  {
    memset(buf, 0, 48);
    sub_1150C(device2, buf);
  }

  CLKInterpolateBetweenFloatsUnclipped();
  v25 = v24;
  if (mode == 1)
  {
    v26 = 0.100000001;
  }

  else
  {
    v26 = 1.0;
  }

  if (editMode == 1)
  {
    v27 = 0.100000001;
  }

  else
  {
    v27 = 1.0;
  }

  if ((mode != 0) == (editMode == 0))
  {
    [(NTKCollieFaceView *)self _asyncSetImageViewsForOption:self->_currentStyleEditOption state:0 resolveToyBox:editMode == 0];
  }

  if (fraction <= 0.5)
  {
    [(NTKCollieFaceImageView *)self->_fromSnapshotView setAlpha:v27 * fraction];
    v28 = (1.0 - fraction) * v26;
  }

  else
  {
    [(NTKCollieFaceImageView *)self->_fromSnapshotView setAlpha:(1.0 - fraction) * v26];
    v28 = v27 * fraction;
  }

  [(NTKCollieFaceImageView *)self->_toSnapshotView setAlpha:v28];
  [(NTKCollieFaceImageView *)self->_fromSnapshotView setVOffset:v25];
  [(NTKCollieFaceImageView *)self->_toSnapshotView setVOffset:v25];
}

- (void)_prepareForEditing
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v5 _prepareForEditing];
  resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
  device = [(NTKCollieFaceView *)self device];
  [NTKCollieStyleEditOption beginCacheWithResourceDirectory:resourceDirectory forDevice:device];
}

- (void)_cleanupAfterEditing
{
  v2.receiver = self;
  v2.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v2 _cleanupAfterEditing];
  +[NTKCollieStyleEditOption endCache];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_18D28();
  }

  v6 = [(NTKCollieFaceView *)self _bgColorForEditMode:mode];
  v7 = 1.0;
  if (mode == 15)
  {
    v7 = 0.5;
  }

  v8 = 0.0;
  switch(mode)
  {
    case 1:
      v7 = 0.0;
LABEL_9:
      v8 = 0.333000004;
      goto LABEL_11;
    case 15:
      goto LABEL_11;
    case 10:
      goto LABEL_9;
  }

  v8 = 1.0;
LABEL_11:
  v9 = 0.333000004;
  if (mode != 10)
  {
    v9 = 1.0;
  }

  v10 = 0.0;
  if (mode == 15)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v9;
  }

  [(NTKCollieFaceView *)self _setBackgroundColor:v6 radiance:v7, v9];
  [(NTKCollieFaceView *)self _setContentOpaqueTimeAlpha:v8 complicationsAlpha:v11];
  device = [(NTKCollieFaceView *)self device];
  v13 = device;
  if (mode != 15)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    sub_1150C(device, &v15);
    v10 = *&v16 * 0.5;
  }

  if (mode == 1)
  {
    v14 = 0.100000001;
  }

  else
  {
    v14 = 1.0;
  }

  [(NTKCollieFaceImageView *)self->_fromSnapshotView setAlpha:v14];
  [(NTKCollieFaceImageView *)self->_toSnapshotView setAlpha:v14];
  [(NTKCollieFaceImageView *)self->_fromSnapshotView setVOffset:v10];
  [(NTKCollieFaceImageView *)self->_toSnapshotView setVOffset:v10];
}

- (id)_snapshotImageForOption:(id)option machineState:(unint64_t)state resolveToyBox:(BOOL)box force:(BOOL)force
{
  forceCopy = force;
  boxCopy = box;
  optionCopy = option;
  v11 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    styleName = [optionCopy styleName];
    v24 = LogBool();
    v25 = 136316162;
    v26 = "[NTKCollieFaceView _snapshotImageForOption:machineState:resolveToyBox:force:]";
    v27 = 2048;
    v28 = optionCopy;
    v29 = 2112;
    v30 = styleName;
    v31 = 2048;
    stateCopy = state;
    v33 = 2112;
    v34 = v24;
    _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%s: start option(%p).style = %@ machineState = %lu resolveToyBox = %@", &v25, 0x34u);
  }

  v12 = [(NTKCollieFaceView *)self _resolveStyleEditOption:optionCopy resolveToyBox:boxCopy];

  [(NTKCollieFace *)self->_face ensureBridgeMemojiResources];
  [objc_opt_class() _snapshotImageSize];
  v14 = v13;
  v16 = v15;
  resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
  device = [(NTKCollieFaceView *)self device];
  avatar = [(NTKCollieQuad *)self->_avtQuad avatar];
  if (state == 1)
  {
    v20 = [NTKCollieStyleEditOption sleepImageForOption:v12 resourceDirectory:resourceDirectory size:device forDevice:avatar oldAvatar:v14, v16];
  }

  else
  {
    if (state == 2)
    {
      [NTKCollieStyleEditOption neutralImageForOption:v12 resourceDirectory:resourceDirectory size:device forDevice:avatar oldAvatar:v14, v16];
    }

    else
    {
      [NTKCollieStyleEditOption snapshotImageForOption:v12 resourceDirectory:resourceDirectory size:device forDevice:avatar oldAvatar:forceCopy force:v14, v16];
    }
    v20 = ;
  }

  v21 = v20;

  return v21;
}

- (id)_existingSnapshotImageForOption:(id)option state:(unint64_t)state
{
  if (state == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = state == 1;
  }

  face = self->_face;
  optionCopy = option;
  [(NTKCollieFace *)face ensureBridgeMemojiResources];
  [objc_opt_class() _snapshotImageSize];
  v9 = v8;
  v11 = v10;
  resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
  v13 = [NTKCollieStyleEditOption existingSnapshotImageForOption:optionCopy resourceDirectory:resourceDirectory poseType:v5 size:0 force:v9, v11];

  if (v13)
  {
    v14 = v13;
  }

  return v13;
}

- (void)_asyncSetImageView0:(id)view0 imageView1:(id)view1 image:(id)image forOption:(id)option state:(unint64_t)state completion:(id)completion
{
  view0Copy = view0;
  view1Copy = view1;
  imageCopy = image;
  optionCopy = option;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!(view0Copy | view1Copy))
  {
LABEL_7:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_22;
  }

  if (imageCopy)
  {
    if (view0Copy)
    {
      [view0Copy setImage:imageCopy];
    }

    if (view1Copy)
    {
      [view1Copy setImage:imageCopy];
    }

    goto LABEL_7;
  }

  styleName = [optionCopy styleName];
  if (state == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = state == 1;
  }

  v31 = v20;
  [NSString stringWithFormat:@"%@-%u", styleName, v20];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_D274;
  v21 = v36[3] = &unk_2CCE8;
  v37 = v21;
  stateCopy = state;
  v22 = objc_retainBlock(v36);
  v23 = v22;
  if (!view0Copy)
  {
    v24 = 1;
    if (view1Copy)
    {
      goto LABEL_14;
    }

LABEL_16:
    v25 = 1;
    goto LABEL_17;
  }

  v24 = (v22[2])(v22, view0Copy);
  if (!view1Copy)
  {
    goto LABEL_16;
  }

LABEL_14:
  v25 = v23[2](v23, view1Copy);
LABEL_17:
  if ((v24 & v25) == 1)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    [(NTKCollieFace *)self->_face ensureBridgeMemojiResources];
    [objc_opt_class() _snapshotImageSize];
    v27 = v26;
    v29 = v28;
    resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
    objc_initWeak(&location, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_D30C;
    v32[3] = &unk_2CD38;
    v33 = completionCopy;
    objc_copyWeak(&v34, &location);
    [NTKCollieStyleEditOption asyncMakeSnapshotImageForOption:optionCopy resourceDirectory:resourceDirectory poseType:v31 size:v32 completion:v27, v29];
    objc_destroyWeak(&v34);

    objc_destroyWeak(&location);
  }

LABEL_22:
}

- (void)_asyncSetImageViewsForOption:(id)option state:(unint64_t)state resolveToyBox:(BOOL)box
{
  v8 = [(NTKCollieFaceView *)self _resolveStyleEditOption:option resolveToyBox:box];
  v7 = [(NTKCollieFaceView *)self _existingSnapshotImageForOption:v8 state:state];
  [(NTKCollieFaceView *)self _asyncSetImageView0:self->_toSnapshotView imageView1:self->_fromSnapshotView image:v7 forOption:v8 state:state completion:0];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v5 willMoveToWindow:?];
  self->_movedToWindow = window != 0;
}

- (void)_reloadToyBoxAvatar
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(NTKCollieStyleEditOption *)self->_currentStyleEditOption isToybox])
  {
    nextToyBoxStyleEditOption = self->_nextToyBoxStyleEditOption;
    if (nextToyBoxStyleEditOption)
    {
      v4 = nextToyBoxStyleEditOption;
    }

    else
    {
      currentStyleEditOption = self->_currentStyleEditOption;
      resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
      v10 = [(NTKCollieStyleEditOption *)currentStyleEditOption nextRandomizedToyBoxOptionWithResourceDirectory:resourceDirectory];

      v4 = v10;
    }

    v11 = v4;
    [(NTKCollieStyleEditOption *)self->_currentStyleEditOption chooseToyBoxOption:v4];
    v7 = self->_nextToyBoxStyleEditOption;
    self->_nextToyBoxStyleEditOption = 0;

    currentToyBoxStyleEditOption = self->_currentToyBoxStyleEditOption;
    self->_currentToyBoxStyleEditOption = 0;

    self->_shouldShakeToyBox = 0;
    [(NTKCollieFaceView *)self _unloadAvatar];
    [(NTKCollieFaceView *)self _loadAvatarAsyncForOption:self->_currentStyleEditOption completion:0];
    v9 = [(NTKCollieFaceView *)self _snapshotImageForOption:self->_currentStyleEditOption machineState:2 resolveToyBox:1 force:0];
    [(NTKCollieFaceImageView *)self->_toSnapshotView setImage:v9];
  }
}

- (void)_transitionFromAvatarToImageForOption:(id)option toState:(unint64_t)state immediate:(BOOL)immediate retainAvatar:(BOOL)avatar forceImage:(BOOL)image completion:(id)completion
{
  imageCopy = image;
  avatarCopy = avatar;
  immediateCopy = immediate;
  optionCopy = option;
  completionCopy = completion;
  v16 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_18DA4();
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CLKUIMetalQuadView *)self->_avtView setPaused:1];
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    avtQuad = self->_avtQuad;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_DA8C;
    v18[3] = &unk_2CD60;
    objc_copyWeak(v21, &location);
    v20 = completionCopy;
    v19 = optionCopy;
    v21[1] = state;
    v22 = avatarCopy;
    v23 = immediateCopy;
    [(NTKCollieQuad *)avtQuad setPaused:1 completion:v18];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [(NTKCollieQuad *)self->_avtQuad setPaused:1];
    [(NTKCollieFaceView *)self _transitionFromAvatarToImagePart2ForOption:optionCopy toState:state retainAvatar:avatarCopy forceImage:imageCopy];
    [(NTKCollieFaceView *)self _transitionFromAvatarToImagePart3ForOption:optionCopy immediate:immediateCopy retainAvatar:avatarCopy];
  }
}

- (void)_transitionFromAvatarToImagePart2ForOption:(id)option toState:(unint64_t)state retainAvatar:(BOOL)avatar forceImage:(BOOL)image
{
  if (state)
  {
    v7 = [(NTKCollieFaceView *)self _snapshotImageForOption:option machineState:state resolveToyBox:avatar force:image];
    [(NTKCollieFaceImageView *)self->_toSnapshotView setImage:v7];
    [(NTKCollieFaceImageView *)self->_fromSnapshotView setImage:v7];
  }

  else
  {

    [NTKCollieFaceView _asyncSetImageViewsForOption:"_asyncSetImageViewsForOption:state:resolveToyBox:" state:option resolveToyBox:?];
  }
}

- (void)_transitionFromAvatarToImagePart3ForOption:(id)option immediate:(BOOL)immediate retainAvatar:(BOOL)avatar
{
  immediateCopy = immediate;
  optionCopy = option;
  device = [(NTKCollieFaceView *)self device];
  v23 = 0u;
  v24 = 0u;
  location = 0u;
  sub_1150C(device, &location);
  v10 = *&v23 * 0.5;

  [(NTKCollieFaceImageView *)self->_fromSnapshotView setVOffset:v10];
  [(NTKCollieFaceImageView *)self->_toSnapshotView setVOffset:v10];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_DF74;
  v19[3] = &unk_2CDC0;
  avatarCopy = avatar;
  v21 = immediateCopy;
  v11 = objc_retainBlock(v19);
  v12 = v11;
  if (immediateCopy)
  {
    sub_DEFC(v11, self);
    (v12)[2](v12, self);
  }

  else
  {
    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_E0AC;
    v16[3] = &unk_2CDE8;
    objc_copyWeak(&v18, &location);
    v17 = &stru_2CDA0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_E10C;
    v13[3] = &unk_2CE10;
    objc_copyWeak(&v15, &location);
    v14 = v12;
    [UIView animateWithDuration:0 delay:v16 options:v13 animations:0.5 completion:0.0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)_transitionFromImageToCurrentAvatarImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_18E24();
  }

  if (immediateCopy)
  {
    sub_E344(v6, self);
    sub_E3BC(v7, self);
  }

  else
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_E424;
    v11[3] = &unk_2CDE8;
    objc_copyWeak(&v13, &location);
    v12 = &stru_2CE30;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E484;
    v8[3] = &unk_2CE10;
    objc_copyWeak(&v10, &location);
    v9 = &stru_2CE50;
    [UIView animateWithDuration:0 delay:v11 options:v8 animations:0.25 completion:0.0];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_restartRenderForAvatar:(id)avatar fromState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  +[NSDate timeIntervalSinceReferenceDate];
  self->_didRenderAvatarStartTime = v8;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_E5D0;
  v10[3] = &unk_2CE78;
  objc_copyWeak(v12, &location);
  v12[1] = state;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (void)_unloadAvatar
{
  [(NTKCollieQuad *)self->_avtQuad setAvatar:0];
  currentWatchfaceCoordinator = self->_currentWatchfaceCoordinator;
  self->_currentWatchfaceCoordinator = 0;
}

- (void)_loadAvatarAsyncForOption:(id)option completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  v8 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = LogBool();
    v14 = objc_retainBlock(self->_didLoadAvatarCallback);
    v15 = objc_retainBlock(completionCopy);
    styleName = [optionCopy styleName];
    *location = 136316418;
    *&location[4] = "[NTKCollieFaceView _loadAvatarAsyncForOption:completion:]";
    v20 = 2048;
    selfCopy = self;
    v22 = 2112;
    v23 = v13;
    v24 = 2048;
    v25 = v14;
    v26 = 2048;
    v27 = v15;
    v28 = 2112;
    v29 = styleName;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%s(%p): _loadInProgress = %@ loadedCallback.was = %p loadedCallback.willBe = %p characterStyle = %@", location, 0x3Eu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = objc_retainBlock(completionCopy);
  didLoadAvatarCallback = self->_didLoadAvatarCallback;
  self->_didLoadAvatarCallback = v9;

  if (!self->_loadInProgress)
  {
    self->_loadInProgress = 1;
    kdebug_trace();
    [(NTKCollieFace *)self->_face ensureBridgeMemojiResources];
    objc_initWeak(location, self);
    resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
    avatar = [(NTKCollieQuad *)self->_avtQuad avatar];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_EE24;
    v17[3] = &unk_2CEC8;
    objc_copyWeak(&v18, location);
    [NTKCollieStyleEditOption loadAvatarForOption:optionCopy resourceDirectory:resourceDirectory oldAvatar:avatar completion:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }
}

- (void)_transitionFromImageToAvatarForOption:(id)option fromState:(unint64_t)state completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  v10 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_18E98();
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  +[NSDate timeIntervalSinceReferenceDate];
  self->_loadAvatarStartTime = v11;
  avatar = [(NTKCollieQuad *)self->_avtQuad avatar];
  if (avatar && (v13 = avatar, v14 = [(NTKCollieStyleEditOption *)self->_currentStyleEditOption isEqual:optionCopy], v13, v14))
  {
    v15 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_18F0C(self, optionCopy);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    self->_loadAvatarEndTime = v16;
    avatar2 = [(NTKCollieQuad *)self->_avtQuad avatar];
    [(NTKCollieFaceView *)self _restartRenderForAvatar:avatar2 fromState:state completion:completionCopy];
  }

  else
  {
    v18 = +[NTKCollieFaceBundle logObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_18FB8(self, optionCopy);
    }

    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_F36C;
    v19[3] = &unk_2CEF0;
    objc_copyWeak(v21, &location);
    v21[1] = state;
    v20 = completionCopy;
    [(NTKCollieFaceView *)self _loadAvatarAsyncForOption:optionCopy completion:v19];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

- (void)_reportStats
{
  didRenderAvatarEndTime = self->_didRenderAvatarEndTime;
  didRenderAvatarStartTime = self->_didRenderAvatarStartTime;
  loadAvatarEndTime = self->_loadAvatarEndTime;
  loadAvatarStartTime = self->_loadAvatarStartTime;
  self->_cumlativeLoadAndRenderAvatarDuration = didRenderAvatarEndTime - loadAvatarStartTime + self->_cumlativeLoadAndRenderAvatarDuration;
  ++self->_cumlativeLoadAndRenderAvatarCount;
  v7 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    cumlativeLoadAndRenderAvatarDuration = self->_cumlativeLoadAndRenderAvatarDuration;
    cumlativeLoadAndRenderAvatarCount = self->_cumlativeLoadAndRenderAvatarCount;
    v10 = 134219008;
    v11 = loadAvatarEndTime - loadAvatarStartTime;
    v12 = 2048;
    v13 = didRenderAvatarEndTime - didRenderAvatarStartTime;
    v14 = 2048;
    v15 = didRenderAvatarEndTime - loadAvatarStartTime;
    v16 = 2048;
    v17 = cumlativeLoadAndRenderAvatarDuration / cumlativeLoadAndRenderAvatarCount;
    v18 = 2048;
    v19 = cumlativeLoadAndRenderAvatarCount;
    _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "stats load: %.3f render: %.3f total: %.3f average: %.3f/%lu", &v10, 0x34u);
  }
}

- (void)_transitionFromImageToAvatarForOption:(id)option fromState:(unint64_t)state
{
  optionCopy = option;
  if ([optionCopy isToybox])
  {
    v7 = (self->_currentDataMode - 3) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F66C;
  v8[3] = &unk_2CF18;
  objc_copyWeak(v9, &location);
  v9[1] = state;
  v10 = v7;
  [(NTKCollieFaceView *)self _transitionFromImageToAvatarForOption:optionCopy fromState:state completion:v8];
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v13 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    localizedName = [optionCopy localizedName];
    localizedName2 = [toOptionCopy localizedName];
    LODWORD(v37.a) = 136315906;
    *(&v37.a + 4) = "[NTKCollieFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
    WORD2(v37.b) = 2048;
    *(&v37.b + 6) = fraction;
    HIWORD(v37.c) = 2112;
    *&v37.d = localizedName;
    LOWORD(v37.tx) = 2112;
    *(&v37.tx + 2) = localizedName2;
    _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%s: fraction = %f fromOption = %@ toOption = %@", &v37, 0x2Au);
  }

  switch(mode)
  {
    case 19:
      numeralOption = [optionCopy numeralOption];
      numeralOption2 = [toOptionCopy numeralOption];
      if (numeralOption == numeralOption2)
      {
        [(NTKCollieFaceView *)self _setNumerals:numeralOption];
      }

      else
      {
        if (fraction >= 0.5)
        {
          v28 = numeralOption2;
          CLKMapFractionIntoRange();
          v27 = v29;
          numeralOption = v28;
        }

        else
        {
          CLKMapFractionIntoRange();
          v27 = v26;
        }

        CLKMapFractionIntoRange();
        memset(&v37, 0, sizeof(v37));
        CGAffineTransformMakeScale(&v37, v30, v30);
        [(NTKCollieFaceView *)self _setNumerals:numeralOption];
        timeView = [(NTKCollieFaceView *)self timeView];
        [timeView setAlpha:v27];

        v36 = v37;
        timeView2 = [(NTKCollieFaceView *)self timeView];
        v35 = v36;
        [timeView2 setTransform:&v35];
      }

      break;
    case 15:
      interpolatedColorPalette = optionCopy;
      primaryColor = toOptionCopy;
      v16 = [(NTKCollieFaceView *)self _existingSnapshotImageForOption:interpolatedColorPalette state:0];
      v17 = [(NTKCollieFaceView *)self _existingSnapshotImageForOption:primaryColor state:0];
      v18 = v17;
      if (fraction >= 0.0500000007)
      {
        v19 = v17;
        v20 = primaryColor;
        if (fraction <= 0.949999988)
        {
LABEL_13:
          if (fraction <= 0.5)
          {
            [(NTKCollieFaceView *)self _asyncSetImageView:self->_toSnapshotView image:v16 forOption:interpolatedColorPalette state:0];
            [(NTKCollieFaceImageView *)self->_toSnapshotView setAlpha:1.0 - fraction];
            v23 = 48;
          }

          else
          {
            [(NTKCollieFaceView *)self _asyncSetImageView:self->_fromSnapshotView image:v16 forOption:interpolatedColorPalette state:0];
            [(NTKCollieFaceImageView *)self->_fromSnapshotView setAlpha:1.0 - fraction];
            v23 = 56;
          }

          [(NTKCollieFaceView *)self _asyncSetImageView:*&self->NTKDigitalFaceView_opaque[v23] image:v18 forOption:primaryColor state:0];
          [*&self->NTKDigitalFaceView_opaque[v23] setAlpha:fraction];
          [(NTKCollieFaceView *)self device];

          [(NTKCollieFaceImageView *)self->_fromSnapshotView setVOffset:0.0];
          [(NTKCollieFaceImageView *)self->_toSnapshotView setVOffset:0.0];
          v24 = interpolatedColorPalette;
          if (fraction <= 0.0 || (v24 = primaryColor, fraction >= 1.0))
          {
            objc_storeStrong(&self->_currentStyleEditOption, v24);
          }

          currentToyBoxStyleEditOption = self->_currentToyBoxStyleEditOption;
          self->_currentToyBoxStyleEditOption = 0;

          if (!(v16 | v18))
          {
            [(NTKCollieFaceImageView *)self->_fromSnapshotView setAlpha:1.0];
            [(NTKCollieFaceImageView *)self->_toSnapshotView setAlpha:1.0];
          }

          goto LABEL_22;
        }
      }

      else
      {
        v19 = v16;
        v16 = v17;
        v20 = interpolatedColorPalette;
        interpolatedColorPalette = primaryColor;
      }

      v18 = v19;

      primaryColor = v20;
      v16 = v18;
      interpolatedColorPalette = primaryColor;
      goto LABEL_13;
    case 10:
      interpolatedColorPalette = [(NTKCollieFaceView *)self interpolatedColorPalette];
      primaryColor = [interpolatedColorPalette primaryColor];
      [(NTKCollieFaceView *)self _setBackgroundColor:primaryColor radiance:1.0];
LABEL_22:

      break;
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    dataMode = [(NTKCollieFaceView *)self dataMode];
    localizedName = [optionCopy localizedName];
    v18 = 136316162;
    v19 = "[NTKCollieFaceView _applyOption:forCustomEditMode:slot:]";
    v20 = 2048;
    selfCopy = self;
    v22 = 2048;
    v23 = dataMode;
    v24 = 2112;
    v25 = localizedName;
    v26 = 1024;
    modeCopy = mode;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%s(%p): dataMode = %ld option = %@ mode = %u", &v18, 0x30u);
  }

  switch(mode)
  {
    case 19:
      -[NTKCollieFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
      break;
    case 15:
      v11 = optionCopy;
      v12 = sub_C3A0(self->_currentDataMode);
      if (self->_currentDataMode == 1)
      {
        [(NTKCollieFaceView *)self _transitionFromAvatarToImageForOption:v11 toState:v12 immediate:1 retainAvatar:0];
        [(NTKCollieFaceView *)self _transitionFromImageToAvatarForOption:v11 fromState:v12];
      }

      else
      {
        currentStyleEditOption = self->_currentStyleEditOption;
        if (!currentStyleEditOption || ![(NTKCollieStyleEditOption *)currentStyleEditOption isEqual:v11])
        {
          [(NTKCollieFaceView *)self _transitionFromAvatarToImageForOption:v11 toState:v12 immediate:0 retainAvatar:0];
        }
      }

      v14 = self->_currentStyleEditOption;
      self->_currentStyleEditOption = v11;
      faceColorPalette = v11;

      currentToyBoxStyleEditOption = self->_currentToyBoxStyleEditOption;
      self->_currentToyBoxStyleEditOption = 0;

      goto LABEL_14;
    case 10:
      faceColorPalette = [(NTKCollieFaceView *)self faceColorPalette];
      primaryColor = [(NTKCollieStyleEditOption *)faceColorPalette primaryColor];
      [(NTKCollieFaceView *)self _setBackgroundColor:primaryColor radiance:1.0];

LABEL_14:
      break;
  }
}

- (void)_setNumerals:(unint64_t)numerals
{
  self->_numeralOption = numerals;
  v4 = CLKLocaleNumberSystemFromNumeralOption();
  if (self->_numberSystem != v4)
  {
    v5 = v4;
    self->_numberSystem = v4;
    device = [(NTKCollieFaceView *)self device];
    v7 = NTKShowIndicScriptNumerals();

    if (v7)
    {
      timeView = [(NTKCollieFaceView *)self timeView];
      [timeView setForcedNumberSystem:v5];

      [(NTKCollieFaceView *)self invalidateDigitalTimeLabelStyle];

      [(NTKCollieFaceView *)self setNeedsLayout];
    }
  }
}

- (void)_pushBackMachineStateResetTimer:(double)timer completionHandler:(id)handler
{
  handlerCopy = handler;
  machineStateResetTimer = self->_machineStateResetTimer;
  if (machineStateResetTimer)
  {
    [(NSTimer *)machineStateResetTimer invalidate];
    v8 = self->_machineStateResetTimer;
    self->_machineStateResetTimer = 0;
  }

  if (handlerCopy)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_FF58;
    v11[3] = &unk_2CF40;
    v12 = handlerCopy;
    v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v11 block:timer];
    v10 = self->_machineStateResetTimer;
    self->_machineStateResetTimer = v9;
  }
}

- (void)_transitionBackgroundToBlackImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  device = [(NTKCollieFaceView *)self device];
  v6 = [UIColor colorWithWhite:0.649999976 alpha:1.0];
  if (immediateCopy)
  {
    [(NTKCollieFaceView *)self _setBackgroundAlpha:v6 contentAlpha:0.0 timeComplicationsColor:0.649999976];
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100D8;
    v7[3] = &unk_2CF68;
    objc_copyWeak(&v9, &location);
    v10 = xmmword_26B40;
    v8 = v6;
    [UIView animateWithDuration:196608 delay:v7 options:0 animations:0.5 completion:0.0];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_transitionBackgroundToColor
{
  faceColorPalette = [(NTKCollieFaceView *)self faceColorPalette];
  primaryColor = [faceColorPalette primaryColor];

  v5 = +[UIColor whiteColor];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_102FC;
  v20[3] = &unk_2CF68;
  objc_copyWeak(&v22, &location);
  __asm { FMOV            V0.2D, #1.0 }

  v14 = _Q0;
  v23 = _Q0;
  v11 = v5;
  v21 = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10354;
  v15[3] = &unk_2CF90;
  objc_copyWeak(&v18, &location);
  v19 = v14;
  v12 = v11;
  v16 = v12;
  v13 = primaryColor;
  v17 = v13;
  [UIView animateWithDuration:0x20000 delay:v20 options:v15 animations:0.5 completion:0.0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_transitionToMachineState:(unint64_t)state immediate:(BOOL)immediate
{
  stateCopy = state;
  currentMachineState = self->_currentMachineState;
  v7 = [NTKCollieFaceBundle logObject:state];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [&off_2DDA8 objectAtIndexedSubscript:currentMachineState];
    v9 = [&off_2DDA8 objectAtIndexedSubscript:stateCopy];
    v10 = 136315650;
    v11 = "[NTKCollieFaceView _transitionToMachineState:immediate:]";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s: oldState = %@, newState = %@", &v10, 0x20u);
  }

  if ((stateCopy - 3) >= 2)
  {
    if (stateCopy != 1)
    {
      if (stateCopy == 5)
      {
        if (currentMachineState == 1)
        {
          return;
        }

        stateCopy = 5;
      }

      else
      {
        stateCopy = 2;
      }
    }

    self->_currentMachineState = stateCopy;
  }
}

- (void)_startMachineFromState:(unint64_t)state
{
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_19064();
  }

  currentWatchfaceCoordinator = self->_currentWatchfaceCoordinator;
  self->_currentWatchfaceCoordinator = 0;

  if (state == 1)
  {
    [(NTKCollieFaceView *)self _transitionToMachineState:1 immediate:1];
  }

  [(NTKCollieFaceView *)self _transitionToMachineState:3];
  [(NTKCollieFaceView *)self _addSecondActivities];
}

- (void)_stopMachineImmediate:(BOOL)immediate
{
  immediateCopy = immediate;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_190D8();
  }

  [(NTKCollieFaceView *)self _pushBackMachineStateResetTimer:0 completionHandler:0.0];
  if (self->_currentMachineState == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(NTKCollieFaceView *)self _transitionToMachineState:v6 immediate:immediateCopy];
}

- (void)screenDidTurnOffAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_19180();
  }

  [(NTKCollieFaceView *)self _stopMachineImmediate:1];
  v6.receiver = self;
  v6.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v6 screenDidTurnOffAnimated:animatedCopy];
  if ([(NTKCollieStyleEditOption *)self->_currentStyleEditOption isToybox])
  {
    self->_shouldShakeToyBox = 1;
  }
}

- (void)_handleWristRaiseScreenWake
{
  v2 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_191F4();
  }
}

- (void)_handleOrdinaryScreenWake
{
  v2 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_19268();
  }
}

- (void)_becameActiveFace
{
  v2 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_192DC();
  }
}

- (void)_becameInactiveFace
{
  v3 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_19350();
  }

  [(NTKCollieFaceView *)self _stopMachineImmediate:1];
}

- (void)_viewSingleTapped:(id)tapped
{
  v4 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NTKCollieFaceView _viewSingleTapped:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s: called", &v5, 0xCu);
  }

  [(NTKCollieFaceView *)self _transitionToMachineState:4];
}

- (void)_topOfTheMinuteReached
{
  if ([(NTKCollieFaceView *)self dataMode]== &dword_0 + 1)
  {
    lastSelfiePoseStart = self->_lastSelfiePoseStart;
    if (!lastSelfiePoseStart || ([(NSDate *)lastSelfiePoseStart timeIntervalSinceNow], v4 <= -1.55))
    {

      [(NTKCollieFaceView *)self _transitionToMachineState:5];
    }
  }
}

- (CGPoint)_fractionalLocationOfGesture:(id)gesture inView:(id)view
{
  [gesture locationInView:view];
  v6 = v5;
  v8 = v7;
  [(CLKUIMetalQuadView *)self->_avtView bounds];
  v10 = fmin(fmax((v6 - v9 * 0.5) / (v9 * 0.5), -1.0), 1.0);
  v12 = fmax((v8 - v11 * 0.5) / (v11 * 0.5), -1.0);
  if (v12 >= 1.0)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = -v12;
  }

  result.y = v13;
  result.x = v10;
  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 19)
  {
    v6 = &off_2DDC0;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___NTKCollieFaceView;
    v6 = objc_msgSendSuper2(&v8, "_swatchForEditModeDependsOnOptions:forDevice:", options, device);
  }

  return v6;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler
{
  optionCopy = option;
  optionsCopy = options;
  handlerCopy = handler;
  if (mode == 19)
  {
    device = [(NTKCollieFaceView *)self device];
    v17 = sub_BF04(device);

    device2 = [(NTKCollieFaceView *)self device];
    v15 = [optionCopy swatchImageWithFont:v17 device:device2 baseline:0.0];
  }

  else if (mode == 15)
  {
    v13 = [(NTKCollieFaceView *)self _existingSnapshotImageForOption:optionCopy state:0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [objc_opt_class() _snapshotImageSize];
      v20 = v19;
      v22 = v21;
      resourceDirectory = [(NTKCollieFaceView *)self resourceDirectory];
      [optionCopy styleName];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10DBC;
      v28 = v27[3] = &unk_2CFB8;
      v29 = handlerCopy;
      v24 = v28;
      [NTKCollieStyleEditOption asyncMakeSnapshotImageForOption:optionCopy resourceDirectory:resourceDirectory poseType:0 size:v27 completion:v20, v22];
      v15 = +[NTKCollieFaceImageView loadingImage];
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = NTKCollieFaceView;
    v15 = [(NTKCollieFaceView *)&v26 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

- (void)_reorderSwitcherSnapshotView
{
  v5.receiver = self;
  v5.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v5 _reorderSwitcherSnapshotView];
  switcherSnapshotView = [(NTKCollieFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKCollieFaceView *)self switcherSnapshotView];
    [(NTKCollieFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)populateFaceViewEditOptionsFromFace:(id)face
{
  faceCopy = face;
  v6.receiver = self;
  v6.super_class = NTKCollieFaceView;
  [(NTKCollieFaceView *)&v6 populateFaceViewEditOptionsFromFace:faceCopy];
  face = self->_face;
  self->_face = faceCopy;
}

- (void)_avatarStoreDidChange:(id)change
{
  changeCopy = change;
  v5 = +[NTKCollieFaceBundle logObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NTKCollieFaceView _avatarStoreDidChange:]";
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = changeCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s(%p): started, notification = %@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = self->_currentStyleEditOption;
  userInfo = [changeCopy userInfo];
  v8 = [(NTKCollieStyleEditOption *)v6 isImpactedByAvatarStoreChangedInfo:userInfo];

  if (v8)
  {
    if (self->_currentDataMode == 2)
    {
      [(NTKCollieFaceView *)self _unloadAvatar];
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_110E4;
    block[3] = &unk_2CFE0;
    v10 = v6;
    v11 = changeCopy;
    selfCopy2 = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end