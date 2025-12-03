@interface NTKKuiperFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKKuiperFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyColorPalette:(id)palette;
- (void)_applyComplicationFontToView:(id)view;
- (void)_applyCurrentColorPalette;
- (void)_applyDataMode;
- (void)_applyDensityTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity;
- (void)_applyDial:(unint64_t)dial;
- (void)_applyDialTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPrimaryComplicationColor:(id)color secondaryComplicationColor:(id)complicationColor;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_loadTypographicSizeConfiguration;
- (void)_unloadSnapshotContentViews;
- (void)setDelegate:(id)delegate;
- (void)updateComplicationColors;
@end

@implementation NTKKuiperFaceView

- (NTKKuiperFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKKuiperFaceView;
  v9 = [(NTKKuiperFaceView *)&v13 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKKuiperFaceView *)v9 setComplicationFactory:v9->_faceViewComplicationFactory];
  }

  return v9;
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v4 setDelegate:delegate];
  [(NTKKuiperFaceView *)self _loadTypographicSizeConfiguration];
}

- (void)_loadSnapshotContentViews
{
  v15.receiver = self;
  v15.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v15 _loadSnapshotContentViews];
  if (!self->_backgroundView)
  {
    timeView = [(NTKKuiperFaceView *)self timeView];
    secondHandView = [timeView secondHandView];
    configuration = [secondHandView configuration];

    [configuration handLength];
    v7 = v6;
    v8 = [NTKKuiperBackgroundView alloc];
    device = [(NTKKuiperFaceView *)self device];
    v10 = [(NTKKuiperBackgroundView *)v8 initWithDevice:device dialRadius:v7];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v10;

    contentView = [(NTKKuiperFaceView *)self contentView];
    [contentView addSubview:self->_backgroundView];
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
  delegate = [(NTKKuiperFaceView *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(NTKKuiperFaceView *)self delegate];
    v5 = [delegate2 faceViewDidRequestCustomDataForKey:@"typographicStyleFraction"];

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

    delegate = v7;
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

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  self->_rubberbandingFraction = fraction;
  [(NTKKuiperFaceView *)self _applyBreathingAndRubberbanding:mode];
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
  timeView = [(NTKKuiperFaceView *)self timeView];
  v13 = v14;
  [timeView setTransform:&v13];

  v12 = v15;
  contentView = [(NTKKuiperFaceView *)self contentView];
  v13 = v12;
  [contentView setTransform:&v13];

  v11 = v15;
  complicationContainerView = [(NTKKuiperFaceView *)self complicationContainerView];
  v13 = v11;
  [complicationContainerView setTransform:&v13];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  switch(mode)
  {
    case 10:
      [(NTKKuiperFaceView *)self _applyCurrentColorPalette];
      break;
    case 15:
      -[NTKKuiperFaceView _applyDial:](self, "_applyDial:", [optionCopy dial]);
      delegate = [(NTKKuiperFaceView *)self delegate];
      [delegate faceViewDidChangeWantsStatusBarIconShadow];

      break;
    case 11:
      -[NTKKuiperFaceView _applyDensity:](self, "_applyDensity:", [optionCopy density]);
      break;
  }
}

- (void)_applyDial:(unint64_t)dial
{
  self->_dial = dial;
  colorPalette = [(NTKKuiperFaceView *)self colorPalette];
  [colorPalette setDial:dial];
  [(NTKKuiperFaceView *)self _applyColorPalette:colorPalette];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v21.receiver = self;
  v21.super_class = NTKKuiperFaceView;
  [(NTKKuiperFaceView *)&v21 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKKuiperFaceView *)self interpolatedColorPalette];
      [(NTKKuiperFaceView *)self _applyColorPalette:interpolatedColorPalette];

      break;
    case 15:
      v17 = toOptionCopy;
      dial = [optionCopy dial];
      dial2 = [v17 dial];

      [(NTKKuiperFaceView *)self _applyDialTransitionFraction:dial fromDial:dial2 toDial:fraction];
      break;
    case 11:
      v14 = toOptionCopy;
      density = [optionCopy density];
      density2 = [v14 density];

      [(NTKKuiperFaceView *)self _applyDensityTransitionFraction:density fromDensity:density2 toDensity:fraction];
      break;
  }
}

- (void)_applyDensityTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity
{
  digitRotationAnimation = [(NTKKuiperBackgroundView *)self->_backgroundView digitRotationAnimation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [digitRotationAnimation fromDensity] != density || objc_msgSend(digitRotationAnimation, "toDensity") != toDensity)
  {
    v9 = [[NTKKuiperFontRotationAnimation alloc] initWithFromDensity:density toDensity:toDensity];

    [(NTKKuiperBackgroundView *)self->_backgroundView setDigitRotationAnimation:v9];
    digitRotationAnimation = v9;
  }

  [(NTKKuiperBackgroundView *)self->_backgroundView setDigitRotationFraction:fraction];
  [(NTKKuiperBackgroundView *)self->_backgroundView applyFont];
}

- (void)_applyDialTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  colorPalette = [(NTKKuiperFaceView *)self colorPalette];
  v9 = [colorPalette copy];
  [v9 setDial:dial];
  v10 = [colorPalette copy];
  [v10 setDial:toDial];
  v11 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v9 toPalette:v10];
  [v11 setTransitionFraction:fraction];
  [(NTKKuiperFaceView *)self _applyColorPalette:v11];
}

- (void)_applyCurrentColorPalette
{
  colorPalette = [(NTKKuiperFaceView *)self colorPalette];
  [(NTKKuiperFaceView *)self _applyColorPalette:colorPalette];
}

- (void)_applyColorPalette:(id)palette
{
  paletteCopy = palette;
  timeView = [(NTKKuiperFaceView *)self timeView];
  hourMinuteHandInlay = [paletteCopy hourMinuteHandInlay];
  hourMinuteHandStroke = [paletteCopy hourMinuteHandStroke];
  hourHandView = [timeView hourHandView];
  [hourHandView setColor:hourMinuteHandStroke];

  hourHandView2 = [timeView hourHandView];
  [hourHandView2 setInlayColor:hourMinuteHandInlay];

  minuteHandView = [timeView minuteHandView];
  [minuteHandView setColor:hourMinuteHandStroke];

  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setInlayColor:hourMinuteHandInlay];

  handDot = [paletteCopy handDot];
  secondHandView = [timeView secondHandView];
  [secondHandView setHandDotColor:handDot];

  secondHand = [paletteCopy secondHand];
  secondHandView2 = [timeView secondHandView];
  [secondHandView2 setColor:secondHand];

  [(NTKKuiperBackgroundView *)self->_backgroundView setColorPalette:paletteCopy];
  complicationBackground = [paletteCopy complicationBackground];
  [(NTKKuiperFaceView *)self setComplicationBackgroundColor:complicationBackground];

  [(NTKKuiperBackgroundView *)self->_backgroundView applyFont];
  complicationPrimary = [paletteCopy complicationPrimary];
  complicationSecondary = [paletteCopy complicationSecondary];

  [(NTKKuiperFaceView *)self _applyPrimaryComplicationColor:complicationPrimary secondaryComplicationColor:complicationSecondary];
}

- (void)_applyPrimaryComplicationColor:(id)color secondaryComplicationColor:(id)complicationColor
{
  complicationColorCopy = complicationColor;
  colorCopy = color;
  [(NTKKuiperFaceView *)self setComplicationColor:colorCopy];
  [(NTKKuiperFaceView *)self setInterpolatedComplicationColor:colorCopy];

  [(NTKKuiperFaceView *)self setAlternateComplicationColor:complicationColorCopy];

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
  device = [(NTKKuiperFaceView *)self device];
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  [device screenBounds];
  v6 = v5;
  [device screenScale];
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slot faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
  }

  [(NTKKuiperFaceView *)self _applyComplicationFontToView:viewCopy];
}

- (void)_applyComplicationFontToView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    display = [viewCopy display];
    [(NTKKuiperFaceView *)self _applyComplicationFontToView:display];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewCopy setFontStyle:1];
    }
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_11108;
  if (options != 15)
  {
    v4 = 0;
  }

  if (options == 11)
  {
    return &off_110F0;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if ((mode | 4) == 0xF)
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
    modeCopy = mode;
    v43 = optionCopy;
    v46 = optionCopy;
    v42 = optionsCopy;
    v11 = optionsCopy;
    v47 = v11;
    v12 = objc_retainBlock(v45);
    v13 = (v12[2])(v12, 11);
    v14 = (v12[2])(v12, 15);
    v15 = [v11 objectForKeyedSubscript:&off_10E00];
    currentTypographicStyleKey = [(NTKKuiperTypographicSizeProvider *)self->_typographicSizeProvider currentTypographicStyleKey];
    v17 = v10;
    v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu-%lu-%lu-%@-%@", mode, [v13 density], objc_msgSend(v14, "dial"), v15, currentTypographicStyleKey);
    v19 = [v17 objectForKey:v18];
    if (!v19)
    {
      v39 = v12;
      v41 = v17;
      device = [(NTKKuiperFaceView *)self device];
      v21 = [[NTKKuiperFaceView alloc] initWithFaceStyle:44 forDevice:device clientIdentifier:0];
      [(NTKKuiperFaceView *)v21 _loadSnapshotContentViews];
      v40 = v13;
      [(NTKKuiperFaceView *)v21 setOption:v13 forCustomEditMode:11 slot:0];
      [(NTKKuiperFaceView *)v21 setOption:v14 forCustomEditMode:15 slot:0];
      [(NTKKuiperFaceView *)v21 setOption:v15 forCustomEditMode:10 slot:0];
      v22 = device;
      [(NTKKuiperFaceView *)v21 typographicSizeProviderUpdateNumeralSizes:self->_typographicSizeProvider];
      v23 = NTKIdealizedDate();
      [(NTKKuiperFaceView *)v21 setOverrideDate:v23 duration:0.0];

      [v22 screenBounds];
      [(NTKKuiperFaceView *)v21 setFrame:?];
      if (mode == 11)
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

      layer = [(NTKKuiperFaceView *)v21 layer];
      [layer renderInContext:UIGraphicsGetCurrentContext()];

      v19 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [v41 setObject:v19 forKey:v18];

      v17 = v41;
      v12 = v39;
      v13 = v40;
    }

    optionsCopy = v42;
    optionCopy = v43;
  }

  else
  {
    v44.receiver = self;
    v44.super_class = NTKKuiperFaceView;
    v19 = [(NTKKuiperFaceView *)&v44 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v19;
}

@end