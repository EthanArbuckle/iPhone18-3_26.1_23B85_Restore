@interface MKMultiPolylineRenderer
- (BOOL)_canProvideVectorGeometry;
- (MKMultiPolylineRenderer)initWithCoder:(id)a3;
- (double)_strokeEnd;
- (double)_strokeStart;
- (id)_vectorGeometry;
- (id)vectorDataForOverlay:(id)a3;
- (void)_decodePropertiesWithCoder:(id)a3;
- (void)_performInitialConfiguration;
- (void)_setStrokeEnd:(double)a3;
- (void)_setStrokeStart:(double)a3;
- (void)_updateRenderColors;
- (void)createPath;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setAlpha:(double)a3;
- (void)setLineCap:(int)a3;
- (void)setLineJoin:(int)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation MKMultiPolylineRenderer

- (void)_updateRenderColors
{
  if (self->_vectorGeometry)
  {
    v3 = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__MKMultiPolylineRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [v3 _withEffectiveTraitCollection:v5];
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

- (id)vectorDataForOverlay:(id)a3
{
  if ([(MKMultiPolylineRenderer *)self _canProvideVectorGeometry])
  {
    v4 = [(MKMultiPolylineRenderer *)self _vectorGeometry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_vectorGeometry
{
  v2 = self;
  v31 = *MEMORY[0x1E69E9840];
  if (!self->_vectorGeometry && [(MKMultiPolylineRenderer *)self _canProvideVectorGeometry])
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [(MKOverlayRenderer *)v2 overlay];
    v5 = [v4 polylines];
    v6 = [v3 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    p_isa = &v2->super.super.super.isa;
    v7 = [(MKOverlayRenderer *)v2 overlay];
    v8 = [v7 polylines];

    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [objc_alloc(MEMORY[0x1E69DF4D8]) initWithMapPoints:objc_msgSend(*(*(&v26 + 1) + 8 * i) elevations:"points") count:objc_msgSend(*(*(&v26 + 1) + 8 * i) needsElevationCorrection:{"elevations"), objc_msgSend(*(*(&v26 + 1) + 8 * i), "pointCount"), objc_msgSend(*(*(&v26 + 1) + 8 * i), "needsElevationCorrection")}];
          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v14 = v6;
    v15 = [objc_alloc(MEMORY[0x1E69DF4E0]) initWithPolylines:v6];
    v2 = p_isa;
    v16 = p_isa[26];
    p_isa[26] = v15;

    [p_isa lineWidth];
    [p_isa[26] setLineWidth:?];
    v17 = [p_isa strokeColor];
    [p_isa[26] setColor:{objc_msgSend(v17, "CGColor")}];

    [p_isa alpha];
    [p_isa[26] setAlpha:?];
    v18 = [p_isa lineJoin];
    if (v18 == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2 * (v18 == 0);
    }

    [p_isa[26] setLineJoin:v19];
    v20 = [p_isa lineCap];
    if (v20 == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20 == 0;
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

  vectorGeometry = v2->_vectorGeometry;

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
  v6.super_class = MKMultiPolylineRenderer;
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
  v6.super_class = MKMultiPolylineRenderer;
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
  v7.super_class = MKMultiPolylineRenderer;
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
  v7.super_class = MKMultiPolylineRenderer;
  [(MKOverlayRenderer *)&v7 setAlpha:?];
  [(VKVectorOverlayPolylineGroup *)self->_vectorGeometry alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MKMultiPolylineRenderer_setAlpha___block_invoke;
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
  v15.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__MKMultiPolylineRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
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

- (void)setLineWidth:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKMultiPolylineRenderer;
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
    v6[2] = __40__MKMultiPolylineRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = a3;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  [(MKOverlayRenderer *)self _originMapPoint:a3.var0.var0];
  v9 = v8;
  v11 = v10;
  Mutable = CGPathCreateMutable();
  [(MKMultiPolylineRenderer *)self _strokeStart];
  v14 = v13;
  v45 = self;
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
  v19 = [(MKOverlayRenderer *)self overlay];
  v20 = [v19 polylines];

  obj = v20;
  v21 = [v20 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
        v27 = [v26 points];
        v28 = [v26 pointCount];
        if (v28 >= 2)
        {
          v29 = v28;
          _MKPolylineAddToPath(Mutable, v27, v28, v9, v11, a4, 0.0, 1.0, -1.0);
          if (!CGPathIsEmpty(Mutable))
          {
            if ((v23 & 1) == 0)
            {
              [(MKOverlayPathRenderer *)v45 applyStrokePropertiesToContext:a5 atZoomScale:a4];
            }

            if (v46)
            {
              CGContextGetLineWidth();
              v31 = v30;
              LineCap = CGContextGetLineCap();
              LineJoin = CGContextGetLineJoin();
              CGContextGetMiterLimit();
              v35 = v34;
              v36 = a5;
              v37 = CGPathCreateMutable();
              [v26 _mapPointsLength];
              _MKPolylineAddToPath(v37, v27, v29, v9, v11, a4, v14, v16, v38);
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
              a5 = v36;
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
      CGContextAddPath(a5, v18);
      CGContextClip(a5);
    }

    [(MKOverlayPathRenderer *)v45 strokePath:Mutable inContext:a5];
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
  v4 = [(MKOverlayRenderer *)self overlay];
  v5 = [v4 polylines];

  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        [(MKOverlayRenderer *)self _originMapPoint];
        v12 = v11;
        v14 = v13;
        v15 = [v10 points];
        v16 = [v10 pointCount];
        if (v16 >= 2)
        {
          v17 = v16;
          v19 = *v15;
          v20 = v15[1];
          v18 = v15 + 3;
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
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [(MKOverlayPathRenderer *)self setPath:Mutable];
  CGPathRelease(Mutable);
}

- (void)_setStrokeEnd:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (vabdd_f64(a3, v4->_strokeEnd) >= 0.00000011920929)
  {
    [(MKMultiPolylineRenderer *)v4 willChangeValueForKey:@"strokeEnd"];
    strokeEnd = v4->_strokeEnd;
    v4->_strokeEnd = a3;
    v6 = [(MKOverlayRenderer *)v4 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKMultiPolylineRenderer *)v4 didChangeValueForKey:@"strokeEnd"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__MKMultiPolylineRenderer__setStrokeEnd___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = v4;
    *&v7[5] = strokeEnd;
    *&v7[6] = a3;
    [(MKOverlayPathRenderer *)v4 _animateVectorGeometryIfNecessaryForKey:@"strokeEnd" withStepHandler:v7];
  }

  objc_sync_exit(v4);
}

- (void)_setStrokeStart:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (vabdd_f64(a3, v4->_strokeStart) >= 0.00000011920929)
  {
    [(MKMultiPolylineRenderer *)v4 willChangeValueForKey:@"strokeStart"];
    strokeStart = v4->_strokeStart;
    v4->_strokeStart = a3;
    v6 = [(MKOverlayRenderer *)v4 _renderer];
    [v6 setNeedsDisplayForReason:2];

    [(MKMultiPolylineRenderer *)v4 didChangeValueForKey:@"strokeStart"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MKMultiPolylineRenderer__setStrokeStart___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = v4;
    *&v7[5] = strokeStart;
    *&v7[6] = a3;
    [(MKOverlayPathRenderer *)v4 _animateVectorGeometryIfNecessaryForKey:@"strokeStart" withStepHandler:v7];
  }

  objc_sync_exit(v4);
}

- (double)_strokeEnd
{
  v2 = self;
  objc_sync_enter(v2);
  strokeEnd = v2->_strokeEnd;
  objc_sync_exit(v2);

  return strokeEnd;
}

- (double)_strokeStart
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
  v5 = [(MKMultiPolylineRenderer *)self multiPolyline];
  [v4 encodeObject:v5 forKey:@"MKMultiPolylinePolyline"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [v4 encodeObject:v6 forKey:@"MKMultiPolylineRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [v4 encodeObject:v7 forKey:@"MKMultiPolylineRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:v4];
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolylineRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolylineRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKMultiPolylineRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:v4];
}

- (MKMultiPolylineRenderer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolylinePolyline"];
  v6 = [(MKMultiPolylineRenderer *)self initWithMultiPolyline:v5];
  v7 = v6;
  if (v6)
  {
    [(MKMultiPolylineRenderer *)v6 _decodePropertiesWithCoder:v4];
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