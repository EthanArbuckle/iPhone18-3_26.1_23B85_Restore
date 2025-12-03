@interface DADrawableView
- (DADrawableView)initWithFrame:(CGRect)frame rectangleFillColor:(id)color rectangleEdgeColor:(id)edgeColor;
- (void)endDrawing;
- (void)updateDrawing:(CGRect)drawing;
@end

@implementation DADrawableView

- (DADrawableView)initWithFrame:(CGRect)frame rectangleFillColor:(id)color rectangleEdgeColor:(id)edgeColor
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  edgeColorCopy = edgeColor;
  v18.receiver = self;
  v18.super_class = DADrawableView;
  height = [(DADrawableView *)&v18 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_rectangleFillColor, color);
    objc_storeStrong(&v15->_rectangleEdgeColor, edgeColor);
    v15->_isDrawing = 0;
    v16 = +[UIColor clearColor];
    [(DADrawableView *)v15 setBackgroundColor:v16];
  }

  return v15;
}

- (void)updateDrawing:(CGRect)drawing
{
  height = drawing.size.height;
  width = drawing.size.width;
  y = drawing.origin.y;
  x = drawing.origin.x;
  if ([(DADrawableView *)self isDrawing])
  {
    shapeView = [(DADrawableView *)self shapeView];
    [shapeView setFrame:{x, y, width, height}];
  }

  else
  {
    [(DADrawableView *)self setIsDrawing:1];
    shapeView2 = [(DADrawableView *)self shapeView];

    if (!shapeView2)
    {
      v9 = objc_opt_new();
      [(DADrawableView *)self setShapeView:v9];

      rectangleEdgeColor = [(DADrawableView *)self rectangleEdgeColor];
      cGColor = [rectangleEdgeColor CGColor];
      shapeView3 = [(DADrawableView *)self shapeView];
      layer = [shapeView3 layer];
      [layer setBorderColor:cGColor];

      shapeView4 = [(DADrawableView *)self shapeView];
      layer2 = [shapeView4 layer];
      [layer2 setBorderWidth:4.0];

      rectangleFillColor = [(DADrawableView *)self rectangleFillColor];
      shapeView5 = [(DADrawableView *)self shapeView];
      [shapeView5 setBackgroundColor:rectangleFillColor];
    }

    shapeView6 = [(DADrawableView *)self shapeView];
    [shapeView6 setFrame:{x, y, width, height}];

    shapeView = [(DADrawableView *)self shapeView];
    [(DADrawableView *)self addSubview:?];
  }
}

- (void)endDrawing
{
  if ([(DADrawableView *)self isDrawing])
  {
    shapeView = [(DADrawableView *)self shapeView];
    [shapeView removeFromSuperview];

    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    shapeView2 = [(DADrawableView *)self shapeView];
    [shapeView2 setFrame:{CGRectZero.origin.x, y, width, height}];

    [(DADrawableView *)self setIsDrawing:0];
  }
}

@end