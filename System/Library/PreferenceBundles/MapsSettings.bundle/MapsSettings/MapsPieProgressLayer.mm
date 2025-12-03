@interface MapsPieProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (MapsPieProgressLayer)init;
- (MapsPieProgressLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation MapsPieProgressLayer

- (MapsPieProgressLayer)init
{
  v6.receiver = self;
  v6.super_class = MapsPieProgressLayer;
  v2 = [(MapsPieProgressLayer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MapsPieProgressLayer *)v2 setNeedsDisplayOnBoundsChange:1];
    [(MapsPieProgressLayer *)v3 setAllowsEdgeAntialiasing:1];
    v4 = +[UIColor systemBlueColor];
    [(MapsPieProgressLayer *)v3 setProgressColor:v4];

    [(MapsPieProgressLayer *)v3 setBorderLineWidth:1.0];
  }

  return v3;
}

- (MapsPieProgressLayer)initWithLayer:(id)layer
{
  layerCopy = layer;
  v11.receiver = self;
  v11.super_class = MapsPieProgressLayer;
  v5 = [(MapsPieProgressLayer *)&v11 initWithLayer:layerCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = layerCopy;
      -[MapsPieProgressLayer setNeedsDisplayOnBoundsChange:](v5, "setNeedsDisplayOnBoundsChange:", [v6 needsDisplayOnBoundsChange]);
      -[MapsPieProgressLayer setAllowsEdgeAntialiasing:](v5, "setAllowsEdgeAntialiasing:", [v6 allowsEdgeAntialiasing]);
      progressColor = [v6 progressColor];
      [(MapsPieProgressLayer *)v5 setProgressColor:progressColor];

      [v6 borderLineWidth];
      [(MapsPieProgressLayer *)v5 setBorderLineWidth:?];
      [v6 progress];
      v9 = v8;

      [(MapsPieProgressLayer *)v5 setProgress:v9];
    }
  }

  return v5;
}

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"borderLineWidth"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MapsPieProgressLayer;
    v5 = objc_msgSendSuper2(&v7, "needsDisplayForKey:", keyCopy);
  }

  return v5;
}

- (void)drawInContext:(CGContext *)context
{
  [(MapsPieProgressLayer *)self bounds];
  v17 = CGRectInset(v16, self->_borderLineWidth, self->_borderLineWidth);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (v17.size.width >= v17.size.height)
  {
    v9 = v17.size.height;
  }

  else
  {
    v9 = v17.size.width;
  }

  v10 = (v9 - self->_borderLineWidth * 0.5 + 1.0) * 0.5;
  v11 = x;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  CGContextSetLineCap(context, kCGLineCapButt);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, self->_borderLineWidth);
  CGContextBeginPath(context);
  CGContextAddArc(context, MidX, MidY, v10, -1.57079633, 4.71238898, 0);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressColor CGColor]);
  CGContextStrokePath(context);
  CGContextSetLineWidth(context, v10);
  CGContextBeginPath(context);
  [(MapsPieProgressLayer *)self progress];
  CGContextAddArc(context, MidX, MidY, v10 * 0.5, -1.57079633, v14 * 6.28318531 + -1.57079633, 0);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressColor CGColor]);

  CGContextStrokePath(context);
}

@end