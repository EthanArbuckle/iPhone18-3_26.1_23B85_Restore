@interface MKMultiPolylineRenderer
- (BOOL)_canProvideVectorGeometry;
- (MKMultiPolylineRenderer)initWithCoder:(id)coder;
- (double)_strokeEnd;
- (double)_strokeStart;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)overlay;
- (void)_decodePropertiesWithCoder:(id)coder;
- (void)_performInitialConfiguration;
- (void)_setStrokeEnd:(double)end;
- (void)_setStrokeStart:(double)start;
- (void)_updateRenderColors;
- (void)createPath;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
- (void)encodeWithCoder:(id)coder;
- (void)setAlpha:(double)alpha;
- (void)setLineCap:(int)cap;
- (void)setLineJoin:(int)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setStrokeColor:(id)color;
@end

@implementation MKMultiPolylineRenderer

- (void)_updateRenderColors
{
  if (self->_vectorGeometry)
  {
    _mapView = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MKMultiPolylineRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [_mapView _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKMultiPolylineRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

void __46__MKMultiPolylineRenderer__updateRenderColors__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) strokeColor];
  v2 = v3;
  [*(*(a1 + 32) + 208) setColor:{objc_msgSend(v3, "CGColor")}];
}

- (id)vectorDataForOverlay:(id)overlay
{
  if ([(MKMultiPolylineRenderer *)self _canProvideVectorGeometry])
  {
    _vectorGeometry = [(MKMultiPolylineRenderer *)self _vectorGeometry];
  }

  else
  {
    _vectorGeometry = 0;
  }

  return _vectorGeometry;
}

- (id)_vectorGeometry
{
  selfCopy = self;
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_vectorGeometry && [(MKMultiPolylineRenderer *)self _canProvideVectorGeometry])
  {
    v3 = MEMORY[0x1E695DF70];
    overlay = [(MKOverlayRenderer *)selfCopy overlay];
    polylines = [overlay polylines];
    v6 = [v3 arrayWithCapacity:{objc_msgSend(polylines, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    p_isa = &selfCopy->super.super.super.isa;
    overlay2 = [(MKOverlayRenderer *)selfCopy overlay];
    polylines2 = [overlay2 polylines];

    v9 = [polylines2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(polylines2);
          }

          v13 = [objc_alloc(MEMORY[0x1E69DF4D8]) initWithMapPoints:objc_msgSend(*(*(&v26 + 1) + 8 * i) elevations:"points") count:objc_msgSend(*(*(&v26 + 1) + 8 * i) needsElevationCorrection:{"elevations"), objc_msgSend(*(*(&v26 + 1) + 8 * i), "pointCount"), objc_msgSend(*(*(&v26 + 1) + 8 * i), "needsElevationCorrection")}];
          [v6 addObject:v13];
        }

        v10 = [polylines2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v14 = v6;
    v15 = [objc_alloc(MEMORY[0x1E69DF4E0]) initWithPolylines:v6];
    selfCopy = p_isa;
    v16 = p_isa[26];
    p_isa[26] = v15;

    [p_isa lineWidth];
    [p_isa[26] setLineWidth:?];
    strokeColor = [p_isa strokeColor];
    [p_isa[26] setColor:{objc_msgSend(strokeColor, "CGColor")}];

    [p_isa alpha];
    [p_isa[26] setAlpha:?];
    lineJoin = [p_isa lineJoin];
    if (lineJoin == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2 * (lineJoin == 0);
    }

    [p_isa[26] setLineJoin:v19];
    lineCap = [p_isa lineCap];
    if (lineCap == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = lineCap == 0;
    }

    [p_isa[26] setLineCap:v21];
    [p_isa _strokeStart];
    [p_isa[26] setStrokeStart:?];
    [p_isa _strokeEnd];
    [p_isa[26] setStrokeEnd:?];
    [p_isa miterLimit];
    if (v22 <= 0.0)
    {
      v22 = 10.0;
    }

    [p_isa[26] setMiterLimit:v22];
  }

  vectorGeometry = selfCopy->_vectorGeometry;

  return vectorGeometry;
}

- (BOOL)_canProvideVectorGeometry
{
  if ([(MKOverlayPathRenderer *)self shouldRasterize])
  {
    return 0;
  }

  if ([(MKOverlayPathRenderer *)self _externalSubclassOverridesDrawingMethods])
  {
    return 0;
  }

  lineDashPattern = [(MKOverlayPathRenderer *)self lineDashPattern];
  v4 = [lineDashPattern count];

  if (v4)
  {
    return 0;
  }

  strokeColor = [(MKOverlayPathRenderer *)self strokeColor];
  v5 = CGColorGetPattern([strokeColor CGColor]) == 0;

  return v5;
}

- (void)setMiterLimit:(double)limit
{
  v6.receiver = self;
  v6.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v6 setMiterLimit:?];
  limitCopy = 10.0;
  if (limit > 0.0)
  {
    limitCopy = limit;
  }

  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setMiterLimit:limitCopy];
}

- (void)setLineCap:(int)cap
{
  v6.receiver = self;
  v6.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v6 setLineCap:?];
  if (cap == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = cap == 0;
  }

  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setLineCap:v5];
}

- (void)setLineJoin:(int)join
{
  v5 = join == 0;
  v7.receiver = self;
  v7.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineJoin:?];
  if (join == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setLineJoin:v6];
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = MKMultiPolylineRenderer;
  [(MKOverlayRenderer *)&v7 setAlpha:?];
  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MKMultiPolylineRenderer_setAlpha___block_invoke;
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
  v15.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:colorCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__MKMultiPolylineRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = colorCopy;
  selfCopy = self;
  v9 = colorCopy;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"strokeColor" withStepHandler:v11];
}

void __42__MKMultiPolylineRenderer_setStrokeColor___block_invoke(uint64_t a1, float a2)
{
  v3 = [*(a1 + 32) _mapkit_blendedColorWithFraction:*(a1 + 40) ofColor:a2];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v6 = v4;

  v5 = v6;
  [*(*(a1 + 48) + 208) setColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)setLineWidth:(double)width
{
  v7.receiver = self;
  v7.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineWidth:?];
  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry lineWidth];
  if (fabs(width) < 0.000001 || fabs(v5) < 0.000001)
  {
    [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setLineWidth:width];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__MKMultiPolylineRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = width;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  v53 = *MEMORY[0x1E69E9840];
  [(MKOverlayRenderer *)self _originMapPoint:rect.var0.var0];
  v9 = v8;
  v11 = v10;
  Mutable = CGPathCreateMutable();
  [(MKMultiPolylineRenderer *)self _strokeStart];
  v14 = v13;
  selfCopy = self;
  [(MKMultiPolylineRenderer *)self _strokeEnd];
  v16 = v15;
  v17 = v14 > 0.0;
  if (v15 < 1.0)
  {
    v17 = 1;
  }

  v46 = v17;
  if (v17)
  {
    v18 = CGPathCreateMutable();
  }

  else
  {
    v18 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  overlay = [(MKOverlayRenderer *)self overlay];
  polylines = [overlay polylines];

  obj = polylines;
  v21 = [polylines countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v49;
    v43 = v18;
    v44 = Mutable;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v48 + 1) + 8 * i);
        points = [v26 points];
        pointCount = [v26 pointCount];
        if (pointCount >= 2)
        {
          v29 = pointCount;
          _MKPolylineAddToPath(Mutable, points, pointCount, v9, v11, scale, 0.0, 1.0, -1.0);
          if (!CGPathIsEmpty(Mutable))
          {
            if ((v23 & 1) == 0)
            {
              [(MKOverlayPathRenderer *)selfCopy applyStrokePropertiesToContext:context atZoomScale:scale];
            }

            if (v46)
            {
              CGContextGetLineWidth();
              v31 = v30;
              LineCap = CGContextGetLineCap();
              LineJoin = CGContextGetLineJoin();
              CGContextGetMiterLimit();
              v35 = v34;
              contextCopy = context;
              v37 = CGPathCreateMutable();
              [v26 _mapPointsLength];
              _MKPolylineAddToPath(v37, points, v29, v9, v11, scale, v14, v16, v38);
              if (v14 <= 0.0)
              {
                v39 = LineCap;
              }

              else
              {
                v39 = kCGLineCapButt;
              }

              if (v16 >= 1.0)
              {
                v40 = LineCap;
              }

              else
              {
                v40 = kCGLineCapButt;
              }

              v18 = v43;
              CopyByStrokingPath = _MKCGPathCreateCopyByStrokingPath(v37, v39, v40, LineJoin, v31, v35);
              CGPathAddPath(v43, 0, CopyByStrokingPath);
              v42 = v37;
              context = contextCopy;
              Mutable = v44;
              CGPathRelease(v42);
              CGPathRelease(CopyByStrokingPath);
            }

            v23 = 1;
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v22);
  }

  if (Mutable && !CGPathIsEmpty(Mutable))
  {
    if (v18)
    {
      CGContextAddPath(context, v18);
      CGContextClip(context);
    }

    [(MKOverlayPathRenderer *)selfCopy strokePath:Mutable inContext:context];
  }

  CGPathRelease(Mutable);
  CGPathRelease(v18);
}

- (void)createPath
{
  v27 = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  overlay = [(MKOverlayRenderer *)self overlay];
  polylines = [overlay polylines];

  v6 = [polylines countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(polylines);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        [(MKOverlayRenderer *)self _originMapPoint];
        v12 = v11;
        v14 = v13;
        points = [v10 points];
        pointCount = [v10 pointCount];
        if (pointCount >= 2)
        {
          v17 = pointCount;
          v19 = *points;
          v20 = points[1];
          v18 = points + 3;
          CGPathMoveToPoint(Mutable, 0, v19 - v12, v20 - v14);
          v21 = v17 - 1;
          do
          {
            CGPathAddLineToPoint(Mutable, 0, *(v18 - 1) - v12, *v18 - v14);
            v18 += 2;
            --v21;
          }

          while (v21);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [polylines countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [(MKOverlayPathRenderer *)self setPath:Mutable];
  CGPathRelease(Mutable);
}

- (void)_setStrokeEnd:(double)end
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (vabdd_f64(end, selfCopy->_strokeEnd) >= 0.00000011920929)
  {
    [(MKMultiPolylineRenderer *)selfCopy willChangeValueForKey:@"strokeEnd"];
    strokeEnd = selfCopy->_strokeEnd;
    selfCopy->_strokeEnd = end;
    _renderer = [(MKOverlayRenderer *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKMultiPolylineRenderer *)selfCopy didChangeValueForKey:@"strokeEnd"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MKMultiPolylineRenderer__setStrokeEnd___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = selfCopy;
    *&v7[5] = strokeEnd;
    *&v7[6] = end;
    [(MKOverlayPathRenderer *)selfCopy _animateVectorGeometryIfNecessaryForKey:@"strokeEnd" withStepHandler:v7];
  }

  objc_sync_exit(selfCopy);
}

- (void)_setStrokeStart:(double)start
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (vabdd_f64(start, selfCopy->_strokeStart) >= 0.00000011920929)
  {
    [(MKMultiPolylineRenderer *)selfCopy willChangeValueForKey:@"strokeStart"];
    strokeStart = selfCopy->_strokeStart;
    selfCopy->_strokeStart = start;
    _renderer = [(MKOverlayRenderer *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKMultiPolylineRenderer *)selfCopy didChangeValueForKey:@"strokeStart"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MKMultiPolylineRenderer__setStrokeStart___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = selfCopy;
    *&v7[5] = strokeStart;
    *&v7[6] = start;
    [(MKOverlayPathRenderer *)selfCopy _animateVectorGeometryIfNecessaryForKey:@"strokeStart" withStepHandler:v7];
  }

  objc_sync_exit(selfCopy);
}

- (double)_strokeEnd
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strokeEnd = selfCopy->_strokeEnd;
  objc_sync_exit(selfCopy);

  return strokeEnd;
}

- (double)_strokeStart
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
  multiPolyline = [(MKMultiPolylineRenderer *)self multiPolyline];
  [coderCopy encodeObject:multiPolyline forKey:@"MKMultiPolylinePolyline"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [coderCopy encodeObject:v6 forKey:@"MKMultiPolylineRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [coderCopy encodeObject:v7 forKey:@"MKMultiPolylineRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:coderCopy];
}

- (void)_decodePropertiesWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolylineRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolylineRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:coderCopy];
}

- (MKMultiPolylineRenderer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolylinePolyline"];
  v6 = [(MKMultiPolylineRenderer *)self initWithMultiPolyline:v5];
  v7 = v6;
  if (v6)
  {
    [(MKMultiPolylineRenderer *)v6 _decodePropertiesWithCoder:coderCopy];
  }

  return v7;
}

- (void)_performInitialConfiguration
{
  v3.receiver = self;
  v3.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v3 _performInitialConfiguration];
  self->_strokeStart = 0.0;
  self->_strokeEnd = 1.0;
}

@end