@interface NTKSiderealTimeView
- (CGSize)_hourTickSize;
- (CGSize)_minuteTickSize;
- (CGSize)_secondTickSize;
- (double)_digitalTimeLabelFontSize;
- (double)_minuteTickInset;
- (id)_customDialBackgroundView;
- (void)_didFinishTimeViewSetup;
- (void)_setupAnalogHandsView;
- (void)_setupDigitalTimeViews;
- (void)setBrightnessFilterInputAmount:(double)amount;
- (void)setSaturationFilterInputAmount:(double)amount;
- (void)updateFilters;
@end

@implementation NTKSiderealTimeView

- (void)_setupAnalogHandsView
{
  v3 = [NTKSiderealHandsView alloc];
  device = [(NTKSiderealTimeView *)self device];
  v5 = [(NTKSiderealHandsView *)v3 initForDevice:device];
  [(NTKSiderealTimeView *)self setAnalogHandsView:v5];

  analogHandsView = [(NTKSiderealTimeView *)self analogHandsView];
  [(NTKSiderealTimeView *)self addSubview:analogHandsView];
}

- (void)_setupDigitalTimeViews
{
  v2.receiver = self;
  v2.super_class = NTKSiderealTimeView;
  [(NTKSiderealTimeView *)&v2 _setupDigitalTimeViews];
}

- (void)_didFinishTimeViewSetup
{
  analogTickContainerView = [(NTKSiderealTimeView *)self analogTickContainerView];
  layer = [analogTickContainerView layer];
  [layer setCompositingFilter:kCAFilterPlusL];

  analogTickContainerView2 = [(NTKSiderealTimeView *)self analogTickContainerView];
  layer2 = [analogTickContainerView2 layer];
  [layer2 setAllowsGroupOpacity:1];

  analogTickContainerView3 = [(NTKSiderealTimeView *)self analogTickContainerView];
  layer3 = [analogTickContainerView3 layer];
  [layer3 setAllowsGroupBlending:1];

  analogTickContainerView4 = [(NTKSiderealTimeView *)self analogTickContainerView];
  layer4 = [analogTickContainerView4 layer];
  LODWORD(v10) = 1058642330;
  [layer4 setOpacity:v10];
}

- (id)_customDialBackgroundView
{
  v3 = [UIView alloc];
  [(NTKSiderealTimeView *)self bounds];
  v4 = [v3 initWithFrame:?];
  [v4 setOpaque:0];
  [v4 setBackgroundColor:0];

  return v4;
}

- (void)setBrightnessFilterInputAmount:(double)amount
{
  v5 = [CAFilter filterWithType:kCAFilterColorBrightness];
  brightnessFilter = self->_brightnessFilter;
  self->_brightnessFilter = v5;

  v7 = self->_brightnessFilter;
  v8 = [NSNumber numberWithDouble:amount];
  [(CAFilter *)v7 setValue:v8 forKey:@"inputAmount"];
}

- (void)setSaturationFilterInputAmount:(double)amount
{
  v5 = [CAFilter filterWithType:kCAFilterColorSaturate];
  saturationFilter = self->_saturationFilter;
  self->_saturationFilter = v5;

  v7 = self->_saturationFilter;
  v8 = [NSNumber numberWithDouble:amount];
  [(CAFilter *)v7 setValue:v8 forKey:@"inputAmount"];
}

- (void)updateFilters
{
  blurBackdrop = self->_blurBackdrop;
  brightnessFilter = self->_brightnessFilter;
  v5[0] = self->_gaussianFilter;
  v5[1] = brightnessFilter;
  v5[2] = self->_saturationFilter;
  v4 = [NSArray arrayWithObjects:v5 count:3];
  [(CABackdropLayer *)blurBackdrop setFilters:v4];
}

- (double)_minuteTickInset
{
  device = [(NTKSiderealTimeView *)self device];
  sub_1744(device, v5);
  v3 = v5[0];

  return v3;
}

- (CGSize)_hourTickSize
{
  device = [(NTKSiderealTimeView *)self device];
  sub_1744(device, &v7);
  v3 = *(&v7 + 1);
  v4 = v8;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_minuteTickSize
{
  device = [(NTKSiderealTimeView *)self device];
  sub_1744(device, &v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_secondTickSize
{
  device = [(NTKSiderealTimeView *)self device];
  sub_1744(device, &v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_digitalTimeLabelFontSize
{
  device = [(NTKSiderealTimeView *)self device];
  sub_1744(device, v5);
  v3 = v6;

  return v3;
}

@end