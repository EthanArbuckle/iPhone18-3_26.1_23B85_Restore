@interface AKSignatureView
- (AKSignatureView)initWithCoder:(id)a3;
- (AKSignatureView)initWithFrame:(CGRect)a3;
- (AKSignatureViewLiveDelegate)liveDelegate;
- (CGPath)copyStrokedInterpolatedPath;
- (CGPoint)strokeLastLocation;
- (CGPoint)strokeStartLocation;
- (CGRect)aggregateInvalid;
- (CGRect)unionDrawingRect;
- (double)_windowBackingScaleFactor;
- (double)weightForTouch:(id)a3;
- (double)weightForValue:(double)a3;
- (void)_commonInit;
- (void)clear;
- (void)continueStroke:(AKSignatureView *)self;
- (void)continueStrokeWithoutSmoothing:(AKSignatureView *)self;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)handleCoalescedTouches:(id)a3 forTouch:(id)a4;
- (void)setFrame:(CGRect)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)startStroke:(AKSignatureView *)self;
- (void)teardown;
- (void)terminateStroke;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation AKSignatureView

- (AKSignatureView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AKSignatureView;
  v3 = [(AKSignatureView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AKSignatureView *)v3 _commonInit];
  }

  return v4;
}

- (AKSignatureView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AKSignatureView;
  v3 = [(AKSignatureView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AKSignatureView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(AKSignatureView *)self setClearsContextBeforeDrawing:0];
  [(AKSignatureView *)self setOpaque:1];
  [(AKSignatureView *)self setContentMode:3];
  v3 = [MEMORY[0x277D75348] blackColor];
  [(AKSignatureView *)self setStrokeColor:v3];

  [(AKSignatureView *)self setCurrentWeight:2.0];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_accumulatedSignatureDirtyRect.origin = *MEMORY[0x277CBF398];
  self->_accumulatedSignatureDirtyRect.size = v4;
  [(AKSignatureView *)self setMinPressure:0.0034];
  [(AKSignatureView *)self setMaxPressure:0.45];
  [(AKSignatureView *)self setMinThickness:0.56];
  [(AKSignatureView *)self setMaxThickness:3.0];
  v5 = [[AKBitmapFIFO alloc] initWithFIFO:0];
  bitmapFifo = self->_bitmapFifo;
  self->_bitmapFifo = v5;

  [(AKBitmapFIFO *)self->_bitmapFifo setView:self];
  [(AKBitmapFIFO *)self->_bitmapFifo setIsInLiveDraw:0];
  [(AKBitmapFIFO *)self->_bitmapFifo setBitmapSizeMultiplier:3.0];
  v7 = [objc_alloc(MEMORY[0x277CFEE48]) initWithFIFO:0];
  interpolatingFIFO = self->_interpolatingFIFO;
  self->_interpolatingFIFO = v7;

  [(CHQuadCurvePointFIFO *)self->_interpolatingFIFO setEmitInterpolatedPoints:1];
  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = sub_23F433F30;
  v20 = &unk_278C7BBC8;
  objc_copyWeak(&v21, &location);
  [(CHQuadCurvePointFIFO *)self->_interpolatingFIFO setEmissionHandler:&v17];
  [(AKSignatureView *)self _windowBackingScaleFactor:v17];
  *&v9 = v9;
  v10 = 1.0 / *&v9;
  *&v9 = (1.0 / *&v9) * 5.0;
  [(CHQuadCurvePointFIFO *)self->_interpolatingFIFO setUnitScale:v9];
  v11 = objc_alloc(MEMORY[0x277CFEE30]);
  *&v12 = v10 * 4.0;
  v13 = [v11 initWithFIFO:self->_interpolatingFIFO width:3 spacing:v12];
  boxcarFIFO = self->_boxcarFIFO;
  self->_boxcarFIFO = v13;

  v15 = [objc_alloc(MEMORY[0x277CFEE40]) initWithFIFO:self->_boxcarFIFO];
  strokeFIFO = self->_strokeFIFO;
  self->_strokeFIFO = v15;

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AKSignatureView;
  [(AKSignatureView *)&v2 dealloc];
}

- (void)teardown
{
  v3 = [(AKSignatureView *)self bitmapFifo];
  [v3 teardown];

  [(AKSignatureView *)self setBitmapFifo:0];
  [(AKSignatureView *)self setInterpolatingFIFO:0];
  [(AKSignatureView *)self setBoxcarFIFO:0];
  [(AKSignatureView *)self setStrokeFIFO:0];

  [(AKSignatureView *)self setStrokeColor:0];
}

- (CGPath)copyStrokedInterpolatedPath
{
  v2 = [(AKSignatureView *)self bitmapFifo];
  v3 = [v2 newPathFromCurrentBitmap];

  return v3;
}

- (double)_windowBackingScaleFactor
{
  v3 = [(AKSignatureView *)self window];
  v4 = [v3 screen];

  if (v4)
  {
    v5 = [(AKSignatureView *)self window];
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

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  p_accumulatedSignatureDirtyRect = &self->_accumulatedSignatureDirtyRect;
  self->_accumulatedSignatureDirtyRect = CGRectUnion(self->_accumulatedSignatureDirtyRect, a3);
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastSetNeedsDisplayCallToSuperTime > 0.0166666667)
  {
    self->_lastSetNeedsDisplayCallToSuperTime = Current;
    v7.receiver = self;
    v7.super_class = AKSignatureView;
    [(AKSignatureView *)&v7 setNeedsDisplayInRect:p_accumulatedSignatureDirtyRect->origin.x, p_accumulatedSignatureDirtyRect->origin.y, p_accumulatedSignatureDirtyRect->size.width, p_accumulatedSignatureDirtyRect->size.height];
    v6 = *(MEMORY[0x277CBF398] + 16);
    p_accumulatedSignatureDirtyRect->origin = *MEMORY[0x277CBF398];
    p_accumulatedSignatureDirtyRect->size = v6;
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(AKSignatureView *)self totalPointsAdded])
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetFillColorWithColor(CurrentContext, [(UIColor *)self->_strokeColor CGColor]);
    v9 = [(AKSignatureView *)self bitmapFifo];
    v10 = [v9 currentBitmap];

    if (v10)
    {
      memset(&v25, 0, sizeof(v25));
      v11 = [(AKSignatureView *)self bitmapFifo];
      v12 = v11;
      if (v11)
      {
        [v11 viewToBitmapTransform];
      }

      else
      {
        memset(&v25, 0, sizeof(v25));
      }

      v23 = v25;
      memset(&v24, 0, sizeof(v24));
      CGAffineTransformInvert(&v24, &v23);
      v23 = v24;
      CGContextConcatCTM(CurrentContext, &v23);
      v13 = [(AKSignatureView *)self bitmapFifo];
      [v13 bitmapRectInView];
      v23 = v25;
      v27 = CGRectApplyAffineTransform(v26, &v23);
      v14 = v27.origin.x;
      v15 = v27.origin.y;
      v16 = v27.size.width;
      v17 = v27.size.height;

      v23 = v25;
      v28.origin.x = x;
      v28.origin.y = y;
      v28.size.width = width;
      v28.size.height = height;
      v29 = CGRectApplyAffineTransform(v28, &v23);
      v18 = v29.origin.x;
      v19 = v29.origin.y;
      v20 = v29.size.width;
      v21 = v29.size.height;
      v29.origin.x = v14;
      v29.origin.y = v15;
      v29.size.width = v16;
      v29.size.height = v17;
      CGContextClipToMask(CurrentContext, v29, v10);
      v30.origin.x = v18;
      v30.origin.y = v19;
      v30.size.width = v20;
      v30.size.height = v21;
      CGContextFillRect(CurrentContext, v30);
    }

    CGContextRestoreGState(CurrentContext);
    v22 = [(AKSignatureView *)self bitmapFifo];
    [v22 resetDirtyRect];
  }
}

- (void)clear
{
  [(CHPointStrokeFIFO *)self->_strokeFIFO clear];
  [(AKBitmapFIFO *)self->_bitmapFifo clear];
  [(AKSignatureView *)self _forceRedisplay];
  WeakRetained = objc_loadWeakRetained(&self->_liveDelegate);
  [WeakRetained signatureViewSignatureUpdated:self];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AKSignatureView;
  [(AKSignatureView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AKSignatureView *)self setNeedsDisplay];
}

- (void)startStroke:(AKSignatureView *)self
{
  v5 = v2;
  [(AKSignatureView *)self setStrokeStartTime:CFAbsoluteTimeGetCurrent()];
  [(AKSignatureView *)self setStrokeLastLocation:vcvtq_f64_f32(*&v5)];
  [(AKSignatureView *)self strokeLastLocation];
  [(AKSignatureView *)self setStrokeStartLocation:?];
  [(AKSignatureView *)self setTotalPointsAdded:0];
  strokeFIFO = self->_strokeFIFO;

  [(CHPointStrokeFIFO *)strokeFIFO addPoint:v5];
}

- (void)continueStroke:(AKSignatureView *)self
{
  v5 = *&v2;
  [(AKSignatureView *)self setStrokeLastLocation:vcvtq_f64_f32(v2)];
  strokeFIFO = self->_strokeFIFO;

  [(CHPointStrokeFIFO *)strokeFIFO addPoint:v5];
}

- (void)continueStrokeWithoutSmoothing:(AKSignatureView *)self
{
  [(AKSignatureView *)self setIsAddingPointWithoutSmoothing:1, v2];
  v4 = [(CHQuadCurvePointFIFO *)self->_interpolatingFIFO emissionHandler];
  (v4)[2](v4, &v5, 1, 0, 0);

  [(AKSignatureView *)self setIsAddingPointWithoutSmoothing:0];
}

- (void)terminateStroke
{
  [(CHPointStrokeFIFO *)self->_strokeFIFO flush];
  Current = CFAbsoluteTimeGetCurrent();
  [(AKSignatureView *)self strokeStartTime];
  v5 = v4;
  if ([(AKSignatureView *)self totalPointsAdded]<= 9)
  {
    v6 = Current - v5;
    if (Current - v5 > 0.0 && v6 < 0.2)
    {
      [(AKSignatureView *)self strokeStartLocation];
      v8 = v7;
      v10 = v9;
      [(AKSignatureView *)self strokeLastLocation];
      v12 = v11;
      v14 = v13;
      [AKGeometryHelper distanceBetweenPoints:v8 andPoint:v10, v11, v13];
      v16 = v15;
      v6 = 15.0;
      if (v16 < 15.0)
      {
        if (v16 > 0.0)
        {
          [AKGeometryHelper normalizeVectorPoint:v12 - v8, v14 - v10];
          v8 = v8 + v16 * v17 * 0.5;
          v10 = v10 + v16 * v18 * 0.5;
        }

        [(AKSignatureView *)self currentWeight];
        *&v19 = v8;
        *&v20 = v10;
        [(AKSignatureView *)self continueStrokeWithoutSmoothing:COERCE_DOUBLE(__PAIR64__(v20, v19))];
      }
    }
  }

  [(AKBitmapFIFO *)self->_bitmapFifo flush];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F43484C;
  block[3] = &unk_278C7B540;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (double)weightForValue:(double)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23F4349AC;
  block[3] = &unk_278C7B540;
  block[4] = self;
  if (qword_27E39B5E8 != -1)
  {
    dispatch_once(&qword_27E39B5E8, block);
  }

  v4 = (*&qword_27E39B5E0 - *&qword_27E39B5D8) / (*&qword_27E39B5D0 - *&qword_27E39B5C8);
  v5 = *&qword_27E39B5D8 + v4 * (a3 - *&qword_27E39B5C8);
  if (v5 <= *&qword_27E39B5E0)
  {
    v6 = *&qword_27E39B5D8 + v4 * (a3 - *&qword_27E39B5C8);
  }

  else
  {
    v6 = *&qword_27E39B5E0;
  }

  if (v5 >= *&qword_27E39B5D8)
  {
    return v6;
  }

  else
  {
    return *&qword_27E39B5D8;
  }
}

- (double)weightForTouch:(id)a3
{
  v4 = a3;
  v5 = 2.0;
  if ([(AKSignatureView *)self ak_forceAvailableForTouch:v4])
  {
    [v4 force];
    v7 = v6;
    [v4 maximumPossibleForce];
    [(AKSignatureView *)self weightForValue:v7 / v8];
    v5 = v9;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v11 = [a3 anyObject];
  [v11 locationInView:self];
  v6 = v5;
  v8 = v7;
  [(AKSignatureView *)self weightForTouch:v11];
  [(AKSignatureView *)self setCurrentWeight:?];
  *&v9 = v6;
  *&v10 = v8;
  [(AKSignatureView *)self startStroke:COERCE_DOUBLE(__PAIR64__(v10, v9))];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v14 = a4;
  v6 = [a3 anyObject];
  [v6 locationInView:self];
  v8 = v7;
  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v14 coalescedTouchesForTouch:v6];
    [(AKSignatureView *)self handleCoalescedTouches:v11 forTouch:v6];
  }

  else
  {
    [(AKSignatureView *)self weightForTouch:v6];
    [(AKSignatureView *)self setCurrentWeight:?];
    *&v12 = v8;
    *&v13 = v10;
    [(AKSignatureView *)self continueStroke:COERCE_DOUBLE(__PAIR64__(v13, v12))];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v14 = a4;
  v6 = [a3 anyObject];
  [v6 locationInView:self];
  v8 = v7;
  v10 = v9;
  if (objc_opt_respondsToSelector())
  {
    v11 = [v14 coalescedTouchesForTouch:v6];
    [(AKSignatureView *)self handleCoalescedTouches:v11 forTouch:v6];
  }

  else
  {
    [(AKSignatureView *)self weightForTouch:v6];
    [(AKSignatureView *)self setCurrentWeight:?];
    *&v12 = v8;
    *&v13 = v10;
    [(AKSignatureView *)self continueStroke:COERCE_DOUBLE(__PAIR64__(v13, v12))];
  }

  [(AKSignatureView *)self terminateStroke];
}

- (void)handleCoalescedTouches:(id)a3 forTouch:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 locationInView:self];
        v12 = v11;
        v14 = v13;
        [(AKSignatureView *)self weightForTouch:v10];
        [(AKSignatureView *)self setCurrentWeight:?];
        *&v15 = v12;
        *&v16 = v14;
        [(AKSignatureView *)self continueStroke:COERCE_DOUBLE(__PAIR64__(v16, v15))];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (CGPoint)strokeStartLocation
{
  objc_copyStruct(v4, &self->_strokeStartLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)strokeLastLocation
{
  objc_copyStruct(v4, &self->_strokeLastLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)aggregateInvalid
{
  x = self->_aggregateInvalid.origin.x;
  y = self->_aggregateInvalid.origin.y;
  width = self->_aggregateInvalid.size.width;
  height = self->_aggregateInvalid.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)unionDrawingRect
{
  x = self->_unionDrawingRect.origin.x;
  y = self->_unionDrawingRect.origin.y;
  width = self->_unionDrawingRect.size.width;
  height = self->_unionDrawingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AKSignatureViewLiveDelegate)liveDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_liveDelegate);

  return WeakRetained;
}

@end