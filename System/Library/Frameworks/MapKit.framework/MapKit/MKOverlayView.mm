@interface MKOverlayView
- ($9433BFB5400FDC760880D1BFD6845728)_boundingMapRect;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_originMapPoint;
- (BOOL)_canPossiblyDrawMapRect:(id)rect zoomScale:(double)scale;
- (BOOL)_mayExtendOutsideBounds;
- (BOOL)canDrawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
- (BOOL)overlay:(id)overlay canDrawKey:(id *)key;
- (BOOL)overlay:(id)overlay canPossiblyDrawKey:(id *)key;
- (CGPoint)pointForMapPoint:(MKMapPoint)mapPoint;
- (CGRect)rectForMapRect:(MKMapRect)mapRect;
- (MKMapPoint)mapPointForPoint:(CGPoint)point;
- (MKMapRect)mapRectForRect:(CGRect)rect;
- (MKOverlayView)initWithFrame:(CGRect)frame;
- (MKOverlayView)initWithOverlay:(id)overlay;
- (id)_mapView;
- (void)_forEachMapRectForKey:(id *)key withContext:(CGContext *)context performBlock:(id)block;
- (void)_setMapView:(id)view;
- (void)dealloc;
- (void)overlay:(id)overlay drawKey:(id *)key inContext:(CGContext *)context;
- (void)setNeedsDisplayInMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale;
- (void)setNeedsDisplayInRect:(CGRect)rect;
@end

@implementation MKOverlayView

- (BOOL)_canPossiblyDrawMapRect:(id)rect zoomScale:(double)scale
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v6 = rect.var0.var1;
  v7 = rect.var0.var0;
  [(MKOverlayView *)self _boundingMapRect:rect.var0.var0];
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
  v8 = [(MKOverlayView *)self overlay:mapRect.origin.x];
  [v8 boundingMapRect];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = MKMapRectIntersectsRect(v11, v12);

  return v9;
}

- (void)overlay:(id)overlay drawKey:(id *)key inContext:(CGContext *)context
{
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  CGContextGetBaseCTM();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = 0u;
  v13 = 0u;
  v11[2] = __43__MKOverlayView_overlay_drawKey_inContext___block_invoke;
  v11[3] = &unk_1E76CCE90;
  v11[4] = self;
  v11[5] = key;
  v11[6] = context;
  v14 = 0u;
  v8 = MEMORY[0x1A58E9F30](v11);
  _mapView = [(MKOverlayView *)self _mapView];
  v10 = _mapView;
  if (_mapView)
  {
    [_mapView _withEffectiveTraitCollection:v8];
  }

  else
  {
    v8[2](v8);
  }
}

uint64_t __43__MKOverlayView_overlay_drawKey_inContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __43__MKOverlayView_overlay_drawKey_inContext___block_invoke_2;
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

void __43__MKOverlayView_overlay_drawKey_inContext___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
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

- (BOOL)overlay:(id)overlay canDrawKey:(id *)key
{
  overlayCopy = overlay;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = exp2((21 - (key->var3 + key->var2)));
  objc_opt_class();
  v8 = 1.0 / v7;
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(MKOverlayView *)self lineWidth], v10 = v9 / v8, v10 == 0.0))
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
  v15[2] = __36__MKOverlayView_overlay_canDrawKey___block_invoke;
  v15[3] = &unk_1E76CCE40;
  *&v15[6] = v10;
  *&v15[7] = v8;
  v15[4] = self;
  v15[5] = &v16;
  v15[8] = key;
  [(MKOverlayView *)self _forEachMapRectForKey:key withContext:0 performBlock:v15];
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v13;
}

uint64_t __36__MKOverlayView_overlay_canDrawKey___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
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

- (BOOL)overlay:(id)overlay canPossiblyDrawKey:(id *)key
{
  overlayCopy = overlay;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__MKOverlayView_overlay_canPossiblyDrawKey___block_invoke;
  v8[3] = &unk_1E76CCE18;
  v8[5] = &v9;
  v8[6] = key;
  v8[4] = self;
  [(MKOverlayView *)self _forEachMapRectForKey:key withContext:0 performBlock:v8];
  LOBYTE(key) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return key;
}

uint64_t __44__MKOverlayView_overlay_canPossiblyDrawKey___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
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

- (void)_forEachMapRectForKey:(id *)key withContext:(CGContext *)context performBlock:(id)block
{
  blockCopy = block;
  [(MKOverlayView *)self _boundingMapRect];
  v9 = v8;
  v11 = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __64__MKOverlayView__forEachMapRectForKey_withContext_performBlock___block_invoke;
  v18 = &unk_1E76CCDF0;
  keyCopy = key;
  contextCopy = context;
  v12 = blockCopy;
  v19 = v12;
  LODWORD(key) = vcvtmd_s64_f64(v9 * 0.0000000037252903);
  v14 = vcvtpd_s64_f64((v9 + v11) * 0.0000000037252903);
  if (key + 1 > v14)
  {
    v15 = key + 1;
  }

  else
  {
    v15 = v14;
  }

  do
  {
    v17(v16, key);
    key = (key + 1);
  }

  while (v15 != key);
}

void __64__MKOverlayView__forEachMapRectForKey_withContext_performBlock___block_invoke(uint64_t a1, int a2)
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
  if (_mayExtendOutsideBounds_once != -1)
  {
    dispatch_once(&_mayExtendOutsideBounds_once, &__block_literal_global_7416);
  }

  return _mayExtendOutsideBounds_tiboOrLater;
}

BOOL __40__MKOverlayView__mayExtendOutsideBounds__block_invoke()
{
  result = _MKLinkedOnOrAfterReleaseSet(1540);
  _mayExtendOutsideBounds_tiboOrLater = result;
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

  [renderer setNeedsDisplayInRect:&v7 level:v6 reason:1];
}

- (MKMapRect)mapRectForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(MKOverlayView *)self _originMapPoint];
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
  [(MKOverlayView *)self _originMapPoint];
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
  [(MKOverlayView *)self _originMapPoint];
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
  [(MKOverlayView *)self _originMapPoint];
  v6 = x - v5;
  v8 = y - v7;
  result.y = v8;
  result.x = v6;
  return result;
}

- (void)_setMapView:(id)view
{
  viewCopy = view;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__MKOverlayView__setMapView___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = viewCopy;
  v6 = viewCopy;
  dispatch_sync(isolationQueue, v7);
}

- (id)_mapView
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7418;
  v10 = __Block_byref_object_dispose__7419;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__MKOverlayView__mapView__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__MKOverlayView__mapView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 464));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_originMapPoint
{
  layer = [(MKOverlayView *)self layer];
  [layer position];
  v5 = v4;
  v7 = v6;

  layer2 = [(MKOverlayView *)self layer];
  [layer2 bounds];
  v10 = v9;
  v12 = v11;

  v13 = v5 - v10 * 0.5;
  v14 = v7 - v12 * 0.5;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  [(MKOverlayView *)self mapRectForRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

  [(MKOverlayView *)self setNeedsDisplayInMapRect:?];
}

- (MKOverlayView)initWithOverlay:(id)overlay
{
  v5 = overlay;
  v16.receiver = self;
  v16.super_class = MKOverlayView;
  v6 = [(MKOverlayView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    [(MKOverlayView *)v6 setOpaque:0];
    objc_storeStrong(&v7->_overlay, overlay);
    [v5 boundingMapRect];
    v7->_boundingMapRect.origin.x = v8;
    v7->_boundingMapRect.origin.y = v9;
    v7->_boundingMapRect.size.width = v10;
    v7->_boundingMapRect.size.height = v11;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.MapKit.MKOverlayView.isolation", v12);
    isolationQueue = v7->_isolationQueue;
    v7->_isolationQueue = v13;
  }

  return v7;
}

- (MKOverlayView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [(MKOverlayView *)self init];
  v8 = v7;
  if (v7)
  {
    [(MKOverlayView *)v7 setFrame:x, y, width, height];
  }

  return v8;
}

- (void)dealloc
{
  [self->_renderer setDelegate:0];
  v3.receiver = self;
  v3.super_class = MKOverlayView;
  [(MKOverlayView *)&v3 dealloc];
}

@end