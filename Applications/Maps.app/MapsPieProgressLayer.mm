@interface MapsPieProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (MapsPieProgressLayer)init;
- (MapsPieProgressLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation MapsPieProgressLayer

- (void)drawInContext:(CGContext *)context
{
  [(MapsPieProgressLayer *)self bounds];
  v15 = CGRectInset(v14, self->_borderLineWidth, self->_borderLineWidth);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v9 = (fmin(v15.size.width, v15.size.height) - self->_borderLineWidth * 0.5) * 0.5 + 0.5;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  CGContextSetLineCap(context, kCGLineCapButt);
  CGContextSetLineJoin(context, kCGLineJoinMiter);
  CGContextSetLineWidth(context, self->_borderLineWidth);
  CGContextBeginPath(context);
  CGContextAddArc(context, MidX, MidY, v9, -1.57079633, 4.71238898, 0);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressColor CGColor]);
  CGContextStrokePath(context);
  CGContextSetLineWidth(context, v9);
  CGContextBeginPath(context);
  [(MapsPieProgressLayer *)self progress];
  CGContextAddArc(context, MidX, MidY, v9 * 0.5, -1.57079633, v12 * 6.28318531 + -1.57079633, 0);
  CGContextSetStrokeColorWithColor(context, [(UIColor *)self->_progressColor CGColor]);

  CGContextStrokePath(context);
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

@end