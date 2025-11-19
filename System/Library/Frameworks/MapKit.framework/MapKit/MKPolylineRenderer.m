@interface MKPolylineRenderer
- (BOOL)_canProvideVectorGeometry;
- (CGFloat)strokeEnd;
- (CGFloat)strokeStart;
- (MKPolylineRenderer)initWithCoder:(id)a3;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)a3;
- (void)_decodePropertiesWithCoder:(id)a3;
- (void)_performInitialConfiguration;
- (void)_setNeedsVectorGeometryUpdate;
- (void)_updateRenderColors;
- (void)_updateVectorGeometry:(id)a3;
- (void)createPath;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setLineCap:(int)a3;
- (void)setLineJoin:(int)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setStrokeColor:(id)a3;
- (void)setStrokeEnd:(CGFloat)strokeEnd;
- (void)setStrokeStart:(CGFloat)strokeStart;
@end

@implementation MKPolylineRenderer

- (void)_updateRenderColors
{
  if (self->_vectorGeometry)
  {
    v3 = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__MKPolylineRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [v3 _withEffectiveTraitCollection:v5];
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

- (id)vectorDataForOverlay:(id)a3
{
  if ([(MKPolylineRenderer *)self _canProvideVectorGeometry])
  {
    v4 = [(MKPolylineRenderer *)self _vectorGeometry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setNeedsVectorGeometryUpdate
{
  if (self->_vectorGeometry)
  {
    [(MKPolylineRenderer *)self _updateVectorGeometry:?];
  }
}

- (void)_updateVectorGeometry:(id)a3
{
  v10 = a3;
  [(MKOverlayPathRenderer *)self lineWidth];
  [v10 setLineWidth:?];
  v4 = [(MKOverlayPathRenderer *)self strokeColor];
  [v10 setColor:{objc_msgSend(v4, "CGColor")}];

  [(MKOverlayRenderer *)self alpha];
  [v10 setAlpha:?];
  v5 = [(MKOverlayPathRenderer *)self lineJoin];
  if (v5 == kCGLineJoinBevel)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (v5 == kCGLineJoinMiter);
  }

  [v10 setLineJoin:v6];
  v7 = [(MKOverlayPathRenderer *)self lineCap];
  if (v7 == kCGLineCapSquare)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == kCGLineCapButt;
  }

  [v10 setLineCap:v8];
  [(MKOverlayPathRenderer *)self miterLimit];
  if (v9 <= 0.0)
  {
    v9 = 10.0;
  }

  [v10 setMiterLimit:v9];
  [(MKPolylineRenderer *)self strokeStart];
  [v10 setStrokeStart:?];
  [(MKPolylineRenderer *)self strokeEnd];
  [v10 setStrokeEnd:?];
}

- (id)_vectorGeometry
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_vectorGeometry && [(MKPolylineRenderer *)self _canProvideVectorGeometry])
  {
    v3 = objc_alloc(MEMORY[0x1E69DF4D8]);
    v4 = [(MKPolylineRenderer *)self polyline];
    v5 = [v4 points];
    v6 = [(MKPolylineRenderer *)self polyline];
    v7 = [v6 elevations];
    v8 = [(MKPolylineRenderer *)self polyline];
    v9 = [v8 pointCount];
    v10 = [(MKPolylineRenderer *)self polyline];
    v11 = [v3 initWithMapPoints:v5 elevations:v7 count:v9 needsElevationCorrection:{objc_msgSend(v10, "needsElevationCorrection")}];

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

  v3 = [(MKOverlayPathRenderer *)self lineDashPattern];
  v4 = [v3 count];

  if (v4)
  {
    return 0;
  }

  v7 = [(MKOverlayPathRenderer *)self strokeColor];
  v5 = CGColorGetPattern([v7 CGColor]) == 0;

  return v5;
}

- (void)setMiterLimit:(double)a3
{
  v6.receiver = self;
  v6.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v6 setMiterLimit:?];
  v5 = 10.0;
  if (a3 > 0.0)
  {
    v5 = a3;
  }

  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setMiterLimit:v5];
}

- (void)setLineCap:(int)a3
{
  v6.receiver = self;
  v6.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v6 setLineCap:?];
  if (a3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a3 == 0;
  }

  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setLineCap:v5];
}

- (void)setLineJoin:(int)a3
{
  v5 = a3 == 0;
  v7.receiver = self;
  v7.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineJoin:?];
  if (a3 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setLineJoin:v6];
}

- (void)setAlpha:(double)a3
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
  *&v6[6] = a3;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"alpha" withStepHandler:v6];
}

- (void)setStrokeColor:(id)a3
{
  v4 = a3;
  v5 = [(MKOverlayPathRenderer *)self strokeColor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] clearColor];
  }

  v8 = v7;

  v15.receiver = self;
  v15.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__MKPolylineRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
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

- (void)setLineWidth:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineWidth:?];
  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry lineWidth];
  if (fabs(a3) < 0.000001 || fabs(v5) < 0.000001)
  {
    [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry setLineWidth:a3];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__MKPolylineRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = a3;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)setStrokeEnd:(CGFloat)strokeEnd
{
  v4 = self;
  objc_sync_enter(v4);
  if (vabdd_f64(strokeEnd, v4->_strokeEnd) >= 0.00000011920929)
  {
    [(MKPolylineRenderer *)v4 willChangeValueForKey:@"strokeEnd"];
    v5 = v4->_strokeEnd;
    v4->_strokeEnd = strokeEnd;
    v6 = [(MKOverlayRenderer *)v4 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKPolylineRenderer *)v4 didChangeValueForKey:@"strokeEnd"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__MKPolylineRenderer_setStrokeEnd___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = v4;
    *&v7[5] = v5;
    *&v7[6] = strokeEnd;
    [(MKOverlayPathRenderer *)v4 _animateVectorGeometryIfNecessaryForKey:@"strokeEnd" withStepHandler:v7];
  }

  objc_sync_exit(v4);
}

- (void)setStrokeStart:(CGFloat)strokeStart
{
  v4 = self;
  objc_sync_enter(v4);
  if (vabdd_f64(strokeStart, v4->_strokeStart) >= 0.00000011920929)
  {
    [(MKPolylineRenderer *)v4 willChangeValueForKey:@"strokeStart"];
    v5 = v4->_strokeStart;
    v4->_strokeStart = strokeStart;
    v6 = [(MKOverlayRenderer *)v4 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKPolylineRenderer *)v4 didChangeValueForKey:@"strokeStart"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MKPolylineRenderer_setStrokeStart___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = v4;
    *&v7[5] = v5;
    *&v7[6] = strokeStart;
    [(MKOverlayPathRenderer *)v4 _animateVectorGeometryIfNecessaryForKey:@"strokeStart" withStepHandler:v7];
  }

  objc_sync_exit(v4);
}

- (CGFloat)strokeEnd
{
  v2 = self;
  objc_sync_enter(v2);
  strokeEnd = v2->_strokeEnd;
  objc_sync_exit(v2);

  return strokeEnd;
}

- (CGFloat)strokeStart
{
  v2 = self;
  objc_sync_enter(v2);
  strokeStart = v2->_strokeStart;
  objc_sync_exit(v2);

  return strokeStart;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MKOverlayRenderer *)self overlay];
  [v4 encodeObject:v5 forKey:@"MKPolylineRendererPolyline"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [v4 encodeObject:v6 forKey:@"MKPolylineRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [v4 encodeObject:v7 forKey:@"MKPolylineRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:v4];
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolylineRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolylineRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKPolylineRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:v4];
}

- (MKPolylineRenderer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolylineRendererPolyline"];
  v6 = [(MKPolylineRenderer *)self initWithPolyline:v5];
  v7 = v6;
  if (v6)
  {
    [(MKPolylineRenderer *)v6 _decodePropertiesWithCoder:v4];
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

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  [(MKPolylineRenderer *)self strokeStart:a3.var0.var0];
  v9 = v8;
  [(MKPolylineRenderer *)self strokeEnd];
  v11 = v10;
  if (vabdd_f64(v9, v10) >= 0.00000011920929)
  {
    v12 = [(MKOverlayRenderer *)self overlay];
    v13 = [v12 points];
    v14 = [(MKOverlayRenderer *)self overlay];
    v15 = [v14 pointCount];
    [(MKOverlayRenderer *)self _originMapPoint];
    v17 = v16;
    v19 = v18;
    Mutable = CGPathCreateMutable();
    _MKPolylineAddToPath(Mutable, v13, v15, v17, v19, a4, 0.0, 1.0, -1.0);

    if (Mutable && !CGPathIsEmpty(Mutable))
    {
      [(MKOverlayPathRenderer *)self applyStrokePropertiesToContext:a5 atZoomScale:a4];
      v21 = [(MKOverlayRenderer *)self overlay];
      v22 = [v21 pointCount];

      if (v22 >= 2 && (v9 > 0.0 || v11 < 1.0))
      {
        CGContextGetLineWidth();
        v24 = v23;
        LineCap = CGContextGetLineCap();
        LineJoin = CGContextGetLineJoin();
        CGContextGetMiterLimit();
        v27 = v26;
        v28 = CGPathCreateMutable();
        v29 = [(MKOverlayRenderer *)self overlay];
        v30 = [v29 points];
        v31 = [(MKOverlayRenderer *)self overlay];
        v32 = [v31 pointCount];
        [(MKOverlayRenderer *)self _originMapPoint];
        v34 = v33;
        v36 = v35;
        v37 = [(MKOverlayRenderer *)self overlay];
        [v37 _mapPointsLength];
        _MKPolylineAddToPath(v28, v30, v32, v34, v36, a4, v9, v11, v38);

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
        CGContextAddPath(a5, CopyByStrokingPath);
        CGContextClip(a5);
        CGPathRelease(CopyByStrokingPath);
      }

      [(MKOverlayPathRenderer *)self strokePath:Mutable inContext:a5];
    }

    CGPathRelease(Mutable);
  }
}

- (void)createPath
{
  [(MKOverlayRenderer *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(MKOverlayRenderer *)self overlay];
  v8 = [v7 points];

  v9 = [(MKOverlayRenderer *)self overlay];
  v10 = [v9 pointCount];

  if (v10 >= 2)
  {
    Mutable = CGPathCreateMutable();
    v13 = *v8;
    v14 = v8[1];
    v12 = v8 + 3;
    CGPathMoveToPoint(Mutable, 0, v13 - v4, v14 - v6);
    v15 = v10 - 1;
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