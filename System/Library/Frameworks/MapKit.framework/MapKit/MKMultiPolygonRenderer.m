@interface MKMultiPolygonRenderer
- (BOOL)_canProvideVectorGeometry;
- (MKMultiPolygonRenderer)initWithCoder:(id)a3;
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
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fillPath:(CGPath *)a3 inContext:(CGContext *)a4;
- (void)setAlpha:(double)a3;
- (void)setFillColor:(id)a3;
- (void)setLineJoin:(int)a3;
- (void)setLineWidth:(double)a3;
- (void)setMiterLimit:(double)a3;
- (void)setStrokeColor:(id)a3;
- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4;
@end

@implementation MKMultiPolygonRenderer

- (void)_updateRenderColors
{
  if (self->_vectorData)
  {
    v3 = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__MKMultiPolygonRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [v3 _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKMultiPolygonRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

void __45__MKMultiPolygonRenderer__updateRenderColors__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fillColor];
  [*(*(a1 + 32) + 224) setFillColor:{objc_msgSend(v2, "CGColor")}];

  v4 = [*(a1 + 32) strokeColor];
  v3 = v4;
  [*(*(a1 + 32) + 224) setStrokeColor:{objc_msgSend(v4, "CGColor")}];
}

- (id)vectorDataForOverlay:(id)a3
{
  if ([(MKMultiPolygonRenderer *)self _canProvideVectorGeometry])
  {
    v4 = [(MKMultiPolygonRenderer *)self _vectorGeometry];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_vectorGeometry
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_vectorData && [(MKMultiPolygonRenderer *)self _canProvideVectorGeometry])
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [(MKOverlayRenderer *)self overlay];
    v5 = [v4 polygons];
    v6 = [v3 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(MKOverlayRenderer *)self overlay];
    v8 = [v7 polygons];

    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [objc_alloc(MEMORY[0x1E69DF4C8]) initWithMapPoints:objc_msgSend(*(*(&v22 + 1) + 8 * i) count:{"points"), objc_msgSend(*(*(&v22 + 1) + 8 * i), "pointCount")}];
          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v14 = [objc_alloc(MEMORY[0x1E69DF4D0]) initWithPolygons:v6];
    vectorData = self->_vectorData;
    self->_vectorData = v14;

    [(MKOverlayPathRenderer *)self lineWidth];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineWidth:?];
    v16 = [(MKOverlayPathRenderer *)self lineJoin];
    if (v16 == kCGLineJoinBevel)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2 * (v16 == kCGLineJoinMiter);
    }

    [(VKVectorOverlayPolygonGroup *)self->_vectorData setLineJoin:v17];
    v18 = [(MKOverlayPathRenderer *)self fillColor];
    -[VKVectorOverlayPolygonGroup setFillColor:](self->_vectorData, "setFillColor:", [v18 CGColor]);

    v19 = [(MKOverlayPathRenderer *)self strokeColor];
    -[VKVectorOverlayPolygonGroup setStrokeColor:](self->_vectorData, "setStrokeColor:", [v19 CGColor]);

    [(MKOverlayRenderer *)self alpha];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setAlpha:?];
    [(MKOverlayPathRenderer *)self miterLimit];
    [(VKVectorOverlayPolygonGroup *)self->_vectorData setMiterLimit:?];
  }

  v20 = self->_vectorData;

  return v20;
}

- (BOOL)_canProvideVectorGeometry
{
  v21 = *MEMORY[0x1E69E9840];
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

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MKOverlayRenderer *)self overlay];
  v6 = [v5 polygons];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (![*(*(&v16 + 1) + 8 * v10) _isSimple])
        {

          return 0;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = [(MKOverlayPathRenderer *)self strokeColor];
  Pattern = CGColorGetPattern([v11 CGColor]);

  if (Pattern)
  {
    return 0;
  }

  v13 = [(MKOverlayPathRenderer *)self fillColor];
  v14 = CGColorGetPattern([v13 CGColor]);

  return !v14 && self->_strokeStart <= 0.0 && self->_strokeEnd >= 1.0;
}

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = MKMultiPolygonRenderer;
  [(MKOverlayRenderer *)&v7 setAlpha:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MKMultiPolygonRenderer_setAlpha___block_invoke;
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
  v15.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v15 setStrokeColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__MKMultiPolygonRenderer_setStrokeColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"strokeColor" withStepHandler:v11];
}

void __41__MKMultiPolygonRenderer_setStrokeColor___block_invoke(uint64_t a1, float a2)
{
  v3 = [*(a1 + 32) _mapkit_blendedColorWithFraction:*(a1 + 40) ofColor:a2];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v6 = v4;

  v5 = v6;
  [*(*(a1 + 48) + 224) setStrokeColor:{objc_msgSend(v6, "CGColor")}];
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
  v15.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v15 setFillColor:v4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__MKMultiPolygonRenderer_setFillColor___block_invoke;
  v11[3] = &unk_1E76CCF90;
  v12 = v8;
  v13 = v4;
  v14 = self;
  v9 = v4;
  v10 = v8;
  [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"fillColor" withStepHandler:v11];
}

void __39__MKMultiPolygonRenderer_setFillColor___block_invoke(uint64_t a1, float a2)
{
  v3 = [*(a1 + 32) _mapkit_blendedColorWithFraction:*(a1 + 40) ofColor:a2];
  v4 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
  }

  v6 = v4;

  v5 = v6;
  [*(*(a1 + 48) + 224) setFillColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)setMiterLimit:(double)a3
{
  v5.receiver = self;
  v5.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v5 setMiterLimit:?];
  [(VKVectorOverlayPolygonGroup *)self->_vectorData setMiterLimit:a3];
}

- (void)setLineJoin:(int)a3
{
  v5 = a3 == 0;
  v7.receiver = self;
  v7.super_class = MKMultiPolygonRenderer;
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
  v7.super_class = MKMultiPolygonRenderer;
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
    v6[2] = __39__MKMultiPolygonRenderer_setLineWidth___block_invoke;
    v6[3] = &unk_1E76CD230;
    v6[4] = self;
    *&v6[5] = v5;
    *&v6[6] = a3;
    [(MKOverlayPathRenderer *)self _animateVectorGeometryIfNecessaryForKey:@"lineWidth" withStepHandler:v6];
  }
}

- (void)_setStrokeEnd:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (vabdd_f64(a3, obj->_strokeEnd) >= 0.00000011920929)
  {
    [(MKMultiPolygonRenderer *)obj willChangeValueForKey:@"strokeEnd"];
    obj->_strokeEnd = a3;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKMultiPolygonRenderer *)obj didChangeValueForKey:@"strokeEnd"];
  }

  objc_sync_exit(obj);
}

- (void)_setStrokeStart:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (vabdd_f64(a3, obj->_strokeStart) >= 0.00000011920929)
  {
    [(MKMultiPolygonRenderer *)obj willChangeValueForKey:@"strokeStart"];
    obj->_strokeStart = a3;
    v4 = [(MKOverlayRenderer *)obj _renderer];
    [v4 setNeedsDisplayForReason:2];

    [(MKMultiPolygonRenderer *)obj didChangeValueForKey:@"strokeStart"];
  }

  objc_sync_exit(obj);
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

- (void)strokePath:(CGPath *)a3 inContext:(CGContext *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = [(MKOverlayPathRenderer *)self strokeColor];

  if (a3 && v6)
  {
    [(MKMultiPolygonRenderer *)self _strokeStart];
    v8 = v7;
    [(MKMultiPolygonRenderer *)self _strokeEnd];
    v10 = v9;
    if (v8 > 0.0 || v9 < 1.0)
    {
      CGContextGetLineWidth();
      v12 = v11;
      LineCap = CGContextGetLineCap();
      LineJoin = CGContextGetLineJoin();
      CGContextGetMiterLimit();
      v16 = v15;
      [(MKOverlayRenderer *)self _originMapPoint];
      v18 = v17;
      v20 = v19;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = [(MKOverlayRenderer *)self overlay];
      obj = [v21 polygons];

      v39 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v39)
      {
        v38 = *v46;
        if (v8 <= 0.0)
        {
          v22 = LineCap;
        }

        else
        {
          v22 = kCGLineCapButt;
        }

        if (v10 < 1.0)
        {
          LineCap = kCGLineCapButt;
        }

        do
        {
          v23 = 0;
          do
          {
            if (*v46 != v38)
            {
              v24 = v23;
              objc_enumerationMutation(obj);
              v23 = v24;
            }

            v40 = v23;
            v25 = *(*(&v45 + 1) + 8 * v23);
            StrokeClipPathForPolygon = _MKPolygonRendererCreateStrokeClipPathForPolygon(v25, v18, v20, v8, v10);
            v27 = StrokeClipPathForPolygon;
            if (StrokeClipPathForPolygon)
            {
              CopyByStrokingPath = CGPathCreateCopyByStrokingPath(StrokeClipPathForPolygon, 0, v12, kCGLineCapButt, LineJoin, v16);
              CGContextAddPath(a4, CopyByStrokingPath);
              CGPathRelease(v27);
              CGPathRelease(CopyByStrokingPath);
            }

            v29 = [v25 interiorPolygons];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v30 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v30)
            {
              v31 = *v42;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v42 != v31)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v33 = _MKPolygonRendererCreateStrokeClipPathForPolygon(*(*(&v41 + 1) + 8 * i), v18, v20, v8, v10);
                  v34 = v33;
                  if (v33)
                  {
                    v35 = _MKCGPathCreateCopyByStrokingPath(v33, v22, LineCap, LineJoin, v12, v16);
                    CGContextAddPath(a4, v35);
                    CGPathRelease(v34);
                    CGPathRelease(v35);
                  }
                }

                v30 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
              }

              while (v30);
            }

            v23 = v40 + 1;
          }

          while (v40 + 1 != v39);
          v39 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v39);
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
  if (!self->_paths)
  {
    v10.receiver = self;
    v10.super_class = MKMultiPolygonRenderer;
    [(MKOverlayPathRenderer *)&v10 fillPath:a3 inContext:a4];
  }

  v6 = [(MKOverlayPathRenderer *)self fillColor];

  if (v6)
  {
    pathsCount = self->_pathsCount;
    if (pathsCount)
    {
      for (i = 0; i < pathsCount; ++i)
      {
        v9 = self->_paths[i];
        if (v9)
        {
          CGContextSaveGState(a4);
          CGContextBeginPath(a4);
          CGContextAddPath(a4, v9);
          CGContextDrawPath(a4, kCGPathEOFill);
          CGContextRestoreGState(a4);
          pathsCount = self->_pathsCount;
        }
      }
    }
  }
}

- (void)createPath
{
  v36 = *MEMORY[0x1E69E9840];
  [(MKOverlayRenderer *)self _originMapPoint];
  v4 = v3;
  v6 = v5;
  v7 = [(MKOverlayRenderer *)self overlay];
  v8 = [v7 polygons];
  v29 = malloc_type_malloc(8 * [v8 count], 0x6004044C4A2DFuLL);

  Mutable = CGPathCreateMutable();
  v9 = [(MKOverlayRenderer *)self overlay];
  v10 = [v9 polygons];
  v11 = [v10 count];

  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [(MKOverlayRenderer *)self overlay];
      v14 = [v13 polygons];
      v15 = [v14 objectAtIndexedSubscript:v12];

      v16 = CGPathCreateMutable();
      _AddPathForPolygon(v16, v15, v4, v6);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = [v15 interiorPolygons];
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          v21 = 0;
          do
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v31 + 1) + 8 * v21);
            if ([v22 pointCount] > 2)
            {
              v23 = CGPathCreateMutable();
              _AddPathForPolygon(v23, v22, v4, v6);

              if (v23)
              {
                CGPathAddPath(v16, 0, v23);
                CGPathRelease(v23);
              }
            }

            else
            {
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v19);
      }

      v29[v12] = v16;
      CGPathAddPath(Mutable, 0, v16);

      ++v12;
      v24 = [(MKOverlayRenderer *)self overlay];
      v25 = [v24 polygons];
      v26 = [v25 count];
    }

    while (v12 < v26);
  }

  self->_paths = v29;
  v27 = [(MKOverlayRenderer *)self overlay];
  v28 = [v27 polygons];
  self->_pathsCount = [v28 count];

  [(MKOverlayPathRenderer *)self setPath:Mutable];
  CGPathRelease(Mutable);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MKMultiPolygonRenderer *)self multiPolygon];
  [v4 encodeObject:v5 forKey:@"MKMultiPolygonPolygon"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeStart];
  [v4 encodeObject:v6 forKey:@"MKMultiPolygonRendererStrokeStart"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_strokeEnd];
  [v4 encodeObject:v7 forKey:@"MKMultiPolygonRendererStrokeEnd"];

  v8.receiver = self;
  v8.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v8 _encodePropertiesWithCoder:v4];
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolygonRendererStrokeStart"];
  v6 = v5;
  if (v5)
  {
    [v5 doubleValue];
    self->_strokeStart = v7;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolygonRendererStrokeEnd"];
  v9 = v8;
  if (v8)
  {
    [v8 doubleValue];
    self->_strokeEnd = v10;
  }

  v11.receiver = self;
  v11.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v11 _decodePropertiesWithCoder:v4];
}

- (MKMultiPolygonRenderer)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MKMultiPolygonPolygon"];
  v6 = [(MKMultiPolygonRenderer *)self initWithMultiPolygon:v5];
  v7 = v6;
  if (v6)
  {
    [(MKMultiPolygonRenderer *)v6 _decodePropertiesWithCoder:v4];
  }

  return v7;
}

- (void)dealloc
{
  paths = self->_paths;
  if (paths)
  {
    if (self->_pathsCount)
    {
      v4 = 0;
      do
      {
        CGPathRelease(self->_paths[v4++]);
      }

      while (v4 < self->_pathsCount);
      paths = self->_paths;
    }

    free(paths);
  }

  v5.receiver = self;
  v5.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v5 dealloc];
}

- (void)_performInitialConfiguration
{
  v3.receiver = self;
  v3.super_class = MKMultiPolygonRenderer;
  [(MKOverlayPathRenderer *)&v3 _performInitialConfiguration];
  self->_strokeStart = 0.0;
  self->_strokeEnd = 1.0;
}

@end