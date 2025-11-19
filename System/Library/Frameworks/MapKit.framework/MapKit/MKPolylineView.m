@interface MKPolylineView
- (void)createPath;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation MKPolylineView

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  v8 = [(MKOverlayView *)self overlay:a3.var0.var0];
  v9 = [v8 points];
  v10 = [(MKOverlayView *)self overlay];
  v11 = [v10 pointCount];
  [(MKOverlayView *)self _originMapPoint];
  v13 = v12;
  v15 = v14;
  Mutable = CGPathCreateMutable();
  _MKPolylineAddToPath(Mutable, v9, v11, v13, v15, a4, 0.0, 1.0, -1.0);

  if (Mutable && !CGPathIsEmpty(Mutable))
  {
    [(MKOverlayPathView *)self applyStrokePropertiesToContext:a5 atZoomScale:a4];
    [(MKOverlayPathView *)self strokePath:Mutable inContext:a5];
  }

  CGPathRelease(Mutable);
}

- (void)createPath
{
  [(MKOverlayView *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(MKOverlayView *)self overlay];
  v8 = [v7 points];

  v9 = [(MKOverlayView *)self overlay];
  v10 = [v9 pointCount];

  if (v10 >= 2)
  {
    Mutable = CGPathCreateMutable();
    v13 = *v8;
    v14 = v8[1];
    v12 = v8 + 3;
    CGPathMoveToPoint(Mutable, 0, v13 - v4, v14 - v6);
    v15 = v10 - 1;
    do
    {
      CGPathAddLineToPoint(Mutable, 0, *(v12 - 1) - v4, *v12 - v6);
      v12 += 2;
      --v15;
    }

    while (v15);
    [(MKOverlayPathView *)self setPath:Mutable];

    CGPathRelease(Mutable);
  }
}

@end