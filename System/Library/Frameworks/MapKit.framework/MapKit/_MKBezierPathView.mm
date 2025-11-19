@interface _MKBezierPathView
+ (CGPath)_createPathForBalloonRadius:(double)a3 tailLength:(double)a4;
+ (CGPath)_createSmoothTransitionPathForBalloonRadius:(double)a3 tailLength:(double)a4;
- (BOOL)containsPoint:(CGPoint)a3;
- (_MKBezierPathView)initWithBalloonRadius:(double)a3 tailLength:(double)a4 smoothTailTransition:(BOOL)a5;
- (_MKBezierPathView)initWithFrame:(CGRect)a3;
- (_MKBezierPathView)initWithOvalInSize:(CGSize)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setFillColor:(id)a3;
- (void)setPath:(CGPath *)a3 duration:(double)a4;
- (void)setStrokeColor:(id)a3 width:(double)a4;
@end

@implementation _MKBezierPathView

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_MKBezierPathView *)self layer];
  v6 = [v5 path];
  v9.x = x;
  v9.y = y;
  v7 = CGPathContainsPoint(v6, 0, v9, 0);

  return v7;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3 = [(_MKBezierPathView *)self layer];
  [v3 setFillColor:{-[UIColor CGColor](self->_fillColor, "CGColor")}];
  [v3 setStrokeColor:{-[UIColor CGColor](self->_strokeColor, "CGColor")}];
  v4.receiver = self;
  v4.super_class = _MKBezierPathView;
  [(_MKBezierPathView *)&v4 _dynamicUserInterfaceTraitDidChange];
}

- (void)setStrokeColor:(id)a3 width:(double)a4
{
  objc_storeStrong(&self->_strokeColor, a3);
  v7 = a3;
  v11 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v8 = MEMORY[0x1E69DD1B8];
  v9 = [(_MKBezierPathView *)self traitCollection];
  [v8 _setCurrentTraitCollection:v9];

  v10 = [(_MKBezierPathView *)self layer];
  [v10 setStrokeColor:{objc_msgSend(v7, "CGColor")}];
  [v10 setLineWidth:a4];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v11];
}

- (void)setFillColor:(id)a3
{
  objc_storeStrong(&self->_fillColor, a3);
  v5 = a3;
  v9 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v6 = MEMORY[0x1E69DD1B8];
  v7 = [(_MKBezierPathView *)self traitCollection];
  [v6 _setCurrentTraitCollection:v7];

  v8 = [(_MKBezierPathView *)self layer];
  [v8 setFillColor:{objc_msgSend(v5, "CGColor")}];

  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v9];
}

- (void)setPath:(CGPath *)a3 duration:(double)a4
{
  v6 = [(_MKBezierPathView *)self layer];
  v10 = v6;
  if (a4 <= 0.0)
  {
    [v6 removeAnimationForKey:@"path"];
    [v10 setPath:a3];
  }

  else
  {
    v7 = [v6 currentLayer];
    v8 = CGPathRetain([v7 path]);

    [v10 removeAnimationForKey:@"path"];
    v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
    [v9 setFromValue:v8];
    [v9 setToValue:a3];
    [v9 setDuration:a4];
    [v9 setRemovedOnCompletion:1];
    [v10 addAnimation:v9 forKey:@"path"];

    [v10 setPath:a3];
    if (v8)
    {
      CGPathRelease(v8);
    }
  }
}

- (_MKBezierPathView)initWithOvalInSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(_MKBezierPathView *)self initWithFrame:0.0, 0.0, a3.width, a3.height];
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

- (_MKBezierPathView)initWithBalloonRadius:(double)a3 tailLength:(double)a4 smoothTailTransition:(BOOL)a5
{
  v5 = a5;
  v8 = [(_MKBezierPathView *)self initWithFrame:0.0, 0.0, a3 + a3, a4 + a3 * 2.0];
  if (v8)
  {
    v9 = objc_opt_class();
    if (v5)
    {
      v10 = [v9 _createSmoothTransitionPathForBalloonRadius:a3 tailLength:a4];
    }

    else
    {
      v10 = [v9 _createPathForBalloonRadius:a3 tailLength:a4];
    }

    v11 = v10;
    [(_MKBezierPathView *)v8 setPath:v10];
    CGPathRelease(v11);
    [(_MKBezierPathView *)v8 bounds];
    v13 = 1.0 - a4 / v12;
    v14 = [(_MKBezierPathView *)v8 layer];
    [v14 setContentsCenter:{0.0, 0.0, 1.0, v13}];
  }

  return v8;
}

- (_MKBezierPathView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _MKBezierPathView;
  v3 = [(_MKBezierPathView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (CGPath)_createSmoothTransitionPathForBalloonRadius:(double)a3 tailLength:(double)a4
{
  v5 = a3 + a3;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a3 * 1.27900004, a3 * 1.96010005);
  CGPathAddLineToPoint(Mutable, 0, a3 * 1.27900004, a3 * 1.96010005);
  CGPathAddCurveToPoint(Mutable, 0, a3 * 1.17630005, a3 * 1.98930001, a3 * 1.09080005, a3 * 2.05649996, a3 * 1.04250002, a3 * 2.14980006);
  CGPathAddCurveToPoint(Mutable, 0, a3 * 1.02999997, a3 * 2.17359996, a3 * 1.02199996, a3 * 2.19840002, a3 * 0.999800026, a3 * 2.19840002);
  CGPathAddCurveToPoint(Mutable, 0, a3 * 0.977599978, a3 * 2.19849992, a3 * 0.969600022, a3 * 2.1730001, a3 * 0.957099974, a3 * 2.14980006);
  CGPathAddCurveToPoint(Mutable, 0, a3 * 0.908699989, a3 * 2.05699992, a3 * 0.823000014, a3 * 1.98930001, a3 * 0.720200002, a3 * 1.96010005);
  CGPathAddCurveToPoint(Mutable, 0, a3 * 0.304399997, a3 * 1.83920002, 0.0, a3 * 1.45510006, 0.0, a3 * 0.999800026);
  CGPathAddCurveToPoint(Mutable, 0, 0.0, a3 * 0.447600007, a3 * 0.447600007, 0.0, a3, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, a3 * 1.55219996, 0.0, v5, a3 * 0.447600007, v5, a3 * 0.999800026);
  CGPathAddCurveToPoint(Mutable, 0, v5, a3 * 1.45510006, a3 * 1.69550002, a3 * 1.83920002, a3 * 1.27900004, a3 * 1.96000004);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

+ (CGPath)_createPathForBalloonRadius:(double)a3 tailLength:(double)a4
{
  v6 = a4 / 6.0;
  v12 = a3 * 0.38499999;
  v7 = a4 / 3.0;
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, a3 + a3, a3);
  v9 = a4 * 0.5;
  CGPathAddCurveToPoint(Mutable, 0, a3 + a3, a3 * 1.5, a3 + a3 - a3 * 0.38499999, a3 + a3 - v7, v7 + a4 * 0.5 + a3, a3 + a3);
  v10 = a3 + a3 + a4;
  CGPathAddCurveToPoint(Mutable, 0, v7 + a3, a3 + a3 + v7, v6 + a3, v10, a3, v10);
  CGPathAddCurveToPoint(Mutable, 0, a3 - v6, v10, a3 - v7, a3 + a3 + v7, a3 - (v9 + v7), a3 + a3);
  CGPathAddCurveToPoint(Mutable, 0, v12, a3 + a3 - v7, 0.0, a3 * 1.5, 0.0, a3);
  CGPathAddCurveToPoint(Mutable, 0, 0.0, a3 * 0.448000014, a3 * 0.448000014, 0.0, a3, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, a3 + a3 - a3 * 0.448000014, 0.0, a3 + a3, a3 * 0.448000014, a3 + a3, a3);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

@end