@interface NTKAnalogSecondsGraphicCircularView
+ (id)_newWorldClockViewForDevice:(id)device;
- (CLKMonochromeFilterProvider)filterProvider;
- (double)tintedFraction;
- (id)initFullColorImageViewWithDevice:(id)device;
- (id)tintedPlatterColor;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)pauseLiveFullColorImageView;
- (void)resumeLiveFullColorImageView;
- (void)setFilterProvider:(id)provider;
- (void)setTintedFraction:(double)fraction;
- (void)setTintedPlatterColor:(id)color;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKAnalogSecondsGraphicCircularView

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NTKAnalogSecondsGraphicCircularView;
  [(NTKAnalogSecondsGraphicCircularView *)&v9 layoutSubviews];
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [(NTKAnalogSecondsGraphicCircularView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (CGRectIsNull(v10))
  {
    goto LABEL_4;
  }

  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  if (CGRectIsEmpty(v11) || (v12.origin.x = x, v12.origin.y = y, v12.size.width = width, v12.size.height = height, CGRectIsInfinite(v12)))
  {
LABEL_4:
    [worldClockCircularView setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    [worldClockCircularView setBounds:{x, y, width, height}];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    [worldClockCircularView setCenter:{MidX, CGRectGetMidY(v14)}];
  }
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKAnalogSecondsGraphicCircularView;
  v5 = [(NTKAnalogSecondsGraphicCircularView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [objc_opt_class() _newWorldClockViewForDevice:deviceCopy];
    worldClockCircularView = v5->_worldClockCircularView;
    v5->_worldClockCircularView = v6;

    [(NTKAnalogSecondsGraphicCircularView *)v5 addSubview:v5->_worldClockCircularView];
  }

  return v5;
}

- (void)pauseLiveFullColorImageView
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView pauseLiveFullColorImageView];
}

- (void)resumeLiveFullColorImageView
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView resumeLiveFullColorImageView];
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView configureWithImageProvider:providerCopy reason:reason];
}

- (void)setFilterProvider:(id)provider
{
  providerCopy = provider;
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView setFilterProvider:providerCopy];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView updateMonochromeColor];
}

- (double)tintedFraction
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView tintedFraction];
  v4 = v3;

  return v4;
}

- (void)setTintedFraction:(double)fraction
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView setTintedFraction:fraction];
}

- (id)tintedPlatterColor
{
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  tintedPlatterColor = [worldClockCircularView tintedPlatterColor];

  return tintedPlatterColor;
}

- (void)setTintedPlatterColor:(id)color
{
  colorCopy = color;
  worldClockCircularView = [(NTKAnalogSecondsGraphicCircularView *)self worldClockCircularView];
  [worldClockCircularView setTintedPlatterColor:colorCopy];
}

+ (id)_newWorldClockViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockGraphicCircularViewSecondsOnly alloc] initWithDevice:deviceCopy smallTickCount:5];

  return v4;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end