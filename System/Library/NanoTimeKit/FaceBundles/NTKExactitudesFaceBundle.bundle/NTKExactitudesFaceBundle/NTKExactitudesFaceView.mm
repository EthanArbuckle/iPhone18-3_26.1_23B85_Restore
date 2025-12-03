@interface NTKExactitudesFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_dialsAreClosed;
- (NTKExactitudesFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backdropInlayAlphaForBackgroundStyle:(unint64_t)style;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_inlayAlphaForBackgroundStyle:(unint64_t)style;
- (id)_dialColors;
- (id)_dialColorsFromPalette:(id)palette;
- (id)_stringForStyle:(unint64_t)style;
- (id)_swatchForStyleOption:(id)option backgroundOption:(id)backgroundOption colorOption:(id)colorOption;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)faceDialsStyleForDialStyle:(unint64_t)style;
- (void)_allDialsSetBackgroundStyle:(unint64_t)style;
- (void)_applyBreathingAndRubberBanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColorsFromPalette:(id)palette;
- (void)_applyColorsToComplicationsWithPalette:(id)palette;
- (void)_applyColorsToTimeViewWithPalette:(id)palette;
- (void)_applyComplicationFont:(id)font;
- (void)_applyCurrentColorPalette;
- (void)_applyCurrentColorsToTimeView;
- (void)_applyCurrentColorsToTimeViewFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle withFraction:(double)fraction;
- (void)_applyCurrentComplicationColorsFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle withFraction:(double)fraction;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPauseStateToDialsIfNecessary;
- (void)_applyPrimaryComplicationColor:(id)color secondaryComplicationColor:(id)complicationColor backgroundColor:(id)backgroundColor;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTritiumComplicationColorsIfNeeded;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_hideCornerComplicationsIfNeeded;
- (void)_initDials;
- (void)_initUniversalMetrics;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeTritiumComplicationColorsIfNeeded;
- (void)_revealCornerComplicationsIfNeeded;
- (void)_revealCornerComplicationsIfNeededWithAlpha:(double)alpha;
- (void)_setBackgroundStyle:(unint64_t)style;
- (void)_setDialStyle:(unint64_t)style;
- (void)_setupBackgroundView;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_teardownBackgroundView;
- (void)_transitionDialsInEditorFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle fraction:(double)fraction;
- (void)_unloadSnapshotContentViews;
- (void)applyComplicationColors;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataMode:(int64_t)mode;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKExactitudesFaceView

- (NTKExactitudesFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKExactitudesFaceView;
  v10 = [(NTKExactitudesFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    compositeComplicationFactory = v11->_compositeComplicationFactory;
    v11->_compositeComplicationFactory = v12;

    device = [(NTKExactitudesFaceView *)v11 device];
    v15 = sub_85EC(device, device);

    v16 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v11 dialDiameter:deviceCopy device:v15];
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
    device = [(NTKExactitudesFaceView *)self device];
    v21 = [v11 initWithFrame:device forDeviceCornerRadius:{v13, v15, v17, v19}];
    cornerView = self->_cornerView;
    self->_cornerView = v21;

    contentView = [(NTKExactitudesFaceView *)self contentView];
    [contentView addSubview:self->_cornerView];
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
  _dialColors = [(NTKExactitudesFaceView *)self _dialColors];
  v3 = [NTKExactitudesFaceDialsView alloc];
  [(NTKExactitudesFaceView *)self bounds];
  v8 = [(NTKExactitudesFaceDialsView *)v3 initWithFrame:self->_device device:_dialColors colorsWrapper:[(NTKExactitudesFaceView *)self faceDialsStyleForDialStyle:self->_dialStyle] style:v4, v5, v6, v7];
  dials = self->_dials;
  self->_dials = v8;

  contentView = [(NTKExactitudesFaceView *)self contentView];
  [contentView addSubview:self->_dials];

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

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v8 setOverrideDate:dateCopy duration:duration];
  dials = self->_dials;
  if (dials)
  {
    [(NTKExactitudesFaceDialsView *)dials setOverrideDate:dateCopy duration:duration];
  }
}

- (void)setDataMode:(int64_t)mode
{
  v3.receiver = self;
  v3.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v3 setDataMode:mode];
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

  dataMode = [(NTKExactitudesFaceView *)self dataMode];
  if (dataMode <= 5)
  {
    if (((1 << dataMode) & 0x35) != 0)
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

    if (dataMode != 1)
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

  contentView = [(NTKExactitudesFaceView *)self contentView];
  [contentView addSubview:self->_backgroundView];
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
    selfCopy = self;
    v11 = objc_retainBlock(v12);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5D48;
    v7[3] = &unk_30B80;
    v7[4] = selfCopy;
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

- (void)_revealCornerComplicationsIfNeededWithAlpha:(double)alpha
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
      *&v7[4] = alpha;
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
  isFrozen = [(NTKExactitudesFaceView *)self isFrozen];
  if (self->_isPaused != isFrozen)
  {
    self->_isPaused = isFrozen;
    dials = self->_dials;
    if (isFrozen)
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

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  if (mode > 0x11 || ((1 << mode) & 0x28403) == 0)
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
  v26.receiver = self;
  v26.super_class = NTKExactitudesFaceView;
  [NTKExactitudesFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKExactitudesFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKExactitudesFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  complicationContainerView = [(NTKExactitudesFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v10];

  [(NTKExactitudesFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKExactitudesFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  timeView = [(NTKExactitudesFaceView *)self timeView];
  [timeView setAlpha:v13];

  contentView = [(NTKExactitudesFaceView *)self contentView];
  [contentView setAlpha:v13];

  if (mode == 1 || editMode == 1)
  {
    palette = [(NTKExactitudesFaceView *)self palette];
    secondaryComplicationColor = [palette secondaryComplicationColor];
    cGColor = [secondaryComplicationColor CGColor];
    v19 = +[UIColor blackColor];
    LODWORD(cGColor) = CGColorEqualToColor(cGColor, [v19 CGColor]);

    if (cGColor)
    {
      v20 = 1.0;
      fractionCopy = 1.0 - fraction;
      if (editMode == 1)
      {
        fractionCopy = fraction;
      }

      else
      {
        v20 = 0.0;
      }

      v22 = [(NTKExactitudesFaceView *)self palette:v20];
      secondaryComplicationColor2 = [v22 secondaryComplicationColor];

      v24 = +[UIColor whiteColor];
      v25 = CLKUIInterpolateBetweenColors();

      [(NTKExactitudesFaceView *)self setAlternateComplicationColor:v25];
      [(NTKExactitudesFaceView *)self applyComplicationColors];
    }
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v11.receiver = self;
  v11.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v11 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  switch(mode)
  {
    case 10:
      [(NTKExactitudesFaceView *)self _applyCurrentColorPalette];
      break;
    case 15:
      style = [optionCopy style];
      v10 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_2109C(self, style);
      }

      -[NTKExactitudesFaceView _setDialStyle:](self, "_setDialStyle:", [optionCopy style]);
      break;
    case 17:
      -[NTKExactitudesFaceView _setBackgroundStyle:](self, "_setBackgroundStyle:", [optionCopy background]);
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKExactitudesFaceView *)self interpolatedColorPalette];
      [(NTKExactitudesFaceView *)self _applyColorsFromPalette:interpolatedColorPalette];

      break;
    case 15:
      style = [optionCopy style];
      style2 = [toOptionCopy style];
      v19 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v32 = [(NTKExactitudesFaceView *)self _stringForStyle:style];
        v33 = [(NTKExactitudesFaceView *)self _stringForStyle:style2];
        *buf = 136315906;
        v36 = "[NTKExactitudesFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
        v37 = 2112;
        v38 = v32;
        v39 = 2112;
        v40 = v33;
        v41 = 2048;
        fractionCopy = fraction;
        _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "SNEPO %s: fromStyle: %@, toStyle: %@, fraction: %f", buf, 0x2Au);
      }

      if (style == style2)
      {
        v20 = +[NTKExactitudesFaceBundle logObject];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_21134(self, style);
        }

        [(NTKExactitudesFaceDialsView *)self->_dials setStyle:[(NTKExactitudesFaceView *)self faceDialsStyleForDialStyle:style]];
      }

      else
      {
        [(NTKExactitudesFaceView *)self _transitionDialsInEditorFromStyle:style toStyle:style2 fraction:fraction];
      }

      break;
    case 17:
      background = [optionCopy background];
      background2 = [toOptionCopy background];
      if (background == background2)
      {
        [(NTKExactitudesFaceView *)self _setBackgroundStyle:background];
      }

      else
      {
        v22 = background2;
        palette = [(NTKExactitudesFaceView *)self palette];
        v24 = [palette copy];

        v34 = v24;
        [v24 setBackgroundStyle:background];
        palette2 = [(NTKExactitudesFaceView *)self palette];
        v26 = [palette2 copy];

        [v26 setBackgroundStyle:v22];
        backgroundColor = [v24 backgroundColor];
        backgroundColor2 = [v26 backgroundColor];
        v29 = CLKUIInterpolateBetweenColors();
        [(UIView *)self->_backgroundView setBackgroundColor:v29];
        [(NTKExactitudesFaceView *)self _applyCurrentColorsToTimeViewFromBackgroundStyle:background toBackgroundStyle:v22 withFraction:fraction];
        [(NTKExactitudesFaceView *)self _applyCurrentComplicationColorsFromBackgroundStyle:background toBackgroundStyle:v22 withFraction:fraction];
        v30 = v22 == &dword_0 + 1 && background == 0;
        fractionCopy2 = 1.0 - fraction;
        if (!v30)
        {
          fractionCopy2 = fraction;
        }

        [(NTKExactitudesFaceView *)self _setAllDialsBackgroundStyleTransitionProgress:fractionCopy2];
      }

      break;
  }
}

- (void)_setBackgroundStyle:(unint64_t)style
{
  self->_backgroundStyle = style;
  palette = [(NTKExactitudesFaceView *)self palette];
  [palette setBackgroundStyle:self->_backgroundStyle];

  [(NTKExactitudesFaceView *)self _applyCurrentColorPalette];
  backgroundView = self->_backgroundView;
  palette2 = [(NTKExactitudesFaceView *)self palette];
  backgroundColor = [palette2 backgroundColor];
  [(UIView *)backgroundView setBackgroundColor:backgroundColor];

  backgroundStyle = self->_backgroundStyle;

  [(NTKExactitudesFaceView *)self _allDialsSetBackgroundStyle:backgroundStyle];
}

- (void)_allDialsSetBackgroundStyle:(unint64_t)style
{
  v3 = 0.0;
  if (!style)
  {
    v3 = 1.0;
  }

  [(NTKExactitudesFaceView *)self _setAllDialsBackgroundStyleTransitionProgress:v3];
}

- (void)_transitionDialsInEditorFromStyle:(unint64_t)style toStyle:(unint64_t)toStyle fraction:(double)fraction
{
  v9 = [(NTKExactitudesFaceView *)self _stringForStyle:?];
  v10 = [(NTKExactitudesFaceView *)self _stringForStyle:toStyle];
  v11 = +[NTKExactitudesFaceBundle logObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_211F0(v9, v10, v11);
  }

  if (style)
  {
    v12 = +[NTKExactitudesFaceBundle logObject];
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (toStyle == 2)
    {
      if (v13)
      {
        sub_212F0(v12);
      }

      if (style != 1)
      {
        v21 = +[NTKExactitudesFaceBundle logObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_21334(v21, v22, v23, v24, v25, v26, v27, v28);
        }
      }

      [(NTKExactitudesFaceView *)self setMinutesDialExpansionProgress:fraction];
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

    if (toStyle != 1)
    {
      v30 = +[NTKExactitudesFaceBundle logObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        sub_213F0(v30, v31, v32, v33, v34, v35, v36, v37);
      }
    }

    [(NTKExactitudesFaceView *)self setSecondsDialExpansionProgress:fraction];
    [(NTKExactitudesFaceView *)self setMinutesDialExpansionProgress:0.0];
  }
}

- (void)_setDialStyle:(unint64_t)style
{
  if (self->_dialStyle != style)
  {
    v5 = +[NTKExactitudesFaceBundle logObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_21468(self, style);
    }

    self->_dialStyle = style;
    [(NTKExactitudesFaceDialsView *)self->_dials setStyle:[(NTKExactitudesFaceView *)self faceDialsStyleForDialStyle:style]];
  }
}

- (int64_t)faceDialsStyleForDialStyle:(unint64_t)style
{
  if (style == 2)
  {
    return 2;
  }

  else
  {
    return style == 1;
  }
}

- (id)_dialColors
{
  palette = [(NTKExactitudesFaceView *)self palette];
  v4 = [(NTKExactitudesFaceView *)self _dialColorsFromPalette:palette];

  return v4;
}

- (id)_dialColorsFromPalette:(id)palette
{
  paletteCopy = palette;
  secondColor = [paletteCopy secondColor];
  minuteColor = [paletteCopy minuteColor];
  hourColor = [paletteCopy hourColor];
  dialForegroundColor = [paletteCopy dialForegroundColor];

  v8 = [[NTKExactitudesFaceDialColorsWrapper alloc] initWithHourColor:hourColor minuteColor:minuteColor secondColor:secondColor foregroundColor:dialForegroundColor];

  return v8;
}

- (void)_applyCurrentColorPalette
{
  palette = [(NTKExactitudesFaceView *)self palette];
  [(NTKExactitudesFaceView *)self _applyColorsFromPalette:palette];
}

- (void)_applyColorsFromPalette:(id)palette
{
  paletteCopy = palette;
  [(NTKExactitudesFaceView *)self _applyColorsToTimeViewWithPalette:paletteCopy];
  v5 = [(NTKExactitudesFaceView *)self _dialColorsFromPalette:paletteCopy];
  [(NTKExactitudesFaceDialsView *)self->_dials setColorsWrapper:v5];
  [(NTKExactitudesFaceView *)self _setBackgroundColorForBackgroundOn:[(NTKExactitudesFaceView *)self _isBackgroundOn] palette:paletteCopy];
  [(NTKExactitudesFaceView *)self _applyColorsToComplicationsWithPalette:paletteCopy];
}

- (void)_applyCurrentColorsToTimeView
{
  palette = [(NTKExactitudesFaceView *)self palette];
  [(NTKExactitudesFaceView *)self _applyColorsToTimeViewWithPalette:palette];
}

- (void)_applyCurrentColorsToTimeViewFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle withFraction:(double)fraction
{
  palette = [(NTKExactitudesFaceView *)self palette];
  v38 = [palette copy];

  [v38 setBackgroundStyle:style];
  palette2 = [(NTKExactitudesFaceView *)self palette];
  v10 = [palette2 copy];

  [v10 setBackgroundStyle:backgroundStyle];
  hourHandOutlineColor = [v38 hourHandOutlineColor];
  minuteHandOutlineColor = [v38 minuteHandOutlineColor];
  secondHandColor = [v38 secondHandColor];
  hourHandInlayColor = [v38 hourHandInlayColor];
  minuteHandInlayColor = [v38 minuteHandInlayColor];
  [(NTKExactitudesFaceView *)self _inlayAlphaForBackgroundStyle:style];
  [(NTKExactitudesFaceView *)self _backdropInlayAlphaForBackgroundStyle:style];
  handDotColor = [v38 handDotColor];
  hourHandOutlineColor2 = [v10 hourHandOutlineColor];
  minuteHandOutlineColor2 = [v10 minuteHandOutlineColor];
  secondHandColor2 = [v10 secondHandColor];
  hourHandInlayColor2 = [v10 hourHandInlayColor];
  minuteHandInlayColor2 = [v10 minuteHandInlayColor];
  [(NTKExactitudesFaceView *)self _inlayAlphaForBackgroundStyle:backgroundStyle];
  [(NTKExactitudesFaceView *)self _backdropInlayAlphaForBackgroundStyle:backgroundStyle];
  handDotColor2 = [v10 handDotColor];
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
  timeView = [(NTKExactitudesFaceView *)self timeView];
  _backdropInlayColor = [(NTKExactitudesFaceView *)self _backdropInlayColor];
  [timeView applyHourHandColor:v25 inlayColor:v13 inlayAlpha:_backdropInlayColor backdropInlayColor:v16 backdropInlayAlpha:v18];
  [timeView applyMinuteHandColor:v11 inlayColor:v14 inlayAlpha:_backdropInlayColor backdropInlayColor:v16 backdropInlayAlpha:v18];
  [timeView applySecondHandColor:v12];
  hourHandView = [timeView hourHandView];
  [hourHandView setHandDotColor:v19];

  minuteHandView = [timeView minuteHandView];
  [minuteHandView setHandDotColor:v19];

  secondHandView = [timeView secondHandView];
  [secondHandView setHandDotColor:v19];
}

- (void)_applyColorsToTimeViewWithPalette:(id)palette
{
  paletteCopy = palette;
  hourHandOutlineColor = [paletteCopy hourHandOutlineColor];
  minuteHandOutlineColor = [paletteCopy minuteHandOutlineColor];
  secondHandColor = [paletteCopy secondHandColor];
  hourHandInlayColor = [paletteCopy hourHandInlayColor];
  minuteHandInlayColor = [paletteCopy minuteHandInlayColor];
  _backdropInlayColor = [(NTKExactitudesFaceView *)self _backdropInlayColor];
  [(NTKExactitudesFaceView *)self _inlayAlphaForBackgroundStyle:self->_backgroundStyle];
  v11 = v10;
  [(NTKExactitudesFaceView *)self _backdropInlayAlphaForBackgroundStyle:self->_backgroundStyle];
  v13 = v12;
  timeView = [(NTKExactitudesFaceView *)self timeView];
  [timeView applyHourHandColor:hourHandOutlineColor inlayColor:hourHandInlayColor inlayAlpha:_backdropInlayColor backdropInlayColor:v11 backdropInlayAlpha:v13];
  [timeView applyMinuteHandColor:minuteHandOutlineColor inlayColor:minuteHandInlayColor inlayAlpha:_backdropInlayColor backdropInlayColor:v11 backdropInlayAlpha:v13];
  [timeView applySecondHandColor:secondHandColor];
  handDotColor = [paletteCopy handDotColor];

  hourHandView = [timeView hourHandView];
  [hourHandView setHandDotColor:handDotColor];

  minuteHandView = [timeView minuteHandView];
  [minuteHandView setHandDotColor:handDotColor];

  secondHandView = [timeView secondHandView];
  [secondHandView setHandDotColor:handDotColor];
}

- (double)_inlayAlphaForBackgroundStyle:(unint64_t)style
{
  result = 0.85;
  if (style)
  {
    return 0.5;
  }

  return result;
}

- (double)_backdropInlayAlphaForBackgroundStyle:(unint64_t)style
{
  result = 1.0;
  if (!style)
  {
    return 0.0;
  }

  return result;
}

- (void)_applyColorsToComplicationsWithPalette:(id)palette
{
  paletteCopy = palette;
  primaryComplicationColor = [paletteCopy primaryComplicationColor];
  secondaryComplicationColor = [paletteCopy secondaryComplicationColor];
  backgroundColor = [paletteCopy backgroundColor];

  [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:primaryComplicationColor secondaryComplicationColor:secondaryComplicationColor backgroundColor:backgroundColor];
}

- (void)_applyPrimaryComplicationColor:(id)color secondaryComplicationColor:(id)complicationColor backgroundColor:(id)backgroundColor
{
  backgroundColorCopy = backgroundColor;
  complicationColorCopy = complicationColor;
  colorCopy = color;
  [(NTKExactitudesFaceView *)self setComplicationColor:colorCopy];
  [(NTKExactitudesFaceView *)self setInterpolatedComplicationColor:colorCopy];

  [(NTKExactitudesFaceView *)self setAlternateComplicationColor:complicationColorCopy];
  [(NTKExactitudesFaceView *)self setComplicationBackgroundColor:backgroundColorCopy];

  [(NTKExactitudesFaceView *)self applyComplicationColors];
}

- (void)_applyCurrentComplicationColorsFromBackgroundStyle:(unint64_t)style toBackgroundStyle:(unint64_t)backgroundStyle withFraction:(double)fraction
{
  palette = [(NTKExactitudesFaceView *)self palette];
  v20 = [palette copy];

  [v20 setBackgroundStyle:style];
  palette2 = [(NTKExactitudesFaceView *)self palette];
  v10 = [palette2 copy];

  [v10 setBackgroundStyle:backgroundStyle];
  primaryComplicationColor = [v20 primaryComplicationColor];
  secondaryComplicationColor = [v20 secondaryComplicationColor];
  backgroundColor = [v20 backgroundColor];
  primaryComplicationColor2 = [v10 primaryComplicationColor];
  secondaryComplicationColor2 = [v10 secondaryComplicationColor];
  backgroundColor2 = [v10 backgroundColor];
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
    palette = [(NTKExactitudesFaceView *)self palette];
    primaryComplicationColor = [palette primaryComplicationColor];
    secondaryComplicationColor = [palette secondaryComplicationColor];
    backgroundColor = [palette backgroundColor];
    [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:primaryComplicationColor secondaryComplicationColor:secondaryComplicationColor backgroundColor:backgroundColor];
  }
}

- (void)_removeTritiumComplicationColorsIfNeeded
{
  if ([(NTKExactitudesFaceView *)self _isBackgroundOn])
  {
    palette = [(NTKExactitudesFaceView *)self palette];
    primaryComplicationColor = [palette primaryComplicationColor];
    secondaryComplicationColor = [palette secondaryComplicationColor];
    backgroundColor = [palette backgroundColor];
    [(NTKExactitudesFaceView *)self _applyPrimaryComplicationColor:primaryComplicationColor secondaryComplicationColor:secondaryComplicationColor backgroundColor:backgroundColor];
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

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v8 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode > 0x11 || ((1 << mode) & 0x28401) == 0)
  {
    self->_breathingFraction = fraction;
    [(NTKExactitudesFaceView *)self _applyBreathingAndRubberBanding];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v11.receiver = self;
  v11.super_class = NTKExactitudesFaceView;
  [(NTKExactitudesFaceView *)&v11 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    if (mode != 10)
    {
      NTKAlphaForRubberBandingFraction();
      v9 = v8;
      contentView = [(NTKExactitudesFaceView *)self contentView];
      [contentView setAlpha:v9];

      self->_rubberbandingFraction = fraction;
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
  contentView = [(NTKExactitudesFaceView *)self contentView];
  v10 = v11;
  [contentView setTransform:&v10];

  complicationContainerView = [(NTKExactitudesFaceView *)self complicationContainerView];
  v10 = v11;
  [complicationContainerView setTransform:&v10];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  v7.receiver = self;
  v7.super_class = NTKExactitudesFaceView;
  viewCopy = view;
  [(NTKExactitudesFaceView *)&v7 _configureComplicationView:viewCopy forSlot:slot];
  [(NTKExactitudesFaceView *)self _applyComplicationFont:viewCopy, v7.receiver, v7.super_class];
  [viewCopy transitionToMonochromeWithFraction:1.0];
}

- (void)_applyComplicationFont:(id)font
{
  fontCopy = font;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    display = [fontCopy display];
    [(NTKExactitudesFaceView *)self _applyComplicationFont:display];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [fontCopy setFontStyle:5];
    }
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode == 17)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_32188];
    v14 = optionCopy;
    v15 = [v10 objectForKeyedSubscript:&off_32170];
    v13 = [(NTKExactitudesFaceView *)self _swatchForStyleOption:v11 backgroundOption:v14 colorOption:v15];

    goto LABEL_5;
  }

  if (mode == 15)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_32158];
    v12 = [v10 objectForKeyedSubscript:&off_32170];
    v13 = [(NTKExactitudesFaceView *)self _swatchForStyleOption:optionCopy backgroundOption:v11 colorOption:v12];

LABEL_5:
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = NTKExactitudesFaceView;
  v13 = [(NTKExactitudesFaceView *)&v17 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
LABEL_7:

  return v13;
}

- (id)_swatchForStyleOption:(id)option backgroundOption:(id)backgroundOption colorOption:(id)colorOption
{
  optionCopy = option;
  backgroundOptionCopy = backgroundOption;
  colorOptionCopy = colorOption;
  if (qword_381F8 != -1)
  {
    sub_21578();
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionCopy style]);
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [backgroundOptionCopy background]);
  identifier = [colorOptionCopy identifier];
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, identifier];

  v15 = [qword_381F0 objectForKey:v14];
  if (!v15)
  {
    v16 = [NTKExactitudesFaceView alloc];
    device = [(NTKExactitudesFaceView *)self device];
    v18 = [(NTKExactitudesFaceView *)v16 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

    [(NTKExactitudesFaceView *)self bounds];
    [(NTKExactitudesFaceView *)v18 setBounds:?];
    [(NTKExactitudesFaceView *)v18 _loadSnapshotContentViews];
    [(NTKExactitudesFaceView *)v18 setOption:optionCopy forCustomEditMode:15 slot:0];
    [(NTKExactitudesFaceView *)v18 setOption:colorOptionCopy forCustomEditMode:10 slot:0];
    [(NTKExactitudesFaceView *)v18 setOption:backgroundOptionCopy forCustomEditMode:17 slot:0];
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_32348;
  if (options != 15)
  {
    v4 = 0;
  }

  if (options == 17)
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

- (id)_stringForStyle:(unint64_t)style
{
  v3 = @"Closed";
  if (style == 1)
  {
    v3 = @"Open 1";
  }

  if (style == 2)
  {
    return @"Open 2";
  }

  else
  {
    return v3;
  }
}

@end