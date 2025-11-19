@interface NWCHighlightedMapLocationView
- (NWCHighlightedMapLocationView)initWithFrame:(CGRect)a3 fillColor:(id)a4 andStrokeWidth:(double)a5;
- (void)drawRect:(CGRect)a3;
- (void)setFillColor:(id)a3;
@end

@implementation NWCHighlightedMapLocationView

- (NWCHighlightedMapLocationView)initWithFrame:(CGRect)a3 fillColor:(id)a4 andStrokeWidth:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = NWCHighlightedMapLocationView;
  v13 = [(NWCMapLocationView *)&v16 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fillColor, a4);
    v14->_strokeWidth = a5;
    [(NWCHighlightedMapLocationView *)v14 setOpaque:0];
  }

  return v14;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(NWCHighlightedMapLocationView *)self strokeWidth];
  v9 = v8 * 0.5;
  [(NWCHighlightedMapLocationView *)self strokeWidth];
  v11 = v10 * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v21 = CGRectInset(v20, v9, v11);
  v12 = v21.origin.x;
  v13 = v21.origin.y;
  v14 = v21.size.width;
  v15 = v21.size.height;
  CurrentContext = UIGraphicsGetCurrentContext();
  v17 = [(NWCHighlightedMapLocationView *)self fillColor];
  CGContextSetFillColorWithColor(CurrentContext, [v17 CGColor]);

  CGContextSetRGBStrokeColor(CurrentContext, 1.0, 1.0, 1.0, 1.0);
  [(NWCHighlightedMapLocationView *)self strokeWidth];
  CGContextSetLineWidth(CurrentContext, v18);
  v22.origin.x = v12;
  v22.origin.y = v13;
  v22.size.width = v14;
  v22.size.height = v15;
  CGContextFillEllipseInRect(CurrentContext, v22);
  v23.origin.x = v12;
  v23.origin.y = v13;
  v23.size.width = v14;
  v23.size.height = v15;
  CGContextStrokeEllipseInRect(CurrentContext, v23);

  CGContextFillPath(CurrentContext);
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, a3);
    [(NWCHighlightedMapLocationView *)self setNeedsDisplay];
  }
}

@end