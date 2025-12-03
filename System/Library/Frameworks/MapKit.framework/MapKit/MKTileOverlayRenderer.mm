@interface MKTileOverlayRenderer
+ (BOOL)_externalSubclassOverridesDrawingMethods;
- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale;
- (BOOL)overlayCanProvideRasterTileData:(id)data;
- (MKTileOverlayRenderer)initWithOverlay:(id)overlay;
- (id)rasterTileProviderForOverlay:(id)overlay;
- (unint64_t)_visibleKeyframeIndex;
- (void)_playWithLoopCount:(unint64_t)count;
- (void)_updateColorMap;
- (void)_updateRenderColors;
- (void)dealloc;
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reloadData;
- (void)setAlpha:(double)alpha;
- (void)setColorMap:(id)map;
- (void)setVisibleKeyframeOverride:(id)override;
@end

@implementation MKTileOverlayRenderer

- (void)_updateColorMap
{
  if (self->_rasterProvider)
  {
    cGImage = [(UIImage *)self->_colorMap CGImage];
    rasterProvider = self->_rasterProvider;

    [(VKRasterTileOverlayProviderData *)rasterProvider setColorMap:cGImage];
  }
}

- (void)_updateRenderColors
{
  if (self->_rasterProvider)
  {
    _mapView = [(MKOverlayRenderer *)self _mapView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__MKTileOverlayRenderer__updateRenderColors__block_invoke;
    v5[3] = &unk_1E76CDB38;
    v5[4] = self;
    [_mapView _withEffectiveTraitCollection:v5];
  }

  v4.receiver = self;
  v4.super_class = MKTileOverlayRenderer;
  [(MKOverlayRenderer *)&v4 _updateRenderColors];
}

- (id)rasterTileProviderForOverlay:(id)overlay
{
  rasterProvider = self->_rasterProvider;
  if (!rasterProvider)
  {
    overlay = [(MKOverlayRenderer *)self overlay];
    minimumZ = [overlay minimumZ];

    overlay2 = [(MKOverlayRenderer *)self overlay];
    maximumZ = [overlay2 maximumZ];

    v9 = 0xFFFFFFFFLL;
    v10 = minimumZ >= 0xFFFFFFFFLL ? 0xFFFFFFFFLL : minimumZ;
    v32 = v10;
    v11 = v10 >> 63;
    v12 = maximumZ >= 0xFFFFFFFFLL ? 0xFFFFFFFFLL : maximumZ;
    v13 = [(MKOverlayRenderer *)self overlay:v12 >> 63];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      overlay3 = [(MKOverlayRenderer *)self overlay];
      [overlay3 keyframesCount];
      v16 = [overlay3 keyframesCount] > 0xFFFE ? -1 : objc_msgSend(overlay3, "keyframesCount");
      [overlay3 duration];
      v18 = v19;
      shouldCrossfade = [overlay3 shouldCrossfade];
      visibleKeyframeOverride = self->_visibleKeyframeOverride;
      v9 = visibleKeyframeOverride ? [(NSNumber *)visibleKeyframeOverride intValue]: 0xFFFFFFFFLL;
    }

    else
    {
      shouldCrossfade = 0;
      v16 = 1;
      v18 = 0.0;
    }

    [(MKTileOverlayRenderer *)self willChangeValueForKey:@"rasterProvider"];
    v21 = objc_alloc(MEMORY[0x1E69DF480]);
    overlay4 = [(MKOverlayRenderer *)self overlay];
    _providerID = [overlay4 _providerID];
    overlay5 = [(MKOverlayRenderer *)self overlay];
    [overlay5 tileSize];
    v26 = [v21 initWithProviderID:_providerID tileSize:v25 minimumZ:v32 & ~v31 maximumZ:v30 & ~v29 keyframesCount:v16 duration:shouldCrossfade crossfadeKeyframes:v18];
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

- (BOOL)overlayCanProvideRasterTileData:(id)data
{
  dataCopy = data;
  if (self->_externalSubclassOverridesDrawingMethods || (-[MKOverlayRenderer overlay](self, "overlay"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tileSize], v7 = v6, -[MKOverlayRenderer overlay](self, "overlay"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "tileSize"), v10 = vabdd_f64(v7, v9), v8, v5, v10 >= 0.000001))
  {
    v11 = 0;
  }

  else
  {
    overlay = [(MKOverlayRenderer *)self overlay];
    [overlay tileSize];
    v11 = v13 <= 512.0;
  }

  return v11;
}

- (void)reloadData
{
  overlay = [(MKOverlayRenderer *)self overlay];
  [overlay _flushCaches];

  [(MKOverlayRenderer *)self setNeedsDisplay];
}

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v9 = rect.var0.var1;
  v10 = rect.var0.var0;
  v43 = *MEMORY[0x1E69E9840];
  overlay = [(MKOverlayRenderer *)self overlay];
  [(MKOverlayRenderer *)self contentScaleFactor];
  v14 = [overlay _tilesInMapRect:v10 zoomScale:v9 contentScale:{var0, var1, scale, v13}];

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
    v19 = 1.0 / scale;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        image = [v21 image];

        if (image)
        {
          image2 = [v21 image];
          v24 = CGImageSourceCreateWithData(image2, 0);

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
                CGContextSaveGState(context);
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
                CGContextTranslateCTM(context, MinX, MinY);
                CGContextScaleCTM(context, v19, v19);
                Height = CGImageGetHeight(ImageAtIndex);
                CGContextTranslateCTM(context, 0.0, Height);
                CGContextScaleCTM(context, 1.0, -1.0);
                Width = CGImageGetWidth(ImageAtIndex);
                v46.size.height = CGImageGetHeight(ImageAtIndex);
                v46.origin.x = 0.0;
                v46.origin.y = 0.0;
                v46.size.width = Width;
                CGContextDrawImage(context, v46, ImageAtIndex);
                CGContextRestoreGState(context);
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

- (BOOL)canDrawMapRect:(id)rect zoomScale:(double)scale
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  v37 = *MEMORY[0x1E69E9840];
  overlay = [(MKOverlayRenderer *)self overlay];
  [(MKOverlayRenderer *)self contentScaleFactor];
  v12 = [overlay _tilesInMapRect:v8 zoomScale:v7 contentScale:{var0, var1, scale, v11}];

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
        image = [v18 image];

        if (image)
        {
          v14 = 1;
        }

        else
        {
          v31 = 0uLL;
          overlay2 = [(MKOverlayRenderer *)self overlay];
          if (v18)
          {
            [v18 path];
          }

          else
          {
            v29 = 0u;
            v30 = 0u;
          }

          *&v31 = [overlay2 _keyForPath:&v29];
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
            overlay3 = [(MKOverlayRenderer *)self overlay];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __50__MKTileOverlayRenderer_canDrawMapRect_zoomScale___block_invoke_2;
            v25[3] = &unk_1E76CD2A8;
            v25[4] = v18;
            v25[5] = self;
            v26 = v31;
            [overlay3 _loadTile:&v31 result:v25];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if (VisibleKeyframeIndexContext == context)
  {
    v13 = *MEMORY[0x1E696A500];
    changeCopy = change;
    v15 = [changeCopy objectForKeyedSubscript:v13];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    unsignedIntegerValue2 = [v17 unsignedIntegerValue];
    if (unsignedIntegerValue2 < unsignedIntegerValue)
    {
      if ((loopsRemaining = self->_loopsRemaining) == 0 && (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT) || (*buf = 0, _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _loopsRemaining > 0", buf, 2u), (loopsRemaining = self->_loopsRemaining) == 0)) || (v20 = loopsRemaining - 1, (self->_loopsRemaining = v20) == 0))
      {
        [objectCopy removeObserver:self forKeyPath:pathCopy context:context];
        [(MKTileOverlayRenderer *)self setVisibleKeyframeOverride:&unk_1F1611D10];
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = MKTileOverlayRenderer;
    changeCopy2 = change;
    [(MKTileOverlayRenderer *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy2 context:context];
  }
}

- (void)_playWithLoopCount:(unint64_t)count
{
  overlay = [(MKOverlayRenderer *)self overlay];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (count)
  {
    if (isKindOfClass)
    {
      overlay2 = [(MKOverlayRenderer *)self overlay];
      keyframesCount = [overlay2 keyframesCount];

      if (keyframesCount)
      {
        self->_loopsRemaining = count;
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

- (void)setVisibleKeyframeOverride:(id)override
{
  overrideCopy = override;
  objc_storeStrong(&self->_visibleKeyframeOverride, override);
  if (overrideCopy)
  {
    overlay = [(MKOverlayRenderer *)self overlay];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      overlay2 = [(MKOverlayRenderer *)self overlay];
      intValue = [overrideCopy intValue];
      if (intValue >= [overlay2 keyframesCount])
      {
        v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:@"Invalid index" userInfo:0];
        objc_exception_throw(v9);
      }

      -[VKRasterTileOverlayProviderData setKeyframeIndexOverride:](self->_rasterProvider, "setKeyframeIndexOverride:", [overrideCopy intValue]);
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

- (void)setColorMap:(id)map
{
  mapCopy = map;
  if (self->_colorMap != mapCopy)
  {
    v6 = mapCopy;
    objc_storeStrong(&self->_colorMap, map);
    [(MKTileOverlayRenderer *)self _updateColorMap];
    mapCopy = v6;
  }
}

- (void)setAlpha:(double)alpha
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
    *&v7[6] = alpha;
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

- (MKTileOverlayRenderer)initWithOverlay:(id)overlay
{
  overlayCopy = overlay;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17.receiver = self;
    v17.super_class = MKTileOverlayRenderer;
    v5 = [(MKOverlayRenderer *)&v17 initWithOverlay:overlayCopy];

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
    selfCopy = self;
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    overlayCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected a MKTileOverlay but got %@", overlayCopy];

    v15 = [v12 exceptionWithName:v13 reason:overlayCopy userInfo:0];
    [v15 raise];

    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)_externalSubclassOverridesDrawingMethods
{
  v3 = objc_opt_class();
  if ([self _mapkit_instanceImplementationOfSelector:sel_drawMapRect_zoomScale_inContext_ isFromSubclassOfClass:v3])
  {
    return 1;
  }

  return [self _mapkit_instanceImplementationOfSelector:sel_canDrawMapRect_zoomScale_ isFromSubclassOfClass:v3];
}

@end