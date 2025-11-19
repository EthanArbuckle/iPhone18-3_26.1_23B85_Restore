@interface NTKPrideDigitalFaceView
- (NTKPrideDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationsAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (id)_complicationDisplayWrapperForTouch:(id)a3;
- (id)_digitalTimeLabelStyle;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_loadBackgroundViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadBackgroundViews;
- (void)_unloadSnapshotContentViews;
- (void)_updatePausedState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setActiveQuad:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v11 = [(NTKPrideDigitalFaceView *)self device];
  NTKDigitalTimeLabelStyleWideRightSideMargin();
  v13 = v12;
  v14 = [(NTKPrideDigitalFaceView *)self device];
  v15 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:1 withRightSideMargin:v14 applyAdvanceFudge:v4 forDevice:v6, v8, v10, v13];

  return v15;
}

- (void)_loadBackgroundViews
{
  v3 = [(NTKPrideDigitalFaceView *)self _digitalTimeLabelStyle];
  timeLabelDefaultStyle = self->_timeLabelDefaultStyle;
  self->_timeLabelDefaultStyle = v3;

  v5 = [(NTKPrideDigitalFaceView *)self timeView];
  timeLabel = self->_timeLabel;
  self->_timeLabel = v5;

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
  v20 = [(NTKPrideDigitalFaceView *)self device];
  v21 = [v11 initWithFrame:v20 forDeviceCornerRadius:{v13, v15, v17, v19}];
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

- (NTKPrideDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = NTKPrideDigitalFaceView;
  v9 = [(NTKPrideDigitalFaceView *)&v19 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:v8];
    layoutContentProvider = v9->_layoutContentProvider;
    v9->_layoutContentProvider = v10;

    v12 = [CLKUIQuadView quadViewWithFrame:@"PrDg" identifier:0 options:0 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    bandsView = v9->_bandsView;
    v9->_bandsView = v12;

    v14 = [[NTKPrideBetweenLinearQuad alloc] initWithDevice:v8 useXRsRGB:0];
    ribbonsQuad = v9->_ribbonsQuad;
    v9->_ribbonsQuad = v14;

    [(NTKPrideLinearQuad *)v9->_ribbonsQuad setFabricMode];
    [(NTKPrideLinearQuad *)v9->_ribbonsQuad clearWaves];
    v16 = [[NTKPrideLinearQuad alloc] initWithDevice:v8 useXRsRGB:0];
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

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  layoutContentProvider = self->_layoutContentProvider;
  v9 = a5;
  v10 = [(NTKFaceViewComplicationFactory *)layoutContentProvider newLegacyViewForComplication:a3 family:a4 slot:v9 faceView:self];
  [(NTKPrideDigitalFaceView *)self _configureComplicationView:v10 forSlot:v9];

  return v10;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NTKFaceViewComplicationFactory *)self->_layoutContentProvider configureComplicationView:v10 forSlot:v6 faceView:self];
  [v10 setSuppressesInternalColorOverrides:1];
  v7 = [v6 isEqualToString:NTKComplicationSlotBottom];
  if (v7)
  {
    v8 = [UIColor colorWithWhite:0.0 alpha:0.7];
    [v10 setShadowColor:v8];
  }

  else
  {
    if (![v6 isEqualToString:NTKComplicationSlotTopRight])
    {
      goto LABEL_6;
    }

    [v10 setShadowColor:0];
    v9 = +[UIColor whiteColor];
    [v10 setForegroundColor:v9];

    [v10 setForegroundAlpha:1.0];
    [v10 setForegroundImageAlpha:1.0];
  }

  [v10 setUsesLegibility:v7];
LABEL_6:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 15)
  {
    v10 = a5;
    v11 = [a4 style];
    v12 = [v10 style];

    ribbonsQuad = self->_ribbonsQuad;
    v14 = flt_1B138[v11];
    v15 = flt_1B138[v12];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v16 = v16;
    [(NTKPrideSplinesQuad *)ribbonsQuad setFadeMultiplier:v16];
    bandsQuad = self->_bandsQuad;
    v18 = flt_1B144[v11];
    v19 = flt_1B144[v12];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v20 = v20;
    [(NTKPrideSplinesQuad *)bandsQuad setFadeMultiplier:v20];
    v21 = self->_bandsQuad;
    v22 = flt_1B150[v11];
    v23 = flt_1B150[v12];
    CLKInterpolateBetweenFloatsUnclipped();
    [(NTKPrideLinearQuad *)v21 applyTransitionFromBandedToFabricWithFraction:?];
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad forceRenderOnce];
    [(NTKPrideSplinesQuad *)self->_bandsQuad forceRenderOnce];
    bandsView = self->_bandsView;

    [(CLKUIQuadView *)bandsView renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 != 15)
  {
    return;
  }

  v6 = [a3 style];
  if (!v6)
  {
    p_bandsQuad = &self->_bandsQuad;
    [(NTKPrideLinearQuad *)self->_bandsQuad setBandedMode];
LABEL_9:
    [(NTKPrideSplinesQuad *)self->_ribbonsQuad setFadeMultiplier:0.0];
    LODWORD(v10) = 1.0;
    p_ribbonsQuad = p_bandsQuad;
    goto LABEL_10;
  }

  if (v6 != &dword_0 + 2)
  {
    if (v6 != &dword_0 + 1)
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

- (void)_configureForEditMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v6 _configureForEditMode:?];
  v5 = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    v5 = 1.0;
  }

  [(NTKDigitalTimeLabel *)self->_timeLabel setAlpha:v5];
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

- (double)_timeAlphaForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 15)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_complicationsAlphaForEditMode:(int64_t)a3
{
  if (!a3)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 15)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v18.receiver = self;
  v18.super_class = NTKPrideDigitalFaceView;
  [NTKPrideDigitalFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKPrideDigitalFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKPrideDigitalFaceView *)self _timeAlphaForEditMode:a5];
  [(NTKPrideDigitalFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKPrideDigitalFaceView *)self _contentAlphaForEditMode:a5];
  [(NTKPrideDigitalFaceView *)self _complicationsAlphaForEditMode:a4];
  v10 = v9;
  [(NTKPrideDigitalFaceView *)self _complicationsAlphaForEditMode:a5];
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
  *&v15[4] = a3;
  [(NTKPrideDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v15];
}

- (void)_finalizeForSnapshotting:(id)a3
{
  v4 = a3;
  [(NTKPrideLinearQuad *)self->_activeQuad clearWaves];
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
  v3 = [(NTKPrideDigitalFaceView *)self dataMode];
  v4 = [(NTKPrideDigitalFaceView *)self isFrozen];
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
  v4.super_class = NTKPrideDigitalFaceView;
  [(NTKPrideDigitalFaceView *)&v4 _applyDataMode];
  v3 = [(NTKPrideDigitalFaceView *)self dataMode];
  if ((v3 - 2) >= 4)
  {
    if (v3 <= 1)
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

- (id)_complicationDisplayWrapperForTouch:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_A0D8;
  v14 = sub_A0E8;
  v15 = 0;
  [v4 locationInView:self];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [v5 anyObject];
  v7 = [(NTKPrideDigitalFaceView *)self _complicationDisplayWrapperForTouch:v6];
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
  obj = [(NTKPrideDigitalFaceView *)self _complicationDisplayWrapperForTouch:v5];

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

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = NTKFaceStyleDescription();
    v8 = [NTKPrideSwatchMappedImageCache keyForFaceStyle:v7 editOption:v6 mode:a4 selectedOptions:0];

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

      [v13 _applyOption:v6 forCustomEditMode:a4 slot:0];
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