@interface PKRulerController
+ (id)sharedRulerView;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGAffineTransform)ensureRulerTransformIsFullyOnscreen:(_OWORD *)a3@<X8>;
- (double)_rulerFrame;
- (double)defaultRulerTransform;
- (double)pixelSnapRulerTransform:(_OWORD *)a3@<X8>;
- (double)rulerTransform;
- (float64x2_t)applyTransformToTouchLocation:(double)a3;
- (id)_viewForHostingRuler;
- (id)adjustFrames;
- (id)initWithDelegate:(id *)a1;
- (uint64_t)_enableRulerOnCanvasIfSharedRulerIsVisible;
- (uint64_t)drawingCancelled:(uint64_t)result;
- (uint64_t)getRulerCenterTValueOnScreenForTransform:(uint64_t)result;
- (uint64_t)resetRulerTransform;
- (uint64_t)rulerSelected;
- (void)_adjustViewForHostingRulerView;
- (void)_configureRuler;
- (void)canvasTransform;
- (void)dealloc;
- (void)drawingBegan:(double)a3 coordinateSystem:(double)a4;
- (void)drawingEnded;
- (void)drawingMoved:(double)a3 coordinateSystem:(double)a4;
- (void)ensureRulerIsFullyOnscreen;
- (void)hideRulerAnimated:(uint64_t)a1;
- (void)resetRulerTouches;
- (void)rulerMoveGesture:(id)a3;
- (void)setRulerHostingDelegate:(uint64_t)a1;
- (void)setSnapImpactBehavior:(uint64_t)a1;
- (void)showRuler;
- (void)startRulerDrawing;
@end

@implementation PKRulerController

void __36__PKRulerController_sharedRulerView__block_invoke()
{
  v0 = objc_alloc_init(PKRulerView);
  v1 = qword_1ED6A5150;
  qword_1ED6A5150 = v0;

  v3 = [[PKRulerLayer alloc] initWithRulerController:0];
  [(PKRulerView *)qword_1ED6A5150 setRulerLayer:v3];
  v2 = [qword_1ED6A5150 layer];
  [v2 addSublayer:v3];
}

- (id)_viewForHostingRuler
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 1);
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v1 = WeakRetained;
    }

    else
    {
      v4 = objc_loadWeakRetained(v1 + 5);
      v1 = [v4 topView];
    }
  }

  return v1;
}

- (uint64_t)_enableRulerOnCanvasIfSharedRulerIsVisible
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 16) != 1)
  {
    return 0;
  }

  v2 = +[PKRulerController sharedRulerView];
  v3 = [v2 superview];
  v4 = [(PKRulerController *)a1 _viewForHostingRuler];

  if (v3 != v4 || v2 && (v2[408] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setRulerEnabled:1];

    v5 = 1;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PKRulerController *)a1 _viewForHostingRuler];
  v7 = [v6 subviews];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v12 != v2)) == 1)
        {
          [v12 removeFromSuperview];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v5;
}

+ (id)sharedRulerView
{
  objc_opt_self();
  if (_MergedGlobals_142 != -1)
  {
    dispatch_once(&_MergedGlobals_142, &__block_literal_global_44);
  }

  v0 = qword_1ED6A5150;

  return v0;
}

- (void)ensureRulerIsFullyOnscreen
{
  if (a1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 64);
    v4 = v3;
    if (v3)
    {
      [v3 rulerTransform];
    }

    else
    {
      memset(v5, 0, sizeof(v5));
    }

    [v2 setRulerTransform:{v6, -[PKRulerController pixelSnapRulerTransform:](a1, v5, v6)}];
  }
}

- (void)_adjustViewForHostingRulerView
{
  v3 = [(PKRulerController *)a1 _viewForHostingRuler];
  v2 = [a1[7] superview];

  if (v3 != v2)
  {
    [a1[7] removeFromSuperview];
    [v3 addSubview:a1[7]];
  }

  [v3 bringSubviewToFront:a1[7]];
  [a1[7] setFrame:-[PKRulerController _rulerFrame](a1)];
}

- (double)_rulerFrame
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(PKRulerController *)a1 _viewForHostingRuler];
  v2 = *MEMORY[0x1E695EFF8];
  [v1 bounds];

  return v2;
}

- (id)initWithDelegate:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v6.receiver = a1;
    v6.super_class = PKRulerController;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 5, v3);
    }
  }

  return a1;
}

- (void)_configureRuler
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 16) == 1)
  {
    v2 = +[PKRulerController sharedRulerView];
    objc_storeStrong((a1 + 56), v2);
    if (v2 && (v3 = v2->_rulerLayer) != 0)
    {
      v4 = v3;
      v5 = *(a1 + 64);
      *(a1 + 64) = v4;
    }

    else
    {
      v5 = [[PKRulerLayer alloc] initWithRulerController:0];
      [(PKRulerView *)v2 setRulerLayer:v5];
      v8 = [(PKRulerView *)v2 layer];
      [v8 addSublayer:v5];

      if (v2)
      {
        rulerLayer = v2->_rulerLayer;
      }

      else
      {
        rulerLayer = 0;
      }

      objc_storeStrong((a1 + 64), rulerLayer);
    }

    goto LABEL_12;
  }

  v7 = (a1 + 64);
  v6 = *(a1 + 64);
  if (!v6)
  {
    v2 = objc_alloc_init(PKRulerView);
    objc_storeStrong((a1 + 56), v2);
    v5 = [[PKRulerLayer alloc] initWithRulerController:a1];
    objc_storeStrong((a1 + 64), v5);
    [(PKRulerView *)*(a1 + 56) setRulerLayer:?];
    v10 = [*(a1 + 56) layer];
    [v10 addSublayer:v5];

LABEL_12:
    v6 = *(a1 + 64);
    v16 = v2;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  [v6 setRulerController:a1];
  [*(a1 + 64) setFrame:-[PKRulerController _rulerFrame](a1)];
  [*(a1 + 56) setFrame:-[PKRulerController _rulerFrame](a1)];
  if (!*(a1 + 32))
  {
    v11 = [[PKRulerGestureRecognizer alloc] initWithTarget:a1 action:sel_rulerMoveGesture_];
    v12 = *(a1 + 32);
    *(a1 + 32) = v11;

    [*(a1 + 32) setCancelThreshold:15.0];
    [*(a1 + 32) setStartDelay:0.4];
    [*(a1 + 32) setDelegate:a1];
    [*(a1 + 32) setAllowedTouchTypes:&unk_1F47C1AC0];
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    [v14 addGestureRecognizer:v13];

    v15 = [[PKRulerGestureRecognizer alloc] initWithTarget:a1 action:sel_eatPencilGesture_];
    [(PKFreeTransformGestureRecognizer *)v15 setCancelThreshold:15.0];
    [(PKRulerGestureRecognizer *)v15 setStartDelay:0.4];
    [(PKRulerGestureRecognizer *)v15 setDelegate:a1];
    [(PKRulerGestureRecognizer *)v15 setAllowedTouchTypes:&unk_1F47C1AD8];
    [*(a1 + 56) addGestureRecognizer:v15];
  }

  [(PKRulerController *)a1 _adjustViewForHostingRulerView];
}

- (void)setRulerHostingDelegate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v15 = v3;
    v4 = objc_storeWeak((a1 + 48), v3);
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained((a1 + 48));
        v8 = [v7 rulerHostingView];

        if (v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        objc_storeWeak((a1 + 8), v9);
      }
    }

    v10 = objc_loadWeakRetained((a1 + 48));
    if (v10 && (v11 = v10, v12 = objc_loadWeakRetained((a1 + 48)), v13 = objc_opt_respondsToSelector(), v12, v11, (v13 & 1) != 0))
    {
      v14 = objc_loadWeakRetained((a1 + 48));
      *(a1 + 16) = [v14 rulerHostWantsSharedRuler];
    }

    else
    {
      *(a1 + 16) = 1;
    }

    [(PKRulerController *)a1 _enableRulerOnCanvasIfSharedRulerIsVisible];
    v3 = v15;
  }
}

- (uint64_t)rulerSelected
{
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      return [(PKRulerController *)a1 _enableRulerOnCanvasIfSharedRulerIsVisible];
    }

    v2 = *(a1 + 56);
    if (v2)
    {
      LOBYTE(v2) = *(v2 + 408) ^ 1;
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (void)dealloc
{
  if (!self->_wantsSharedRuler)
  {
    [(PKRulerView *)self->_rulerView removeFromSuperview];
  }

  v3.receiver = self;
  v3.super_class = PKRulerController;
  [(PKRulerController *)&v3 dealloc];
}

- (id)adjustFrames
{
  if (result)
  {
    v1 = result;
    [result[8] setFrame:-[PKRulerController _rulerFrame](result)];
    [v1[8] frame];
    v2 = v1[7];

    return [v2 setFrame:?];
  }

  return result;
}

- (void)showRuler
{
  if (a1)
  {
    [(PKRulerController *)a1 _configureRuler];
    [(PKRulerController *)a1 adjustFrames];
    [*(a1 + 64) showRuler];
    [(PKRulerController *)a1 ensureRulerIsFullyOnscreen];
    v2 = *(a1 + 56);
    if (v2)
    {
      *(v2 + 408) = 0;
    }

    [*(a1 + 32) setStartDelay:0.0];
    [*(a1 + 32) setStartThreshold:0.0];
    [*(a1 + 32) setStartSnapThreshold:10.0];
    [*(a1 + 32) setAllowSingleTouchDrag:1];
    v3 = *MEMORY[0x1E69DD8E8];
    v4 = *(a1 + 64);

    UIAccessibilityPostNotification(v3, v4);
  }
}

- (void)hideRulerAnimated:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 64) hideRulerAnimated:a2];
    v3 = *(a1 + 56);
    if (v3)
    {
      *(v3 + 408) = 1;
    }

    *(a1 + 19) = 0;
    [*(a1 + 32) setStartDelay:0.4];
    [*(a1 + 32) setStartThreshold:1.79769313e308];
    [*(a1 + 32) setAllowSingleTouchDrag:0];
    v4 = *MEMORY[0x1E69DD8E8];

    UIAccessibilityPostNotification(v4, 0);
  }
}

- (double)defaultRulerTransform
{
  if (a1)
  {
    CGAffineTransformMakeRotation(&v5, 0.785398163);
    return [(PKRulerController *)a1 pixelSnapRulerTransform:a2];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

- (uint64_t)resetRulerTransform
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    v3 = v2;
    if (v2)
    {
      [v2 rulerTransform];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
    }

    *(v1 + 112) = v6;
    *(v1 + 128) = v7;
    *(v1 + 144) = v8;

    result = [*(v1 + 64) rulerAlpha];
    if (v4 < 1.0)
    {
      WeakRetained = objc_loadWeakRetained((v1 + 40));
      [WeakRetained setRulerEnabled:0];

      [(PKRulerController *)v1 hideRulerAnimated:?];
      [*(v1 + 32) setEnabled:0];
      return [*(v1 + 32) setEnabled:1];
    }
  }

  return result;
}

- (float64x2_t)applyTransformToTouchLocation:(double)a3
{
  result = 0uLL;
  if (a1)
  {
    memset(&v9, 0, sizeof(v9));
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained strokeTransform];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    CGAffineTransformInvert(&v9, &v8);

    return vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, a3), *&v9.a, a2));
  }

  return result;
}

- (void)drawingBegan:(double)a3 coordinateSystem:(double)a4
{
  v9 = a2;
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      [(PKRulerController *)a1 _configureRuler];
    }

    [(PKRulerController *)a1 startRulerDrawing];
    [v9 convertPoint:*(a1 + 56) toCoordinateSpace:{a3, a4}];
    [*(a1 + 64) updateRulerMarkerForLocation:1 firstTouch:{-[PKRulerController applyTransformToTouchLocation:](a1, v7, v8).f64[0]}];
  }
}

- (void)startRulerDrawing
{
  if (a1)
  {
    v2 = a1[8];
    if (v2)
    {
      v3 = v2;
      [v3 rulerTransform];

      memset(v27, 0, sizeof(v27));
      WeakRetained = objc_loadWeakRetained(a1 + 5);
      v5 = [WeakRetained topView];

      v6 = a1[7];
      v7 = [v6 superview];
      if (v7 == v5)
      {
        v12 = *(MEMORY[0x1E695EFD0] + 16);
        *&v27[0].a = *MEMORY[0x1E695EFD0];
        *&v27[0].c = v12;
        *&v27[0].tx = *(MEMORY[0x1E695EFD0] + 32);
      }

      else
      {
        [v5 convertRect:v6 fromView:{0.0, 0.0, 100.0, 100.0}];
        DKDTransformConvertingRectToRectAtPercent(v27, 0.0, 0.0, 100.0, 100.0, v8, v9, v10, v11, 1.0);
      }

      t1 = v27[1];
      t2 = v27[0];
      CGAffineTransformConcat(&v26, &t1, &t2);
      v27[1] = v26;
      memset(&v26, 0, sizeof(v26));
      v13 = objc_loadWeakRetained(a1 + 5);
      v14 = v13;
      if (v13)
      {
        [v13 strokeTransform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      CGAffineTransformInvert(&v26, &t1);

      t2 = v27[1];
      v23 = v26;
      CGAffineTransformConcat(&t1, &t2, &v23);
      v27[1] = t1;
      v15 = objc_loadWeakRetained(a1 + 5);
      v16 = [v15 drawingController];
      v17 = [(PKController *)v16 inputController];
      t1 = v27[1];
      v18 = a1[8];
      [v18 rulerWidth];
      v20 = v19;
      v21 = a1[8];
      [v21 rulerAlignInset];
      [v17 allowSnappingToRuler:&t1 width:v20 - v22];
    }
  }
}

- (void)drawingMoved:(double)a3 coordinateSystem:(double)a4
{
  v7 = a2;
  if (a1)
  {
    v14 = v7;
    [v7 convertPoint:*(a1 + 56) toCoordinateSpace:{a3, a4}];
    [*(a1 + 64) updateRulerMarkerForLocation:0 firstTouch:{-[PKRulerController applyTransformToTouchLocation:](a1, v8, v9).f64[0]}];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v11 = [WeakRetained drawingController];
    v12 = [(PKController *)v11 inputController];

    LOBYTE(WeakRetained) = [v12 lastPointIsMasked];
    v13 = [v12 isSnappedToRuler];
    *(a1 + 21) = WeakRetained;
    *(a1 + 22) |= WeakRetained;
    *(a1 + 23) |= v13;

    v7 = v14;
  }
}

- (void)drawingEnded
{
  if (a1)
  {
    [(PKRulerController *)a1 resetRulerTouches];
    [*(a1 + 64) removeRulerMarkers];
    v2 = *(a1 + 23);
    if (*(a1 + 22) & 1) != 0 || (v2)
    {
      v3 = +[PKStatisticsManager sharedStatisticsManager];
      v4 = *(a1 + 56);
      v5 = v4;
      if (v4)
      {
        v6 = *(v4 + 52);
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      [v7 currentAngle];
      [PKStatisticsManager recordRulerInteractionEndedWithType:v3 angle:v2 ^ 1];
    }

    *(a1 + 21) = 0;
    *(a1 + 23) = 0;
  }
}

- (uint64_t)drawingCancelled:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    [(PKRulerController *)result resetRulerTouches];
    result = [*(v1 + 64) removeRulerMarkers];
    *(v1 + 21) = 0;
    *(v1 + 23) = 0;
  }

  return result;
}

- (void)resetRulerTouches
{
  if (a1 && *(a1 + 64))
  {
    [*(a1 + 32) resetStartingTouches];
    v2 = *(a1 + 64);
    v3 = v2;
    if (v2)
    {
      [v2 rulerTransform];
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
      v4 = 0u;
    }

    *(a1 + 112) = v4;
    *(a1 + 128) = v5;
    *(a1 + 144) = v6;
  }
}

- (double)pixelSnapRulerTransform:(_OWORD *)a3@<X8>
{
  if (a1)
  {
    v6 = *(a2 + 16);
    *&v15.a = *a2;
    *&v15.c = v6;
    *&v15.tx = *(a2 + 32);
    [(PKRulerController *)a1 ensureRulerTransformIsFullyOnscreen:&v16];
    v7 = *&v16.c;
    *a2 = *&v16.a;
    *(a2 + 16) = v7;
    *(a2 + 32) = *&v16.tx;
    v8 = *(a2 + 16);
    *&v16.a = *a2;
    *&v16.c = v8;
    *&v16.tx = *(a2 + 32);
    [(PKRulerController *)a1 getRulerCenterTValueOnScreenForTransform:?];
    v10 = *(a2 + 16);
    *&v15.a = *a2;
    *&v15.c = v10;
    *&v15.tx = *(a2 + 32);
    CGAffineTransformTranslate(&v16, &v15, floor((v9 + -0.5) * 4000.0 / 50.0) * 50.0, 0.0);
    v11 = *&v16.c;
    *a2 = *&v16.a;
    *(a2 + 16) = v11;
    *(a2 + 32) = *&v16.tx;
    v12 = *(a2 + 16);
    *(a2 + 32) = vrndaq_f64(*(a2 + 32));
    *a3 = *a2;
    a3[1] = v12;
    v13 = *(a2 + 32);
    a3[2] = v13;
  }

  else
  {
    *&v13 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v13;
}

- (void)rulerMoveGesture:(id)a3
{
  v4 = a3;
  if (self)
  {
    rulerView = self->_rulerView;
  }

  else
  {
    rulerView = 0;
  }

  v6 = rulerView;
  v7 = [v4 state];
  if ((v7 - 3) >= 2)
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_108;
      }

LABEL_44:
      v27 = v4;
      if (!self || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v29 = [WeakRetained isDrawing], WeakRetained, (v29 & 1) != 0))
      {
LABEL_107:

        goto LABEL_108;
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setAnimationDuration:0.0];
      memset(&v88, 0, sizeof(v88));
      if (v27)
      {
        [v27 freeTransform];
      }

      v30 = self->_rulerView;
      t2 = v88;
      [(PKRulerView *)v30 frame];
      DKDTransformConvertForNewOrigin(&t2, &t1, v31, v32);
      v88 = t1;
      t2 = t1;
      v33 = *&self->_rulerStartTransform.c;
      *&v91.a = *&self->_rulerStartTransform.a;
      *&v91.c = v33;
      *&v91.tx = *&self->_rulerStartTransform.tx;
      DKDTransformInTransformSpace(&t2, &v91, &t1);
      v88 = t1;
      v34 = sqrt(t1.b * t1.b + t1.a * t1.a);
      v35 = 1.0;
      if (v34 < 0.5)
      {
        v35 = v34;
        if (v34 > 1.0)
        {
          v35 = 1.0;
        }
      }

      [(PKRulerLayer *)self->_rulerLayer setRulerAlpha:v35];
      if (v27)
      {
        [v27 unscaledFreeTransform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      v88 = t1;
      t2 = t1;
      [(PKRulerView *)v30 frame];
      DKDTransformConvertForNewOrigin(&t2, &t1, v36, v37);
      v88 = t1;
      t2 = t1;
      v38 = *&self->_rulerStartTransform.c;
      *&v91.a = *&self->_rulerStartTransform.a;
      *&v91.c = v38;
      *&v91.tx = *&self->_rulerStartTransform.tx;
      DKDTransformInTransformSpace(&t2, &v91, &t1);
      v88 = t1;
      CGAffineTransformScale(&t2, &t1, 1.0 / sqrt(t1.b * t1.b + t1.a * t1.a), 1.0 / sqrt(t1.d * t1.d + t1.c * t1.c));
      v88 = t2;
      [v27 locationInView:v30];
      v40 = v39;
      v42 = v41;
      memset(&v87, 0, sizeof(v87));
      t1 = v88;
      v43 = *&self->_rulerStartTransform.c;
      *&t2.a = *&self->_rulerStartTransform.a;
      *&t2.c = v43;
      *&t2.tx = *&self->_rulerStartTransform.tx;
      CGAffineTransformConcat(&v87, &t1, &t2);
      v86 = v87;
      t2 = v87;
      memset(&t1, 0, sizeof(t1));
      DKDTransformConvertForNewOrigin(&t2, &t1, v40, v42);
      t2 = t1;
      v44 = DKDTransformAngle(&t2.a);
      v45 = fmod(v44, 360.0);
      if (v44 <= 360.0 && v44 >= 0.0)
      {
        v45 = v44;
      }

      if (v45 < 0.0)
      {
        v45 = v45 + 360.0;
      }

      if (v45 == 0.0)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = v45;
      }

      v48 = round(v47 / 45.0) * 45.0;
      v49 = fmod(v48, 360.0);
      if (v48 <= 360.0 && v48 >= 0.0)
      {
        v49 = v48;
      }

      if (v49 < 0.0)
      {
        v49 = v49 + 360.0;
      }

      if (v49 == 0.0)
      {
        v51 = 0.0;
      }

      else
      {
        v51 = v49;
      }

      v52 = fmod(v47 - v51, 360.0);
      if (v52 > 180.0)
      {
        v52 = v52 + -360.0;
      }

      v53 = v52 + 360.0;
      if (v52 >= -180.0)
      {
        v53 = v52;
      }

      v54 = (v53 < 0.0) << 32;
      v55 = fabs(v53);
      v56 = v54 | 2;
      if (v55 <= 5.0)
      {
        v56 = (v53 < 0.0) << 32;
      }

      v57 = v54 | 1;
      if (v55 <= 12.5)
      {
        v57 = v56;
      }

      snapAngle = self->_rulerState.snapAngle;
      if (v51 != snapAngle)
      {
        self->_canRulerSnapToAngle = 1;
        *&self->_rulerState.arcType = v57;
        self->_rulerState.snapAngle = v51;
        *&self->_previousRulerState.arcType = v57;
        self->_previousRulerState.snapAngle = v51;
        if (!v57)
        {
          goto LABEL_84;
        }

LABEL_96:
        if (self->_rulerSnappedToAngle)
        {
          self->_rulerSnappedToAngle = 0;
          v59 = 0.5;
          goto LABEL_98;
        }

LABEL_99:
        v87 = v86;
        v62 = [v27 touches];
        self->_rulerIsRotating = [v62 count] > 1;

        v63 = self->_rulerLayer;
        t2 = v87;
        [(PKRulerLayer *)v63 setRulerTransform:&t1, [(PKRulerController *)self pixelSnapRulerTransform:&t1]];

        v64 = v27;
        if (self->_rulerIsRotating)
        {
          memset(&t1, 0, sizeof(t1));
          v65 = self->_rulerLayer;
          v66 = v65;
          if (v65)
          {
            [(PKRulerLayer *)v65 rulerTransform];
          }

          else
          {
            memset(&t1, 0, sizeof(t1));
          }

          memset(&t2, 0, sizeof(t2));
          v91 = t1;
          CGAffineTransformInvert(&t2, &v91);
          v68 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v68 scale];
          v84 = v69;

          v70 = [v64 touches];
          v71 = [v70 objectAtIndexedSubscript:0];
          [v71 locationInView:self->_rulerView];
          v73 = v72;
          v75 = v74;

          v76 = [v64 touches];
          v77 = [v76 objectAtIndexedSubscript:1];
          [v77 locationInView:self->_rulerView];
          v79 = v78;
          v81 = v80;

          [(PKRulerLayer *)self->_rulerLayer updateAngleWithAngleMarkerPosition:vmulq_n_f64(vrndaq_f64(vmulq_n_f64(vaddq_f64(*&t1.tx, vmlaq_n_f64(vmulq_f64(*&t1.c, 0), *&t1.a, (t2.tx + v75 * t2.c + t2.a * v73 + t2.tx + v81 * t2.c + t2.a * v79) * 0.5)), v84)), 1.0 / v84)];
        }

        else
        {
          v67 = [(PKRulerLayer *)self->_rulerLayer rulerAngleMarker];

          if (v67)
          {
            [(PKRulerLayer *)self->_rulerLayer hideRulerAngleMarker];
          }
        }

        [MEMORY[0x1E6979518] commit];
        goto LABEL_107;
      }

      v60 = *&self->_rulerState.arcType;
      if (v60 == v57)
      {
        if (!v60)
        {
          if (!self->_canRulerSnapToAngle)
          {
            goto LABEL_96;
          }

          goto LABEL_84;
        }

        if (v53 < 0.0 != ((v60 & 0x100000000) == 0))
        {
          goto LABEL_96;
        }
      }

      if (v57)
      {
        if (v57 == 1)
        {
          goto LABEL_93;
        }

        if (v57 != 2)
        {
LABEL_95:
          *&self->_previousRulerState.arcType = v60;
          self->_previousRulerState.snapAngle = snapAngle;
          *&self->_rulerState.arcType = v57;
          self->_rulerState.snapAngle = v51;
          goto LABEL_96;
        }

        if (v60)
        {
LABEL_93:
          v61 = 1;
        }

        else
        {
          v83 = *&self->_previousRulerState.arcType;
          if (v83)
          {
            v61 = (v53 < 0.0) ^ BYTE4(v83) & 1;
          }

          else
          {
            v61 = 1;
          }
        }

        self->_canRulerSnapToAngle = v61;
        goto LABEL_95;
      }

      canRulerSnapToAngle = self->_canRulerSnapToAngle;
      *&self->_previousRulerState.arcType = v60;
      self->_previousRulerState.snapAngle = snapAngle;
      *&self->_rulerState.arcType = v57;
      self->_rulerState.snapAngle = v51;
      if (!canRulerSnapToAngle)
      {
        goto LABEL_96;
      }

LABEL_84:
      memset(&t2, 0, sizeof(t2));
      CGAffineTransformMakeRotation(&t2, (v51 - v47) * 3.14159265 / 180.0);
      v90 = t1;
      v89 = t2;
      CGAffineTransformConcat(&v91, &v90, &v89);
      t1 = v91;
      DKDTransformConvertForNewOrigin(&v91, &v86, -v40, -v42);
      if (!self->_rulerSnappedToAngle)
      {
        self->_rulerSnappedToAngle = 1;
        v59 = 1.0;
LABEL_98:
        [(UIImpactFeedbackGenerator *)self->_snapImpactBehavior _impactOccurredWithIntensity:v59];
        goto LABEL_99;
      }

      goto LABEL_99;
    }

    v13 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(t1.a) = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEBUG, "rulerMoveGesture began", &t1, 2u);
    }

    if (!self || (v14 = self->_rulerLayer) == 0)
    {
      [(PKRulerController *)self showRuler];
      [PKRulerController drawingCancelled:?];
      if (self)
      {
        self->_rulerWasShownViaGesture = 1;
      }

      memset(&t1, 0, sizeof(t1));
      if (v4)
      {
        [v4 rulerTransform];
      }

      v91 = t1;
      [(PKRulerView *)v6 frame];
      DKDTransformConvertForNewOrigin(&v91, &t2, v15, v16);
      t1 = t2;
      if (self)
      {
        rulerLayer = self->_rulerLayer;
      }

      else
      {
        rulerLayer = 0;
      }

      v18 = rulerLayer;
      v91 = t1;
      [(PKRulerLayer *)v18 setRulerTransform:&t2, [(PKRulerController *)self pixelSnapRulerTransform:&t2]];

      if (!self)
      {
        v24 = 0;
LABEL_41:
        [(UIImpactFeedbackGenerator *)v24 deactivate];
        v25 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1 coordinateSpace:v6];
        [(PKRulerController *)self setSnapImpactBehavior:v25];

        if (self)
        {
          snapImpactBehavior = self->_snapImpactBehavior;
        }

        else
        {
          snapImpactBehavior = 0;
        }

        [(UIImpactFeedbackGenerator *)snapImpactBehavior activateWithCompletionBlock:0];
        goto LABEL_44;
      }

      v14 = self->_rulerLayer;
    }

    *&self->_isInteractingWithRuler = 1;
    v19 = v14;
    v20 = v19;
    if (v19)
    {
      [(PKRulerLayer *)v19 rulerTransform];
      t1 = v85;
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v23 = *&t1.c;
    *&self->_rulerStartTransform.a = *&t1.a;
    *&self->_rulerStartTransform.c = v23;
    *&self->_rulerStartTransform.tx = *&t1.tx;

    self->_previousRulerState = self->_rulerState;
    self->_rulerSnappedToAngle = 0;
    v24 = self->_snapImpactBehavior;
    goto LABEL_41;
  }

  if (self)
  {
    self->_rulerSnappedToAngle = 0;
    v8 = self->_snapImpactBehavior;
  }

  else
  {
    v8 = 0;
  }

  [(UIImpactFeedbackGenerator *)v8 deactivate];
  [(PKRulerController *)self setSnapImpactBehavior:?];
  v9 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(t1.a) = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "rulerMoveGesture ended/canceled", &t1, 2u);
  }

  if (self)
  {
    v10 = self->_rulerLayer;
  }

  else
  {
    v10 = 0;
  }

  [(PKRulerLayer *)v10 rulerAlpha];
  if (v11 >= 1.0)
  {
    if (self)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (self)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v12 = 0;
    }

    [v12 setRulerEnabled:0];

    if (self)
    {
      [(PKRulerController *)self hideRulerAnimated:?];
LABEL_33:
      v21 = self->_rulerLayer;
      goto LABEL_34;
    }
  }

  v21 = 0;
LABEL_34:
  [(PKRulerLayer *)v21 hideRulerAngleMarker];
  if (self)
  {
    v22 = self->_rulerLayer;
  }

  else
  {
    v22 = 0;
  }

  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], v22);
  if (self)
  {
    self->_isInteractingWithRuler = 0;
    if (self->_rulerWasShownViaGesture)
    {
      [(PKRulerController *)self hideRulerAnimated:?];
    }
  }

LABEL_108:
}

- (void)setSnapImpactBehavior:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKRulerController *)&self->super.isa _viewForHostingRuler];
  if (self)
  {
    v9 = self->_rulerGestureRecognizer;
    v10 = v9;
    if (v9 == v6)
    {
      rulerLayer = self->_rulerLayer;

      if (!rulerLayer)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
LABEL_4:
    v12 = [WeakRetained drawingGestureRecognizer];
    if (v12 != v6)
    {

      if (!self)
      {
LABEL_33:
        if (v6)
        {
          v22 = 0;
          goto LABEL_13;
        }

        goto LABEL_35;
      }

      goto LABEL_12;
    }

    if (!self)
    {

      goto LABEL_33;
    }

    v21 = self->_rulerLayer;

    if (!v21)
    {
LABEL_12:
      v22 = self->_rulerGestureRecognizer;
      if (v22 != v6)
      {
LABEL_13:

LABEL_26:
        v31 = 1;
        goto LABEL_27;
      }

      v23 = self->_rulerLayer;

      if (v23)
      {
        goto LABEL_26;
      }

      v24 = objc_loadWeakRetained(&self->_delegate);
      goto LABEL_16;
    }

LABEL_8:
    [v7 locationInView:v8];
    v15 = v14;
    v17 = v16;
    v18 = self->_rulerLayer;
    if (v18)
    {
      v19 = v18;
      v20 = [(PKRulerLayer *)self->_rulerLayer viewPointInRuler:v15, v17];
    }

    else
    {
      v20 = 1;
    }

    v31 = v20 == (self->_rulerGestureRecognizer == v6);
    goto LABEL_27;
  }

  if (v6)
  {
    v10 = 0;
    WeakRetained = 0;
    goto LABEL_4;
  }

LABEL_35:
  v24 = 0;
LABEL_16:
  if (([v24 isDrawing] & 1) == 0)
  {

    goto LABEL_26;
  }

  if (self)
  {
    v25 = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v25 = 0;
  }

  v26 = [v25 drawingGestureRecognizer];
  v27 = [v26 drawingTouch];
  if (v27 == v7)
  {
    v31 = 1;
  }

  else
  {
    v34 = v25;
    v33 = [(PKFreeTransformGestureRecognizer *)v6 touches];
    if (self)
    {
      v28 = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 drawingGestureRecognizer];
    v30 = [v29 drawingTouch];
    v31 = [v33 containsObject:v30];

    v25 = v34;
  }

LABEL_27:
  return v31 & 1;
}

- (CGAffineTransform)ensureRulerTransformIsFullyOnscreen:(_OWORD *)a3@<X8>
{
  v63 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    [(PKRulerController *)result _adjustViewForHostingRulerView];
    v6 = a2[1];
    v7 = a2[4];
    v8 = a2[5];
    v9 = a2[2] * 0.0;
    v10 = v7 + v9 + *a2 * 0.0;
    v11 = a2[3] * 0.0;
    v12 = v8 + v11 + v6 * 0.0;
    v56 = v8 + v6 + v11;
    v57 = v7 + *a2 + v9;
    [*&v5[1].b bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [*&v5[1].b safeAreaInsets];
    v22 = v16 + v21;
    v25 = v18 - (v23 + v24);
    v64.size.height = v20 - (v21 + v26);
    v64.origin.x = v14 + v23;
    v64.origin.y = v22;
    v64.size.width = v25;
    v65 = CGRectInset(v64, 10.0, 10.0);
    x = v65.origin.x;
    y = v65.origin.y;
    width = v65.size.width;
    height = v65.size.height;
    MinX = CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    MinY = CGRectGetMinY(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MaxX = CGRectGetMaxX(v67);
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v52 = CGRectGetMinY(v68);
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    v51 = CGRectGetMaxX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    MaxY = CGRectGetMaxY(v70);
    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    v32 = CGRectGetMinX(v71);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v33 = CGRectGetMaxY(v72);
    v34 = 0;
    v35 = *MEMORY[0x1E695EFF8];
    v36 = *(MEMORY[0x1E695EFF8] + 8);
    v60.a = MinX;
    v60.b = MinY;
    v60.c = MaxX;
    v60.d = v52;
    v60.tx = v32;
    v60.ty = v33;
    v61 = v51;
    v62 = MaxY;
    v37 = 1.0 / sqrt((v56 - v12) * (v56 - v12) + (v57 - v10) * (v57 - v10));
    v38 = (v57 - v10) * v37;
    v39 = (v56 - v12) * v37;
    v40 = 1.79769313e308;
    do
    {
      v41 = v39 * (*(&v60.b + v34) - v12) + (*(&v60.a + v34) - v10) * v38;
      v42 = v10 + v38 * v41;
      v43 = x;
      if (v42 >= x)
      {
        v43 = v10 + v38 * v41;
        if (v42 > x + width)
        {
          v43 = x + width;
        }
      }

      v44 = v12 + v39 * v41;
      v45 = y;
      if (v44 >= y)
      {
        v45 = v44;
        if (v44 > y + height)
        {
          v45 = y + height;
        }
      }

      v46 = v43 - v42;
      v47 = v45 - v44;
      if (v47 * v47 + v46 * v46 < v40)
      {
        v40 = v47 * v47 + v46 * v46;
        v36 = v45 - v44;
        v35 = v46;
      }

      v34 += 16;
    }

    while (v34 != 64);
    v48 = *(a2 + 1);
    *&t1.a = *a2;
    *&t1.c = v48;
    *&t1.tx = *(a2 + 2);
    CGAffineTransformMakeTranslation(&t2, v35, v36);
    result = CGAffineTransformConcat(&v60, &t1, &t2);
    v49 = *&v60.c;
    *a2 = *&v60.a;
    *(a2 + 1) = v49;
    *(a2 + 2) = *&v60.tx;
    v50 = *(a2 + 1);
    *a3 = *a2;
    a3[1] = v50;
    a3[2] = *(a2 + 2);
  }

  else
  {
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

- (uint64_t)getRulerCenterTValueOnScreenForTransform:(uint64_t)result
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = a2[2];
    v3 = vmulq_f64(a2[1], 0);
    v4 = vaddq_f64(v2, vmlaq_f64(v3, vdupq_n_s64(0x409F400000000000uLL), *a2));
    v20[0] = vaddq_f64(v2, vmlaq_f64(v3, vdupq_n_s64(0xC09F400000000000), *a2));
    v20[1] = v4;
    [*(result + 56) bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v19[0] = CGRectGetMinX(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v19[1] = CGRectGetMinY(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v19[2] = CGRectGetMaxX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v19[3] = CGRectGetMinY(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v18[0] = CGRectGetMinX(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v18[1] = CGRectGetMaxY(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v18[2] = CGRectGetMaxX(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v18[3] = CGRectGetMaxY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v17[0] = CGRectGetMinX(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v17[1] = CGRectGetMinY(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v17[2] = CGRectGetMinX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v17[3] = CGRectGetMaxY(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    v16[0] = CGRectGetMaxX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v16[1] = CGRectGetMinY(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v16[2] = CGRectGetMaxX(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v9 = 0;
    v10 = 0;
    v16[3] = CGRectGetMaxY(v37);
    v11 = v19;
    v14[0] = v19;
    v14[1] = v18;
    v14[2] = v17;
    v14[3] = v16;
    while (1)
    {
      result = DKDIntersectionOfLines(v20[0].f64, v11, &v16[v10], &v13, v12, 0, 1);
      if (!result)
      {
        goto LABEL_7;
      }

      if (v10)
      {
        break;
      }

      if (++v9 == 4)
      {
        return result;
      }

      v10 = 1;
LABEL_8:
      v11 = v14[v9];
    }

    if (vabdd_f64(*&v16[v10], v15) >= 0.00999999978)
    {
      return result;
    }

    v10 = 1;
LABEL_7:
    if (++v9 == 4)
    {
      return result;
    }

    goto LABEL_8;
  }

  return result;
}

- (double)rulerTransform
{
  if (a1)
  {
    v4 = *(a1 + 64);
    v5 = v4;
    if (v4)
    {
      [v4 rulerTransform];
    }

    else
    {
      memset(v7, 0, sizeof(v7));
    }

    [(PKRulerController *)a1 pixelSnapRulerTransform:v7, a2];
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

- (void)canvasTransform
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained strokeTransform];
      v7 = *(&v16 + 1);
      v6 = *&v16;
      v9 = *(&v17 + 1);
      v8 = *&v17;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      v8 = 0.0;
      v7 = 0.0;
      v9 = 0.0;
      v6 = 0.0;
    }

    v10 = v6 * v9 - v7 * v8;
    if (fabs(v10) < 0.001 || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v18 & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
    {

LABEL_9:
      v11 = objc_loadWeakRetained((a1 + 40));
      [v11 drawingScale];
      v13 = v12;

      CGAffineTransformMakeScale(a2, v13, v13);
      return;
    }

    if ((*(&v18 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    v14 = objc_loadWeakRetained((a1 + 40));
    v15 = v14;
    if (v14)
    {
      [v14 strokeTransform];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    *a2 = v16;
    *(a2 + 16) = v17;
    *(a2 + 32) = v18;
  }

  else
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

@end