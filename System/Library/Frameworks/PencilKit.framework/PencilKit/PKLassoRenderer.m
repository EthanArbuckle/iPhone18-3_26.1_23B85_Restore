@interface PKLassoRenderer
- (CGPoint)editMenuLocation;
- (PKLassoRenderer)initWithStrokeSelection:(id)a3 renderingDelegate:(id)a4;
- (id)_expandBezierPathIfNecessary:(void *)a1;
- (id)initForLiveSelectionWithRenderingDelegate:(id)a3;
- (uint64_t)_setupAccessibilityObservers;
- (uint64_t)_setupAnimatedLasso;
- (void)_renderLiveSelectionPath:(CGPath *)a3 forStrokes:(id)a4 inDrawing:(id)a5 liveScrollOffset:(CGPoint)a6;
- (void)_setupLassoLayerAppearanceWithBezierPath:(id *)a1;
- (void)_setupSelectionAdornment;
- (void)_updateLassoForAccessibility:(id)a3;
- (void)addAnimationsToSelectionLayer:(void *)a3 whiteLayer:;
- (void)dealloc;
@end

@implementation PKLassoRenderer

- (uint64_t)_setupAccessibilityObservers
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:a1 selector:sel__updateLassoForAccessibility_ name:*MEMORY[0x1E69DD8B8] object:0];

  return [a1 _updateLassoForAccessibility:0];
}

- (PKLassoRenderer)initWithStrokeSelection:(id)a3 renderingDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKLassoRenderer;
  v9 = [(PKLassoRenderer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSelection, a3);
    objc_storeWeak(&v10->_renderingDelegate, v8);
  }

  return v10;
}

- (id)initForLiveSelectionWithRenderingDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKLassoRenderer;
  v5 = [(PKLassoRenderer *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingDelegate, v4);
    if (!v6->_lassoLayer)
    {
      v7 = [MEMORY[0x1E69794A0] layer];
      lassoLayer = v6->_lassoLayer;
      v6->_lassoLayer = v7;

      v9 = [MEMORY[0x1E69794A0] layer];
      whiteLassoLayer = v6->_whiteLassoLayer;
      v6->_whiteLassoLayer = v9;

      [(PKLassoRenderer *)&v6->super.isa _setupLassoLayerAppearanceWithBezierPath:?];
      [(CAShapeLayer *)v6->_lassoLayer addSublayer:v6->_whiteLassoLayer];
      [(PKLassoRenderer *)v6 _setupAccessibilityObservers];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  if (self)
  {
    calculateSelectionHullBlock = self->_calculateSelectionHullBlock;
    if (calculateSelectionHullBlock)
    {
      dispatch_block_cancel(calculateSelectionHullBlock);
      objc_setProperty_nonatomic_copy(self, v5, 0, 64);
    }
  }

  v6.receiver = self;
  v6.super_class = PKLassoRenderer;
  [(PKLassoRenderer *)&v6 dealloc];
}

- (void)_updateLassoForAccessibility:(id)a3
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 2.0;
  }

  [(CAShapeLayer *)self->_lassoLayer setLineWidth:v4];
  [(CAShapeLayer *)self->_whiteLassoLayer setLineWidth:v4];
  v5 = UIAccessibilityDarkerSystemColorsEnabled();
  v6 = MEMORY[0x1E6979E80];
  if (!v5)
  {
    v6 = MEMORY[0x1E6979E78];
  }

  v7 = *v6;
  [(CAShapeLayer *)self->_lassoLayer setLineCap:?];
  [(CAShapeLayer *)self->_whiteLassoLayer setLineCap:v7];
}

- (void)_setupSelectionAdornment
{
  [(PKLassoRenderer *)self _setupAnimatedLasso];
  if (self->_strokeSelection)
  {
    lassoLayer = self->_lassoLayer;
    whiteLassoLayer = self->_whiteLassoLayer;

    [(PKLassoRenderer *)self addAnimationsToSelectionLayer:whiteLassoLayer whiteLayer:?];
  }
}

- (uint64_t)_setupAnimatedLasso
{
  v60 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!*(result + 8))
    {
      v2 = [MEMORY[0x1E69794A0] layer];
      v3 = *(v1 + 8);
      *(v1 + 8) = v2;

      v4 = [MEMORY[0x1E69794A0] layer];
      v5 = *(v1 + 16);
      *(v1 + 16) = v4;

      v40 = [*(v1 + 48) strokes];
      v6 = *(v1 + 8);
      v7 = *(v1 + 16);
      v8 = [*(v1 + 48) lassoStroke];
      v9 = v40;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      WeakRetained = objc_loadWeakRetained((v1 + 56));
      v14 = *(v1 + 48);
      v15 = [v14 drawing];
      [WeakRetained scaleForDrawing:v15];
      v17 = v16;

      v53 = 0;
      v54 = 0;
      v52 = 0;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      *__p = 0u;
      v18 = v9;
      v19 = [v18 countByEnumeratingWithState:&v48 objects:block count:16];
      if (v19)
      {
        v20 = *v49;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v49 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v48 + 1) + 8 * i) _appendPointsOfInterestForSelection:&v52 step:1.0];
          }

          v19 = [v18 countByEnumeratingWithState:&v48 objects:block count:16];
        }

        while (v19);
      }

      *&v48 = 0;
      *(&v48 + 1) = &v48;
      *&v49 = 0x4812000000;
      *(&v49 + 1) = __Block_byref_object_copy__33;
      *&v50 = __Block_byref_object_dispose__33;
      *(&v50 + 1) = "";
      [PKPathUtility unorderedSimplifiedPointsFromPoints:&v52 factor:4.0 / *&v17];
      objc_initWeak(&location, v10);
      objc_initWeak(&v46, v11);
      objc_initWeak(&from, v1);
      [*(v1 + 48) bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke;
      block[3] = &unk_1E82DC1A0;
      block[4] = &v48;
      objc_copyWeak(&v56, &from);
      v58[1] = v23;
      v58[2] = v25;
      v58[3] = v27;
      v58[4] = v29;
      v58[5] = v17;
      v59 = 1;
      objc_copyWeak(&v57, &location);
      objc_copyWeak(v58, &v46);
      v30 = dispatch_block_create(0, block);
      objc_setProperty_nonatomic_copy(v1, v31, v30, 64);

      v32 = objc_loadWeakRetained((v1 + 56));
      v33 = [v32 selectionHullQueue];
      dispatch_async(v33, *(v1 + 64));

      [*(v1 + 48) bounds];
      memset(&v44, 0, sizeof(v44));
      CGAffineTransformMakeTranslation(&v44, -v34, -v35);
      t1 = v44;
      CGAffineTransformMakeScale(&t2, *&v17, *&v17);
      CGAffineTransformConcat(&v43, &t1, &t2);
      v44 = v43;
      if (v12)
      {
        v36 = [v12 _newPathRepresentation];
        v37 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v36];
        memset(&v43, 0, sizeof(v43));
        [v12 _transform];
        t2 = v44;
        CGAffineTransformConcat(&v43, &t1, &t2);
        t1 = v43;
        [v37 applyTransform:&t1];
        CGPathRelease(v36);
        v38 = [PKLassoRenderer _expandBezierPathIfNecessary:v37];
        v39 = *(v1 + 40);
        *(v1 + 40) = v38;
      }

      else
      {
        v37 = 0;
      }

      [(PKLassoRenderer *)v1 _setupLassoLayerAppearanceWithBezierPath:v37];

      objc_destroyWeak(v58);
      objc_destroyWeak(&v57);
      objc_destroyWeak(&v56);
      objc_destroyWeak(&from);
      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
      _Block_object_dispose(&v48, 8);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      [*(v1 + 8) addSublayer:*(v1 + 16)];

      return [(PKLassoRenderer *)v1 _setupAccessibilityObservers];
    }
  }

  return result;
}

- (void)addAnimationsToSelectionLayer:(void *)a3 whiteLayer:
{
  v17 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineDashPhase"];
    LODWORD(v7) = 14.0;
    v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    [v6 setFromValue:v8];

    v9 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
    [v6 setToValue:v9];

    [v6 setDuration:1.0];
    LODWORD(v10) = 2139095039;
    [v6 setRepeatCount:v10];
    [v17 addAnimation:v6 forKey:@"linePhase"];
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineDashPhase"];
    LODWORD(v12) = 21.0;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    [v11 setFromValue:v13];

    LODWORD(v14) = 7.0;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    [v11 setToValue:v15];

    [v11 setDuration:1.0];
    LODWORD(v16) = 2139095039;
    [v11 setRepeatCount:v16];
    [v5 addAnimation:v11 forKey:@"linePhase"];
  }
}

- (CGPoint)editMenuLocation
{
  x = self->_editMenuLocation.x;
  y = self->_editMenuLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_renderLiveSelectionPath:(CGPath *)a3 forStrokes:(id)a4 inDrawing:(id)a5 liveScrollOffset:(CGPoint)a6
{
  [(PKLassoRenderer *)self _setupAnimatedLasso];
  if (self)
  {
    [(CAShapeLayer *)self->_lassoLayer setPath:a3];
    [(CAShapeLayer *)self->_whiteLassoLayer setPath:a3];
  }

  lassoLayer = self->_lassoLayer;
  if (a3)
  {
    whiteLassoLayer = self->_whiteLassoLayer;

    [(PKLassoRenderer *)self addAnimationsToSelectionLayer:whiteLassoLayer whiteLayer:?];
  }

  else
  {
    [(CAShapeLayer *)self->_lassoLayer removeAllAnimations];
    v10 = self->_whiteLassoLayer;

    [(CAShapeLayer *)v10 removeAllAnimations];
  }
}

- (void)_setupLassoLayerAppearanceWithBezierPath:(id *)a1
{
  v27 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v4 = [a1[6] drawing];
  [WeakRetained scaleForDrawing:v4];
  v6 = v5;

  v7 = a1[1];
  v8 = a1[2];
  [v7 setContentsScale:v6];
  [v7 setPath:{objc_msgSend(v27, "CGPath")}];
  [v7 setLineWidth:2.0];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  [v7 setFillColor:{objc_msgSend(v9, "CGColor")}];

  v10 = [MEMORY[0x1E69DC888] blackColor];
  v11 = [v10 CGColor];

  [v7 setStrokeColor:v11];
  v12 = *MEMORY[0x1E6979E98];
  [v7 setLineJoin:*MEMORY[0x1E6979E98]];
  v13 = MEMORY[0x1E695DEC8];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v15 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v16 = [v13 arrayWithObjects:{v14, v15, 0}];
  [v7 setLineDashPattern:v16];

  v17 = *MEMORY[0x1E6979E78];
  [v7 setLineCap:*MEMORY[0x1E6979E78]];
  LODWORD(v18) = 0.5;
  [v7 setOpacity:v18];
  v19 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v19 scale];
  [v8 setContentsScale:?];

  [v8 setPath:{objc_msgSend(v27, "CGPath")}];
  [v8 setLineWidth:2.0];
  v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  [v8 setFillColor:{objc_msgSend(v20, "CGColor")}];

  v21 = [MEMORY[0x1E69DC888] whiteColor];
  [v8 setStrokeColor:{objc_msgSend(v21, "CGColor")}];

  LODWORD(v22) = 1.0;
  [v8 setOpacity:v22];
  [v8 setLineJoin:v12];
  v23 = MEMORY[0x1E695DEC8];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v26 = [v23 arrayWithObjects:{v24, v25, 0}];
  [v8 setLineDashPattern:v26];

  [v8 setLineCap:v17];
}

void __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke_2;
  v4[3] = &unk_1E82DC178;
  objc_copyWeak(&v5, (a1 + 40));
  v3 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = v3;
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  objc_copyWeak(&v6, (a1 + 48));
  objc_copyWeak(&v7, (a1 + 56));
  [PKPathUtility smoothedHullForPoints:v2 + 48 completion:v4];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke_3;
  v6[3] = &unk_1E82DC150;
  objc_copyWeak(&v8, (a1 + 32));
  v4 = *(a1 + 72);
  v11 = *(a1 + 56);
  v12 = v4;
  v13 = *(a1 + 88);
  v7 = v3;
  v14 = *(a1 + 96);
  v5 = v3;
  objc_copyWeak(&v9, (a1 + 40));
  objc_copyWeak(&v10, (a1 + 48));
  dispatch_async(MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&v8);
}

void __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    memset(&v29, 0, sizeof(v29));
    CGAffineTransformMakeTranslation(&v29, -v3, -v4);
    t1 = v29;
    CGAffineTransformMakeScale(&t2, *(a1 + 96), *(a1 + 96));
    CGAffineTransformConcat(&v31, &t1, &t2);
    v29 = v31;
    [*(a1 + 32) applyTransform:&v31];
    v5 = *(a1 + 32);
    v6 = v5;
    if (*(a1 + 104) == 1)
    {
      v7 = [PKLassoRenderer _expandBezierPathIfNecessary:v5];
      v8 = WeakRetained[5];
      WeakRetained[5] = v7;
    }

    v9 = [WeakRetained lassoPath];
    v10 = v9;
    v11 = [v9 CGPath];

    v12 = MEMORY[0x1E69DD250];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke_4;
    v25[3] = &unk_1E82DC128;
    objc_copyWeak(&v26, (a1 + 48));
    v27[1] = v11;
    objc_copyWeak(v27, (a1 + 56));
    [v12 animateWithDuration:v25 animations:0 completion:0.300000012];
    BoundingBox = CGPathGetBoundingBox(v11);
    MidX = CGRectGetMidX(BoundingBox);
    memset(&t2, 0, 24);
    PKPointsFromPath(v11, &t2, 1.79769313e308, 0.0);
    v31.a = MidX;
    v31.b = 0.0;
    v31.c = MidX;
    v31.d = 10000.0;
    a = t2.a;
    v15 = *&t2.b - *&t2.a;
    if (*&t2.b == *&t2.a)
    {
      if (!*&t2.a)
      {
LABEL_17:
        objc_destroyWeak(v27);
        objc_destroyWeak(&v26);

        goto LABEL_18;
      }
    }

    else
    {
      v16 = v15 >> 4;
      if ((v15 >> 4) <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v15 >> 4;
      }

      v18 = 1.79769313e308;
      v19 = 1;
      v20 = t2.a;
      do
      {
        v21 = 0;
        *&t1.a = **&v20;
        *&t1.c = *(*&a + 16 * (v19 % v16));
        if (DKDIntersectionOfLines(&v31.a, &t1.a, &v21, &v22, &v23, 0, 0) && v24 < v18)
        {
          MidX = v23;
          v18 = v24;
        }

        *&v20 += 16;
        ++v19;
        --v17;
      }

      while (v17);
      if (v18 < 1.79769313e308)
      {
        *(WeakRetained + 3) = MidX;
        *(WeakRetained + 4) = v18;
      }
    }

    t2.b = a;
    operator delete(*&a);
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_expandBezierPathIfNecessary:(void *)a1
{
  v1 = a1;
  BoundingBox = CGPathGetBoundingBox([v1 CGPath]);
  x = BoundingBox.origin.x;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if (BoundingBox.size.width < 60.0 && BoundingBox.size.height < 60.0)
  {
    y = BoundingBox.origin.y;
    MidX = CGRectGetMidX(BoundingBox);
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v8 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{MidX + -30.0, CGRectGetMidY(v12) + -30.0, 60.0}];

    v1 = v8;
  }

  v9 = v1;

  return v1;
}

void __100__PKLassoRenderer__setupAnimatedLassoForStrokes_lassoLayer_whiteLassoLayer_isSelection_lassoStroke___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPath:v2];

  v3 = *(a1 + 48);
  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setPath:v3];
}

@end