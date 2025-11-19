@interface NTKMagmaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_finalizeForSnapshotting:(id)a3;
- (void)_handleLogoTap;
- (void)_loadCornerOverlayView;
- (void)_loadEffectsView;
- (void)_loadLogoView;
- (void)_loadSnapshotContentViews;
- (void)_unloadCornerOverlayView;
- (void)_unloadEffectsView;
- (void)_unloadLogoView;
- (void)_unloadSnapshotContentViews;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
@end

@implementation NTKMagmaFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKMagmaFaceView;
  v6 = a3;
  [(NTKMagmaFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKMagmaEffectsView *)self->_effectsView setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v5 setTimeOffset:?];
  [(NTKMagmaEffectsView *)self->_effectsView setTimeOffset:a3];
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
  v4 = [(NTKMagmaFaceView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKMagmaFaceView *)self device];
  v14 = [(NTKMagmaEffectsView *)v3 initWithFrame:v13 device:v6, v8, v10, v12];
  effectsView = self->_effectsView;
  self->_effectsView = v14;

  v16 = [(NTKMagmaFaceView *)self contentView];
  [v16 addSubview:self->_effectsView];
}

- (void)_unloadEffectsView
{
  [(NTKMagmaEffectsView *)self->_effectsView removeFromSuperview];
  effectsView = self->_effectsView;
  self->_effectsView = 0;
}

- (void)_loadLogoView
{
  v3 = [(NTKMagmaFaceView *)self device];
  sub_8064(v3, v3);
  v5 = v4;
  v7 = v6;

  v8 = [(NTKMagmaFaceView *)self device];
  sub_8064(v8, v8);
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
  v15 = [(NTKMagmaFaceView *)self contentView];
  [v15 addSubview:self->_logoButton];
}

- (void)_handleLogoTap
{
  v3 = [(NTKMagmaFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:v3];

  logoButton = self->_logoButton;
  [(NTKMagmaButton *)logoButton bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKMagmaFaceView *)self contentView];
  [(NTKMagmaButton *)logoButton convertRect:v13 toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(NTKMagmaFaceView *)self delegate];
  [v22 faceViewRequestedLaunchFromRect:{v15, v17, v19, v21}];
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
  v4 = [(NTKMagmaFaceView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKMagmaFaceView *)self device];
  v14 = [v3 initWithFrame:v13 forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  v16 = [(NTKMagmaFaceView *)self contentView];
  [v16 addSubview:self->_cornerOverlayView];
}

- (void)_unloadCornerOverlayView
{
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_finalizeForSnapshotting:(id)a3
{
  effectsView = self->_effectsView;
  v4 = a3;
  v5 = [(NTKMagmaEffectsView *)effectsView quadView];
  [v5 renderSynchronouslyWithImageQueueDiscard:1 inGroup:0 completion:v4];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v16 layoutSubviews];
  v3 = [(NTKMagmaFaceView *)self device];
  v4 = sub_8064(v3, v3);
  v6 = v5;

  v7 = [(NTKMagmaFaceView *)self device];
  sub_8064(v7, v7);
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16 = a3;
  v8 = a5;
  if (a4 == 15)
  {
    v11 = [(NTKMagmaFaceView *)self optionForCustomEditMode:15 slot:0];
    v12 = [v11 backgroundStyle];
    self->_backgroundStyle = v12;
    v13 = [(NTKMagmaFaceView *)self colorPalette];
    [v13 setBackgroundStyle:v12];

    v14 = [(NTKMagmaFaceView *)self colorPalette];
    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:v14];

    v15 = [(NTKMagmaFaceView *)self delegate];
    [v15 faceViewDidChangeWantsStatusBarIconShadow];
  }

  else
  {
    if (a4 != 10)
    {
      goto LABEL_6;
    }

    backgroundStyle = self->_backgroundStyle;
    v10 = [(NTKMagmaFaceView *)self colorPalette];
    [v10 setBackgroundStyle:backgroundStyle];

    v11 = [(NTKMagmaFaceView *)self colorPalette];
    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:v11];
  }

LABEL_6:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v22 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 15)
  {
    v15 = [v22 backgroundStyle];
    v16 = [v12 backgroundStyle];
    v17 = [(NTKMagmaFaceView *)self colorPalette];
    v14 = [v17 copy];

    [v14 setBackgroundStyle:v15];
    v18 = [(NTKMagmaFaceView *)self colorPalette];
    v19 = [v18 copy];

    [v19 setBackgroundStyle:v16];
    v20 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v14 toPalette:v19];
    [v20 setTransitionFraction:a3];
    if (a3 >= 0.5)
    {
      v15 = v16;
    }

    self->_backgroundStyle = v15;
    v21 = [(NTKMagmaFaceView *)self colorPalette];
    [v21 setBackgroundStyle:v15];

    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:v20];
  }

  else
  {
    if (a6 != 10)
    {
      goto LABEL_8;
    }

    v14 = [(NTKMagmaFaceView *)self interpolatedColorPalette];
    [(NTKMagmaFaceView *)self _updateViewColorsWithPalette:v14];
  }

LABEL_8:
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 15 || a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v6, v6);
    v9 = v10;
    v7 = [(NTKMagmaFaceView *)self contentView];
    v8 = v9;
    [v7 setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 15 || a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    v7 = v6;
    NTKAlphaForRubberBandingFraction();
    v9 = v8;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    v13 = v14;
    v10 = [(NTKMagmaFaceView *)self contentView];
    v12 = v13;
    [v10 setTransform:&v12];

    v11 = [(NTKMagmaFaceView *)self contentView];
    [v11 setAlpha:v9];
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKMagmaFaceView;
  [(NTKMagmaFaceView *)&v5 _configureForEditMode:?];
  [(NTKMagmaEffectsView *)self->_effectsView setEditing:a3 != 0];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKMagmaColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v5 = a3;
  v4 = [v5 swoosh];
  [(NTKMagmaButton *)self->_logoButton setTintColor:v4];

  [(NTKMagmaEffectsView *)self->_effectsView setColorPalette:v5];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_15128;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 15)
  {
    if (qword_1C1C8 != -1)
    {
      sub_A7D8();
    }

    v10 = v8;
    v11 = [v9 objectForKeyedSubscript:&off_15098];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 backgroundStyle]);
    v13 = [v11 identifier];
    v14 = [NSString stringWithFormat:@"%@-%@", v12, v13];

    v15 = [qword_1C1C0 objectForKey:v14];
    if (!v15)
    {
      v16 = [NTKMagmaFaceView alloc];
      v17 = [(NTKMagmaFaceView *)self device];
      v18 = [(NTKMagmaFaceView *)v16 initWithFaceStyle:44 forDevice:v17 clientIdentifier:0];

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
      v25 = [(NTKMagmaFaceView *)self device];
      [v25 screenScale];
      v27 = v24 * v26;

      v28 = [v18[2] quadView];
      v15 = [v28 snapshotInRect:0.0 scale:0.0 time:{v21, v23, v27, 0.0}];

      [qword_1C1C0 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKMagmaFaceView;
    v15 = [(NTKMagmaFaceView *)&v30 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v15;
}

@end