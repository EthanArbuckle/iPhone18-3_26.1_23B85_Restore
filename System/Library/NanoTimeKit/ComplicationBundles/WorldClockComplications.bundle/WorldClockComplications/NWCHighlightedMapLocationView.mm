@interface NWCHighlightedMapLocationView
- (NWCHighlightedMapLocationView)initWithFrame:(CGRect)frame fillColor:(id)color andStrokeWidth:(double)width;
- (void)drawRect:(CGRect)rect;
- (void)setFillColor:(id)color;
@end

@implementation NWCHighlightedMapLocationView

- (NWCHighlightedMapLocationView)initWithFrame:(CGRect)frame fillColor:(id)color andStrokeWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v16.receiver = self;
  v16.super_class = NWCHighlightedMapLocationView;
  height = [(NWCMapLocationView *)&v16 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_fillColor, color);
    v14->_strokeWidth = width;
    [(NWCHighlightedMapLocationView *)v14 setOpaque:0];
  }

  return v14;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  fillColor = [(NWCHighlightedMapLocationView *)self fillColor];
  CGContextSetFillColorWithColor(CurrentContext, [fillColor CGColor]);

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

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_fillColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, color);
    [(NWCHighlightedMapLocationView *)self setNeedsDisplay];
  }
}

@end