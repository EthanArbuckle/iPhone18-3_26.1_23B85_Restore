@interface PDFSimplePageLayer
- (BOOL)isVisible;
- (CGAffineTransform)layerEffectTransform;
- (PDFSimplePageLayer)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties;
- (id)geometryInterface;
- (id)page;
- (id)renderingProperties;
- (int64_t)displayBox;
- (void)_pageDidRotate:(id)rotate;
- (void)_updateGeometry;
- (void)_updateLayerEffect:(id)effect withPageTransform:(CGAffineTransform *)transform;
- (void)addPageLayerEffect:(id)effect;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)removePageLayerEffectForID:(id)d;
- (void)scalePageLayerEffects:(double)effects;
- (void)setNeedsTilesUpdate;
- (void)updatePageLayerEffectForID:(id)d;
- (void)updatePageLayerEffects;
@end

@implementation PDFSimplePageLayer

- (PDFSimplePageLayer)initWithPage:(id)page geometryInterface:(id)interface andRenderingProperties:(id)properties
{
  pageCopy = page;
  interfaceCopy = interface;
  propertiesCopy = properties;
  v28.receiver = self;
  v28.super_class = PDFSimplePageLayer;
  v11 = [(PDFSimplePageLayer *)&v28 init];
  if (v11)
  {
    document = [pageCopy document];
    objc_storeWeak(&v11->_page, pageCopy);
    objc_storeWeak(&v11->_geometryInterface, interfaceCopy);
    objc_storeWeak(&v11->_renderingProperties, propertiesCopy);
    [(PDFSimplePageLayer *)v11 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [pageCopy boundsForBox:{objc_msgSend(propertiesCopy, "displayBox")}];
    v14 = v13;
    v16 = v15;
    PDFPointMake(0.0, 0.0);
    [(PDFSimplePageLayer *)v11 setFrame:PDFRectToCGRect(v17)];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__pageDidRotate_ name:@"PDFPageDidRotate" object:document];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v11 selector:sel__pageDidRotate_ name:@"PDFPageDidChangeBounds" object:document];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v11 selector:sel__pageChangedPageRef_ name:@"PDFPagePageRefChanged" object:pageCopy];

    v21 = objc_alloc_init(MEMORY[0x1E6979398]);
    effectsLayer = v11->_effectsLayer;
    v11->_effectsLayer = v21;

    [(PDFSimplePageLayer *)v11 addSublayer:v11->_effectsLayer];
    [(CALayer *)v11->_effectsLayer setFrame:0.0, 0.0, v14, v16];
    [(CALayer *)v11->_effectsLayer setAllowsGroupBlending:0];
    v23 = objc_opt_new();
    pageLayerEffects = v11->_pageLayerEffects;
    v11->_pageLayerEffects = v23;

    [(PDFSimplePageLayer *)v11 setContentsScale:2.0];
    [(PDFSimplePageLayer *)v11 setMinificationFilter:*MEMORY[0x1E6979D68]];
    v25 = [document indexForPage:pageCopy];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PDFPageLayer, page index %d", v25];
    [(PDFSimplePageLayer *)v11 setName:v26];
  }

  return v11;
}

- (void)dealloc
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateGeometry object:0];
  v3.receiver = self;
  v3.super_class = PDFSimplePageLayer;
  [(PDFSimplePageLayer *)&v3 dealloc];
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
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__updateGeometry object:0];

  [(PDFSimplePageLayer *)self performSelector:sel__updateGeometry withObject:0 afterDelay:0.25];
}

- (int64_t)displayBox
{
  WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
  displayBox = [WeakRetained displayBox];

  return displayBox;
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

  [(PDFSimplePageLayer *)self bounds];
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
    [(PDFSimplePageLayer *)self updatePageLayerEffectForID:uUID4];

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
  v4 = [(PDFSimplePageLayer *)self pageLayerEffectForID:d];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(PDFSimplePageLayer *)self layerEffectTransform];
    [(PDFSimplePageLayer *)self _updateLayerEffect:v4 withPageTransform:&v5];
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
  [(PDFSimplePageLayer *)self layerEffectTransform];
  _pageLayerEffects = [(PDFSimplePageLayer *)self _pageLayerEffects];
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
        [(PDFSimplePageLayer *)self _updateLayerEffect:v8 withPageTransform:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [_pageLayerEffects countByEnumeratingWithState:&v10 objects:v17 count:16];
    }

    while (v5);
  }

  [MEMORY[0x1E6979518] commit];
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

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  [(PDFSimplePageLayer *)self frame];
  v8.b = 0.0;
  v8.c = 0.0;
  v8.a = 1.0;
  *&v8.d = xmmword_1C1D79E00;
  v8.ty = v5;
  CGContextConcatCTM(context, &v8);
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v7 = objc_loadWeakRetained(&self->_renderingProperties);
  [WeakRetained drawWithBox:objc_msgSend(v7 inContext:{"displayBox"), context}];

  CGContextRestoreGState(context);
}

- (void)_updateGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_geometryInterface);
  v3.n128_u64[0] = 0;
  v4.n128_u64[0] = 0;
  [WeakRetained convertRootViewRect:self toPageLayer:{PDFRectMake(v3, v4, 1.0, 1.0)}];
  v6 = 1.0 / v5;
  [(PDFSimplePageLayer *)self setContentsScale:1.0 / v5];
  self->_contentsScale = v6;
  [(PDFSimplePageLayer *)self setNeedsDisplay];
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

- (void)_pageDidRotate:(id)rotate
{
  userInfo = [rotate userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"page"];

  page = [(PDFSimplePageLayer *)self page];

  v6 = v8;
  if (v8 == page)
  {
    WeakRetained = objc_loadWeakRetained(&self->_renderingProperties);
    [v8 boundsForBox:{objc_msgSend(WeakRetained, "displayBox")}];

    PDFPointMake(0.0, 0.0);
    if ([v8 rotation] != 90)
    {
      [v8 rotation];
    }

    [MEMORY[0x1E6979518] begin];
    -[PDFSimplePageLayer setFrame:](self, "setFrame:", PDFRectToCGRect([MEMORY[0x1E6979518] setDisableActions:1]));
    [(PDFSimplePageLayer *)self display];
    [MEMORY[0x1E6979518] commit];
    [(PDFSimplePageLayer *)self updatePageLayerEffects];
    v6 = v8;
  }
}

@end