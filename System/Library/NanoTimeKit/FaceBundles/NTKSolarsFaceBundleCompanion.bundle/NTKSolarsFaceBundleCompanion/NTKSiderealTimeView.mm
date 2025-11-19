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
- (void)setBrightnessFilterInputAmount:(double)a3;
- (void)setSaturationFilterInputAmount:(double)a3;
- (void)updateFilters;
@end

@implementation NTKSiderealTimeView

- (void)_setupAnalogHandsView
{
  v3 = [NTKSiderealHandsView alloc];
  v4 = [(NTKSiderealTimeView *)self device];
  v5 = [(NTKSiderealHandsView *)v3 initForDevice:v4];
  [(NTKSiderealTimeView *)self setAnalogHandsView:v5];

  v6 = [(NTKSiderealTimeView *)self analogHandsView];
  [(NTKSiderealTimeView *)self addSubview:v6];
}

- (void)_setupDigitalTimeViews
{
  v2.receiver = self;
  v2.super_class = NTKSiderealTimeView;
  [(NTKSiderealTimeView *)&v2 _setupDigitalTimeViews];
}

- (void)_didFinishTimeViewSetup
{
  v3 = [(NTKSiderealTimeView *)self analogTickContainerView];
  v4 = [v3 layer];
  [v4 setCompositingFilter:kCAFilterPlusL];

  v5 = [(NTKSiderealTimeView *)self analogTickContainerView];
  v6 = [v5 layer];
  [v6 setAllowsGroupOpacity:1];

  v7 = [(NTKSiderealTimeView *)self analogTickContainerView];
  v8 = [v7 layer];
  [v8 setAllowsGroupBlending:1];

  v11 = [(NTKSiderealTimeView *)self analogTickContainerView];
  v9 = [v11 layer];
  LODWORD(v10) = 1058642330;
  [v9 setOpacity:v10];
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

- (void)setBrightnessFilterInputAmount:(double)a3
{
  v5 = [CAFilter filterWithType:kCAFilterColorBrightness];
  brightnessFilter = self->_brightnessFilter;
  self->_brightnessFilter = v5;

  v7 = self->_brightnessFilter;
  v8 = [NSNumber numberWithDouble:a3];
  [(CAFilter *)v7 setValue:v8 forKey:@"inputAmount"];
}

- (void)setSaturationFilterInputAmount:(double)a3
{
  v5 = [CAFilter filterWithType:kCAFilterColorSaturate];
  saturationFilter = self->_saturationFilter;
  self->_saturationFilter = v5;

  v7 = self->_saturationFilter;
  v8 = [NSNumber numberWithDouble:a3];
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
  v2 = [(NTKSiderealTimeView *)self device];
  sub_1744(v2, v5);
  v3 = v5[0];

  return v3;
}

- (CGSize)_hourTickSize
{
  v2 = [(NTKSiderealTimeView *)self device];
  sub_1744(v2, &v7);
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
  v2 = [(NTKSiderealTimeView *)self device];
  sub_1744(v2, &v7);
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
  v2 = [(NTKSiderealTimeView *)self device];
  sub_1744(v2, &v7);
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
  v2 = [(NTKSiderealTimeView *)self device];
  sub_1744(v2, v5);
  v3 = v6;

  return v3;
}

@end