@interface MKCircleRenderer
- (BOOL)_canProvideVectorGeometry;
- (CGFloat)strokeEnd;
- (CGFloat)strokeStart;
- (MKCircleRenderer)initWithCircle:(MKCircle *)circle;
- (MKCircleRenderer)initWithCoder:(id)a3;
- (id)_vectorData;
- (id)vectorDataForOverlay:(id)a3;
- (void)_decodePropertiesWithCoder:(id)a3;
- (void)_performInitialConfiguration;
- (void)_updateRenderColors;
- (void)createPath;
- (void)encodeWithCoder:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setFillColor:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setStrokeColor:(id)a3;
- (void)setStrokeEnd:(CGFloat)strokeEnd;
- (void)setStrokeStart:(CGFloat)strokeStart;
- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4;
@end

@implementation MKCircleRenderer

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MKOverlayRenderer *)self overlay];
  [v4 encodeObject:v5 forKey:@"MKCircleRendererCircle"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [v4 encodeObject:v6 forKey:@"MKCircleRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [v4 encodeObject:v7 forKey:@"MKCircleRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKCircleRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:v4];
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKCircleRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKCircleRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKCircleRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:v4];
}

- (MKCircleRenderer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKCircleRendererCircle"];
  v6 = [(MKCircleRenderer *)self initWithCircle:v5];
  v7 = v6;
  if (v6)
  {
    [(MKCircleRenderer *)v6 _decodePropertiesWithCoder:v4];
  }

  return v7;
}

- (void)_updateRenderColors
{
  if (self->_vectorData)
  {
    v3 = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__MKCircleRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [v3 _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKCircleRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

void __39__MKCircleRenderer__updateRenderColors__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fillColor];
  [*(*(a1 + 32) + 208) setFillColor:{objc_msgSend(v2, "CGColor")}];

  v4 = [*(a1 + 32) strokeColor];
  v3 = v4;
  [*(*(a1 + 32) + 208) setStrokeColor:{objc_msgSend(v4, "CGColor")}];
}

- (id)vectorDataForOverlay:(id)a3
{
  if ([(MKCircleRenderer *)self _canProvideVectorGeometry])
  {
    v4 = [(MKCircleRenderer *)self _vectorData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_vectorData
{
  if (!self->_vectorData && [(MKCircleRenderer *)self _canProvideVectorGeometry])
  {
    v3 = objc_alloc(MEMORY[0x1E69DF4B8]);
    v4 = [(MKOverlayRenderer *)self overlay];
    [v4 boundingMapRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(MKOverlayPathRenderer *)self lineWidth];
    v14 = v13;
    v15 = [(MKOverlayPathRenderer *)self fillColor];
    v16 = [v15 CGColor];
    v17 = [(MKOverlayPathRenderer *)self strokeColor];
    v18 = [v17 CGColor];
    [(MKOverlayRenderer *)self alpha];
    v20 = [v3 initWithMapRect:v16 lineWidth:v18 fillColor:v6 strokeColor:v8 alpha:{v10, v12, v14, v19}];
    vectorData = self->_vectorData;
    self->_vectorData = v20;
  }

  v22 = self->_vectorData;

  return v22;
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

  v5 = [(MKOverlayPathRenderer *)self strokeColor];
  if (CGColorGetPattern([v5 CGColor]))
  {

    return 0;
  }

  v6 = [(MKOverlayPathRenderer *)self fillColor];
  Pattern = CGColorGetPattern([v6 CGColor]);

  if (Pattern)
  {
    return 0;
  }

  v8 = [(MKOverlayRenderer *)self overlay];
  [v8 boundingMapRect];
  v10 = v9;

  return v10 <= 268435456.0 && self->_strokeStart <= 0.0 && self->_strokeEnd >= 1.0;
}

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKCircleRenderer;
  [(MKOverlayRenderer *)&v7 setAlpha:?];
  [(VKVectorOverlayCircle *)self->_vectorData alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__MKCircleRenderer_setAlpha___block_invoke;
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
  v15.super_class = MKCircleRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__MKCircleRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"strokeColor" withStepHandler:v11];
}

void __35__MKCircleRenderer_setStrokeColor___block_invoke(uint64_t a1, float a2)
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

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v5 = [(MKOverlayPathRenderer *)self fillColor];
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
  v15.super_class = MKCircleRenderer;
  [(MKOverlayPathRenderer *)&v15 setFillColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__MKCircleRenderer_setFillColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"fillColor" withStepHandler:v11];
}

void __33__MKCircleRenderer_setFillColor___block_invoke(uint64_t a1, float a2)
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

- (void)setLineWidth:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKCircleRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineWidth:?];
  [(VKVectorOverlayCircle *)self->_vectorData lineWidth];
  if (fabs(a3) < 0.000001 || fabs(v5) < 0.000001)
  {
    [(VKVectorOverlayCircle *)self->_vectorData setLineWidth:a3];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__MKCircleRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = a3;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)setStrokeEnd:(CGFloat)strokeEnd
{
  obj = self;
  objc_sync_enter(obj);
  if (vabdd_f64(strokeEnd, obj->_strokeEnd) >= 0.00000011920929)
  {
    [(MKCircleRenderer *)obj willChangeValueForKey:@"strokeEnd"];
    obj->_strokeEnd = strokeEnd;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKCircleRenderer *)obj didChangeValueForKey:@"strokeEnd"];
  }

  objc_sync_exit(obj);
}

- (void)setStrokeStart:(CGFloat)strokeStart
{
  obj = self;
  objc_sync_enter(obj);
  if (vabdd_f64(strokeStart, obj->_strokeStart) >= 0.00000011920929)
  {
    [(MKCircleRenderer *)obj willChangeValueForKey:@"strokeStart"];
    obj->_strokeStart = strokeStart;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKCircleRenderer *)obj didChangeValueForKey:@"strokeStart"];
  }

  objc_sync_exit(obj);
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

- (void)_performInitialConfiguration
{
  v3.receiver = self;
  v3.super_class = MKCircleRenderer;
  [(MKOverlayPathRenderer *)&v3 _performInitialConfiguration];
  self->_strokeStart = 0.0;
  self->_strokeEnd = 1.0;
}

- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4
{
  CGContextGetLineWidth();
  v8 = v7;
  [(MKCircleRenderer *)self strokeStart];
  v10 = v9;
  [(MKCircleRenderer *)self strokeEnd];
  v12 = v11;
  if (fabs(v8) < 0.00000011920929 || ((v13 = fabs(v11 + -1.0), fabs(v10) < 0.00000011920929) ? (v14 = v13 < 0.00000011920929) : (v14 = 0), v14))
  {
    v32.receiver = self;
    v32.super_class = MKCircleRenderer;
    [(MKOverlayPathRenderer *)&v32 strokePath:a3 inContext:a4];
  }

  else
  {
    Mutable = CGPathCreateMutable();
    v16 = [(MKOverlayRenderer *)self overlay];
    [v16 coordinate];
    v18 = v17;
    v20 = v19;

    [(MKOverlayRenderer *)self pointForMapPoint:MKTilePointForCoordinate(v18, v20, 21.0)];
    v22 = v21;
    v24 = v23;
    GEOMapPointsPerMeterAtLatitude();
    v26 = v25;
    v27 = [(MKOverlayRenderer *)self overlay];
    [v27 radius];
    v29 = v26 * v28;

    CGPathAddArc(Mutable, 0, v22, v24, v29, (v10 + v10) * 3.14159265 + -1.57079633, (v12 + v12) * 3.14159265 + -1.57079633, 0);
    CopyByStrokingPath = CGPathCreateCopyByStrokingPath(Mutable, 0, v8, kCGLineCapButt, kCGLineJoinRound, 0.0);
    CGPathRelease(Mutable);
    CGContextAddPath(a4, CopyByStrokingPath);
    CGContextClip(a4);
    v31.receiver = self;
    v31.super_class = MKCircleRenderer;
    [(MKOverlayPathRenderer *)&v31 strokePath:a3 inContext:a4];
    CGPathRelease(CopyByStrokingPath);
  }
}

- (void)createPath
{
  Mutable = CGPathCreateMutable();
  v4 = [(MKOverlayRenderer *)self overlay];
  [v4 coordinate];
  v6 = v5;
  v8 = v7;

  [(MKOverlayRenderer *)self pointForMapPoint:MKTilePointForCoordinate(v6, v8, 21.0)];
  v10 = v9;
  v12 = v11;
  GEOMapPointsPerMeterAtLatitude();
  v14 = v13;
  v15 = [(MKOverlayRenderer *)self overlay];
  [v15 radius];
  v17 = v14 * v16;

  CGPathAddArc(Mutable, 0, v10, v12, v17, 0.0, 6.28318531, 1);
  [(MKOverlayPathRenderer *)self setPath:Mutable];

  CGPathRelease(Mutable);
}

- (MKCircleRenderer)initWithCircle:(MKCircle *)circle
{
  v4.receiver = self;
  v4.super_class = MKCircleRenderer;
  return [(MKOverlayPathRenderer *)&v4 initWithOverlay:circle];
}

@end