@interface NTKAnalogTimeGraphicCircularView
+ (id)_newWorldClockViewForDevice:(id)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (double)tintedFraction;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (id)tintedPlatterColor;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)pauseLiveFullColorImageView;
- (void)resumeLiveFullColorImageView;
- (void)setFilterProvider:(id)a3;
- (void)setTintedFraction:(double)a3;
- (void)setTintedPlatterColor:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKAnalogTimeGraphicCircularView

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NTKAnalogTimeGraphicCircularView;
  [(NTKAnalogTimeGraphicCircularView *)&v9 layoutSubviews];
  v3 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [(NTKAnalogTimeGraphicCircularView *)self bounds];
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
    [v3 setBounds:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    [v3 setBounds:{x, y, width, height}];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    [v3 setCenter:{MidX, CGRectGetMidY(v14)}];
  }
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKAnalogTimeGraphicCircularView;
  v5 = [(NTKAnalogTimeGraphicCircularView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [objc_opt_class() _newWorldClockViewForDevice:v4];
    worldClockCircularView = v5->_worldClockCircularView;
    v5->_worldClockCircularView = v6;

    [(NTKAnalogTimeGraphicCircularView *)v5 addSubview:v5->_worldClockCircularView];
  }

  return v5;
}

- (void)pauseLiveFullColorImageView
{
  v2 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v2 pauseLiveFullColorImageView];
}

- (void)resumeLiveFullColorImageView
{
  v2 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v2 resumeLiveFullColorImageView];
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v7 configureWithImageProvider:v6 reason:a4];
}

- (void)setFilterProvider:(id)a3
{
  v4 = a3;
  v5 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v5 setFilterProvider:v4];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v4 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v4 transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v2 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v2 updateMonochromeColor];
}

- (double)tintedFraction
{
  v2 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v2 tintedFraction];
  v4 = v3;

  return v4;
}

- (void)setTintedFraction:(double)a3
{
  v4 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v4 setTintedFraction:a3];
}

- (id)tintedPlatterColor
{
  v2 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  v3 = [v2 tintedPlatterColor];

  return v3;
}

- (void)setTintedPlatterColor:(id)a3
{
  v4 = a3;
  v5 = [(NTKAnalogTimeGraphicCircularView *)self worldClockCircularView];
  [v5 setTintedPlatterColor:v4];
}

+ (id)_newWorldClockViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWorldClockGraphicCircularViewSeconds alloc] initWithDevice:v3 smallTickCount:5];

  return v4;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end