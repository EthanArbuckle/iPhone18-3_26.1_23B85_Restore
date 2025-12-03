@interface _MKGradientView
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (UIColor)accessibilityColor;
- (_MKGradientView)initWithCoder:(id)coder;
- (_MKGradientView)initWithFrame:(CGRect)frame;
- (void)_setup;
- (void)_transparencyStatusDidChange;
- (void)_update;
- (void)setAccessibilityColor:(id)color;
- (void)setColors:(id)colors;
- (void)setEndPoint:(CGPoint)point;
- (void)setLocations:(id)locations;
- (void)setShouldReduceTransparency:(BOOL)transparency;
- (void)setStartPoint:(CGPoint)point;
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
    accessibilityColor = [(_MKGradientView *)self accessibilityColor];
    v27[0] = accessibilityColor;
    accessibilityColor2 = [(_MKGradientView *)self accessibilityColor];
    v27[1] = accessibilityColor2;
    colors = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];

    gradientLayer = [(_MKGradientView *)self gradientLayer];
    [gradientLayer setLocations:0];
  }

  else
  {
    colors = [(_MKGradientView *)self colors];
    gradientLayer = [(_MKGradientView *)self locations];
    gradientLayer2 = [(_MKGradientView *)self gradientLayer];
    [gradientLayer2 setLocations:gradientLayer];
  }

  v8 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = colors;
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

  gradientLayer3 = [(_MKGradientView *)self gradientLayer];
  [gradientLayer3 setColors:v8];

  x = self->_startPoint.x;
  y = self->_startPoint.y;
  gradientLayer4 = [(_MKGradientView *)self gradientLayer];
  [gradientLayer4 setStartPoint:{x, y}];

  v19 = self->_endPoint.x;
  v20 = self->_endPoint.y;
  gradientLayer5 = [(_MKGradientView *)self gradientLayer];
  [gradientLayer5 setEndPoint:{v19, v20}];
}

- (void)setEndPoint:(CGPoint)point
{
  if (self->_endPoint.x != point.x || self->_endPoint.y != point.y)
  {
    self->_endPoint = point;
    if (![(_MKGradientView *)self shouldReduceTransparency])
    {

      [(_MKGradientView *)self _update];
    }
  }
}

- (void)setStartPoint:(CGPoint)point
{
  if (self->_startPoint.x != point.x || self->_startPoint.y != point.y)
  {
    self->_startPoint = point;
    if (![(_MKGradientView *)self shouldReduceTransparency])
    {

      [(_MKGradientView *)self _update];
    }
  }
}

- (void)setLocations:(id)locations
{
  locationsCopy = locations;
  v5 = self->_locations;
  v6 = locationsCopy;
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

      shouldReduceTransparency = [(_MKGradientView *)self shouldReduceTransparency];
      v6 = v11;
      if (!shouldReduceTransparency)
      {
        [(_MKGradientView *)self _update];
        v6 = v11;
      }
    }
  }
}

- (void)setColors:(id)colors
{
  colorsCopy = colors;
  v5 = self->_colors;
  v6 = colorsCopy;
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

      shouldReduceTransparency = [(_MKGradientView *)self shouldReduceTransparency];
      v6 = v11;
      if (!shouldReduceTransparency)
      {
        [(_MKGradientView *)self _update];
        v6 = v11;
      }
    }
  }
}

- (void)setAccessibilityColor:(id)color
{
  colorCopy = color;
  v5 = self->_accessibilityColor;
  v6 = colorCopy;
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

      shouldReduceTransparency = [(_MKGradientView *)self shouldReduceTransparency];
      v6 = v11;
      if (shouldReduceTransparency)
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v5 = self->_accessibilityColor;
    self->_accessibilityColor = clearColor;

    accessibilityColor = self->_accessibilityColor;
  }

  return accessibilityColor;
}

- (void)setShouldReduceTransparency:(BOOL)transparency
{
  if (self->_shouldReduceTransparency != transparency)
  {
    self->_shouldReduceTransparency = transparency;
    [(_MKGradientView *)self _update];
  }
}

- (void)_setup
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__transparencyStatusDidChange name:*MEMORY[0x1E69DD920] object:0];

  self->_shouldReduceTransparency = UIAccessibilityIsReduceTransparencyEnabled();
  gradientLayer = [(_MKGradientView *)self gradientLayer];
  [gradientLayer startPoint];
  self->_startPoint.x = v5;
  self->_startPoint.y = v6;

  gradientLayer2 = [(_MKGradientView *)self gradientLayer];
  [gradientLayer2 endPoint];
  self->_endPoint.x = v8;
  self->_endPoint.y = v9;

  [(_MKGradientView *)self _update];
}

- (_MKGradientView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _MKGradientView;
  v3 = [(_MKGradientView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_MKGradientView *)v3 _setup];
  }

  return v4;
}

- (_MKGradientView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _MKGradientView;
  v3 = [(_MKGradientView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_MKGradientView *)v3 _setup];
  }

  return v4;
}

@end