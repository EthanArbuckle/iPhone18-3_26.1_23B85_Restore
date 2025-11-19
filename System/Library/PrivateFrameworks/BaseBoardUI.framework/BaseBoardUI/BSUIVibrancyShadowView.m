@interface BSUIVibrancyShadowView
+ (CGPoint)defaultShadowEndPoint;
+ (CGPoint)defaultShadowStartPoint;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BSUIVibrancyShadowView)initWithFrame:(CGRect)a3;
- (CGPoint)shadowEndPoint;
- (CGPoint)shadowStartPoint;
- (id)_defaultGradientColors;
- (void)setShadowEndPoint:(CGPoint)a3;
- (void)setShadowStartPoint:(CGPoint)a3;
- (void)updateFilters;
@end

@implementation BSUIVibrancyShadowView

- (BSUIVibrancyShadowView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BSUIVibrancyShadowView;
  v3 = [(BSUIVibrancyView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(BSUIVibrancyShadowView *)v3 gradientLayer];
    [v5 setType:*MEMORY[0x1E6979DA0]];
    [objc_opt_class() defaultShadowStartPoint];
    [v5 setStartPoint:?];
    [objc_opt_class() defaultShadowEndPoint];
    [v5 setEndPoint:?];
    v6 = [(BSUIVibrancyShadowView *)v4 _defaultGradientColors];
    [v5 setColors:v6];

    [v5 setNoiseScale:25.0];
  }

  return v4;
}

- (CGPoint)shadowStartPoint
{
  v2 = [(BSUIVibrancyShadowView *)self gradientLayer];
  [v2 startPoint];
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
  v2 = [(BSUIVibrancyShadowView *)self gradientLayer];
  [v2 endPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setShadowStartPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(BSUIVibrancyShadowView *)self gradientLayer];
  [v5 setStartPoint:{x, y}];
}

- (void)setShadowEndPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(BSUIVibrancyShadowView *)self gradientLayer];
  [v5 setEndPoint:{x, y}];
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"filters"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BSUIVibrancyShadowView;
    v5 = [(BSUIVibrancyShadowView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)updateFilters
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(BSUIVibrancyView *)self configuration];
  if ([v3 effectType] == 3 || +[BSUIVibrancyView isDisabled](BSUIVibrancyEffectView, "isDisabled"))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = [v3 shadowValues];
    values = self->_values;
    self->_values = v6;

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
    v4 = [(BSUIVibrancyShadowView *)self _defaultGradientColors];
  }

  v11 = [(BSUIVibrancyShadowView *)self gradientLayer];
  [v11 setColors:v4];
  _setLayerFilters(v11, v5);
}

- (id)_defaultGradientColors
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] redColor];
  v3 = [v2 colorWithAlphaComponent:0.0];
  v6[0] = [v3 CGColor];
  v6[1] = [v2 CGColor];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end