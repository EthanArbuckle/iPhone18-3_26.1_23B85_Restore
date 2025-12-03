@interface AKSmoothPathView
+ (id)newSmoothPathViewForCurrentPlatformWithController:(id)controller;
- (AKController)controller;
- (AKSmoothPathView)initWithController:(id)controller;
- (AKSmoothPathView)initWithFrame:(CGRect)frame;
- (BOOL)_catchUpAccumulatedTouchesForRecognizer:(id)recognizer;
- (CGRect)singleDotRect;
- (__n128)_pointForRecognizer:(void *)recognizer;
- (__n128)_pointForTouch:(void *)touch;
- (double)_convertValueFromModelToSelf:(double)self;
- (double)_effectiveStrokeWidthInModel;
- (double)_windowBackingScaleFactor;
- (double)weightForValue:(double)value;
- (id)drawing;
- (void)_clear;
- (void)_setupFilterChainWithBitmapFifo:(BOOL)fifo;
- (void)_setupShadowInContext:(CGContext *)context;
- (void)_updateInterpolatingFifoLineWidth;
- (void)_updateShadowRadiusInView;
- (void)awakeFromNib;
- (void)callDelegate;
- (void)commonInit;
- (void)continueStrokeWithoutSmoothing:(AKSmoothPathView *)self;
- (void)drawRect:(CGRect)rect;
- (void)handleDragAction:(id)action;
- (void)handleTapAction:(id)action;
- (void)setHasShadow:(BOOL)shadow;
- (void)setPrestrokedOutputMode:(BOOL)mode;
- (void)setStartedTouchDrawing:(BOOL)drawing;
- (void)setStrokeWidth:(double)width;
- (void)startStroke;
- (void)teardown;
- (void)terminateStroke;
- (void)updateInterpolatingFifoUnitScale;
@end

@implementation AKSmoothPathView

+ (id)newSmoothPathViewForCurrentPlatformWithController:(id)controller
{
  controllerCopy = controller;
  v4 = [objc_alloc(objc_opt_class()) initWithController:controllerCopy];

  return v4;
}

- (AKSmoothPathView)initWithController:(id)controller
{
  controllerCopy = controller;
  v5 = [(AKSmoothPathView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(AKSmoothPathView *)v5 setController:controllerCopy];
  }

  return v6;
}

- (AKSmoothPathView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AKSmoothPathView;
  v3 = [(AKSmoothPathView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  bitmapFifo = [(AKSmoothPathView *)self bitmapFifo];
  [bitmapFifo teardown];

  [(AKSmoothPathView *)self setBitmapFifo:0];
  [(AKSmoothPathView *)self setInterpolatingFIFO:0];
  [(AKSmoothPathView *)self setSmoothingFIFO:0];
  [(AKSmoothPathView *)self setStrokeFIFO:0];

  [(AKSmoothPathView *)self setDelegate:0];
}

- (void)_setupFilterChainWithBitmapFifo:(BOOL)fifo
{
  if (fifo)
  {
    v4 = [[AKBitmapFIFO alloc] initWithFIFO:0];
    [(AKSmoothPathView *)self setBitmapFifo:v4];

    bitmapFifo = [(AKSmoothPathView *)self bitmapFifo];
    [bitmapFifo setView:self];

    bitmapFifo2 = [(AKSmoothPathView *)self bitmapFifo];
    [bitmapFifo2 setIsInLiveDraw:0];

    bitmapFifo3 = [(AKSmoothPathView *)self bitmapFifo];
    [bitmapFifo3 setBitmapSizeMultiplier:3.0];

    [(AKSmoothPathView *)self _updateShadowRadiusInView];
    v8 = [objc_alloc(MEMORY[0x277CFEE48]) initWithFIFO:0 drawingTarget:0];
    [(AKSmoothPathView *)self setInterpolatingFIFO:v8];

    interpolatingFIFO = [(AKSmoothPathView *)self interpolatingFIFO];
    [interpolatingFIFO setEmitInterpolatedPoints:1];

    objc_initWeak(&location, self);
    v10 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_23F478294;
    v26[3] = &unk_278C7C0D8;
    objc_copyWeak(&v27, &location);
    interpolatingFIFO2 = [(AKSmoothPathView *)self interpolatingFIFO];
    [interpolatingFIFO2 setEmissionHandler:v26];
  }

  else
  {
    bitmapFifo4 = [(AKSmoothPathView *)self bitmapFifo];
    [bitmapFifo4 teardown];

    [(AKSmoothPathView *)self setBitmapFifo:0];
    v13 = [objc_alloc(MEMORY[0x277CFEE48]) initWithFIFO:0 drawingTarget:self];
    [(AKSmoothPathView *)self setInterpolatingFIFO:v13];

    interpolatingFIFO3 = [(AKSmoothPathView *)self interpolatingFIFO];
    [interpolatingFIFO3 setEmitInterpolatedPoints:0];

    objc_initWeak(&location, self);
    v10 = v24;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_23F4783A4;
    v24[3] = &unk_278C7C0D8;
    objc_copyWeak(&v25, &location);
    interpolatingFIFO2 = [(AKSmoothPathView *)self interpolatingFIFO];
    [interpolatingFIFO2 setEmissionHandler:v24];
  }

  objc_destroyWeak(v10 + 4);
  objc_destroyWeak(&location);
  [(AKSmoothPathView *)self updateInterpolatingFifoUnitScale];
  [(AKSmoothPathView *)self _updateInterpolatingFifoLineWidth];
  [(AKSmoothPathView *)self _windowBackingScaleFactor];
  v16 = 1.0 / v15;
  v17 = objc_alloc(MEMORY[0x277CFEE30]);
  interpolatingFIFO4 = [(AKSmoothPathView *)self interpolatingFIFO];
  v19 = v16 * 4.0;
  *&v19 = v16 * 4.0;
  v20 = [v17 initWithFIFO:interpolatingFIFO4 width:3 spacing:v19];
  [(AKSmoothPathView *)self setSmoothingFIFO:v20];

  v21 = objc_alloc(MEMORY[0x277CFEE40]);
  smoothingFIFO = [(AKSmoothPathView *)self smoothingFIFO];
  v23 = [v21 initWithFIFO:smoothingFIFO];
  [(AKSmoothPathView *)self setStrokeFIFO:v23];

  [(AKSmoothPathView *)self setStartedTouchDrawing:0];
}

- (void)updateInterpolatingFifoUnitScale
{
  [(AKSmoothPathView *)self _windowBackingScaleFactor];
  *&v3 = v3;
  v4 = 5.0 / *&v3;
  interpolatingFIFO = [(AKSmoothPathView *)self interpolatingFIFO];
  *&v5 = v4;
  [interpolatingFIFO setUnitScale:v5];
}

- (void)callDelegate
{
  if ([(AKSmoothPathView *)self prestrokedOutputMode])
  {
    bitmapFifo = [(AKSmoothPathView *)self bitmapFifo];
    newPathFromCurrentBitmap = [bitmapFifo newPathFromCurrentBitmap];
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
        newPathFromCurrentBitmap = CGPathCreateWithEllipseInRect(v26, 0);
        v14 = 1;
        if (!newPathFromCurrentBitmap)
        {
          goto LABEL_18;
        }

        goto LABEL_7;
      }
    }

    interpolatingFIFO = [(AKSmoothPathView *)self interpolatingFIFO];
    newPathFromCurrentBitmap = [interpolatingFIFO path];

    CGPathRetain(newPathFromCurrentBitmap);
  }

  v14 = 0;
  if (!newPathFromCurrentBitmap)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (!CGPathIsEmpty(newPathFromCurrentBitmap))
  {
    BoundingBox = CGPathGetBoundingBox(newPathFromCurrentBitmap);
    width = BoundingBox.size.width;
    height = BoundingBox.size.height;
    [(AKSmoothPathView *)self convertRect:0 toView:0.0, 0.0, 1.0, 1.0];
    if (width * v18 > 2.0 || height * v17 > 2.0)
    {
      v20 = v14 | [(AKSmoothPathView *)self prestrokedOutputMode];
      delegate = [(AKSmoothPathView *)self delegate];
      v22 = delegate;
      if (v20 == 1)
      {
        [delegate inputView:self didCollectPrestrokedPath:newPathFromCurrentBitmap];
      }

      else
      {
        [delegate inputView:self didCollectPath:newPathFromCurrentBitmap];
      }
    }
  }

LABEL_18:
  CGPathRelease(newPathFromCurrentBitmap);

  MEMORY[0x2821F9670](self, sel__clear);
}

- (void)setPrestrokedOutputMode:(BOOL)mode
{
  self->_prestrokedOutputMode = mode;
  [(AKSmoothPathView *)self setCurrentWeight:1.0];

  MEMORY[0x2821F9670](self, sel__setupFilterChainWithBitmapFifo_);
}

- (void)setStartedTouchDrawing:(BOOL)drawing
{
  drawingCopy = drawing;
  if (self->_startedTouchDrawing != drawing)
  {
    self->_startedTouchDrawing = drawing;
  }

  bitmapFifo = [(AKSmoothPathView *)self bitmapFifo];
  [bitmapFifo setIsInLiveDraw:drawingCopy];
}

- (void)setStrokeWidth:(double)width
{
  if (self->_strokeWidth != width)
  {
    self->_strokeWidth = width;
    [(AKSmoothPathView *)self setApplyModelBaseScaleFactorToStroke:fabs(width + -1.0) >= 0.0005];
    [(AKSmoothPathView *)self _updateInterpolatingFifoLineWidth];

    [(AKSmoothPathView *)self updateInterpolatingFifoUnitScale];
  }
}

- (void)setHasShadow:(BOOL)shadow
{
  self->_hasShadow = shadow;
  v4 = 0.0;
  if (shadow)
  {
    controller = [(AKSmoothPathView *)self controller];
    currentPageController = [controller currentPageController];
    [currentPageController modelBaseScaleFactor];
    v4 = v7 * 3.0;
  }

  [(AKSmoothPathView *)self setShadowRadiusInModel:v4];

  [(AKSmoothPathView *)self _updateShadowRadiusInView];
}

- (id)drawing
{
  strokeFIFO = [(AKSmoothPathView *)self strokeFIFO];
  strokes = [strokeFIFO strokes];

  return strokes;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  strokeColor = [(AKSmoothPathView *)self strokeColor];
  akIsEDR = [strokeColor akIsEDR];
  layer = [(AKSmoothPathView *)self layer];
  [layer setWantsExtendedDynamicRangeContent:akIsEDR];

  strokeColor2 = [(AKSmoothPathView *)self strokeColor];
  LODWORD(akIsEDR) = [strokeColor2 akIsEDR];
  layer2 = [(AKSmoothPathView *)self layer];
  v13 = layer2;
  if (akIsEDR)
  {
    v14 = *MEMORY[0x277CD9DB8];
  }

  else
  {
    v14 = *MEMORY[0x277CD9DC0];
  }

  [layer2 setPreferredDynamicRange:v14];

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
      controller = [(AKSmoothPathView *)self controller];
      v26 = v64;
      v27 = y;
      if ([controller currentPageIndex] != 0x7FFFFFFFFFFFFFFFLL)
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

        clearColor = [MEMORY[0x277D75348] clearColor];
        [clearColor set];

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
          bitmapFifo = [(AKSmoothPathView *)self bitmapFifo];
          currentBitmap = [bitmapFifo currentBitmap];

          if (currentBitmap)
          {
            memset(&v67, 0, sizeof(v67));
            bitmapFifo2 = [(AKSmoothPathView *)self bitmapFifo];
            v38 = bitmapFifo2;
            if (bitmapFifo2)
            {
              [bitmapFifo2 viewToBitmapTransform];
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
            bitmapFifo3 = [(AKSmoothPathView *)self bitmapFifo];
            [bitmapFifo3 bitmapRectInView];
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
            CGContextClipToMask(v29, v81, currentBitmap);
            strokeColor3 = [(AKSmoothPathView *)self strokeColor];
            CGContextSetFillColorWithColor(v29, [strokeColor3 akCGColorWithHeadroom]);

            v82.origin.x = v58;
            v82.origin.y = v59;
            v82.size.width = v60;
            v82.size.height = v61;
            CGContextFillRect(v29, v82);
          }

          bitmapFifo4 = [(AKSmoothPathView *)self bitmapFifo];
          [bitmapFifo4 resetDirtyRect];
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
            interpolatingFIFO = [(AKSmoothPathView *)self interpolatingFIFO];
            path = [interpolatingFIFO path];

            if (path && !CGPathIsEmpty(path))
            {
              CGContextAddPath(v29, path);
              strokeColor4 = [(AKSmoothPathView *)self strokeColor];
              CGContextSetStrokeColorWithColor(v29, [strokeColor4 CGColor]);

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
  strokeColor = [(AKSmoothPathView *)self strokeColor];
  akIsEDR = [strokeColor akIsEDR];
  layer = [(AKSmoothPathView *)self layer];
  [layer setWantsExtendedDynamicRangeContent:akIsEDR];

  strokeColor2 = [(AKSmoothPathView *)self strokeColor];
  LODWORD(akIsEDR) = [strokeColor2 akIsEDR];
  layer2 = [(AKSmoothPathView *)self layer];
  v8 = layer2;
  v9 = *MEMORY[0x277CD9DB8];
  if (akIsEDR)
  {
    v10 = *MEMORY[0x277CD9DB8];
  }

  else
  {
    v10 = *MEMORY[0x277CD9DC0];
  }

  [layer2 setPreferredDynamicRange:v10];

  layer3 = [(AKSmoothPathView *)self layer];
  preferredDynamicRange = [layer3 preferredDynamicRange];

  if (preferredDynamicRange == v9)
  {
    v13 = *MEMORY[0x277CDA0D0];
    layer4 = [(AKSmoothPathView *)self layer];
    [layer4 setContentsFormat:v13];
  }

  [(AKSmoothPathView *)self _effectiveStrokeWidthInModel];
  self->_cachedEffectiveStrokeWidthInModel = v15;
  selfCopy = self;
  v17 = selfCopy;
  v18 = 1.0;
  if (selfCopy->_applyModelBaseScaleFactorToStroke)
  {
    controller = [(AKSmoothPathView *)selfCopy controller];
    currentPageController = [controller currentPageController];
    [currentPageController convertRectFromModelToOverlay:{0.0, 0.0, 1.0, 1.0}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    currentPageController2 = [controller currentPageController];
    overlayView = [currentPageController2 overlayView];
    [overlayView convertRect:v17 toView:{v22, v24, v26, v28}];
    v18 = v31;
    v33 = v32;

    if (v18 < v33)
    {
      v18 = v33;
    }
  }

  v17[52] = v18;
  [v17 setStartedTouchDrawing:1];
  delegate = [v17 delegate];
  v35 = objc_opt_respondsToSelector();

  if (v35)
  {
    delegate2 = [v17 delegate];
    [delegate2 inputViewWillStartDrawing:v17];
  }
}

- (void)continueStrokeWithoutSmoothing:(AKSmoothPathView *)self
{
  [(AKSmoothPathView *)self setIsAddingPointWithoutSmoothing:1, v2];
  emissionHandler = [(CHQuadCurvePointFIFO *)self->_interpolatingFIFO emissionHandler];
  (emissionHandler)[2](emissionHandler, &v5, 1, 0, 0);

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

- (void)handleTapAction:(id)action
{
  actionCopy = action;
  if ([actionCopy state] == 3)
  {
    [(AKSmoothPathView *)self startStroke];
    [(AKSmoothPathView *)self _pointForRecognizer:actionCopy];
    [(AKSmoothPathView *)self continueStrokeWithoutSmoothing:?];
    [(AKSmoothPathView *)self terminateStroke];
  }
}

- (BOOL)_catchUpAccumulatedTouchesForRecognizer:(id)recognizer
{
  v17 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  accumulatedTouches = [recognizerCopy accumulatedTouches];
  [recognizerCopy resetAccumulatedTouches];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = accumulatedTouches;
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

- (void)handleDragAction:(id)action
{
  actionCopy = action;
  state = [actionCopy state];
  if (state > 3)
  {
    if ((state - 4) >= 2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  switch(state)
  {
    case 1:
      [(AKSmoothPathView *)self startStroke];
      v5 = [(AKSmoothPathView *)self _catchUpAccumulatedTouchesForRecognizer:actionCopy];
      break;
    case 2:
      v5 = [(AKSmoothPathView *)self _catchUpAccumulatedTouchesForRecognizer:actionCopy];
      break;
    case 3:
      if (![(AKSmoothPathView *)self _catchUpAccumulatedTouchesForRecognizer:actionCopy])
      {
        [(AKSmoothPathView *)self _pointForRecognizer:actionCopy];
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
    [(AKSmoothPathView *)self _pointForRecognizer:actionCopy];
    [(AKSmoothPathView *)self continueStroke:?];
  }

LABEL_13:
}

- (double)weightForValue:(double)value
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
  v5 = *&qword_27E39B780 + v4 * (value - *&qword_27E39B770);
  if (v5 <= *&qword_27E39B788)
  {
    v6 = *&qword_27E39B780 + v4 * (value - *&qword_27E39B770);
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

- (void)_setupShadowInContext:(CGContext *)context
{
  controller = [(AKSmoothPathView *)self controller];
  currentPageController = [controller currentPageController];
  currentModelToScreenExifOrientation = [currentPageController currentModelToScreenExifOrientation];

  v7 = [AKGeometryHelper inverseExifOrientation:currentModelToScreenExifOrientation];
  [(AKSmoothPathView *)self shadowRadiusInModel];
  [AKGeometryHelper adjustPoint:v7 forExifOrientation:0.0 aboutCenter:-v8, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v10 = v9;
  v12 = v11;
  [(AKSmoothPathView *)self shadowRadiusInModel];
  v14 = v13;
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  cGColor = [v15 CGColor];
  v19.width = v10;
  v19.height = v12;
  CGContextSetShadowWithColor(context, v19, v14, cGColor);
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
  bitmapFifo = [(AKSmoothPathView *)self bitmapFifo];

  if (bitmapFifo)
  {
    [(AKSmoothPathView *)self shadowRadiusInView];
    v9 = v8;
    bitmapFifo2 = [(AKSmoothPathView *)self bitmapFifo];
    [bitmapFifo2 setShadowRadiusInView:v9];
  }
}

- (double)_effectiveStrokeWidthInModel
{
  [(AKSmoothPathView *)self strokeWidth];
  v4 = v3;
  if (self->_applyModelBaseScaleFactorToStroke)
  {
    controller = [(AKSmoothPathView *)self controller];
    currentPageController = [controller currentPageController];
    [currentPageController modelBaseScaleFactor];
    v8 = v7;

    if (v8 > 0.0)
    {
      v4 = v4 * v8;
    }
  }

  return v4;
}

- (double)_convertValueFromModelToSelf:(double)self
{
  controller = [(AKSmoothPathView *)self controller];
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  currentPageController = [controller currentPageController];
  [currentPageController convertPointFromModelToOverlay:{self, 0.0}];
  v10 = v9;
  v12 = v11;

  currentPageController2 = [controller currentPageController];
  [currentPageController2 convertPointFromModelToOverlay:{v6, v7}];
  v15 = v14;
  v17 = v16;

  currentPageController3 = [controller currentPageController];
  overlayView = [currentPageController3 overlayView];
  [overlayView convertPoint:self toView:{v10, v12}];
  v21 = v20;
  v23 = v22;

  currentPageController4 = [controller currentPageController];
  overlayView2 = [currentPageController4 overlayView];
  [overlayView2 convertPoint:self toView:{v15, v17}];
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

- (__n128)_pointForTouch:(void *)touch
{
  touchCopy = touch;
  [touchCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  [touchCopy maximumPossibleForce];
  if (v9 == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    [touchCopy force];
    v11 = v10;
    [touchCopy maximumPossibleForce];
    [self weightForValue:v11 / v12];
    v14 = v13;
  }

  [self setCurrentWeight:v14];
  *&v15 = v6;
  *&v16 = v8;
  *&v17 = v14;
  *&v18 = __PAIR64__(v16, v15);
  *(&v18 + 1) = v17;
  v20 = v18;

  return v20;
}

- (__n128)_pointForRecognizer:(void *)recognizer
{
  recognizerCopy = recognizer;
  [recognizerCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [recognizerCopy currentMaxWeight];
    if (v9 == 0.0)
    {
      v14 = 1.0;
    }

    else
    {
      [recognizerCopy currentWeight];
      v11 = v10;
      [recognizerCopy currentMaxWeight];
      [self weightForValue:v11 / v12];
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

  [self setCurrentWeight:v14];
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
  window = [(AKSmoothPathView *)self window];
  screen = [window screen];

  if (screen)
  {
    window2 = [(AKSmoothPathView *)self window];
    screen2 = [window2 screen];
    [screen2 scale];
    v8 = v7;
  }

  else
  {
    window2 = [MEMORY[0x277D759A0] mainScreen];
    [window2 scale];
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

  interpolatingFIFO = [(AKSmoothPathView *)self interpolatingFIFO];
  [interpolatingFIFO setLineWidth:v3];
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