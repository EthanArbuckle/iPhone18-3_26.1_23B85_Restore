@interface MKPolygonView
- (MKPolygonView)initWithPolygon:(MKPolygon *)polygon;
- (void)createPath;
- (void)fillPath:(CGPath *)path inContext:(CGContext *)context;
- (void)strokePath:(CGPath *)path inContext:(CGContext *)context;
@end

@implementation MKPolygonView

- (void)strokePath:(CGPath *)path inContext:(CGContext *)context
{
  strokeColor = [(MKOverlayPathView *)self strokeColor];

  if (path && strokeColor)
  {
    CGContextBeginPath(context);
    CGContextAddPath(context, path);

    CGContextStrokePath(context);
  }
}

- (void)fillPath:(CGPath *)path inContext:(CGContext *)context
{
  fillColor = [(MKOverlayPathView *)self fillColor];

  if (path && fillColor)
  {
    CGContextBeginPath(context);
    CGContextAddPath(context, path);

    CGContextDrawPath(context, kCGPathEOFill);
  }
}

- (void)createPath
{
  v23 = *MEMORY[0x1E69E9840];
  [(MKOverlayView *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  overlay = [(MKOverlayView *)self overlay];
  PathForPolygon = CreatePathForPolygon(overlay, v4, v6);

  overlay2 = [(MKOverlayView *)self overlay];
  interiorPolygons = [overlay2 interiorPolygons];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = interiorPolygons;
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