@interface MKLookAroundGestureController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (MKLookAroundGestureController)initWithLookAroundView:(id)a3;
- (MKLookAroundGestureControllerDelegate)delegate;
- (MKLookAroundView)lookAroundView;
- (void)_handlePan:(id)a3;
- (void)_handleSingleNavigate:(id)a3;
- (void)_handleZoom:(id)a3;
- (void)_moveBackToReplayTap;
@end

@implementation MKLookAroundGestureController

- (MKLookAroundView)lookAroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_lookAroundView);

  return WeakRetained;
}

- (MKLookAroundGestureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  panGestureRecognizer = self->_panGestureRecognizer;
  zoomGestureRecognizer = self->_zoomGestureRecognizer;
  v11 = zoomGestureRecognizer == v7 && panGestureRecognizer == v6;
  v13 = zoomGestureRecognizer == v6 && panGestureRecognizer == v7 || v11;

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(MKLookAroundGestureController *)self delegate];
  LOBYTE(self) = [v6 lookAroundGestureControllerShouldReceive:self shouldReceiveTouch:v5];

  return self;
}

- (void)_handleZoom:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_userInteractionCount)
  {
    v5 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: DidStartUserInteraction>", &v34, 2u);
    }

    v6 = [(MKLookAroundGestureController *)self delegate];
    [v6 lookAroundGestureControllerDidStartUserInteraction:self];
  }

  WeakRetained = objc_loadWeakRetained(&self->_lookAroundView);
  [v4 locationInView:WeakRetained];
  v9 = v8;
  v11 = v10;

  [v4 scale];
  v13 = v12;
  v14 = [v4 state];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v27 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_1A2EA0000, v27, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: Ended>", &v34, 2u);
      }

      --self->_userInteractionCount;
      v28 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        userInteractionCount = self->_userInteractionCount;
        v34 = 134217984;
        v35 = userInteractionCount;
        _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: DidZoom (_userInteractionCount == %ld)", &v34, 0xCu);
      }

      v30 = [(MKLookAroundGestureController *)self delegate];
      [v30 lookAroundGestureController:self didZoomWithDirection:self->_lastZoomDirection type:1];

      if (self->_userInteractionCount)
      {
        goto LABEL_34;
      }

      v21 = MKGetMKLookAroundLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      LOWORD(v34) = 0;
    }

    else
    {
      if (v14 != 4)
      {
        goto LABEL_35;
      }

      v18 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_1A2EA0000, v18, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: Cancelled>", &v34, 2u);
      }

      --self->_userInteractionCount;
      v19 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = self->_userInteractionCount;
        v34 = 134217984;
        v35 = v20;
        _os_log_impl(&dword_1A2EA0000, v19, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: _userInteractionCount == %ld", &v34, 0xCu);
      }

      if (self->_userInteractionCount)
      {
LABEL_34:
        v32 = objc_loadWeakRetained(&self->_lookAroundView);
        v33 = [v32 lookAroundView];
        [v33 stopPinchingWithFocusPoint:{v9, v11}];

        goto LABEL_35;
      }

      v21 = MKGetMKLookAroundLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        v31 = [(MKLookAroundGestureController *)self delegate];
        [v31 lookAroundGestureControllerDidStopUserInteraction:self];

        goto LABEL_34;
      }

      LOWORD(v34) = 0;
    }

    _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: DidStopUserInteraction>", &v34, 2u);
    goto LABEL_33;
  }

  if (v14 == 1)
  {
    v22 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: Began>", &v34, 2u);
    }

    ++self->_userInteractionCount;
    v23 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = self->_userInteractionCount;
      v34 = 134217984;
      v35 = v24;
      _os_log_impl(&dword_1A2EA0000, v23, OS_LOG_TYPE_DEBUG, "[Gesture] _handleZoom: _userInteractionCount == %ld", &v34, 0xCu);
    }

    v25 = objc_loadWeakRetained(&self->_lookAroundView);
    v26 = [v25 lookAroundView];
    [v26 startPinchingWithFocusPoint:{v9, v11}];

    self->_lastZoomDirection = 0;
    self->_lastZoomScale = 1.0;
    self->_startZoomScale = v13;
  }

  else if (v14 == 2)
  {
    v15 = objc_loadWeakRetained(&self->_lookAroundView);
    v16 = [v15 lookAroundView];
    [v16 updatePinchWithFocusPoint:v9 oldFactor:v11 newFactor:{self->_lastZoomScale, v13}];

    v17 = 2;
    if (self->_lastZoomScale > self->_startZoomScale)
    {
      v17 = 1;
    }

    self->_lastZoomDirection = v17;
    self->_lastZoomScale = v13;
  }

LABEL_35:
}

- (void)_handlePan:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_lookAroundView);
  [v4 locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  [(VKCompoundAnimation *)self->_panDecelerationAnimationGroup stop];
  panDecelerationAnimationGroup = self->_panDecelerationAnimationGroup;
  self->_panDecelerationAnimationGroup = 0;

  if (!self->_userInteractionCount)
  {
    v11 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: DidStartUserInteraction>", buf, 2u);
    }

    v12 = [(MKLookAroundGestureController *)self delegate];
    [v12 lookAroundGestureControllerDidStartUserInteraction:self];
  }

  *buf = 0;
  v47 = buf;
  v48 = 0x3010000000;
  v50 = 0;
  v51 = 0;
  v49 = &unk_1A31250BE;
  v13 = objc_loadWeakRetained(&self->_lookAroundView);
  [v4 translationInView:v13];
  v50 = v14;
  v51 = v15;

  v16 = [v4 state];
  if (v16 > 2)
  {
    if (v16 == 3)
    {
      v28 = objc_loadWeakRetained(&self->_lookAroundView);
      [v4 velocityInView:v28];
      v30 = v29;
      v32 = v31;

      v17 = objc_alloc_init(MEMORY[0x1E69DF420]);
      v45[6] = MEMORY[0x1E69E9820];
      v45[7] = 3221225472;
      v45[8] = __44__MKLookAroundGestureController__handlePan___block_invoke;
      v45[9] = &unk_1E76CA6E8;
      v45[10] = buf;
      v33 = dynamicValueAnimation();
      [v17 setDynamicStepHandler:v33];

      v18 = objc_alloc_init(MEMORY[0x1E69DF420]);
      v45[1] = MEMORY[0x1E69E9820];
      v45[2] = 3221225472;
      v45[3] = __44__MKLookAroundGestureController__handlePan___block_invoke_2;
      v45[4] = &unk_1E76CA6E8;
      v45[5] = buf;
      v34 = dynamicValueAnimation();
      [v18 setDynamicStepHandler:v34];

      objc_initWeak(v52, self);
      v35 = objc_loadWeakRetained(&self->_lookAroundView);
      v36 = [v35 lookAroundView];
      [v36 willStopPanningAtPoint:v7 withVelocity:{v9, v30, v32}];

      v37 = [objc_alloc(MEMORY[0x1E69DF400]) initWithAnimations:{v17, v18, 0}];
      v38 = self->_panDecelerationAnimationGroup;
      self->_panDecelerationAnimationGroup = v37;

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __44__MKLookAroundGestureController__handlePan___block_invoke_3;
      v43[3] = &unk_1E76CA710;
      objc_copyWeak(v45, v52);
      v44 = v4;
      [(VKCompoundAnimation *)self->_panDecelerationAnimationGroup setCompletionHandler:v43];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __44__MKLookAroundGestureController__handlePan___block_invoke_22;
      v41[3] = &unk_1E76CA738;
      objc_copyWeak(&v42, v52);
      v41[4] = buf;
      [(VKCompoundAnimation *)self->_panDecelerationAnimationGroup setGroupStepHandler:v41];
      v39 = objc_loadWeakRetained(&self->_lookAroundView);
      v40 = [v39 lookAroundView];
      [v40 runAnimation:self->_panDecelerationAnimationGroup];

      objc_destroyWeak(&v42);
      objc_destroyWeak(v45);
      objc_destroyWeak(v52);
      goto LABEL_25;
    }

    if (v16 == 4)
    {
      v19 = objc_loadWeakRetained(&self->_lookAroundView);
      v20 = [v19 lookAroundView];
      [v20 stopPanningAtPoint:{v7, v9}];

      v21 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *v52 = 0;
        _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: Cancelled>", v52, 2u);
      }

      --self->_userInteractionCount;
      v22 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        userInteractionCount = self->_userInteractionCount;
        *v52 = 134217984;
        v53 = userInteractionCount;
        _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: _userInteractionCount == %ld", v52, 0xCu);
      }

      if (!self->_userInteractionCount)
      {
        v24 = MKGetMKLookAroundLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *v52 = 0;
          _os_log_impl(&dword_1A2EA0000, v24, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: DidStopUserInteraction>", v52, 2u);
        }

        v17 = [(MKLookAroundGestureController *)self delegate];
        [v17 lookAroundGestureControllerDidStopUserInteraction:self];
        goto LABEL_26;
      }
    }
  }

  else
  {
    if (v16 == 1)
    {
      v25 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *v52 = 0;
        _os_log_impl(&dword_1A2EA0000, v25, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: Began>", v52, 2u);
      }

      ++self->_userInteractionCount;
      v26 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = self->_userInteractionCount;
        *v52 = 134217984;
        v53 = v27;
        _os_log_impl(&dword_1A2EA0000, v26, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: _userInteractionCount == %ld", v52, 0xCu);
      }

      v17 = objc_loadWeakRetained(&self->_lookAroundView);
      v18 = [v17 lookAroundView];
      [v18 startPanningAtPoint:{v7, v9}];
      goto LABEL_25;
    }

    if (v16 == 2)
    {
      v17 = objc_loadWeakRetained(&self->_lookAroundView);
      v18 = [v17 lookAroundView];
      [v18 updatePanWithTranslation:{*(v47 + 4), *(v47 + 5)}];
LABEL_25:

LABEL_26:
    }
  }

  _Block_object_dispose(buf, 8);
}

void __44__MKLookAroundGestureController__handlePan___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 12);
    v5 = [v4 lookAroundView];
    v6 = *(a1 + 32);
    v7 = objc_loadWeakRetained(v3 + 12);
    [v6 locationInView:v7];
    [v5 stopPanningAtPoint:?];

    v8 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: Ended>", &v14, 2u);
    }

    v3[1] = v3[1] - 1;
    v9 = MKGetMKLookAroundLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = v3[1];
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: DidPan (_userInteractionCount == %ld)", &v14, 0xCu);
    }

    v11 = [v3 delegate];
    [v11 lookAroundGestureControllerDidPan:v3];

    if (!v3[1])
    {
      v12 = MKGetMKLookAroundLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_DEBUG, "[Gesture] _handlePan: DidStopUserInteraction>", &v14, 2u);
      }

      v13 = [v3 delegate];
      [v13 lookAroundGestureControllerDidStopUserInteraction:v3];
    }
  }
}

void __44__MKLookAroundGestureController__handlePan___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 12);
    v4 = [v3 lookAroundView];
    [v4 updatePanWithTranslation:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40)}];

    WeakRetained = v5;
  }
}

- (void)_handleSingleNavigate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceDate:self->_singleTapTime];
  if (v6 >= 0.6)
  {
    v7 = [MEMORY[0x1E69DF418] sharedSettingsExt];
    v8 = [v7 muninReplayLastTap];

    if (v8)
    {
      [(MKLookAroundGestureController *)self _moveBackToReplayTap];
    }

    else
    {
      if (!self->_userInteractionCount)
      {
        v9 = MKGetMKLookAroundLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A2EA0000, v9, OS_LOG_TYPE_DEBUG, "[Gesture] _handleSingleNavigate: DidStartUserInteraction>", buf, 2u);
        }

        v10 = [(MKLookAroundGestureController *)self delegate];
        [v10 lookAroundGestureControllerDidStartUserInteraction:self];
      }

      WeakRetained = objc_loadWeakRetained(&self->_lookAroundView);
      [v4 locationInView:WeakRetained];
      v13 = v12;
      v15 = v14;

      if (self->_readyToReplayTap)
      {
        v16 = [MEMORY[0x1E69DF418] sharedSettingsExt];
        v17 = v16;
        if (v16)
        {
          [v16 muninTapState];
          v13 = *&v42;
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
          v13 = 0.0;
        }

        v18 = [MEMORY[0x1E69DF418] sharedSettingsExt];
        v19 = v18;
        if (v18)
        {
          [v18 muninTapState];
          v15 = *(&v40 + 1);
        }

        else
        {
          v40 = 0u;
          v41 = 0u;
          v15 = 0.0;
        }

        self->_readyToReplayTap = 0;
      }

      v20 = objc_loadWeakRetained(&self->_lookAroundView);
      v21 = [v20 lookAroundView];
      v22 = [v21 enableDebugLabelHighlighting];

      v23 = objc_loadWeakRetained(&self->_lookAroundView);
      v24 = [v23 lookAroundView];
      v25 = v24;
      if (v22)
      {
        [v24 debugHighlightLabelAtPoint:{v13, v15}];
      }

      else
      {
        v26 = [v24 labelMarkerForSelectionAtPoint:1 selectableLabelsOnly:{v13, v15}];

        v27 = objc_loadWeakRetained(&self->_lookAroundView);
        v28 = [v27 selectedLabelMarker];

        if (v28 && v28 != v26)
        {
          v29 = objc_loadWeakRetained(&self->_lookAroundView);
          [v29 deselectLabelMarker];
        }

        v30 = objc_loadWeakRetained(&self->_lookAroundView);
        v31 = v30;
        if (v26)
        {
          [v30 selectLabelMarker:v26];

          v32 = MKGetMKLookAroundLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v32, OS_LOG_TYPE_DEBUG, "[Gesture] _handleSingleNavigate: DidTapLabelMarker>", buf, 2u);
          }

          v33 = [(MKLookAroundGestureController *)self delegate];
          [v33 lookAroundGestureController:self didTapLabelMarker:v26];
        }

        else
        {
          v34 = [v30 tapAtPoint:{v13, v15}];

          v35 = MKGetMKLookAroundLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v35, OS_LOG_TYPE_DEBUG, "[Gesture] _handleSingleNavigate: DidTapAtPoint>", buf, 2u);
          }

          v33 = [(MKLookAroundGestureController *)self delegate];
          [v33 lookAroundGestureController:self didTapAtPoint:v34 areaAvailable:{v13, v15}];
        }

        if (!self->_userInteractionCount)
        {
          v36 = MKGetMKLookAroundLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1A2EA0000, v36, OS_LOG_TYPE_DEBUG, "[Gesture] _handleSingleNavigate: DidStopUserInteraction>", buf, 2u);
          }

          v37 = [(MKLookAroundGestureController *)self delegate];
          [v37 lookAroundGestureControllerDidStopUserInteraction:self];
        }

        v38 = [MEMORY[0x1E695DF00] date];
        singleTapTime = self->_singleTapTime;
        self->_singleTapTime = v38;
      }
    }
  }
}

- (void)_moveBackToReplayTap
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MKGetMKLookAroundLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = self;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "<MKLookAroundView: %p> -_moveBackToReplayTap", buf, 0xCu);
  }

  *buf = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69DF418] sharedSettingsExt];
  v5 = v4;
  if (v4)
  {
    [v4 muninTapState];
  }

  else
  {
    *buf = 0u;
    v15 = 0u;
  }

  v6 = [MEMORY[0x1E69DF418] sharedSettingsExt];
  [v6 setMuninReplayLastTap:0];

  v7 = *&buf[8];
  v8 = v15;
  WeakRetained = objc_loadWeakRetained(&self->_lookAroundView);
  v10 = [WeakRetained lookAroundView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MKLookAroundGestureController__moveBackToReplayTap__block_invoke;
  v12[3] = &unk_1E76CA6C0;
  v12[4] = self;
  *&v12[5] = v7;
  v13 = v8;
  v11 = [v10 muninMarkerAtCoordinate:v12 completeMarkerHandler:{v7, *&v8}];
}

void __53__MKLookAroundGestureController__moveBackToReplayTap__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
    v5 = [WeakRetained lookAroundView];
    v6 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__MKLookAroundGestureController__moveBackToReplayTap__block_invoke_2;
    v7[3] = &unk_1E76CA698;
    v7[4] = *(a1 + 32);
    v9 = *(a1 + 40);
    v8 = v3;
    v10 = *(a1 + 56);
    [v5 moveToMarker:v8 withHeading:0 animated:v7 completionHandler:v6];
  }
}

void __53__MKLookAroundGestureController__moveBackToReplayTap__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
    v4 = [WeakRetained lookAroundView];
    [*(a1 + 40) coordinate];
    v5 = *MEMORY[0x1E69DF4F0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__MKLookAroundGestureController__moveBackToReplayTap__block_invoke_3;
    v6[3] = &unk_1E76CA670;
    v6[4] = *(a1 + 32);
    [v4 setCenterCoordinate:v5 altitude:v6 yaw:*(a1 + 48) pitch:*(a1 + 56) duration:? timingCurve:? completion:?];
  }
}

uint64_t __53__MKLookAroundGestureController__moveBackToReplayTap__block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(result + 32) + 80) = 1;
  }

  return result;
}

- (MKLookAroundGestureController)initWithLookAroundView:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MKLookAroundGestureController;
  v5 = [(MKLookAroundGestureController *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_lookAroundView, v4);
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__handleSingleNavigate_];
    singleNavigateGestureRecognizer = v6->_singleNavigateGestureRecognizer;
    v6->_singleNavigateGestureRecognizer = v7;

    v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v6 action:sel__handlePan_];
    panGestureRecognizer = v6->_panGestureRecognizer;
    v6->_panGestureRecognizer = v9;

    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer setDelegate:v6];
    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer _setRequiresSystemGesturesToFail:1];
    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer setAllowedScrollTypesMask:2];
    v11 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:v6 action:sel__handleZoom_];
    zoomGestureRecognizer = v6->_zoomGestureRecognizer;
    v6->_zoomGestureRecognizer = v11;

    [(UIPinchGestureRecognizer *)v6->_zoomGestureRecognizer setDelegate:v6];
    WeakRetained = objc_loadWeakRetained(&v6->_lookAroundView);
    [WeakRetained addGestureRecognizer:v6->_singleNavigateGestureRecognizer];

    v14 = objc_loadWeakRetained(&v6->_lookAroundView);
    [v14 addGestureRecognizer:v6->_panGestureRecognizer];

    v15 = objc_loadWeakRetained(&v6->_lookAroundView);
    [v15 addGestureRecognizer:v6->_zoomGestureRecognizer];

    v16 = [MEMORY[0x1E695DF00] date];
    singleTapTime = v6->_singleTapTime;
    v6->_singleTapTime = v16;

    v6->_readyToReplayTap = 0;
    v18 = v6;
  }

  return v6;
}

@end