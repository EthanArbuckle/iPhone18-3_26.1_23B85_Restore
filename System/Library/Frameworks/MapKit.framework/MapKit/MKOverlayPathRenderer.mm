@interface MKOverlayPathRenderer
+ (BOOL)_externalSubclassOverridesDrawingMethods;
- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale;
- (CGFloat)lineDashPhase;
- (CGFloat)lineWidth;
- (CGFloat)miterLimit;
- (CGLineCap)lineCap;
- (CGLineJoin)lineJoin;
- (CGPathRef)path;
- (MKOverlayPathRenderer)initWithOverlay:(id)overlay;
- (MKUsageCounter)_usageCounter;
- (NSArray)lineDashPattern;
- (UIColor)fillColor;
- (UIColor)strokeColor;
- (void)_animateVectorGeometryIfNecessaryForKey:(id)key withStepHandler:(id)handler;
- (void)_decodePropertiesWithCoder:(id)coder;
- (void)_encodePropertiesWithCoder:(id)coder;
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

- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale
{
  rect2 = rect.var1.var1;
  var0 = rect.var1.var0;
  var1 = rect.var0.var1;
  v7 = rect.var0.var0;
  overlay = [(MKOverlayRenderer *)self overlay];
  [overlay boundingMapRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  strokeColor = [(MKOverlayPathRenderer *)self strokeColor];

  if (strokeColor)
  {
    [(MKOverlayPathRenderer *)self lineWidth];
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
  if (selfCopy->_path || ([(MKOverlayPathRenderer *)selfCopy createPath], selfCopy->_path))
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
    [(MKOverlayPathRenderer *)selfCopy applyFillPropertiesToContext:context atZoomScale:scale];
    [(MKOverlayPathRenderer *)selfCopy fillPath:v8 inContext:context];
    [(MKOverlayPathRenderer *)selfCopy applyStrokePropertiesToContext:context atZoomScale:scale];
    [(MKOverlayPathRenderer *)selfCopy strokePath:v8 inContext:context];

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
  fillColor = [(MKOverlayPathRenderer *)self fillColor];

  if (fillColor)
  {
    fillColor2 = [(MKOverlayPathRenderer *)self fillColor];
    v7 = fillColor2;
    CGContextSetFillColorWithColor(context, [fillColor2 CGColor]);
  }
}

- (void)applyStrokePropertiesToContext:(CGContextRef)context atZoomScale:(MKZoomScale)zoomScale
{
  v38 = *MEMORY[0x1E69E9840];
  strokeColor = [(MKOverlayPathRenderer *)self strokeColor];

  if (strokeColor)
  {
    strokeColor2 = [(MKOverlayPathRenderer *)self strokeColor];
    CGContextSetStrokeColorWithColor(context, [strokeColor2 CGColor]);

    [(MKOverlayRenderer *)self contentScaleFactor];
    v10 = v9;
    [(MKOverlayPathRenderer *)self lineWidth];
    v12 = v11;
    lineJoin = [(MKOverlayPathRenderer *)self lineJoin];
    lineCap = [(MKOverlayPathRenderer *)self lineCap];
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
    lineDashPattern = [(MKOverlayPathRenderer *)self lineDashPattern];
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
    [(MKOverlayPathRenderer *)selfCopy willChangeValueForKey:@"lineDashPattern"];
    v5 = [(NSArray *)v7 copy];
    v6 = selfCopy->_lineDashPattern;
    selfCopy->_lineDashPattern = v5;

    [(MKOverlayRenderer *)selfCopy setNeedsDisplay];
    [(MKOverlayPathRenderer *)selfCopy didChangeValueForKey:@"lineDashPattern"];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  path = selfCopy->_path;
  if (!path)
  {
    [(MKOverlayPathRenderer *)selfCopy createPath];
    path = selfCopy->_path;
  }

  objc_sync_exit(selfCopy);

  return path;
}

- (MKOverlayPathRenderer)initWithOverlay:(id)overlay
{
  v6.receiver = self;
  v6.super_class = MKOverlayPathRenderer;
  v3 = [(MKOverlayRenderer *)&v6 initWithOverlay:overlay];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineDashPhase"];
    obj->_lineDashPhase = lineDashPhase;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineDashPhase"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setMiterLimit"];
    obj->_miterLimit = miterLimit;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setMiterLimit"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineCap"];
    obj->_lineCap = lineCap;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineCap"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineJoin"];
    obj->_lineJoin = lineJoin;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineJoin"];
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
    [(MKOverlayPathRenderer *)obj willChangeValueForKey:@"setLineWidth"];
    obj->_lineWidth = lineWidth;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)obj didChangeValueForKey:@"setLineWidth"];
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
    [(MKOverlayPathRenderer *)selfCopy willChangeValueForKey:@"setStrokeColor"];
    objc_storeStrong(&selfCopy->_strokeColor, strokeColor);
    _renderer = [(MKOverlayRenderer *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)selfCopy didChangeValueForKey:@"setStrokeColor"];
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
    [(MKOverlayPathRenderer *)selfCopy willChangeValueForKey:@"setFillColor"];
    objc_storeStrong(&selfCopy->_fillColor, fillColor);
    _renderer = [(MKOverlayRenderer *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKOverlayPathRenderer *)selfCopy didChangeValueForKey:@"setFillColor"];
  }

  objc_sync_exit(selfCopy);
}

- (void)_encodePropertiesWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MKOverlayPathRenderer;
  [(MKOverlayRenderer *)&v13 _encodePropertiesWithCoder:coderCopy];
  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    [coderCopy encodeObject:strokeColor forKey:@"MKOverlayPathRendererStrokeColor"];
  }

  fillColor = self->_fillColor;
  if (fillColor)
  {
    [coderCopy encodeObject:fillColor forKey:@"MKOverlayPathRendererFillColor"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lineWidth];
  [coderCopy encodeObject:v7 forKey:@"MKOverlayPathLineWidth"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_lineJoin];
  [coderCopy encodeObject:v8 forKey:@"MKOverlayPathRendererLineJoin"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_lineCap];
  [coderCopy encodeObject:v9 forKey:@"MKOverlayPathRendererLineCap"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_miterLimit];
  [coderCopy encodeObject:v10 forKey:@"MKOverlayPathRendererMiterLimit"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lineDashPhase];
  [coderCopy encodeObject:v11 forKey:@"MKOverlayPathRendererLineDashPhase"];

  lineDashPattern = self->_lineDashPattern;
  if (lineDashPattern)
  {
    [coderCopy encodeObject:lineDashPattern forKey:@"MKOverlayPathRendererLineDashPattern"];
  }
}

- (void)_decodePropertiesWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = MKOverlayPathRenderer;
  [(MKOverlayRenderer *)&v26 _decodePropertiesWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererStrokeColor"];
  strokeColor = self->_strokeColor;
  self->_strokeColor = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererFillColor"];
  fillColor = self->_fillColor;
  self->_fillColor = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathLineWidth"];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    self->_lineWidth = v11;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererLineJoin"];
  v13 = v12;
  if (v12)
  {
    self->_lineJoin = [v12 integerValue];
  }

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererLineCap"];
  v15 = v14;
  if (v14)
  {
    self->_lineCap = [v14 integerValue];
  }

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererMiterLimit"];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    self->_miterLimit = v18;
  }

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayPathRendererLineDashPhase"];
  v20 = v19;
  if (v19)
  {
    [v19 doubleValue];
    self->_lineDashPhase = v21;
  }

  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"MKOverlayPathRendererLineDashPattern"];
  if (v25)
  {
    objc_storeStrong(&self->_lineDashPattern, v25);
  }
}

- (void)_animateVectorGeometryIfNecessaryForKey:(id)key withStepHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if ([(MKOverlayPathRenderer *)self _canProvideVectorGeometry])
  {
    [(MKOverlayRenderer *)self _animateIfNecessaryForKey:keyCopy withStepHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1.0);
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
  _mapkitLeafClass = [self _mapkitLeafClass];
  if ([self _mapkit_instanceImplementationOfSelector:sel_drawMapRect_zoomScale_inContext_ isFromSubclassOfClass:_mapkitLeafClass] & 1) != 0 || (objc_msgSend(self, "_mapkit_instanceImplementationOfSelector:isFromSubclassOfClass:", sel_applyStrokePropertiesToContext_atZoomScale_, _mapkitLeafClass) & 1) != 0 || (objc_msgSend(self, "_mapkit_instanceImplementationOfSelector:isFromSubclassOfClass:", sel_applyFillPropertiesToContext_atZoomScale_, _mapkitLeafClass) & 1) != 0 || (objc_msgSend(self, "_mapkit_instanceImplementationOfSelector:isFromSubclassOfClass:", sel_strokePath_inContext_, _mapkitLeafClass))
  {
    return 1;
  }

  return [self _mapkit_instanceImplementationOfSelector:sel_fillPath_inContext_ isFromSubclassOfClass:_mapkitLeafClass];
}

@end