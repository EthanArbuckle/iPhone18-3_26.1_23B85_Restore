@interface NTKPrideAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_isActiveFace;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKPrideAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (id)_complicationDisplayWrapperForTouch:(id)a3;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)adjustBrightnessOfColor:(id)a3 brightnessAmount:(double)a4;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_handleOrdinaryScreenWake;
- (void)_loadBackgroundViews;
- (void)_loadSnapshotContentViews;
- (void)_performWristRaiseAnimation;
- (void)_prepareWristRaiseAnimation;
- (void)_setupComplicationFactoryForDevice:(id)a3;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColors;
- (void)_updatePausedState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActiveQuad:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v3 = [(NTKPrideAnalogFaceView *)self contentView];
  [v3 addSubview:self->_bandsView];

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

- (void)_setupComplicationFactoryForDevice:(id)a3
{
  v4 = a3;
  v5 = [[NTKPrideAnalogFaceViewComplicationFactory alloc] initWithFaceView:self device:v4];

  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  self->_faceViewComplicationFactory = v5;

  v7 = self->_faceViewComplicationFactory;

  [(NTKPrideAnalogFaceView *)self setComplicationFactory:v7];
}

- (NTKPrideAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NTKPrideAnalogFaceView;
  v9 = [(NTKPrideAnalogFaceView *)&v18 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    [(NTKPrideAnalogFaceView *)v9 _setupComplicationFactoryForDevice:v8];
    v10->_useXR = 0;
    v11 = [CLKUIQuadView quadViewWithFrame:@"PrAn" identifier:0 options:0 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    bandsView = v10->_bandsView;
    v10->_bandsView = v11;

    v13 = [(NTKPrideCircularQuad *)[NTKPrideBetweenCircularQuad alloc] initWithDevice:v8 useXRsRGB:v10->_useXR];
    ribbonsQuad = v10->_ribbonsQuad;
    v10->_ribbonsQuad = v13;

    [(NTKPrideCircularQuad *)v10->_ribbonsQuad clearWaves];
    [(NTKPrideSplinesQuad *)v10->_ribbonsQuad setFadeMultiplier:0.0];
    [(CLKUIQuadView *)v10->_bandsView addQuad:v10->_ribbonsQuad];
    v15 = [[NTKPrideCircularQuad alloc] initWithDevice:v8 useXRsRGB:v10->_useXR];
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

- (void)setActiveQuad:(id)a3
{
  v4 = a3;
  [(NTKPrideSplinesQuad *)self->_activeQuad setEnableRecording:0];
  activeQuad = self->_activeQuad;
  self->_activeQuad = v4;
  v6 = v4;

  [(NTKPrideSplinesQuad *)self->_activeQuad setEnableRecording:1];
}

- (BOOL)_isActiveFace
{
  v3 = [(NTKPrideAnalogFaceView *)self dataMode];
  if (v3 != &dword_0 + 1)
  {
    LOBYTE(v3) = [(NTKPrideAnalogFaceView *)self dataMode]== &dword_0 + 2;
  }

  return v3;
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
  v3 = [(NTKPrideAnalogFaceView *)self contentView];
  [v3 sendSubviewToBack:self->_bandsView];

  [(CLKUIQuadView *)self->_bandsView layoutSubviews];
}

- (id)adjustBrightnessOfColor:(id)a3 brightnessAmount:(double)a4
{
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [a3 getHue:&v10 saturation:&v9 brightness:&v8 alpha:&v7];
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

- (void)_finalizeForSnapshotting:(id)a3
{
  v4 = a3;
  [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
  if (![(NTKPrideSplinesQuad *)self->_activeQuad forceRender])
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1523C(v5);
    }
  }

  v4[2](v4);
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
  v3 = [(NTKPrideAnalogFaceView *)self dataMode];
  v4 = [(NTKPrideAnalogFaceView *)self isFrozen];
  v5 = NTKIsScreenOn();
  bandsView = self->_bandsView;
  if (v3 == &dword_0 + 1)
  {
    v7 = v4 | v5 ^ 1;
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
  v3 = [(NTKPrideAnalogFaceView *)self dataMode];
  if (v3 <= 5)
  {
    if (((1 << v3) & 0x34) != 0)
    {
      [(NTKPrideSplinesQuad *)self->_activeQuad setIgnoresStrumAndTap:1];
      [(NTKPrideCircularQuad *)self->_activeQuad clearWaves];
      [(NTKPrideAnalogFaceView *)self _updatePausedState];
    }

    else if (((1 << v3) & 3) != 0)
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

- (id)_complicationDisplayWrapperForTouch:(id)a3
{
  v4 = a3;
  if ([(NTKPrideCircularQuad *)self->_activeQuad willConsumeTouch:v4])
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
    [v4 locationInView:self];
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

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v26 = a4;
  v11 = a5;
  v12 = a7;
  if (a6 == 12)
  {
    v19 = [v26 style];
    v20 = [v11 style];
    v21 = flt_1B6F8[v19];
    v22 = flt_1B6F8[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    v24 = v23;
    *&v23 = v24;
    [(NTKPrideSplinesQuad *)self->_bandsQuad setFadeMultiplier:v23];
    *&v25 = 1.0 - v24;
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:v25];
  }

  else if (a6 == 15)
  {
    v13 = [v26 style];
    v14 = [v11 style];
    v15 = *(&qword_1B160 + v13);
    v16 = *(&qword_1B160 + v14);
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15 = a3;
  v8 = a5;
  if (a4 == 12)
  {
    v10 = [v15 style];
    if (v10)
    {
      if (v10 == &dword_0 + 2)
      {
        [(NTKPrideAnalogFaceView *)self setActiveQuad:self->_ribbonsQuad];
        LODWORD(v14) = 1.0;
        [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:v14];
        bandsQuad = self->_bandsQuad;
        v12 = 0.0;
        goto LABEL_13;
      }

      if (v10 != &dword_0 + 1)
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

  if (a4 == 15)
  {
    v9 = [v15 style];
    if (v9)
    {
      if (v9 == &dword_0 + 1)
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

    v13 = [(NTKPrideAnalogFaceView *)self delegate];
    [v13 faceViewDidChangeWantsStatusBarIconShadow];
  }

LABEL_14:
  [(NTKPrideAnalogFaceView *)self _updateComplicationColors];
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = NTKPrideAnalogFaceView;
  [NTKPrideAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v8 = [(NTKPrideAnalogFaceView *)self timeView];
  [(NTKPrideAnalogFaceView *)self _handAlphaForEditMode:a4];
  [(NTKPrideAnalogFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  v9 = [(NTKPrideAnalogFaceView *)self contentView];
  [(NTKPrideAnalogFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKPrideAnalogFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  v10 = [(NTKPrideAnalogFaceView *)self contentView];
  v11 = *&CGAffineTransformIdentity.c;
  v12[0] = *&CGAffineTransformIdentity.a;
  v12[1] = v11;
  v12[2] = *&CGAffineTransformIdentity.tx;
  [v10 setTransform:v12];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKPrideAnalogFaceView;
  [(NTKPrideAnalogFaceView *)&v10 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 15 || a4 == 12)
  {
    v7 = [(NTKPrideAnalogFaceView *)self contentView];
    NTKAlphaForRubberBandingFraction();
    [v7 setAlpha:?];
    NTKScaleForRubberBandingFraction();
    CGAffineTransformMakeScale(&v9, v8, v8);
    [v7 setTransform:&v9];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [v5 anyObject];
  v7 = [(NTKPrideAnalogFaceView *)self _complicationDisplayWrapperForTouch:v6];
  touchWrapper = self->_touchWrapper;
  self->_touchWrapper = v7;

  v9 = self->_touchWrapper;
  if (v9)
  {
    v10 = [(NTKComplicationDisplayWrapperView *)v9 display];
    [v10 setHighlighted:1];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v5;
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [a3 anyObject];
  obj = [(NTKPrideAnalogFaceView *)self _complicationDisplayWrapperForTouch:v5];

  v6 = obj;
  touchWrapper = self->_touchWrapper;
  if (obj != touchWrapper)
  {
    if (touchWrapper)
    {
      v8 = [(NTKComplicationDisplayWrapperView *)touchWrapper display];
      [v8 setHighlighted:0];

      v6 = obj;
    }

    if (v6)
    {
      v9 = [(NTKComplicationDisplayWrapperView *)v6 display];
      [v9 setHighlighted:1];
    }

    objc_storeStrong(&self->_touchWrapper, obj);
  }

  _objc_release_x1();
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:a3];
    [v6 setHighlighted:0];

    if ([(NTKComplicationDisplayWrapperView *)self->_touchWrapper tapEnabled])
    {
      [(NTKComplicationDisplayWrapperView *)self->_touchWrapper performTap];
    }

    v7 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  touchWrapper = self->_touchWrapper;
  if (touchWrapper)
  {
    v6 = [(NTKComplicationDisplayWrapperView *)touchWrapper display:a3];
    [v6 setHighlighted:0];

    v7 = self->_touchWrapper;
    self->_touchWrapper = 0;
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_25C28;
  if (a3 != 15)
  {
    v4 = 0;
  }

  if (a3 == 12)
  {
    return &off_25C10;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v7 = a3;
  v8 = a5;
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
  v10 = [NTKPrideSwatchMappedImageCache keyForFaceStyle:v9 editOption:v7 mode:a4 selectedOptions:v8];

  v11 = +[NTKPrideSwatchMappedImageCache sharedCache];
  v12 = [v11 imageForKey:v10];

  if (!v12)
  {
    v13 = [NTKPrideAnalogFaceView alloc];
    v14 = +[CLKDevice currentDevice];
    v15 = [(NTKPrideAnalogFaceView *)v13 initWithFaceStyle:33 forDevice:v14 clientIdentifier:0];

    if (a4 == 15)
    {
      v16 = v7;
      v18 = [v8 objectForKeyedSubscript:&off_25A28];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      if (a4 != 12)
      {
        goto LABEL_10;
      }

      v16 = [v8 objectForKeyedSubscript:&off_25A10];
      v18 = v7;
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
    v26 = [v16 style];
    if (v26)
    {
      v12 = 0;
      if (v26 != &dword_0 + 1)
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