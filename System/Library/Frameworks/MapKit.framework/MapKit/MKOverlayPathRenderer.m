@interface MKOverlayPathRenderer
+ (BOOL)_externalSubclassOverridesDrawingMethods;
- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4;
- (CGFloat)lineDashPhase;
- (CGFloat)lineWidth;
- (CGFloat)miterLimit;
- (CGLineCap)lineCap;
- (CGLineJoin)lineJoin;
- (CGPathRef)path;
- (MKOverlayPathRenderer)initWithOverlay:(id)a3;
- (MKUsageCounter)_usageCounter;
- (NSArray)lineDashPattern;
- (UIColor)fillColor;
- (UIColor)strokeColor;
- (void)_animateVectorGeometryIfNecessaryForKey:(id)a3 withStepHandler:(id)a4;
- (void)_decodePropertiesWithCoder:(id)a3;
- (void)_encodePropertiesWithCoder:(id)a3;
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
- (void)setShouldRasterize:(BOOL)shouldRasterize;
- (void)setStrokeColor:(UIColor *)strokeColor;
- (void)strokePath:(CGPathRef)path inContext:(CGContextRef)context;
@end

@implementation MKOverlayPathRenderer

- (MKUsageCounter)_usageCounter
{
  WeakRetained = objc_loadWeakRetained(&self->_usageCounter);

  return WeakRetained;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = MKOverlayPathRenderer;
  [(MKOverlayRenderer *)&v3 dealloc];
}

- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4
{
  rect2 = a3.var1.var1;
  var0 = a3.var1.var0;
  var1 = a3.var0.var1;
  v7 = a3.var0.var0;
  v9 = [(MKOverlayRenderer *)self overlay];
  [v9 boundingMapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(MKOverlayPathRenderer *)self strokeColor];

  if (v18)
  {
    [(MKOverlayPathRenderer *)self lineWidth];
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
  if (v7->_path || ([(MKOverlayPathRenderer *)v7 createPath], v7->_path))
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
    [(MKOverlayPathRenderer *)v7 applyFillPropertiesToContext:a5 atZoomScale:a4];
    [(MKOverlayPathRenderer *)v7 fillPath:v8 inContext:a5];
    [(MKOverlayPathRenderer *)v7 applyStrokePropertiesToContext:a5 atZoomScale:a4];
    [(MKOverlayPathRenderer *)v7 strokePath:v8 inContext:a5];

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
  v6 = [(MKOverlayPathRenderer *)self fillColor];

  if (v6)
  {
    v8 = [(MKOverlayPathRenderer *)self fillColor];
    v7 = v8;
    CGContextSetFillColorWithColor(context, [v8 CGColor]);
  }
}

- (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = [(MKOverlayPathRenderer *)self strokeColor];

  if (v7)
  {
    v8 = [(MKOverlayPathRenderer *)self strokeColor];
    CGContextSetStrokeColorWithColor(context, [v8 CGColor]);

    [(MKOverlayRenderer *)self contentScaleFactor];
    v10 = v9;
    [(MKOverlayPathRenderer *)self lineWidth];
    v12 = v11;
    v13 = [(MKOverlayPathRenderer *)self lineJoin];
    v14 = [(MKOverlayPathRenderer *)self lineCap];
    [(MKOverlayPathRenderer *)self miterLimit];
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

    [(MKOverlayPathRenderer *)self lineDashPhase];
    v19 = v18;
    v20 = [(MKOverlayPathRenderer *)self lineDashPattern];
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
    [(MKOverlayPathRenderer *)v4 willChangeValueForKey:@"lineDashPattern"];
    v5 = [(NSArray *)v7 copy];
    v6 = v4->_lineDashPattern;
    v4->_lineDashPattern = v5;

    [(MKOverlayRenderer *)v4 setNeedsDisplay];
    [(MKOverlayPathRenderer *)v4 didChangeValueForKey:@"lineDashPattern"];
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
  [(MKOverlayPathRenderer *)self setPath:0];

  [(MKOverlayRenderer *)self setNeedsDisplay];
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
    [(MKOverlayPathRenderer *)v2 createPath];
    path = v2->_path;
  }

  objc_sync_exit(v2);

  return path;
}

- (MKOverlayPathRenderer)initWithOverlay:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKOverlayPathRenderer;
  v3 = [(MKOverlayRenderer *)&v6 initWithOverlay:a3];
  v4 = v3;
  if (v3)
  {
    [(MKOverlayPathRenderer *)v3 setLineJoin:1];
    [(MKOverlayPathRenderer *)v4 setLineCap:1];
    [(MKOverlayPathRenderer *)v4 _performInitialConfiguration];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineDashPhase"];
    obj->_lineDashPhase = lineDashPhase;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineDashPhase"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setMiterLimit"];
    obj->_miterLimit = miterLimit;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setMiterLimit"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineCap"];
    obj->_lineCap = lineCap;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineCap"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineJoin"];
    obj->_lineJoin = lineJoin;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineJoin"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineWidth"];
    obj->_lineWidth = lineWidth;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineWidth"];
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
    [(MKOverlayPathRenderer *)v5 willChangeValueForKey:@"setStrokeColor"];
    objc_storeStrong(&v5->_strokeColor, strokeColor);
    v6 = [(MKOverlayRenderer *)v5 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)v5 didChangeValueForKey:@"setStrokeColor"];
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
    [(MKOverlayPathRenderer *)v5 willChangeValueForKey:@"setFillColor"];
    objc_storeStrong(&v5->_fillColor, fillColor);
    v6 = [(MKOverlayRenderer *)v5 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)v5 didChangeValueForKey:@"setFillColor"];
  }

  objc_sync_exit(v5);
}

- (void)_encodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MKOverlayPathRenderer;
  [(MKOverlayRenderer *)&v13 _encodePropertiesWithCoder:v4];
  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    [v4 encodeObject:strokeColor forKey:@"MKOverlayPathRendererStrokeColor"];
  }

  fillColor = self->_fillColor;
  if (fillColor)
  {
    [v4 encodeObject:fillColor forKey:@"MKOverlayPathRendererFillColor"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lineWidth];
  [v4 encodeObject:v7 forKey:@"MKOverlayPathLineWidth"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_lineJoin];
  [v4 encodeObject:v8 forKey:@"MKOverlayPathRendererLineJoin"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_lineCap];
  [v4 encodeObject:v9 forKey:@"MKOverlayPathRendererLineCap"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_miterLimit];
  [v4 encodeObject:v10 forKey:@"MKOverlayPathRendererMiterLimit"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lineDashPhase];
  [v4 encodeObject:v11 forKey:@"MKOverlayPathRendererLineDashPhase"];

  lineDashPattern = self->_lineDashPattern;
  if (lineDashPattern)
  {
    [v4 encodeObject:lineDashPattern forKey:@"MKOverlayPathRendererLineDashPattern"];
  }
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MKOverlayPathRenderer;
  [(MKOverlayRenderer *)&v26 _decodePropertiesWithCoder:v4];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererStrokeColor"];
  strokeColor = self->_strokeColor;
  self->_strokeColor = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererFillColor"];
  fillColor = self->_fillColor;
  self->_fillColor = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathLineWidth"];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    self->_lineWidth = v11;
  }

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererLineJoin"];
  v13 = v12;
  if (v12)
  {
    self->_lineJoin = [v12 integerValue];
  }

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererLineCap"];
  v15 = v14;
  if (v14)
  {
    self->_lineCap = [v14 integerValue];
  }

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererMiterLimit"];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    self->_miterLimit = v18;
  }

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererLineDashPhase"];
  v20 = v19;
  if (v19)
  {
    [v19 doubleValue];
    self->_lineDashPhase = v21;
  }

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = [v4 decodeObjectOfClasses:v24 forKey:@"MKOverlayPathRendererLineDashPattern"];
  if (v25)
  {
    objc_storeStrong(&self->_lineDashPattern, v25);
  }
}

- (void)_animateVectorGeometryIfNecessaryForKey:(id)a3 withStepHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(MKOverlayPathRenderer *)self _canProvideVectorGeometry])
  {
    [(MKOverlayRenderer *)self _animateIfNecessaryForKey:v7 withStepHandler:v6];
  }

  else
  {
    v6[2](v6, 1.0);
  }
}

- (void)setShouldRasterize:(BOOL)shouldRasterize
{
  v3 = shouldRasterize;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_shouldRasterize != v3)
  {
    obj->_shouldRasterize = v3;
    [(MKOverlayRenderer *)obj setNeedsDisplay];
    WeakRetained = objc_loadWeakRetained(&obj->_usageCounter);

    v4 = obj;
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&obj->_usageCounter);
      [v6 countUsageOfTypeIfNeeded:53];

      v4 = obj;
    }
  }

  objc_sync_exit(v4);
}

+ (BOOL)_externalSubclassOverridesDrawingMethods
{
  v3 = [a1 _mapkitLeafClass];
  if ([a1 _mapkit_instanceImplementationOfSelector:sel_drawMapRect_zoomScale_inContext_ isFromSubclassOfClass:v3] & 1) != 0 || (objc_msgSend(a1, "_mapkit_instanceImplementationOfSelector:isFromSubclassOfClass:", sel_applyStrokePropertiesToContext_atZoomScale_, v3) & 1) != 0 || (objc_msgSend(a1, "_mapkit_instanceImplementationOfSelector:isFromSubclassOfClass:", sel_applyFillPropertiesToContext_atZoomScale_, v3) & 1) != 0 || (objc_msgSend(a1, "_mapkit_instanceImplementationOfSelector:isFromSubclassOfClass:", sel_strokePath_inContext_, v3))
  {
    return 1;
  }

  return [a1 _mapkit_instanceImplementationOfSelector:sel_fillPath_inContext_ isFromSubclassOfClass:v3];
}

@end