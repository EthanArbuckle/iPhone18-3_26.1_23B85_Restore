@interface MapsPieProgressLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (MapsPieProgressLayer)init;
- (MapsPieProgressLayer)initWithLayer:(id)a3;
- (void)drawInContext:(CGContext *)a3;
@end

@implementation MapsPieProgressLayer

- (void)drawInContext:(CGContext *)a3
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
  CGContextSetLineCap(a3, kCGLineCapButt);
  CGContextSetLineJoin(a3, kCGLineJoinMiter);
  CGContextSetLineWidth(a3, self->_borderLineWidth);
  CGContextBeginPath(a3);
  CGContextAddArc(a3, MidX, MidY, v9, -1.57079633, 4.71238898, 0);
  CGContextSetStrokeColorWithColor(a3, [(UIColor *)self->_progressColor CGColor]);
  CGContextStrokePath(a3);
  CGContextSetLineWidth(a3, v9);
  CGContextBeginPath(a3);
  [(MapsPieProgressLayer *)self progress];
  CGContextAddArc(a3, MidX, MidY, v9 * 0.5, -1.57079633, v12 * 6.28318531 + -1.57079633, 0);
  CGContextSetStrokeColorWithColor(a3, [(UIColor *)self->_progressColor CGColor]);

  CGContextStrokePath(a3);
}

- (MapsPieProgressLayer)initWithLayer:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MapsPieProgressLayer;
  v5 = [(MapsPieProgressLayer *)&v11 initWithLayer:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      -[MapsPieProgressLayer setNeedsDisplayOnBoundsChange:](v5, "setNeedsDisplayOnBoundsChange:", [v6 needsDisplayOnBoundsChange]);
      -[MapsPieProgressLayer setAllowsEdgeAntialiasing:](v5, "setAllowsEdgeAntialiasing:", [v6 allowsEdgeAntialiasing]);
      v7 = [v6 progressColor];
      [(MapsPieProgressLayer *)v5 setProgressColor:v7];

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

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"progress"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"borderLineWidth"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___MapsPieProgressLayer;
    v5 = objc_msgSendSuper2(&v7, "needsDisplayForKey:", v4);
  }

  return v5;
}

@end