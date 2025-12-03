@interface BSUIVibrancyShadowView
+ (CGPoint)defaultShadowEndPoint;
+ (CGPoint)defaultShadowStartPoint;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BSUIVibrancyShadowView)initWithFrame:(CGRect)frame;
- (CGPoint)shadowEndPoint;
- (CGPoint)shadowStartPoint;
- (id)_defaultGradientColors;
- (void)setShadowEndPoint:(CGPoint)point;
- (void)setShadowStartPoint:(CGPoint)point;
- (void)updateFilters;
@end

@implementation BSUIVibrancyShadowView

- (BSUIVibrancyShadowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = BSUIVibrancyShadowView;
  v3 = [(BSUIVibrancyView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    gradientLayer = [(BSUIVibrancyShadowView *)v3 gradientLayer];
    [gradientLayer setType:*MEMORY[0x1E6979DA0]];
    [objc_opt_class() defaultShadowStartPoint];
    [gradientLayer setStartPoint:?];
    [objc_opt_class() defaultShadowEndPoint];
    [gradientLayer setEndPoint:?];
    _defaultGradientColors = [(BSUIVibrancyShadowView *)v4 _defaultGradientColors];
    [gradientLayer setColors:_defaultGradientColors];

    [gradientLayer setNoiseScale:25.0];
  }

  return v4;
}

- (CGPoint)shadowStartPoint
{
  gradientLayer = [(BSUIVibrancyShadowView *)self gradientLayer];
  [gradientLayer startPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)shadowEndPoint
{
  gradientLayer = [(BSUIVibrancyShadowView *)self gradientLayer];
  [gradientLayer endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setShadowStartPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(BSUIVibrancyShadowView *)self gradientLayer];
  [gradientLayer setStartPoint:{x, y}];
}

- (void)setShadowEndPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  gradientLayer = [(BSUIVibrancyShadowView *)self gradientLayer];
  [gradientLayer setEndPoint:{x, y}];
}

+ (CGPoint)defaultShadowStartPoint
{
  v2 = 0.5;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

+ (CGPoint)defaultShadowEndPoint
{
  v2 = 0.5;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"filters"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BSUIVibrancyShadowView;
    v5 = [(BSUIVibrancyShadowView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)updateFilters
{
  v18[1] = *MEMORY[0x1E69E9840];
  configuration = [(BSUIVibrancyView *)self configuration];
  if ([configuration effectType] == 3 || +[BSUIVibrancyView isDisabled](BSUIVibrancyEffectView, "isDisabled"))
  {
    _defaultGradientColors = 0;
    v5 = 0;
  }

  else
  {
    shadowValues = [configuration shadowValues];
    values = self->_values;
    self->_values = shadowValues;

    v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D78]];
    [v8 setName:@"vibrantColor"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v9 = self->_values;
    if (v9)
    {
      [(BSUIVibrancyShadowValues *)v9 vibrantColorMatrix];
    }

    v12[2] = v15;
    v12[3] = v16;
    v12[4] = v17;
    v12[0] = v13;
    v12[1] = v14;
    v10 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v12];
    [v8 setValue:v10 forKey:*MEMORY[0x1E6979AC0]];

    v18[0] = v8;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    _defaultGradientColors = [(BSUIVibrancyShadowView *)self _defaultGradientColors];
  }

  gradientLayer = [(BSUIVibrancyShadowView *)self gradientLayer];
  [gradientLayer setColors:_defaultGradientColors];
  _setLayerFilters(gradientLayer, v5);
}

- (id)_defaultGradientColors
{
  v6[2] = *MEMORY[0x1E69E9840];
  redColor = [MEMORY[0x1E69DC888] redColor];
  v3 = [redColor colorWithAlphaComponent:0.0];
  v6[0] = [v3 CGColor];
  v6[1] = [redColor CGColor];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end