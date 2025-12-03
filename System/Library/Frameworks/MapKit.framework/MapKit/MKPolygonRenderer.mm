@interface MKPolygonRenderer
- (BOOL)_canProvideVectorGeometry;
- (CGFloat)strokeEnd;
- (CGFloat)strokeStart;
- (MKPolygonRenderer)initWithCoder:(id)coder;
- (MKPolygonRenderer)initWithPolygon:(MKPolygon *)polygon;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)overlay;
- (void)_decodePropertiesWithCoder:(id)coder;
- (void)_performInitialConfiguration;
- (void)_updateRenderColors;
- (void)createPath;
- (void)encodeWithCoder:(id)coder;
- (void)fillPath:(CGPath *)path inContext:(CGContext *)context;
- (void)setAlpha:(double)alpha;
- (void)setFillColor:(id)color;
- (void)setLineJoin:(int)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setStrokeColor:(id)color;
- (void)setStrokeEnd:(CGFloat)strokeEnd;
- (void)setStrokeStart:(CGFloat)strokeStart;
- (void)strokePath:(CGPath *)path inContext:(CGContext *)context;
@end

@implementation MKPolygonRenderer

- (void)_updateRenderColors
{
  if (self->_vectorData)
  {
    _mapView = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MKPolygonRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [_mapView _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKPolygonRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

void __40__MKPolygonRenderer__updateRenderColors__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fillColor];
  [*(*(a1 + 32) + 208) setFillColor:{objc_msgSend(v2, "CGColor")}];

  v4 = [*(a1 + 32) strokeColor];
  v3 = v4;
  [*(*(a1 + 32) + 208) setStrokeColor:{objc_msgSend(v4, "CGColor")}];
}

- (id)vectorDataForOverlay:(id)overlay
{
  if ([(MKPolygonRenderer *)self _canProvideVectorGeometry])
  {
    _vectorGeometry = [(MKPolygonRenderer *)self _vectorGeometry];
  }

  else
  {
    _vectorGeometry = 0;
  }

  return _vectorGeometry;
}

- (id)_vectorGeometry
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_vectorData && [(MKPolygonRenderer *)self _canProvideVectorGeometry])
  {
    v3 = objc_alloc(MEMORY[0x1E69DF4C8]);
    overlay = [(MKOverlayRenderer *)self overlay];
    points = [overlay points];
    overlay2 = [(MKOverlayRenderer *)self overlay];
    v7 = [v3 initWithMapPoints:points count:{objc_msgSend(overlay2, "pointCount")}];

    v8 = objc_alloc(MEMORY[0x1E69DF4D0]);
    v18[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v10 = [v8 initWithPolygons:v9];
    vectorData = self->_vectorData;
    self->_vectorData = v10;

    [(MKOverlayPathRenderer *)self lineWidth];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineWidth:?];
    lineJoin = [(MKOverlayPathRenderer *)self lineJoin];
    if (lineJoin == kCGLineJoinBevel)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (lineJoin == kCGLineJoinMiter);
    }

    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineJoin:v13];
    fillColor = [(MKOverlayPathRenderer *)self fillColor];
    -[VKVectorOverlayPolygonGroup setFillColor:](self->_vectorData, "setFillColor:", [fillColor CGColor]);

    strokeColor = [(MKOverlayPathRenderer *)self strokeColor];
    -[VKVectorOverlayPolygonGroup setStrokeColor:](self->_vectorData, "setStrokeColor:", [strokeColor CGColor]);

    [(MKOverlayRenderer *)self alpha];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setAlpha:?];
    [(MKOverlayPathRenderer *)self miterLimit];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setMiterLimit:?];
  }

  v16 = self->_vectorData;

  return v16;
}

- (BOOL)_canProvideVectorGeometry
{
  result = 0;
  if (![(MKOverlayPathRenderer *)self shouldRasterize]&& ![(MKOverlayPathRenderer *)self _externalSubclassOverridesDrawingMethods])
  {
    lineDashPattern = [(MKOverlayPathRenderer *)self lineDashPattern];
    v4 = [lineDashPattern count];

    if (!v4)
    {
      overlay = [(MKOverlayRenderer *)self overlay];
      _isSimple = [overlay _isSimple];

      if (_isSimple)
      {
        strokeColor = [(MKOverlayPathRenderer *)self strokeColor];
        Pattern = CGColorGetPattern([strokeColor CGColor]);

        if (!Pattern)
        {
          fillColor = [(MKOverlayPathRenderer *)self fillColor];
          v10 = CGColorGetPattern([fillColor CGColor]);

          if (!v10 && self->_strokeStart <= 0.0 && self->_strokeEnd >= 1.0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = MKPolygonRenderer;
  [(MKOverlayRenderer *)&v7 setAlpha:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MKPolygonRenderer_setAlpha___block_invoke;
  v6[3] = &unk_1E76CD230;
  v6[4] = self;
  v6[5] = v5;
  *&v6[6] = alpha;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"alpha" withStepHandler:v6];
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  strokeColor = [(MKOverlayPathRenderer *)self strokeColor];
  v6 = strokeColor;
  if (strokeColor)
  {
    clearColor = strokeColor;
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  v8 = clearColor;

  v15.receiver = self;
  v15.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:colorCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__MKPolygonRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = colorCopy;
  selfCopy = self;
  v9 = colorCopy;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"strokeColor" withStepHandler:v11];
}

void __36__MKPolygonRenderer_setStrokeColor___block_invoke(uint64_t a1, float a2)
{
  v3 = [*(a1 + 32) _mapkit_blendedColorWithFraction:*(a1 + 40) ofColor:a2];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v6 = v4;

  v5 = v6;
  [*(*(a1 + 48) + 208) setStrokeColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  fillColor = [(MKOverlayPathRenderer *)self fillColor];
  v6 = fillColor;
  if (fillColor)
  {
    clearColor = fillColor;
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  v8 = clearColor;

  v15.receiver = self;
  v15.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v15 setFillColor:colorCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__MKPolygonRenderer_setFillColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = colorCopy;
  selfCopy = self;
  v9 = colorCopy;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"fillColor" withStepHandler:v11];
}

void __34__MKPolygonRenderer_setFillColor___block_invoke(uint64_t a1, float a2)
{
  v3 = [*(a1 + 32) _mapkit_blendedColorWithFraction:*(a1 + 40) ofColor:a2];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v6 = v4;

  v5 = v6;
  [*(*(a1 + 48) + 208) setFillColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)setMiterLimit:(double)limit
{
  v5.receiver = self;
  v5.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v5 setMiterLimit:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData setMiterLimit:limit];
}

- (void)setLineJoin:(int)join
{
  v5 = join == 0;
  v7.receiver = self;
  v7.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineJoin:?];
  if (join == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineJoin:v6];
}

- (void)setLineWidth:(double)width
{
  v7.receiver = self;
  v7.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineWidth:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData lineWidth];
  if (fabs(width) < 0.000001 || fabs(v5) < 0.000001)
  {
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineWidth:width];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__MKPolygonRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = width;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)setStrokeEnd:(CGFloat)strokeEnd
{
  obj = self;
  objc_sync_enter(obj);
  if (vabdd_f64(strokeEnd, obj->_strokeEnd) >= 0.00000011920929)
  {
    [(MKPolygonRenderer *)obj willChangeValueForKey:@"strokeEnd"];
    obj->_strokeEnd = strokeEnd;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKPolygonRenderer *)obj didChangeValueForKey:@"strokeEnd"];
  }

  objc_sync_exit(obj);
}

- (void)setStrokeStart:(CGFloat)strokeStart
{
  obj = self;
  objc_sync_enter(obj);
  if (vabdd_f64(strokeStart, obj->_strokeStart) >= 0.00000011920929)
  {
    [(MKPolygonRenderer *)obj willChangeValueForKey:@"strokeStart"];
    obj->_strokeStart = strokeStart;
    _renderer = [(MKOverlayRenderer *)obj _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKPolygonRenderer *)obj didChangeValueForKey:@"strokeStart"];
  }

  objc_sync_exit(obj);
}

- (CGFloat)strokeEnd
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strokeEnd = selfCopy->_strokeEnd;
  objc_sync_exit(selfCopy);

  return strokeEnd;
}

- (CGFloat)strokeStart
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strokeStart = selfCopy->_strokeStart;
  objc_sync_exit(selfCopy);

  return strokeStart;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  overlay = [(MKOverlayRenderer *)self overlay];
  [coderCopy encodeObject:overlay forKey:@"MKPolygonRendererPolygon"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [coderCopy encodeObject:v6 forKey:@"MKPolygonRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [coderCopy encodeObject:v7 forKey:@"MKPolygonRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:coderCopy];
}

- (void)_decodePropertiesWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:coderCopy];
}

- (MKPolygonRenderer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonRendererPolygon"];
  v6 = [(MKPolygonRenderer *)self initWithPolygon:v5];
  v7 = v6;
  if (v6)
  {
    [(MKPolygonRenderer *)v6 _decodePropertiesWithCoder:coderCopy];
  }

  return v7;
}

- (void)_performInitialConfiguration
{
  v3.receiver = self;
  v3.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v3 _performInitialConfiguration];
  self->_strokeStart = 0.0;
  self->_strokeEnd = 1.0;
}

- (void)strokePath:(CGPath *)path inContext:(CGContext *)context
{
  v41 = *MEMORY[0x1E69E9840];
  strokeColor = [(MKOverlayPathRenderer *)self strokeColor];

  if (path && strokeColor)
  {
    [(MKPolygonRenderer *)self strokeStart];
    v7 = v6;
    [(MKPolygonRenderer *)self strokeEnd];
    v9 = v8;
    if (v7 > 0.0 || v8 < 1.0)
    {
      CGContextGetLineWidth();
      v11 = v10;
      LineCap = CGContextGetLineCap();
      LineJoin = CGContextGetLineJoin();
      CGContextGetMiterLimit();
      v15 = v14;
      overlay = [(MKOverlayRenderer *)self overlay];
      [(MKOverlayRenderer *)self _originMapPoint];
      StrokeClipPathForPolygon = _MKPolygonRendererCreateStrokeClipPathForPolygon(overlay, v17, v18, v7, v9);

      if (StrokeClipPathForPolygon)
      {
        CopyByStrokingPath = CGPathCreateCopyByStrokingPath(StrokeClipPathForPolygon, 0, v11, kCGLineCapButt, LineJoin, v15);
        CGContextAddPath(context, CopyByStrokingPath);
        CGPathRelease(StrokeClipPathForPolygon);
        CGPathRelease(CopyByStrokingPath);
      }

      overlay2 = [(MKOverlayRenderer *)self overlay];
      interiorPolygons = [overlay2 interiorPolygons];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v23 = interiorPolygons;
      v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v24)
      {
        v25 = *v37;
        if (v7 <= 0.0)
        {
          v26 = LineCap;
        }

        else
        {
          v26 = kCGLineCapButt;
        }

        if (v9 < 1.0)
        {
          LineCap = kCGLineCapButt;
        }

        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v37 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v36 + 1) + 8 * i);
            [(MKOverlayRenderer *)self _originMapPoint];
            v31 = _MKPolygonRendererCreateStrokeClipPathForPolygon(v28, v29, v30, v7, v9);
            v32 = v31;
            if (v31)
            {
              v33 = _MKCGPathCreateCopyByStrokingPath(v31, v26, LineCap, LineJoin, v11, v15);
              CGContextAddPath(context, v33);
              CGPathRelease(v32);
              CGPathRelease(v33);
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v24);
      }

      CGContextClip(context);
    }

    CGContextBeginPath(context);
    CGContextAddPath(context, path);
    CGContextStrokePath(context);
  }
}

- (void)fillPath:(CGPath *)path inContext:(CGContext *)context
{
  fillColor = [(MKOverlayPathRenderer *)self fillColor];

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
  [(MKOverlayRenderer *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  overlay = [(MKOverlayRenderer *)self overlay];
  PathForPolygon = CreatePathForPolygon(overlay, v4, v6);

  overlay2 = [(MKOverlayRenderer *)self overlay];
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

  [(MKOverlayPathRenderer *)self setPath:PathForPolygon, v18];
  CGPathRelease(PathForPolygon);
}

- (MKPolygonRenderer)initWithPolygon:(MKPolygon *)polygon
{
  v4.receiver = self;
  v4.super_class = MKPolygonRenderer;
  return [(MKOverlayPathRenderer *)&v4 initWithOverlay:polygon];
}

@end