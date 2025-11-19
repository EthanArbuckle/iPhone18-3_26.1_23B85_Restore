@interface NTKGlobetrotterTimeView
- (CGSize)_hourTickSize;
- (CGSize)_secondTickSize;
- (CLLocationCoordinate2D)_northPoleCoordinate;
- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NTKGlobetrotterTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 numberSystem:(unint64_t)a5 andDevice:(id)a6 timeZoneHourOffset:(int64_t)a7;
- (double)_minuteTickInset;
- (id)_customDialBackgroundView;
- (id)_digitalLabelFont;
- (void)_applyColorToAnalogHands;
- (void)_applyColorToDigitalLabelAndTicks;
- (void)_setupAnalogHandsView;
- (void)applyDataMode:(int64_t)a3;
- (void)applyTransitionFraction:(double)a3 fromNumeralOption:(id)a4 toNumeralOption:(id)a5;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)astronomyVistaViewWillDisplay:(id)a3 forTime:(double)a4;
- (void)cleanupAfterEditing;
- (void)prepareForEditing;
- (void)setNumberSystem:(unint64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setPalette:(id)a3;
@end

@implementation NTKGlobetrotterTimeView

- (NTKGlobetrotterTimeView)initWithFrame:(CGRect)a3 style:(unint64_t)a4 numberSystem:(unint64_t)a5 andDevice:(id)a6 timeZoneHourOffset:(int64_t)a7
{
  v15.receiver = self;
  v15.super_class = NTKGlobetrotterTimeView;
  v9 = [(NTKGlobetrotterTimeView *)&v15 initWithFrame:a4 style:a6 andDevice:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    [(NTKGlobetrotterTimeView *)v9 setTimeZoneHourOffset:a7 animated:0];
    v11 = +[UIColor blackColor];
    v12 = [(NTKGlobetrotterTimeView *)v10 analogHandsView];
    v13 = [v12 secondHandView];
    [v13 setHandDotColor:v11];

    v10->_numberSystem = a5;
  }

  return v10;
}

- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides
{
  digitalTimeLabelFontScaleFactorForNumberSystemOverrides = self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
  if (!digitalTimeLabelFontScaleFactorForNumberSystemOverrides)
  {
    self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides = &off_11220;

    digitalTimeLabelFontScaleFactorForNumberSystemOverrides = self->_digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
  }

  return digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  [(NTKGlobetrotterTimeView *)self _applyColorToAnalogHands];
  [(NTKGlobetrotterTimeView *)self _applyColorToDigitalLabelAndTicks];
  v6 = [v5 globe];
  v7 = [v5 globeBlend];
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  [v6 getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
  [v7 getRed:&v17 green:0 blue:0 alpha:0];
  v8 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];

  v9 = [v8 spheroidOfType:3];

  v10.f64[0] = v16;
  v10.f64[1] = v15;
  v11.f64[0] = v13 * v14;
  v11.f64[1] = v13;
  [v9 setColorize:{*vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v10, v13)), v11).i64}];
  *&v12 = v17;
  [v9 setAnimatedFloat:11 forKey:COERCE_DOUBLE(v12)];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v8.receiver = self;
  v8.super_class = NTKGlobetrotterTimeView;
  [(NTKGlobetrotterTimeView *)&v8 setOverrideDate:v7 duration:a4];
  if (self->_overrideDate != v7 && ![(NSDate *)v7 isEqualToDate:?])
  {
    objc_storeStrong(&self->_overrideDate, a3);
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:a4 > 0.0 adjustEarthRotation:0];
  }
}

- (void)applyDataMode:(int64_t)a3
{
  v3 = self;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        return;
      }

      goto LABEL_7;
    }

    v5 = 0;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        return;
      }

LABEL_7:
      astronomyVistaView = self->_astronomyVistaView;

      [(NUNIAstronomyVistaView *)astronomyVistaView stopAnimation];
      return;
    }

    [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];
    self = v3;
    v5 = 1;
  }

  [(NTKGlobetrotterTimeView *)self setUserInteractionEnabled:v5];
}

- (void)prepareForEditing
{
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:0];
  astronomyVistaView = self->_astronomyVistaView;

  [(NUNIAstronomyVistaView *)astronomyVistaView startAnimation];
}

- (void)cleanupAfterEditing
{
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:3];
  astronomyVistaView = self->_astronomyVistaView;

  [(NUNIAstronomyVistaView *)astronomyVistaView stopAnimation];
}

- (void)_applyColorToAnalogHands
{
  v2.receiver = self;
  v2.super_class = NTKGlobetrotterTimeView;
  [(NTKGlobetrotterTimeView *)&v2 _applyColorToAnalogHands];
}

- (void)_applyColorToDigitalLabelAndTicks
{
  v2.receiver = self;
  v2.super_class = NTKGlobetrotterTimeView;
  [(NTKGlobetrotterTimeView *)&v2 _applyColorToDigitalLabelAndTicks];
}

- (id)_customDialBackgroundView
{
  v3 = [(NTKGlobetrotterTimeView *)self device];
  v4 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:v3];

  [v4 setTextureSuffix:@"globe"];
  [v4 setRendererStyle:1];
  v5 = [NUNIAstronomyVistaView alloc];
  [(NTKGlobetrotterTimeView *)self bounds];
  v6 = [v5 initWithFrame:v4 configuration:?];
  astronomyVistaView = self->_astronomyVistaView;
  self->_astronomyVistaView = v6;

  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setOpaque:0];
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1848;
  v16 = &unk_10470;
  objc_copyWeak(&v17, &location);
  v8 = objc_retainBlock(&v13);
  v9 = [NUNIScene alloc];
  v10 = [v9 initWithSphereoids:8 projectionType:1 currentDateBlock:{v8, v13, v14, v15, v16}];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setScene:v10];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView applyVista:0 transitionStyle:0];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setObserver:self];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:3];
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];
  v11 = self->_astronomyVistaView;

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v11;
}

- (CLLocationCoordinate2D)_northPoleCoordinate
{
  v4 = CLLocationCoordinate2DMake(89.9, self->_cityCoordinate.longitude);
  longitude = v4.longitude;
  latitude = v4.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_setupAnalogHandsView
{
  v3 = [NTKGlobetrotterAnalogHandsView alloc];
  v4 = [(NTKGlobetrotterTimeView *)self device];
  v5 = [(NTKGlobetrotterAnalogHandsView *)v3 initForDevice:v4];
  [(NTKGlobetrotterTimeView *)self setAnalogHandsView:v5];

  v6 = [(NTKGlobetrotterTimeView *)self analogHandsView];
  [(NTKGlobetrotterTimeView *)self addSubview:v6];
}

- (double)_minuteTickInset
{
  v2 = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(v2, v5);
  v3 = v5[0];

  return v3;
}

- (CGSize)_hourTickSize
{
  v2 = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(v2, &v7);
  v3 = *(&v7 + 1);
  v4 = v8;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_secondTickSize
{
  v2 = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(v2, &v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_digitalLabelFont
{
  v3 = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(v3, &v16);
  v4 = v17;

  v5 = [(NTKGlobetrotterTimeView *)self device];
  v6 = NTKShowIndicScriptNumerals();

  if (v6)
  {
    if (self->_numberSystem != -1)
    {
      v7 = [(NTKGlobetrotterTimeView *)self digitalTimeLabelFontScaleFactorForNumberSystemOverrides];
      v8 = [v7 objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      v9 = [(NTKGlobetrotterTimeView *)self device];
      CLKRoundForDevice();
      v4 = v10;
    }

    v11 = [NTKSFCompactFont numericSoftFontOfSize:v4 weight:UIFontWeightMedium];
  }

  else
  {
    v12 = [(NTKGlobetrotterTimeView *)self device];
    sub_2218(v12, &v14);
    v11 = [CLKFont compactSoftFontOfSize:v15 weight:UIFontWeightMedium];
  }

  return v11;
}

- (void)setNumberSystem:(unint64_t)a3
{
  self->_numberSystem = a3;
  v5 = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
  [v5 setForcedNumberSystem:a3];

  [(NTKGlobetrotterTimeView *)self _refreshDigitalTimeLabel];
  v6 = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
  [v6 setNeedsLayout];
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (a4 != a5)
  {
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v7;
    v29 = v5;
    v30 = v6;
    v12 = [(NTKGlobetrotterTimeView *)self analogContainerView];
    v13 = [(NTKGlobetrotterTimeView *)self analogHandsView];
    v14 = [(NTKGlobetrotterTimeView *)self digitalContainerView];
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v16 = v15;
    CLKInterpolateBetweenFloatsClipped();
    v18 = v17;
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, v16, v16);
    v23 = v24;
    [v12 setTransform:&v23];
    [v12 setAlpha:v18];
    v23 = v24;
    [v13 setTransform:&v23];
    [v13 setAlpha:v18];
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v20 = v19;
    CLKInterpolateBetweenFloatsClipped();
    v22 = v21;
    CGAffineTransformMakeScale(&v23, v20, v20);
    v24 = v23;
    [v14 setTransform:&v23];
    [v14 setAlpha:v22];
  }
}

- (void)applyTransitionFraction:(double)a3 fromNumeralOption:(id)a4 toNumeralOption:(id)a5
{
  v8 = a5;
  [a4 numeralOption];
  v9 = CLKLocaleNumberSystemFromNumeralOption();
  [v8 numeralOption];

  v10 = CLKLocaleNumberSystemFromNumeralOption();
  if (v9 == v10)
  {

    [(NTKGlobetrotterTimeView *)self setNumberSystem:v9];
  }

  else
  {
    if (a3 >= 0.5)
    {
      v13 = v10;
      CLKMapFractionIntoRange();
      v12 = v14;
      v9 = v13;
    }

    else
    {
      CLKMapFractionIntoRange();
      v12 = v11;
    }

    CLKMapFractionIntoRange();
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeScale(&v20, v15, v15);
    [(NTKGlobetrotterTimeView *)self setNumberSystem:v9];
    v16 = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
    [v16 setAlpha:v12];

    v19 = v20;
    v17 = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
    v18 = v19;
    [v17 setTransform:&v18];
  }
}

- (void)astronomyVistaViewWillDisplay:(id)a3 forTime:(double)a4
{
  v8 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene:a3];
  v5 = [v8 spheroidOfType:3];
  v6 = [v8 isAnimating:v8 forKeys:346];
  if ((v6 | [v8 isAnimating:v5 forKeys:1024]))
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:v7];
}

@end