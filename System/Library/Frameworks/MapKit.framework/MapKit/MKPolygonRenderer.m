@interface MKPolygonRenderer
- (BOOL)_canProvideVectorGeometry;
- (CGFloat)strokeEnd;
- (CGFloat)strokeStart;
- (MKPolygonRenderer)initWithCoder:(id)a3;
- (MKPolygonRenderer)initWithPolygon:(MKPolygon *)polygon;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)a3;
- (void)_decodePropertiesWithCoder:(id)a3;
- (void)_performInitialConfiguration;
- (void)_updateRenderColors;
- (void)createPath;
- (void)encodeWithCoder:(id)a3;
- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)setAlpha:(double)a3;
- (void)setFillColor:(id)a3;
- (void)setLineJoin:(int)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setStrokeColor:(id)a3;
- (void)setStrokeEnd:(CGFloat)strokeEnd;
- (void)setStrokeStart:(CGFloat)strokeStart;
- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4;
@end

@implementation MKPolygonRenderer

- (void)_updateRenderColors
{
  if (self->_vectorData)
  {
    v3 = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__MKPolygonRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [v3 _withEffectiveTraitCollection:v5];
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

- (id)vectorDataForOverlay:(id)a3
{
  if ([(MKPolygonRenderer *)self _canProvideVectorGeometry])
  {
    v4 = [(MKPolygonRenderer *)self _vectorGeometry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_vectorGeometry
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!self->_vectorData && [(MKPolygonRenderer *)self _canProvideVectorGeometry])
  {
    v3 = objc_alloc(MEMORY[0x1E69DF4C8]);
    v4 = [(MKOverlayRenderer *)self overlay];
    v5 = [v4 points];
    v6 = [(MKOverlayRenderer *)self overlay];
    v7 = [v3 initWithMapPoints:v5 count:{objc_msgSend(v6, "pointCount")}];

    v8 = objc_alloc(MEMORY[0x1E69DF4D0]);
    v18[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v10 = [v8 initWithPolygons:v9];
    vectorData = self->_vectorData;
    self->_vectorData = v10;

    [(MKOverlayPathRenderer *)self lineWidth];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineWidth:?];
    v12 = [(MKOverlayPathRenderer *)self lineJoin];
    if (v12 == kCGLineJoinBevel)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v12 == kCGLineJoinMiter);
    }

    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineJoin:v13];
    v14 = [(MKOverlayPathRenderer *)self fillColor];
    -[VKVectorOverlayPolygonGroup setFillColor:](self->_vectorData, "setFillColor:", [v14 CGColor]);

    v15 = [(MKOverlayPathRenderer *)self strokeColor];
    -[VKVectorOverlayPolygonGroup setStrokeColor:](self->_vectorData, "setStrokeColor:", [v15 CGColor]);

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
    v3 = [(MKOverlayPathRenderer *)self lineDashPattern];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = [(MKOverlayRenderer *)self overlay];
      v6 = [v5 _isSimple];

      if (v6)
      {
        v7 = [(MKOverlayPathRenderer *)self strokeColor];
        Pattern = CGColorGetPattern([v7 CGColor]);

        if (!Pattern)
        {
          v9 = [(MKOverlayPathRenderer *)self fillColor];
          v10 = CGColorGetPattern([v9 CGColor]);

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

- (void)setAlpha:(double)a3
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
  v15.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__MKPolygonRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
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
  v15.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v15 setFillColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__MKPolygonRenderer_setFillColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
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

- (void)setMiterLimit:(double)a3
{
  v5.receiver = self;
  v5.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v5 setMiterLimit:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData setMiterLimit:a3];
}

- (void)setLineJoin:(int)a3
{
  v5 = a3 == 0;
  v7.receiver = self;
  v7.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineJoin:?];
  if (a3 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * v5;
  }

  [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineJoin:v6];
}

- (void)setLineWidth:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v7 setLineWidth:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData lineWidth];
  if (fabs(a3) < 0.000001 || fabs(v5) < 0.000001)
  {
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineWidth:a3];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__MKPolygonRenderer_setLineWidth___block_invoke;
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
    [(MKPolygonRenderer *)obj willChangeValueForKey:@"strokeEnd"];
    obj->_strokeEnd = strokeEnd;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

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
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKPolygonRenderer *)obj didChangeValueForKey:@"strokeStart"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MKOverlayRenderer *)self overlay];
  [v4 encodeObject:v5 forKey:@"MKPolygonRendererPolygon"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [v4 encodeObject:v6 forKey:@"MKPolygonRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [v4 encodeObject:v7 forKey:@"MKPolygonRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:v4];
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKPolygonRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:v4];
}

- (MKPolygonRenderer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKPolygonRendererPolygon"];
  v6 = [(MKPolygonRenderer *)self initWithPolygon:v5];
  v7 = v6;
  if (v6)
  {
    [(MKPolygonRenderer *)v6 _decodePropertiesWithCoder:v4];
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

- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [(MKOverlayPathRenderer *)self strokeColor];

  if (a3 && v5)
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
      v16 = [(MKOverlayRenderer *)self overlay];
      [(MKOverlayRenderer *)self _originMapPoint];
      StrokeClipPathForPolygon = _MKPolygonRendererCreateStrokeClipPathForPolygon(v16, v17, v18, v7, v9);

      if (StrokeClipPathForPolygon)
      {
        CopyByStrokingPath = CGPathCreateCopyByStrokingPath(StrokeClipPathForPolygon, 0, v11, kCGLineCapButt, LineJoin, v15);
        CGContextAddPath(a4, CopyByStrokingPath);
        CGPathRelease(StrokeClipPathForPolygon);
        CGPathRelease(CopyByStrokingPath);
      }

      v21 = [(MKOverlayRenderer *)self overlay];
      v22 = [v21 interiorPolygons];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v23 = v22;
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
              CGContextAddPath(a4, v33);
              CGPathRelease(v32);
              CGPathRelease(v33);
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v24);
      }

      CGContextClip(a4);
    }

    CGContextBeginPath(a4);
    CGContextAddPath(a4, a3);
    CGContextStrokePath(a4);
  }
}

- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v6 = [(MKOverlayPathRenderer *)self fillColor];

  if (a3 && v6)
  {
    CGContextBeginPath(a4);
    CGContextAddPath(a4, a3);

    CGContextDrawPath(a4, kCGPathEOFill);
  }
}

- (void)createPath
{
  v23 = *MEMORY[0x1E69E9840];
  [(MKOverlayRenderer *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(MKOverlayRenderer *)self overlay];
  PathForPolygon = CreatePathForPolygon(v7, v4, v6);

  v9 = [(MKOverlayRenderer *)self overlay];
  v10 = [v9 interiorPolygons];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
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