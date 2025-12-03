@interface NTKMagmaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_handleLogoTap;
- (void)_loadCornerOverlayView;
- (void)_loadEffectsView;
- (void)_loadLogoView;
- (void)_loadSnapshotContentViews;
- (void)_unloadCornerOverlayView;
- (void)_unloadEffectsView;
- (void)_unloadLogoView;
- (void)_unloadSnapshotContentViews;
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKMagmaFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v3 _applyFrozen];
  [(NTKMagmaEffectsView *)self->_effectsView setPaused:[(NTKMagmaFaceView *)self isFrozen]];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKMagmaFaceView *)self _loadEffectsView];
  [(NTKMagmaFaceView *)self _loadLogoView];
  [(NTKMagmaFaceView *)self _loadCornerOverlayView];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKMagmaFaceView *)self _unloadCornerOverlayView];
  [(NTKMagmaFaceView *)self _unloadLogoView];
  [(NTKMagmaFaceView *)self _unloadEffectsView];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKMagmaFaceView;
  dateCopy = date;
  [(NTKMagmaFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKMagmaEffectsView *)self->_effectsView setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)offset
{
  v5.receiver = self;
  v5.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v5 setTimeOffset:?];
  [(NTKMagmaEffectsView *)self->_effectsView setTimeOffset:offset];
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKMagmaFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 backgroundStyle] == &dword_0 + 1;

  return v3;
}

- (void)_applyDataMode
{
  v3 = [(NTKMagmaFaceView *)self dataMode]== &dword_0 + 1;
  logoButton = self->_logoButton;

  [(NTKMagmaButton *)logoButton setUserInteractionEnabled:v3];
}

- (void)_loadEffectsView
{
  v3 = [NTKMagmaEffectsView alloc];
  contentView = [(NTKMagmaFaceView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKMagmaFaceView *)self device];
  v14 = [(NTKMagmaEffectsView *)v3 initWithFrame:device device:v6, v8, v10, v12];
  effectsView = self->_effectsView;
  self->_effectsView = v14;

  contentView2 = [(NTKMagmaFaceView *)self contentView];
  [contentView2 addSubview:self->_effectsView];
}

- (void)_unloadEffectsView
{
  [(NTKMagmaEffectsView *)self->_effectsView removeFromSuperview];
  effectsView = self->_effectsView;
  self->_effectsView = 0;
}

- (void)_loadLogoView
{
  device = [(NTKMagmaFaceView *)self device];
  sub_8064(device, device);
  v5 = v4;
  v7 = v6;

  device2 = [(NTKMagmaFaceView *)self device];
  sub_8064(device2, device2);
  v10 = v9;

  v11 = [NTKMagmaButton buttonWithType:0];
  logoButton = self->_logoButton;
  self->_logoButton = v11;

  [(NTKMagmaButton *)self->_logoButton setTouchEdgeInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(NTKMagmaButton *)self->_logoButton setBounds:CGPointZero.x, CGPointZero.y, v5 + v10 * 2.0, v7 + v10 * 2.0];
  [(NTKMagmaButton *)self->_logoButton addTarget:self action:"_handleLogoTap" forControlEvents:64];
  v13 = self->_logoButton;
  v14 = [NTKMagmaFaceBundle localizedStringForKey:@"MAGMA_LOGO_BUTTON_ACCESSIBILITY_LABEL" comment:@"Accessibility label for logo button"];
  [(NTKMagmaButton *)v13 setAccessibilityLabel:v14];

  [(NTKMagmaButton *)self->_logoButton setNeedsLayout];
  [(NTKMagmaButton *)self->_logoButton setDelegate:self->_effectsView];
  contentView = [(NTKMagmaFaceView *)self contentView];
  [contentView addSubview:self->_logoButton];
}

- (void)_handleLogoTap
{
  delegate = [(NTKMagmaFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:delegate];

  logoButton = self->_logoButton;
  [(NTKMagmaButton *)logoButton bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  contentView = [(NTKMagmaFaceView *)self contentView];
  [(NTKMagmaButton *)logoButton convertRect:contentView toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  delegate2 = [(NTKMagmaFaceView *)self delegate];
  [delegate2 faceViewRequestedLaunchFromRect:{v15, v17, v19, v21}];
}

- (void)_unloadLogoView
{
  [(NTKMagmaButton *)self->_logoButton removeFromSuperview];
  logoButton = self->_logoButton;
  self->_logoButton = 0;
}

- (void)_loadCornerOverlayView
{
  v3 = [NTKRoundedCornerOverlayView alloc];
  contentView = [(NTKMagmaFaceView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKMagmaFaceView *)self device];
  v14 = [v3 initWithFrame:device forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  contentView2 = [(NTKMagmaFaceView *)self contentView];
  [contentView2 addSubview:self->_cornerOverlayView];
}

- (void)_unloadCornerOverlayView
{
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  effectsView = self->_effectsView;
  snapshottingCopy = snapshotting;
  quadView = [(NTKMagmaEffectsView *)effectsView quadView];
  [quadView renderSynchronouslyWithImageQueueDiscard:1 inGroup:0 completion:snapshottingCopy];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v16 layoutSubviews];
  device = [(NTKMagmaFaceView *)self device];
  v4 = sub_8064(device, device);
  v6 = v5;

  device2 = [(NTKMagmaFaceView *)self device];
  sub_8064(device2, device2);
  v9 = v8;

  [(NTKMagmaButton *)self->_logoButton frame];
  v11 = v10;
  v13 = v12;
  [(NTKMagmaFaceView *)self bounds];
  v14 = CGRectGetMidX(v17) + v6 * -0.5 - v9;
  [(NTKMagmaFaceView *)self bounds];
  Height = CGRectGetHeight(v18);
  [(NTKMagmaButton *)self->_logoButton bounds];
  [(NTKMagmaButton *)self->_logoButton setFrame:v14, v9 + Height - CGRectGetHeight(v19) - v4, v11, v13];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 15)
  {
    colorPalette4 = [(NTKMagmaFaceView *)self optionForCustomEditMode:15 slot:0];
    backgroundStyle = [colorPalette4 backgroundStyle];
    self->_backgroundStyle = backgroundStyle;
    colorPalette = [(NTKMagmaFaceView *)self colorPalette];
    [colorPalette setBackgroundStyle:backgroundStyle];

    colorPalette2 = [(NTKMagmaFaceView *)self colorPalette];
    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:colorPalette2];

    delegate = [(NTKMagmaFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else
  {
    if (mode != 10)
    {
      goto LABEL_6;
    }

    backgroundStyle = self->_backgroundStyle;
    colorPalette3 = [(NTKMagmaFaceView *)self colorPalette];
    [colorPalette3 setBackgroundStyle:backgroundStyle];

    colorPalette4 = [(NTKMagmaFaceView *)self colorPalette];
    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:colorPalette4];
  }

LABEL_6:
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 15)
  {
    backgroundStyle = [optionCopy backgroundStyle];
    backgroundStyle2 = [toOptionCopy backgroundStyle];
    colorPalette = [(NTKMagmaFaceView *)self colorPalette];
    interpolatedColorPalette = [colorPalette copy];

    [interpolatedColorPalette setBackgroundStyle:backgroundStyle];
    colorPalette2 = [(NTKMagmaFaceView *)self colorPalette];
    v19 = [colorPalette2 copy];

    [v19 setBackgroundStyle:backgroundStyle2];
    v20 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:interpolatedColorPalette toPalette:v19];
    [v20 setTransitionFraction:fraction];
    if (fraction >= 0.5)
    {
      backgroundStyle = backgroundStyle2;
    }

    self->_backgroundStyle = backgroundStyle;
    colorPalette3 = [(NTKMagmaFaceView *)self colorPalette];
    [colorPalette3 setBackgroundStyle:backgroundStyle];

    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:v20];
  }

  else
  {
    if (mode != 10)
    {
      goto LABEL_8;
    }

    interpolatedColorPalette = [(NTKMagmaFaceView *)self interpolatedColorPalette];
    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:interpolatedColorPalette];
  }

LABEL_8:
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15 || mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v6, v6);
    v9 = v10;
    contentView = [(NTKMagmaFaceView *)self contentView];
    v8 = v9;
    [contentView setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15 || mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    v7 = v6;
    NTKAlphaForRubberBandingFraction();
    v9 = v8;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    v13 = v14;
    contentView = [(NTKMagmaFaceView *)self contentView];
    v12 = v13;
    [contentView setTransform:&v12];

    contentView2 = [(NTKMagmaFaceView *)self contentView];
    [contentView2 setAlpha:v9];
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v5 _configureForEditMode:?];
  [(NTKMagmaEffectsView *)self->_effectsView setEditing:mode != 0];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKMagmaColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  swoosh = [paletteCopy swoosh];
  [(NTKMagmaButton *)self->_logoButton setTintColor:swoosh];

  [(NTKMagmaEffectsView *)self->_effectsView setColorPalette:paletteCopy];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_15128;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 15)
  {
    if (qword_1C1C8 != -1)
    {
      sub_A7D8();
    }

    v10 = optionCopy;
    v11 = [optionsCopy objectForKeyedSubscript:&off_15098];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 backgroundStyle]);
    identifier = [v11 identifier];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, identifier];

    v15 = [qword_1C1C0 objectForKey:v14];
    if (!v15)
    {
      v16 = [NTKMagmaFaceView alloc];
      device = [(NTKMagmaFaceView *)self device];
      v18 = [(NTKMagmaFaceView *)v16 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

      [(NTKMagmaFaceView *)self bounds];
      [v18 setFrame:?];
      [v18 _loadSnapshotContentViews];
      [v18 setOption:v10 forCustomEditMode:15 slot:0];
      [v18 setOption:v11 forCustomEditMode:10 slot:0];
      v19 = NTKIdealizedDate();
      [v18 setOverrideDate:v19 duration:0.0];

      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      v21 = v20;
      v23 = v22;
      [(NTKMagmaFaceView *)self bounds];
      v24 = CGRectGetHeight(v32) / v23;
      device2 = [(NTKMagmaFaceView *)self device];
      [device2 screenScale];
      v27 = v24 * v26;

      quadView = [v18[2] quadView];
      v15 = [quadView snapshotInRect:0.0 scale:0.0 time:{v21, v23, v27, 0.0}];

      [qword_1C1C0 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKMagmaFaceView;
    v15 = [(NTKMagmaFaceView *)&v30 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

@end