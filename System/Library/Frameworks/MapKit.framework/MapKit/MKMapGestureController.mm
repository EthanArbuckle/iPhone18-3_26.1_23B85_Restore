@interface MKMapGestureController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isZoomEnabled;
- (BOOL)keyDown:(id)a3;
- (BOOL)keyUp:(id)a3;
- (BOOL)tiltGestureRecognizerShouldBegin:(id)a3;
- (CGPoint)_snapPointToDevicePixels:(CGPoint)a3;
- (MKMapGestureController)initWithMapView:(id)a3 gestureTargetView:(id)a4 doubleTapTargetView:(id)a5;
- (MKMapGestureControllerDelegate)delegate;
- (double)variableDelayTapRecognizer:(id)a3 shouldWaitForNextTapForDuration:(double)a4 afterTouch:(id)a5;
- (void)_clearGesture:(id)a3;
- (void)_handleInterrupt:(id)a3;
- (void)_handleRotationPan:(id)a3;
- (void)_handleStandardTilt:(id)a3;
- (void)_handleZoomPan:(id)a3;
- (void)_setTraitCollection:(id)a3;
- (void)_updateRotationGestureForState:(int64_t)a3 focusPoint:(CGPoint)a4 rotation:(double)a5 velocity:(double)a6;
- (void)_updateZoomGestureForState:(int64_t)a3 focusPoint:(CGPoint)a4 scale:(double)a5 velocity:(double)a6 gestureType:(int64_t)a7 configuration:(id)a8;
- (void)beginGesturing;
- (void)cancelZoomInOrOut;
- (void)clearGestureRecognizersInFlight;
- (void)dealloc;
- (void)endGesturing;
- (void)handleArrowPan:(id)a3;
- (void)handleArrowRotate:(id)a3;
- (void)handleArrowZoom:(id)a3;
- (void)handleDoubleTap:(id)a3;
- (void)handleOneHandedPanZoom:(id)a3;
- (void)handlePan:(id)a3;
- (void)handlePanZoom:(id)a3;
- (void)handlePinch:(id)a3;
- (void)handleRotation:(id)a3;
- (void)handleTwoFingerLongPress:(id)a3;
- (void)handleTwoFingerTap:(id)a3;
- (void)handleZoomArrowMask:(int64_t)a3 speed:(double)a4;
- (void)setCompassView:(id)a3;
- (void)setRotationEnabled:(BOOL)a3;
- (void)setTiltEnabled:(BOOL)a3;
- (void)setZoomEnabled:(BOOL)a3;
- (void)setupOneHandedZoomGestureRecognizerForView:(id)a3;
- (void)stopDynamicAnimations;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation MKMapGestureController

- (void)clearGestureRecognizersInFlight
{
  [(MKMapGestureController *)self _clearGesture:self->_panGestureRecognizer];
  [(MKMapGestureController *)self _clearGesture:self->_pinchGestureRecognizer];
  [(MKMapGestureController *)self _clearGesture:self->_twoFingerLongPressGestureRecognizer];
  [(MKMapGestureController *)self _clearGesture:self->_twoFingerTapGestureRecognizer];
  [(MKMapGestureController *)self _clearGesture:self->_doubleTapGestureRecognizer];
  v3 = +[MKSystemController sharedInstance];
  v4 = [v3 supportsExtendedGestures];

  if (v4)
  {
    oneHandedZoomGestureRecognizer = self->_oneHandedZoomGestureRecognizer;

    [(MKMapGestureController *)self _clearGesture:oneHandedZoomGestureRecognizer];
  }
}

- (MKMapGestureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)endGesturing
{
  gestureCount = self->_gestureCount;
  if (gestureCount <= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = gestureCount - 1;
  }

  self->_gestureCount = v3;
  if (!v3)
  {
    v5 = MKGetGesturesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_INFO, "End Gesturing", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureControllerDidStopUserInteraction:self];
  }
}

- (void)beginGesturing
{
  gestureCount = self->_gestureCount;
  if (!gestureCount)
  {
    v4 = MKGetGesturesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Begin Gesturing", v7, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureControllerWillStartUserInteraction:self];

    gestureCount = self->_gestureCount;
  }

  self->_gestureCount = gestureCount + 1;
  [(MKMapGestureController *)self stopDynamicAnimations];
  v6 = [(MKBasicMapView *)self->_mapView mapView];
  [v6 stopSnappingAnimations];
}

- (void)stopDynamicAnimations
{
  pinchDecelerationAnimation = self->_pinchDecelerationAnimation;
  if (pinchDecelerationAnimation)
  {
    self->_pinchDecelerationAnimation = 0;
    v8 = pinchDecelerationAnimation;

    [(VKDynamicAnimation *)v8 stop];
  }

  panDecelerationAnimationGroup = self->_panDecelerationAnimationGroup;
  if (panDecelerationAnimationGroup)
  {
    self->_panDecelerationAnimationGroup = 0;
    v9 = panDecelerationAnimationGroup;

    [(VKCompoundAnimation *)v9 stop];
  }

  rotationDecelerationAnimation = self->_rotationDecelerationAnimation;
  if (rotationDecelerationAnimation)
  {
    self->_rotationDecelerationAnimation = 0;
    v10 = rotationDecelerationAnimation;

    [(VKDynamicAnimation *)v10 stop];
  }

  tiltDecelerationAnimation = self->_tiltDecelerationAnimation;
  if (tiltDecelerationAnimation)
  {
    self->_tiltDecelerationAnimation = 0;
    v11 = tiltDecelerationAnimation;

    [(VKDynamicAnimation *)v11 stop];
  }

  currentArrowAnimation = self->_currentArrowAnimation;
  if (currentArrowAnimation)
  {
    self->_currentArrowAnimation = 0;
    v12 = currentArrowAnimation;

    [(VKTimedAnimation *)v12 stopAnimation:0];
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  touchGestureRecognizer = self->_touchGestureRecognizer;
  if (touchGestureRecognizer == v7 || touchGestureRecognizer == v8)
  {
    goto LABEL_10;
  }

  twoFingerLongPressGestureRecognizer = self->_twoFingerLongPressGestureRecognizer;
  if (twoFingerLongPressGestureRecognizer == v7 || twoFingerLongPressGestureRecognizer == v8)
  {
    goto LABEL_10;
  }

  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer == v7 && self->_panGestureRecognizer == v8 || pinchGestureRecognizer == v8 && self->_panGestureRecognizer == v7 || (rotationGestureRecognizer = self->_rotationGestureRecognizer, rotationGestureRecognizer == v7) && self->_panGestureRecognizer == v8 || rotationGestureRecognizer == v8 && self->_panGestureRecognizer == v7)
  {
    v19 = [(MKBasicMapView *)self->_mapView mapView];
    v14 = [v19 staysCenteredDuringPinch] ^ 1;

    goto LABEL_11;
  }

  if (rotationGestureRecognizer == v7)
  {
    v4 = [(MKMapGestureController *)self pinchGestureRecognizer];
    if (v4 == v9)
    {
      goto LABEL_42;
    }
  }

  v18 = [(MKMapGestureController *)self pinchGestureRecognizer];
  if (v18 == v7)
  {
    v20 = self->_rotationGestureRecognizer;

    if (rotationGestureRecognizer == v7)
    {
    }

    if (v20 == v9)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (rotationGestureRecognizer == v7)
    {
    }
  }

  v4 = +[MKSystemController sharedInstance];
  if (![(UIPanGestureRecognizer *)v4 supportsExtendedGestures])
  {

    goto LABEL_34;
  }

  oneHandedZoomGestureRecognizer = self->_oneHandedZoomGestureRecognizer;
  if (oneHandedZoomGestureRecognizer == v7)
  {
LABEL_42:

LABEL_10:
    LOBYTE(v14) = 1;
    goto LABEL_11;
  }

  if (oneHandedZoomGestureRecognizer == v9)
  {
    goto LABEL_10;
  }

LABEL_34:
  conditionalPanRotationGestureRecognizer = self->_conditionalPanRotationGestureRecognizer;
  conditionalPanTiltGestureRecognizer = self->_conditionalPanTiltGestureRecognizer;
  if (conditionalPanRotationGestureRecognizer == v7 && conditionalPanTiltGestureRecognizer == v9)
  {
    goto LABEL_10;
  }

  if (conditionalPanRotationGestureRecognizer)
  {
    v24 = conditionalPanTiltGestureRecognizer == v7;
  }

  else
  {
    v24 = 0;
  }

  LOBYTE(v14) = v24;
LABEL_11:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_oneHandedZoomGestureRecognizer == v6 && ([v7 _isPointerTouch] & 1) != 0 || (-[MKMapGestureController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "gestureController:shouldReceiveTouch:", self, v8), v9, (v10 & 1) == 0))
  {
    v11 = 0;
  }

  else if (self->_panGestureRecognizer == v6)
  {
    v12 = [v8 view];
    v13 = [v12 traitCollection];
    v11 = [v13 touchLevel] != 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)tiltGestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(MKBasicMapView *)self->_mapView mapView];
  v6 = [v5 canEnter3DMode];
  v19 = (v6 & 1) != 0 && (-[MKMapGestureController mapView](self, "mapView"), v7 = ;
  return v19;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_conditionalPanTiltGestureRecognizer == v4)
  {
    v7 = [(MKBasicMapView *)self->_mapView mapView];
    v6 = [v7 canEnter3DMode];
  }

  else if (self->_tiltGestureRecognizer == v4)
  {
    v6 = [(MKMapGestureController *)self tiltGestureRecognizerShouldBegin:?];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)handleArrowZoom:(id)a3
{
  v4 = a3;
  [(MKBasicMapView *)self->_mapView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MKBasicMapView *)self->_mapView edgeInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  v20 = v12 - (v15 + v19);
  v66.origin.x = v14;
  v66.origin.y = v16;
  v66.size.width = v18;
  v66.size.height = v20;
  MidX = CGRectGetMidX(v66);
  v67.origin.x = v14;
  v67.origin.y = v16;
  v67.size.width = v18;
  v67.size.height = v20;
  MidY = CGRectGetMidY(v67);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v24 = objc_loadWeakRetained(&self->_delegate);
    [v24 gestureController:self focusPointForPoint:0 gestureKind:{MidX, MidY}];
    MidX = v25;
    MidY = v26;
  }

  if ([v4 state] == 1)
  {
    [(MKMapGestureController *)self beginGesturing];
    [(MKMapGestureController *)self stopDynamicAnimations];
    v27 = [(MKBasicMapView *)self->_mapView mapView];
    [v27 startPinchingWithFocusPoint:{MidX, MidY}];

    v28 = objc_loadWeakRetained(&self->_delegate);
    [v28 gestureControllerWillStartZooming:self animated:1];

    self->_pinchFactorAverageInGesture = 1.0;
    self->_lastScale = 1.0;
    self->_arrowZoomStartTimestamp = CFAbsoluteTimeGetCurrent();
    v29 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:1.0];
    currentArrowAnimation = self->_currentArrowAnimation;
    self->_currentArrowAnimation = v29;

    [(VKTimedAnimation *)self->_currentArrowAnimation setRunsForever:1];
    objc_initWeak(&location, self);
    from[0] = 0;
    from[1] = from;
    from[2] = 0x2020000000;
    from[3] = COERCE_ID(CFAbsoluteTimeGetCurrent());
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __42__MKMapGestureController_handleArrowZoom___block_invoke;
    v60[3] = &unk_1E76C80C8;
    objc_copyWeak(v63, &location);
    v62 = from;
    v61 = v4;
    v63[1] = *&MidX;
    v63[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v60];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __42__MKMapGestureController_handleArrowZoom___block_invoke_2;
    v58[3] = &unk_1E76C7F38;
    objc_copyWeak(v59, &location);
    v59[1] = *&MidX;
    v59[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:v58];
    v31 = [(MKBasicMapView *)self->_mapView mapView];
    [v31 runAnimation:self->_currentArrowAnimation];

    objc_destroyWeak(v59);
    objc_destroyWeak(v63);
    _Block_object_dispose(from, 8);
    p_location = &location;
LABEL_19:
    objc_destroyWeak(p_location);
    goto LABEL_20;
  }

  if ([v4 state] == 3)
  {
    [(VKTimedAnimation *)self->_currentArrowAnimation stopAnimation:1];
    v33 = self->_currentArrowAnimation;
    self->_currentArrowAnimation = 0;

    objc_initWeak(from, self);
    v34 = 0.0;
    if (self->_arrowZoomStartTimestamp - CFAbsoluteTimeGetCurrent() + 0.25 > 0.0)
    {
      v34 = self->_arrowZoomStartTimestamp - CFAbsoluteTimeGetCurrent() + 0.25;
    }

    v35 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v35 doubleForKey:@"ZoomingDefault"];
    v37 = v36;

    arrowZoomSpeed = self->_arrowZoomSpeed;
    v39 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v39 doubleForKey:@"ZoomingDefault"];
    v41 = v40;

    if (arrowZoomSpeed < v41)
    {
      v42 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v42 doubleForKey:@"ZoomingDefault"];
      v37 = v37 + (v43 - self->_arrowZoomSpeed) * 0.699999988;
    }

    v44 = CFAbsoluteTimeGetCurrent() - self->_arrowZoomStartTimestamp;
    v45 = 0.0;
    if (v44 >= 0.125)
    {
      v45 = 1.0;
      if (v44 < 0.5)
      {
        v45 = (v44 + -0.125) / 0.375;
      }
    }

    pinchFactorAverageInGesture = self->_pinchFactorAverageInGesture;
    if (pinchFactorAverageInGesture > 1.0 || fabs(pinchFactorAverageInGesture + -1.0) < 0.000001 && ([v4 lastArrows] & 2) != 0)
    {
      v47 = v37 + 1.0;
    }

    else
    {
      v47 = 1.0 - v37;
    }

    v48 = self->_pinchFactorAverageInGesture;
    v49 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:v34 + 0.25];
    v51 = self->_currentArrowAnimation;
    self->_currentArrowAnimation = v49;

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __42__MKMapGestureController_handleArrowZoom___block_invoke_3;
    v55[3] = &unk_1E76C80F0;
    objc_copyWeak(v56, from);
    v50 = v34 / (v34 + 0.25);
    v57 = v50;
    *&v56[1] = v47 + v45 * (v48 - v47);
    v56[2] = *&MidX;
    v56[3] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v55];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __42__MKMapGestureController_handleArrowZoom___block_invoke_4;
    v53[3] = &unk_1E76C7F38;
    objc_copyWeak(v54, from);
    v54[1] = *&MidX;
    v54[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:v53];
    v52 = [(MKBasicMapView *)self->_mapView mapView];
    [v52 runAnimation:self->_currentArrowAnimation];

    objc_destroyWeak(v54);
    objc_destroyWeak(v56);
    p_location = from;
    goto LABEL_19;
  }

LABEL_20:
}

void __42__MKMapGestureController_handleArrowZoom___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    Current = CFAbsoluteTimeGetCurrent();
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = [*(a1 + 32) arrows];
    v6 = *(v9 + 28);
    if ((v5 & 2) == 0)
    {
      v6 = -v6;
    }

    v7 = (Current - v4) * v6 * 60.0 + 1.0;
    *(v9 + 30) = (*(v9 + 30) + *(v9 + 30)) / 3.0 + v7 / 3.0;
    *(v9 + 31) = CFAbsoluteTimeGetCurrent();
    v8 = [*(v9 + 1) mapView];
    [v8 updatePinchWithFocusPoint:*(a1 + 56) oldFactor:*(a1 + 64) newFactor:{1.0, v7}];

    WeakRetained = v9;
    *(v9 + 32) = v7;
    *(*(*(a1 + 40) + 8) + 24) = Current;
  }
}

void __42__MKMapGestureController_handleArrowZoom___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (a2)
    {
      v5 = objc_loadWeakRetained(WeakRetained + 2);
      [v5 gestureControllerDidStopZooming:? direction:? willDecelerate:?];
    }

    else
    {
      v6 = [WeakRetained[1] mapView];
      [v6 stopPinchingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];

      v7 = objc_loadWeakRetained(v8 + 2);
      [v7 gestureControllerDidStopZooming:? direction:? willDecelerate:?];

      [v8 endGesturing];
    }

    WeakRetained = v8;
  }
}

void __42__MKMapGestureController_handleArrowZoom___block_invoke_3(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 64);
    v13 = WeakRetained;
    if (v5 <= a2)
    {
      v10 = *(a1 + 40);
      v11 = *(WeakRetained + 32);
      v8 = [*(WeakRetained + 1) mapView];
      v12 = fmaxf(a2 - v5, 0.0);
      v9 = v11 * ((v10 + -1.0) * 0.25 * (1.0 - v12 * v12) + 1.0);
    }

    else
    {
      v6 = *(a1 + 40);
      v7 = *(WeakRetained + 32);
      v8 = [*(WeakRetained + 1) mapView];
      v9 = v6 * v7;
    }

    [v8 updatePinchWithFocusPoint:*(a1 + 48) oldFactor:*(a1 + 56) newFactor:{v13[32], v9}];

    WeakRetained = v13;
    v13[32] = v9;
  }
}

void __42__MKMapGestureController_handleArrowZoom___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [WeakRetained[1] mapView];
    [v2 stopPinchingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];

    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 gestureControllerDidStopZoomingDecelerating:? direction:?];

    [WeakRetained endGesturing];
  }
}

- (void)handleArrowRotate:(id)a3
{
  v4 = a3;
  [(MKBasicMapView *)self->_mapView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MKBasicMapView *)self->_mapView edgeInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  v20 = v12 - (v15 + v19);
  v59.origin.x = v14;
  v59.origin.y = v16;
  v59.size.width = v18;
  v59.size.height = v20;
  MidX = CGRectGetMidX(v59);
  v60.origin.x = v14;
  v60.origin.y = v16;
  v60.size.width = v18;
  v60.size.height = v20;
  MidY = CGRectGetMidY(v60);
  if ([v4 state] == 1)
  {
    if (([v4 modifierFlags] & 0x100000) == 0)
    {
      [(MKMapGestureController *)self beginGesturing];
      [(VKTimedAnimation *)self->_currentArrowAnimation stopAnimation:0];
      currentArrowAnimation = self->_currentArrowAnimation;
      self->_currentArrowAnimation = 0;

      rotationFilter = self->_rotationFilter;
      if (rotationFilter)
      {
        [(MKRotationFilter *)rotationFilter startRotatingWithFocusPoint:0 withSnapping:MidX, MidY];
      }

      else
      {
        v34 = [(MKBasicMapView *)self->_mapView mapView];
        [v34 startRotatingWithFocusPoint:{MidX, MidY}];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained gestureControllerWillStartRotating:self];

      v36 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:1.0];
      v37 = self->_currentArrowAnimation;
      self->_currentArrowAnimation = v36;

      [(VKTimedAnimation *)self->_currentArrowAnimation setRunsForever:1];
      objc_initWeak(&location, self);
      self->_lastRotation = 0.0;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __44__MKMapGestureController_handleArrowRotate___block_invoke_3;
      v51[3] = &unk_1E76C8078;
      objc_copyWeak(v53, &location);
      v52 = v4;
      v53[1] = *&MidX;
      v53[2] = *&MidY;
      [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v51];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __44__MKMapGestureController_handleArrowRotate___block_invoke_4;
      v49[3] = &unk_1E76C7F38;
      objc_copyWeak(v50, &location);
      v50[1] = *&MidX;
      v50[2] = *&MidY;
      [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:v49];
      v38 = [(MKBasicMapView *)self->_mapView mapView];
      [v38 runAnimation:self->_currentArrowAnimation];

      objc_destroyWeak(v50);
      v39 = v53;
      goto LABEL_18;
    }

    [(MKMapGestureController *)self beginGesturing];
    [(MKMapGestureController *)self stopDynamicAnimations];
    v31 = ([v4 arrows] & 8) == 0;
    if (([v4 modifierFlags] & 0x20000) != 0)
    {
      v32 = 12.0;
    }

    else
    {
      v32 = 3.0;
    }

    v33 = self->_rotationFilter;
    if (v33)
    {
      [(MKRotationFilter *)v33 startRotatingWithFocusPoint:0 withSnapping:MidX, MidY];
    }

    else
    {
      v40 = [(MKBasicMapView *)self->_mapView mapView];
      [v40 startRotatingWithFocusPoint:{MidX, MidY}];
    }

    v41 = objc_loadWeakRetained(&self->_delegate);
    [v41 gestureControllerWillStartRotating:self];

    self->_isFullRotatingFromArrows = 1;
    objc_initWeak(&location, self);
    v42 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:v32];
    v43 = qword_1A30F7110[v31];
    v44 = self->_currentArrowAnimation;
    self->_currentArrowAnimation = v42;

    v28 = v56;
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __44__MKMapGestureController_handleArrowRotate___block_invoke;
    v56[3] = &unk_1E76C8050;
    objc_copyWeak(v57, &location);
    v57[1] = v43;
    v57[2] = *&MidX;
    v57[3] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v56];
    v29 = v54;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __44__MKMapGestureController_handleArrowRotate___block_invoke_2;
    v54[3] = &unk_1E76C7F38;
    objc_copyWeak(v55, &location);
    v55[1] = *&MidX;
    v55[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:v54];
    v30 = [(MKBasicMapView *)self->_mapView mapView];
    [v30 runAnimation:self->_currentArrowAnimation];
LABEL_17:

    objc_destroyWeak(v29 + 4);
    v39 = (v28 + 4);
LABEL_18:
    objc_destroyWeak(v39);
    objc_destroyWeak(&location);
    goto LABEL_19;
  }

  if ([v4 state] == 3 && !self->_isFullRotatingFromArrows)
  {
    [(VKTimedAnimation *)self->_currentArrowAnimation stopAnimation:1];
    v25 = self->_currentArrowAnimation;
    self->_currentArrowAnimation = 0;

    objc_initWeak(&location, self);
    v26 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:0.25];
    v27 = self->_currentArrowAnimation;
    self->_currentArrowAnimation = v26;

    v28 = v47;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __44__MKMapGestureController_handleArrowRotate___block_invoke_5;
    v47[3] = &unk_1E76C80A0;
    objc_copyWeak(v48, &location);
    v48[1] = *&MidX;
    v48[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v47];
    v29 = v45;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __44__MKMapGestureController_handleArrowRotate___block_invoke_6;
    v45[3] = &unk_1E76C7F38;
    objc_copyWeak(v46, &location);
    v46[1] = *&MidX;
    v46[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:v45];
    v30 = [(MKBasicMapView *)self->_mapView mapView];
    [v30 runAnimation:self->_currentArrowAnimation];
    goto LABEL_17;
  }

LABEL_19:
}

void __44__MKMapGestureController_handleArrowRotate___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(a1 + 40) * a2;
    v5 = *(WeakRetained + 5);
    if (v5)
    {
      [v5 updateRotationWithFocusPoint:*(a1 + 48) newValue:{*(a1 + 56), v4}];
    }

    else
    {
      v6 = [*(WeakRetained + 1) mapView];
      [v6 updateRotationWithFocusPoint:*(a1 + 48) newValue:{*(a1 + 56), v4}];
    }
  }
}

void __44__MKMapGestureController_handleArrowRotate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 392) = 0;
    v2 = *(WeakRetained + 5);
    if (v2)
    {
      [v2 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
    }

    else
    {
      v3 = [*(WeakRetained + 1) mapView];
      [v3 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
    }

    v4 = objc_loadWeakRetained(WeakRetained + 2);
    [v4 gestureControllerDidStopRotatingDecelerating:WeakRetained];

    [WeakRetained endGesturing];
  }
}

void __44__MKMapGestureController_handleArrowRotate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) arrows];
    v3 = [*(a1 + 32) modifierFlags];
    v4 = dbl_1A30F7120[(v2 & 0x10) == 0];
    if ((v3 & 0x20000) != 0)
    {
      v4 = v4 * 0.25;
    }

    v5 = v4 + *(WeakRetained + 51);
    *(WeakRetained + 50) = v4;
    *(WeakRetained + 51) = v5;
    v6 = *(WeakRetained + 5);
    if (v6)
    {
      [v6 updateRotationWithFocusPoint:*(a1 + 48) newValue:*(a1 + 56)];
    }

    else
    {
      v7 = [*(WeakRetained + 1) mapView];
      [v7 updateRotationWithFocusPoint:*(a1 + 48) newValue:{*(a1 + 56), *(WeakRetained + 51)}];
    }
  }
}

void __44__MKMapGestureController_handleArrowRotate___block_invoke_4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (a2)
    {
      v5 = objc_loadWeakRetained(WeakRetained + 2);
      [v5 gestureControllerDidStopRotating:v9 willDecelerate:1];

      WeakRetained = v9;
    }

    else
    {
      v6 = WeakRetained[5];
      if (v6)
      {
        [v6 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
      }

      else
      {
        v7 = [v9[1] mapView];
        [v7 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
      }

      v8 = objc_loadWeakRetained(v9 + 2);
      [v8 gestureControllerDidStopRotating:v9 willDecelerate:0];

      [v9 endGesturing];
      WeakRetained = v9;
    }
  }
}

void __44__MKMapGestureController_handleArrowRotate___block_invoke_5(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 51) + *(WeakRetained + 50) * (1.0 - (a2 * a2));
    v7 = WeakRetained[5];
    v9 = v5;
    if (v7)
    {
      [v7 updateRotationWithFocusPoint:*(a1 + 40) newValue:{*(a1 + 48), v6}];
    }

    else
    {
      v8 = [v5[1] mapView];
      [v8 updateRotationWithFocusPoint:*(a1 + 40) newValue:{*(a1 + 48), v6}];
    }

    v5 = v9;
    *(v9 + 51) = v6;
  }
}

void __44__MKMapGestureController_handleArrowRotate___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 5);
    if (v2)
    {
      [v2 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
    }

    else
    {
      v3 = [*(WeakRetained + 1) mapView];
      [v3 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
    }

    v4 = objc_loadWeakRetained(WeakRetained + 2);
    [v4 gestureControllerDidStopRotatingDecelerating:WeakRetained];

    [WeakRetained endGesturing];
  }
}

- (void)handleArrowPan:(id)a3
{
  v4 = a3;
  [(MKBasicMapView *)self->_mapView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(MKBasicMapView *)self->_mapView edgeInsets];
  v14 = v6 + v13;
  v16 = v8 + v15;
  v18 = v10 - (v13 + v17);
  v20 = v12 - (v15 + v19);
  v51.origin.x = v14;
  v51.origin.y = v16;
  v51.size.width = v18;
  v51.size.height = v20;
  MidX = CGRectGetMidX(v51);
  v52.origin.x = v14;
  v52.origin.y = v16;
  v52.size.width = v18;
  v52.size.height = v20;
  MidY = CGRectGetMidY(v52);
  if ([v4 state] == 1)
  {
    [(MKMapGestureController *)self beginGesturing];
    [(MKMapGestureController *)self stopDynamicAnimations];
    v23 = [(MKBasicMapView *)self->_mapView mapView];
    [v23 startPanningAtPoint:1 panAtStartPoint:{MidX, MidY}];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureControllerWillStartPanning:self];

    v25 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:1.0];
    currentArrowAnimation = self->_currentArrowAnimation;
    self->_currentArrowAnimation = v25;

    [(VKTimedAnimation *)self->_currentArrowAnimation setRunsForever:1];
    objc_initWeak(&location, self);
    Current = CFAbsoluteTimeGetCurrent();
    from[0] = 0;
    from[1] = from;
    from[2] = 0x4012000000;
    from[3] = __Block_byref_object_copy__11222;
    from[4] = __Block_byref_object_dispose__11223;
    from[5] = &unk_1A31250BE;
    v49 = *MEMORY[0x1E695EFF8];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __41__MKMapGestureController_handleArrowPan___block_invoke;
    v44[3] = &unk_1E76C8000;
    objc_copyWeak(v47, &location);
    v47[1] = *&Current;
    v45 = v4;
    v46 = from;
    [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v44];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __41__MKMapGestureController_handleArrowPan___block_invoke_2;
    v42[3] = &unk_1E76C7F38;
    objc_copyWeak(v43, &location);
    v43[1] = *&MidX;
    v43[2] = *&MidY;
    [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:v42];
    v28 = [(MKBasicMapView *)self->_mapView mapView];
    [v28 runAnimation:self->_currentArrowAnimation];

    objc_destroyWeak(v43);
    objc_destroyWeak(v47);
    _Block_object_dispose(from, 8);
    p_location = &location;
LABEL_6:
    objc_destroyWeak(p_location);
    goto LABEL_7;
  }

  if ([v4 state] == 3)
  {
    v30 = self->_currentArrowAnimation;
    if (v30)
    {
      [(VKTimedAnimation *)v30 stopAnimation:1];
      v31 = self->_currentArrowAnimation;
      self->_currentArrowAnimation = 0;

      objc_initWeak(from, self);
      v32 = [objc_alloc(MEMORY[0x1E69DF4A0]) initWithDuration:0.25];
      v33 = self->_currentArrowAnimation;
      self->_currentArrowAnimation = v32;

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __41__MKMapGestureController_handleArrowPan___block_invoke_3;
      v40[3] = &unk_1E76C8028;
      objc_copyWeak(&v41, from);
      [(VKTimedAnimation *)self->_currentArrowAnimation setStepHandler:v40];
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __41__MKMapGestureController_handleArrowPan___block_invoke_4;
      v38 = &unk_1E76C7F38;
      objc_copyWeak(v39, from);
      v39[1] = *&MidX;
      v39[2] = *&MidY;
      [(VKTimedAnimation *)self->_currentArrowAnimation setCompletionHandler:&v35];
      v34 = [(MKBasicMapView *)self->_mapView mapView:v35];
      [v34 runAnimation:self->_currentArrowAnimation];

      objc_destroyWeak(v39);
      objc_destroyWeak(&v41);
      p_location = from;
      goto LABEL_6;
    }
  }

LABEL_7:
}

void __41__MKMapGestureController_handleArrowPan___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v30 = WeakRetained;
    [WeakRetained[1] bounds];
    v4 = v3;
    [v30[1] bounds];
    v6 = v5;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8 = (v4 + v6) * 0.5 * 0.00960614812;
    v10 = v9 - *(a1 + 56);
    v11 = v8 * 1.5;
    if (v10 <= 1.0)
    {
      v11 = (v4 + v6) * 0.5 * 0.00960614812;
    }

    v12 = v8 * 3.0;
    if (v10 > 4.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = vdupq_n_s64([*(a1 + 32) arrows]);
    __asm { FMOV            V2.2D, #1.0 }

    v20 = vbslq_s8(vceqzq_s64(vandq_s8(v14, xmmword_1A30F7130)), v28, vaddq_f64(v28, _Q2));
    __asm { FMOV            V2.2D, #-1.0 }

    v22 = vbslq_s8(vceqzq_s64(vandq_s8(v14, xmmword_1A30F7140)), v20, vaddq_f64(v20, _Q2));
    v23 = vabsq_f64(v22);
    v24 = vdupq_laneq_s64(v23, 1);
    v25 = vaddq_f64(v23, v24);
    v24.f64[0] = 1.5;
    v26 = vmulq_n_f64(vbslq_s8(vdupq_lane_s64(vcgtq_f64(v25, v24).i64[0], 0), vdivq_f64(v22, vdupq_n_s64(0x3FF6A09E60000000uLL)), v22), v29);
    *(*(*(a1 + 40) + 8) + 48) = v26.f64[0] + *(*(*(a1 + 40) + 8) + 48);
    *(*(*(a1 + 40) + 8) + 56) = v26.f64[1] + *(*(*(a1 + 40) + 8) + 56);
    *(v30 + 47) = v26;
    *(v30 + 45) = *(*(*(a1 + 40) + 8) + 48);
    v27 = [v30[1] mapView];
    [v27 updatePanWithTranslation:{*(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];

    WeakRetained = v30;
  }
}

void __41__MKMapGestureController_handleArrowPan___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (a2)
    {
      v5 = objc_loadWeakRetained(WeakRetained + 2);
      [v5 gestureControllerDidStopPanning:v8 willDecelerate:1];
    }

    else
    {
      v6 = [WeakRetained[1] mapView];
      [v6 stopPanningAtPoint:{*(a1 + 40), *(a1 + 48)}];

      v7 = objc_loadWeakRetained(v8 + 2);
      [v7 gestureControllerDidStopPanning:v8 willDecelerate:0];

      [v8 endGesturing];
    }

    WeakRetained = v8;
  }
}

void __41__MKMapGestureController_handleArrowPan___block_invoke_3(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 45);
    v5 = *(WeakRetained + 46);
    v6 = *(WeakRetained + 47);
    v7 = *(WeakRetained + 48);
    v12 = WeakRetained;
    v8 = [*(WeakRetained + 1) mapView];
    v9 = (1.0 - (a2 * a2));
    v10 = v4 + v6 * v9;
    v11 = v5 + v7 * v9;
    [v8 updatePanWithTranslation:{v10, v11}];

    WeakRetained = v12;
    *(v12 + 45) = v10;
    *(v12 + 46) = v11;
  }
}

void __41__MKMapGestureController_handleArrowPan___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [WeakRetained[1] mapView];
    [v2 stopPanningAtPoint:{*(a1 + 40), *(a1 + 48)}];

    v3 = objc_loadWeakRetained(WeakRetained + 2);
    [v3 gestureControllerDidStopPanningDecelerating:WeakRetained];

    [WeakRetained endGesturing];
  }
}

- (void)cancelZoomInOrOut
{
  activeArrowGestureRecognizer = self->_activeArrowGestureRecognizer;
  arrowZoomGestureRecognizer = self->_arrowZoomGestureRecognizer;
  if (activeArrowGestureRecognizer == arrowZoomGestureRecognizer)
  {
    [(_MKDirectionalArrowRecognizer *)arrowZoomGestureRecognizer handleArrowMask:0];
    v5 = self->_activeArrowGestureRecognizer;
    self->_activeArrowGestureRecognizer = 0;
  }
}

- (void)zoomOut
{
  p_activeArrowGestureRecognizer = &self->_activeArrowGestureRecognizer;
  if (!self->_activeArrowGestureRecognizer && [(MKMapGestureController *)self isZoomEnabled])
  {
    objc_storeStrong(p_activeArrowGestureRecognizer, self->_arrowZoomGestureRecognizer);
  }

  arrowZoomGestureRecognizer = self->_arrowZoomGestureRecognizer;
  if (self->_activeArrowGestureRecognizer == arrowZoomGestureRecognizer)
  {
    if ([(_MKDirectionalArrowRecognizer *)arrowZoomGestureRecognizer arrows]!= 4)
    {
      [(_MKDirectionalArrowRecognizer *)self->_arrowZoomGestureRecognizer handleArrowMask:4];
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_cancelZoomInOrOut object:0];

    [(MKMapGestureController *)self performSelector:sel_cancelZoomInOrOut withObject:0 afterDelay:0.3];
  }
}

- (void)zoomIn
{
  p_activeArrowGestureRecognizer = &self->_activeArrowGestureRecognizer;
  if (!self->_activeArrowGestureRecognizer && [(MKMapGestureController *)self isZoomEnabled])
  {
    objc_storeStrong(p_activeArrowGestureRecognizer, self->_arrowZoomGestureRecognizer);
  }

  arrowZoomGestureRecognizer = self->_arrowZoomGestureRecognizer;
  if (self->_activeArrowGestureRecognizer == arrowZoomGestureRecognizer)
  {
    if ([(_MKDirectionalArrowRecognizer *)arrowZoomGestureRecognizer arrows]!= 2)
    {
      [(_MKDirectionalArrowRecognizer *)self->_arrowZoomGestureRecognizer handleArrowMask:2];
    }

    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_cancelZoomInOrOut object:0];

    [(MKMapGestureController *)self performSelector:sel_cancelZoomInOrOut withObject:0 afterDelay:0.3];
  }
}

- (BOOL)keyUp:(id)a3
{
  v4 = a3;
  activeArrowGestureRecognizer = self->_activeArrowGestureRecognizer;
  if (activeArrowGestureRecognizer)
  {
    [(_MKDirectionalArrowRecognizer *)self->_activeArrowGestureRecognizer keyUp:v4];
    if ([(_MKDirectionalArrowRecognizer *)self->_activeArrowGestureRecognizer state]== 3 || [(_MKDirectionalArrowRecognizer *)self->_activeArrowGestureRecognizer state]== 5 || [(_MKDirectionalArrowRecognizer *)self->_activeArrowGestureRecognizer state]== 4)
    {
      v6 = self->_activeArrowGestureRecognizer;
      self->_activeArrowGestureRecognizer = 0;
    }
  }

  return activeArrowGestureRecognizer != 0;
}

- (BOOL)keyDown:(id)a3
{
  v4 = a3;
  activeArrowGestureRecognizer = self->_activeArrowGestureRecognizer;
  if (!activeArrowGestureRecognizer)
  {
    v6 = [v4 key];
    if ((~[v6 modifierFlags] & 0x120000) == 0 && (objc_msgSend(v6, "modifierFlags") & 0xFFFFFFFFFFEDFFFFLL) == 0)
    {

      goto LABEL_30;
    }

    if (([v6 modifierFlags] & 0x80000) != 0)
    {
      v7 = [v6 keyCode] - 45;
      if (v7 > 0x25)
      {
        goto LABEL_17;
      }

      if (((1 << v7) & 0x3000000003) == 0)
      {
        if (((1 << v7) & 0xC00000000) == 0 || ![(MKMapGestureController *)self isRotationEnabled])
        {
          goto LABEL_17;
        }

        v8 = 200;
LABEL_16:
        v9 = *(&self->super.isa + v8);
        if (v9)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      if (![(MKMapGestureController *)self isZoomEnabled])
      {
LABEL_17:
        if ([(MKMapGestureController *)self isScrollEnabled])
        {
          v9 = self->_arrowPanGestureRecognizer;
        }

        else
        {
          v9 = 0;
        }

LABEL_20:
        if ([(UIPanGestureRecognizer *)self->_panGestureRecognizer state]== 1 || [(UIPanGestureRecognizer *)self->_panGestureRecognizer state]== 2 || [(UIPinchGestureRecognizer *)self->_pinchGestureRecognizer state]== 1 || [(UIPinchGestureRecognizer *)self->_pinchGestureRecognizer state]== 2 || [(UIRotationGestureRecognizer *)self->_rotationGestureRecognizer state]== 1 || [(UIRotationGestureRecognizer *)self->_rotationGestureRecognizer state]== 2)
        {

          v9 = 0;
        }

        v10 = self->_activeArrowGestureRecognizer;
        self->_activeArrowGestureRecognizer = v9;

        activeArrowGestureRecognizer = self->_activeArrowGestureRecognizer;
        if (activeArrowGestureRecognizer)
        {
          goto LABEL_28;
        }

LABEL_30:
        v11 = 0;
        goto LABEL_29;
      }
    }

    else if (([v6 keyCode] - 45) > 1 || !-[MKMapGestureController isZoomEnabled](self, "isZoomEnabled"))
    {
      goto LABEL_17;
    }

    v8 = 192;
    goto LABEL_16;
  }

LABEL_28:
  [(_MKDirectionalArrowRecognizer *)activeArrowGestureRecognizer keyDown:v4];
  v11 = 1;
LABEL_29:

  return v11;
}

- (void)_handleInterrupt:(id)a3
{
  v5 = a3;
  if ([v5 state] == 3)
  {
    [(MKMapGestureController *)self stopDynamicAnimations];
    v4 = [(MKBasicMapView *)self->_mapView mapView];
    [v4 stopSnappingAnimations];
  }
}

- (void)_handleZoomPan:(id)a3
{
  v52 = a3;
  if ([(UIPanGestureRecognizer *)v52 state]== 1)
  {
    self->_lastScale = 1.0;
    self->_lastZoomPanTranslation = 0.0;
    if (self->_scaleDragGestureRecognizer == v52)
    {
      [(MKBasicMapView *)self->_mapView bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(MKBasicMapView *)self->_mapView edgeInsets];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = objc_loadWeakRetained(&self->_delegate);
        [v26 gestureControllerSignificantViewFrame:self];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
      }

      else
      {
        v28 = v9 + v19;
        v30 = v11 + v17;
        v32 = v13 - (v19 + v23);
        v34 = v15 - (v17 + v21);
      }

      v54.origin.x = v28;
      v54.origin.y = v30;
      v54.size.width = v32;
      v54.size.height = v34;
      MidX = CGRectGetMidX(v54);
      v55.origin.x = v28;
      v55.origin.y = v30;
      v55.size.width = v32;
      v55.size.height = v34;
      MidY = CGRectGetMidY(v55);
    }

    else
    {
      [(UIPanGestureRecognizer *)v52 locationInView:self->_mapView];
      MidX = v4;
      MidY = v6;
    }

    self->_panZoomStartPoint.x = MidX;
    self->_panZoomStartPoint.y = MidY;
  }

  else
  {
    MidX = self->_panZoomStartPoint.x;
    MidY = self->_panZoomStartPoint.y;
  }

  v35 = objc_loadWeakRetained(&self->_delegate);

  if (v35)
  {
    v36 = objc_loadWeakRetained(&self->_delegate);
    [v36 gestureController:self focusPointForPoint:1 gestureKind:{MidX, MidY}];
    MidX = v37;
    MidY = v38;
  }

  if ([(MKBasicMapView *)self->_mapView isPointValidForGesturing:MidX, MidY])
  {
    v39 = [(UIPanGestureRecognizer *)v52 view];
    [(UIPanGestureRecognizer *)v52 translationInView:v39];
    v41 = v40;
    v43 = v42;

    v44 = v52;
    if (self->_scaleDragGestureRecognizer == v52)
    {
      v45 = v41;
    }

    else
    {
      v45 = v43;
    }

    conditionalPanZoomGestureRecognizer = self->_conditionalPanZoomGestureRecognizer;
    if (conditionalPanZoomGestureRecognizer == v52)
    {
      v45 = -v45;
    }

    v47 = self->_lastScale * ((v45 - self->_lastZoomPanTranslation) / 240.0 + 1.0);
    self->_lastZoomPanTranslation = v45;
  }

  else
  {
    conditionalPanZoomGestureRecognizer = self->_conditionalPanZoomGestureRecognizer;
    v47 = 1.0;
    v44 = v52;
  }

  if (conditionalPanZoomGestureRecognizer == v44)
  {
    v50 = [(_MKConditionalPanZoomGestureRecognizer *)v44 view];
    [(UIPanGestureRecognizer *)v52 velocityInView:v50];
    v49 = -v51;

    v48 = self->_zoomConfiguration;
    v44 = v52;
  }

  else
  {
    v48 = 0;
    v49 = 0.0;
  }

  [(MKMapGestureController *)self _updateZoomGestureForState:[(_MKConditionalPanZoomGestureRecognizer *)v44 state] focusPoint:4 scale:v48 velocity:MidX gestureType:MidY configuration:v47, v49];
}

- (void)_handleRotationPan:(id)a3
{
  v19 = a3;
  if ([v19 state] == 1)
  {
    [v19 locationInView:self->_mapView];
    v5 = v4;
    v7 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 gestureController:self focusPointForPoint:2 gestureKind:{v5, v7}];
      v5 = v11;
      v7 = v12;
    }

    self->_panRotateStartPoint.x = v5;
    self->_panRotateStartPoint.y = v7;
  }

  v13 = [(MKMapGestureController *)self mapView];
  [v19 translationInView:v13];
  v15 = v14;

  v16 = [(MKMapGestureController *)self mapView];
  [v19 velocityInView:v16];
  v18 = v17;

  -[MKMapGestureController _updateRotationGestureForState:focusPoint:rotation:velocity:](self, "_updateRotationGestureForState:focusPoint:rotation:velocity:", [v19 state], self->_panRotateStartPoint.x, self->_panRotateStartPoint.y, v15 / 200.0, v18 / 200.0);
}

- (void)handleZoomArrowMask:(int64_t)a3 speed:(double)a4
{
  if ([(MKMapGestureController *)self isZoomEnabled])
  {
    if (a3)
    {
      if (a4 <= 0.0)
      {
        v9 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v9 doubleForKey:@"ZoomingDefault"];
        self->_arrowZoomSpeed = v7;
      }

      else
      {
        self->_arrowZoomSpeed = a4;
      }
    }

    [(_MKDirectionalArrowRecognizer *)self->_arrowZoomGestureRecognizer handleArrowMask:a3];
    if ([(_MKDirectionalArrowRecognizer *)self->_arrowZoomGestureRecognizer state]== 3 || [(_MKDirectionalArrowRecognizer *)self->_arrowZoomGestureRecognizer state]== 5 || [(_MKDirectionalArrowRecognizer *)self->_arrowZoomGestureRecognizer state]== 4)
    {
      v10 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v10 doubleForKey:@"ZoomingDefault"];
      self->_arrowZoomSpeed = v8;
    }
  }
}

- (double)variableDelayTapRecognizer:(id)a3 shouldWaitForNextTapForDuration:(double)a4 afterTouch:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 gestureController:self shouldWaitForNextTapForDuration:v7 afterTouch:a4];
      a4 = v13;
    }
  }

  return a4;
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = MKGetGesturesLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HandlePan", &unk_1A30FEA0E, buf, 2u);
  }

  [v4 locationInView:self->_mapView];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 gestureController:self focusPointForPoint:0 gestureKind:{v7, v9}];
    v7 = v12;
    v9 = v13;
  }

  [(MKMapGestureController *)self _snapPointToDevicePixels:v7, v9];
  v15 = v14;
  v17 = v16;
  [(VKCompoundAnimation *)self->_panDecelerationAnimationGroup stop];
  panDecelerationAnimationGroup = self->_panDecelerationAnimationGroup;
  self->_panDecelerationAnimationGroup = 0;

  *buf = 0;
  v54 = buf;
  v55 = 0x4012000000;
  v56 = __Block_byref_object_copy__11222;
  v57 = __Block_byref_object_dispose__11223;
  v58 = &unk_1A31250BE;
  v59 = 0;
  v60 = 0;
  [v4 translationInView:self->_mapView];
  [(MKMapGestureController *)self _snapPointToDevicePixels:?];
  v59 = v19;
  v60 = v20;
  v21 = [v4 state];
  if (v21 <= 2)
  {
    if (v21 == 1)
    {
      [(MKMapGestureController *)self beginGesturing];
      v23 = [(MKBasicMapView *)self->_mapView mapView];
      [v23 startPanningAtPoint:{v15, v17}];

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 gestureControllerWillStartPanning:self];
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_18;
      }

      v22 = [(MKBasicMapView *)self->_mapView mapView];
      [v22 updatePanWithTranslation:{*(v54 + 6), *(v54 + 7)}];
    }

    goto LABEL_13;
  }

  if (v21 == 3)
  {
    [v4 velocityInView:self->_mapView];
    if (self->_panWithMomentum && (fabs(v24) > 200.0 || fabs(v25) > 200.0))
    {
      v29 = [(MKBasicMapView *)self->_mapView mapView];
      [v29 isPitched];

      v22 = objc_alloc_init(MEMORY[0x1E69DF420]);
      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = __36__MKMapGestureController_handlePan___block_invoke;
      v51 = &unk_1E76CA6E8;
      v52 = buf;
      v30 = dynamicValueAnimation();
      [v22 setDynamicStepHandler:v30];

      v31 = objc_alloc_init(MEMORY[0x1E69DF420]);
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __36__MKMapGestureController_handlePan___block_invoke_2;
      v46 = &unk_1E76CA6E8;
      v47 = buf;
      v32 = dynamicValueAnimation();
      [v31 setDynamicStepHandler:v32];

      objc_initWeak(v42, self);
      v33 = [objc_alloc(MEMORY[0x1E69DF400]) initWithAnimations:{v22, v31, 0}];
      v34 = self->_panDecelerationAnimationGroup;
      self->_panDecelerationAnimationGroup = v33;

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __36__MKMapGestureController_handlePan___block_invoke_3;
      v39[3] = &unk_1E76CA710;
      objc_copyWeak(&v41, v42);
      v40 = v4;
      [(VKCompoundAnimation *)self->_panDecelerationAnimationGroup setCompletionHandler:v39];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __36__MKMapGestureController_handlePan___block_invoke_4;
      v37[3] = &unk_1E76CA738;
      objc_copyWeak(&v38, v42);
      v37[4] = buf;
      [(VKCompoundAnimation *)self->_panDecelerationAnimationGroup setGroupStepHandler:v37];
      v35 = objc_loadWeakRetained(&self->_delegate);
      [v35 gestureControllerDidStopPanning:self willDecelerate:1];

      v36 = [(MKBasicMapView *)self->_mapView mapView];
      [v36 runAnimation:self->_panDecelerationAnimationGroup];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&v41);
      objc_destroyWeak(v42);

LABEL_13:
      goto LABEL_18;
    }
  }

  else if (v21 != 4)
  {
    goto LABEL_18;
  }

  v26 = [(MKBasicMapView *)self->_mapView mapView];
  [v26 stopPanningAtPoint:{v15, v17}];

  v27 = objc_loadWeakRetained(&self->_delegate);
  [v27 gestureControllerDidStopPanning:self willDecelerate:0];

  [(MKMapGestureController *)self endGesturing];
LABEL_18:
  v28 = MKGetGesturesLog();
  if (os_signpost_enabled(v28))
  {
    LOWORD(v42[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v28, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HandlePan", &unk_1A30FEA0E, v42, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void __36__MKMapGestureController_handlePan___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained mapView];
  v3 = [v2 mapView];
  v4 = *(a1 + 32);
  v5 = [WeakRetained mapView];
  [v4 locationInView:v5];
  [WeakRetained _snapPointToDevicePixels:?];
  [v3 stopPanningAtPoint:?];

  v6 = [WeakRetained delegate];
  [v6 gestureControllerDidStopPanningDecelerating:WeakRetained];

  [WeakRetained endGesturing];
}

void __36__MKMapGestureController_handlePan___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained mapView];
  v3 = [v2 mapView];
  [v3 updatePanWithTranslation:{*(*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56)}];
}

- (CGPoint)_snapPointToDevicePixels:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(MKBasicMapView *)self->_mapView mapView];
  [v6 contentsScale];
  v8 = v7;

  v9 = [(MKBasicMapView *)self->_mapView window];
  v10 = [v9 screen];
  [v10 scale];
  v12 = vabdd_f64(v8, v11);

  if (v12 >= 0.000001)
  {
    x = round(x * v8) / v8;
    y = round(y * v8) / v8;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_updateZoomGestureForState:(int64_t)a3 focusPoint:(CGPoint)a4 scale:(double)a5 velocity:(double)a6 gestureType:(int64_t)a7 configuration:(id)a8
{
  y = a4.y;
  x = a4.x;
  v63 = *MEMORY[0x1E69E9840];
  v15 = a8;
  if (a3 == 1)
  {
    self->_lastScale = 1.0;
    [(MKMapGestureController *)self beginGesturing];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureControllerWillStartZooming:self animated:0];

    v22 = [(MKBasicMapView *)self->_mapView mapView];
    [v22 startPinchingWithFocusPoint:{x, y}];
  }

  else if (a3 == 4)
  {
    v16 = [(MKBasicMapView *)self->_mapView mapView];
    [v16 stopPinchingWithFocusPoint:{x, y}];

    v17 = objc_loadWeakRetained(&self->_delegate);
    v18 = v17;
    lastScale = self->_lastScale;
    if (lastScale > 1.0)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2 * (lastScale < 1.0);
    }

    [v17 gestureControllerDidStopZooming:self direction:v20 type:a7 willDecelerate:0];

    [(MKMapGestureController *)self endGesturing];
    goto LABEL_37;
  }

  objc_initWeak(&location, self);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke;
  v56[3] = &unk_1E76C7F88;
  objc_copyWeak(v57, &location);
  v57[1] = *&x;
  v57[2] = *&y;
  v23 = MEMORY[0x1A58E9F30](v56);
  if ([(MKBasicMapView *)self->_mapView isPointValidForGesturing:x, y])
  {
    v23[2](v23, self->_lastScale, a5);
    v24 = MKGetGesturesLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = self->_lastScale;
      *buf = 134218240;
      v60 = v25;
      v61 = 2048;
      v62 = a5;
      _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_DEBUG, "_updateZoomGestureForState oldFactor : %f newFactor : %f", buf, 0x16u);
    }
  }

  if (a3 == 3)
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke_67;
    v55[3] = &unk_1E76C7FB0;
    v55[4] = self;
    *&v55[5] = x;
    *&v55[6] = y;
    v55[7] = a7;
    v26 = MEMORY[0x1A58E9F30](v55);
    v27 = +[MKSystemController sharedInstance];
    v28 = [v27 supportsExtendedGestures];

    if (v28)
    {
      [v15 decelerationThreshold];
      v30 = -a6;
      if (a6 >= 0.0)
      {
        v30 = a6;
      }

      if (v30 <= v29)
      {
        v43 = [(MKBasicMapView *)self->_mapView mapView];
        [v43 stopPinchingWithFocusPoint:{x, y}];

        v44 = objc_loadWeakRetained(&self->_delegate);
        v45 = v44;
        v46 = self->_lastScale;
        if (v46 > 1.0)
        {
          v47 = 1;
        }

        else
        {
          v47 = 2 * (v46 < 1.0);
        }

        [v44 gestureControllerDidStopZooming:self direction:v47 type:a7 willDecelerate:0];

        [(MKMapGestureController *)self endGesturing];
      }

      else
      {
        [v15 maximumZoomOutVelocity];
        v32 = v31;
        [v15 maximumZoomInVelocity];
        if (v32 <= a6)
        {
          v34 = a6;
        }

        else
        {
          v34 = v32;
        }

        if (v34 <= v33)
        {
          v35 = v34;
        }

        else
        {
          v35 = v33;
        }

        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke_2;
        v53[3] = &unk_1E76C7FD8;
        objc_copyWeak(v54, &location);
        v54[1] = *&x;
        v54[2] = *&y;
        v54[3] = a7;
        v36 = MEMORY[0x1A58E9F30](v53);
        [(VKDynamicAnimation *)self->_pinchDecelerationAnimation stop];
        v37 = objc_loadWeakRetained(&self->_delegate);
        v38 = v37;
        v39 = self->_lastScale;
        if (v39 > 1.0)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2 * (v39 < 1.0);
        }

        [v37 gestureControllerDidStopZooming:self direction:v40 type:a7 willDecelerate:1];

        v41 = objc_alloc_init(MEMORY[0x1E69DF420]);
        pinchDecelerationAnimation = self->_pinchDecelerationAnimation;
        self->_pinchDecelerationAnimation = v41;

        [(VKDynamicAnimation *)self->_pinchDecelerationAnimation setCompletionHandler:v36];
        if (v35 <= 0.0)
        {
          [v15 zoomOutFrictionScale];
        }

        v50 = MEMORY[0x1E69E9820];
        objc_copyWeak(&v52, &location);
        v51 = v23;
        v48 = dynamicValueAnimation();
        [(VKDynamicAnimation *)self->_pinchDecelerationAnimation setDynamicStepHandler:v48, v50, 3221225472, __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke_3, &unk_1E76C7EE8];

        v49 = [(MKBasicMapView *)self->_mapView mapView];
        [v49 runAnimation:self->_pinchDecelerationAnimation];

        objc_destroyWeak(&v52);
        objc_destroyWeak(v54);
      }
    }

    else
    {
      v26[2](v26);
    }
  }

  objc_destroyWeak(v57);
  objc_destroyWeak(&location);
LABEL_37:
}

void __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3 >= 0.01 && WeakRetained != 0)
  {
    v9 = WeakRetained;
    v8 = [WeakRetained[1] mapView];
    [v8 updatePinchWithFocusPoint:*(a1 + 40) oldFactor:*(a1 + 48) newFactor:{a2, a3}];

    WeakRetained = v9;
    *(v9 + 32) = a3;
  }
}

uint64_t __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke_67(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) mapView];
  [v2 stopPinchingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained gestureControllerDidStopZooming:? direction:? type:? willDecelerate:?];

  v4 = *(a1 + 32);

  return [v4 endGesturing];
}

void __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained[33];
    v4 = v7[33];
    v7[33] = 0;

    v5 = [v7[1] mapView];
    [v5 stopPinchingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];

    v6 = objc_loadWeakRetained(v7 + 2);
    [v6 gestureControllerDidStopZoomingDecelerating:? direction:? type:?];

    [v7 endGesturing];
    WeakRetained = v7;
  }
}

void __105__MKMapGestureController__updateZoomGestureForState_focusPoint_scale_velocity_gestureType_configuration___block_invoke_3(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))(WeakRetained[32], a2);
  }
}

- (void)handlePinch:(id)a3
{
  v4 = a3;
  v5 = MKGetGesturesLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HandlePinch", &unk_1A30FEA0E, buf, 2u);
  }

  [v4 locationInView:self->_mapView];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 gestureController:self focusPointForPoint:1 gestureKind:{v7, v9}];
    v7 = v12;
    v9 = v13;
  }

  [v4 scale];
  v15 = v14;
  [v4 velocity];
  -[MKMapGestureController _updateZoomGestureForState:focusPoint:scale:velocity:gestureType:configuration:](self, "_updateZoomGestureForState:focusPoint:scale:velocity:gestureType:configuration:", [v4 state], 1, self->_zoomConfiguration, v7, v9, v15, v16);
  v17 = MKGetGesturesLog();
  if (os_signpost_enabled(v17))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HandlePinch", &unk_1A30FEA0E, v18, 2u);
  }
}

- (void)handleOneHandedPanZoom:(id)a3
{
  v4 = a3;
  v5 = MKGetGesturesLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HandlePanZoom", &unk_1A30FEA0E, buf, 2u);
  }

  [v4 locationOfTapGesture];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 gestureController:self focusPointForPoint:1 gestureKind:{v7, v9}];
    v7 = v12;
    v9 = v13;
  }

  v14 = [v4 state];
  [v4 scale];
  v16 = v15;
  [v4 velocity];
  v18 = v17;
  v19 = [v4 configuration];
  [(MKMapGestureController *)self _updateZoomGestureForState:v14 focusPoint:4 scale:v19 velocity:v7 gestureType:v9 configuration:v16, v18];

  v20 = MKGetGesturesLog();
  if (os_signpost_enabled(v20))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HandlePanZoom", &unk_1A30FEA0E, v21, 2u);
  }
}

- (void)handlePanZoom:(id)a3
{
  v26 = a3;
  [(MKBasicMapView *)self->_mapView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 gestureControllerSignificantViewFrame:self];
    v5 = v14;
    v7 = v15;
    v9 = v16;
    v11 = v17;
  }

  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  MidX = CGRectGetMidX(v28);
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  MidY = CGRectGetMidY(v29);
  v20 = objc_loadWeakRetained(&self->_delegate);

  if (v20)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 gestureController:self focusPointForPoint:1 gestureKind:{MidX, MidY}];
    MidX = v22;
    MidY = v23;
  }

  v24 = [v26 state];
  [v26 scale];
  [(MKMapGestureController *)self _updateZoomGestureForState:v24 focusPoint:4 scale:0 velocity:MidX gestureType:MidY configuration:v25, 0.0];
}

- (void)handleTwoFingerLongPress:(id)a3
{
  v6 = a3;
  if ([v6 state] == 1)
  {
    self->_didStartLongPress = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureControllerWillStartTwoFingerLongPress:self];
  }

  else if ([v6 state] == 3 || objc_msgSend(v6, "state") == 4)
  {
    if (self->_didStartLongPress)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 gestureControllerDidStopTwoFingerLongPress:self];
    }

    self->_didStartLongPress = 0;
  }
}

- (void)handleTwoFingerTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = +[MKSystemController sharedInstance];
    v6 = [v5 supportsExtendedGestures];

    if (v6)
    {
      [v4 locationInView:self->_mapView];
      MidX = v7;
      MidY = v9;
    }

    else
    {
      [(MKBasicMapView *)self->_mapView bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        v20 = objc_loadWeakRetained(&self->_delegate);
        [v20 gestureControllerSignificantViewFrame:self];
        v12 = v21;
        v14 = v22;
        v16 = v23;
        v18 = v24;
      }

      v32.origin.x = v12;
      v32.origin.y = v14;
      v32.size.width = v16;
      v32.size.height = v18;
      MidX = CGRectGetMidX(v32);
      v33.origin.x = v12;
      v33.origin.y = v14;
      v33.size.width = v16;
      v33.size.height = v18;
      MidY = CGRectGetMidY(v33);
    }

    v25 = objc_loadWeakRetained(&self->_delegate);

    if (v25)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 gestureController:self focusPointForPoint:1 gestureKind:{MidX, MidY}];
      MidX = v27;
      MidY = v28;
    }

    [(MKMapGestureController *)self beginGesturing];
    v29 = objc_loadWeakRetained(&self->_delegate);
    [v29 gestureControllerWillStartZooming:self animated:1];

    v30 = [(MKBasicMapView *)self->_mapView mapView];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __45__MKMapGestureController_handleTwoFingerTap___block_invoke;
    v31[3] = &unk_1E76CDB38;
    v31[4] = self;
    [v30 zoom:v31 withFocusPoint:-1.0 completionHandler:{MidX, MidY}];
  }
}

uint64_t __45__MKMapGestureController_handleTwoFingerTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained gestureControllerDidStopZooming:*(a1 + 32) direction:2 type:3 willDecelerate:0];

  v3 = *(a1 + 32);

  return [v3 endGesturing];
}

- (void)handleDoubleTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = +[MKSystemController sharedInstance];
    v6 = [v5 supportsExtendedGestures];

    if (v6)
    {
      [v4 locationInView:self->_mapView];
      MidX = v7;
      MidY = v9;
    }

    else
    {
      [(MKBasicMapView *)self->_mapView bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        v20 = objc_loadWeakRetained(&self->_delegate);
        [v20 gestureControllerSignificantViewFrame:self];
        v12 = v21;
        v14 = v22;
        v16 = v23;
        v18 = v24;
      }

      v35.origin.x = v12;
      v35.origin.y = v14;
      v35.size.width = v16;
      v35.size.height = v18;
      MidX = CGRectGetMidX(v35);
      v36.origin.x = v12;
      v36.origin.y = v14;
      v36.size.width = v16;
      v36.size.height = v18;
      MidY = CGRectGetMidY(v36);
    }

    v25 = objc_loadWeakRetained(&self->_delegate);

    if (v25)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      [v26 gestureController:self focusPointForPoint:1 gestureKind:{MidX, MidY}];
      MidX = v27;
      MidY = v28;
    }

    v29 = [v4 modifierFlags];
    if ((v29 & 0x80000) != 0)
    {
      v30 = -1.0;
    }

    else
    {
      v30 = 1.0;
    }

    if ((v29 & 0x80000) != 0)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    [(MKMapGestureController *)self beginGesturing];
    v32 = objc_loadWeakRetained(&self->_delegate);
    [v32 gestureControllerWillStartZooming:self animated:1];

    v33 = [(MKBasicMapView *)self->_mapView mapView];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __42__MKMapGestureController_handleDoubleTap___block_invoke;
    v34[3] = &unk_1E76C9AD0;
    v34[4] = self;
    v34[5] = v31;
    [v33 zoom:v34 withFocusPoint:v30 completionHandler:{MidX, MidY}];
  }
}

uint64_t __42__MKMapGestureController_handleDoubleTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained gestureControllerDidStopZooming:*(a1 + 32) direction:*(a1 + 40) type:2 willDecelerate:0];

  v3 = *(a1 + 32);

  return [v3 endGesturing];
}

- (void)_updateRotationGestureForState:(int64_t)a3 focusPoint:(CGPoint)a4 rotation:(double)a5 velocity:(double)a6
{
  y = a4.y;
  x = a4.x;
  if (a3 == 1)
  {
    [(MKMapGestureController *)self beginGesturing];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained gestureControllerWillStartRotating:self];

    rotationFilter = self->_rotationFilter;
    if (rotationFilter)
    {
      [(MKRotationFilter *)rotationFilter startRotatingWithFocusPoint:self->_rotationSnappingEnabled withSnapping:x, y];
    }

    else
    {
      v18 = [(MKMapGestureController *)self mapView];
      v19 = [v18 mapView];
      [v19 startRotatingWithFocusPoint:{x, y}];
    }
  }

  else if (a3 == 4)
  {
    v12 = self->_rotationFilter;
    if (v12)
    {
      [(MKRotationFilter *)v12 stopRotatingWithFocusPoint:a4.x, a4.y];
    }

    else
    {
      v15 = [(MKMapGestureController *)self mapView];
      v16 = [v15 mapView];
      [v16 stopRotatingWithFocusPoint:{x, y}];
    }

    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 gestureControllerDidStopRotating:self willDecelerate:0];

    [(MKMapGestureController *)self endGesturing];
    return;
  }

  objc_initWeak(&location, self);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __86__MKMapGestureController__updateRotationGestureForState_focusPoint_rotation_velocity___block_invoke;
  v37[3] = &unk_1E76C7F10;
  objc_copyWeak(v38, &location);
  v38[1] = *&x;
  v38[2] = *&y;
  v20 = MEMORY[0x1A58E9F30](v37);
  v20[2](a5);
  if (a3 == 3)
  {
    if (fabs(a6) <= 3.0)
    {
      v29 = self->_rotationFilter;
      if (v29)
      {
        [(MKRotationFilter *)v29 stopRotatingWithFocusPoint:x, y];
      }

      else
      {
        v30 = [(MKMapGestureController *)self mapView];
        v31 = [v30 mapView];
        [v31 stopRotatingWithFocusPoint:{x, y}];
      }

      v32 = objc_loadWeakRetained(&self->_delegate);
      [v32 gestureControllerDidStopRotating:self willDecelerate:0];

      [(MKMapGestureController *)self endGesturing];
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __86__MKMapGestureController__updateRotationGestureForState_focusPoint_rotation_velocity___block_invoke_2;
      v35[3] = &unk_1E76C7F38;
      objc_copyWeak(v36, &location);
      v36[1] = *&x;
      v36[2] = *&y;
      v21 = MEMORY[0x1A58E9F30](v35);
      v22 = [(MKMapGestureController *)self mapView];
      v23 = [v22 isPointValidForGesturing:{x, y}];

      if (v23)
      {
        [(VKDynamicAnimation *)self->_rotationDecelerationAnimation stop];
        v24 = objc_loadWeakRetained(&self->_delegate);
        [v24 gestureControllerDidStopRotating:self willDecelerate:1];

        v25 = objc_alloc_init(MEMORY[0x1E69DF420]);
        rotationDecelerationAnimation = self->_rotationDecelerationAnimation;
        self->_rotationDecelerationAnimation = v25;

        [(VKDynamicAnimation *)self->_rotationDecelerationAnimation setCompletionHandler:v21];
        v33 = MEMORY[0x1E69E9820];
        v34 = v20;
        v27 = dynamicValueAnimation();
        [(VKDynamicAnimation *)self->_rotationDecelerationAnimation setDynamicStepHandler:v27, v33, 3221225472, __86__MKMapGestureController__updateRotationGestureForState_focusPoint_rotation_velocity___block_invoke_3, &unk_1E76C7F60];

        v28 = [(MKBasicMapView *)self->_mapView mapView];
        [v28 runAnimation:self->_rotationDecelerationAnimation];
      }

      objc_destroyWeak(v36);
    }
  }

  objc_destroyWeak(v38);
  objc_destroyWeak(&location);
}

void __86__MKMapGestureController__updateRotationGestureForState_focusPoint_rotation_velocity___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    if (v4)
    {
      [v4 updateRotationWithFocusPoint:*(a1 + 40) newValue:{*(a1 + 48), a2}];
    }

    else
    {
      v5 = [WeakRetained mapView];
      v6 = [v5 mapView];
      [v6 updateRotationWithFocusPoint:*(a1 + 40) newValue:{*(a1 + 48), a2}];
    }
  }
}

void __86__MKMapGestureController__updateRotationGestureForState_focusPoint_rotation_velocity___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = WeakRetained[39];
    v4 = v9[39];
    v9[39] = 0;

    v5 = v9[5];
    if (v5)
    {
      [v5 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
    }

    else
    {
      v6 = [v9 mapView];
      v7 = [v6 mapView];
      [v7 stopRotatingWithFocusPoint:{*(a1 + 40), *(a1 + 48)}];
    }

    v8 = objc_loadWeakRetained(v9 + 2);
    [v8 gestureControllerDidStopRotatingDecelerating:v9];

    [v9 endGesturing];
    WeakRetained = v9;
  }
}

- (void)handleRotation:(id)a3
{
  v4 = a3;
  v5 = MKGetGesturesLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HandleRotation", &unk_1A30FEA0E, buf, 2u);
  }

  [v4 locationInView:self->_mapView];
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 gestureController:self focusPointForPoint:2 gestureKind:{v7, v9}];
    v7 = v13;
    v9 = v14;
  }

  v15 = [v4 state];
  [v4 rotation];
  v17 = v16;
  [v4 velocity];
  [(MKMapGestureController *)self _updateRotationGestureForState:v15 focusPoint:v7 rotation:v9 velocity:v17, v18];
  v19 = MKGetGesturesLog();
  if (os_signpost_enabled(v19))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HandleRotation", &unk_1A30FEA0E, v20, 2u);
  }
}

- (void)_handleStandardTilt:(id)a3
{
  v4 = a3;
  [v4 locationInView:self->_mapView];
  v6 = v5;
  v8 = v7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 gestureController:self focusPointForPoint:3 gestureKind:{*&v6, *&v8}];
    v6 = v12;
    v8 = v13;
  }

  v14 = [v4 state];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v24 = [v4 view];
      [v4 velocityInView:v24];
      v26 = v25;

      v27 = [(MKMapGestureController *)self mapView];
      v18 = [v27 mapView];

      if (fabs(*&v26) <= 100.0 || ([v18 isFullyPitched] & 1) != 0 || !objc_msgSend(v18, "isPitched"))
      {
        [v18 stopPitchingWithFocusPoint:{*&v6, *&v8}];
        v37 = objc_loadWeakRetained(&self->_delegate);
        v38 = v37;
        if (*&v26 >= 0.0)
        {
          [v37 gestureControllerDidStopTilting:self willDecelerate:0 tiltDirection:2];
        }

        else
        {
          [v37 gestureControllerDidStopTilting:self willDecelerate:0 tiltDirection:1];
        }

        [(MKMapGestureController *)self endGesturing];
      }

      else
      {
        objc_initWeak(location, self);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __46__MKMapGestureController__handleStandardTilt___block_invoke;
        v44[3] = &unk_1E76C7E98;
        objc_copyWeak(v46, location);
        v28 = v18;
        v45 = v28;
        v46[1] = v6;
        v46[2] = v8;
        v29 = MEMORY[0x1A58E9F30](v44);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __46__MKMapGestureController__handleStandardTilt___block_invoke_2;
        v41[3] = &unk_1E76C7EC0;
        objc_copyWeak(v43, location);
        v42 = v28;
        v43[1] = v6;
        v43[2] = v8;
        v43[3] = v26;
        v30 = MEMORY[0x1A58E9F30](v41);
        [(VKDynamicAnimation *)self->_tiltDecelerationAnimation stop];
        v31 = objc_loadWeakRetained(&self->_delegate);
        [v31 gestureControllerDidStopTilting:self willDecelerate:1 tiltDirection:0];

        v32 = objc_alloc_init(MEMORY[0x1E69DF420]);
        tiltDecelerationAnimation = self->_tiltDecelerationAnimation;
        self->_tiltDecelerationAnimation = v32;

        [(VKDynamicAnimation *)self->_tiltDecelerationAnimation setCompletionHandler:v30];
        v34 = [(MKMapGestureController *)self mapView];
        [v4 translationInView:v34];
        objc_copyWeak(&v40, location);
        v39 = v29;
        v35 = dynamicValueAnimation();
        [(VKDynamicAnimation *)self->_tiltDecelerationAnimation setDynamicStepHandler:v35];

        v36 = [(MKBasicMapView *)self->_mapView mapView];
        [v36 runAnimation:self->_tiltDecelerationAnimation];

        objc_destroyWeak(&v40);
        objc_destroyWeak(v43);

        objc_destroyWeak(v46);
        objc_destroyWeak(location);
      }

      goto LABEL_20;
    }

    if (v14 == 4)
    {
      v20 = [(MKMapGestureController *)self mapView];
      v21 = [v20 mapView];
      [v21 stopPitchingWithFocusPoint:{*&v6, *&v8}];

      v22 = objc_loadWeakRetained(&self->_delegate);
      [v22 gestureControllerDidStopTilting:self willDecelerate:0 tiltDirection:0];

      [(MKMapGestureController *)self endGesturing];
    }
  }

  else
  {
    if (v14 == 1)
    {
      [(MKMapGestureController *)self beginGesturing];
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 gestureControllerWillStartTilting:self];

      v18 = [(MKMapGestureController *)self mapView];
      v19 = [v18 mapView];
      [v19 startPitchingWithFocusPoint:{*&v6, *&v8}];
      goto LABEL_11;
    }

    if (v14 == 2)
    {
      v15 = [v4 view];
      [v4 translationInView:v15];
      v17 = v16;

      v18 = [(MKMapGestureController *)self mapView];
      v19 = [v18 mapView];
      [v19 updatePitchWithFocusPoint:*&v6 translation:{*&v8, v17}];
LABEL_11:

LABEL_20:
    }
  }
}

void __46__MKMapGestureController__handleStandardTilt___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [WeakRetained mapView];
    v6 = [v5 mapView];
    v7 = [v6 isFullyPitched];

    if ((v7 & 1) == 0)
    {
      [*(a1 + 32) updatePitchWithFocusPoint:*(a1 + 48) translation:{*(a1 + 56), a3}];
    }
  }
}

void __46__MKMapGestureController__handleStandardTilt___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = WeakRetained[41];
    v4 = v8[41];
    v8[41] = 0;

    [*(a1 + 32) stopPitchingWithFocusPoint:{*(a1 + 48), *(a1 + 56)}];
    v5 = *(a1 + 64);
    v6 = objc_loadWeakRetained(v8 + 2);
    v7 = v6;
    if (v5 >= 0.0)
    {
      [v6 gestureControllerDidStopTilting:v8 willDecelerate:0 tiltDirection:2];
    }

    else
    {
      [v6 gestureControllerDidStopTilting:v8 willDecelerate:0 tiltDirection:1];
    }

    [v8 endGesturing];
    WeakRetained = v8;
  }
}

void __46__MKMapGestureController__handleStandardTilt___block_invoke_3(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))(WeakRetained[32], a2);
  }
}

- (void)_setTraitCollection:(id)a3
{
  v6 = a3;
  if (([(UITraitCollection *)self->_traitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_traitCollection, a3);
    if ([(UITraitCollection *)self->_traitCollection userInterfaceIdiom]== UIUserInterfaceIdiomCarPlay)
    {
      +[_MKZoomingGestureControlConfiguration configurationForCarPlay];
    }

    else
    {
      +[_MKZoomingGestureControlConfiguration defaultConfiguration];
    }
    v5 = ;
    [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer setConfiguration:v5];
  }
}

- (void)_clearGesture:(id)a3
{
  v4 = a3;
  v3 = [v4 isEnabled];
  [v4 setEnabled:0];
  [v4 setEnabled:v3];
}

- (void)setCompassView:(id)a3
{
  v5 = a3;
  compassView = self->_compassView;
  p_compassView = &self->_compassView;
  if (compassView != v5)
  {
    v8 = v5;
    objc_storeStrong(p_compassView, a3);
    v5 = v8;
  }
}

- (void)setZoomEnabled:(BOOL)a3
{
  v3 = a3;
  [(MKVariableDelayTapRecognizer *)self->_doubleTapGestureRecognizer setEnabled:?];
  [(UITapGestureRecognizer *)self->_twoFingerTapGestureRecognizer setEnabled:v3];
  [(UIPinchGestureRecognizer *)self->_pinchGestureRecognizer setEnabled:v3];
  v5 = +[MKSystemController sharedInstance];
  v6 = [v5 supportsExtendedGestures];

  if (v6)
  {
    [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer setEnabled:v3];
  }

  conditionalPanZoomGestureRecognizer = self->_conditionalPanZoomGestureRecognizer;

  [(_MKConditionalPanZoomGestureRecognizer *)conditionalPanZoomGestureRecognizer setEnabled:v3];
}

- (BOOL)isZoomEnabled
{
  if (([(UIPinchGestureRecognizer *)self->_pinchGestureRecognizer isEnabled]& 1) != 0 || ([(MKVariableDelayTapRecognizer *)self->_doubleTapGestureRecognizer isEnabled]& 1) != 0)
  {
    return 1;
  }

  oneHandedZoomGestureRecognizer = self->_oneHandedZoomGestureRecognizer;

  return [(_MKOneHandedZoomGestureRecognizer *)oneHandedZoomGestureRecognizer isEnabled];
}

- (void)dealloc
{
  [(_MKUserInteractionGestureRecognizer *)self->_touchGestureRecognizer setTouchObserver:0];
  v3.receiver = self;
  v3.super_class = MKMapGestureController;
  [(MKMapGestureController *)&v3 dealloc];
}

- (void)setTiltEnabled:(BOOL)a3
{
  v3 = a3;
  [(MKTiltGestureRecognizer *)self->_tiltGestureRecognizer setEnabled:?];
  conditionalPanTiltGestureRecognizer = self->_conditionalPanTiltGestureRecognizer;

  [(_MKConditionalPanTiltGestureRecognizer *)conditionalPanTiltGestureRecognizer setEnabled:v3];
}

- (void)setRotationEnabled:(BOOL)a3
{
  v3 = a3;
  [(UIRotationGestureRecognizer *)self->_rotationGestureRecognizer setEnabled:?];
  conditionalPanRotationGestureRecognizer = self->_conditionalPanRotationGestureRecognizer;

  [(_MKConditionalPanRotationGestureRecognizer *)conditionalPanRotationGestureRecognizer setEnabled:v3];
}

- (void)setupOneHandedZoomGestureRecognizerForView:(id)a3
{
  v11 = a3;
  if (_MKLinkedOnOrAfterReleaseSet(2310))
  {
    v4 = [[_MKOneHandedZoomGestureRecognizer alloc] initWithTarget:self action:sel_handleOneHandedPanZoom_];
    oneHandedZoomGestureRecognizer = self->_oneHandedZoomGestureRecognizer;
    self->_oneHandedZoomGestureRecognizer = v4;

    [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer setDelegate:self];
    [v11 addGestureRecognizer:self->_oneHandedZoomGestureRecognizer];
    v6 = [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer tapGestureRecognizer];
    [v11 addGestureRecognizer:v6];

    v7 = [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer panGestureRecognizer];
    [v11 addGestureRecognizer:v7];

    v8 = [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer tapGestureRecognizer];
    [v8 requireGestureRecognizerToFail:self->_panGestureRecognizer];

    panGestureRecognizer = self->_panGestureRecognizer;
    v10 = [(_MKOneHandedZoomGestureRecognizer *)self->_oneHandedZoomGestureRecognizer panGestureRecognizer];
    [(UIPanGestureRecognizer *)panGestureRecognizer requireGestureRecognizerToFail:v10];
  }
}

- (MKMapGestureController)initWithMapView:(id)a3 gestureTargetView:(id)a4 doubleTapTargetView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v56.receiver = self;
  v56.super_class = MKMapGestureController;
  v12 = [(MKMapGestureController *)&v56 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mapView, a3);
    v13->_rotationSnappingEnabled = 0;
    v14 = [[MKVariableDelayTapRecognizer alloc] initWithTarget:v13 action:sel_handleDoubleTap_];
    doubleTapGestureRecognizer = v13->_doubleTapGestureRecognizer;
    v13->_doubleTapGestureRecognizer = v14;

    [(MKVariableDelayTapRecognizer *)v13->_doubleTapGestureRecognizer setNumberOfTapsRequired:2];
    [(MKVariableDelayTapRecognizer *)v13->_doubleTapGestureRecognizer setNumberOfTouchesRequired:1];
    [(MKVariableDelayTapRecognizer *)v13->_doubleTapGestureRecognizer setTapDelayDelegate:v13];
    [v11 addGestureRecognizer:v13->_doubleTapGestureRecognizer];
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel_handleTwoFingerTap_];
    twoFingerTapGestureRecognizer = v13->_twoFingerTapGestureRecognizer;
    v13->_twoFingerTapGestureRecognizer = v16;

    [(UITapGestureRecognizer *)v13->_twoFingerTapGestureRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v13->_twoFingerTapGestureRecognizer setNumberOfTouchesRequired:2];
    [v10 addGestureRecognizer:v13->_twoFingerTapGestureRecognizer];
    v18 = +[MKSystemController sharedInstance];
    v19 = [v18 supportsExtendedGestures];

    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v13 action:sel_handleTwoFingerLongPress_];
      twoFingerLongPressGestureRecognizer = v13->_twoFingerLongPressGestureRecognizer;
      v13->_twoFingerLongPressGestureRecognizer = v20;

      [(UILongPressGestureRecognizer *)v13->_twoFingerLongPressGestureRecognizer setNumberOfTouchesRequired:2];
      [(UILongPressGestureRecognizer *)v13->_twoFingerLongPressGestureRecognizer setMinimumPressDuration:0.2];
      [v10 addGestureRecognizer:v13->_twoFingerLongPressGestureRecognizer];
      v22 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:v13 action:sel_handlePinch_];
      pinchGestureRecognizer = v13->_pinchGestureRecognizer;
      v13->_pinchGestureRecognizer = v22;

      [(UIPinchGestureRecognizer *)v13->_pinchGestureRecognizer setDelegate:v13];
      [(UIPinchGestureRecognizer *)v13->_pinchGestureRecognizer _setEndsOnSingleTouch:1];
      [v10 addGestureRecognizer:v13->_pinchGestureRecognizer];
      v24 = [[_MKZoomingGestureControlConfiguration alloc] initWithDecelerationThreshold:3.0 maximumZoomInVelocity:10.0 maximumZoomOutVelocity:-10.0 zoomOutFrictionScale:4.5];
      zoomConfiguration = v13->_zoomConfiguration;
      v13->_zoomConfiguration = v24;
    }

    v26 = [[MKPanGestureRecognizer alloc] initWithTarget:v13 action:sel_handlePan_];
    panGestureRecognizer = v13->_panGestureRecognizer;
    v13->_panGestureRecognizer = &v26->super;

    [(UIPanGestureRecognizer *)v13->_panGestureRecognizer setDelegate:v13];
    [(UIPanGestureRecognizer *)v13->_panGestureRecognizer _setRequiresSystemGesturesToFail:1];
    [(UIPanGestureRecognizer *)v13->_panGestureRecognizer setAllowedScrollTypesMask:2];
    [v10 addGestureRecognizer:v13->_panGestureRecognizer];
    v28 = [[_MKUserInteractionGestureRecognizer alloc] initWithTarget:v13 action:sel_handleTouch_];
    touchGestureRecognizer = v13->_touchGestureRecognizer;
    v13->_touchGestureRecognizer = v28;

    [(_MKUserInteractionGestureRecognizer *)v13->_touchGestureRecognizer setTouchObserver:v13];
    [(_MKUserInteractionGestureRecognizer *)v13->_touchGestureRecognizer setDelegate:v13];
    [(_MKUserInteractionGestureRecognizer *)v13->_touchGestureRecognizer setCancelsTouchesInView:0];
    [(_MKUserInteractionGestureRecognizer *)v13->_touchGestureRecognizer setDelaysTouchesBegan:0];
    [(_MKUserInteractionGestureRecognizer *)v13->_touchGestureRecognizer setDelaysTouchesEnded:0];
    [v10 addGestureRecognizer:v13->_touchGestureRecognizer];
    v30 = +[MKSystemController sharedInstance];
    v31 = [v30 supportsExtendedGestures];

    if (v31)
    {
      v32 = [objc_alloc(MEMORY[0x1E69DCE68]) initWithTarget:v13 action:sel_handleRotation_];
      rotationGestureRecognizer = v13->_rotationGestureRecognizer;
      v13->_rotationGestureRecognizer = v32;

      [(UIRotationGestureRecognizer *)v13->_rotationGestureRecognizer setDelegate:v13];
      [(UIRotationGestureRecognizer *)v13->_rotationGestureRecognizer _setPreRecognitionWeight:0.5];
      [v10 addGestureRecognizer:v13->_rotationGestureRecognizer];
      v34 = [[MKTiltGestureRecognizer alloc] initWithTarget:v13 action:sel_handleTilt_];
      tiltGestureRecognizer = v13->_tiltGestureRecognizer;
      v13->_tiltGestureRecognizer = v34;

      [(MKTiltGestureRecognizer *)v13->_tiltGestureRecognizer setDelegate:v13];
      [v10 addGestureRecognizer:v13->_tiltGestureRecognizer];
    }

    v36 = [[_MKConditionalPanRotationGestureRecognizer alloc] initWithTarget:v13 action:sel__handleRotationPan_];
    conditionalPanRotationGestureRecognizer = v13->_conditionalPanRotationGestureRecognizer;
    v13->_conditionalPanRotationGestureRecognizer = v36;

    [(_MKConditionalPanRotationGestureRecognizer *)v13->_conditionalPanRotationGestureRecognizer setDelegate:v13];
    [(_MKConditionalPanRotationGestureRecognizer *)v13->_conditionalPanRotationGestureRecognizer setAllowedScrollTypesMask:2];
    [v10 addGestureRecognizer:v13->_conditionalPanRotationGestureRecognizer];
    [(UIPanGestureRecognizer *)v13->_panGestureRecognizer requireGestureRecognizerToFail:v13->_conditionalPanRotationGestureRecognizer];
    v38 = [[_MKConditionalPanZoomGestureRecognizer alloc] initWithTarget:v13 action:sel__handleZoomPan_];
    conditionalPanZoomGestureRecognizer = v13->_conditionalPanZoomGestureRecognizer;
    v13->_conditionalPanZoomGestureRecognizer = v38;

    [(_MKConditionalPanZoomGestureRecognizer *)v13->_conditionalPanZoomGestureRecognizer setDelegate:v13];
    [(_MKConditionalPanZoomGestureRecognizer *)v13->_conditionalPanZoomGestureRecognizer setAllowedScrollTypesMask:2];
    [v10 addGestureRecognizer:v13->_conditionalPanZoomGestureRecognizer];
    [(UIPanGestureRecognizer *)v13->_panGestureRecognizer requireGestureRecognizerToFail:v13->_conditionalPanZoomGestureRecognizer];
    v40 = [[_MKConditionalPanTiltGestureRecognizer alloc] initWithTarget:v13 action:sel__handleStandardTilt_];
    conditionalPanTiltGestureRecognizer = v13->_conditionalPanTiltGestureRecognizer;
    v13->_conditionalPanTiltGestureRecognizer = v40;

    [(_MKConditionalPanTiltGestureRecognizer *)v13->_conditionalPanTiltGestureRecognizer setDelegate:v13];
    [(_MKConditionalPanTiltGestureRecognizer *)v13->_conditionalPanTiltGestureRecognizer setAllowedScrollTypesMask:2];
    [v10 addGestureRecognizer:v13->_conditionalPanTiltGestureRecognizer];
    [(UIPanGestureRecognizer *)v13->_panGestureRecognizer requireGestureRecognizerToFail:v13->_conditionalPanTiltGestureRecognizer];
    v42 = [objc_alloc(MEMORY[0x1E69DD588]) initWithTarget:v13 action:sel__handleInterrupt_];
    gestureInterruptionRecognizer = v13->_gestureInterruptionRecognizer;
    v13->_gestureInterruptionRecognizer = v42;

    [v10 addGestureRecognizer:v13->_gestureInterruptionRecognizer];
    v44 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v44 doubleForKey:@"ZoomingDefault"];
    v13->_arrowZoomSpeed = v45;

    v46 = [[_MKDirectionalArrowRecognizer alloc] initWithTarget:v13 action:sel_handleArrowZoom_];
    arrowZoomGestureRecognizer = v13->_arrowZoomGestureRecognizer;
    v13->_arrowZoomGestureRecognizer = v46;

    v48 = [[_MKDirectionalArrowRecognizer alloc] initWithTarget:v13 action:sel_handleArrowRotate_];
    arrowRotateGestureRecognizer = v13->_arrowRotateGestureRecognizer;
    v13->_arrowRotateGestureRecognizer = v48;

    v50 = [[_MKDirectionalArrowRecognizer alloc] initWithTarget:v13 action:sel_handleArrowPan_];
    arrowPanGestureRecognizer = v13->_arrowPanGestureRecognizer;
    v13->_arrowPanGestureRecognizer = v50;

    v13->_panWithMomentum = 1;
    v52 = +[MKSystemController sharedInstance];
    v53 = [v52 supportsExtendedGestures];

    if (v53)
    {
      [(MKMapGestureController *)v13 setupOneHandedZoomGestureRecognizerForView:v10];
    }

    v54 = v13;
  }

  return v13;
}

@end