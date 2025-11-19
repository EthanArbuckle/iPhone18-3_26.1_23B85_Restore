@interface MKOverlayPathView
- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4;
- (CGFloat)lineDashPhase;
- (CGFloat)lineWidth;
- (CGFloat)miterLimit;
- (CGLineCap)lineCap;
- (CGLineJoin)lineJoin;
- (CGPathRef)path;
- (MKOverlayPathView)initWithOverlay:(id)a3;
- (NSArray)lineDashPattern;
- (UIColor)fillColor;
- (UIColor)strokeColor;
- (void)applyFillPropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale;
- (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale;
- (void)dealloc;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
- (void)fillPath:(CGPathRef)path inContext:(CGContextRef)context;
- (void)invalidatePath;
- (void)setFillColor:(UIColor *)fillColor;
- (void)setLineCap:(CGLineCap)lineCap;
- (void)setLineDashPattern:(NSArray *)lineDashPattern;
- (void)setLineDashPhase:(CGFloat)lineDashPhase;
- (void)setLineJoin:(CGLineJoin)lineJoin;
- (void)setLineWidth:(CGFloat)lineWidth;
- (void)setMiterLimit:(CGFloat)miterLimit;
- (void)setPath:(CGPathRef)path;
- (void)setStrokeColor:(UIColor *)strokeColor;
- (void)strokePath:(CGPathRef)path inContext:(CGContextRef)context;
@end

@implementation MKOverlayPathView

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = MKOverlayPathView;
  [(MKOverlayView *)&v3 dealloc];
}

- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4
{
  rect2 = a3.var1.var1;
  var0 = a3.var1.var0;
  var1 = a3.var0.var1;
  v7 = a3.var0.var0;
  v9 = [(MKOverlayView *)self overlay];
  [v9 boundingMapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(MKOverlayPathView *)self strokeColor];

  if (v18)
  {
    [(MKOverlayPathView *)self lineWidth];
    if (v19 <= 0.0)
    {
      v20 = vcvtmd_s64_f64(log2(a4) + 0.5);
      if (v20 >= -21)
      {
        v21 = (v20 & (v20 >> 63)) + 21;
      }

      else
      {
        v21 = 0;
      }

      v19 = dbl_1A30F7B28[v21];
    }

    v22 = INFINITY;
    if (v11 != INFINITY || (v23 = INFINITY, v13 != INFINITY))
    {
      v24 = v19 / a4;
      v23 = v11 - v24;
      v22 = v13 - v24;
      v15 = v15 + v24 * 2.0;
      v17 = v17 + v24 * 2.0;
    }
  }

  else
  {
    v22 = v13;
    v23 = v11;
  }

  v25 = v23;
  v26 = v15;
  v27 = v17;
  v28 = v7;
  v29 = var1;
  v30 = var0;
  v31 = rect2;

  return MKMapRectIntersectsRect(*(&v22 - 1), *&v28);
}

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_path || ([(MKOverlayPathView *)v7 createPath], v7->_path))
  {
    v8 = MEMORY[0x1A58E8C40]();
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  objc_sync_exit(v7);

  if ((v9 & 1) == 0 && v8)
  {
    [(MKOverlayPathView *)v7 applyFillPropertiesToContext:a5 atZoomScale:a4];
    [(MKOverlayPathView *)v7 fillPath:v8 inContext:a5];
    [(MKOverlayPathView *)v7 applyStrokePropertiesToContext:a5 atZoomScale:a4];
    [(MKOverlayPathView *)v7 strokePath:v8 inContext:a5];

    CGPathRelease(v8);
  }
}

- (void)fillPath:(CGPathRef)path inContext:(CGContextRef)context
{
  if (path && self->_fillColor)
  {
    CGContextBeginPath(context);
    CGContextAddPath(context, path);

    CGContextFillPath(context);
  }
}

- (void)strokePath:(CGPathRef)path inContext:(CGContextRef)context
{
  if (path && self->_strokeColor)
  {
    CGContextBeginPath(context);
    CGContextAddPath(context, path);

    CGContextStrokePath(context);
  }
}

- (void)applyFillPropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale
{
  v6 = [(MKOverlayPathView *)self fillColor];

  if (v6)
  {
    v8 = [(MKOverlayPathView *)self fillColor];
    v7 = v8;
    CGContextSetFillColorWithColor(context, [v8 CGColor]);
  }
}

- (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = [(MKOverlayPathView *)self strokeColor];

  if (v7)
  {
    v8 = [(MKOverlayPathView *)self strokeColor];
    CGContextSetStrokeColorWithColor(context, [v8 CGColor]);

    [(MKOverlayPathView *)self contentScaleFactor];
    v10 = v9;
    [(MKOverlayPathView *)self lineWidth];
    v12 = v11;
    v13 = [(MKOverlayPathView *)self lineJoin];
    v14 = [(MKOverlayPathView *)self lineCap];
    [(MKOverlayPathView *)self miterLimit];
    if (v15 <= 0.0)
    {
      v16 = 10.0;
    }

    else
    {
      v16 = v15;
    }

    if (_MKLinkedOnOrAfterReleaseSet(2310))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 / zoomScale;
    }

    [(MKOverlayPathView *)self lineDashPhase];
    v19 = v18;
    v20 = [(MKOverlayPathView *)self lineDashPattern];
    if (v12 <= 0.0)
    {
      v21 = vcvtmd_s64_f64(log2(zoomScale) + 0.5);
      if (v21 >= -21)
      {
        v22 = (v21 & (v21 >> 63)) + 21;
      }

      else
      {
        v22 = 0;
      }

      v12 = dbl_1A30F7B28[v22];
    }

    CGContextSetLineWidth(context, v10 * (v12 / zoomScale));
    CGContextSetLineJoin(context, v13);
    CGContextSetLineCap(context, v14);
    CGContextSetMiterLimit(context, v10 * v17);
    if (v20)
    {
      v23 = v19 / zoomScale;
      v24 = [v20 count];
      v25 = malloc_type_malloc(8 * v24, 0x100004000313F17uLL);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = v20;
      v27 = [v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *v34;
        do
        {
          v31 = 0;
          do
          {
            if (*v34 != v30)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v33 + 1) + 8 * v31) _mapkit_cgFloatValue];
            v25[v29++] = v10 * (v32 / zoomScale);
            ++v31;
          }

          while (v28 != v31);
          v28 = [v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v28);
      }

      CGContextSetLineDash(context, v23, v25, v24);
      free(v25);
    }
  }
}

- (void)setLineDashPattern:(NSArray *)lineDashPattern
{
  v7 = lineDashPattern;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_lineDashPattern != v7)
  {
    [(MKOverlayPathView *)v4 willChangeValueForKey:@"lineDashPattern"];
    v5 = [(NSArray *)v7 copy];
    v6 = v4->_lineDashPattern;
    v4->_lineDashPattern = v5;

    [(MKOverlayView *)v4 setNeedsDisplay];
    [(MKOverlayPathView *)v4 didChangeValueForKey:@"lineDashPattern"];
  }

  objc_sync_exit(v4);
}

- (NSArray)lineDashPattern
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lineDashPattern;
  objc_sync_exit(v2);

  return v3;
}

- (void)invalidatePath
{
  [(MKOverlayPathView *)self setPath:0];

  [(MKOverlayView *)self setNeedsDisplay];
}

- (void)setPath:(CGPathRef)path
{
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  v5 = obj->_path;
  if (v5 != path)
  {
    CGPathRelease(v5);
    v6 = CGPathRetain(path);
    v4 = obj;
    obj->_path = v6;
  }

  objc_sync_exit(v4);
}

- (CGPathRef)path
{
  v2 = self;
  objc_sync_enter(v2);
  path = v2->_path;
  if (!path)
  {
    [(MKOverlayPathView *)v2 createPath];
    path = v2->_path;
  }

  objc_sync_exit(v2);

  return path;
}

- (MKOverlayPathView)initWithOverlay:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKOverlayPathView;
  v3 = [(MKOverlayView *)&v6 initWithOverlay:a3];
  v4 = v3;
  if (v3)
  {
    [(MKOverlayPathView *)v3 setLineJoin:1];
    [(MKOverlayPathView *)v4 setLineCap:1];
    [(MKOverlayPathView *)v4 _performInitialConfiguration];
  }

  return v4;
}

- (CGFloat)lineDashPhase
{
  v2 = self;
  objc_sync_enter(v2);
  lineDashPhase = v2->_lineDashPhase;
  objc_sync_exit(v2);

  return lineDashPhase;
}

- (void)setLineDashPhase:(CGFloat)lineDashPhase
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lineDashPhase != lineDashPhase)
  {
    [(MKOverlayPathView *)obj willChangeValueForKey:@"setLineDashPhase"];
    obj->_lineDashPhase = lineDashPhase;
    v4 = [(MKOverlayView *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineDashPhase"];
  }

  objc_sync_exit(obj);
}

- (CGFloat)miterLimit
{
  v2 = self;
  objc_sync_enter(v2);
  miterLimit = v2->_miterLimit;
  objc_sync_exit(v2);

  return miterLimit;
}

- (void)setMiterLimit:(CGFloat)miterLimit
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_miterLimit != miterLimit)
  {
    [(MKOverlayPathView *)obj willChangeValueForKey:@"setMiterLimit"];
    obj->_miterLimit = miterLimit;
    v4 = [(MKOverlayView *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setMiterLimit"];
  }

  objc_sync_exit(obj);
}

- (CGLineCap)lineCap
{
  v2 = self;
  objc_sync_enter(v2);
  lineCap = v2->_lineCap;
  objc_sync_exit(v2);

  return lineCap;
}

- (void)setLineCap:(CGLineCap)lineCap
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lineCap != lineCap)
  {
    [(MKOverlayPathView *)obj willChangeValueForKey:@"setLineCap"];
    obj->_lineCap = lineCap;
    v4 = [(MKOverlayView *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineCap"];
  }

  objc_sync_exit(obj);
}

- (CGLineJoin)lineJoin
{
  v2 = self;
  objc_sync_enter(v2);
  lineJoin = v2->_lineJoin;
  objc_sync_exit(v2);

  return lineJoin;
}

- (void)setLineJoin:(CGLineJoin)lineJoin
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lineJoin != lineJoin)
  {
    [(MKOverlayPathView *)obj willChangeValueForKey:@"setLineJoin"];
    obj->_lineJoin = lineJoin;
    v4 = [(MKOverlayView *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineJoin"];
  }

  objc_sync_exit(obj);
}

- (CGFloat)lineWidth
{
  v2 = self;
  objc_sync_enter(v2);
  lineWidth = v2->_lineWidth;
  objc_sync_exit(v2);

  return lineWidth;
}

- (void)setLineWidth:(CGFloat)lineWidth
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lineWidth != lineWidth)
  {
    [(MKOverlayPathView *)obj willChangeValueForKey:@"setLineWidth"];
    obj->_lineWidth = lineWidth;
    v4 = [(MKOverlayView *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineWidth"];
  }

  objc_sync_exit(obj);
}

- (UIColor)strokeColor
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_strokeColor;
  objc_sync_exit(v2);

  return v3;
}

- (void)setStrokeColor:(UIColor *)strokeColor
{
  v7 = strokeColor;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_strokeColor != v7)
  {
    [(MKOverlayPathView *)v5 willChangeValueForKey:@"setStrokeColor"];
    objc_storeStrong(&v5->_strokeColor, strokeColor);
    v6 = [(MKOverlayView *)v5 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)v5 didChangeValueForKey:@"setStrokeColor"];
  }

  objc_sync_exit(v5);
}

- (UIColor)fillColor
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fillColor;
  objc_sync_exit(v2);

  return v3;
}

- (void)setFillColor:(UIColor *)fillColor
{
  v7 = fillColor;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_fillColor != v7)
  {
    [(MKOverlayPathView *)v5 willChangeValueForKey:@"setFillColor"];
    objc_storeStrong(&v5->_fillColor, fillColor);
    v6 = [(MKOverlayView *)v5 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)v5 didChangeValueForKey:@"setFillColor"];
  }

  objc_sync_exit(v5);
}

@end