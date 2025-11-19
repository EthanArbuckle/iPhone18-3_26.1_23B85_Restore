@interface MKTileOverlayRenderer
+ (BOOL)_externalSubclassOverridesDrawingMethods;
- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4;
- (BOOL)overlayCanProvideRasterTileData:(id)a3;
- (MKTileOverlayRenderer)initWithOverlay:(id)a3;
- (id)rasterTileProviderForOverlay:(id)a3;
- (unint64_t)_visibleKeyframeIndex;
- (void)_playWithLoopCount:(unint64_t)a3;
- (void)_updateColorMap;
- (void)_updateRenderColors;
- (void)dealloc;
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadData;
- (void)setAlpha:(double)a3;
- (void)setColorMap:(id)a3;
- (void)setVisibleKeyframeOverride:(id)a3;
@end

@implementation MKTileOverlayRenderer

- (void)_updateColorMap
{
  if (self->_rasterProvider)
  {
    v3 = [(UIImage *)self->_colorMap CGImage];
    rasterProvider = self->_rasterProvider;

    [(VKRasterTileOverlayProviderData *)rasterProvider setColorMap:v3];
  }
}

- (void)_updateRenderColors
{
  if (self->_rasterProvider)
  {
    v3 = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MKTileOverlayRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [v3 _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKTileOverlayRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

- (id)rasterTileProviderForOverlay:(id)a3
{
  rasterProvider = self->_rasterProvider;
  if (!rasterProvider)
  {
    v5 = [(MKOverlayRenderer *)self overlay];
    v6 = [v5 minimumZ];

    v7 = [(MKOverlayRenderer *)self overlay];
    v8 = [v7 maximumZ];

    v9 = 0xFFFFFFFFLL;
    v10 = v6 >= 0xFFFFFFFFLL ? 0xFFFFFFFFLL : v6;
    v32 = v10;
    v11 = v10 >> 63;
    v12 = v8 >= 0xFFFFFFFFLL ? 0xFFFFFFFFLL : v8;
    v13 = [(MKOverlayRenderer *)self overlay:v12 >> 63];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [(MKOverlayRenderer *)self overlay];
      [v15 keyframesCount];
      v16 = [v15 keyframesCount] > 0xFFFE ? -1 : objc_msgSend(v15, "keyframesCount");
      [v15 duration];
      v18 = v19;
      v17 = [v15 shouldCrossfade];
      visibleKeyframeOverride = self->_visibleKeyframeOverride;
      v9 = visibleKeyframeOverride ? [(NSNumber *)visibleKeyframeOverride intValue]: 0xFFFFFFFFLL;
    }

    else
    {
      v17 = 0;
      v16 = 1;
      v18 = 0.0;
    }

    [(MKTileOverlayRenderer *)self willChangeValueForKey:@"rasterProvider"];
    v21 = objc_alloc(MEMORY[0x1E69DF480]);
    v22 = [(MKOverlayRenderer *)self overlay];
    v23 = [v22 _providerID];
    v24 = [(MKOverlayRenderer *)self overlay];
    [v24 tileSize];
    v26 = [v21 initWithProviderID:v23 tileSize:v25 minimumZ:v32 & ~v31 maximumZ:v30 & ~v29 keyframesCount:v16 duration:v17 crossfadeKeyframes:v18];
    v27 = self->_rasterProvider;
    self->_rasterProvider = v26;

    [(MKOverlayRenderer *)self alpha];
    [(VKRasterTileOverlayProviderData *)self->_rasterProvider setAlpha:?];
    [(VKRasterTileOverlayProviderData *)self->_rasterProvider setKeyframeIndexOverride:v9];
    [(MKTileOverlayRenderer *)self _updateColorMap];
    [(MKTileOverlayRenderer *)self didChangeValueForKey:@"rasterProvider"];
    rasterProvider = self->_rasterProvider;
    if (self->_loopsRemaining)
    {
      [(VKRasterTileOverlayProviderData *)rasterProvider addObserver:self forKeyPath:@"visibleKeyframeIndex" options:3 context:VisibleKeyframeIndexContext];
      rasterProvider = self->_rasterProvider;
    }
  }

  return rasterProvider;
}

- (BOOL)overlayCanProvideRasterTileData:(id)a3
{
  v4 = a3;
  if (self->_externalSubclassOverridesDrawingMethods || (-[MKOverlayRenderer overlay](self, "overlay"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tileSize], v7 = v6, -[MKOverlayRenderer overlay](self, "overlay"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "tileSize"), v10 = vabdd_f64(v7, v9), v8, v5, v10 >= 0.000001))
  {
    v11 = 0;
  }

  else
  {
    v12 = [(MKOverlayRenderer *)self overlay];
    [v12 tileSize];
    v11 = v13 <= 512.0;
  }

  return v11;
}

- (void)reloadData
{
  v3 = [(MKOverlayRenderer *)self overlay];
  [v3 _flushCaches];

  [(MKOverlayRenderer *)self setNeedsDisplay];
}

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v9 = a3.var0.var1;
  v10 = a3.var0.var0;
  v43 = *MEMORY[0x1E69E9840];
  v12 = [(MKOverlayRenderer *)self overlay];
  [(MKOverlayRenderer *)self contentScaleFactor];
  v14 = [v12 _tilesInMapRect:v10 zoomScale:v9 contentScale:{var0, var1, a4, v13}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    v19 = 1.0 / a4;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = [v21 image];

        if (v22)
        {
          v23 = [v21 image];
          v24 = CGImageSourceCreateWithData(v23, 0);

          if (v24)
          {
            if (CGImageSourceGetCount(v24))
            {
              ImageAtIndex = CGImageSourceCreateImageAtIndex(v24, 0, 0);
              CFRelease(v24);
              if (ImageAtIndex)
              {
                [v21 frame];
                [(MKOverlayRenderer *)self rectForMapRect:?];
                v27 = v26;
                v29 = v28;
                v31 = v30;
                v33 = v32;
                CGContextSaveGState(a5);
                v44.origin.x = v27;
                v44.origin.y = v29;
                v44.size.width = v31;
                v44.size.height = v33;
                MinX = CGRectGetMinX(v44);
                v45.origin.x = v27;
                v45.origin.y = v29;
                v45.size.width = v31;
                v45.size.height = v33;
                MinY = CGRectGetMinY(v45);
                CGContextTranslateCTM(a5, MinX, MinY);
                CGContextScaleCTM(a5, v19, v19);
                Height = CGImageGetHeight(ImageAtIndex);
                CGContextTranslateCTM(a5, 0.0, Height);
                CGContextScaleCTM(a5, 1.0, -1.0);
                Width = CGImageGetWidth(ImageAtIndex);
                v46.size.height = CGImageGetHeight(ImageAtIndex);
                v46.origin.x = 0.0;
                v46.origin.y = 0.0;
                v46.size.width = Width;
                CGContextDrawImage(a5, v46, ImageAtIndex);
                CGContextRestoreGState(a5);
                CGImageRelease(ImageAtIndex);
              }
            }

            else
            {
              CFRelease(v24);
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v17);
  }
}

- (BOOL)canDrawMapRect:(id)a3 zoomScale:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v7 = a3.var0.var1;
  v8 = a3.var0.var0;
  v37 = *MEMORY[0x1E69E9840];
  v10 = [(MKOverlayRenderer *)self overlay];
  [(MKOverlayRenderer *)self contentScaleFactor];
  v12 = [v10 _tilesInMapRect:v8 zoomScale:v7 contentScale:{var0, var1, a4, v11}];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v12;
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v18 image];

        if (v19)
        {
          v14 = 1;
        }

        else
        {
          v31 = 0uLL;
          v20 = [(MKOverlayRenderer *)self overlay];
          if (v18)
          {
            [v18 path];
          }

          else
          {
            v29 = 0u;
            v30 = 0u;
          }

          *&v31 = [v20 _keyForPath:&v29];
          *(&v31 + 1) = v21;

          *&v29 = 0;
          *(&v29 + 1) = &v29;
          *&v30 = 0x2020000000;
          pendingRequestsLock = self->_pendingRequestsLock;
          BYTE8(v30) = 0;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __50__MKTileOverlayRenderer_canDrawMapRect_zoomScale___block_invoke;
          block[3] = &unk_1E76CD258;
          v28 = v31;
          block[4] = self;
          block[5] = &v29;
          dispatch_sync(pendingRequestsLock, block);
          if ((*(*(&v29 + 1) + 24) & 1) == 0)
          {
            v23 = [(MKOverlayRenderer *)self overlay];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __50__MKTileOverlayRenderer_canDrawMapRect_zoomScale___block_invoke_2;
            v25[3] = &unk_1E76CD2A8;
            v25[4] = v18;
            v25[5] = self;
            v26 = v31;
            [v23 _loadTile:&v31 result:v25];
          }

          _Block_object_dispose(&v29, 8);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  return v14 & 1;
}

uint64_t __50__MKTileOverlayRenderer_canDrawMapRect_zoomScale___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 112) containsKey:a1 + 48];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = *(*(a1 + 32) + 112);

    return [v3 addKey:a1 + 48];
  }

  return result;
}

void __50__MKTileOverlayRenderer_canDrawMapRect_zoomScale___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) frame];
    v15[0] = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v7 = [*(a1 + 40) _renderer];
    [*(a1 + 32) scale];
    v9 = vcvtmd_s64_f64(log2(v8) + 0.5);
    if (v9 >= -21)
    {
      v10 = v9 + 19;
    }

    else
    {
      v10 = -2;
    }

    [v7 setNeedsDisplayInRect:v15 level:v10 reason:3];
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MKTileOverlayRenderer_canDrawMapRect_zoomScale___block_invoke_3;
  block[3] = &unk_1E76CD280;
  block[4] = v11;
  v14 = *(a1 + 48);
  dispatch_sync(v12, block);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  if (VisibleKeyframeIndexContext == a6)
  {
    v13 = *MEMORY[0x1E696A500];
    v14 = a5;
    v15 = [v14 objectForKeyedSubscript:v13];
    v16 = [v15 unsignedIntegerValue];

    v17 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    v18 = [v17 unsignedIntegerValue];
    if (v18 < v16)
    {
      if ((loopsRemaining = self->_loopsRemaining) == 0 && (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT) || (*buf = 0, _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _loopsRemaining > 0", buf, 2u), (loopsRemaining = self->_loopsRemaining) == 0)) || (v20 = loopsRemaining - 1, (self->_loopsRemaining = v20) == 0))
      {
        [v11 removeObserver:self forKeyPath:v10 context:a6];
        [(MKTileOverlayRenderer *)self setVisibleKeyframeOverride:&unk_1F1611D10];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = MKTileOverlayRenderer;
    v12 = a5;
    [(MKTileOverlayRenderer *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_playWithLoopCount:(unint64_t)a3
{
  v5 = [(MKOverlayRenderer *)self overlay];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (a3)
  {
    if (isKindOfClass)
    {
      v7 = [(MKOverlayRenderer *)self overlay];
      v8 = [v7 keyframesCount];

      if (v8)
      {
        self->_loopsRemaining = a3;
        [(MKTileOverlayRenderer *)self setVisibleKeyframeOverride:0];
        rasterProvider = self->_rasterProvider;
        if (rasterProvider)
        {
          v10 = VisibleKeyframeIndexContext;

          [(VKRasterTileOverlayProviderData *)rasterProvider addObserver:self forKeyPath:@"visibleKeyframeIndex" options:3 context:v10];
        }
      }
    }
  }
}

- (void)setVisibleKeyframeOverride:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_visibleKeyframeOverride, a3);
  if (v10)
  {
    v5 = [(MKOverlayRenderer *)self overlay];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(MKOverlayRenderer *)self overlay];
      v8 = [v10 intValue];
      if (v8 >= [v7 keyframesCount])
      {
        v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Invalid index" userInfo:0];
        objc_exception_throw(v9);
      }

      -[VKRasterTileOverlayProviderData setKeyframeIndexOverride:](self->_rasterProvider, "setKeyframeIndexOverride:", [v10 intValue]);
    }
  }

  else
  {
    [(VKRasterTileOverlayProviderData *)self->_rasterProvider setKeyframeIndexOverride:0xFFFFFFFFLL];
  }
}

- (unint64_t)_visibleKeyframeIndex
{
  result = self->_rasterProvider;
  if (result)
  {
    return [result visibleKeyframeIndex];
  }

  return result;
}

- (void)setColorMap:(id)a3
{
  v5 = a3;
  if (self->_colorMap != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_colorMap, a3);
    [(MKTileOverlayRenderer *)self _updateColorMap];
    v5 = v6;
  }
}

- (void)setAlpha:(double)a3
{
  v8.receiver = self;
  v8.super_class = MKTileOverlayRenderer;
  [(MKOverlayRenderer *)&v8 setAlpha:?];
  rasterProvider = self->_rasterProvider;
  if (rasterProvider)
  {
    [(VKRasterTileOverlayProviderData *)rasterProvider alpha];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__MKTileOverlayRenderer_setAlpha___block_invoke;
    v7[3] = &unk_1E76CD230;
    v7[4] = self;
    v7[5] = v6;
    *&v7[6] = a3;
    [(MKOverlayRenderer *)self _animateIfNecessaryForKey:@"alpha" withStepHandler:v7];
  }
}

- (void)dealloc
{
  if (self->_loopsRemaining)
  {
    [(VKRasterTileOverlayProviderData *)self->_rasterProvider removeObserver:self forKeyPath:@"visibleKeyframeIndex" context:VisibleKeyframeIndexContext];
  }

  v3.receiver = self;
  v3.super_class = MKTileOverlayRenderer;
  [(MKOverlayRenderer *)&v3 dealloc];
}

- (MKTileOverlayRenderer)initWithOverlay:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = MKTileOverlayRenderer;
    v5 = [(MKOverlayRenderer *)&v17 initWithOverlay:v4];

    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69A2608]) initWithMaxCapacity:512];
      pendingRequests = v5->_pendingRequests;
      v5->_pendingRequests = v6;

      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create(0, v8);
      pendingRequestsLock = v5->_pendingRequestsLock;
      v5->_pendingRequestsLock = v9;

      v5->_externalSubclassOverridesDrawingMethods = [objc_opt_class() _externalSubclassOverridesDrawingMethods];
    }

    self = v5;
    v11 = self;
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a MKTileOverlay but got %@", v4];

    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    [v15 raise];

    v11 = 0;
  }

  return v11;
}

+ (BOOL)_externalSubclassOverridesDrawingMethods
{
  v3 = objc_opt_class();
  if ([a1 _mapkit_instanceImplementationOfSelector:sel_drawMapRect_zoomScale_inContext_ isFromSubclassOfClass:v3])
  {
    return 1;
  }

  return [a1 _mapkit_instanceImplementationOfSelector:sel_canDrawMapRect_zoomScale_ isFromSubclassOfClass:v3];
}

@end