@interface AKSmoothPathView
+ (id)newSmoothPathViewForCurrentPlatformWithController:(id)a3;
- (AKController)controller;
- (AKSmoothPathView)initWithController:(id)a3;
- (AKSmoothPathView)initWithFrame:(CGRect)a3;
- (BOOL)_catchUpAccumulatedTouchesForRecognizer:(id)a3;
- (CGRect)singleDotRect;
- (__n128)_pointForRecognizer:(void *)a3;
- (__n128)_pointForTouch:(void *)a3;
- (double)_convertValueFromModelToSelf:(double)a3;
- (double)_effectiveStrokeWidthInModel;
- (double)_windowBackingScaleFactor;
- (double)weightForValue:(double)a3;
- (id)drawing;
- (void)_clear;
- (void)_setupFilterChainWithBitmapFifo:(BOOL)a3;
- (void)_setupShadowInContext:(CGContext *)a3;
- (void)_updateInterpolatingFifoLineWidth;
- (void)_updateShadowRadiusInView;
- (void)awakeFromNib;
- (void)callDelegate;
- (void)commonInit;
- (void)continueStrokeWithoutSmoothing:(AKSmoothPathView *)self;
- (void)drawRect:(CGRect)a3;
- (void)handleDragAction:(id)a3;
- (void)handleTapAction:(id)a3;
- (void)setHasShadow:(BOOL)a3;
- (void)setPrestrokedOutputMode:(BOOL)a3;
- (void)setStartedTouchDrawing:(BOOL)a3;
- (void)setStrokeWidth:(double)a3;
- (void)startStroke;
- (void)teardown;
- (void)terminateStroke;
- (void)updateInterpolatingFifoUnitScale;
@end

@implementation AKSmoothPathView

+ (id)newSmoothPathViewForCurrentPlatformWithController:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithController:v3];

  return v4;
}

- (AKSmoothPathView)initWithController:(id)a3
{
  v4 = a3;
  v5 = [(AKSmoothPathView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(AKSmoothPathView *)v5 setController:v4];
  }

  return v6;
}

- (AKSmoothPathView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKSmoothPathView;
  v3 = [(AKSmoothPathView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKSmoothPathView *)v3 commonInit];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = AKSmoothPathView;
  [(AKSmoothPathView *)&v3 awakeFromNib];
  [(AKSmoothPathView *)self commonInit];
}

- (void)commonInit
{
  [(AKSmoothPathView *)self setUserInteractionEnabled:0];
  [(AKSmoothPathView *)self setMinPressure:0.015];
  [(AKSmoothPathView *)self setMaxPressure:0.25];
  [(AKSmoothPathView *)self setMinThickness:0.04];
  [(AKSmoothPathView *)self setMaxThickness:1.1];
  [(AKSmoothPathView *)self setCurrentWeight:1.0];
  [(AKSmoothPathView *)self setStartedTouchDrawing:0];
  [(AKSmoothPathView *)self setStrokeWidth:6.0];
  v3 = [MEMORY[0x277D75348] akColorWithSRGBRed:0.705882353 green:0.88627451 blue:0.968627451 alpha:1.0];
  [(AKSmoothPathView *)self setStrokeColor:v3];

  [(AKSmoothPathView *)self setPrestrokedOutputMode:0];
}

- (void)teardown
{
  v3 = [(AKSmoothPathView *)self bitmapFifo];
  [v3 teardown];

  [(AKSmoothPathView *)self setBitmapFifo:0];
  [(AKSmoothPathView *)self setInterpolatingFIFO:0];
  [(AKSmoothPathView *)self setSmoothingFIFO:0];
  [(AKSmoothPathView *)self setStrokeFIFO:0];

  [(AKSmoothPathView *)self setDelegate:0];
}

- (void)_setupFilterChainWithBitmapFifo:(BOOL)a3
{
  if (a3)
  {
    v4 = [[AKBitmapFIFO alloc] initWithFIFO:0];
    [(AKSmoothPathView *)self setBitmapFifo:v4];

    v5 = [(AKSmoothPathView *)self bitmapFifo];
    [v5 setView:self];

    v6 = [(AKSmoothPathView *)self bitmapFifo];
    [v6 setIsInLiveDraw:0];

    v7 = [(AKSmoothPathView *)self bitmapFifo];
    [v7 setBitmapSizeMultiplier:3.0];

    [(AKSmoothPathView *)self _updateShadowRadiusInView];
    v8 = [objc_alloc(MEMORY[0x277CFEE48]) initWithFIFO:0 drawingTarget:0];
    [(AKSmoothPathView *)self setInterpolatingFIFO:v8];

    v9 = [(AKSmoothPathView *)self interpolatingFIFO];
    [v9 setEmitInterpolatedPoints:1];

    objc_initWeak(&location, self);
    v10 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_23F478294;
    v26[3] = &unk_278C7C0D8;
    objc_copyWeak(&v27, &location);
    v11 = [(AKSmoothPathView *)self interpolatingFIFO];
    [v11 setEmissionHandler:v26];
  }

  else
  {
    v12 = [(AKSmoothPathView *)self bitmapFifo];
    [v12 teardown];

    [(AKSmoothPathView *)self setBitmapFifo:0];
    v13 = [objc_alloc(MEMORY[0x277CFEE48]) initWithFIFO:0 drawingTarget:self];
    [(AKSmoothPathView *)self setInterpolatingFIFO:v13];

    v14 = [(AKSmoothPathView *)self interpolatingFIFO];
    [v14 setEmitInterpolatedPoints:0];

    objc_initWeak(&location, self);
    v10 = v24;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_23F4783A4;
    v24[3] = &unk_278C7C0D8;
    objc_copyWeak(&v25, &location);
    v11 = [(AKSmoothPathView *)self interpolatingFIFO];
    [v11 setEmissionHandler:v24];
  }

  objc_destroyWeak(v10 + 4);
  objc_destroyWeak(&location);
  [(AKSmoothPathView *)self updateInterpolatingFifoUnitScale];
  [(AKSmoothPathView *)self _updateInterpolatingFifoLineWidth];
  [(AKSmoothPathView *)self _windowBackingScaleFactor];
  v16 = 1.0 / v15;
  v17 = objc_alloc(MEMORY[0x277CFEE30]);
  v18 = [(AKSmoothPathView *)self interpolatingFIFO];
  v19 = v16 * 4.0;
  *&v19 = v16 * 4.0;
  v20 = [v17 initWithFIFO:v18 width:3 spacing:v19];
  [(AKSmoothPathView *)self setSmoothingFIFO:v20];

  v21 = objc_alloc(MEMORY[0x277CFEE40]);
  v22 = [(AKSmoothPathView *)self smoothingFIFO];
  v23 = [v21 initWithFIFO:v22];
  [(AKSmoothPathView *)self setStrokeFIFO:v23];

  [(AKSmoothPathView *)self setStartedTouchDrawing:0];
}

- (void)updateInterpolatingFifoUnitScale
{
  [(AKSmoothPathView *)self _windowBackingScaleFactor];
  *&v3 = v3;
  v4 = 5.0 / *&v3;
  v6 = [(AKSmoothPathView *)self interpolatingFIFO];
  *&v5 = v4;
  [v6 setUnitScale:v5];
}

- (void)callDelegate
{
  if ([(AKSmoothPathView *)self prestrokedOutputMode])
  {
    v3 = [(AKSmoothPathView *)self bitmapFifo];
    v4 = [v3 newPathFromCurrentBitmap];
  }

  else
  {
    if (![(AKSmoothPathView *)self disableSingleDotSpecialCase])
    {
      v5 = *MEMORY[0x277CBF3A0];
      v6 = *(MEMORY[0x277CBF3A0] + 8);
      v7 = *(MEMORY[0x277CBF3A0] + 16);
      v8 = *(MEMORY[0x277CBF3A0] + 24);
      [(AKSmoothPathView *)self singleDotRect];
      v27.origin.x = v9;
      v27.origin.y = v10;
      v27.size.width = v11;
      v27.size.height = v12;
      v24.origin.x = v5;
      v24.origin.y = v6;
      v24.size.width = v7;
      v24.size.height = v8;
      if (!CGRectEqualToRect(v24, v27))
      {
        [(AKSmoothPathView *)self singleDotRect];
        v4 = CGPathCreateWithEllipseInRect(v26, 0);
        v14 = 1;
        if (!v4)
        {
          goto LABEL_18;
        }

        goto LABEL_7;
      }
    }

    v13 = [(AKSmoothPathView *)self interpolatingFIFO];
    v4 = [v13 path];

    CGPathRetain(v4);
  }

  v14 = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (!CGPathIsEmpty(v4))
  {
    BoundingBox = CGPathGetBoundingBox(v4);
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    [(AKSmoothPathView *)self convertRect:0 toView:0.0, 0.0, 1.0, 1.0];
    if (width * v18 > 2.0 || height * v17 > 2.0)
    {
      v20 = v14 | [(AKSmoothPathView *)self prestrokedOutputMode];
      v21 = [(AKSmoothPathView *)self delegate];
      v22 = v21;
      if (v20 == 1)
      {
        [v21 inputView:self didCollectPrestrokedPath:v4];
      }

      else
      {
        [v21 inputView:self didCollectPath:v4];
      }
    }
  }

LABEL_18:
  CGPathRelease(v4);

  MEMORY[0x2821F9670](self, sel__clear);
}

- (void)setPrestrokedOutputMode:(BOOL)a3
{
  self->_prestrokedOutputMode = a3;
  [(AKSmoothPathView *)self setCurrentWeight:1.0];

  MEMORY[0x2821F9670](self, sel__setupFilterChainWithBitmapFifo_);
}

- (void)setStartedTouchDrawing:(BOOL)a3
{
  v3 = a3;
  if (self->_startedTouchDrawing != a3)
  {
    self->_startedTouchDrawing = a3;
  }

  v4 = [(AKSmoothPathView *)self bitmapFifo];
  [v4 setIsInLiveDraw:v3];
}

- (void)setStrokeWidth:(double)a3
{
  if (self->_strokeWidth != a3)
  {
    self->_strokeWidth = a3;
    [(AKSmoothPathView *)self setApplyModelBaseScaleFactorToStroke:fabs(a3 + -1.0) >= 0.0005];
    [(AKSmoothPathView *)self _updateInterpolatingFifoLineWidth];

    [(AKSmoothPathView *)self updateInterpolatingFifoUnitScale];
  }
}

- (void)setHasShadow:(BOOL)a3
{
  self->_hasShadow = a3;
  v4 = 0.0;
  if (a3)
  {
    v5 = [(AKSmoothPathView *)self controller];
    v6 = [v5 currentPageController];
    [v6 modelBaseScaleFactor];
    v4 = v7 * 3.0;
  }

  [(AKSmoothPathView *)self setShadowRadiusInModel:v4];

  [(AKSmoothPathView *)self _updateShadowRadiusInView];
}

- (id)drawing
{
  v2 = [(AKSmoothPathView *)self strokeFIFO];
  v3 = [v2 strokes];

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(AKSmoothPathView *)self strokeColor];
  v9 = [v8 akIsEDR];
  v10 = [(AKSmoothPathView *)self layer];
  [v10 setWantsExtendedDynamicRangeContent:v9];

  v11 = [(AKSmoothPathView *)self strokeColor];
  LODWORD(v9) = [v11 akIsEDR];
  v12 = [(AKSmoothPathView *)self layer];
  v13 = v12;
  if (v9)
  {
    v14 = *MEMORY[0x277CD9DB8];
  }

  else
  {
    v14 = *MEMORY[0x277CD9DC0];
  }

  [v12 setPreferredDynamicRange:v14];

  [(AKSmoothPathView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v64 = height;
  v23 = CGRectGetWidth(v68);
  v69.origin.x = v16;
  v69.origin.y = v18;
  v69.size.width = v20;
  v69.size.height = v22;
  if (v23 <= CGRectGetWidth(v69) * 0.9)
  {
    v70.origin.x = x;
    v70.size.height = v64;
    v70.origin.y = y;
    v70.size.width = width;
    v24 = CGRectGetHeight(v70);
    v71.origin.x = v16;
    v71.origin.y = v18;
    v71.size.width = v20;
    v71.size.height = v22;
    if (v24 <= CGRectGetHeight(v71) * 0.9)
    {
      v25 = [(AKSmoothPathView *)self controller];
      v26 = v64;
      v27 = y;
      if ([v25 currentPageIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(AKSmoothPathView *)self hasShadow])
        {
          [(AKSmoothPathView *)self shadowRadiusInModel];
          if (v28 == 0.0)
          {
            [(AKSmoothPathView *)self setHasShadow:1];
          }
        }

        v29 = [(AKSmoothPathView *)self _getPlatformCGContext:*&v64];
        CGContextSaveGState(v29);
        if ([(AKSmoothPathView *)self hasShadow])
        {
          [(AKSmoothPathView *)self shadowRadiusInView];
          v31 = v30;
          [(AKSmoothPathView *)self shadowRadiusInView];
          v33 = v32 * -2.0;
          v72.origin.x = x;
          v72.origin.y = y;
          v72.size.width = width;
          v72.size.height = v26;
          v73 = CGRectInset(v72, v31 * -2.0, v33);
          x = v73.origin.x;
          v27 = v73.origin.y;
          width = v73.size.width;
          v26 = v73.size.height;
        }

        v34 = [MEMORY[0x277D75348] clearColor];
        [v34 set];

        v74.origin.x = x;
        v74.origin.y = v27;
        v74.size.width = width;
        v74.size.height = v26;
        CGContextFillRect(v29, v74);
        [(AKSmoothPathView *)self _updateInterpolatingFifoLineWidth];
        if ([(AKSmoothPathView *)self hasShadow])
        {
          [(AKSmoothPathView *)self _setupShadowInContext:v29];
          v75.origin.x = x;
          v75.origin.y = v27;
          v75.size.width = width;
          v75.size.height = v26;
          CGContextBeginTransparencyLayerWithRect(v29, v75, 0);
        }

        CGContextSaveGState(v29);
        if ([(AKSmoothPathView *)self prestrokedOutputMode])
        {
          v35 = [(AKSmoothPathView *)self bitmapFifo];
          v36 = [v35 currentBitmap];

          if (v36)
          {
            memset(&v67, 0, sizeof(v67));
            v37 = [(AKSmoothPathView *)self bitmapFifo];
            v38 = v37;
            if (v37)
            {
              [v37 viewToBitmapTransform];
            }

            else
            {
              memset(&v67, 0, sizeof(v67));
            }

            transform = v67;
            memset(&v66, 0, sizeof(v66));
            CGAffineTransformInvert(&v66, &transform);
            transform = v66;
            CGContextConcatCTM(v29, &transform);
            v53 = [(AKSmoothPathView *)self bitmapFifo];
            [v53 bitmapRectInView];
            transform = v67;
            v79 = CGRectApplyAffineTransform(v78, &transform);
            v54 = v79.origin.x;
            v55 = v79.origin.y;
            v56 = v79.size.width;
            v57 = v79.size.height;

            transform = v67;
            v80.origin.x = x;
            v80.origin.y = v27;
            v80.size.width = width;
            v80.size.height = v26;
            v81 = CGRectApplyAffineTransform(v80, &transform);
            v58 = v81.origin.x;
            v59 = v81.origin.y;
            v60 = v81.size.width;
            v61 = v81.size.height;
            v81.origin.x = v54;
            v81.origin.y = v55;
            v81.size.width = v56;
            v81.size.height = v57;
            CGContextClipToMask(v29, v81, v36);
            v62 = [(AKSmoothPathView *)self strokeColor];
            CGContextSetFillColorWithColor(v29, [v62 akCGColorWithHeadroom]);

            v82.origin.x = v58;
            v82.origin.y = v59;
            v82.size.width = v60;
            v82.size.height = v61;
            CGContextFillRect(v29, v82);
          }

          v63 = [(AKSmoothPathView *)self bitmapFifo];
          [v63 resetDirtyRect];
        }

        else
        {
          cachedModelToViewScale = 1.0;
          if (self->_applyModelBaseScaleFactorToStroke)
          {
            cachedModelToViewScale = self->_cachedModelToViewScale;
          }

          [(AKSmoothPathView *)self _effectiveStrokeWidthInModel];
          v41 = v40;
          CGContextSetLineJoin(v29, kCGLineJoinRound);
          CGContextSetLineCap(v29, kCGLineCapSquare);
          CGContextSetLineWidth(v29, cachedModelToViewScale * v41);
          if ([(AKSmoothPathView *)self disableSingleDotSpecialCase]|| (v42 = *MEMORY[0x277CBF3A0], v43 = *(MEMORY[0x277CBF3A0] + 8), v44 = *(MEMORY[0x277CBF3A0] + 16), v45 = *(MEMORY[0x277CBF3A0] + 24), [(AKSmoothPathView *)self singleDotRect], v83.origin.x = v46, v83.origin.y = v47, v83.size.width = v48, v83.size.height = v49, v76.origin.x = v42, v76.origin.y = v43, v76.size.width = v44, v76.size.height = v45, CGRectEqualToRect(v76, v83)))
          {
            v50 = [(AKSmoothPathView *)self interpolatingFIFO];
            v51 = [v50 path];

            if (v51 && !CGPathIsEmpty(v51))
            {
              CGContextAddPath(v29, v51);
              v52 = [(AKSmoothPathView *)self strokeColor];
              CGContextSetStrokeColorWithColor(v29, [v52 CGColor]);

              CGContextStrokePath(v29);
            }
          }

          else
          {
            [(AKSmoothPathView *)self singleDotRect];
            CGContextAddEllipseInRect(v29, v77);
            CGContextFillPath(v29);
          }
        }

        CGContextRestoreGState(v29);
        if ([(AKSmoothPathView *)self hasShadow])
        {
          CGContextEndTransparencyLayer(v29);
        }

        CGContextRestoreGState(v29);
      }
    }
  }
}

- (void)startStroke
{
  [(AKSmoothPathView *)self setDisableSingleDotSpecialCase:0];
  [(AKSmoothPathView *)self setSingleDotCurrentSize:0.2];
  [(AKSmoothPathView *)self setSingleDotRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = [(AKSmoothPathView *)self strokeColor];
  v4 = [v3 akIsEDR];
  v5 = [(AKSmoothPathView *)self layer];
  [v5 setWantsExtendedDynamicRangeContent:v4];

  v6 = [(AKSmoothPathView *)self strokeColor];
  LODWORD(v4) = [v6 akIsEDR];
  v7 = [(AKSmoothPathView *)self layer];
  v8 = v7;
  v9 = *MEMORY[0x277CD9DB8];
  if (v4)
  {
    v10 = *MEMORY[0x277CD9DB8];
  }

  else
  {
    v10 = *MEMORY[0x277CD9DC0];
  }

  [v7 setPreferredDynamicRange:v10];

  v11 = [(AKSmoothPathView *)self layer];
  v12 = [v11 preferredDynamicRange];

  if (v12 == v9)
  {
    v13 = *MEMORY[0x277CDA0D0];
    v14 = [(AKSmoothPathView *)self layer];
    [v14 setContentsFormat:v13];
  }

  [(AKSmoothPathView *)self _effectiveStrokeWidthInModel];
  self->_cachedEffectiveStrokeWidthInModel = v15;
  v16 = self;
  v17 = v16;
  v18 = 1.0;
  if (v16->_applyModelBaseScaleFactorToStroke)
  {
    v19 = [(AKSmoothPathView *)v16 controller];
    v20 = [v19 currentPageController];
    [v20 convertRectFromModelToOverlay:{0.0, 0.0, 1.0, 1.0}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [v19 currentPageController];
    v30 = [v29 overlayView];
    [v30 convertRect:v17 toView:{v22, v24, v26, v28}];
    v18 = v31;
    v33 = v32;

    if (v18 < v33)
    {
      v18 = v33;
    }
  }

  v17[52] = v18;
  [v17 setStartedTouchDrawing:1];
  v34 = [v17 delegate];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    v36 = [v17 delegate];
    [v36 inputViewWillStartDrawing:v17];
  }
}

- (void)continueStrokeWithoutSmoothing:(AKSmoothPathView *)self
{
  [(AKSmoothPathView *)self setIsAddingPointWithoutSmoothing:1, v2];
  v4 = [(CHQuadCurvePointFIFO *)self->_interpolatingFIFO emissionHandler];
  (v4)[2](v4, &v5, 1, 0, 0);

  [(AKSmoothPathView *)self setIsAddingPointWithoutSmoothing:0];
}

- (void)terminateStroke
{
  [(CHPointStrokeFIFO *)self->_strokeFIFO flush];
  [(AKBitmapFIFO *)self->_bitmapFifo flush];
  [(AKSmoothPathView *)self setStartedTouchDrawing:0];
  v3 = dispatch_time(0, 10000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F479420;
  block[3] = &unk_278C7BD50;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (void)handleTapAction:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [(AKSmoothPathView *)self startStroke];
    [(AKSmoothPathView *)self _pointForRecognizer:v4];
    [(AKSmoothPathView *)self continueStrokeWithoutSmoothing:?];
    [(AKSmoothPathView *)self terminateStroke];
  }
}

- (BOOL)_catchUpAccumulatedTouchesForRecognizer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accumulatedTouches];
  [v4 resetAccumulatedTouches];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(AKSmoothPathView *)self _pointForTouch:*(*(&v12 + 1) + 8 * i), v12];
        [(AKSmoothPathView *)self continueStroke:?];
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v6 count] != 0;
  return v10;
}

- (void)handleDragAction:(id)a3
{
  v6 = a3;
  v4 = [v6 state];
  if (v4 > 3)
  {
    if ((v4 - 4) >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  switch(v4)
  {
    case 1:
      [(AKSmoothPathView *)self startStroke];
      v5 = [(AKSmoothPathView *)self _catchUpAccumulatedTouchesForRecognizer:v6];
      break;
    case 2:
      v5 = [(AKSmoothPathView *)self _catchUpAccumulatedTouchesForRecognizer:v6];
      break;
    case 3:
      if (![(AKSmoothPathView *)self _catchUpAccumulatedTouchesForRecognizer:v6])
      {
        [(AKSmoothPathView *)self _pointForRecognizer:v6];
        [(AKSmoothPathView *)self continueStroke:?];
      }

LABEL_8:
      [(AKSmoothPathView *)self terminateStroke];
      goto LABEL_13;
    default:
      goto LABEL_13;
  }

  if (!v5)
  {
    [(AKSmoothPathView *)self _pointForRecognizer:v6];
    [(AKSmoothPathView *)self continueStroke:?];
  }

LABEL_13:
}

- (double)weightForValue:(double)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F479824;
  block[3] = &unk_278C7BD50;
  block[4] = self;
  if (qword_27E39B768 != -1)
  {
    dispatch_once(&qword_27E39B768, block);
  }

  v4 = (*&qword_27E39B788 - *&qword_27E39B780) / (*&qword_27E39B778 - *&qword_27E39B770);
  v5 = *&qword_27E39B780 + v4 * (a3 - *&qword_27E39B770);
  if (v5 <= *&qword_27E39B788)
  {
    v6 = *&qword_27E39B780 + v4 * (a3 - *&qword_27E39B770);
  }

  else
  {
    v6 = *&qword_27E39B788;
  }

  if (v5 >= *&qword_27E39B780)
  {
    return v6;
  }

  else
  {
    return *&qword_27E39B780;
  }
}

- (void)_clear
{
  [(CHPointStrokeFIFO *)self->_strokeFIFO clear];
  [(AKBitmapFIFO *)self->_bitmapFifo clear];

  [(AKSmoothPathView *)self setNeedsDisplay];
}

- (void)_setupShadowInContext:(CGContext *)a3
{
  v17 = [(AKSmoothPathView *)self controller];
  v5 = [v17 currentPageController];
  v6 = [v5 currentModelToScreenExifOrientation];

  v7 = [AKGeometryHelper inverseExifOrientation:v6];
  [(AKSmoothPathView *)self shadowRadiusInModel];
  [AKGeometryHelper adjustPoint:v7 forExifOrientation:0.0 aboutCenter:-v8, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v10 = v9;
  v12 = v11;
  [(AKSmoothPathView *)self shadowRadiusInModel];
  v14 = v13;
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  v16 = [v15 CGColor];
  v19.width = v10;
  v19.height = v12;
  CGContextSetShadowWithColor(a3, v19, v14, v16);
}

- (void)_updateShadowRadiusInView
{
  [(AKSmoothPathView *)self shadowRadiusInModel];
  v4 = v3;
  v5 = 0.0;
  if (v4 != 0.0)
  {
    [(AKSmoothPathView *)self shadowRadiusInModel];
    [(AKSmoothPathView *)self _convertValueFromModelToSelf:?];
    [(AKSmoothPathView *)self setShadowRadiusInView:?];
    [(AKSmoothPathView *)self shadowRadiusInView];
    v5 = v6 + v6;
  }

  [(AKSmoothPathView *)self setShadowRadiusInView:v5];
  v7 = [(AKSmoothPathView *)self bitmapFifo];

  if (v7)
  {
    [(AKSmoothPathView *)self shadowRadiusInView];
    v9 = v8;
    v10 = [(AKSmoothPathView *)self bitmapFifo];
    [v10 setShadowRadiusInView:v9];
  }
}

- (double)_effectiveStrokeWidthInModel
{
  [(AKSmoothPathView *)self strokeWidth];
  v4 = v3;
  if (self->_applyModelBaseScaleFactorToStroke)
  {
    v5 = [(AKSmoothPathView *)self controller];
    v6 = [v5 currentPageController];
    [v6 modelBaseScaleFactor];
    v8 = v7;

    if (v8 > 0.0)
    {
      v4 = v4 * v8;
    }
  }

  return v4;
}

- (double)_convertValueFromModelToSelf:(double)a3
{
  v5 = [(AKSmoothPathView *)self controller];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  v8 = [v5 currentPageController];
  [v8 convertPointFromModelToOverlay:{a3, 0.0}];
  v10 = v9;
  v12 = v11;

  v13 = [v5 currentPageController];
  [v13 convertPointFromModelToOverlay:{v6, v7}];
  v15 = v14;
  v17 = v16;

  v18 = [v5 currentPageController];
  v19 = [v18 overlayView];
  [v19 convertPoint:self toView:{v10, v12}];
  v21 = v20;
  v23 = v22;

  v24 = [v5 currentPageController];
  v25 = [v24 overlayView];
  [v25 convertPoint:self toView:{v15, v17}];
  v27 = v26;
  v29 = v28;

  v30 = vabdd_f64(v21, v27);
  v31 = vabdd_f64(v23, v29);
  if (v30 >= v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  return v32;
}

- (__n128)_pointForTouch:(void *)a3
{
  v4 = a3;
  [v4 locationInView:a1];
  v6 = v5;
  v8 = v7;
  [v4 maximumPossibleForce];
  if (v9 == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    [v4 force];
    v11 = v10;
    [v4 maximumPossibleForce];
    [a1 weightForValue:v11 / v12];
    v14 = v13;
  }

  [a1 setCurrentWeight:v14];
  *&v15 = v6;
  *&v16 = v8;
  *&v17 = v14;
  *&v18 = __PAIR64__(v16, v15);
  *(&v18 + 1) = v17;
  v20 = v18;

  return v20;
}

- (__n128)_pointForRecognizer:(void *)a3
{
  v4 = a3;
  [v4 locationInView:a1];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 currentMaxWeight];
    if (v9 == 0.0)
    {
      v14 = 1.0;
    }

    else
    {
      [v4 currentWeight];
      v11 = v10;
      [v4 currentMaxWeight];
      [a1 weightForValue:v11 / v12];
      v14 = v13;
    }
  }

  else
  {
    objc_opt_class();
    v14 = 1.0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      NSLog(&cfstr_SUnexpectedGes.isa, "[AKSmoothPathView _pointForRecognizer:]", v16);
    }
  }

  [a1 setCurrentWeight:v14];
  *&v17 = v6;
  *&v18 = v8;
  *&v19 = v14;
  *&v20 = __PAIR64__(v18, v17);
  *(&v20 + 1) = v19;
  v22 = v20;

  return v22;
}

- (double)_windowBackingScaleFactor
{
  v3 = [(AKSmoothPathView *)self window];
  v4 = [v3 screen];

  if (v4)
  {
    v5 = [(AKSmoothPathView *)self window];
    v6 = [v5 screen];
    [v6 scale];
    v8 = v7;
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v8 = v9;
  }

  return v8;
}

- (void)_updateInterpolatingFifoLineWidth
{
  v3 = 0.0;
  if (![(AKSmoothPathView *)self prestrokedOutputMode])
  {
    [(AKSmoothPathView *)self _effectiveStrokeWidthInModel];
    v5 = v4;
    [(AKSmoothPathView *)self shadowRadiusInModel];
    [(AKSmoothPathView *)self _convertValueFromModelToSelf:(v6 + v6) * 1.25 + v5 * 1.75];
    v3 = v7;
  }

  v8 = [(AKSmoothPathView *)self interpolatingFIFO];
  [v8 setLineWidth:v3];
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (CGRect)singleDotRect
{
  objc_copyStruct(v6, &self->_singleDotRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end