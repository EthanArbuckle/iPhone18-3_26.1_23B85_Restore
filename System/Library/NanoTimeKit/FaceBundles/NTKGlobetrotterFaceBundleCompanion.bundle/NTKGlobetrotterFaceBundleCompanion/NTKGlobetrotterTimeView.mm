@interface NTKGlobetrotterTimeView
- (CGSize)_hourTickSize;
- (CGSize)_secondTickSize;
- (CLLocationCoordinate2D)_northPoleCoordinate;
- (NSArray)digitalTimeLabelFontScaleFactorForNumberSystemOverrides;
- (NTKGlobetrotterTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style numberSystem:(unint64_t)system andDevice:(id)device timeZoneHourOffset:(int64_t)offset;
- (double)_minuteTickInset;
- (id)_customDialBackgroundView;
- (id)_digitalLabelFont;
- (void)_applyColorToAnalogHands;
- (void)_applyColorToDigitalLabelAndTicks;
- (void)_setupAnalogHandsView;
- (void)applyDataMode:(int64_t)mode;
- (void)applyTransitionFraction:(double)fraction fromNumeralOption:(id)option toNumeralOption:(id)numeralOption;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)astronomyVistaViewWillDisplay:(id)display forTime:(double)time;
- (void)cleanupAfterEditing;
- (void)prepareForEditing;
- (void)setNumberSystem:(unint64_t)system;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setPalette:(id)palette;
@end

@implementation NTKGlobetrotterTimeView

- (NTKGlobetrotterTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style numberSystem:(unint64_t)system andDevice:(id)device timeZoneHourOffset:(int64_t)offset
{
  v15.receiver = self;
  v15.super_class = NTKGlobetrotterTimeView;
  v9 = [(NTKGlobetrotterTimeView *)&v15 initWithFrame:style style:device andDevice:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (v9)
  {
    [(NTKGlobetrotterTimeView *)v9 setTimeZoneHourOffset:offset animated:0];
    v11 = +[UIColor blackColor];
    analogHandsView = [(NTKGlobetrotterTimeView *)v10 analogHandsView];
    secondHandView = [analogHandsView secondHandView];
    [secondHandView setHandDotColor:v11];

    v10->_numberSystem = system;
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

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKGlobetrotterTimeView *)self _applyColorToAnalogHands];
  [(NTKGlobetrotterTimeView *)self _applyColorToDigitalLabelAndTicks];
  globe = [paletteCopy globe];
  globeBlend = [paletteCopy globeBlend];
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  [globe getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
  [globeBlend getRed:&v17 green:0 blue:0 alpha:0];
  scene = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene];

  v9 = [scene spheroidOfType:3];

  v10.f64[0] = v16;
  v10.f64[1] = v15;
  v11.f64[0] = v13 * v14;
  v11.f64[1] = v13;
  [v9 setColorize:{*vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v10, v13)), v11).i64}];
  *&v12 = v17;
  [v9 setAnimatedFloat:11 forKey:COERCE_DOUBLE(v12)];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = NTKGlobetrotterTimeView;
  [(NTKGlobetrotterTimeView *)&v8 setOverrideDate:dateCopy duration:duration];
  if (self->_overrideDate != dateCopy && ![(NSDate *)dateCopy isEqualToDate:?])
  {
    objc_storeStrong(&self->_overrideDate, date);
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:duration > 0.0 adjustEarthRotation:0];
  }
}

- (void)applyDataMode:(int64_t)mode
{
  selfCopy = self;
  if (mode > 2)
  {
    if (mode != 3)
    {
      if (mode != 4)
      {
        return;
      }

      goto LABEL_7;
    }

    v5 = 0;
  }

  else
  {
    if (mode != 1)
    {
      if (mode != 2)
      {
        return;
      }

LABEL_7:
      astronomyVistaView = self->_astronomyVistaView;

      [(NUNIAstronomyVistaView *)astronomyVistaView stopAnimation];
      return;
    }

    [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];
    self = selfCopy;
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
  device = [(NTKGlobetrotterTimeView *)self device];
  v4 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:device];

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
  device = [(NTKGlobetrotterTimeView *)self device];
  v5 = [(NTKGlobetrotterAnalogHandsView *)v3 initForDevice:device];
  [(NTKGlobetrotterTimeView *)self setAnalogHandsView:v5];

  analogHandsView = [(NTKGlobetrotterTimeView *)self analogHandsView];
  [(NTKGlobetrotterTimeView *)self addSubview:analogHandsView];
}

- (double)_minuteTickInset
{
  device = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(device, v5);
  v3 = v5[0];

  return v3;
}

- (CGSize)_hourTickSize
{
  device = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(device, &v7);
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
  device = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(device, &v7);
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
  device = [(NTKGlobetrotterTimeView *)self device];
  sub_2218(device, &v16);
  v4 = v17;

  device2 = [(NTKGlobetrotterTimeView *)self device];
  v6 = NTKShowIndicScriptNumerals();

  if (v6)
  {
    if (self->_numberSystem != -1)
    {
      digitalTimeLabelFontScaleFactorForNumberSystemOverrides = [(NTKGlobetrotterTimeView *)self digitalTimeLabelFontScaleFactorForNumberSystemOverrides];
      v8 = [digitalTimeLabelFontScaleFactorForNumberSystemOverrides objectAtIndexedSubscript:self->_numberSystem];
      [v8 doubleValue];

      device3 = [(NTKGlobetrotterTimeView *)self device];
      CLKRoundForDevice();
      v4 = v10;
    }

    v11 = [NTKSFCompactFont numericSoftFontOfSize:v4 weight:UIFontWeightMedium];
  }

  else
  {
    device4 = [(NTKGlobetrotterTimeView *)self device];
    sub_2218(device4, &v14);
    v11 = [CLKFont compactSoftFontOfSize:v15 weight:UIFontWeightMedium];
  }

  return v11;
}

- (void)setNumberSystem:(unint64_t)system
{
  self->_numberSystem = system;
  digitalTimeLabel = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
  [digitalTimeLabel setForcedNumberSystem:system];

  [(NTKGlobetrotterTimeView *)self _refreshDigitalTimeLabel];
  digitalTimeLabel2 = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
  [digitalTimeLabel2 setNeedsLayout];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (style != toStyle)
  {
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v7;
    v29 = v5;
    v30 = v6;
    analogContainerView = [(NTKGlobetrotterTimeView *)self analogContainerView];
    analogHandsView = [(NTKGlobetrotterTimeView *)self analogHandsView];
    digitalContainerView = [(NTKGlobetrotterTimeView *)self digitalContainerView];
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v16 = v15;
    CLKInterpolateBetweenFloatsClipped();
    v18 = v17;
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, v16, v16);
    v23 = v24;
    [analogContainerView setTransform:&v23];
    [analogContainerView setAlpha:v18];
    v23 = v24;
    [analogHandsView setTransform:&v23];
    [analogHandsView setAlpha:v18];
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v20 = v19;
    CLKInterpolateBetweenFloatsClipped();
    v22 = v21;
    CGAffineTransformMakeScale(&v23, v20, v20);
    v24 = v23;
    [digitalContainerView setTransform:&v23];
    [digitalContainerView setAlpha:v22];
  }
}

- (void)applyTransitionFraction:(double)fraction fromNumeralOption:(id)option toNumeralOption:(id)numeralOption
{
  numeralOptionCopy = numeralOption;
  [option numeralOption];
  v9 = CLKLocaleNumberSystemFromNumeralOption();
  [numeralOptionCopy numeralOption];

  v10 = CLKLocaleNumberSystemFromNumeralOption();
  if (v9 == v10)
  {

    [(NTKGlobetrotterTimeView *)self setNumberSystem:v9];
  }

  else
  {
    if (fraction >= 0.5)
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
    digitalTimeLabel = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
    [digitalTimeLabel setAlpha:v12];

    v19 = v20;
    digitalTimeLabel2 = [(NTKGlobetrotterTimeView *)self digitalTimeLabel];
    v18 = v19;
    [digitalTimeLabel2 setTransform:&v18];
  }
}

- (void)astronomyVistaViewWillDisplay:(id)display forTime:(double)time
{
  v8 = [(NUNIAstronomyVistaView *)self->_astronomyVistaView scene:display];
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