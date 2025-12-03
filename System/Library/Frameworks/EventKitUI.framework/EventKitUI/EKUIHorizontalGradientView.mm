@interface EKUIHorizontalGradientView
- (EKUIHorizontalGradientView)initWithStartColor:(id)color endColor:(id)endColor start:(double)start end:(double)end;
- (void)drawRect:(CGRect)rect;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation EKUIHorizontalGradientView

- (EKUIHorizontalGradientView)initWithStartColor:(id)color endColor:(id)endColor start:(double)start end:(double)end
{
  colorCopy = color;
  endColorCopy = endColor;
  v18.receiver = self;
  v18.super_class = EKUIHorizontalGradientView;
  v13 = [(EKUIHorizontalGradientView *)&v18 init];
  if (v13)
  {
    v14 = objc_opt_new();
    gradientLayer = v13->_gradientLayer;
    v13->_gradientLayer = v14;

    objc_storeStrong(&v13->_startColor, color);
    objc_storeStrong(&v13->_endColor, endColor);
    v13->_startPoint = start;
    v13->_endPoint = end;
    layer = [(EKUIHorizontalGradientView *)v13 layer];
    [layer insertSublayer:v13->_gradientLayer atIndex:0];

    [(EKUIHorizontalGradientView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v13;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = EKUIHorizontalGradientView;
  [(EKUIHorizontalGradientView *)&v4 layoutSublayersOfLayer:layer];
  [(EKUIHorizontalGradientView *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
}

- (void)drawRect:(CGRect)rect
{
  v9[2] = *MEMORY[0x1E69E9840];
  IsLeftToRight = CalInterfaceIsLeftToRight();
  cGColor = [(UIColor *)self->_startColor CGColor];
  if (IsLeftToRight)
  {
    v9[0] = cGColor;
    v6 = v9;
  }

  else
  {
    v8 = cGColor;
    v6 = &v8;
  }

  v6[1] = [(UIColor *)self->_endColor CGColor];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(CAGradientLayer *)self->_gradientLayer setColors:v7];

  [(CAGradientLayer *)self->_gradientLayer setStartPoint:self->_startPoint, 0.0];
  [(CAGradientLayer *)self->_gradientLayer setEndPoint:self->_endPoint, 0.0];
  [(EKUIHorizontalGradientView *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
}

@end