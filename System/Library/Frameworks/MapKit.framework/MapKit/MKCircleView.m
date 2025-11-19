@interface MKCircleView
- (MKCircleView)initWithCircle:(MKCircle *)circle;
- (void)createPath;
@end

@implementation MKCircleView

- (void)createPath
{
  Mutable = CGPathCreateMutable();
  v4 = [(MKOverlayView *)self overlay];
  [v4 coordinate];
  v6 = v5;
  v8 = v7;

  [(MKOverlayView *)self pointForMapPoint:MKTilePointForCoordinate(v6, v8, 21.0)];
  v10 = v9;
  v12 = v11;
  GEOMapPointsPerMeterAtLatitude();
  v14 = v13;
  v15 = [(MKOverlayView *)self overlay];
  [v15 radius];
  v17 = v14 * v16;

  CGPathAddArc(Mutable, 0, v10, v12, v17, 0.0, 6.28318531, 1);
  [(MKOverlayPathView *)self setPath:Mutable];

  CGPathRelease(Mutable);
}

- (MKCircleView)initWithCircle:(MKCircle *)circle
{
  v4.receiver = self;
  v4.super_class = MKCircleView;
  return [(MKOverlayPathView *)&v4 initWithOverlay:circle];
}

@end