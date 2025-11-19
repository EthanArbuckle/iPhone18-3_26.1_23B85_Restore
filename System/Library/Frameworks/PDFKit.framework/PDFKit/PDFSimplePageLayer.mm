@interface PDFSimplePageLayer
- (BOOL)isVisible;
- (CGAffineTransform)layerEffectTransform;
- (PDFSimplePageLayer)initWithPage:(id)a3 geometryInterface:(id)a4 andRenderingProperties:(id)a5;
- (id)geometryInterface;
- (id)page;
- (id)renderingProperties;
- (int64_t)displayBox;
- (void)_pageDidRotate:(id)a3;
- (void)_updateGeometry;
- (void)_updateLayerEffect:(id)a3 withPageTransform:(CGAffineTransform *)a4;
- (void)addPageLayerEffect:(id)a3;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)removePageLayerEffectForID:(id)a3;
- (void)scalePageLayerEffects:(double)a3;
- (void)setNeedsTilesUpdate;
- (void)updatePageLayerEffectForID:(id)a3;
- (void)updatePageLayerEffects;
@end

@implementation PDFSimplePageLayer

- (PDFSimplePageLayer)initWithPage:(id)a3 geometryInterface:(id)a4 andRenderingProperties:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = PDFSimplePageLayer;
  v11 = [(PDFSimplePageLayer *)&v28 init];
  if (v11)
  {
    v12 = [v8 document];
    objc_storeWeak(&v11->_page, v8);
    objc_storeWeak(&v11->_geometryInterface, v9);
    objc_storeWeak(&v11->_renderingProperties, v10);
    [(PDFSimplePageLayer *)v11 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [v8 boundsForBox:{objc_msgSend(v10, "displayBox")}];
    v14 = v13;
    v16 = v15;
    PDFPointMake(0.0, 0.0);
    [(PDFSimplePageLayer *)v11 setFrame:PDFRectToCGRect(v17)];
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v11 selector:sel__pageDidRotate_ name:@"PDFPageDidRotate" object:v12];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v11 selector:sel__pageDidRotate_ name:@"PDFPageDidChangeBounds" object:v12];

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v11 selector:sel__pageChangedPageRef_ name:@"PDFPagePageRefChanged" object:v8];

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
    v25 = [v12 indexForPage:v8];
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
  v3 = [WeakRetained displayBox];

  return v3;
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

- (void)addPageLayerEffect:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    pageLayerEffects = self->_pageLayerEffects;
    v6 = [v13 UUID];
    v7 = [(NSMutableDictionary *)pageLayerEffects objectForKey:v6];

    if (v7)
    {
      [v7 removeFromSuperlayer];
      v8 = self->_pageLayerEffects;
      v9 = [v7 UUID];
      [(NSMutableDictionary *)v8 removeObjectForKey:v9];
    }

    [(CALayer *)self->_effectsLayer addSublayer:v13];
    v10 = self->_pageLayerEffects;
    v11 = [v13 UUID];
    [(NSMutableDictionary *)v10 setObject:v13 forKey:v11];

    v12 = [v13 UUID];
    [(PDFSimplePageLayer *)self updatePageLayerEffectForID:v12];

    [MEMORY[0x1E6979518] commit];
    v4 = v13;
  }
}

- (void)removePageLayerEffectForID:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_pageLayerEffects objectForKey:?];
  if (v4)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v4 removeFromSuperlayer];
    [(NSMutableDictionary *)self->_pageLayerEffects removeObjectForKey:v5];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)updatePageLayerEffectForID:(id)a3
{
  v4 = [(PDFSimplePageLayer *)self pageLayerEffectForID:a3];
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
  v3 = [(PDFSimplePageLayer *)self _pageLayerEffects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9[0] = v14;
        v9[1] = v15;
        v9[2] = v16;
        [(PDFSimplePageLayer *)self _updateLayerEffect:v8 withPageTransform:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v17 count:16];
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
  v8 = [v7 displayBox];
  if (WeakRetained)
  {
    [WeakRetained transformForBox:v8];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return [PDFPage setNativeRotationDrawingEnabledForThisThread:v5];
}

- (void)scalePageLayerEffects:(double)a3
{
  [(CALayer *)self->_effectsLayer frame];
  v6 = v5;
  v8 = v7;
  effectsLayer = self->_effectsLayer;
  CGAffineTransformMakeScale(&v10, a3, a3);
  [(CALayer *)effectsLayer setAffineTransform:&v10];
  [(CALayer *)self->_effectsLayer setFrame:0.0, 0.0, v6, v8];
}

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(PDFSimplePageLayer *)self frame];
  v8.b = 0.0;
  v8.c = 0.0;
  v8.a = 1.0;
  *&v8.d = xmmword_1C1D79E00;
  v8.ty = v5;
  CGContextConcatCTM(a3, &v8);
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v7 = objc_loadWeakRetained(&self->_renderingProperties);
  [WeakRetained drawWithBox:objc_msgSend(v7 inContext:{"displayBox"), a3}];

  CGContextRestoreGState(a3);
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

- (void)_updateLayerEffect:(id)a3 withPageTransform:(CGAffineTransform *)a4
{
  v6 = a3;
  [v6 pageFrame];
  v8 = v7;
  CenterPoint = PDFRectGetCenterPoint(v9, v10, v7);
  v13 = PDFPointToCGPoint(CenterPoint, v12);
  v15 = vaddq_f64(*&a4->tx, vmlaq_n_f64(vmulq_n_f64(*&a4->c, v14), *&a4->a, v13));
  v16 = PDFPointFromCGPoint(v15.f64[0], v15.f64[1]);
  PDFRectMakeFromCenter(v16, v17, v8);
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v19 = [WeakRetained rotation];
  v20 = objc_loadWeakRetained(&self->_renderingProperties);
  [WeakRetained boundsForBox:{objc_msgSend(v20, "displayBox")}];
  v22 = v21;
  v24 = v23;

  PDFRectRotate(v19, v22, v24);
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v27.a = *MEMORY[0x1E695EFD0];
  *&v27.c = v25;
  *&v27.tx = *(MEMORY[0x1E695EFD0] + 32);
  [v6 setFrame:{PDFRectToCGRect(objc_msgSend(v6, "setAffineTransform:", &v27))}];
  if ([v6 shouldRotateContent])
  {
    v26 = PDFDegToRad(v19);
    CGAffineTransformMakeRotation(&v27, v26);
    [v6 setAffineTransform:&v27];
  }

  [v6 update];
}

- (void)_pageDidRotate:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKeyedSubscript:@"page"];

  v5 = [(PDFSimplePageLayer *)self page];

  v6 = v8;
  if (v8 == v5)
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