@interface NTKSecretariatFaceView
- (BOOL)_wantsStatusBarIconShadow;
- (double)_contentViewAlphaForEditMode:(int64_t)a3;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadBackgroundView;
- (void)_loadCornerOverlayView;
- (void)_loadLogoImageView;
- (void)_loadSnapshotContentViews;
- (void)_unloadBackgroundView;
- (void)_unloadCornerOverlayView;
- (void)_unloadLogoImageView;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColorForPalette:(id)a3 slot:(id)a4 view:(id)a5;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)layoutSubviews;
@end

@implementation NTKSecretariatFaceView

- (void)_loadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKSecretariatFaceView;
  [(NTKSecretariatFaceView *)&v6 _loadSnapshotContentViews];
  [(NTKSecretariatFaceView *)self _loadBackgroundView];
  [(NTKSecretariatFaceView *)self _loadLogoImageView];
  [(NTKSecretariatFaceView *)self _loadCornerOverlayView];
  v3 = [(NTKSecretariatFaceView *)self faceTapControl];
  [v3 removeFromSuperview];

  v4 = [(NTKSecretariatFaceView *)self contentView];
  v5 = [(NTKSecretariatFaceView *)self faceTapControl];
  [v4 addSubview:v5];
}

- (void)_unloadSnapshotContentViews
{
  [(NTKSecretariatFaceView *)self _unloadCornerOverlayView];
  [(NTKSecretariatFaceView *)self _unloadLogoImageView];
  [(NTKSecretariatFaceView *)self _unloadBackgroundView];
  v3.receiver = self;
  v3.super_class = NTKSecretariatFaceView;
  [(NTKSecretariatFaceView *)&v3 _unloadSnapshotContentViews];
}

- (void)_applyDataMode
{
  v2.receiver = self;
  v2.super_class = NTKSecretariatFaceView;
  [(NTKSecretariatFaceView *)&v2 _applyDataMode];
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKSecretariatFaceView *)self colorPalette];
  v3 = [v2 isBlackColor];

  return v3 ^ 1;
}

- (void)_loadBackgroundView
{
  v3 = [NTKSecretariatBackgroundView alloc];
  v4 = [(NTKSecretariatFaceView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKSecretariatFaceView *)self device];
  v14 = [(NTKSecretariatBackgroundView *)v3 initWithFrame:v13 device:0 inactive:v6, v8, v10, v12];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v14;

  v16 = [(NTKSecretariatFaceView *)self contentView];
  [v16 addSubview:self->_backgroundView];
}

- (void)_unloadBackgroundView
{
  [(NTKSecretariatBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;
}

- (void)_loadCornerOverlayView
{
  v3 = [NTKRoundedCornerOverlayView alloc];
  v4 = [(NTKSecretariatFaceView *)self contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKSecretariatFaceView *)self device];
  v14 = [v3 initWithFrame:v13 forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  v16 = [(NTKSecretariatFaceView *)self contentView];
  [v16 addSubview:self->_cornerOverlayView];
}

- (void)_unloadCornerOverlayView
{
  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)_loadLogoImageView
{
  v6 = [NTKSecretariatFaceBundle imageWithName:@"SecretariatLogo"];
  v3 = [[UIImageView alloc] initWithImage:v6];
  logoImageView = self->_logoImageView;
  self->_logoImageView = v3;

  v5 = [(NTKSecretariatFaceView *)self contentView];
  [v5 addSubview:self->_logoImageView];
}

- (void)_unloadLogoImageView
{
  [(UIImageView *)self->_logoImageView removeFromSuperview];
  logoImageView = self->_logoImageView;
  self->_logoImageView = 0;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKSecretariatFaceView;
  [(NTKSecretariatFaceView *)&v14 layoutSubviews];
  v13 = 0.0;
  v12 = 0u;
  v3 = [(NTKSecretariatFaceView *)self device:0];
  sub_1B768(v3, &v11);

  [(UIImageView *)self->_logoImageView frame];
  v5 = v4;
  v7 = v6;
  v8 = *(&v12 + 1);
  v9 = v13;
  [(NTKSecretariatFaceView *)self bounds];
  v10 = (CGRectGetMidX(v15) - v8) * 0.5;
  [(NTKSecretariatFaceView *)self bounds];
  [(UIImageView *)self->_logoImageView setFrame:v10, (CGRectGetMidY(v16) - v9) * 0.5, v5, v7];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKSecretariatFaceView *)self colorPalette];
  [(NTKSecretariatFaceView *)self _updateComplicationColorForPalette:v8 slot:v6 view:v7];
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKSecretariatFaceView *)self _contentViewAlphaForEditMode:a3];
  v5 = v4;
  v6 = [(NTKSecretariatFaceView *)self timeView];
  [v6 setAlpha:v5];

  v7 = [(NTKSecretariatFaceView *)self contentView];
  [v7 setAlpha:v5];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKSecretariatFaceView *)self _contentViewAlphaForEditMode:a4];
  [(NTKSecretariatFaceView *)self _contentViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  v9 = [(NTKSecretariatFaceView *)self timeView];
  [v9 setAlpha:v8];

  v10 = [(NTKSecretariatFaceView *)self contentView];
  [v10 setAlpha:v8];
}

- (double)_contentViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    self->_breathingFraction = a3;
    [(NTKSecretariatFaceView *)self _applyBreathingAndRubberbanding:10];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    self->_rubberbandingFraction = a3;
    [(NTKSecretariatFaceView *)self _applyBreathingAndRubberbanding:a4];
    NTKAlphaForRubberBandingFraction();

    [(NTKSecretariatFaceView *)self setAlpha:?];
  }
}

- (void)_applyBreathingAndRubberbanding
{
  NTKLargeElementScaleForBreathingFraction();
  v4 = v3;
  NTKScaleForRubberBandingFraction();
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, v4 * v5, v4 * v5);
  v12 = v13;
  v6 = [(NTKSecretariatFaceView *)self timeView];
  v11 = v12;
  [v6 setTransform:&v11];

  v10 = v13;
  v7 = [(NTKSecretariatFaceView *)self contentView];
  v11 = v10;
  [v7 setTransform:&v11];

  v9 = v13;
  v8 = [(NTKSecretariatFaceView *)self complicationContainerView];
  v11 = v9;
  [v8 setTransform:&v11];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v7 = [(NTKSecretariatFaceView *)self colorPalette:a3];
    [(NTKSecretariatFaceView *)self _updateViewColorsWithPalette:v7];

    v8 = [(NTKSecretariatFaceView *)self delegate];
    [v8 faceViewDidChangeWantsStatusBarIconShadow];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v9 = [(NTKSecretariatFaceView *)self interpolatedColorPalette:a4];
    [(NTKSecretariatFaceView *)self _updateViewColorsWithPalette:v9];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = NTKSecretariatFaceView;
  [(NTKSecretariatFaceView *)&v15 _applyTransitionFraction:a4 fromComplication:a5 toComplication:v10 slot:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1B3E0;
  v12[3] = &unk_45218;
  v13 = v10;
  v14 = self;
  v11 = v10;
  [(NTKSecretariatFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKSecretariatColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 logo];
  [(UIImageView *)self->_logoImageView setTintColor:v5];

  v6 = [v4 background];
  [(NTKSecretariatBackgroundView *)self->_backgroundView setBackgroundColor:v6];

  [(NTKSecretariatBackgroundView *)self->_backgroundView setPalette:v4];
  v7 = [(NTKSecretariatFaceView *)self timeView];
  v8 = [v4 hourMinuteHandStroke];
  v9 = [v4 hourMinuteHandInlay];
  [v7 applyHourMinuteHandsStrokeColor:v8 fillColor:v9];

  v11 = [(NTKSecretariatFaceView *)self timeView];
  v10 = [v4 secondHand];

  [v11 applySecondHandColor:v10];
}

- (void)_updateComplicationColorForPalette:(id)a3 slot:(id)a4 view:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 complication];
  v10 = [v8 alternateComplication];

  [(NTKSecretariatFaceView *)self setComplicationColor:v9];
  [(NTKSecretariatFaceView *)self setInterpolatedComplicationColor:v9];
  [(NTKSecretariatFaceView *)self setAlternateComplicationColor:v10];
  v12 = v7;
  [v12 updateMonochromeColor];
  if (objc_opt_respondsToSelector())
  {
    v11 = +[UIColor clearColor];
    [v12 setPlatterColor:v11];
  }
}

@end