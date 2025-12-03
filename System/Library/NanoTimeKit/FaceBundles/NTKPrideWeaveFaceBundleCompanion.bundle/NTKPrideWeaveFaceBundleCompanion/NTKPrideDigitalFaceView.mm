@interface NTKPrideDigitalFaceView
- (NTKPrideDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationsAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (id)_complicationDisplayWrapperForTouch:(id)touch;
- (id)_digitalTimeLabelStyle;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_loadBackgroundViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadBackgroundViews;
- (void)_unloadSnapshotContentViews;
- (void)_updatePausedState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActiveQuad:(id)quad;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation NTKPrideDigitalFaceView

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKPrideDigitalFaceView *)self _loadBackgroundViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKPrideDigitalFaceView *)self _unloadBackgroundViews];
}

- (id)_digitalTimeLabelStyle
{
  [(NTKPrideDigitalFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  device = [(NTKPrideDigitalFaceView *)self device];
  NTKDigitalTimeLabelStyleWideRightSideMargin();
  v13 = v12;
  device2 = [(NTKPrideDigitalFaceView *)self device];
  v15 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:device2 applyAdvanceFudge:v4 forDevice:v6, v8, v10, v13];

  return v15;
}

- (void)_loadBackgroundViews
{
  _digitalTimeLabelStyle = [(NTKPrideDigitalFaceView *)self _digitalTimeLabelStyle];
  timeLabelDefaultStyle = self->_timeLabelDefaultStyle;
  self->_timeLabelDefaultStyle = _digitalTimeLabelStyle;

  timeView = [(NTKPrideDigitalFaceView *)self timeView];
  timeLabel = self->_timeLabel;
  self->_timeLabel = timeView;

  v7 = self->_timeLabel;
  v8 = [UIColor colorWithWhite:0.0 alpha:0.5];
  [(NTKDigitalTimeLabel *)v7 setShadowColor:v8];

  [(NTKDigitalTimeLabel *)self->_timeLabel setStyle:self->_timeLabelDefaultStyle];
  [(NTKDigitalTimeLabel *)self->_timeLabel setUsesLegibility:1];
  v9 = self->_timeLabel;
  v10 = +[UIColor whiteColor];
  [(NTKDigitalTimeLabel *)v9 setTextColor:v10];

  [(NTKPrideDigitalFaceView *)self addSubview:self->_timeLabel];
  [(NTKPrideDigitalFaceView *)self setTimeView:self->_timeLabel];
  [(NTKDigitalTimeLabel *)self->_timeLabel setFrameUsingCurrentStyle];
  [(NTKPrideDigitalFaceView *)self addSubview:self->_bandsView];
  [(NTKPrideLinearQuad *)self->_activeQuad clearWaves];
  v11 = [NTKRoundedCornerOverlayView alloc];
  [(NTKPrideDigitalFaceView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  device = [(NTKPrideDigitalFaceView *)self device];
  v21 = [v11 initWithFrame:device forDeviceCornerRadius:{v13, v15, v17, v19}];
  cornerOverlay = self->_cornerOverlay;
  self->_cornerOverlay = v21;

  [(NTKPrideDigitalFaceView *)self addSubview:self->_cornerOverlay];
  [(NTKPrideDigitalFaceView *)self bringSubviewToFront:self->_cornerOverlay];
  [(NTKPrideDigitalFaceView *)self layoutSubviews];
  activeQuad = self->_activeQuad;

  [(NTKPrideSplinesQuad *)activeQuad forceRender];
}

- (void)_unloadBackgroundViews
{
  [(NTKDigitalTimeLabel *)self->_timeLabel removeFromSuperview];
  timeLabel = self->_timeLabel;
  self->_timeLabel = 0;

  [(CLKUIQuadView *)self->_bandsView removeFromSuperview];
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlay removeFromSuperview];
  cornerOverlay = self->_cornerOverlay;
  self->_cornerOverlay = 0;
}

- (NTKPrideDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = NTKPrideDigitalFaceView;
  v9 = [(NTKPrideDigitalFaceView *)&v19 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    layoutContentProvider = v9->_layoutContentProvider;
    v9->_layoutContentProvider = v10;

    v12 = [CLKUIQuadView quadViewWithFrame:@"PrDg" identifier:0 options:0 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    bandsView = v9->_bandsView;
    v9->_bandsView = v12;

    v14 = [[NTKPrideBetweenLinearQuad alloc] initWithDevice:deviceCopy useXRsRGB:0];
    ribbonsQuad = v9->_ribbonsQuad;
    v9->_ribbonsQuad = v14;

    [(NTKPrideLinearQuad *)v9->_ribbonsQuad setFabricMode];
    [(NTKPrideLinearQuad *)v9->_ribbonsQuad clearWaves];
    v16 = [[NTKPrideLinearQuad alloc] initWithDevice:deviceCopy useXRsRGB:0];
    bandsQuad = v9->_bandsQuad;
    v9->_bandsQuad = v16;

    [(NTKPrideLinearQuad *)v9->_bandsQuad clearWaves];
    [(CLKUIQuadView *)v9->_bandsView addQuad:v9->_ribbonsQuad];
    [(CLKUIQuadView *)v9->_bandsView addQuad:v9->_bandsQuad];
    [(NTKPrideSplinesQuad *)v9->_ribbonsQuad setFadeMultiplier:0.0];
    [(NTKPrideSplinesQuad *)v9->_bandsQuad setFadeMultiplier:0.0];
    [(NTKPrideDigitalFaceView *)v9 layoutSubviews];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v3 layoutSubviews];
  [(NTKDigitalTimeLabel *)self->_timeLabel setFrameUsingCurrentStyle];
  [(NTKPrideDigitalFaceView *)self bounds];
  [(CLKUIQuadView *)self->_bandsView setFrame:?];
  [(NTKPrideDigitalFaceView *)self sendSubviewToBack:self->_bandsView];
  [(CLKUIQuadView *)self->_bandsView layoutSubviews];
}

- (void)_loadLayoutRules
{
  v3.receiver = self;
  v3.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v3 _loadLayoutRules];
  [(NTKFaceViewComplicationFactory *)self->_layoutContentProvider loadLayoutRulesForFaceView:self];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  layoutContentProvider = self->_layoutContentProvider;
  slotCopy = slot;
  v10 = [(NTKFaceViewComplicationFactory *)layoutContentProvider newLegacyViewForComplication:complication family:family slot:slotCopy faceView:self];
  [(NTKPrideDigitalFaceView *)self _configureComplicationView:v10 forSlot:slotCopy];

  return v10;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [(NTKFaceViewComplicationFactory *)self->_layoutContentProvider configureComplicationView:viewCopy forSlot:slotCopy faceView:self];
  [viewCopy setSuppressesInternalColorOverrides:1];
  v7 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
  if (v7)
  {
    v8 = [UIColor colorWithWhite:0.0 alpha:0.7];
    [viewCopy setShadowColor:v8];
  }

  else
  {
    if (![slotCopy isEqualToString:NTKComplicationSlotTopRight])
    {
      goto LABEL_6;
    }

    [viewCopy setShadowColor:0];
    v9 = +[UIColor whiteColor];
    [viewCopy setForegroundColor:v9];

    [viewCopy setForegroundAlpha:1.0];
    [viewCopy setForegroundImageAlpha:1.0];
  }

  [viewCopy setUsesLegibility:v7];
LABEL_6:
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    toOptionCopy = toOption;
    style = [option style];
    style2 = [toOptionCopy style];

    ribbonsQuad = self->_ribbonsQuad;
    v14 = flt_1B138[style];
    v15 = flt_1B138[style2];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v16 = v16;
    [(NTKPrideSplinesQuad *)ribbonsQuad setFadeMultiplier:v16];
    bandsQuad = self->_bandsQuad;
    v18 = flt_1B144[style];
    v19 = flt_1B144[style2];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v20 = v20;
    [(NTKPrideSplinesQuad *)bandsQuad setFadeMultiplier:v20];
    v21 = self->_bandsQuad;
    v22 = flt_1B150[style];
    v23 = flt_1B150[style2];
    CLKInterpolateBetweenFloatsUnclipped();
    [(NTKPrideLinearQuad *)v21 applyTransitionFromBandedToFabricWithFraction:?];
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad forceRenderOnce];
    [(NTKPrideSplinesQuad *)self->_bandsQuad forceRenderOnce];
    bandsView = self->_bandsView;

    [(CLKUIQuadView *)bandsView renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode != 15)
  {
    return;
  }

  style = [option style];
  if (!style)
  {
    p_bandsQuad = &self->_bandsQuad;
    [(NTKPrideLinearQuad *)self->_bandsQuad setBandedMode];
LABEL_9:
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:0.0];
    LODWORD(v10) = 1.0;
    p_ribbonsQuad = p_bandsQuad;
    goto LABEL_10;
  }

  if (style != &dword_0 + 2)
  {
    if (style != &dword_0 + 1)
    {
      return;
    }

    p_bandsQuad = &self->_bandsQuad;
    [(NTKPrideLinearQuad *)self->_bandsQuad setFabricMode];
    goto LABEL_9;
  }

  p_ribbonsQuad = &self->_ribbonsQuad;
  [(NTKPrideLinearQuad *)self->_ribbonsQuad setFabricMode];
  LODWORD(v9) = 1.0;
  [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:v9];
  p_bandsQuad = &self->_bandsQuad;
  v10 = 0.0;
LABEL_10:
  [(NTKPrideSplinesQuad *)*p_bandsQuad setFadeMultiplier:v10];
  v11 = *p_ribbonsQuad;

  [(NTKPrideDigitalFaceView *)self setActiveQuad:v11];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v6 _configureForEditMode:?];
  v5 = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    v5 = 1.0;
  }

  [(NTKDigitalTimeLabel *)self->_timeLabel setAlpha:v5];
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

- (double)_timeAlphaForEditMode:(int64_t)mode
{
  if (mode == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (mode == 15)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_complicationsAlphaForEditMode:(int64_t)mode
{
  if (!mode)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (mode == 15)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v18.receiver = self;
  v18.super_class = NTKPrideDigitalFaceView;
  [NTKPrideDigitalFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKPrideDigitalFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKPrideDigitalFaceView *)self _timeAlphaForEditMode:editMode];
  [(NTKPrideDigitalFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKPrideDigitalFaceView *)self _contentAlphaForEditMode:editMode];
  [(NTKPrideDigitalFaceView *)self _complicationsAlphaForEditMode:mode];
  v10 = v9;
  [(NTKPrideDigitalFaceView *)self _complicationsAlphaForEditMode:editMode];
  v12 = v11;
  timeLabel = self->_timeLabel;
  CLKInterpolateBetweenFloatsClipped();
  [(NTKDigitalTimeLabel *)timeLabel setAlpha:?];
  bandsView = self->_bandsView;
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)bandsView setAlpha:?];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9BF8;
  v15[3] = &unk_24810;
  v16 = v10;
  v17 = v12;
  *&v15[4] = fraction;
  [(NTKPrideDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  snapshottingCopy = snapshotting;
  [(NTKPrideLinearQuad *)self->_activeQuad clearWaves];
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
  v4.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v4 _applySlow];
  [(NTKPrideDigitalFaceView *)self _updatePausedState];
  wasSlow = self->_wasSlow;
  if (wasSlow != [(NTKPrideDigitalFaceView *)self isSlow])
  {
    [(NTKPrideSplinesQuad *)self->_activeQuad forceRender];
  }

  self->_wasSlow = [(NTKPrideDigitalFaceView *)self isSlow];
}

- (void)_updatePausedState
{
  dataMode = [(NTKPrideDigitalFaceView *)self dataMode];
  isFrozen = [(NTKPrideDigitalFaceView *)self isFrozen];
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
  v4.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v4 _applyDataMode];
  dataMode = [(NTKPrideDigitalFaceView *)self dataMode];
  if ((dataMode - 2) >= 4)
  {
    if (dataMode <= 1)
    {
      [(NTKPrideSplinesQuad *)self->_activeQuad setIgnoresStrumAndTap:0];
      [(NTKPrideDigitalFaceView *)self _updatePausedState];
    }
  }

  else
  {
    [(NTKPrideSplinesQuad *)self->_activeQuad setIgnoresStrumAndTap:1];
    [(NTKPrideLinearQuad *)self->_activeQuad clearWaves];
    [(NTKPrideDigitalFaceView *)self _updatePausedState];
    [(NTKPrideDigitalFaceView *)self renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }
}

- (id)_complicationDisplayWrapperForTouch:(id)touch
{
  touchCopy = touch;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_A0D8;
  v14 = sub_A0E8;
  v15 = 0;
  [touchCopy locationInView:self];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_A0F0;
  v9[3] = &unk_24860;
  v9[6] = v5;
  v9[7] = v6;
  v9[4] = self;
  v9[5] = &v10;
  [(NTKPrideDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  anyObject = [beganCopy anyObject];
  v7 = [(NTKPrideDigitalFaceView *)self _complicationDisplayWrapperForTouch:anyObject];
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
  obj = [(NTKPrideDigitalFaceView *)self _complicationDisplayWrapperForTouch:anyObject];

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

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = NTKFaceStyleDescription();
    v8 = [NTKPrideSwatchMappedImageCache keyForFaceStyle:v7 editOption:optionCopy mode:mode selectedOptions:0];

    v9 = +[NTKPrideSwatchMappedImageCache sharedCache];
    v10 = [v9 imageForKey:v8];

    if (!v10)
    {
      v11 = [NTKPrideDigitalFaceView alloc];
      v12 = +[CLKDevice currentDevice];
      v13 = [(NTKPrideDigitalFaceView *)v11 initWithFaceStyle:26 forDevice:v12 clientIdentifier:0];

      [NTKEditOption sizeForSwatchStyle:3];
      v15 = v14;
      v17 = v16;
      v18 = +[UIScreen mainScreen];
      [v18 nativeScale];
      v20 = v19;

      [v13 _applyOption:optionCopy forCustomEditMode:mode slot:0];
      v10 = [v13[5] snapshotWithSize:0 scale:v15 apl:{v17, v20}];
      v21 = +[NTKPrideSwatchMappedImageCache sharedCache];
      [v21 setImage:v10 forKey:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end