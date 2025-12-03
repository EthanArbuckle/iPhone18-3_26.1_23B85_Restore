@interface PDFPageLayer
+ (id)pageShadowMetrics;
- (BOOL)_hasTileWithFrameInLayer:(CGRect)layer;
- (BOOL)_isTile:(id)tile occludedByTiles:(id)tiles;
- (BOOL)isVisible;
- (CGAffineTransform)layerEffectTransform;
- (CGRect)_layerTileToRootViewBounds:(id)bounds;
- (CGRect)_pageLayerVisibleRect;
- (PDFPageLayer)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties;
- (id)_subtractRectB:(CGRect)b fromRectA:(CGRect)a;
- (id)geometryInterface;
- (id)page;
- (id)renderingProperties;
- (int64_t)displayBox;
- (void)_forceTileUpdate;
- (void)_hideTileLayer:(BOOL)layer;
- (void)_printRectsArray:(id)array;
- (void)_releasePageLayerEffects;
- (void)_releaseTiles;
- (void)_renderingPropertyUpdate:(id)update;
- (void)_setEnablePageShadows:(BOOL)shadows;
- (void)_tileUpdateComplete;
- (void)_updateLayerEffect:(id)effect withPageTransform:(CGAffineTransform *)transform;
- (void)_updateTiles;
- (void)addPageLayerEffect:(id)effect;
- (void)applyTileLayoutScale:(double)scale;
- (void)dealloc;
- (void)initPageCornerRadiusForMagnification:(double)magnification;
- (void)layoutSublayers;
- (void)removePageLayerEffectForID:(id)d;
- (void)restoreOriginalTileLayout;
- (void)saveOriginalTileLayout;
- (void)scalePageLayerEffects:(double)effects;
- (void)setCornerRadius:(double)radius;
- (void)setMasksToBounds:(BOOL)bounds;
- (void)setNeedsTilesUpdate;
- (void)tileDrawingComplete:(id)complete;
- (void)updatePageLayerEffectForID:(id)d;
- (void)updatePageLayerEffects;
@end

@implementation PDFPageLayer

- (PDFPageLayer)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties
{
  pageCopy = page;
  interfaceCopy = interface;
  propertiesCopy = properties;
  v49.receiver = self;
  v49.super_class = PDFPageLayer;
  v11 = [(PDFPageLayer *)&v49 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_page, pageCopy);
    objc_storeWeak(&v12->_geometryInterface, interfaceCopy);
    objc_storeWeak(&v12->_renderingProperties, propertiesCopy);
    v12->_oldPageRotation = [pageCopy rotation];
    v13 = objc_alloc_init(MEMORY[0x1E6979398]);
    contentLayer = v12->_contentLayer;
    v12->_contentLayer = v13;

    [(CALayer *)v12->_contentLayer setName:@"contentLayer"];
    [(CALayer *)v12->_contentLayer setZPosition:-801.0];
    [(CALayer *)v12->_contentLayer setMasksToBounds:1];
    [(PDFPageLayer *)v12 insertSublayer:v12->_contentLayer atIndex:0];
    v15 = objc_alloc_init(MEMORY[0x1E6979398]);
    tilesLayer = v12->_tilesLayer;
    v12->_tilesLayer = v15;

    [(CALayer *)v12->_tilesLayer setName:@"tilesLayer"];
    [(CALayer *)v12->_tilesLayer setZPosition:-800.0];
    [(CALayer *)v12->_tilesLayer setAllowsEdgeAntialiasing:0];
    [(CALayer *)v12->_contentLayer insertSublayer:v12->_tilesLayer above:v12];
    v17 = objc_alloc_init(MEMORY[0x1E6979398]);
    effectsLayer = v12->_effectsLayer;
    v12->_effectsLayer = v17;

    [(CALayer *)v12->_effectsLayer setName:@"effectsLayer"];
    [(CALayer *)v12->_contentLayer addSublayer:v12->_effectsLayer];
    [(CALayer *)v12->_effectsLayer setAllowsGroupBlending:0];
    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    shadowLayer1 = v12->_shadowLayer1;
    v12->_shadowLayer1 = v19;

    [(CALayer *)v12->_shadowLayer1 setName:@"shadowLayer1"];
    [(CALayer *)v12->_shadowLayer1 setMasksToBounds:0];
    v21 = v12->_shadowLayer1;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBackgroundColor:](v21, "setBackgroundColor:", [clearColor CGColor]);

    [(CALayer *)v12->_shadowLayer1 setZPosition:-1000.0];
    [(PDFPageLayer *)v12 insertSublayer:v12->_shadowLayer1 below:v12->_contentLayer];
    v23 = objc_alloc_init(MEMORY[0x1E6979398]);
    shadowLayer2 = v12->_shadowLayer2;
    v12->_shadowLayer2 = v23;

    [(CALayer *)v12->_shadowLayer2 setName:@"shadowLayer2"];
    [(CALayer *)v12->_shadowLayer2 setMasksToBounds:0];
    v25 = v12->_shadowLayer2;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBackgroundColor:](v25, "setBackgroundColor:", [clearColor2 CGColor]);

    [(CALayer *)v12->_shadowLayer2 setZPosition:-1000.0];
    [(PDFPageLayer *)v12 insertSublayer:v12->_shadowLayer2 below:v12->_shadowLayer1];
    v27 = v12->_tilesLayer;
    CGAffineTransformMakeScale(&v48, 1.0, -1.0);
    [(CALayer *)v27 setAffineTransform:&v48];
    [pageCopy boundsForBox:{objc_msgSend(propertiesCopy, "displayBox")}];
    v12->_oldBoundsForBox.origin.x = v28;
    v12->_oldBoundsForBox.origin.y = v29;
    v12->_oldBoundsForBox.size.width = v30;
    v12->_oldBoundsForBox.size.height = v31;
    v12->_zoomGenerationDelay = 0.25;
    v12->_visibilityDelegateIndex = 0x7FFFFFFFFFFFFFFFLL;
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tiles = v12->_tiles;
    v12->_tiles = v32;

    v12->_tileLayerHidden = 0;
    v12->_allowUpdate = 1;
    atomic_store(0, &v12->_isTiling);
    atomic_store(0, &v12->_requestedTiling);
    [(PDFPageLayer *)v12 setAllowsGroupBlending:0];
    enablePageShadows = [propertiesCopy enablePageShadows];
    v35 = 0;
    if (enablePageShadows)
    {
      v35 = [propertiesCopy isDarkMode] ^ 1;
    }

    [(PDFPageLayer *)v12 _setEnablePageShadows:v35];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__renderingPropertyUpdate_ name:@"PDFRenderingPropertiesChanged" object:propertiesCopy];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__pageDidRotate_ name:@"PDFPageDidRotate" object:pageCopy];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v12 selector:sel__pageDidRotate_ name:@"PDFPageDidChangeBounds" object:pageCopy];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v12 selector:sel__pageChangedPageRef_ name:@"PDFPagePageRefChanged" object:pageCopy];

    v40 = [[PDFTimer alloc] initWithThrottleDelay:sel__forceTileUpdate forSelector:v12 forTarget:0.1];
    forcedUpdateTimer = v12->_forcedUpdateTimer;
    v12->_forcedUpdateTimer = v40;

    document = [pageCopy document];
    v43 = [document indexForPage:pageCopy];

    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PDFPageLayer, page index %d", v43];
    [(PDFPageLayer *)v12 setName:v44];

    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pageLayerEffects = v12->_pageLayerEffects;
    v12->_pageLayerEffects = v45;
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PDFPageLayer;
  [(PDFPageLayer *)&v4 dealloc];
}

- (void)setMasksToBounds:(BOOL)bounds
{
  v3.receiver = self;
  v3.super_class = PDFPageLayer;
  [(PDFPageLayer *)&v3 setMasksToBounds:bounds];
}

+ (id)pageShadowMetrics
{
  if (pageShadowMetrics_onceToken != -1)
  {
    +[PDFPageLayer pageShadowMetrics];
  }

  v3 = pageShadowMetrics_metrics;

  return v3;
}

void __33__PDFPageLayer_pageShadowMetrics__block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = +[PDFRenderingProperties isSolariumEnabled];
  v1 = &unk_1F4184458;
  if (v0)
  {
    v1 = &unk_1F4184448;
  }

  v9[0] = @"kPageShadowsOffsetShadow1";
  v9[1] = @"kPageShadowsRadiusShadow1";
  v2 = &unk_1F4184468;
  if (!v0)
  {
    v2 = &unk_1F4184478;
  }

  v10[0] = v1;
  v10[1] = v2;
  v3 = &unk_1F4184498;
  if (v0)
  {
    v3 = &unk_1F4184488;
  }

  v9[2] = @"kPageShadowsOpacityShadow1";
  v9[3] = @"kPageShadowsOffsetShadow2";
  v4 = &unk_1F41844A8;
  if (!v0)
  {
    v4 = &unk_1F41844B8;
  }

  v10[2] = v3;
  v10[3] = v4;
  v9[4] = @"kPageShadowsRadiusShadow2";
  v9[5] = @"kPageShadowsOpacityShadow2";
  v5 = &unk_1F41844C8;
  if (!v0)
  {
    v5 = &unk_1F41844D8;
  }

  v6 = &unk_1F41844E8;
  if (!v0)
  {
    v6 = &unk_1F41844F8;
  }

  v10[4] = v5;
  v10[5] = v6;
  v9[6] = @"kPageShadowsBorderWidth";
  v9[7] = @"kPageShadowsBorderOpacity";
  v10[6] = &unk_1F4184478;
  v10[7] = &unk_1F4184508;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
  v8 = pageShadowMetrics_metrics;
  pageShadowMetrics_metrics = v7;
}

- (id)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (id)geometryInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);

  return WeakRetained;
}

- (id)renderingProperties
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);

  return WeakRetained;
}

- (void)setNeedsTilesUpdate
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_isTiling, &v3, 1u);
  if (v3)
  {
    atomic_store(1u, &self->_requestedTiling);
  }

  else if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(PDFPageLayer *)self _updateTiles];

    [(PDFPageLayer *)self _tileUpdateComplete];
  }

  else
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __35__PDFPageLayer_setNeedsTilesUpdate__block_invoke;
    v4[3] = &unk_1E8151400;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __35__PDFPageLayer_setNeedsTilesUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateTiles];
    [v2 _tileUpdateComplete];
    WeakRetained = v2;
  }
}

- (int64_t)displayBox
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  displayBox = [WeakRetained displayBox];

  return displayBox;
}

- (void)_tileUpdateComplete
{
  atomic_store(0, &self->_isTiling);
  v4 = 1;
  atomic_compare_exchange_strong(&self->_requestedTiling, &v4, 0);
  if (v4 == 1)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PDFPageLayer__tileUpdateComplete__block_invoke;
    block[3] = &unk_1E8150990;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)isVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  [WeakRetained rootViewBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extendedRootViewBounds];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  [(PDFPageLayer *)self bounds];
  [WeakRetained convertRectToRootView:self fromPageLayer:{PDFRectFromCGRect(v16, v17, v18, v19)}];
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v20 = PDFRectIntersectsRect(v22, v23);

  return v20;
}

- (void)addPageLayerEffect:(id)effect
{
  effectCopy = effect;
  if (effectCopy)
  {
    v13 = effectCopy;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    pageLayerEffects = self->_pageLayerEffects;
    uUID = [v13 UUID];
    v7 = [(NSMutableDictionary *)pageLayerEffects objectForKey:uUID];

    if (v7)
    {
      [v7 removeFromSuperlayer];
      v8 = self->_pageLayerEffects;
      uUID2 = [v7 UUID];
      [(NSMutableDictionary *)v8 removeObjectForKey:uUID2];
    }

    [(CALayer *)self->_effectsLayer addSublayer:v13];
    v10 = self->_pageLayerEffects;
    uUID3 = [v13 UUID];
    [(NSMutableDictionary *)v10 setObject:v13 forKey:uUID3];

    uUID4 = [v13 UUID];
    [(PDFPageLayer *)self updatePageLayerEffectForID:uUID4];

    [MEMORY[0x1E6979518] commit];
    effectCopy = v13;
  }
}

- (void)removePageLayerEffectForID:(id)d
{
  dCopy = d;
  v4 = [(NSMutableDictionary *)self->_pageLayerEffects objectForKey:?];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v4 removeFromSuperlayer];
    [(NSMutableDictionary *)self->_pageLayerEffects removeObjectForKey:dCopy];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)updatePageLayerEffectForID:(id)d
{
  v4 = [(PDFPageLayer *)self pageLayerEffectForID:d];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PDFPageLayer *)self layerEffectTransform];
    [(PDFPageLayer *)self _updateLayerEffect:v4 withPageTransform:&v5];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)updatePageLayerEffects
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  [(PDFPageLayer *)self layerEffectTransform];
  _pageLayerEffects = [(PDFPageLayer *)self _pageLayerEffects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [_pageLayerEffects countByEnumeratingWithState:&v10 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_pageLayerEffects);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9[0] = v14;
        v9[1] = v15;
        v9[2] = v16;
        [(PDFPageLayer *)self _updateLayerEffect:v8 withPageTransform:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [_pageLayerEffects countByEnumeratingWithState:&v10 objects:v17 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)_updateLayerEffect:(id)effect withPageTransform:(CGAffineTransform *)transform
{
  effectCopy = effect;
  [effectCopy pageFrame];
  v8 = v7;
  CenterPoint = PDFRectGetCenterPoint(v9, v10, v7);
  v13 = PDFPointToCGPoint(CenterPoint, v12);
  v15 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, v14), *&transform->a, v13));
  v16 = PDFPointFromCGPoint(v15.f64[0], v15.f64[1]);
  PDFRectMakeFromCenter(v16, v17, v8);
  WeakRetained = objc_loadWeakRetained(&self->_page);
  rotation = [WeakRetained rotation];
  v20 = objc_loadWeakRetained(&self->_renderingProperties);
  [WeakRetained boundsForBox:{objc_msgSend(v20, "displayBox")}];
  v22 = v21;
  v24 = v23;

  PDFRectRotate(rotation, v22, v24);
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v27.a = *MEMORY[0x1E695EFD0];
  *&v27.c = v25;
  *&v27.tx = *(MEMORY[0x1E695EFD0] + 32);
  [effectCopy setFrame:{PDFRectToCGRect(objc_msgSend(effectCopy, "setAffineTransform:", &v27))}];
  if ([effectCopy shouldRotateContent])
  {
    v26 = PDFDegToRad(rotation);
    CGAffineTransformMakeRotation(&v27, v26);
    [effectCopy setAffineTransform:&v27];
  }

  [effectCopy update];
}

- (CGAffineTransform)layerEffectTransform
{
  v5 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:0];
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v7 = objc_loadWeakRetained(&self->_renderingProperties);
  displayBox = [v7 displayBox];
  if (WeakRetained)
  {
    [WeakRetained transformForBox:displayBox];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return [PDFPage setNativeRotationDrawingEnabledForThisThread:v5];
}

- (void)scalePageLayerEffects:(double)effects
{
  [(CALayer *)self->_effectsLayer frame];
  v6 = v5;
  v8 = v7;
  effectsLayer = self->_effectsLayer;
  CGAffineTransformMakeScale(&v10, effects, effects);
  [(CALayer *)effectsLayer setAffineTransform:&v10];
  [(CALayer *)self->_effectsLayer setFrame:0.0, 0.0, v6, v8];
}

- (void)_forceTileUpdate
{
  if (!self->_isForcingUpdate)
  {
    self->_isForcingUpdate = 1;
    [(PDFPageLayer *)self setNeedsTilesUpdate];
  }
}

- (void)saveOriginalTileLayout
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = self->_tiles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = v7 + 128;
        [v7 frame];
        *v8 = PDFRectFromCGRect(v9, v10, v11, v12);
        *(v8 + 1) = v13;
        *(v8 + 2) = v14;
        *(v8 + 3) = v15;
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (void)restoreOriginalTileLayout
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_tiles;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = *MEMORY[0x1E6979DC0];
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = PDFRectToCGRect(v3);
        [v8 setFrame:{v9, v10}];
        v3 = [v8 setContentsGravity:v6];
        ++v7;
      }

      while (v4 != v7);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = v3;
    }

    while (v3);
  }
}

- (void)applyTileLayoutScale:(double)scale
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_tiles;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = *MEMORY[0x1E6979DF0];
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = PDFRectToCGRect(v4);
        [v9 setFrame:{v10, v11}];
        v4 = [v9 setContentsGravity:v7];
        ++v8;
      }

      while (v5 != v8);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

- (void)initPageCornerRadiusForMagnification:(double)magnification
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  [(PDFPageLayer *)self bounds];
  [WeakRetained adjustedPageCornerRadiusForPageSize:v6 magnification:{v7, magnification}];
  v9 = v8;

  [(PDFPageLayer *)self setCornerRadius:v9];
  v10 = *MEMORY[0x1E69796E8];

  [(PDFPageLayer *)self setCornerCurve:v10];
}

- (void)setCornerRadius:(double)radius
{
  [(PDFPageLayer *)self cornerRadius];
  if (v5 != radius)
  {
    v6.receiver = self;
    v6.super_class = PDFPageLayer;
    [(PDFPageLayer *)&v6 setCornerRadius:radius];
    [(PDFPageLayer *)self setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  v14.receiver = self;
  v14.super_class = PDFPageLayer;
  [(PDFPageLayer *)&v14 layoutSublayers];
  [(PDFPageLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PDFPageLayer *)self cornerRadius];
  v12 = v11;
  [(CALayer *)self->_contentLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_tilesLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_effectsLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_shadowLayer1 setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_shadowLayer2 setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_contentLayer setCornerRadius:v12];
  [(CALayer *)self->_shadowLayer1 setCornerRadius:v12];
  [(CALayer *)self->_shadowLayer2 setCornerRadius:v12];
  v13 = CGPathCreateWithContinuousRoundedRect();
  [(CALayer *)self->_shadowLayer1 setShadowPath:v13];
  [(CALayer *)self->_shadowLayer2 setShadowPath:v13];
  CFRelease(v13);
  [(PDFPageLayer *)self setNeedsTilesUpdate];
}

- (void)_releaseTiles
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_tiles count])
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = objc_autoreleasePoolPush();
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_tiles;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(NSMutableArray *)self->_tiles removeAllObjects];
    objc_autoreleasePoolPop(v3);
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)_releasePageLayerEffects
{
  v13 = *MEMORY[0x1E69E9840];
  objectEnumerator = [(NSMutableDictionary *)self->_pageLayerEffects objectEnumerator];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_pageLayerEffects removeAllObjects];
}

- (void)_hideTileLayer:(BOOL)layer
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_tileLayerHidden != layer)
  {
    layerCopy = layer;
    self->_tileLayerHidden = layer;
    [(CALayer *)self->_tilesLayer setHidden:?];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_tiles;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHidden:{layerCopy, v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_setEnablePageShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  v22 = self->_shadowLayer1;
  v5 = self->_shadowLayer2;
  v6 = +[PDFRenderingProperties isSolariumEnabled];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if (shadowsCopy)
  {
    pageShadowMetrics = [objc_opt_class() pageShadowMetrics];
    if (!v6)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      v9 = [pageShadowMetrics objectForKeyedSubscript:@"PageShadowsBorderOpacity"];
      [v9 doubleValue];
      v10 = [blackColor colorWithAlphaComponent:?];
      -[CALayer setBorderColor:](v22, "setBorderColor:", [v10 CGColor]);

      v11 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsBorderWidth"];
      [v11 doubleValue];
      [(CALayer *)v22 setBorderWidth:?];
    }

    v12 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOpacityShadow1"];
    [v12 doubleValue];
    *&v13 = v13;
    [(CALayer *)v22 setShadowOpacity:v13];

    v14 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsRadiusShadow1"];
    [v14 doubleValue];
    [(CALayer *)v22 setShadowRadius:?];

    v15 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOffsetShadow1"];
    [v15 doubleValue];
    [(CALayer *)v22 setShadowOffset:0.0, v16];

    v17 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOpacityShadow2"];
    [v17 doubleValue];
    *&v18 = v18;
    [(CALayer *)v5 setShadowOpacity:v18];

    v19 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsRadiusShadow2"];
    [v19 doubleValue];
    [(CALayer *)v5 setShadowRadius:?];

    v20 = [pageShadowMetrics objectForKeyedSubscript:@"kPageShadowsOffsetShadow2"];
    [v20 doubleValue];
    [(CALayer *)v5 setShadowOffset:0.0, v21];
  }

  else
  {
    if (!v6)
    {
      [(CALayer *)v22 setBorderWidth:0.0];
    }

    [(CALayer *)v22 setShadowOpacity:0.0];
    [(CALayer *)v22 setShadowRadius:0.0];
    [(CALayer *)v5 setShadowOpacity:0.0];
    [(CALayer *)v5 setShadowRadius:0.0];
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)tileDrawingComplete:(id)complete
{
  v61 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = self->_tiles;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        if (([v12 isWorking] & 1) == 0)
        {
          v13 = v5;
          if (v12[30] < completeCopy[30] || (v14 = [v12 hasContent], v13 = v6, v14))
          {
            [v13 addObject:v12];
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v9);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v48 + 1) + 8 * j);
        if ([v6 count] && -[PDFPageLayer _isTile:occludedByTiles:](self, "_isTile:occludedByTiles:", v21, v6))
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v18);
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  while ([v15 count])
  {
    lastObject = [v15 lastObject];
    [v15 removeLastObject];
    [lastObject removeFromSuperlayer];
    [(NSMutableArray *)self->_tiles removeObject:lastObject];
  }

  [MEMORY[0x1E6979518] commit];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = self->_tiles;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v45;
    while (2)
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v23);
        }

        contents = [*(*(&v44 + 1) + 8 * k) contents];

        if (!contents)
        {
          v29 = 0;
          goto LABEL_34;
        }
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v44 objects:v58 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v29 = 1;
LABEL_34:

  WeakRetained = objc_loadWeakRetained(&self->_page);
  v31 = WeakRetained;
  if (v29 && WeakRetained)
  {
    v56[1] = @"pageViewFrameInPDFView";
    v57[0] = WeakRetained;
    v56[0] = @"page";
    v32 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{self->_lastLayerFrameInRootView.origin.x, self->_lastLayerFrameInRootView.origin.y, self->_lastLayerFrameInRootView.size.width, self->_lastLayerFrameInRootView.size.height}];
    v57[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PDFPageDrawingComplete" object:self userInfo:v33];
  }

  if (GetDefaultsWriteLogPerfTimes())
  {
    document = [v31 document];
    v36 = [document indexForPage:v31];

    if (v29)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v39 = (v38 * 1000.0);

      date2 = [MEMORY[0x1E695DF00] date];
      [date2 timeIntervalSinceDate:self->_lastZoomChange];
      v42 = v41;

      NSLog(&cfstr_Pdfkit2Logperf_1.isa, v36, v39, v42);
    }

    NSLog(&cfstr_Pdfkit2Logperf_2.isa, v36, -[NSMutableArray count](self->_tiles, "count"), [v16 count], objc_msgSend(v6, "count"), context);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)_isTile:(id)tile occludedByTiles:(id)tiles
{
  v38 = *MEMORY[0x1E69E9840];
  tileCopy = tile;
  tilesCopy = tiles;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = MEMORY[0x1E696B098];
  [(PDFPageLayer *)self _layerTileToRootViewBounds:tileCopy];
  v10 = [v9 PDFKitValueWithPDFRect:?];
  [v8 addObject:v10];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = tilesCopy;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PDFPageLayer *)self _layerTileToRootViewBounds:*(*(&v33 + 1) + 8 * i), v33];
        if (v18 > 0.0001)
        {
          v20 = v19;
          if (v19 > 0.0001)
          {
            v21 = v16;
            v22 = v17;
            v23 = v18;
            if ([v8 count])
            {
              v24 = 0;
              do
              {
                v25 = [v8 objectAtIndex:0];
                [v8 removeObjectAtIndex:0];
                [v25 PDFKitPDFRectValue];
                v30 = [(PDFPageLayer *)self _subtractRectB:v21 fromRectA:v22, v23, v20, v26, v27, v28, v29];
                if (v30 || [0 count])
                {
                  [v8 addObjectsFromArray:v30];
                }

                ++v24;
              }

              while (v24 < [v8 count]);
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v31 = [v8 count] == 0;
  return v31;
}

- (id)_subtractRectB:(CGRect)b fromRectA:(CGRect)a
{
  height = a.size.height;
  width = a.size.width;
  y = a.origin.y;
  x = a.origin.x;
  v8 = b.size.height;
  v9 = b.size.width;
  v10 = b.origin.y;
  v11 = b.origin.x;
  v128[1] = *MEMORY[0x1E69E9840];
  v148.origin.x = v11;
  v148.origin.y = v10;
  v148.size.width = v9;
  v148.size.height = v8;
  if (!PDFRectIntersectsRect(a, v148))
  {
    v13 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{x, y, width, height}];
    v128[0] = v13;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:1];
LABEL_5:

    goto LABEL_6;
  }

  v131.origin.x = v11;
  v131.origin.y = v10;
  v131.size.width = v9;
  v131.size.height = v8;
  v149.origin.x = x;
  v149.origin.y = y;
  v149.size.width = width;
  v149.size.height = height;
  if (PDFRectContainsRect(v131, v149))
  {
    v12 = 0;
    goto LABEL_6;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (x >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = x;
  }

  if (y >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = y;
  }

  v17 = x + width;
  v127 = v11 + v9;
  if (x + width < v11 + v9)
  {
    v17 = v11 + v9;
  }

  v124 = v15;
  v125 = v17;
  v18 = y + height;
  v126 = v10 + v8;
  if (y + height < v10 + v8)
  {
    v18 = v10 + v8;
  }

  v122 = v18;
  v123 = v16;
  v19 = PDFPointMake(v15, v16);
  v21 = v20;
  v22 = PDFPointMake(v11, v10);
  v24 = v23;
  v25.n128_f64[0] = v19;
  v26.n128_u64[0] = v21;
  PDFPageLayerTileRectFromPoints(v25, v26, v22, v24);
  v150.origin.x = v27;
  v150.origin.y = v28;
  v150.size.width = v29;
  v150.size.height = v30;
  v132.origin.x = x;
  v132.origin.y = y;
  v132.size.width = width;
  v132.size.height = height;
  v133 = PDFRectIntersection(v132, v150);
  if (v133.size.width > 0.0001 && v133.size.height > 0.0001)
  {
    v31 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v133.origin.x, v133.origin.y}];
    [v12 addObject:v31];
  }

  v32 = PDFPointMake(v11, v123);
  v34 = v33;
  v35 = PDFPointMake(v127, v10);
  v37 = v36;
  v38.n128_f64[0] = v32;
  v39.n128_u64[0] = v34;
  PDFPageLayerTileRectFromPoints(v38, v39, v35, v37);
  v151.origin.x = v40;
  v151.origin.y = v41;
  v151.size.width = v42;
  v151.size.height = v43;
  v134.origin.x = x;
  v134.origin.y = y;
  v134.size.width = width;
  v134.size.height = height;
  v135 = PDFRectIntersection(v134, v151);
  if (v135.size.width > 0.0001 && v135.size.height > 0.0001)
  {
    v44 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v135.origin.x, v135.origin.y}];
    [v12 addObject:v44];
  }

  v45 = PDFPointMake(v127, v123);
  v47 = v46;
  v48 = PDFPointMake(v125, v10);
  v50 = v49;
  v51.n128_f64[0] = v45;
  v52.n128_u64[0] = v47;
  PDFPageLayerTileRectFromPoints(v51, v52, v48, v50);
  v152.origin.x = v53;
  v152.origin.y = v54;
  v152.size.width = v55;
  v152.size.height = v56;
  v136.origin.x = x;
  v136.origin.y = y;
  v136.size.width = width;
  v136.size.height = height;
  v137 = PDFRectIntersection(v136, v152);
  if (v137.size.width > 0.0001 && v137.size.height > 0.0001)
  {
    v57 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v137.origin.x, v137.origin.y}];
    [v12 addObject:v57];
  }

  v58 = PDFPointMake(v124, v10);
  v60 = v59;
  v61 = PDFPointMake(v11, v126);
  v63 = v62;
  v64.n128_f64[0] = v58;
  v65.n128_u64[0] = v60;
  PDFPageLayerTileRectFromPoints(v64, v65, v61, v63);
  v153.origin.x = v66;
  v153.origin.y = v67;
  v153.size.width = v68;
  v153.size.height = v69;
  v138.origin.x = x;
  v138.origin.y = y;
  v138.size.width = width;
  v138.size.height = height;
  v139 = PDFRectIntersection(v138, v153);
  if (v139.size.width > 0.0001 && v139.size.height > 0.0001)
  {
    v70 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v139.origin.x, v139.origin.y}];
    [v12 addObject:v70];
  }

  v71 = PDFPointMake(v127, v10);
  v73 = v72;
  v74 = PDFPointMake(v125, v126);
  v76 = v75;
  v77.n128_f64[0] = v71;
  v78.n128_u64[0] = v73;
  PDFPageLayerTileRectFromPoints(v77, v78, v74, v76);
  v154.origin.x = v79;
  v154.origin.y = v80;
  v154.size.width = v81;
  v154.size.height = v82;
  v140.origin.x = x;
  v140.origin.y = y;
  v140.size.width = width;
  v140.size.height = height;
  v141 = PDFRectIntersection(v140, v154);
  if (v141.size.width > 0.0001 && v141.size.height > 0.0001)
  {
    v83 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v141.origin.x, v141.origin.y}];
    [v12 addObject:v83];
  }

  v84 = PDFPointMake(v124, v126);
  v86 = v85;
  v87 = PDFPointMake(v11, v122);
  v89 = v88;
  v90.n128_f64[0] = v84;
  v91.n128_u64[0] = v86;
  PDFPageLayerTileRectFromPoints(v90, v91, v87, v89);
  v155.origin.x = v92;
  v155.origin.y = v93;
  v155.size.width = v94;
  v155.size.height = v95;
  v142.origin.x = x;
  v142.origin.y = y;
  v142.size.width = width;
  v142.size.height = height;
  v143 = PDFRectIntersection(v142, v155);
  if (v143.size.width > 0.0001 && v143.size.height > 0.0001)
  {
    v96 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v143.origin.x, v143.origin.y}];
    [v12 addObject:v96];
  }

  v97 = PDFPointMake(v11, v126);
  v99 = v98;
  v100 = PDFPointMake(v127, v122);
  v102 = v101;
  v103.n128_f64[0] = v97;
  v104.n128_u64[0] = v99;
  PDFPageLayerTileRectFromPoints(v103, v104, v100, v102);
  v156.origin.x = v105;
  v156.origin.y = v106;
  v156.size.width = v107;
  v156.size.height = v108;
  v144.origin.x = x;
  v144.origin.y = y;
  v144.size.width = width;
  v144.size.height = height;
  v145 = PDFRectIntersection(v144, v156);
  if (v145.size.width > 0.0001 && v145.size.height > 0.0001)
  {
    v109 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v145.origin.x, v145.origin.y}];
    [v12 addObject:v109];
  }

  v110 = PDFPointMake(v127, v126);
  v112 = v111;
  v113 = PDFPointMake(v125, v122);
  v115 = v114;
  v116.n128_f64[0] = v110;
  v117.n128_u64[0] = v112;
  PDFPageLayerTileRectFromPoints(v116, v117, v113, v115);
  v157.origin.x = v118;
  v157.origin.y = v119;
  v157.size.width = v120;
  v157.size.height = v121;
  v146.origin.x = x;
  v146.origin.y = y;
  v146.size.width = width;
  v146.size.height = height;
  v147 = PDFRectIntersection(v146, v157);
  if (v147.size.width > 0.0001 && v147.size.height > 0.0001)
  {
    v13 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v147.origin.x, v147.origin.y}];
    [v12 addObject:v13];
    goto LABEL_5;
  }

LABEL_6:

  return v12;
}

- (CGRect)_layerTileToRootViewBounds:(id)bounds
{
  boundsCopy = bounds;
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  [boundsCopy bounds];
  [boundsCopy convertRect:self toLayer:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = PDFRectFromCGRect(v7, v9, v11, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(PDFPageLayer *)self bounds];
  v53.origin.x = PDFRectFromCGRect(v21, v22, v23, v24);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  v54 = PDFRectIntersection(v53, v58);
  [WeakRetained convertRectToRootView:self fromPageLayer:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [WeakRetained rootViewBounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extendedRootViewBounds];
    v34 = v41;
    v36 = v42;
    v38 = v43;
    v40 = v44;
  }

  v55.origin.x = v26;
  v55.origin.y = v28;
  v55.size.width = v30;
  v55.size.height = v32;
  v59.origin.x = v34;
  v59.origin.y = v36;
  v59.size.width = v38;
  v59.size.height = v40;
  v56 = PDFRectIntersection(v55, v59);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;

  v49 = x;
  v50 = y;
  v51 = width;
  v52 = height;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (CGRect)_pageLayerVisibleRect
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  [WeakRetained rootViewBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extendedRootViewBounds];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  [(PDFPageLayer *)self frame];
  v20 = PDFRectFromCGRect(v16, v17, v18, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [WeakRetained convertRootViewRect:self toPageLayer:{v5, v7, v9, v11}];
  v42.origin.x = v27;
  v42.origin.y = v28;
  v42.size.width = v29;
  v42.size.height = v30;
  v39.origin.x = v20;
  v39.origin.y = v22;
  v39.size.width = v24;
  v39.size.height = v26;
  v40 = PDFRectIntersection(v39, v42);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;

  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (BOOL)_hasTileWithFrameInLayer:(CGRect)layer
{
  height = layer.size.height;
  width = layer.size.width;
  y = layer.origin.y;
  x = layer.origin.x;
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_tiles;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v19 + 1) + 8 * i) frame];
        if (vabdd_f64(PDFRectFromCGRect(v11, v12, v13, v14), x) < 0.0001 && vabdd_f64(v15, y) < 0.0001 && vabdd_f64(v16, width) < 0.0001 && vabdd_f64(v17, height) < 0.0001)
        {
          LOBYTE(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v8;
}

- (void)_printRectsArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  NSLog(&cfstr_RectCountD.isa, [arrayCopy count]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = arrayCopy;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v8) PDFKitPDFRectValue];
        v13 = PDFRectToString(v9, v10, v11, v12);
        NSLog(&cfstr_Rectvalue.isa, v13);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)_renderingPropertyUpdate:(id)update
{
  userInfo = [update userInfo];
  v4 = [userInfo objectForKey:@"PDFRenderingPropertyKey"];
  integerValue = [v4 integerValue];

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
    if ([WeakRetained enablePageShadows])
    {
      v7 = [WeakRetained isDarkMode] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [(PDFPageLayer *)self _setEnablePageShadows:v7];
  }

  if (integerValue == 7 || integerValue == 0)
  {
    [(PDFPageLayer *)self forceTileUpdate];
    [(PDFPageLayer *)self updatePageLayerEffects];
  }
}

- (void)_updateTiles
{
  v149 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  if (!self->_tileLayerHidden && self->_allowUpdate && [WeakRetained enableTileUpdates])
  {
    if ([(PDFPageLayer *)self isVisible]&& (GetDefaultsWriteDrawTiles() & 1) != 0)
    {
      isForcingUpdate = self->_isForcingUpdate;
      if (isForcingUpdate)
      {
        ++self->_generationCount;
      }

      v3 = objc_loadWeakRetained(&self->_page);
      [v3 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      oldPageRotation = self->_oldPageRotation;
      v130 = v3;
      if (oldPageRotation != [v3 rotation] || (v152.origin.x = v5, v152.origin.y = v7, v152.size.width = v9, v152.size.height = v11, !PDFRectEqualToRect(self->_oldBoundsForBox, v152)))
      {
        self->_oldPageRotation = [v3 rotation];
        self->_oldBoundsForBox.origin.x = v5;
        self->_oldBoundsForBox.origin.y = v7;
        self->_oldBoundsForBox.size.width = v9;
        self->_oldBoundsForBox.size.height = v11;
        [(PDFPageLayer *)self clearTiles];
      }

      v13 = objc_loadWeakRetained(&self->_geometryInterface);
      [v13 rootViewBounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      if (objc_opt_respondsToSelector())
      {
        [v13 extendedRootViewBounds];
        v15 = v22;
        v17 = v23;
        v125 = v24;
        v21 = v25;
      }

      else
      {
        v125 = v19;
      }

      v26 = isForcingUpdate;
      [(PDFPageLayer *)self bounds];
      [v13 convertRectToRootView:self fromPageLayer:{PDFRectFromCGRect(v27, v28, v29, v30)}];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v129 = +[PDFTilePool sharedPool];
      tileSurfaceSize = [v129 tileSurfaceSize];
      v40.n128_u64[0] = 0;
      v41.n128_u64[0] = 0;
      [v13 convertRootViewRect:self toPageLayer:{PDFRectMake(v40, v41, tileSurfaceSize, tileSurfaceSize)}];
      v117 = v42;
      v116 = tileSurfaceSize / v42;
      obj = tileSurfaceSize;
      if (vabdd_f64(self->_lastLayoutZoomFactor, tileSurfaceSize / v42) > 0.0001)
      {
        v43 = v34;
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceDate:self->_lastZoomChange];
        v46 = v45;

        if (self->_lastZoomChange && v46 < self->_zoomGenerationDelay)
        {
          if (!self->_zoomChangeScheduled)
          {
            self->_zoomChangeScheduled = 1;
            objc_initWeak(&location, self);
            v47 = dispatch_time(0, (self->_zoomGenerationDelay * 1000000000.0));
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __28__PDFPageLayer__updateTiles__block_invoke;
            block[3] = &unk_1E8151400;
            objc_copyWeak(&v146, &location);
            dispatch_after(v47, MEMORY[0x1E69E96A0], block);
            objc_destroyWeak(&v146);
            objc_destroyWeak(&location);
          }

LABEL_69:

          goto LABEL_70;
        }

        self->_lastLayoutZoomFactor = v116;
        self->_lastLayerFrameInRootView.origin.x = v32;
        self->_lastLayerFrameInRootView.origin.y = v43;
        v34 = v43;
        self->_lastLayerFrameInRootView.size.width = v36;
        self->_lastLayerFrameInRootView.size.height = v38;
        ++self->_generationCount;
        date2 = [MEMORY[0x1E695DF00] date];
        lastZoomChange = self->_lastZoomChange;
        self->_lastZoomChange = date2;

        [(PDFPageLayer *)self updatePageLayerEffects];
        v26 = isForcingUpdate;
        tileSurfaceSize = obj;
      }

      v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v32 < v15)
      {
        v53 = ((v15 - v32) / tileSurfaceSize);
      }

      else
      {
        v53 = 0;
      }

      v112 = v34;
      if (v34 < v17)
      {
        v54 = ((v17 - v34) / tileSurfaceSize);
      }

      else
      {
        v54 = 0;
      }

      v55 = v21 + v17 - v34;
      v124 = v21;
      if (v38 <= v21)
      {
        v55 = v38;
      }

      v114 = (v55 / tileSurfaceSize);
      v115 = v53;
      if (v54 <= v114)
      {
        v56 = v125 + v15 - v32;
        if (v36 <= v125)
        {
          v56 = v36;
        }

        v113 = (v56 / tileSurfaceSize);
        v57 = MEMORY[0x1E695EFD0];
        v122 = v32;
        v123 = v15;
        v121 = v17;
        do
        {
          if (v115 <= v113)
          {
            v128 = v112 + v54 * tileSurfaceSize;
            v58 = v115;
            do
            {
              v51.n128_f64[0] = v32 + v58 * tileSurfaceSize;
              v52.n128_f64[0] = v128;
              v150.origin.x = PDFRectMake(v51, v52, tileSurfaceSize, tileSurfaceSize);
              x = v150.origin.x;
              y = v150.origin.y;
              width = v150.size.width;
              height = v150.size.height;
              v153.origin.x = v15;
              v153.origin.y = v17;
              v153.size.height = v124;
              v153.size.width = v125;
              if (PDFRectIntersectsRect(v150, v153))
              {
                v52.n128_f64[0] = v117 * v54;
                v51.n128_f64[0] = v117 * v58;
                v63 = PDFRectMake(v51, v52, v117, v117);
                v67 = v63;
                v68 = v64;
                v69 = v65;
                v70 = v66;
                if (v26 || ![(PDFPageLayer *)self _hasTileWithFrameInLayer:v63, v64, v65, v66])
                {
                  v119 = v57[1];
                  *&location.a = *v57;
                  v120 = *&location.a;
                  *&location.c = v119;
                  *&location.tx = v57[2];
                  v118 = *&location.tx;
                  CGAffineTransformMakeTranslation(&t2, -v67, -v68);
                  *&t1.a = v120;
                  *&t1.c = v119;
                  *&t1.tx = v118;
                  CGAffineTransformConcat(&location, &t1, &t2);
                  CGAffineTransformMakeScale(&t1, v116, v116);
                  v141 = location;
                  CGAffineTransformConcat(&t2, &v141, &t1);
                  location = t2;
                  v71 = [PDFPageLayerTile alloc];
                  generationCount = self->_generationCount;
                  t2 = location;
                  v116 = [(PDFPageLayerTile *)v71 initWithFrame:self forPageLayer:&t2 withRenderingTransform:generationCount tileContentsScale:v67 generationID:v68, v69, v70, v116];
                  [(PDFPageLayerTile *)v116 setRootViewFrame:x, y, width, height];
                  if ([v13 flipsTileContents])
                  {
                    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
                    [(PDFPageLayerTile *)v116 setAffineTransform:&t2];
                  }

                  [v50 addObject:v116];
                }
              }

              ++v58;
              v32 = v122;
              v15 = v123;
              v17 = v121;
              tileSurfaceSize = obj;
            }

            while (v113 + 1 != v58);
          }
        }

        while (v54++ != v114);
      }

      v75 = [(NSMutableArray *)self->_tiles sortedArrayUsingComparator:&__block_literal_global_215];
      v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      obja = v75;
      v77 = [obja countByEnumeratingWithState:&v137 objects:v148 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v138;
        do
        {
          for (i = 0; i != v78; ++i)
          {
            if (*v138 != v79)
            {
              objc_enumerationMutation(obja);
            }

            v81 = *(*(&v137 + 1) + 8 * i);
            if (v81[30] >= self->_generationCount - 8 && (([*(*(&v137 + 1) + 8 * i) isWorking] & 1) != 0 || (objc_msgSend(v81, "hasContent") & 1) != 0 || v81[30] >= self->_generationCount))
            {
              [v81 bounds];
              [v81 convertRect:self toLayer:?];
              [v13 convertRectToRootView:self fromPageLayer:{PDFRectFromCGRect(v82, v83, v84, v85)}];
              v154.origin.x = v15;
              v154.origin.y = v17;
              v154.size.width = v125;
              v154.size.height = v124;
              if (PDFRectIntersectsRect(v151, v154))
              {
                continue;
              }
            }

            [v76 addObject:v81];
          }

          v78 = [obja countByEnumeratingWithState:&v137 objects:v148 count:16];
        }

        while (v78);
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      while ([v76 count])
      {
        lastObject = [v76 lastObject];
        [v76 removeLastObject];
        [lastObject removeFromSuperlayer];
        [(NSMutableArray *)self->_tiles removeObject:lastObject];
      }

      [MEMORY[0x1E6979518] commit];
      [v13 rootViewBounds];
      CenterPoint = PDFRectGetCenterPoint(v87, v88, v89);
      v136[0] = MEMORY[0x1E69E9820];
      v136[1] = 3221225472;
      v136[2] = __28__PDFPageLayer__updateTiles__block_invoke_3;
      v136[3] = &__block_descriptor_48_e47_q24__0__PDFPageLayerTile_8__PDFPageLayerTile_16l;
      *&v136[4] = CenterPoint;
      v136[5] = v91;
      v92 = [v50 sortedArrayUsingComparator:v136];
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v93 = v92;
      v94 = [v93 countByEnumeratingWithState:&v132 objects:v147 count:16];
      if (v94)
      {
        v95 = v94;
        v96 = *v133;
        do
        {
          for (j = 0; j != v95; ++j)
          {
            if (*v133 != v96)
            {
              objc_enumerationMutation(v93);
            }

            v98 = *(*(&v132 + 1) + 8 * j);
            [(CALayer *)self->_tilesLayer addSublayer:v98];
            [(NSMutableArray *)self->_tiles addObject:v98];
            [v98 setZPosition:-800.0];
            v99 = *(v98 + 104);
            [v98 frame];
            v104 = PDFRectFromCGRect(v100, v101, v102, v103);
            v106 = v105;
            ++_updateTiles_requestTag;
            v107 = *(v98 + 56);
            v108 = *(v98 + 88);
            *&location.c = *(v98 + 72);
            *&location.tx = v108;
            *&location.a = v107;
            [v129 requestPDFTileSurfaceForTarget:v98 forPage:v130 withRenderingProperties:WeakRetained atZoomFactor:&location frame:v99 transform:v104 tag:{v109, v106, v110}];
          }

          v95 = [v93 countByEnumeratingWithState:&v132 objects:v147 count:16];
        }

        while (v95);
      }

      [MEMORY[0x1E6979518] commit];
      if (isForcingUpdate)
      {
        self->_isForcingUpdate = 0;
      }

      goto LABEL_69;
    }

    self->_isForcingUpdate = 0;
    [(PDFPageLayer *)self _releaseTiles];
  }

LABEL_70:
}

void __28__PDFPageLayer__updateTiles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[208] = 0;
    v2 = WeakRetained;
    [WeakRetained _updateTiles];
    WeakRetained = v2;
  }
}

uint64_t __28__PDFPageLayer__updateTiles__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 120) < *(a3 + 120))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __28__PDFPageLayer__updateTiles__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 rootViewFrame];
  CenterPoint = PDFRectGetCenterPoint(v6, v7, v8);
  v11 = sqrt((v10 - *(a1 + 40)) * (v10 - *(a1 + 40)) + (CenterPoint - *(a1 + 32)) * (CenterPoint - *(a1 + 32)));
  [v5 rootViewFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = PDFRectGetCenterPoint(v13, v15, v17);
  if (v11 >= sqrt((v19 - *(a1 + 40)) * (v19 - *(a1 + 40)) + (v18 - *(a1 + 32)) * (v18 - *(a1 + 32))))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end