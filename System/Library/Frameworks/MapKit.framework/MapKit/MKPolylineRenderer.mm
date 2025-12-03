@interface MKPolylineRenderer
- (BOOL)_canProvideVectorGeometry;
- (CGFloat)strokeEnd;
- (CGFloat)strokeStart;
- (MKPolylineRenderer)initWithCoder:(id)coder;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)overlay;
- (void)_decodePropertiesWithCoder:(id)coder;
- (void)_performInitialConfiguration;
- (void)_setNeedsVectorGeometryUpdate;
- (void)_updateRenderColors;
- (void)_updateVectorGeometry:(id)geometry;
- (void)createPath;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
- (void)encodeWithCoder:(id)coder;
- (void)setAlpha:(double)alpha;
- (void)setLineCap:(int)cap;
- (void)setLineJoin:(int)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setStrokeColor:(id)color;
- (void)setStrokeEnd:(CGFloat)strokeEnd;
- (void)setStrokeStart:(CGFloat)strokeStart;
@end

@implementation MKPolylineRenderer

- (void)_updateRenderColors
{
  if (self->_vectorGeometry)
  {
    _mapView = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MKPolylineRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [_mapView _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKPolylineRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

void __41__MKPolylineRenderer__updateRenderColors__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) strokeColor];
  v2 = v3;
  [*(*(a1 + 32) + 208) setColor:{objc_msgSend(v3, "CGColor")}];
}

- (id)vectorDataForOverlay:(id)overlay
{
  if ([(MKPolylineRenderer *)self _canProvideVectorGeometry])
  {
    _vectorGeometry = [(MKPolylineRenderer *)self _vectorGeometry];
  }

  else
  {
    _vectorGeometry = 0;
  }

  return _vectorGeometry;
}

- (void)_setNeedsVectorGeometryUpdate
{
  if (self->_vectorGeometry)
  {
    [(MKPolylineRenderer *)self _updateVectorGeometry:?];
  }
}

- (void)_updateVectorGeometry:(id)geometry
{
  geometryCopy = geometry;
  [(MKOverlayPathRenderer *)self lineWidth];
  [geometryCopy setLineWidth:?];
  strokeColor = [(MKOverlayPathRenderer *)self strokeColor];
  [geometryCopy setColor:{objc_msgSend(strokeColor, "CGColor")}];

  [(MKOverlayRenderer *)self alpha];
  [geometryCopy setAlpha:?];
  lineJoin = [(MKOverlayPathRenderer *)self lineJoin];
  if (lineJoin == kCGLineJoinBevel)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (lineJoin == kCGLineJoinMiter);
  }

  [geometryCopy setLineJoin:v6];
  lineCap = [(MKOverlayPathRenderer *)self lineCap];
  if (lineCap == kCGLineCapSquare)
  {
    v8 = 2;
  }

  else
  {
    v8 = lineCap == kCGLineCapButt;
  }

  [geometryCopy setLineCap:v8];
  [(MKOverlayPathRenderer *)self miterLimit];
  if (v9 <= 0.0)
  {
    v9 = 10.0;
  }

  [geometryCopy setMiterLimit:v9];
  [(MKPolylineRenderer *)self strokeStart];
  [geometryCopy setStrokeStart:?];
  [(MKPolylineRenderer *)self strokeEnd];
  [geometryCopy setStrokeEnd:?];
}

- (id)_vectorGeometry
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_vectorGeometry && [(MKPolylineRenderer *)self _canProvideVectorGeometry])
  {
    v3 = objc_alloc(MEMORY[0x1E69DF4D8]);
    polyline = [(MKPolylineRenderer *)self polyline];
    points = [polyline points];
    polyline2 = [(MKPolylineRenderer *)self polyline];
    elevations = [polyline2 elevations];
    polyline3 = [(MKPolylineRenderer *)self polyline];
    pointCount = [polyline3 pointCount];
    polyline4 = [(MKPolylineRenderer *)self polyline];
    v11 = [v3 initWithMapPoints:points elevations:elevations count:pointCount needsElevationCorrection:{objc_msgSend(polyline4, "needsElevationCorrection")}];

    v12 = objc_alloc(MEMORY[0x1E69DF4E0]);
    v18[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v14 = [v12 initWithPolylines:v13];
    vectorGeometry = self->_vectorGeometry;
    self->_vectorGeometry = v14;

    [(MKPolylineRenderer *)self _updateVectorGeometry:self->_vectorGeometry];
  }

  v16 = self->_vectorGeometry;

  return v16;
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
  v6.super_class = MKPolylineRenderer;
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
  v6.super_class = MKPolylineRenderer;
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
  v7.super_class = MKPolylineRenderer;
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
  v7.super_class = MKPolylineRenderer;
  [(MKOverlayRenderer *)&v7 setAlpha:?];
  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__MKPolylineRenderer_setAlpha___block_invoke;
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
  v15.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:colorCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__MKPolylineRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = colorCopy;
  selfCopy = self;
  v9 = colorCopy;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"strokeColor" withStepHandler:v11];
}

void __37__MKPolylineRenderer_setStrokeColor___block_invoke(uint64_t a1, float a2)
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
  v7.super_class = MKPolylineRenderer;
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
    v6[2] = __35__MKPolylineRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = width;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)setStrokeEnd:(CGFloat)strokeEnd
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (vabdd_f64(strokeEnd, selfCopy->_strokeEnd) >= 0.00000011920929)
  {
    [(MKPolylineRenderer *)selfCopy willChangeValueForKey:@"strokeEnd"];
    v5 = selfCopy->_strokeEnd;
    selfCopy->_strokeEnd = strokeEnd;
    _renderer = [(MKOverlayRenderer *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKPolylineRenderer *)selfCopy didChangeValueForKey:@"strokeEnd"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__MKPolylineRenderer_setStrokeEnd___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = selfCopy;
    *&v7[5] = v5;
    *&v7[6] = strokeEnd;
    [(MKOverlayPathRenderer *)selfCopy _animateVectorGeometryIfNecessaryForKey:@"strokeEnd" withStepHandler:v7];
  }

  objc_sync_exit(selfCopy);
}

- (void)setStrokeStart:(CGFloat)strokeStart
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (vabdd_f64(strokeStart, selfCopy->_strokeStart) >= 0.00000011920929)
  {
    [(MKPolylineRenderer *)selfCopy willChangeValueForKey:@"strokeStart"];
    v5 = selfCopy->_strokeStart;
    selfCopy->_strokeStart = strokeStart;
    _renderer = [(MKOverlayRenderer *)selfCopy _renderer];
    [_renderer setNeedsDisplayForReason:2];

    [(MKPolylineRenderer *)selfCopy didChangeValueForKey:@"strokeStart"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MKPolylineRenderer_setStrokeStart___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = selfCopy;
    *&v7[5] = v5;
    *&v7[6] = strokeStart;
    [(MKOverlayPathRenderer *)selfCopy _animateVectorGeometryIfNecessaryForKey:@"strokeStart" withStepHandler:v7];
  }

  objc_sync_exit(selfCopy);
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
  [coderCopy encodeObject:overlay forKey:@"MKPolylineRendererPolyline"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [coderCopy encodeObject:v6 forKey:@"MKPolylineRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [coderCopy encodeObject:v7 forKey:@"MKPolylineRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:coderCopy];
}

- (void)_decodePropertiesWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPolylineRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPolylineRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:coderCopy];
}

- (MKPolylineRenderer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MKPolylineRendererPolyline"];
  v6 = [(MKPolylineRenderer *)self initWithPolyline:v5];
  v7 = v6;
  if (v6)
  {
    [(MKPolylineRenderer *)v6 _decodePropertiesWithCoder:coderCopy];
  }

  return v7;
}

- (void)_performInitialConfiguration
{
  v3.receiver = self;
  v3.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v3 _performInitialConfiguration];
  self->_strokeStart = 0.0;
  self->_strokeEnd = 1.0;
}

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  [(MKPolylineRenderer *)self strokeStart:rect.var0.var0];
  v9 = v8;
  [(MKPolylineRenderer *)self strokeEnd];
  v11 = v10;
  if (vabdd_f64(v9, v10) >= 0.00000011920929)
  {
    overlay = [(MKOverlayRenderer *)self overlay];
    points = [overlay points];
    overlay2 = [(MKOverlayRenderer *)self overlay];
    pointCount = [overlay2 pointCount];
    [(MKOverlayRenderer *)self _originMapPoint];
    v17 = v16;
    v19 = v18;
    Mutable = CGPathCreateMutable();
    _MKPolylineAddToPath(Mutable, points, pointCount, v17, v19, scale, 0.0, 1.0, -1.0);

    if (Mutable && !CGPathIsEmpty(Mutable))
    {
      [(MKOverlayPathRenderer *)self applyStrokePropertiesToContext:context atZoomScale:scale];
      overlay3 = [(MKOverlayRenderer *)self overlay];
      pointCount2 = [overlay3 pointCount];

      if (pointCount2 >= 2 && (v9 > 0.0 || v11 < 1.0))
      {
        CGContextGetLineWidth();
        v24 = v23;
        LineCap = CGContextGetLineCap();
        LineJoin = CGContextGetLineJoin();
        CGContextGetMiterLimit();
        v27 = v26;
        v28 = CGPathCreateMutable();
        overlay4 = [(MKOverlayRenderer *)self overlay];
        points2 = [overlay4 points];
        overlay5 = [(MKOverlayRenderer *)self overlay];
        pointCount3 = [overlay5 pointCount];
        [(MKOverlayRenderer *)self _originMapPoint];
        v34 = v33;
        v36 = v35;
        overlay6 = [(MKOverlayRenderer *)self overlay];
        [overlay6 _mapPointsLength];
        _MKPolylineAddToPath(v28, points2, pointCount3, v34, v36, scale, v9, v11, v38);

        if (v9 <= 0.0)
        {
          v39 = LineCap;
        }

        else
        {
          v39 = kCGLineCapButt;
        }

        if (v11 >= 1.0)
        {
          v40 = LineCap;
        }

        else
        {
          v40 = kCGLineCapButt;
        }

        CopyByStrokingPath = _MKCGPathCreateCopyByStrokingPath(v28, v39, v40, LineJoin, v24, v27);
        CGPathRelease(v28);
        CGContextAddPath(context, CopyByStrokingPath);
        CGContextClip(context);
        CGPathRelease(CopyByStrokingPath);
      }

      [(MKOverlayPathRenderer *)self strokePath:Mutable inContext:context];
    }

    CGPathRelease(Mutable);
  }
}

- (void)createPath
{
  [(MKOverlayRenderer *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  overlay = [(MKOverlayRenderer *)self overlay];
  points = [overlay points];

  overlay2 = [(MKOverlayRenderer *)self overlay];
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
    [(MKOverlayPathRenderer *)self setPath:Mutable];

    CGPathRelease(Mutable);
  }
}

@end