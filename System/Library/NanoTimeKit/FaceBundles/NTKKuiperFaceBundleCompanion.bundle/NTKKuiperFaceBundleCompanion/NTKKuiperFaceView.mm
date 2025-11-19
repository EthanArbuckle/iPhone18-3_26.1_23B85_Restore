@interface NTKKuiperFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKKuiperFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyColorPalette:(id)a3;
- (void)_applyComplicationFontToView:(id)a3;
- (void)_applyCurrentColorPalette;
- (void)_applyDataMode;
- (void)_applyDensityTransitionFraction:(double)a3 fromDensity:(unint64_t)a4 toDensity:(unint64_t)a5;
- (void)_applyDial:(unint64_t)a3;
- (void)_applyDialTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPrimaryComplicationColor:(id)a3 secondaryComplicationColor:(id)a4;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_loadTypographicSizeConfiguration;
- (void)_unloadSnapshotContentViews;
- (void)setDelegate:(id)a3;
- (void)updateComplicationColors;
@end

@implementation NTKKuiperFaceView

- (NTKKuiperFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKKuiperFaceView;
  v9 = [(NTKKuiperFaceView *)&v13 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:v8];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKKuiperFaceView *)v9 setComplicationFactory:v9->_faceViewComplicationFactory];
  }

  return v9;
}

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v4 setDelegate:a3];
  [(NTKKuiperFaceView *)self _loadTypographicSizeConfiguration];
}

- (void)_loadSnapshotContentViews
{
  v15.receiver = self;
  v15.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v15 _loadSnapshotContentViews];
  if (!self->_backgroundView)
  {
    v3 = [(NTKKuiperFaceView *)self timeView];
    v4 = [v3 secondHandView];
    v5 = [v4 configuration];

    [v5 handLength];
    v7 = v6;
    v8 = [NTKKuiperBackgroundView alloc];
    v9 = [(NTKKuiperFaceView *)self device];
    v10 = [(NTKKuiperBackgroundView *)v8 initWithDevice:v9 dialRadius:v7];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v10;

    v12 = [(NTKKuiperFaceView *)self contentView];
    [v12 addSubview:self->_backgroundView];
  }

  if (!self->_typographicSizeProvider)
  {
    v13 = objc_alloc_init(NTKKuiperTypographicSizeProvider);
    typographicSizeProvider = self->_typographicSizeProvider;
    self->_typographicSizeProvider = v13;

    [(NTKKuiperTypographicSizeProvider *)self->_typographicSizeProvider setDelegate:self];
  }

  [(NTKKuiperFaceView *)self _loadTypographicSizeConfiguration];
}

- (void)_loadTypographicSizeConfiguration
{
  v3 = [(NTKKuiperFaceView *)self delegate];
  if (v3)
  {
    v7 = v3;
    v4 = [(NTKKuiperFaceView *)self delegate];
    v5 = [v4 faceViewDidRequestCustomDataForKey:@"typographicStyleFraction"];

    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [NTKKuiperTypographicSizeProvider typographicStyleFractionForKey:v5];
    }

    else
    {
      +[NTKKuiperTypographicSizeProvider randomTypographicStyleFraction];
    }

    [(NTKKuiperTypographicSizeProvider *)self->_typographicSizeProvider resetWithTypographicStyleFraction:?];
    storedTypographicSizeFractionKey = self->_storedTypographicSizeFractionKey;
    self->_storedTypographicSizeFractionKey = v5;

    v3 = v7;
  }
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v5 _unloadSnapshotContentViews];
  [(NTKKuiperBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(NTKKuiperTypographicSizeProvider *)self->_typographicSizeProvider setDelegate:0];
  typographicSizeProvider = self->_typographicSizeProvider;
  self->_typographicSizeProvider = 0;
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  self->_rubberbandingFraction = a3;
  [(NTKKuiperFaceView *)self _applyBreathingAndRubberbanding:a4];
  NTKAlphaForRubberBandingFraction();

  [(NTKKuiperFaceView *)self setAlpha:?];
}

- (void)_applyBreathingAndRubberbanding
{
  breathingFraction = self->_breathingFraction;
  NTKLargeElementScaleForBreathingFraction();
  v5 = v4;
  rubberbandingFraction = self->_rubberbandingFraction;
  NTKScaleForRubberBandingFraction();
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v5 * v7, v5 * v7);
  v14 = v15;
  v8 = [(NTKKuiperFaceView *)self timeView];
  v13 = v14;
  [v8 setTransform:&v13];

  v12 = v15;
  v9 = [(NTKKuiperFaceView *)self contentView];
  v13 = v12;
  [v9 setTransform:&v13];

  v11 = v15;
  v10 = [(NTKKuiperFaceView *)self complicationContainerView];
  v13 = v11;
  [v10 setTransform:&v13];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v10 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  switch(a4)
  {
    case 10:
      [(NTKKuiperFaceView *)self _applyCurrentColorPalette];
      break;
    case 15:
      -[NTKKuiperFaceView _applyDial:](self, "_applyDial:", [v8 dial]);
      v9 = [(NTKKuiperFaceView *)self delegate];
      [v9 faceViewDidChangeWantsStatusBarIconShadow];

      break;
    case 11:
      -[NTKKuiperFaceView _applyDensity:](self, "_applyDensity:", [v8 density]);
      break;
  }
}

- (void)_applyDial:(unint64_t)a3
{
  self->_dial = a3;
  v5 = [(NTKKuiperFaceView *)self colorPalette];
  [v5 setDial:a3];
  [(NTKKuiperFaceView *)self _applyColorPalette:v5];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v21 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  switch(a6)
  {
    case 10:
      v20 = [(NTKKuiperFaceView *)self interpolatedColorPalette];
      [(NTKKuiperFaceView *)self _applyColorPalette:v20];

      break;
    case 15:
      v17 = v13;
      v18 = [v12 dial];
      v19 = [v17 dial];

      [(NTKKuiperFaceView *)self _applyDialTransitionFraction:v18 fromDial:v19 toDial:a3];
      break;
    case 11:
      v14 = v13;
      v15 = [v12 density];
      v16 = [v14 density];

      [(NTKKuiperFaceView *)self _applyDensityTransitionFraction:v15 fromDensity:v16 toDensity:a3];
      break;
  }
}

- (void)_applyDensityTransitionFraction:(double)a3 fromDensity:(unint64_t)a4 toDensity:(unint64_t)a5
{
  v10 = [(NTKKuiperBackgroundView *)self->_backgroundView digitRotationAnimation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 fromDensity] != a4 || objc_msgSend(v10, "toDensity") != a5)
  {
    v9 = [[NTKKuiperFontRotationAnimation alloc] initWithFromDensity:a4 toDensity:a5];

    [(NTKKuiperBackgroundView *)self->_backgroundView setDigitRotationAnimation:v9];
    v10 = v9;
  }

  [(NTKKuiperBackgroundView *)self->_backgroundView setDigitRotationFraction:a3];
  [(NTKKuiperBackgroundView *)self->_backgroundView applyFont];
}

- (void)_applyDialTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5
{
  v12 = [(NTKKuiperFaceView *)self colorPalette];
  v9 = [v12 copy];
  [v9 setDial:a4];
  v10 = [v12 copy];
  [v10 setDial:a5];
  v11 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v9 toPalette:v10];
  [v11 setTransitionFraction:a3];
  [(NTKKuiperFaceView *)self _applyColorPalette:v11];
}

- (void)_applyCurrentColorPalette
{
  v3 = [(NTKKuiperFaceView *)self colorPalette];
  [(NTKKuiperFaceView *)self _applyColorPalette:v3];
}

- (void)_applyColorPalette:(id)a3
{
  v4 = a3;
  v18 = [(NTKKuiperFaceView *)self timeView];
  v5 = [v4 hourMinuteHandInlay];
  v6 = [v4 hourMinuteHandStroke];
  v7 = [v18 hourHandView];
  [v7 setColor:v6];

  v8 = [v18 hourHandView];
  [v8 setInlayColor:v5];

  v9 = [v18 minuteHandView];
  [v9 setColor:v6];

  v10 = [v18 minuteHandView];
  [v10 setInlayColor:v5];

  v11 = [v4 handDot];
  v12 = [v18 secondHandView];
  [v12 setHandDotColor:v11];

  v13 = [v4 secondHand];
  v14 = [v18 secondHandView];
  [v14 setColor:v13];

  [(NTKKuiperBackgroundView *)self->_backgroundView setColorPalette:v4];
  v15 = [v4 complicationBackground];
  [(NTKKuiperFaceView *)self setComplicationBackgroundColor:v15];

  [(NTKKuiperBackgroundView *)self->_backgroundView applyFont];
  v16 = [v4 complicationPrimary];
  v17 = [v4 complicationSecondary];

  [(NTKKuiperFaceView *)self _applyPrimaryComplicationColor:v16 secondaryComplicationColor:v17];
}

- (void)_applyPrimaryComplicationColor:(id)a3 secondaryComplicationColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NTKKuiperFaceView *)self setComplicationColor:v7];
  [(NTKKuiperFaceView *)self setInterpolatedComplicationColor:v7];

  [(NTKKuiperFaceView *)self setAlternateComplicationColor:v6];

  [(NTKKuiperFaceView *)self updateComplicationColors];
}

- (void)updateComplicationColors
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_30D4;
  v2[3] = &unk_10588;
  v2[4] = self;
  [(NTKKuiperFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v2];
}

- (id)createFaceColorPalette
{
  v3 = [[NTKKuiperFaceColorPalette alloc] initWithFaceClass:objc_opt_class()];
  [(NTKKuiperFaceColorPalette *)v3 setDial:self->_dial];

  return v3;
}

- (void)_applyDataMode
{
  v2.receiver = self;
  v2.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v2 _applyDataMode];
}

- (void)_loadLayoutRules
{
  v3 = [(NTKKuiperFaceView *)self device];
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  [v3 screenBounds];
  v6 = v5;
  [v3 screenScale];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v7 * v6];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_33A8;
  v19[3] = &unk_105D8;
  v19[4] = self;
  v8 = objc_retainBlock(v19);
  NTKDefaultCornerComplicationScaleForFullscreenOpaqueFaceForDevice();
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeScale(&v18, v9, v9);
  v10 = v8[2];
  v17 = v18;
  v10(v8, &v17, 0);
  v11 = v8[2];
  v17 = v18;
  v11(v8, &v17, 1);
  v12 = v8[2];
  v15 = *&CGAffineTransformIdentity.c;
  *&v17.a = *&CGAffineTransformIdentity.a;
  v16 = *&v17.a;
  *&v17.c = v15;
  *&v17.tx = *&CGAffineTransformIdentity.tx;
  v14 = *&v17.tx;
  v12(v8, &v17, 3);
  v13 = v8[2];
  *&v17.a = v16;
  *&v17.c = v15;
  *&v17.tx = v14;
  v13(v8, &v17, 2);
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v6 forSlot:a4 faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }

  [(NTKKuiperFaceView *)self _applyComplicationFontToView:v6];
}

- (void)_applyComplicationFontToView:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 display];
    [(NTKKuiperFaceView *)self _applyComplicationFontToView:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setFontStyle:1];
    }
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_11108;
  if (a3 != 15)
  {
    v4 = 0;
  }

  if (a3 == 11)
  {
    return &off_110F0;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 | 4) == 0xF)
  {
    if (qword_16D18 != -1)
    {
      sub_7940();
    }

    v10 = qword_16D10;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_3AC8;
    v45[3] = &unk_10600;
    v48 = a4;
    v43 = v8;
    v46 = v8;
    v42 = v9;
    v11 = v9;
    v47 = v11;
    v12 = objc_retainBlock(v45);
    v13 = (v12[2])(v12, 11);
    v14 = (v12[2])(v12, 15);
    v15 = [v11 objectForKeyedSubscript:&off_10E00];
    v16 = [(NTKKuiperTypographicSizeProvider *)self->_typographicSizeProvider currentTypographicStyleKey];
    v17 = v10;
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu-%lu-%lu-%@-%@", a4, [v13 density], objc_msgSend(v14, "dial"), v15, v16);
    v19 = [v17 objectForKey:v18];
    if (!v19)
    {
      v39 = v12;
      v41 = v17;
      v20 = [(NTKKuiperFaceView *)self device];
      v21 = [[NTKKuiperFaceView alloc] initWithFaceStyle:44 forDevice:v20 clientIdentifier:0];
      [(NTKKuiperFaceView *)v21 _loadSnapshotContentViews];
      v40 = v13;
      [(NTKKuiperFaceView *)v21 setOption:v13 forCustomEditMode:11 slot:0];
      [(NTKKuiperFaceView *)v21 setOption:v14 forCustomEditMode:15 slot:0];
      [(NTKKuiperFaceView *)v21 setOption:v15 forCustomEditMode:10 slot:0];
      v22 = v20;
      [(NTKKuiperFaceView *)v21 typographicSizeProviderUpdateNumeralSizes:self->_typographicSizeProvider];
      v23 = NTKIdealizedDate();
      [(NTKKuiperFaceView *)v21 setOverrideDate:v23 duration:0.0];

      [v22 screenBounds];
      [(NTKKuiperFaceView *)v21 setFrame:?];
      if (a4 == 11)
      {
        v24 = v21->_backgroundView;
        v25 = +[UIColor blackColor];
        [(NTKKuiperBackgroundView *)v24 setOverrideBackgroundColor:v25];
        [(NTKKuiperBackgroundView *)v24 dialFrame];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v50.width = v31;
        v50.height = v33;
        UIGraphicsBeginImageContextWithOptions(v50, 0, 0.0);
        CurrentContext = UIGraphicsGetCurrentContext();
        CGContextTranslateCTM(CurrentContext, -v27, -v29);
      }

      else
      {
        [(NTKKuiperFaceView *)v21 bounds];
        v51.width = v35;
        v51.height = v36;
        UIGraphicsBeginImageContextWithOptions(v51, 0, 0.0);
      }

      v37 = [(NTKKuiperFaceView *)v21 layer];
      [v37 renderInContext:UIGraphicsGetCurrentContext()];

      v19 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [v41 setObject:v19 forKey:v18];

      v17 = v41;
      v12 = v39;
      v13 = v40;
    }

    v9 = v42;
    v8 = v43;
  }

  else
  {
    v44.receiver = self;
    v44.super_class = NTKKuiperFaceView;
    v19 = [(NTKKuiperFaceView *)&v44 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v19;
}

@end