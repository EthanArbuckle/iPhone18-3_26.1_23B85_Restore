@interface MKOverlayPathView
- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale;
- (CGFloat)lineDashPhase;
- (CGFloat)lineWidth;
- (CGFloat)miterLimit;
- (CGLineCap)lineCap;
- (CGLineJoin)lineJoin;
- (CGPathRef)path;
- (MKOverlayPathView)initWithOverlay:(id)overlay;
- (NSArray)lineDashPattern;
- (UIColor)fillColor;
- (UIColor)strokeColor;
- (void)applyFillPropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale;
- (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale;
- (void)dealloc;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
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

- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale
{
  rect2 = rect.var1.var1;
  var0 = rect.var1.var0;
  var1 = rect.var0.var1;
  v7 = rect.var0.var0;
  overlay = [(MKOverlayView *)self overlay];
  [overlay boundingMapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  strokeColor = [(MKOverlayPathView *)self strokeColor];

  if (strokeColor)
  {
    [(MKOverlayPathView *)self lineWidth];
    if (v19 <= 0.0)
    {
      v20 = vcvtmd_s64_f64(log2(scale) + 0.5);
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
      v24 = v19 / scale;
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

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_path || ([(MKOverlayPathView *)selfCopy createPath], selfCopy->_path))
  {
    v8 = MEMORY[0x1A58E8C40]();
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  objc_sync_exit(selfCopy);

  if ((v9 & 1) == 0 && v8)
  {
    [(MKOverlayPathView *)selfCopy applyFillPropertiesToContext:context atZoomScale:scale];
    [(MKOverlayPathView *)selfCopy fillPath:v8 inContext:context];
    [(MKOverlayPathView *)selfCopy applyStrokePropertiesToContext:context atZoomScale:scale];
    [(MKOverlayPathView *)selfCopy strokePath:v8 inContext:context];

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
  fillColor = [(MKOverlayPathView *)self fillColor];

  if (fillColor)
  {
    fillColor2 = [(MKOverlayPathView *)self fillColor];
    v7 = fillColor2;
    CGContextSetFillColorWithColor(context, [fillColor2 CGColor]);
  }
}

- (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale
{
  v38 = *MEMORY[0x1E69E9840];
  strokeColor = [(MKOverlayPathView *)self strokeColor];

  if (strokeColor)
  {
    strokeColor2 = [(MKOverlayPathView *)self strokeColor];
    CGContextSetStrokeColorWithColor(context, [strokeColor2 CGColor]);

    [(MKOverlayPathView *)self contentScaleFactor];
    v10 = v9;
    [(MKOverlayPathView *)self lineWidth];
    v12 = v11;
    lineJoin = [(MKOverlayPathView *)self lineJoin];
    lineCap = [(MKOverlayPathView *)self lineCap];
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
    lineDashPattern = [(MKOverlayPathView *)self lineDashPattern];
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
    CGContextSetLineJoin(context, lineJoin);
    CGContextSetLineCap(context, lineCap);
    CGContextSetMiterLimit(context, v10 * v17);
    if (lineDashPattern)
    {
      v23 = v19 / zoomScale;
      v24 = [lineDashPattern count];
      v25 = malloc_type_malloc(8 * v24, 0x100004000313F17uLL);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = lineDashPattern;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_lineDashPattern != v7)
  {
    [(MKOverlayPathView *)selfCopy willChangeValueForKey:@"lineDashPattern"];
    v5 = [(NSArray *)v7 copy];
    v6 = selfCopy->_lineDashPattern;
    selfCopy->_lineDashPattern = v5;

    [(MKOverlayView *)selfCopy setNeedsDisplay];
    [(MKOverlayPathView *)selfCopy didChangeValueForKey:@"lineDashPattern"];
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)lineDashPattern
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lineDashPattern;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  path = selfCopy->_path;
  if (!path)
  {
    [(MKOverlayPathView *)selfCopy createPath];
    path = selfCopy->_path;
  }

  objc_sync_exit(selfCopy);

  return path;
}

- (MKOverlayPathView)initWithOverlay:(id)overlay
{
  v6.receiver = self;
  v6.super_class = MKOverlayPathView;
  v3 = [(MKOverlayView *)&v6 initWithOverlay:overlay];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lineDashPhase = selfCopy->_lineDashPhase;
  objc_sync_exit(selfCopy);

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
    _renderer = [(MKOverlayView *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineDashPhase"];
  }

  objc_sync_exit(obj);
}

- (CGFloat)miterLimit
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  miterLimit = selfCopy->_miterLimit;
  objc_sync_exit(selfCopy);

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
    _renderer = [(MKOverlayView *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setMiterLimit"];
  }

  objc_sync_exit(obj);
}

- (CGLineCap)lineCap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lineCap = selfCopy->_lineCap;
  objc_sync_exit(selfCopy);

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
    _renderer = [(MKOverlayView *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineCap"];
  }

  objc_sync_exit(obj);
}

- (CGLineJoin)lineJoin
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lineJoin = selfCopy->_lineJoin;
  objc_sync_exit(selfCopy);

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
    _renderer = [(MKOverlayView *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineJoin"];
  }

  objc_sync_exit(obj);
}

- (CGFloat)lineWidth
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lineWidth = selfCopy->_lineWidth;
  objc_sync_exit(selfCopy);

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
    _renderer = [(MKOverlayView *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)obj didChangeValueForKey:@"setLineWidth"];
  }

  objc_sync_exit(obj);
}

- (UIColor)strokeColor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_strokeColor;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setStrokeColor:(UIColor *)strokeColor
{
  v7 = strokeColor;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_strokeColor != v7)
  {
    [(MKOverlayPathView *)selfCopy willChangeValueForKey:@"setStrokeColor"];
    objc_storeStrong(&selfCopy->_strokeColor, strokeColor);
    _renderer = [(MKOverlayView *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)selfCopy didChangeValueForKey:@"setStrokeColor"];
  }

  objc_sync_exit(selfCopy);
}

- (UIColor)fillColor
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fillColor;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setFillColor:(UIColor *)fillColor
{
  v7 = fillColor;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_fillColor != v7)
  {
    [(MKOverlayPathView *)selfCopy willChangeValueForKey:@"setFillColor"];
    objc_storeStrong(&selfCopy->_fillColor, fillColor);
    _renderer = [(MKOverlayView *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathView *)selfCopy didChangeValueForKey:@"setFillColor"];
  }

  objc_sync_exit(selfCopy);
}

@end