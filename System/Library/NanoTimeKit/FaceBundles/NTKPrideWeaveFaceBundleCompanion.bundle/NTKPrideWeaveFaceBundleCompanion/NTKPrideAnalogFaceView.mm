@interface NTKPrideAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_isActiveFace;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKPrideAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (id)_complicationDisplayWrapperForTouch:(id)touch;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)adjustBrightnessOfColor:(id)color brightnessAmount:(double)amount;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_handleOrdinaryScreenWake;
- (void)_loadBackgroundViews;
- (void)_loadSnapshotContentViews;
- (void)_performWristRaiseAnimation;
- (void)_prepareWristRaiseAnimation;
- (void)_setupComplicationFactoryForDevice:(id)device;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColors;
- (void)_updatePausedState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActiveQuad:(id)quad;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation NTKPrideAnalogFaceView

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKPrideAnalogFaceView *)self _loadBackgroundViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKPrideAnalogFaceView *)self _unloadBackgroundViews];
}

- (void)_loadBackgroundViews
{
  contentView = [(NTKPrideAnalogFaceView *)self contentView];
  [contentView addSubview:self->_bandsView];

  [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
  [(NTKPrideSplinesQuad *)self->_activeQuad forceRender];

  [(NTKPrideAnalogFaceView *)self layoutSubviews];
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKPrideAnalogFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == &dword_0 + 1;

  return v3;
}

- (void)_setupComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NTKPrideAnalogFaceViewComplicationFactory alloc] initWithFaceView:self device:deviceCopy];

  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  self->_faceViewComplicationFactory = v5;

  v7 = self->_faceViewComplicationFactory;

  [(NTKPrideAnalogFaceView *)self setComplicationFactory:v7];
}

- (NTKPrideAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NTKPrideAnalogFaceView;
  v9 = [(NTKPrideAnalogFaceView *)&v18 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(NTKPrideAnalogFaceView *)v9 _setupComplicationFactoryForDevice:deviceCopy];
    v10->_useXR = 0;
    v11 = [CLKUIQuadView quadViewWithFrame:@"PrAn" identifier:0 options:0 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    bandsView = v10->_bandsView;
    v10->_bandsView = v11;

    v13 = [(NTKPrideCircularQuad *)[NTKPrideBetweenCircularQuad alloc] initWithDevice:deviceCopy useXRsRGB:v10->_useXR];
    ribbonsQuad = v10->_ribbonsQuad;
    v10->_ribbonsQuad = v13;

    [(NTKPrideCircularQuad *)v10->_ribbonsQuad clearWaves];
    [(NTKPrideSplinesQuad *)v10->_ribbonsQuad setFadeMultiplier:0.0];
    [(CLKUIQuadView *)v10->_bandsView addQuad:v10->_ribbonsQuad];
    v15 = [[NTKPrideCircularQuad alloc] initWithDevice:deviceCopy useXRsRGB:v10->_useXR];
    bandsQuad = v10->_bandsQuad;
    v10->_bandsQuad = v15;

    [(NTKPrideCircularQuad *)v10->_bandsQuad clearWaves];
    [(NTKPrideSplinesQuad *)v10->_bandsQuad setFadeMultiplier:0.0];
    [(CLKUIQuadView *)v10->_bandsView addQuad:v10->_bandsQuad];
    v10->_complicationBrightness = 0.0;
    [(NTKPrideAnalogFaceView *)v10 setActiveQuad:v10->_bandsQuad];
    [(NTKPrideAnalogFaceView *)v10 layoutSubviews];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v4 dealloc];
}

- (void)setActiveQuad:(id)quad
{
  quadCopy = quad;
  [(NTKPrideSplinesQuad *)self->_activeQuad setEnableRecording:0];
  activeQuad = self->_activeQuad;
  self->_activeQuad = quadCopy;
  v6 = quadCopy;

  [(NTKPrideSplinesQuad *)self->_activeQuad setEnableRecording:1];
}

- (BOOL)_isActiveFace
{
  dataMode = [(NTKPrideAnalogFaceView *)self dataMode];
  if (dataMode != &dword_0 + 1)
  {
    LOBYTE(dataMode) = [(NTKPrideAnalogFaceView *)self dataMode]== &dword_0 + 2;
  }

  return dataMode;
}

- (void)_prepareWristRaiseAnimation
{
  if ([(NTKPrideAnalogFaceView *)self _isActiveFace])
  {
    [(NTKPrideCircularQuad *)self->_activeQuad prepareWristRaiseAnimation];

    [(NTKPrideAnalogFaceView *)self _updateComplicationColors];
  }
}

- (void)_performWristRaiseAnimation
{
  if ([(NTKPrideAnalogFaceView *)self _isActiveFace])
  {
    [(NTKPrideCircularQuad *)self->_activeQuad performWristRaiseAnimation];

    [(NTKPrideAnalogFaceView *)self _updateComplicationColors];
  }
}

- (void)_handleOrdinaryScreenWake
{
  if ([(NTKPrideAnalogFaceView *)self _isActiveFace])
  {
    [(NTKPrideCircularQuad *)self->_activeQuad handleOrdinaryScreenWake];

    [(NTKPrideAnalogFaceView *)self _updateComplicationColors];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v4 layoutSubviews];
  [(NTKPrideAnalogFaceView *)self bounds];
  [(CLKUIQuadView *)self->_bandsView setFrame:?];
  contentView = [(NTKPrideAnalogFaceView *)self contentView];
  [contentView sendSubviewToBack:self->_bandsView];

  [(CLKUIQuadView *)self->_bandsView layoutSubviews];
}

- (id)adjustBrightnessOfColor:(id)color brightnessAmount:(double)amount
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [color getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7];
  CLKInterpolateBetweenFloatsUnclipped();
  v8 = v4;
  v5 = [UIColor colorWithHue:v10 saturation:v9 brightness:v4 alpha:v7];

  return v5;
}

- (void)_updateComplicationColors
{
  v5 = [(NTKPrideCircularQuad *)self->_activeQuad splineColorAtIndex:0];
  v3 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v5 brightnessAmount:self->_complicationBrightness];
  v4 = [(NTKPrideAnalogFaceView *)self adjustBrightnessOfColor:v3 brightnessAmount:-0.8];
  [(NTKPrideAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory setForegroundColor:v3 faceView:self];
  [(NTKPrideAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory setPlatterColor:v4 faceView:self];
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)slot
{
  switch(slot)
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

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  snapshottingCopy = snapshotting;
  [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
  if (![(NTKPrideSplinesQuad *)self->_activeQuad forceRender])
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1523C(v5);
    }
  }

  snapshottingCopy[2](snapshottingCopy);
}

- (void)_applySlow
{
  v4.receiver = self;
  v4.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v4 _applySlow];
  [(NTKPrideAnalogFaceView *)self _updatePausedState];
  wasSlow = self->_wasSlow;
  if (wasSlow != [(NTKPrideAnalogFaceView *)self isSlow])
  {
    [(NTKPrideSplinesQuad *)self->_activeQuad forceRender];
  }

  self->_wasSlow = [(NTKPrideAnalogFaceView *)self isSlow];
}

- (void)_updatePausedState
{
  dataMode = [(NTKPrideAnalogFaceView *)self dataMode];
  isFrozen = [(NTKPrideAnalogFaceView *)self isFrozen];
  v5 = NTKIsScreenOn();
  bandsView = self->_bandsView;
  if (dataMode == &dword_0 + 1)
  {
    v7 = isFrozen | v5 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = self->_bandsView;

  [(CLKUIQuadView *)v8 setPaused:v7 & 1];
}

- (void)_applyDataMode
{
  v4.receiver = self;
  v4.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v4 _applyDataMode];
  dataMode = [(NTKPrideAnalogFaceView *)self dataMode];
  if (dataMode <= 5)
  {
    if (((1 << dataMode) & 0x34) != 0)
    {
      [(NTKPrideSplinesQuad *)self->_activeQuad setIgnoresStrumAndTap:1];
      [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
      [(NTKPrideAnalogFaceView *)self _updatePausedState];
    }

    else if (((1 << dataMode) & 3) != 0)
    {
      [(NTKPrideSplinesQuad *)self->_activeQuad setIgnoresStrumAndTap:0];
      [(NTKPrideAnalogFaceView *)self _updatePausedState];
      [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
    }

    else
    {
      [(NTKPrideSplinesQuad *)self->_activeQuad setIgnoresStrumAndTap:1];
      [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
      [(NTKPrideAnalogFaceView *)self _updatePausedState];
      [(NTKPrideCircularQuad *)self->_activeQuad setDefaultSplineColors];
      [(NTKPrideAnalogFaceView *)self _updateComplicationColors];
    }
  }
}

- (id)_complicationDisplayWrapperForTouch:(id)touch
{
  touchCopy = touch;
  if ([(NTKPrideCircularQuad *)self->_activeQuad willConsumeTouch:touchCopy])
  {
    v5 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_12FE0;
    v14 = sub_12FF0;
    v15 = 0;
    [touchCopy locationInView:self];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_12FF8;
    v9[3] = &unk_24860;
    v9[6] = v6;
    v9[7] = v7;
    v9[4] = self;
    v9[5] = &v10;
    [(NTKPrideAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
    v5 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v5;
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 12)
  {
    style = [optionCopy style];
    style2 = [toOptionCopy style];
    v21 = flt_1B6F8[style];
    v22 = flt_1B6F8[style2];
    CLKInterpolateBetweenFloatsUnclipped();
    v24 = v23;
    *&v23 = v24;
    [(NTKPrideSplinesQuad *)self->_bandsQuad setFadeMultiplier:v23];
    *&v25 = 1.0 - v24;
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:v25];
  }

  else if (mode == 15)
  {
    style3 = [optionCopy style];
    style4 = [toOptionCopy style];
    v15 = *(&qword_1B160 + style3);
    v16 = *(&qword_1B160 + style4);
    CLKInterpolateBetweenFloatsUnclipped();
    *&v17 = v17;
    v18 = *&v17;
    [(NTKPrideCircularQuad *)self->_bandsQuad applyTransitionFromDialToFullScreenWithFraction:*&v17];
    [(NTKPrideCircularQuad *)self->_ribbonsQuad applyTransitionFromDialToFullScreenWithFraction:v18];
  }

  [(NTKPrideSplinesQuad *)self->_ribbonsQuad forceRenderOnce];
  [(NTKPrideSplinesQuad *)self->_bandsQuad forceRenderOnce];
  [(CLKUIQuadView *)self->_bandsView renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 12)
  {
    style = [optionCopy style];
    if (style)
    {
      if (style == &dword_0 + 2)
      {
        [(NTKPrideAnalogFaceView *)self setActiveQuad:self->_ribbonsQuad];
        LODWORD(v14) = 1.0;
        [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:v14];
        bandsQuad = self->_bandsQuad;
        v12 = 0.0;
        goto LABEL_13;
      }

      if (style != &dword_0 + 1)
      {
        goto LABEL_14;
      }
    }

    [(NTKPrideAnalogFaceView *)self setActiveQuad:self->_bandsQuad];
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:0.0];
    bandsQuad = self->_bandsQuad;
    LODWORD(v12) = 1.0;
LABEL_13:
    [(NTKPrideSplinesQuad *)bandsQuad setFadeMultiplier:v12];
    goto LABEL_14;
  }

  if (mode == 15)
  {
    style2 = [optionCopy style];
    if (style2)
    {
      if (style2 == &dword_0 + 1)
      {
        [(NTKPrideCircularQuad *)self->_bandsQuad setFullscreenMode];
        [(NTKPrideCircularQuad *)self->_ribbonsQuad setFullscreenMode];
      }
    }

    else
    {
      [(NTKPrideCircularQuad *)self->_bandsQuad setDialMode];
      [(NTKPrideCircularQuad *)self->_ribbonsQuad setDialMode];
    }

    delegate = [(NTKPrideAnalogFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

LABEL_14:
  [(NTKPrideAnalogFaceView *)self _updateComplicationColors];
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v13.receiver = self;
  v13.super_class = NTKPrideAnalogFaceView;
  [NTKPrideAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  timeView = [(NTKPrideAnalogFaceView *)self timeView];
  [(NTKPrideAnalogFaceView *)self _handAlphaForEditMode:mode];
  [(NTKPrideAnalogFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  contentView = [(NTKPrideAnalogFaceView *)self contentView];
  [(NTKPrideAnalogFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKPrideAnalogFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [contentView setAlpha:?];

  contentView2 = [(NTKPrideAnalogFaceView *)self contentView];
  v11 = *&CGAffineTransformIdentity.c;
  v12[0] = *&CGAffineTransformIdentity.a;
  v12[1] = v11;
  v12[2] = *&CGAffineTransformIdentity.tx;
  [contentView2 setTransform:v12];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v10 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 15 || mode == 12)
  {
    contentView = [(NTKPrideAnalogFaceView *)self contentView];
    NTKAlphaForRubberBandingFraction();
    [contentView setAlpha:?];
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v9, v8, v8);
    [contentView setTransform:&v9];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  v7 = [(NTKPrideAnalogFaceView *)self _complicationDisplayWrapperForTouch:anyObject];
  touchWrapper = self->_touchWrapper;
  self->_touchWrapper = v7;

  v9 = self->_touchWrapper;
  if (v9)
  {
    display = [(NTKComplicationDisplayWrapperView *)v9 display];
    [display setHighlighted:1];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = beganCopy;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(NTKPrideSplinesQuad *)self->_activeQuad handleSingleTap:*(*(&v16 + 1) + 8 * v15), v16];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  obj = [(NTKPrideAnalogFaceView *)self _complicationDisplayWrapperForTouch:anyObject];

  v6 = obj;
  touchWrapper = self->_touchWrapper;
  if (obj != touchWrapper)
  {
    if (touchWrapper)
    {
      display = [(NTKComplicationDisplayWrapperView *)touchWrapper display];
      [display setHighlighted:0];

      v6 = obj;
    }

    if (v6)
    {
      display2 = [(NTKComplicationDisplayWrapperView *)v6 display];
      [display2 setHighlighted:1];
    }

    objc_storeStrong(&self->_touchWrapper, obj);
  }

  _objc_release_x1();
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:ended];
    [v6 setHighlighted:0];

    if ([(NTKComplicationDisplayWrapperView *)self->_touchWrapper tapEnabled])
    {
      [(NTKComplicationDisplayWrapperView *)self->_touchWrapper performTap];
    }

    v7 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:cancelled];
    [v6 setHighlighted:0];

    v7 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_25C28;
  if (options != 15)
  {
    v4 = 0;
  }

  if (options == 12)
  {
    return &off_25C10;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_17;
    }
  }

  v9 = NTKFaceStyleDescription();
  v10 = [NTKPrideSwatchMappedImageCache keyForFaceStyle:v9 editOption:optionCopy mode:mode selectedOptions:optionsCopy];

  v11 = +[NTKPrideSwatchMappedImageCache sharedCache];
  v12 = [v11 imageForKey:v10];

  if (!v12)
  {
    v13 = [NTKPrideAnalogFaceView alloc];
    v14 = +[CLKDevice currentDevice];
    v15 = [(NTKPrideAnalogFaceView *)v13 initWithFaceStyle:33 forDevice:v14 clientIdentifier:0];

    if (mode == 15)
    {
      v16 = optionCopy;
      v18 = [optionsCopy objectForKeyedSubscript:&off_25A28];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      if (mode != 12)
      {
        goto LABEL_10;
      }

      v16 = [optionsCopy objectForKeyedSubscript:&off_25A10];
      v18 = optionCopy;
    }

    v17 = v18;
LABEL_10:
    [NTKEditOption sizeForSwatchStyle:3];
    v20 = v19;
    v22 = v21;
    v23 = +[UIScreen mainScreen];
    [v23 nativeScale];
    v25 = v24;

    [v15 _applyOption:v16 forCustomEditMode:15 slot:0];
    [v15 _applyOption:v17 forCustomEditMode:12 slot:0];
    style = [v16 style];
    if (style)
    {
      v12 = 0;
      if (style != &dword_0 + 1)
      {
LABEL_15:
        v28 = +[NTKPrideSwatchMappedImageCache sharedCache];
        [v28 setImage:v12 forKey:v10];

        goto LABEL_16;
      }

      v27 = [v15[6] snapshotWithSize:0 scale:v20 apl:{v22, v25}];
    }

    else
    {
      v27 = [v15[6] snapshotWithScale:v25];
    }

    v12 = v27;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:

  return v12;
}

@end