@interface MKPolylineView
- (void)createPath;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation MKPolylineView

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  v8 = [(MKOverlayView *)self overlay:rect.var0.var0];
  points = [v8 points];
  overlay = [(MKOverlayView *)self overlay];
  pointCount = [overlay pointCount];
  [(MKOverlayView *)self _originMapPoint];
  v13 = v12;
  v15 = v14;
  Mutable = CGPathCreateMutable();
  _MKPolylineAddToPath(Mutable, points, pointCount, v13, v15, scale, 0.0, 1.0, -1.0);

  if (Mutable && !CGPathIsEmpty(Mutable))
  {
    [(MKOverlayPathView *)self applyStrokePropertiesToContext:context atZoomScale:scale];
    [(MKOverlayPathView *)self strokePath:Mutable inContext:context];
  }

  CGPathRelease(Mutable);
}

- (void)createPath
{
  [(MKOverlayView *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  overlay = [(MKOverlayView *)self overlay];
  points = [overlay points];

  overlay2 = [(MKOverlayView *)self overlay];
  pointCount = [overlay2 pointCount];

  if (pointCount >= 2)
  {
    Mutable = CGPathCreateMutable();
    v13 = *points;
    v14 = points[1];
    v12 = points + 3;
    CGPathMoveToPoint(Mutable, 0, v13 - v4, v14 - v6);
    v15 = pointCount - 1;
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