@interface DADrawableView
- (DADrawableView)initWithFrame:(CGRect)a3 rectangleFillColor:(id)a4 rectangleEdgeColor:(id)a5;
- (void)endDrawing;
- (void)updateDrawing:(CGRect)a3;
@end

@implementation DADrawableView

- (DADrawableView)initWithFrame:(CGRect)a3 rectangleFillColor:(id)a4 rectangleEdgeColor:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = DADrawableView;
  v14 = [(DADrawableView *)&v18 initWithFrame:x, y, width, height];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rectangleFillColor, a4);
    objc_storeStrong(&v15->_rectangleEdgeColor, a5);
    v15->_isDrawing = 0;
    v16 = +[UIColor clearColor];
    [(DADrawableView *)v15 setBackgroundColor:v16];
  }

  return v15;
}

- (void)updateDrawing:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(DADrawableView *)self isDrawing])
  {
    v19 = [(DADrawableView *)self shapeView];
    [v19 setFrame:{x, y, width, height}];
  }

  else
  {
    [(DADrawableView *)self setIsDrawing:1];
    v8 = [(DADrawableView *)self shapeView];

    if (!v8)
    {
      v9 = objc_opt_new();
      [(DADrawableView *)self setShapeView:v9];

      v10 = [(DADrawableView *)self rectangleEdgeColor];
      v11 = [v10 CGColor];
      v12 = [(DADrawableView *)self shapeView];
      v13 = [v12 layer];
      [v13 setBorderColor:v11];

      v14 = [(DADrawableView *)self shapeView];
      v15 = [v14 layer];
      [v15 setBorderWidth:4.0];

      v16 = [(DADrawableView *)self rectangleFillColor];
      v17 = [(DADrawableView *)self shapeView];
      [v17 setBackgroundColor:v16];
    }

    v18 = [(DADrawableView *)self shapeView];
    [v18 setFrame:{x, y, width, height}];

    v19 = [(DADrawableView *)self shapeView];
    [(DADrawableView *)self addSubview:?];
  }
}

- (void)endDrawing
{
  if ([(DADrawableView *)self isDrawing])
  {
    v3 = [(DADrawableView *)self shapeView];
    [v3 removeFromSuperview];

    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [(DADrawableView *)self shapeView];
    [v7 setFrame:{CGRectZero.origin.x, y, width, height}];

    [(DADrawableView *)self setIsDrawing:0];
  }
}

@end