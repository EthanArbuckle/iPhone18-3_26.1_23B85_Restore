@interface NTKSecretariatFaceView
- (BOOL)_wantsStatusBarIconShadow;
- (double)_contentViewAlphaForEditMode:(int64_t)mode;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadBackgroundView;
- (void)_loadCornerOverlayView;
- (void)_loadLogoImageView;
- (void)_loadSnapshotContentViews;
- (void)_unloadBackgroundView;
- (void)_unloadCornerOverlayView;
- (void)_unloadLogoImageView;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationColorForPalette:(id)palette slot:(id)slot view:(id)view;
- (void)_updateViewColorsWithPalette:(id)palette;
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
  faceTapControl = [(NTKSecretariatFaceView *)self faceTapControl];
  [faceTapControl removeFromSuperview];

  contentView = [(NTKSecretariatFaceView *)self contentView];
  faceTapControl2 = [(NTKSecretariatFaceView *)self faceTapControl];
  [contentView addSubview:faceTapControl2];
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
  colorPalette = [(NTKSecretariatFaceView *)self colorPalette];
  isBlackColor = [colorPalette isBlackColor];

  return isBlackColor ^ 1;
}

- (void)_loadBackgroundView
{
  v3 = [NTKSecretariatBackgroundView alloc];
  contentView = [(NTKSecretariatFaceView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKSecretariatFaceView *)self device];
  v14 = [(NTKSecretariatBackgroundView *)v3 initWithFrame:device device:0 inactive:v6, v8, v10, v12];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v14;

  contentView2 = [(NTKSecretariatFaceView *)self contentView];
  [contentView2 addSubview:self->_backgroundView];
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
  contentView = [(NTKSecretariatFaceView *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKSecretariatFaceView *)self device];
  v14 = [v3 initWithFrame:device forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v14;

  contentView2 = [(NTKSecretariatFaceView *)self contentView];
  [contentView2 addSubview:self->_cornerOverlayView];
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

  contentView = [(NTKSecretariatFaceView *)self contentView];
  [contentView addSubview:self->_logoImageView];
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  colorPalette = [(NTKSecretariatFaceView *)self colorPalette];
  [(NTKSecretariatFaceView *)self _updateComplicationColorForPalette:colorPalette slot:slotCopy view:viewCopy];
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKSecretariatFaceView *)self _contentViewAlphaForEditMode:mode];
  v5 = v4;
  timeView = [(NTKSecretariatFaceView *)self timeView];
  [timeView setAlpha:v5];

  contentView = [(NTKSecretariatFaceView *)self contentView];
  [contentView setAlpha:v5];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKSecretariatFaceView *)self _contentViewAlphaForEditMode:mode];
  [(NTKSecretariatFaceView *)self _contentViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  timeView = [(NTKSecretariatFaceView *)self timeView];
  [timeView setAlpha:v8];

  contentView = [(NTKSecretariatFaceView *)self contentView];
  [contentView setAlpha:v8];
}

- (double)_contentViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    self->_breathingFraction = fraction;
    [(NTKSecretariatFaceView *)self _applyBreathingAndRubberbanding:10];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    self->_rubberbandingFraction = fraction;
    [(NTKSecretariatFaceView *)self _applyBreathingAndRubberbanding:mode];
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
  timeView = [(NTKSecretariatFaceView *)self timeView];
  v11 = v12;
  [timeView setTransform:&v11];

  v10 = v13;
  contentView = [(NTKSecretariatFaceView *)self contentView];
  v11 = v10;
  [contentView setTransform:&v11];

  v9 = v13;
  complicationContainerView = [(NTKSecretariatFaceView *)self complicationContainerView];
  v11 = v9;
  [complicationContainerView setTransform:&v11];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v7 = [(NTKSecretariatFaceView *)self colorPalette:option];
    [(NTKSecretariatFaceView *)self _updateViewColorsWithPalette:v7];

    delegate = [(NTKSecretariatFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v9 = [(NTKSecretariatFaceView *)self interpolatedColorPalette:option];
    [(NTKSecretariatFaceView *)self _updateViewColorsWithPalette:v9];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  slotCopy = slot;
  v15.receiver = self;
  v15.super_class = NTKSecretariatFaceView;
  [(NTKSecretariatFaceView *)&v15 _applyTransitionFraction:complication fromComplication:toComplication toComplication:slotCopy slot:fraction];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1B3E0;
  v12[3] = &unk_45218;
  v13 = slotCopy;
  selfCopy = self;
  v11 = slotCopy;
  [(NTKSecretariatFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKSecretariatColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  logo = [paletteCopy logo];
  [(UIImageView *)self->_logoImageView setTintColor:logo];

  background = [paletteCopy background];
  [(NTKSecretariatBackgroundView *)self->_backgroundView setBackgroundColor:background];

  [(NTKSecretariatBackgroundView *)self->_backgroundView setPalette:paletteCopy];
  timeView = [(NTKSecretariatFaceView *)self timeView];
  hourMinuteHandStroke = [paletteCopy hourMinuteHandStroke];
  hourMinuteHandInlay = [paletteCopy hourMinuteHandInlay];
  [timeView applyHourMinuteHandsStrokeColor:hourMinuteHandStroke fillColor:hourMinuteHandInlay];

  timeView2 = [(NTKSecretariatFaceView *)self timeView];
  secondHand = [paletteCopy secondHand];

  [timeView2 applySecondHandColor:secondHand];
}

- (void)_updateComplicationColorForPalette:(id)palette slot:(id)slot view:(id)view
{
  viewCopy = view;
  paletteCopy = palette;
  complication = [paletteCopy complication];
  alternateComplication = [paletteCopy alternateComplication];

  [(NTKSecretariatFaceView *)self setComplicationColor:complication];
  [(NTKSecretariatFaceView *)self setInterpolatedComplicationColor:complication];
  [(NTKSecretariatFaceView *)self setAlternateComplicationColor:alternateComplication];
  v12 = viewCopy;
  [v12 updateMonochromeColor];
  if (objc_opt_respondsToSelector())
  {
    v11 = +[UIColor clearColor];
    [v12 setPlatterColor:v11];
  }
}

@end