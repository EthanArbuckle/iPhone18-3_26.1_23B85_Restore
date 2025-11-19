@interface MKOverlayRenderer
- ($9433BFB5400FDC760880D1BFD6845728)_boundingMapRect;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_originMapPoint;
- (BOOL)_canPossiblyDrawMapRect:(id)a3 zoomScale:(double)a4;
- (BOOL)_mayExtendOutsideBounds;
- (BOOL)canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
- (BOOL)overlay:(id)a3 canDrawKey:(id *)a4;
- (BOOL)overlay:(id)a3 canPossiblyDrawKey:(id *)a4;
- (CGPoint)pointForMapPoint:(MKMapPoint)mapPoint;
- (CGRect)rectForMapRect:(MKMapRect)mapRect;
- (MKMapPoint)mapPointForPoint:(CGPoint)point;
- (MKMapRect)mapRectForRect:(CGRect)rect;
- (MKOverlayRenderer)initWithOverlay:(id)overlay;
- (id)_mapView;
- (int64_t)_extendedBlendMode;
- (void)_animateIfNecessaryForKey:(id)a3 withStepHandler:(id)a4;
- (void)_decodePropertiesWithCoder:(id)a3;
- (void)_encodePropertiesWithCoder:(id)a3;
- (void)_forEachMapRectForKey:(id *)a3 withContext:(CGContext *)a4 performBlock:(id)a5;
- (void)_setExtendedBlendMode:(int64_t)a3;
- (void)_setMapView:(id)a3;
- (void)dealloc;
- (void)overlay:(id)a3 drawKey:(id *)a4 inContext:(CGContext *)a5;
- (void)setAlpha:(CGFloat)alpha;
- (void)setBlendMode:(CGBlendMode)blendMode;
- (void)setNeedsDisplayInMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
- (void)set_renderer:(id)a3;
@end

@implementation MKOverlayRenderer

- (BOOL)_canPossiblyDrawMapRect:(id)a3 zoomScale:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v6 = a3.var0.var1;
  v7 = a3.var0.var0;
  [(MKOverlayRenderer *)self _boundingMapRect:a3.var0.var0];
  v12 = v7;
  v13 = v6;
  v14 = var0;
  v15 = var1;

  return MKMapRectIntersectsRect(*&v8, *&v12);
}

- (BOOL)canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale
{
  height = mapRect.size.height;
  width = mapRect.size.width;
  y = mapRect.origin.y;
  x = mapRect.origin.x;
  v8 = [(MKOverlayRenderer *)self overlay:mapRect.origin.x];
  [v8 boundingMapRect];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = MKMapRectIntersectsRect(v11, v12);

  return v9;
}

- (void)overlay:(id)a3 drawKey:(id *)a4 inContext:(CGContext *)a5
{
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  CGContextGetBaseCTM();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = 0u;
  v13 = 0u;
  v11[2] = __47__MKOverlayRenderer_overlay_drawKey_inContext___block_invoke;
  v11[3] = &unk_1E76CCE90;
  v11[4] = self;
  v11[5] = a4;
  v11[6] = a5;
  v14 = 0u;
  v8 = MEMORY[0x1A58E9F30](v11);
  v9 = [(MKOverlayRenderer *)self _mapView];
  v10 = v9;
  if (v9)
  {
    [v9 _withEffectiveTraitCollection:v8];
  }

  else
  {
    v8[2](v8);
  }
}

uint64_t __47__MKOverlayRenderer_overlay_drawKey_inContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __47__MKOverlayRenderer_overlay_drawKey_inContext___block_invoke_2;
  v9 = &unk_1E76CCE68;
  v11 = v3;
  v12 = v1;
  v10 = v2;
  v4 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v4;
  v15 = *(a1 + 88);
  return [v2 _forEachMapRectForKey:? withContext:? performBlock:?];
}

void __47__MKOverlayRenderer_overlay_drawKey_inContext___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  CGContextSaveGState(*(a1 + 40));
  v10 = 1.0 / exp2((21 - (*(*(a1 + 48) + 12) + *(*(a1 + 48) + 8))));
  [*(a1 + 32) rectForMapRect:{a2, a3, a4, a5}];
  v12 = -(v11 * v10);
  v14 = -(v13 * v10);
  CGContextTranslateCTM(*(a1 + 40), v12, v14);
  CGContextScaleCTM(*(a1 + 40), v10, v10);
  v15 = *(a1 + 72);
  *&v21.a = *(a1 + 56);
  *&v21.c = v15;
  *&v21.tx = *(a1 + 88);
  v16 = *(a1 + 72);
  *&v20.a = *(a1 + 56);
  *&v20.c = v16;
  *&v20.tx = *(a1 + 88);
  CGAffineTransformTranslate(&v21, &v20, v12, v14);
  v19 = v21;
  CGAffineTransformScale(&v20, &v19, v10, v10);
  v21 = v20;
  CGContextSetBaseCTM();
  v17 = *(a1 + 40);
  [*(a1 + 32) alpha];
  CGContextSetAlpha(v17, v18);
  [*(a1 + 32) drawMapRect:*(a1 + 40) zoomScale:a2 inContext:{a3, a4, a5, v10}];
  CGContextRestoreGState(*(a1 + 40));
}

- (BOOL)overlay:(id)a3 canDrawKey:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = exp2((21 - (a4->var3 + a4->var2)));
  objc_opt_class();
  v8 = 1.0 / v7;
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(MKOverlayRenderer *)self lineWidth], v10 = v9 / v8, v10 == 0.0))
  {
    v11 = vcvtmd_s64_f64(log2(v8) + 0.5);
    if (v11 >= -21)
    {
      v12 = (v11 & (v11 >> 63)) + 21;
    }

    else
    {
      v12 = 0;
    }

    v10 = dbl_1A30F7B28[v12] / v8;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__MKOverlayRenderer_overlay_canDrawKey___block_invoke;
  v15[3] = &unk_1E76CCE40;
  *&v15[6] = v10;
  *&v15[7] = v8;
  v15[4] = self;
  v15[5] = &v16;
  v15[8] = a4;
  [(MKOverlayRenderer *)self _forEachMapRectForKey:a4 withContext:0 performBlock:v15];
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v13;
}

uint64_t __40__MKOverlayRenderer_overlay_canDrawKey___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = INFINITY;
  v11 = a2 == INFINITY && a3 == INFINITY;
  v12 = INFINITY;
  v13 = a4;
  v14 = a5;
  if (!v11)
  {
    v15 = *(a1 + 48);
    v12 = a2 - v15;
    v10 = a3 - v15;
    v13 = a4 + v15 * 2.0;
    v14 = a5 + v15 * 2.0;
  }

  result = [*(a1 + 32) _canPossiblyDrawMapRect:v12 zoomScale:{v10, v13, v14, *(a1 + 56)}];
  if (result)
  {
    if ([*(a1 + 32) _mayExtendOutsideBounds])
    {
      if (_MKLinkedOnOrAfterReleaseSet(2567))
      {
        for (i = -1; i != 2; ++i)
        {
          for (j = -1; j != 2; ++j)
          {
            result = [*(a1 + 32) canDrawMapRect:a2 + i * a4 zoomScale:{a3 + j * a5, a4, a5, *(a1 + 56)}];
            if (result)
            {
              *(*(*(a1 + 40) + 8) + 24) = 1;
            }
          }
        }

        return result;
      }

      result = [*(a1 + 32) canDrawMapRect:v12 zoomScale:{v10, v13, v14, *(a1 + 56)}];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = [*(a1 + 32) canDrawMapRect:a2 zoomScale:{a3, a4, a5, (1.0 / exp2((21 - (*(*(a1 + 64) + 12) + *(*(a1 + 64) + 8)))))}];
      if (!result)
      {
        return result;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)overlay:(id)a3 canPossiblyDrawKey:(id *)a4
{
  v6 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MKOverlayRenderer_overlay_canPossiblyDrawKey___block_invoke;
  v8[3] = &unk_1E76CCE18;
  v8[5] = &v9;
  v8[6] = a4;
  v8[4] = self;
  [(MKOverlayRenderer *)self _forEachMapRectForKey:a4 withContext:0 performBlock:v8];
  LOBYTE(a4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return a4;
}

uint64_t __48__MKOverlayRenderer_overlay_canPossiblyDrawKey___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if ([*(a1 + 32) _mayExtendOutsideBounds])
  {
    v10 = a2 == INFINITY && a3 == INFINITY;
    a2 = v10 ? INFINITY : a2 - a4;
    a3 = v10 ? INFINITY : a3 - a5;
    if (!v10)
    {
      a4 = a4 + a4 * 2.0;
      a5 = a5 + a5 * 2.0;
    }
  }

  result = [*(a1 + 32) _canPossiblyDrawMapRect:a2 zoomScale:{a3, a4, a5, (1.0 / exp2((21 - (*(*(a1 + 48) + 12) + *(*(a1 + 48) + 8)))))}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_forEachMapRectForKey:(id *)a3 withContext:(CGContext *)a4 performBlock:(id)a5
{
  v7 = a5;
  [(MKOverlayRenderer *)self _boundingMapRect];
  v9 = v8;
  v11 = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __68__MKOverlayRenderer__forEachMapRectForKey_withContext_performBlock___block_invoke;
  v18 = &unk_1E76CCDF0;
  v20 = a3;
  v21 = a4;
  v12 = v7;
  v19 = v12;
  LODWORD(a3) = vcvtmd_s64_f64(v9 * 0.0000000037252903);
  v14 = vcvtpd_s64_f64((v9 + v11) * 0.0000000037252903);
  if (a3 + 1 > v14)
  {
    v15 = a3 + 1;
  }

  else
  {
    v15 = v14;
  }

  do
  {
    v17(v16, a3);
    a3 = (a3 + 1);
  }

  while (v15 != a3);
}

void __68__MKOverlayRenderer__forEachMapRectForKey_withContext_performBlock___block_invoke(uint64_t a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = v3[2];
  v5 = 268435456.0 / (1 << v4);
  v6 = v5 * (*v3 + (a2 << v4));
  v7 = v5 * v3[1];
  if (_MKLinkedOnOrAfterReleaseSet(2310))
  {
    v12 = *(*(a1 + 32) + 16);
    v8.n128_f64[0] = v6;
    v9.n128_f64[0] = v7;
    v10.n128_f64[0] = v5;
    v11.n128_f64[0] = v5;

    v12(v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
    *v26 = v6;
    *&v26[1] = v7;
    *&v26[2] = v5 * 0.5;
    *&v26[3] = v5 * 0.5;
    v27 = v5 * 0.5 + v6;
    v28 = v7;
    v29 = v5 * 0.5;
    v30 = v5 * 0.5;
    v31 = v6;
    v32 = v5 * 0.5 + v7;
    v33 = v5 * 0.5;
    v34 = v5 * 0.5;
    v35 = v27;
    v36 = v32;
    v37 = v5 * 0.5;
    v38 = v5 * 0.5;
    v24[0] = 0;
    v24[1] = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v25[0] = _Q0;
    v25[1] = xmmword_1A30F6ED0;
    v25[2] = _Q0;
    v25[3] = xmmword_1A30F6EE0;
    v25[4] = _Q0;
    v25[5] = _Q0;
    v25[6] = _Q0;
    do
    {
      v19 = *(a1 + 48);
      if (v19)
      {
        CGContextSaveGState(v19);
        ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 48));
        width = ClipBoundingBox.size.width;
        height = ClipBoundingBox.size.height;
        v22 = *&v24[v13 / 8];
        v23 = *&v24[v13 / 8 + 1];
        CGContextTranslateCTM(*(a1 + 48), ClipBoundingBox.size.width * v22, ClipBoundingBox.size.height * v23);
        v42.size.width = width * *&v24[v13 / 8 + 2];
        v42.size.height = height * *(&v25[v13 / 0x10] + 1);
        v42.origin.x = 0.0;
        v42.origin.y = 0.0;
        CGContextClipToRect(*(a1 + 48), v42);
        (*(*(a1 + 32) + 16))(*&v26[v13 / 8], *&v26[v13 / 8 + 1], *&v26[v13 / 8 + 2], *&v26[v13 / 8 + 3]);
        CGContextTranslateCTM(*(a1 + 48), -(width * v22), -(height * v23));
        CGContextRestoreGState(*(a1 + 48));
      }

      else
      {
        (*(*(a1 + 32) + 16))(*&v26[v13 / 8], *&v26[v13 / 8 + 1], *&v26[v13 / 8 + 2], *&v26[v13 / 8 + 3]);
      }

      v13 += 32;
    }

    while (v13 != 128);
  }
}

- (BOOL)_mayExtendOutsideBounds
{
  if (_mayExtendOutsideBounds_once_39530 != -1)
  {
    dispatch_once(&_mayExtendOutsideBounds_once_39530, &__block_literal_global_39531);
  }

  return _mayExtendOutsideBounds_tiboOrLater_39532;
}

BOOL __44__MKOverlayRenderer__mayExtendOutsideBounds__block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(1540);
  _mayExtendOutsideBounds_tiboOrLater_39532 = result;
  return result;
}

- ($9433BFB5400FDC760880D1BFD6845728)_boundingMapRect
{
  x = self->_boundingMapRect.origin.x;
  y = self->_boundingMapRect.origin.y;
  width = self->_boundingMapRect.size.width;
  height = self->_boundingMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)setNeedsDisplayInMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale
{
  v7 = mapRect;
  renderer = self->_renderer;
  v5 = vcvtmd_s64_f64(log2(zoomScale) + 0.5);
  if (v5 >= -21)
  {
    v6 = v5 + 19;
  }

  else
  {
    v6 = -2;
  }

  [(VKOverlay *)renderer setNeedsDisplayInRect:&v7 level:v6 reason:1];
}

- (MKMapRect)mapRectForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(MKOverlayRenderer *)self _originMapPoint];
  v8 = x + v7;
  v10 = y + v9;
  if (x == INFINITY && y == INFINITY)
  {
    v8 = x;
    v10 = y;
  }

  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (CGRect)rectForMapRect:(MKMapRect)mapRect
{
  height = mapRect.size.height;
  width = mapRect.size.width;
  y = mapRect.origin.y;
  x = mapRect.origin.x;
  [(MKOverlayRenderer *)self _originMapPoint];
  v8 = x - v7;
  v10 = y - v9;
  if (x == INFINITY && y == INFINITY)
  {
    v8 = x;
    v10 = y;
  }

  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (MKMapPoint)mapPointForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(MKOverlayRenderer *)self _originMapPoint];
  v6 = x + v5;
  v8 = y + v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (CGPoint)pointForMapPoint:(MKMapPoint)mapPoint
{
  y = mapPoint.y;
  x = mapPoint.x;
  [(MKOverlayRenderer *)self _originMapPoint];
  v6 = x - v5;
  v8 = y - v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (void)_setMapView:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MKOverlayRenderer__setMapView___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

- (id)_mapView
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__39534;
  v10 = __Block_byref_object_dispose__39535;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__MKOverlayRenderer__mapView__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__MKOverlayRenderer__mapView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)_encodePropertiesWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  alpha = self->_alpha;
  v6 = a3;
  v7 = [v4 numberWithDouble:alpha];
  [v6 encodeObject:v7 forKey:@"MKOverlayRendererAlpha"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_blendMode];
  [v6 encodeObject:v8 forKey:@"MKOverlayRendererBlendMode"];
}

- (void)_decodePropertiesWithCoder:(id)a3
{
  v9 = a3;
  v4 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayRendererAlpha"];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    self->_alpha = v6;
  }

  v7 = [v9 decodeObjectOfClass:objc_opt_class() forKey:@"MKOverlayRendererBlendMode"];
  v8 = v7;
  if (v7)
  {
    self->_blendMode = [v7 integerValue];
  }
}

- (void)_animateIfNecessaryForKey:(id)a3 withStepHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MKOverlayRenderer *)self _mapView];
  v9 = [v8 _mapLayer];
  if (v9)
  {
    os_unfair_lock_lock(&self->_runningAnimationsLock);
    v10 = [(NSMutableDictionary *)self->_runningAnimations objectForKey:v6];
    [(NSMutableDictionary *)self->_runningAnimations removeObjectForKey:v6];
    v11 = [MEMORY[0x1E69DF4A0] animationMatchingCurrentAnimationParametersWithName:v6];
    if (v11)
    {
      runningAnimations = self->_runningAnimations;
      if (!runningAnimations)
      {
        v13 = [MEMORY[0x1E695DF90] dictionary];
        v14 = self->_runningAnimations;
        self->_runningAnimations = v13;

        runningAnimations = self->_runningAnimations;
      }

      [(NSMutableDictionary *)runningAnimations setObject:v11 forKey:v6];
      [v11 setStepHandler:v7];
      objc_initWeak(&location, v11);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __63__MKOverlayRenderer__animateIfNecessaryForKey_withStepHandler___block_invoke;
      v18 = &unk_1E76CCDC8;
      v19 = self;
      v20 = v6;
      objc_copyWeak(&v21, &location);
      [v11 setCompletionHandler:&v15];
      objc_destroyWeak(&v21);

      objc_destroyWeak(&location);
      os_unfair_lock_unlock(&self->_runningAnimationsLock);
      [v10 stop];
      [v9 runAnimation:v11];
    }

    else
    {
      os_unfair_lock_unlock(&self->_runningAnimationsLock);
      [v10 stop];
      v7[2](v7, 1.0);
    }
  }

  else
  {
    v7[2](v7, 1.0);
  }
}

void __63__MKOverlayRenderer__animateIfNecessaryForKey_withStepHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v3 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (v3 == WeakRetained)
  {
    [*(*(a1 + 32) + 88) removeObjectForKey:*(a1 + 40)];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 80));
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_originMapPoint
{
  x = self->_boundingMapRect.origin.x;
  y = self->_boundingMapRect.origin.y;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (void)set_renderer:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_renderer, a3);
  v5 = self->_blendMode - 1;
  if (v5 > 0x1A)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1A30F7BD8[v5];
  }

  [(VKOverlay *)self->_renderer setBlendMode:v6];
}

- (int64_t)_extendedBlendMode
{
  if (self->_blendMode == 26)
  {
    return 1000;
  }

  else
  {
    return 0;
  }
}

- (void)_setExtendedBlendMode:(int64_t)a3
{
  if (a3 == 1000)
  {
    v3 = 26;
  }

  else
  {
    v3 = 0;
  }

  self->_blendMode = v3;
  [(VKOverlay *)self->_renderer setBlendMode:16 * (a3 == 1000)];
}

- (void)setBlendMode:(CGBlendMode)blendMode
{
  if (self->_blendMode != blendMode)
  {
    [(MKOverlayRenderer *)self willChangeValueForKey:@"blendMode"];
    self->_blendMode = blendMode;
    if ((blendMode - 1) > 0x1A)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_1A30F7BD8[blendMode - 1];
    }

    [(VKOverlay *)self->_renderer setBlendMode:v6];

    [(MKOverlayRenderer *)self didChangeValueForKey:@"blendMode"];
  }
}

- (void)setAlpha:(CGFloat)alpha
{
  if (vabdd_f64(alpha, self->_alpha) >= 0.00000011920929)
  {
    [(MKOverlayRenderer *)self willChangeValueForKey:@"alpha"];
    self->_alpha = alpha;
    [(VKOverlay *)self->_renderer setNeedsDisplayForReason:2];

    [(MKOverlayRenderer *)self didChangeValueForKey:@"alpha"];
  }
}

- (MKOverlayRenderer)initWithOverlay:(id)overlay
{
  v5 = overlay;
  v16.receiver = self;
  v16.super_class = MKOverlayRenderer;
  v6 = [(MKOverlayRenderer *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_alpha = 1.0;
    v6->_contentScaleFactor = 1.0;
    objc_storeStrong(&v6->_overlay, overlay);
    [v5 boundingMapRect];
    v7->_boundingMapRect.origin.x = v8;
    v7->_boundingMapRect.origin.y = v9;
    v7->_boundingMapRect.size.width = v10;
    v7->_boundingMapRect.size.height = v11;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.MapKit.MKOverlayRenderer.isolation", v12);
    isolationQueue = v7->_isolationQueue;
    v7->_isolationQueue = v13;

    v7->_runningAnimationsLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(VKOverlay *)self->_renderer setDelegate:0];
  v3.receiver = self;
  v3.super_class = MKOverlayRenderer;
  [(MKOverlayRenderer *)&v3 dealloc];
}

@end