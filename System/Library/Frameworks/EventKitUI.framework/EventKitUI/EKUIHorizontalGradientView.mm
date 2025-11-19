@interface EKUIHorizontalGradientView
- (EKUIHorizontalGradientView)initWithStartColor:(id)a3 endColor:(id)a4 start:(double)a5 end:(double)a6;
- (void)drawRect:(CGRect)a3;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation EKUIHorizontalGradientView

- (EKUIHorizontalGradientView)initWithStartColor:(id)a3 endColor:(id)a4 start:(double)a5 end:(double)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = EKUIHorizontalGradientView;
  v13 = [(EKUIHorizontalGradientView *)&v18 init];
  if (v13)
  {
    v14 = objc_opt_new();
    gradientLayer = v13->_gradientLayer;
    v13->_gradientLayer = v14;

    objc_storeStrong(&v13->_startColor, a3);
    objc_storeStrong(&v13->_endColor, a4);
    v13->_startPoint = a5;
    v13->_endPoint = a6;
    v16 = [(EKUIHorizontalGradientView *)v13 layer];
    [v16 insertSublayer:v13->_gradientLayer atIndex:0];

    [(EKUIHorizontalGradientView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v13;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = EKUIHorizontalGradientView;
  [(EKUIHorizontalGradientView *)&v4 layoutSublayersOfLayer:a3];
  [(EKUIHorizontalGradientView *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
}

- (void)drawRect:(CGRect)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v5 = [(UIColor *)self->_startColor CGColor];
  if (IsLeftToRight)
  {
    v9[0] = v5;
    v6 = v9;
  }

  else
  {
    v8 = v5;
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