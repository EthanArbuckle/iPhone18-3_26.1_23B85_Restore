@interface _MKBezierPathView
+ (CGPath)_createPathForBalloonRadius:(double)radius tailLength:(double)length;
+ (CGPath)_createSmoothTransitionPathForBalloonRadius:(double)radius tailLength:(double)length;
- (BOOL)containsPoint:(CGPoint)point;
- (_MKBezierPathView)initWithBalloonRadius:(double)radius tailLength:(double)length smoothTailTransition:(BOOL)transition;
- (_MKBezierPathView)initWithFrame:(CGRect)frame;
- (_MKBezierPathView)initWithOvalInSize:(CGSize)size;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setFillColor:(id)color;
- (void)setPath:(CGPath *)path duration:(double)duration;
- (void)setStrokeColor:(id)color width:(double)width;
@end

@implementation _MKBezierPathView

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(_MKBezierPathView *)self layer];
  path = [layer path];
  v9.x = x;
  v9.y = y;
  v7 = CGPathContainsPoint(path, 0, v9, 0);

  return v7;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  layer = [(_MKBezierPathView *)self layer];
  [layer setFillColor:{-[UIColor CGColor](self->_fillColor, "CGColor")}];
  [layer setStrokeColor:{-[UIColor CGColor](self->_strokeColor, "CGColor")}];
  v4.receiver = self;
  v4.super_class = _MKBezierPathView;
  [(_MKBezierPathView *)&v4 _dynamicUserInterfaceTraitDidChange];
}

- (void)setStrokeColor:(id)color width:(double)width
{
  objc_storeStrong(&self->_strokeColor, color);
  colorCopy = color;
  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v8 = MEMORY[0x1E69DD1B8];
  traitCollection = [(_MKBezierPathView *)self traitCollection];
  [v8 _setCurrentTraitCollection:traitCollection];

  layer = [(_MKBezierPathView *)self layer];
  [layer setStrokeColor:{objc_msgSend(colorCopy, "CGColor")}];
  [layer setLineWidth:width];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];
}

- (void)setFillColor:(id)color
{
  objc_storeStrong(&self->_fillColor, color);
  colorCopy = color;
  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v6 = MEMORY[0x1E69DD1B8];
  traitCollection = [(_MKBezierPathView *)self traitCollection];
  [v6 _setCurrentTraitCollection:traitCollection];

  layer = [(_MKBezierPathView *)self layer];
  [layer setFillColor:{objc_msgSend(colorCopy, "CGColor")}];

  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];
}

- (void)setPath:(CGPath *)path duration:(double)duration
{
  layer = [(_MKBezierPathView *)self layer];
  v10 = layer;
  if (duration <= 0.0)
  {
    [layer removeAnimationForKey:@"path"];
    [v10 setPath:path];
  }

  else
  {
    currentLayer = [layer currentLayer];
    v8 = CGPathRetain([currentLayer path]);

    [v10 removeAnimationForKey:@"path"];
    v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    [v9 setFromValue:v8];
    [v9 setToValue:path];
    [v9 setDuration:duration];
    [v9 setRemovedOnCompletion:1];
    [v10 addAnimation:v9 forKey:@"path"];

    [v10 setPath:path];
    if (v8)
    {
      CGPathRelease(v8);
    }
  }
}

- (_MKBezierPathView)initWithOvalInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [(_MKBezierPathView *)self initWithFrame:0.0, 0.0, size.width, size.height];
  if (v5)
  {
    v8.origin.x = 0.0;
    v8.origin.y = 0.0;
    v8.size.width = width;
    v8.size.height = height;
    v6 = CGPathCreateWithEllipseInRect(v8, 0);
    [(_MKBezierPathView *)v5 setPath:v6];
    CGPathRelease(v6);
  }

  return v5;
}

- (_MKBezierPathView)initWithBalloonRadius:(double)radius tailLength:(double)length smoothTailTransition:(BOOL)transition
{
  transitionCopy = transition;
  v8 = [(_MKBezierPathView *)self initWithFrame:0.0, 0.0, radius + radius, length + radius * 2.0];
  if (v8)
  {
    v9 = objc_opt_class();
    if (transitionCopy)
    {
      v10 = [v9 _createSmoothTransitionPathForBalloonRadius:radius tailLength:length];
    }

    else
    {
      v10 = [v9 _createPathForBalloonRadius:radius tailLength:length];
    }

    v11 = v10;
    [(_MKBezierPathView *)v8 setPath:v10];
    CGPathRelease(v11);
    [(_MKBezierPathView *)v8 bounds];
    v13 = 1.0 - length / v12;
    layer = [(_MKBezierPathView *)v8 layer];
    [layer setContentsCenter:{0.0, 0.0, 1.0, v13}];
  }

  return v8;
}

- (_MKBezierPathView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _MKBezierPathView;
  v3 = [(_MKBezierPathView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (CGPath)_createSmoothTransitionPathForBalloonRadius:(double)radius tailLength:(double)length
{
  v5 = radius + radius;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, radius * 1.27900004, radius * 1.96010005);
  CGPathAddLineToPoint(Mutable, 0, radius * 1.27900004, radius * 1.96010005);
  CGPathAddCurveToPoint(Mutable, 0, radius * 1.17630005, radius * 1.98930001, radius * 1.09080005, radius * 2.05649996, radius * 1.04250002, radius * 2.14980006);
  CGPathAddCurveToPoint(Mutable, 0, radius * 1.02999997, radius * 2.17359996, radius * 1.02199996, radius * 2.19840002, radius * 0.999800026, radius * 2.19840002);
  CGPathAddCurveToPoint(Mutable, 0, radius * 0.977599978, radius * 2.19849992, radius * 0.969600022, radius * 2.1730001, radius * 0.957099974, radius * 2.14980006);
  CGPathAddCurveToPoint(Mutable, 0, radius * 0.908699989, radius * 2.05699992, radius * 0.823000014, radius * 1.98930001, radius * 0.720200002, radius * 1.96010005);
  CGPathAddCurveToPoint(Mutable, 0, radius * 0.304399997, radius * 1.83920002, 0.0, radius * 1.45510006, 0.0, radius * 0.999800026);
  CGPathAddCurveToPoint(Mutable, 0, 0.0, radius * 0.447600007, radius * 0.447600007, 0.0, radius, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, radius * 1.55219996, 0.0, v5, radius * 0.447600007, v5, radius * 0.999800026);
  CGPathAddCurveToPoint(Mutable, 0, v5, radius * 1.45510006, radius * 1.69550002, radius * 1.83920002, radius * 1.27900004, radius * 1.96000004);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

+ (CGPath)_createPathForBalloonRadius:(double)radius tailLength:(double)length
{
  v6 = length / 6.0;
  v12 = radius * 0.38499999;
  v7 = length / 3.0;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, radius + radius, radius);
  v9 = length * 0.5;
  CGPathAddCurveToPoint(Mutable, 0, radius + radius, radius * 1.5, radius + radius - radius * 0.38499999, radius + radius - v7, v7 + length * 0.5 + radius, radius + radius);
  v10 = radius + radius + length;
  CGPathAddCurveToPoint(Mutable, 0, v7 + radius, radius + radius + v7, v6 + radius, v10, radius, v10);
  CGPathAddCurveToPoint(Mutable, 0, radius - v6, v10, radius - v7, radius + radius + v7, radius - (v9 + v7), radius + radius);
  CGPathAddCurveToPoint(Mutable, 0, v12, radius + radius - v7, 0.0, radius * 1.5, 0.0, radius);
  CGPathAddCurveToPoint(Mutable, 0, 0.0, radius * 0.448000014, radius * 0.448000014, 0.0, radius, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, radius + radius - radius * 0.448000014, 0.0, radius + radius, radius * 0.448000014, radius + radius, radius);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

@end