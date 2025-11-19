@interface NTKExactitudesFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_dialsAreClosed;
- (NTKExactitudesFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backdropInlayAlphaForBackgroundStyle:(unint64_t)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_inlayAlphaForBackgroundStyle:(unint64_t)a3;
- (id)_dialColors;
- (id)_dialColorsFromPalette:(id)a3;
- (id)_stringForStyle:(unint64_t)a3;
- (id)_swatchForStyleOption:(id)a3 backgroundOption:(id)a4 colorOption:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)faceDialsStyleForDialStyle:(unint64_t)a3;
- (void)_allDialsSetBackgroundStyle:(unint64_t)a3;
- (void)_applyBreathingAndRubberBanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColorsFromPalette:(id)a3;
- (void)_applyColorsToComplicationsWithPalette:(id)a3;
- (void)_applyColorsToTimeViewWithPalette:(id)a3;
- (void)_applyComplicationFont:(id)a3;
- (void)_applyCurrentColorPalette;
- (void)_applyCurrentColorsToTimeView;
- (void)_applyCurrentColorsToTimeViewFromBackgroundStyle:(unint64_t)a3 toBackgroundStyle:(unint64_t)a4 withFraction:(double)a5;
- (void)_applyCurrentComplicationColorsFromBackgroundStyle:(unint64_t)a3 toBackgroundStyle:(unint64_t)a4 withFraction:(double)a5;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPauseStateToDialsIfNecessary;
- (void)_applyPrimaryComplicationColor:(id)a3 secondaryComplicationColor:(id)a4 backgroundColor:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTritiumComplicationColorsIfNeeded;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_hideCornerComplicationsIfNeeded;
- (void)_initDials;
- (void)_initUniversalMetrics;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeTritiumComplicationColorsIfNeeded;
- (void)_revealCornerComplicationsIfNeeded;
- (void)_revealCornerComplicationsIfNeededWithAlpha:(double)a3;
- (void)_setBackgroundStyle:(unint64_t)a3;
- (void)_setDialStyle:(unint64_t)a3;
- (void)_setupBackgroundView;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_teardownBackgroundView;
- (void)_transitionDialsInEditorFromStyle:(unint64_t)a3 toStyle:(unint64_t)a4 fraction:(double)a5;
- (void)_unloadSnapshotContentViews;
- (void)applyComplicationColors;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKExactitudesFaceView

- (NTKExactitudesFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9 = a4;
  v22.receiver = self;
  v22.super_class = NTKExactitudesFaceView;
  v10 = [(NTKExactitudesFaceView *)&v22 initWithFaceStyle:a3 forDevice:v9 clientIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a4);
    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    compositeComplicationFactory = v11->_compositeComplicationFactory;
    v11->_compositeComplicationFactory = v12;

    v14 = [(NTKExactitudesFaceView *)v11 device];
    v15 = sub_85EC(v14, v14);

    v16 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v11 dialDiameter:v9 device:v15];
    cornerComplicationFactory = v11->_cornerComplicationFactory;
    v11->_cornerComplicationFactory = v16;

    v18 = v11->_compositeComplicationFactory;
    v19 = v11->_cornerComplicationFactory;
    v23[0] = NTKComplicationSlotTopLeft;
    v23[1] = NTKComplicationSlotTopRight;
    v23[2] = NTKComplicationSlotBottomLeft;
    v23[3] = NTKComplicationSlotBottomRight;
    v20 = [NSArray arrayWithObjects:v23 count:4];
    [(NTKCompositeComplicationFactory *)v18 registerFactory:v19 forSlots:v20];

    [(NTKExactitudesFaceView *)v11 setComplicationFactory:v11->_compositeComplicationFactory];
    v11->_cornerComplicationsHidden = 0;
  }

  return v11;
}

- (void)dealloc
{
  [(NTKExactitudesFaceView *)self _stopClockUpdates];
  v3.receiver = self;
  v3.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v3 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v24.receiver = self;
  v24.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v24 _loadSnapshotContentViews];
  v3 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_20D54(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [(NTKExactitudesFaceView *)self _setupBackgroundView];
  [(NTKExactitudesFaceView *)self _initUniversalMetrics];
  [(NTKExactitudesFaceView *)self _initDials];
  [(NTKExactitudesFaceView *)self _setupTapControl];
  [(NTKExactitudesFaceView *)self _applyCurrentColorPalette];
  [(NTKExactitudesFaceDialsView *)self->_dials hideInactiveDials];
  if (!self->_cornerView)
  {
    v11 = [NTKRoundedCornerOverlayView alloc];
    [(NTKExactitudesFaceView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(NTKExactitudesFaceView *)self device];
    v21 = [v11 initWithFrame:v20 forDeviceCornerRadius:{v13, v15, v17, v19}];
    cornerView = self->_cornerView;
    self->_cornerView = v21;

    v23 = [(NTKExactitudesFaceView *)self contentView];
    [v23 addSubview:self->_cornerView];
  }
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKExactitudesFaceView *)self _teardownTapControl];
  [(NTKExactitudesFaceView *)self _teardownDials];
  [(NTKExactitudesFaceView *)self _teardownBackgroundView];
  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v3 _applyFrozen];
  [(NTKExactitudesFaceView *)self _applyPauseStateToDialsIfNecessary];
}

- (void)_initUniversalMetrics
{
  [(CLKDevice *)self->_device screenScale];
  self->_screenScale = v3;
  self->_backgroundStyle = 1;
}

- (void)_initDials
{
  v11 = [(NTKExactitudesFaceView *)self _dialColors];
  v3 = [NTKExactitudesFaceDialsView alloc];
  [(NTKExactitudesFaceView *)self bounds];
  v8 = [(NTKExactitudesFaceDialsView *)v3 initWithFrame:self->_device device:v11 colorsWrapper:[(NTKExactitudesFaceView *)self faceDialsStyleForDialStyle:self->_dialStyle] style:v4, v5, v6, v7];
  dials = self->_dials;
  self->_dials = v8;

  v10 = [(NTKExactitudesFaceView *)self contentView];
  [v10 addSubview:self->_dials];

  [(NTKExactitudesFaceDialsView *)self->_dials setNeedsLayout];
}

- (void)_loadLayoutRules
{
  v9.receiver = self;
  v9.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v9 _loadLayoutRules];
  [(NTKCompositeComplicationFactory *)self->_compositeComplicationFactory loadLayoutRules];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5620;
  v8[3] = &unk_30AA8;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  device = self->_device;
  NTKDefaultCornerComplicationScaleForFullscreenOpaqueFaceForDevice();
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeScale(&v7, v5, v5);
  v6 = v3;
  NTKEnumerateComplicationStates();
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v2 layoutSubviews];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v8 setOverrideDate:v6 duration:a4];
  dials = self->_dials;
  if (dials)
  {
    [(NTKExactitudesFaceDialsView *)dials setOverrideDate:v6 duration:a4];
  }
}

- (void)setDataMode:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v3 setDataMode:a3];
}

- (void)_applyDataMode
{
  v36.receiver = self;
  v36.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v36 _applyDataMode];
  v3 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_20DCC(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(NTKExactitudesFaceView *)self dataMode];
  if (v11 <= 5)
  {
    if (((1 << v11) & 0x35) != 0)
    {
LABEL_5:
      v12 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_20EBC(v12, v13, v14, v15, v16, v17, v18, v19);
      }

      [(NTKExactitudesFaceView *)self _stopClockUpdates];
      [(NTKExactitudesFaceDialsView *)self->_dials showInactiveDials];
      [(NTKExactitudesFaceDialsView *)self->_dials stopDialMovementAnimation];
      [(NTKExactitudesFaceView *)self _setDialsToCurrentStyleNoAnimation];
      [(NTKExactitudesFaceView *)self _revealCornerComplicationsIfNeeded];
      goto LABEL_8;
    }

    if (v11 != 1)
    {
      v28 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_20E44(v28, v29, v30, v31, v32, v33, v34, v35);
      }

      if (self->_previousDataMode == 1)
      {
        [(NTKExactitudesFaceView *)self _setDialsToCurrentStyleNoAnimation];
      }

      goto LABEL_5;
    }

    v20 = +[NTKExactitudesFaceBundle logObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_20F34(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    [(NTKExactitudesFaceView *)self _startClockUpdates];
    [(NTKExactitudesFaceDialsView *)self->_dials hideInactiveDials];
  }

LABEL_8:
  self->_previousDataMode = [(NTKExactitudesFaceView *)self dataMode];
}

- (void)_setupBackgroundView
{
  v3 = [UIView alloc];
  [(NTKExactitudesFaceView *)self bounds];
  v4 = [v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  v6 = [(NTKExactitudesFaceView *)self contentView];
  [v6 addSubview:self->_backgroundView];
}

- (void)_teardownBackgroundView
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;
}

- (void)_hideCornerComplicationsIfNeeded
{
  if (!self->_dialStyle)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[9] = v2;
    v12[10] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_5CDC;
    v12[3] = &unk_30AF0;
    v12[4] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5D3C;
    v9[3] = &unk_30B58;
    v10 = self;
    v11 = objc_retainBlock(v12);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5D48;
    v7[3] = &unk_30B80;
    v7[4] = v10;
    v8 = &stru_30B30;
    v6 = v11;
    [UIView animateWithDuration:0 delay:v9 options:v7 animations:0.1 completion:0.0];
  }
}

- (void)_revealCornerComplicationsIfNeeded
{
  if (!self->_dialStyle)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[11] = v2;
    v13[12] = v3;
    if (self->_cornerComplicationsHidden)
    {
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v7 = 0.15;
      }

      else
      {
        v7 = 0.5;
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_5F24;
      v13[3] = &unk_30AF0;
      v13[4] = 0x3FF0000000000000;
      v8 = objc_retainBlock(v13);
      [(NTKExactitudesFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_30BA0];
      v10[4] = self;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_5F84;
      v11[3] = &unk_30B58;
      v11[4] = self;
      v12 = v8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_5F90;
      v10[3] = &unk_30BC8;
      v9 = v8;
      [UIView animateWithDuration:0 delay:v11 options:v10 animations:0.3 completion:v7];
    }
  }
}

- (void)_revealCornerComplicationsIfNeededWithAlpha:(double)a3
{
  if (!self->_dialStyle)
  {
    v7[7] = v3;
    v7[8] = v4;
    if (self->_cornerComplicationsHidden)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_605C;
      v7[3] = &unk_30AF0;
      *&v7[4] = a3;
      v6 = objc_retainBlock(v7);
      [(NTKExactitudesFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v6];
    }
  }
}

- (void)_startClockUpdates
{
  v2 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_20FAC(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)_stopClockUpdates
{
  v3 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_21024(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  if (self->_secondTimerToken)
  {
    v11 = +[CLKClockTimer sharedInstance];
    [v11 stopUpdatesForToken:self->_secondTimerToken];

    secondTimerToken = self->_secondTimerToken;
    self->_secondTimerToken = 0;
  }
}

- (void)_applyPauseStateToDialsIfNecessary
{
  v3 = [(NTKExactitudesFaceView *)self isFrozen];
  if (self->_isPaused != v3)
  {
    self->_isPaused = v3;
    dials = self->_dials;
    if (v3)
    {
      v5 = self->_dials;

      [(NTKExactitudesFaceDialsView *)v5 stopDialMovementAnimation];
    }

    else
    {
      v6 = self->_dials;

      [(NTKExactitudesFaceDialsView *)v6 startDialMovementAnimation];
    }
  }
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKExactitudesColorPalette);

  return v2;
}

- (void)_cleanupAfterEditing
{
  [(NTKExactitudesFaceView *)self _setDialsToCurrentStyleNoAnimation];
  v3.receiver = self;
  v3.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v3 _cleanupAfterEditing];
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  if (a3 > 0x11 || ((1 << a3) & 0x28403) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 0.0;
  if (!self->_dialStyle)
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
  v26.receiver = self;
  v26.super_class = NTKExactitudesFaceView;
  [NTKExactitudesFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKExactitudesFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKExactitudesFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  v11 = [(NTKExactitudesFaceView *)self complicationContainerView];
  [v11 setAlpha:v10];

  [(NTKExactitudesFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKExactitudesFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  v14 = [(NTKExactitudesFaceView *)self timeView];
  [v14 setAlpha:v13];

  v15 = [(NTKExactitudesFaceView *)self contentView];
  [v15 setAlpha:v13];

  if (a4 == 1 || a5 == 1)
  {
    v16 = [(NTKExactitudesFaceView *)self palette];
    v17 = [v16 secondaryComplicationColor];
    v18 = [v17 CGColor];
    v19 = +[UIColor blackColor];
    LODWORD(v18) = CGColorEqualToColor(v18, [v19 CGColor]);

    if (v18)
    {
      v20 = 1.0;
      v21 = 1.0 - a3;
      if (a5 == 1)
      {
        v21 = a3;
      }

      else
      {
        v20 = 0.0;
      }

      v22 = [(NTKExactitudesFaceView *)self palette:v20];
      v23 = [v22 secondaryComplicationColor];

      v24 = +[UIColor whiteColor];
      v25 = CLKUIInterpolateBetweenColors();

      [(NTKExactitudesFaceView *)self setAlternateComplicationColor:v25];
      [(NTKExactitudesFaceView *)self applyComplicationColors];
    }
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v11.receiver = self;
  v11.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v11 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  switch(a4)
  {
    case 10:
      [(NTKExactitudesFaceView *)self _applyCurrentColorPalette];
      break;
    case 15:
      v9 = [v8 style];
      v10 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_2109C(self, v9);
      }

      -[NTKExactitudesFaceView _setDialStyle:](self, "_setDialStyle:", [v8 style]);
      break;
    case 17:
      -[NTKExactitudesFaceView _setBackgroundStyle:](self, "_setBackgroundStyle:", [v8 background]);
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  switch(a6)
  {
    case 10:
      v21 = [(NTKExactitudesFaceView *)self interpolatedColorPalette];
      [(NTKExactitudesFaceView *)self _applyColorsFromPalette:v21];

      break;
    case 15:
      v17 = [v12 style];
      v18 = [v13 style];
      v19 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v32 = [(NTKExactitudesFaceView *)self _stringForStyle:v17];
        v33 = [(NTKExactitudesFaceView *)self _stringForStyle:v18];
        *buf = 136315906;
        v36 = "[NTKExactitudesFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
        v37 = 2112;
        v38 = v32;
        v39 = 2112;
        v40 = v33;
        v41 = 2048;
        v42 = a3;
        _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "SNEPO %s: fromStyle: %@, toStyle: %@, fraction: %f", buf, 0x2Au);
      }

      if (v17 == v18)
      {
        v20 = +[NTKExactitudesFaceBundle logObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_21134(self, v17);
        }

        [(NTKExactitudesFaceDialsView *)self->_dials setStyle:[(NTKExactitudesFaceView *)self faceDialsStyleForDialStyle:v17]];
      }

      else
      {
        [(NTKExactitudesFaceView *)self _transitionDialsInEditorFromStyle:v17 toStyle:v18 fraction:a3];
      }

      break;
    case 17:
      v15 = [v12 background];
      v16 = [v13 background];
      if (v15 == v16)
      {
        [(NTKExactitudesFaceView *)self _setBackgroundStyle:v15];
      }

      else
      {
        v22 = v16;
        v23 = [(NTKExactitudesFaceView *)self palette];
        v24 = [v23 copy];

        v34 = v24;
        [v24 setBackgroundStyle:v15];
        v25 = [(NTKExactitudesFaceView *)self palette];
        v26 = [v25 copy];

        [v26 setBackgroundStyle:v22];
        v27 = [v24 backgroundColor];
        v28 = [v26 backgroundColor];
        v29 = CLKUIInterpolateBetweenColors();
        [(UIView *)self->_backgroundView setBackgroundColor:v29];
        [(NTKExactitudesFaceView *)self _applyCurrentColorsToTimeViewFromBackgroundStyle:v15 toBackgroundStyle:v22 withFraction:a3];
        [(NTKExactitudesFaceView *)self _applyCurrentComplicationColorsFromBackgroundStyle:v15 toBackgroundStyle:v22 withFraction:a3];
        v30 = v22 == &dword_0 + 1 && v15 == 0;
        v31 = 1.0 - a3;
        if (!v30)
        {
          v31 = a3;
        }

        [(NTKExactitudesFaceView *)self _setAllDialsBackgroundStyleTransitionProgress:v31];
      }

      break;
  }
}

- (void)_setBackgroundStyle:(unint64_t)a3
{
  self->_backgroundStyle = a3;
  v4 = [(NTKExactitudesFaceView *)self palette];
  [v4 setBackgroundStyle:self->_backgroundStyle];

  [(NTKExactitudesFaceView *)self _applyCurrentColorPalette];
  backgroundView = self->_backgroundView;
  v6 = [(NTKExactitudesFaceView *)self palette];
  v7 = [v6 backgroundColor];
  [(UIView *)backgroundView setBackgroundColor:v7];

  backgroundStyle = self->_backgroundStyle;

  [(NTKExactitudesFaceView *)self _allDialsSetBackgroundStyle:backgroundStyle];
}

- (void)_allDialsSetBackgroundStyle:(unint64_t)a3
{
  v3 = 0.0;
  if (!a3)
  {
    v3 = 1.0;
  }

  [(NTKExactitudesFaceView *)self _setAllDialsBackgroundStyleTransitionProgress:v3];
}

- (void)_transitionDialsInEditorFromStyle:(unint64_t)a3 toStyle:(unint64_t)a4 fraction:(double)a5
{
  v9 = [(NTKExactitudesFaceView *)self _stringForStyle:?];
  v10 = [(NTKExactitudesFaceView *)self _stringForStyle:a4];
  v11 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_211F0(v9, v10, v11);
  }

  if (a3)
  {
    v12 = +[NTKExactitudesFaceBundle logObject];
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (a4 == 2)
    {
      if (v13)
      {
        sub_212F0(v12);
      }

      if (a3 != 1)
      {
        v21 = +[NTKExactitudesFaceBundle logObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_21334(v21, v22, v23, v24, v25, v26, v27, v28);
        }
      }

      [(NTKExactitudesFaceView *)self setMinutesDialExpansionProgress:a5];
      [(NTKExactitudesFaceView *)self setSecondsDialExpansionProgress:1.0];
    }

    else
    {
      if (v13)
      {
        sub_21278(v12, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    v29 = +[NTKExactitudesFaceBundle logObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_213AC(v29);
    }

    if (a4 != 1)
    {
      v30 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sub_213F0(v30, v31, v32, v33, v34, v35, v36, v37);
      }
    }

    [(NTKExactitudesFaceView *)self setSecondsDialExpansionProgress:a5];
    [(NTKExactitudesFaceView *)self setMinutesDialExpansionProgress:0.0];
  }
}

- (void)_setDialStyle:(unint64_t)a3
{
  if (self->_dialStyle != a3)
  {
    v5 = +[NTKExactitudesFaceBundle logObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_21468(self, a3);
    }

    self->_dialStyle = a3;
    [(NTKExactitudesFaceDialsView *)self->_dials setStyle:[(NTKExactitudesFaceView *)self faceDialsStyleForDialStyle:a3]];
  }
}

- (int64_t)faceDialsStyleForDialStyle:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (id)_dialColors
{
  v3 = [(NTKExactitudesFaceView *)self palette];
  v4 = [(NTKExactitudesFaceView *)self _dialColorsFromPalette:v3];

  return v4;
}

- (id)_dialColorsFromPalette:(id)a3
{
  v3 = a3;
  v4 = [v3 secondColor];
  v5 = [v3 minuteColor];
  v6 = [v3 hourColor];
  v7 = [v3 dialForegroundColor];

  v8 = [[NTKExactitudesFaceDialColorsWrapper alloc] initWithHourColor:v6 minuteColor:v5 secondColor:v4 foregroundColor:v7];

  return v8;
}

- (void)_applyCurrentColorPalette
{
  v3 = [(NTKExactitudesFaceView *)self palette];
  [(NTKExactitudesFaceView *)self _applyColorsFromPalette:v3];
}

- (void)_applyColorsFromPalette:(id)a3
{
  v4 = a3;
  [(NTKExactitudesFaceView *)self _applyColorsToTimeViewWithPalette:v4];
  v5 = [(NTKExactitudesFaceView *)self _dialColorsFromPalette:v4];
  [(NTKExactitudesFaceDialsView *)self->_dials setColorsWrapper:v5];
  [(NTKExactitudesFaceView *)self _setBackgroundColorForBackgroundOn:[(NTKExactitudesFaceView *)self _isBackgroundOn] palette:v4];
  [(NTKExactitudesFaceView *)self _applyColorsToComplicationsWithPalette:v4];
}

- (void)_applyCurrentColorsToTimeView
{
  v3 = [(NTKExactitudesFaceView *)self palette];
  [(NTKExactitudesFaceView *)self _applyColorsToTimeViewWithPalette:v3];
}

- (void)_applyCurrentColorsToTimeViewFromBackgroundStyle:(unint64_t)a3 toBackgroundStyle:(unint64_t)a4 withFraction:(double)a5
{
  v8 = [(NTKExactitudesFaceView *)self palette];
  v38 = [v8 copy];

  [v38 setBackgroundStyle:a3];
  v9 = [(NTKExactitudesFaceView *)self palette];
  v10 = [v9 copy];

  [v10 setBackgroundStyle:a4];
  v33 = [v38 hourHandOutlineColor];
  v32 = [v38 minuteHandOutlineColor];
  v34 = [v38 secondHandColor];
  v35 = [v38 hourHandInlayColor];
  v36 = [v38 minuteHandInlayColor];
  [(NTKExactitudesFaceView *)self _inlayAlphaForBackgroundStyle:a3];
  [(NTKExactitudesFaceView *)self _backdropInlayAlphaForBackgroundStyle:a3];
  v37 = [v38 handDotColor];
  v31 = [v10 hourHandOutlineColor];
  v30 = [v10 minuteHandOutlineColor];
  v29 = [v10 secondHandColor];
  v28 = [v10 hourHandInlayColor];
  v27 = [v10 minuteHandInlayColor];
  [(NTKExactitudesFaceView *)self _inlayAlphaForBackgroundStyle:a4];
  [(NTKExactitudesFaceView *)self _backdropInlayAlphaForBackgroundStyle:a4];
  v26 = [v10 handDotColor];
  v25 = CLKUIInterpolateBetweenColors();
  v11 = CLKUIInterpolateBetweenColors();
  v12 = CLKUIInterpolateBetweenColors();
  v13 = CLKUIInterpolateBetweenColors();
  v14 = CLKUIInterpolateBetweenColors();
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  v19 = CLKUIInterpolateBetweenColors();
  v20 = [(NTKExactitudesFaceView *)self timeView];
  v21 = [(NTKExactitudesFaceView *)self _backdropInlayColor];
  [v20 applyHourHandColor:v25 inlayColor:v13 inlayAlpha:v21 backdropInlayColor:v16 backdropInlayAlpha:v18];
  [v20 applyMinuteHandColor:v11 inlayColor:v14 inlayAlpha:v21 backdropInlayColor:v16 backdropInlayAlpha:v18];
  [v20 applySecondHandColor:v12];
  v22 = [v20 hourHandView];
  [v22 setHandDotColor:v19];

  v23 = [v20 minuteHandView];
  [v23 setHandDotColor:v19];

  v24 = [v20 secondHandView];
  [v24 setHandDotColor:v19];
}

- (void)_applyColorsToTimeViewWithPalette:(id)a3
{
  v4 = a3;
  v19 = [v4 hourHandOutlineColor];
  v5 = [v4 minuteHandOutlineColor];
  v6 = [v4 secondHandColor];
  v7 = [v4 hourHandInlayColor];
  v8 = [v4 minuteHandInlayColor];
  v9 = [(NTKExactitudesFaceView *)self _backdropInlayColor];
  [(NTKExactitudesFaceView *)self _inlayAlphaForBackgroundStyle:self->_backgroundStyle];
  v11 = v10;
  [(NTKExactitudesFaceView *)self _backdropInlayAlphaForBackgroundStyle:self->_backgroundStyle];
  v13 = v12;
  v14 = [(NTKExactitudesFaceView *)self timeView];
  [v14 applyHourHandColor:v19 inlayColor:v7 inlayAlpha:v9 backdropInlayColor:v11 backdropInlayAlpha:v13];
  [v14 applyMinuteHandColor:v5 inlayColor:v8 inlayAlpha:v9 backdropInlayColor:v11 backdropInlayAlpha:v13];
  [v14 applySecondHandColor:v6];
  v15 = [v4 handDotColor];

  v16 = [v14 hourHandView];
  [v16 setHandDotColor:v15];

  v17 = [v14 minuteHandView];
  [v17 setHandDotColor:v15];

  v18 = [v14 secondHandView];
  [v18 setHandDotColor:v15];
}

- (double)_inlayAlphaForBackgroundStyle:(unint64_t)a3
{
  result = 0.85;
  if (a3)
  {
    return 0.5;
  }

  return result;
}

- (double)_backdropInlayAlphaForBackgroundStyle:(unint64_t)a3
{
  result = 1.0;
  if (!a3)
  {
    return 0.0;
  }

  return result;
}

- (void)_applyColorsToComplicationsWithPalette:(id)a3
{
  v4 = a3;
  v7 = [v4 primaryComplicationColor];
  v5 = [v4 secondaryComplicationColor];
  v6 = [v4 backgroundColor];

  [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:v7 secondaryComplicationColor:v5 backgroundColor:v6];
}

- (void)_applyPrimaryComplicationColor:(id)a3 secondaryComplicationColor:(id)a4 backgroundColor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(NTKExactitudesFaceView *)self setComplicationColor:v10];
  [(NTKExactitudesFaceView *)self setInterpolatedComplicationColor:v10];

  [(NTKExactitudesFaceView *)self setAlternateComplicationColor:v9];
  [(NTKExactitudesFaceView *)self setComplicationBackgroundColor:v8];

  [(NTKExactitudesFaceView *)self applyComplicationColors];
}

- (void)_applyCurrentComplicationColorsFromBackgroundStyle:(unint64_t)a3 toBackgroundStyle:(unint64_t)a4 withFraction:(double)a5
{
  v8 = [(NTKExactitudesFaceView *)self palette];
  v20 = [v8 copy];

  [v20 setBackgroundStyle:a3];
  v9 = [(NTKExactitudesFaceView *)self palette];
  v10 = [v9 copy];

  [v10 setBackgroundStyle:a4];
  v19 = [v20 primaryComplicationColor];
  v11 = [v20 secondaryComplicationColor];
  v12 = [v20 backgroundColor];
  v13 = [v10 primaryComplicationColor];
  v14 = [v10 secondaryComplicationColor];
  v15 = [v10 backgroundColor];
  v16 = CLKUIInterpolateBetweenColors();
  v17 = CLKUIInterpolateBetweenColors();
  v18 = CLKUIInterpolateBetweenColors();
  [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:v16 secondaryComplicationColor:v17 backgroundColor:v18];
}

- (void)applyComplicationColors
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_78DC;
  v2[3] = &unk_30BF0;
  v2[4] = self;
  [(NTKExactitudesFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v2];
}

- (void)_applyTritiumComplicationColorsIfNeeded
{
  if ([(NTKExactitudesFaceView *)self _isBackgroundOn])
  {
    v6 = [(NTKExactitudesFaceView *)self palette];
    v3 = [v6 primaryComplicationColor];
    v4 = [v6 secondaryComplicationColor];
    v5 = [v6 backgroundColor];
    [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:v3 secondaryComplicationColor:v4 backgroundColor:v5];
  }
}

- (void)_removeTritiumComplicationColorsIfNeeded
{
  if ([(NTKExactitudesFaceView *)self _isBackgroundOn])
  {
    v6 = [(NTKExactitudesFaceView *)self palette];
    v3 = [v6 primaryComplicationColor];
    v4 = [v6 secondaryComplicationColor];
    v5 = [v6 backgroundColor];
    [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:v3 secondaryComplicationColor:v4 backgroundColor:v5];
  }
}

- (void)_prepareForSnapshotting
{
  v11.receiver = self;
  v11.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v11 _prepareForSnapshotting];
  v3 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_21500(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  [(NTKExactitudesFaceDialsView *)self->_dials showInactiveDials];
  [(NTKExactitudesFaceView *)self _revealCornerComplicationsIfNeeded];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v8 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 > 0x11 || ((1 << a4) & 0x28401) == 0)
  {
    self->_breathingFraction = a3;
    [(NTKExactitudesFaceView *)self _applyBreathingAndRubberBanding];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11.receiver = self;
  v11.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v11 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    if (a4 != 10)
    {
      NTKAlphaForRubberBandingFraction();
      v9 = v8;
      v10 = [(NTKExactitudesFaceView *)self contentView];
      [v10 setAlpha:v9];

      self->_rubberbandingFraction = a3;
      [(NTKExactitudesFaceView *)self _applyBreathingAndRubberBanding];
    }
  }
}

- (void)_applyBreathingAndRubberBanding
{
  breathingFraction = self->_breathingFraction;
  NTKLargeElementScaleForBreathingFraction();
  v5 = v4;
  rubberbandingFraction = self->_rubberbandingFraction;
  NTKScaleForRubberBandingFraction();
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, v5 * v7, v5 * v7);
  v8 = [(NTKExactitudesFaceView *)self contentView];
  v10 = v11;
  [v8 setTransform:&v10];

  v9 = [(NTKExactitudesFaceView *)self complicationContainerView];
  v10 = v11;
  [v9 setTransform:&v10];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v7.receiver = self;
  v7.super_class = NTKExactitudesFaceView;
  v6 = a3;
  [(NTKExactitudesFaceView *)&v7 _configureComplicationView:v6 forSlot:a4];
  [(NTKExactitudesFaceView *)self _applyComplicationFont:v6, v7.receiver, v7.super_class];
  [v6 transitionToMonochromeWithFraction:1.0];
}

- (void)_applyComplicationFont:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 display];
    [(NTKExactitudesFaceView *)self _applyComplicationFont:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setFontStyle:5];
    }
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 17)
  {
    v11 = [v9 objectForKeyedSubscript:&off_32188];
    v14 = v8;
    v15 = [v10 objectForKeyedSubscript:&off_32170];
    v13 = [(NTKExactitudesFaceView *)self _swatchForStyleOption:v11 backgroundOption:v14 colorOption:v15];

    goto LABEL_5;
  }

  if (a4 == 15)
  {
    v11 = [v9 objectForKeyedSubscript:&off_32158];
    v12 = [v10 objectForKeyedSubscript:&off_32170];
    v13 = [(NTKExactitudesFaceView *)self _swatchForStyleOption:v8 backgroundOption:v11 colorOption:v12];

LABEL_5:
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = NTKExactitudesFaceView;
  v13 = [(NTKExactitudesFaceView *)&v17 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
LABEL_7:

  return v13;
}

- (id)_swatchForStyleOption:(id)a3 backgroundOption:(id)a4 colorOption:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_381F8 != -1)
  {
    sub_21578();
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 style]);
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 background]);
  v13 = [v10 identifier];
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, v13];

  v15 = [qword_381F0 objectForKey:v14];
  if (!v15)
  {
    v16 = [NTKExactitudesFaceView alloc];
    v17 = [(NTKExactitudesFaceView *)self device];
    v18 = [(NTKExactitudesFaceView *)v16 initWithFaceStyle:44 forDevice:v17 clientIdentifier:0];

    [(NTKExactitudesFaceView *)self bounds];
    [(NTKExactitudesFaceView *)v18 setBounds:?];
    [(NTKExactitudesFaceView *)v18 _loadSnapshotContentViews];
    [(NTKExactitudesFaceView *)v18 setOption:v8 forCustomEditMode:15 slot:0];
    [(NTKExactitudesFaceView *)v18 setOption:v10 forCustomEditMode:10 slot:0];
    [(NTKExactitudesFaceView *)v18 setOption:v9 forCustomEditMode:17 slot:0];
    v19 = NTKIdealizedDate();
    [(NTKExactitudesFaceView *)v18 setOverrideDate:v19 duration:0.0];

    v20 = [UIGraphicsImageRenderer alloc];
    [(NTKExactitudesFaceView *)v18 bounds];
    v21 = [v20 initWithBounds:?];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_83E0;
    v24[3] = &unk_30C38;
    v25 = v18;
    v22 = v18;
    v15 = [v21 imageWithActions:v24];
    [qword_381F0 setObject:v15 forKey:v14];
  }

  return v15;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_32348;
  if (a3 != 15)
  {
    v4 = 0;
  }

  if (a3 == 17)
  {
    return &off_32330;
  }

  else
  {
    return v4;
  }
}

- (BOOL)_dialsAreClosed
{
  if ([(NTKExactitudesFaceDialsView *)self->_dials secondsDialExpanded])
  {
    return 0;
  }

  else
  {
    return ![(NTKExactitudesFaceDialsView *)self->_dials minutesDialExpanded];
  }
}

- (id)_stringForStyle:(unint64_t)a3
{
  v3 = @"Closed";
  if (a3 == 1)
  {
    v3 = @"Open 1";
  }

  if (a3 == 2)
  {
    return @"Open 2";
  }

  else
  {
    return v3;
  }
}

@end