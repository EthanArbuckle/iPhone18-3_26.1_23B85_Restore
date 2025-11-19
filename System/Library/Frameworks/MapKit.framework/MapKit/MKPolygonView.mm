@interface MKPolygonView
- (MKPolygonView)initWithPolygon:(MKPolygon *)polygon;
- (void)createPath;
- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4;
@end

@implementation MKPolygonView

- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v6 = [(MKOverlayPathView *)self strokeColor];

  if (a3 && v6)
  {
    CGContextBeginPath(a4);
    CGContextAddPath(a4, a3);

    CGContextStrokePath(a4);
  }
}

- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v6 = [(MKOverlayPathView *)self fillColor];

  if (a3 && v6)
  {
    CGContextBeginPath(a4);
    CGContextAddPath(a4, a3);

    CGContextDrawPath(a4, kCGPathEOFill);
  }
}

- (void)createPath
{
  v23 = *MEMORY[0x1E69E9840];
  [(MKOverlayView *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(MKOverlayView *)self overlay];
  PathForPolygon = CreatePathForPolygon(v7, v4, v6);

  v9 = [(MKOverlayView *)self overlay];
  v10 = [v9 interiorPolygons];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = CreatePathForPolygon(*(*(&v18 + 1) + 8 * v15), v4, v6);
        if (v16)
        {
          v17 = v16;
          CGPathAddPath(PathForPolygon, 0, v16);
          CGPathRelease(v17);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(MKOverlayPathView *)self setPath:PathForPolygon, v18];
  CGPathRelease(PathForPolygon);
}

- (MKPolygonView)initWithPolygon:(MKPolygon *)polygon
{
  v4.receiver = self;
  v4.super_class = MKPolygonView;
  return [(MKOverlayPathView *)&v4 initWithOverlay:polygon];
}

@end