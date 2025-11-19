@interface _MKGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (UIColor)accessibilityColor;
- (_MKGradientView)initWithCoder:(id)a3;
- (_MKGradientView)initWithFrame:(CGRect)a3;
- (void)_setup;
- (void)_transparencyStatusDidChange;
- (void)_update;
- (void)setAccessibilityColor:(id)a3;
- (void)setColors:(id)a3;
- (void)setEndPoint:(CGPoint)a3;
- (void)setLocations:(id)a3;
- (void)setShouldReduceTransparency:(BOOL)a3;
- (void)setStartPoint:(CGPoint)a3;
@end

@implementation _MKGradientView

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_transparencyStatusDidChange
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();

  [(_MKGradientView *)self setShouldReduceTransparency:IsReduceTransparencyEnabled];
}

- (void)_update
{
  v27[2] = *MEMORY[0x1E69E9840];
  if ([(_MKGradientView *)self shouldReduceTransparency])
  {
    v3 = [(_MKGradientView *)self accessibilityColor];
    v27[0] = v3;
    v4 = [(_MKGradientView *)self accessibilityColor];
    v27[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

    v6 = [(_MKGradientView *)self gradientLayer];
    [v6 setLocations:0];
  }

  else
  {
    v5 = [(_MKGradientView *)self colors];
    v6 = [(_MKGradientView *)self locations];
    v7 = [(_MKGradientView *)self gradientLayer];
    [v7 setLocations:v6];
  }

  v8 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        [v8 addObject:{objc_msgSend(v14, "CGColor", v22)}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v15 = [(_MKGradientView *)self gradientLayer];
  [v15 setColors:v8];

  x = self->_startPoint.x;
  y = self->_startPoint.y;
  v18 = [(_MKGradientView *)self gradientLayer];
  [v18 setStartPoint:{x, y}];

  v19 = self->_endPoint.x;
  v20 = self->_endPoint.y;
  v21 = [(_MKGradientView *)self gradientLayer];
  [v21 setEndPoint:{v19, v20}];
}

- (void)setEndPoint:(CGPoint)a3
{
  if (self->_endPoint.x != a3.x || self->_endPoint.y != a3.y)
  {
    self->_endPoint = a3;
    if (![(_MKGradientView *)self shouldReduceTransparency])
    {

      [(_MKGradientView *)self _update];
    }
  }
}

- (void)setStartPoint:(CGPoint)a3
{
  if (self->_startPoint.x != a3.x || self->_startPoint.y != a3.y)
  {
    self->_startPoint = a3;
    if (![(_MKGradientView *)self shouldReduceTransparency])
    {

      [(_MKGradientView *)self _update];
    }
  }
}

- (void)setLocations:(id)a3
{
  v4 = a3;
  v5 = self->_locations;
  v6 = v4;
  if (v6 | v5)
  {
    v11 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [v11 copy];
      locations = self->_locations;
      self->_locations = v8;

      v10 = [(_MKGradientView *)self shouldReduceTransparency];
      v6 = v11;
      if (!v10)
      {
        [(_MKGradientView *)self _update];
        v6 = v11;
      }
    }
  }
}

- (void)setColors:(id)a3
{
  v4 = a3;
  v5 = self->_colors;
  v6 = v4;
  if (v6 | v5)
  {
    v11 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [v11 copy];
      colors = self->_colors;
      self->_colors = v8;

      v10 = [(_MKGradientView *)self shouldReduceTransparency];
      v6 = v11;
      if (!v10)
      {
        [(_MKGradientView *)self _update];
        v6 = v11;
      }
    }
  }
}

- (void)setAccessibilityColor:(id)a3
{
  v4 = a3;
  v5 = self->_accessibilityColor;
  v6 = v4;
  if (v6 | v5)
  {
    v11 = v6;
    v7 = [v5 isEqual:v6];

    v6 = v11;
    if ((v7 & 1) == 0)
    {
      v8 = [v11 copy];
      accessibilityColor = self->_accessibilityColor;
      self->_accessibilityColor = v8;

      v10 = [(_MKGradientView *)self shouldReduceTransparency];
      v6 = v11;
      if (v10)
      {
        [(_MKGradientView *)self _update];
        v6 = v11;
      }
    }
  }
}

- (UIColor)accessibilityColor
{
  accessibilityColor = self->_accessibilityColor;
  if (!accessibilityColor)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    v5 = self->_accessibilityColor;
    self->_accessibilityColor = v4;

    accessibilityColor = self->_accessibilityColor;
  }

  return accessibilityColor;
}

- (void)setShouldReduceTransparency:(BOOL)a3
{
  if (self->_shouldReduceTransparency != a3)
  {
    self->_shouldReduceTransparency = a3;
    [(_MKGradientView *)self _update];
  }
}

- (void)_setup
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__transparencyStatusDidChange name:*MEMORY[0x1E69DD920] object:0];

  self->_shouldReduceTransparency = UIAccessibilityIsReduceTransparencyEnabled();
  v4 = [(_MKGradientView *)self gradientLayer];
  [v4 startPoint];
  self->_startPoint.x = v5;
  self->_startPoint.y = v6;

  v7 = [(_MKGradientView *)self gradientLayer];
  [v7 endPoint];
  self->_endPoint.x = v8;
  self->_endPoint.y = v9;

  [(_MKGradientView *)self _update];
}

- (_MKGradientView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MKGradientView;
  v3 = [(_MKGradientView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_MKGradientView *)v3 _setup];
  }

  return v4;
}

- (_MKGradientView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _MKGradientView;
  v3 = [(_MKGradientView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MKGradientView *)v3 _setup];
  }

  return v4;
}

@end