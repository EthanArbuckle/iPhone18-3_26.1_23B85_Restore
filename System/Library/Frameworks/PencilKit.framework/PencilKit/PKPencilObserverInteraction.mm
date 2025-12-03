@interface PKPencilObserverInteraction
+ (id)interactionForScene:(uint64_t)scene;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (UIView)view;
- (id).cxx_construct;
- (uint64_t)_trackHoverInEdgeForInputPoint:(uint64_t)result;
- (uint64_t)isActive;
- (uint64_t)workaroundShadowUpdateEnded;
- (void)_updateActivePencilMinutes;
- (void)_updatePencilShadowView:(void *)result;
- (void)createShadowViewIfNecessary;
- (void)didMoveToView:(id)view;
- (void)hidePencilShadowViewIfNecessary;
- (void)hoverController:(id)controller didBegin:(id *)begin;
- (void)hoverController:(id)controller didUpdate:(id *)update;
- (void)hoverController:(id)controller intentionalHoverWithDuration:(double)duration;
- (void)hoverControllerDidEnd:(id)end;
- (void)initWithDelegate:(void *)delegate;
- (void)pencilInteractionDidTap:(id)tap;
- (void)pencilObserver:(id)observer didBeginAtPoint:(id *)point;
- (void)pencilObserver:(id)observer didMoveToPoint:(id *)point;
- (void)pencilObserverDidEnd:(id)end;
- (void)sceneDidEnterBackground:(id)background;
- (void)willMoveToView:(id)view;
@end

@implementation PKPencilObserverInteraction

- (void)initWithDelegate:(void *)delegate
{
  v3 = a2;
  if (delegate)
  {
    v8.receiver = delegate;
    v8.super_class = PKPencilObserverInteraction;
    v4 = objc_msgSendSuper2(&v8, sel_init);
    delegate = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 5, v3);
      v5 = objc_alloc_init(PKPencilStatisticsManager);
      v6 = delegate[7];
      delegate[7] = v5;
    }
  }

  return delegate;
}

- (void)willMoveToView:(id)view
{
  if (self->_pencilObserver)
  {
    view = [(PKPencilObserverInteraction *)self view];
    [view removeGestureRecognizer:self->_pencilObserver];

    pencilObserver = self->_pencilObserver;
    self->_pencilObserver = 0;
  }

  hoverController = self->_hoverController;
  self->_hoverController = 0;
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  [(PKPencilObserverInteraction *)self setView:viewCopy];
  if (viewCopy)
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__PKPencilObserverInteraction_didMoveToView___block_invoke;
    v12[3] = &unk_1E82D7C40;
    objc_copyWeak(&v14, &location);
    v13 = viewCopy;
    [PKHoverSettings checkIfHoverIsSupported:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  window = [viewCopy window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    WeakRetained = +[PKPencilInteraction observerPencilInteraction];
    [WeakRetained setDelegate:self];
    [viewCopy addInteraction:WeakRetained];
    objc_storeWeak(&self->_pencilInteraction, WeakRetained);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    window2 = [viewCopy window];
    windowScene2 = [window2 windowScene];
    [defaultCenter addObserver:self selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:windowScene2];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pencilInteraction);
    objc_storeWeak(&self->_pencilInteraction, 0);
    if (WeakRetained)
    {
      view = [WeakRetained view];
      [view removeInteraction:WeakRetained];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE348] object:0];
  }
}

void __45__PKPencilObserverInteraction_didMoveToView___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    if (WeakRetained)
    {
      v4 = [WeakRetained view];
      v5 = *(a1 + 32);

      if (v4 == v5)
      {
        v6 = [[PKHoverController alloc] initWithDelegate:*(a1 + 32) view:?];
        v7 = WeakRetained[8];
        WeakRetained[8] = v6;

        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics)
        {
          v5 = [MEMORY[0x1E695E000] standardUserDefaults];
          v9 = [v5 BOOLForKey:@"PKLogHoverEventsInPencilKit"];
        }

        else
        {
          v9 = 0;
        }

        v10 = WeakRetained;
        v11 = WeakRetained[8];
        if (v11)
        {
          *(v11 + 436) = v9;
        }

        if (has_internal_diagnostics)
        {

          v10 = WeakRetained;
        }

        v12 = [PKPencilObserverGestureRecognizer pencilObserverWithDelegate:v10];
        v13 = WeakRetained[9];
        WeakRetained[9] = v12;

        [*(a1 + 32) addGestureRecognizer:WeakRetained[9]];
      }
    }
  }
}

- (void)createShadowViewIfNecessary
{
  if (val)
  {
    if (!*(val + 6))
    {
      goto LABEL_10;
    }

    v2 = +[PKPencilDevice activePencil];
    if ([v2 isRollSupportUnknown])
    {
      v3 = *(val + 33);

      if ((v3 & 1) == 0)
      {
        v4 = os_log_create("com.apple.pencilkit", "PencilDevice");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Detected unknown roll state. Tearing down shadow view.", buf, 2u);
        }

        *(val + 32) = 0;
        [*(val + 6) removeFromSuperview];
        v5 = *(val + 6);
        *(val + 6) = 0;
      }
    }

    else
    {
    }

    if (!*(val + 6))
    {
LABEL_10:
      if ((*(val + 33) & 1) == 0)
      {
        *(val + 16) = 257;
        objc_initWeak(buf, val);
        v6 = +[PKPencilDevice activePencil];
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __58__PKPencilObserverInteraction_createShadowViewIfNecessary__block_invoke;
        v7[3] = &unk_1E82D6D08;
        objc_copyWeak(&v8, buf);
        [v6 checkIfRollIsSupported:v7];

        objc_destroyWeak(&v8);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __58__PKPencilObserverInteraction_createShadowViewIfNecessary__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    if (!WeakRetained)
    {
      goto LABEL_9;
    }

    WeakRetained[33] = 0;
  }

  else
  {
    v9 = WeakRetained;
    v4 = +[PKHoverSettings sharedSettings];
    v5 = [v4 toolShadowActiveOnOldPencils];

    WeakRetained = v9;
    if (!v9)
    {
      goto LABEL_9;
    }

    v9[33] = 0;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (WeakRetained[32] == 1 && !*(WeakRetained + 6))
  {
    v10 = WeakRetained;
    v6 = objc_alloc_init(PKPencilShadowView);
    v7 = v10[6];
    v10[6] = v6;

    [v10[6] setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v10 view];
    [v8 addSubview:v10[6]];

    WeakRetained = v10;
  }

LABEL_9:
}

- (void)_updatePencilShadowView:(void *)result
{
  if (result)
  {
    v2 = result;
    if (result[6])
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:result selector:sel_hidePencilShadowViewIfNecessary object:0];
      result = v2[1];
      v4 = v2[2];
      if (v4 == result || *(a2 + 64) - *(v4 - 72) >= 0.002)
      {
        v5 = 0xF0F0F0F0F0F0F0F1 * ((v4 - result) >> 3);
        if (v5 >= 0xA)
        {
          v6 = v4 - 136;
          do
          {
            if (v4 != result + 17)
            {
              memmove(result, result + 17, v6 - result);
              result = v2[1];
            }

            v4 = v6;
            v2[2] = v6;
            v5 = 0xF0F0F0F0F0F0F0F1 * ((v6 - result) >> 3);
            v6 -= 136;
          }

          while (v5 > 9);
          v4 = v6 + 136;
        }

        v7 = v2[3];
        if (v4 >= v7)
        {
          v14 = 0xF0F0F0F0F0F0F0F1 * ((v7 - result) >> 3);
          if (2 * v14 <= v5 + 1)
          {
            v15 = v5 + 1;
          }

          else
          {
            v15 = 2 * v14;
          }

          if (v14 >= 0xF0F0F0F0F0F0F0)
          {
            v16 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v16 = v15;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<PKInputPoint>>((v2 + 1), v16);
        }

        *v4 = *a2;
        v8 = *(a2 + 16);
        v9 = *(a2 + 32);
        v10 = *(a2 + 64);
        *(v4 + 48) = *(a2 + 48);
        *(v4 + 64) = v10;
        *(v4 + 16) = v8;
        *(v4 + 32) = v9;
        v11 = *(a2 + 80);
        v12 = *(a2 + 96);
        v13 = *(a2 + 112);
        *(v4 + 128) = *(a2 + 128);
        *(v4 + 96) = v12;
        *(v4 + 112) = v13;
        *(v4 + 80) = v11;
        v2[2] = v4 + 136;
        [v2[6] setLocation:{*a2, *(a2 + 8)}];
        v17 = *(a2 + 112);
        v18 = +[PKPencilDevice activePencil];
        [v18 baseRollAngle];
        v20 = v19 - v17;
        v21 = fmod(v20, 6.28318531);
        if (v20 <= 6.28318531 && v20 >= 0.0)
        {
          v21 = v20;
        }

        if (v21 < 0.0)
        {
          v21 = v21 + 6.28318531;
        }

        if (v21 == 0.0)
        {
          v21 = 0.0;
        }

        [v2[6] setRollAngle:v21];

        [v2[6] setZPosition:*(a2 + 56)];
        [v2[6] setAzimuth:*(a2 + 24) + 1.57079633];
        [v2[6] setAltitude:1.57079633 - *(a2 + 32)];
        [v2[6] setAccessibilityIdentifier:@"ToolShadow"];
        v23 = v2[8];
        v24 = +[PKHoverSettings sharedSettings];
        [v24 toolPreviewMaxZDistance];
        v25 = *(a2 + 112);
        v51[6] = *(a2 + 96);
        v51[7] = v25;
        v52 = *(a2 + 128);
        v26 = *(a2 + 48);
        v51[2] = *(a2 + 32);
        v51[3] = v26;
        v27 = *(a2 + 80);
        v51[4] = *(a2 + 64);
        v51[5] = v27;
        v28 = *(a2 + 16);
        v51[0] = *a2;
        v51[1] = v28;
        v30 = [(PKHoverController *)v23 adjustedZLimitFromLimit:v51 inputPoint:v29];

        v31 = +[PKHoverSettings sharedSettings];
        [v31 toolShadowFadeInDistance];
        v33 = v32;

        if (v30 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v30;
        }

        v35 = v30 - v34;
        v36 = *(a2 + 56);
        v37 = 1.0;
        if (v36 > v30 - v34)
        {
          v38 = v36 - v35;
          if (v36 - v35 >= v34)
          {
            v38 = v34;
          }

          v37 = 1.0 - v38 / v34;
        }

        v39 = v2[1];
        v40 = v2[2] - v39;
        v41 = 0xF0F0F0F0F0F0F0F1 * (v40 >> 3);
        if (v41 >= 0xA)
        {
          v43 = 0.0;
          if (v40 >= 137)
          {
            v44 = 2;
            if (v41 > 2)
            {
              v44 = v41;
            }

            v45 = *(v39 + 64);
            v46 = (v39 + 136);
            v47 = v44 - 1;
            do
            {
              v48 = v46[8];
              if (v48 > v45)
              {
                v43 = v43 + ((*(v46 - 16) - v46[1]) * (*(v46 - 16) - v46[1]) + (*(v46 - 17) - *v46) * (*(v46 - 17) - *v46)) / (v48 - v45);
              }

              v46 += 17;
              v45 = v48;
              --v47;
            }

            while (v47);
          }

          v42 = sqrt(v43) / v41 + -60.0;
        }

        else
        {
          v42 = -60.0;
        }

        v49 = v42 / -50.0;
        v50 = 0.0;
        if (v49 >= 0.0)
        {
          v50 = v49;
          if (v49 > 1.0)
          {
            v50 = 1.0;
          }
        }

        return [v2[6] setShadowAlphaMultiplier:v37 * v50];
      }
    }
  }

  return result;
}

+ (id)interactionForScene:(uint64_t)scene
{
  v2 = a2;
  objc_opt_self();
  v3 = [PKTextInputInteraction interactionForScene:v2];
  pencilObserverInteraction = [v3 pencilObserverInteraction];

  return pencilObserverInteraction;
}

- (uint64_t)isActive
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 64);
    if (v2 && (*(v2 + 56) & 1) != 0)
    {
      return 1;
    }

    else
    {
      v3 = *(self + 72);
      selfCopy = [v3 state] == 2 || objc_msgSend(*(selfCopy + 72), "state") == 1;
    }
  }

  return selfCopy;
}

- (void)sceneDidEnterBackground:(id)background
{
  v4 = +[PKPencilDevice activePencil];
  [v4 appSceneDidEnterBackground];

  if (self)
  {
    self->_wantsShadowView = 0;
    [(PKPencilShadowView *)self->_shadowView removeFromSuperview];
    shadowView = self->_shadowView;
    self->_shadowView = 0;
  }

  statisticsManager = self->_statisticsManager;

  [(PKPencilStatisticsManager *)statisticsManager endAnalyticsSessionIfNecessary];
}

- (uint64_t)_trackHoverInEdgeForInputPoint:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    *(result + 120) = *a2;
    v4 = *(result + 64);
    v5 = a2[7];
    v24 = a2[6];
    v25 = v5;
    v26 = *(a2 + 16);
    v6 = a2[3];
    v20 = a2[2];
    v21 = v6;
    v7 = a2[5];
    v22 = a2[4];
    v23 = v7;
    v8 = a2[1];
    v18 = *a2;
    v19 = v8;
    result = [(PKHoverController *)v4 isInEdgeOfScreen:?];
    if (result)
    {
      v9 = *(v3 + 56);
      if (!v9)
      {
        goto LABEL_9;
      }

      v10 = (v9 + 56);
    }

    else
    {
      v11 = *(v3 + 64);
      v12 = a2[7];
      v24 = a2[6];
      v25 = v12;
      v26 = *(a2 + 16);
      v13 = a2[3];
      v20 = a2[2];
      v21 = v13;
      v14 = a2[5];
      v22 = a2[4];
      v23 = v14;
      v15 = a2[1];
      v18 = *a2;
      v19 = v15;
      result = [(PKHoverController *)v11 isInExteriorOfScreen:?];
      if (!result)
      {
        goto LABEL_9;
      }

      v16 = *(v3 + 56);
      if (!v16)
      {
        goto LABEL_9;
      }

      v10 = (v16 + 64);
    }

    ++*v10;
LABEL_9:
    v17 = *(v3 + 56);
    if (v17)
    {
      ++*(v17 + 72);
    }
  }

  return result;
}

- (void)_updateActivePencilMinutes
{
  if (self)
  {
    v2 = CACurrentMediaTime();
    if (v2 - *(self + 96) >= 60.0)
    {
      v3 = *(self + 56);
      if (v3)
      {
        ++*(v3 + 120);
      }

      *(self + 96) = v2;
    }
  }
}

- (void)hoverController:(id)controller intentionalHoverWithDuration:(double)duration
{
  if (self)
  {
    statisticsManager = self->_statisticsManager;
    if (statisticsManager)
    {
      ptr = statisticsManager->_intentionalHoverStats.__ptr_;
      if (ptr)
      {
        PKRunningStat::push(ptr, duration);
      }

      statisticsManager->_intentionalHoverDuration = statisticsManager->_intentionalHoverDuration + duration;
    }
  }
}

- (void)hoverController:(id)controller didBegin:(id *)begin
{
  [(PKPencilStatisticsManager *)self->_statisticsManager startAnalyticsSessionIfNecessary];
  self->_timestampForHoverBegan = CACurrentMediaTime();
  v6 = *&begin->var13;
  v20 = *&begin->var11;
  v21 = v6;
  var15 = begin->var15;
  v7 = *&begin->var5;
  v16 = *&begin->var3;
  v17 = v7;
  v8 = *&begin->var9;
  v18 = *&begin->var7;
  v19 = v8;
  v9 = *&begin->var1;
  var0 = begin->var0;
  v15 = v9;
  [(PKPencilObserverInteraction *)self _trackHoverInEdgeForInputPoint:?];
  [(PKPencilObserverInteraction *)self _updateActivePencilMinutes];
  v10 = *&begin->var13;
  v20 = *&begin->var11;
  v21 = v10;
  var15 = begin->var15;
  v11 = *&begin->var5;
  v16 = *&begin->var3;
  v17 = v11;
  v12 = *&begin->var9;
  v18 = *&begin->var7;
  v19 = v12;
  v13 = *&begin->var1;
  var0 = begin->var0;
  v15 = v13;
  [(PKPencilObserverInteraction *)self _updatePencilShadowView:?];
}

- (void)hoverController:(id)controller didUpdate:(id *)update
{
  v6 = *&update->var13;
  v20 = *&update->var11;
  v21 = v6;
  var15 = update->var15;
  v7 = *&update->var5;
  v16 = *&update->var3;
  v17 = v7;
  v8 = *&update->var9;
  v18 = *&update->var7;
  v19 = v8;
  v9 = *&update->var1;
  var0 = update->var0;
  v15 = v9;
  [(PKPencilObserverInteraction *)self _trackHoverInEdgeForInputPoint:?];
  [(PKPencilObserverInteraction *)self _updateActivePencilMinutes];
  v10 = *&update->var13;
  v20 = *&update->var11;
  v21 = v10;
  var15 = update->var15;
  v11 = *&update->var5;
  v16 = *&update->var3;
  v17 = v11;
  v12 = *&update->var9;
  v18 = *&update->var7;
  v19 = v12;
  v13 = *&update->var1;
  var0 = update->var0;
  v15 = v13;
  [(PKPencilObserverInteraction *)self _updatePencilShadowView:?];
}

- (void)hoverControllerDidEnd:(id)end
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CACurrentMediaTime();
  v5 = v4;
  if (self)
  {
    v5 = v4 - self->_timestampForHoverBegan;
    v6 = self->_statisticsManager;
    if (v6)
    {
      v6->_accumulatedHoverDuration = v5 + v6->_accumulatedHoverDuration;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = os_log_create("com.apple.pencilkit", "Pencil Observer");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Pencil Hover Duration: %.3f", &v8, 0xCu);
  }

  [(PKPencilObserverInteraction *)self performSelector:sel_hidePencilShadowViewIfNecessary withObject:0 afterDelay:0.0666666667];
}

- (void)pencilObserver:(id)observer didBeginAtPoint:(id *)point
{
  [(PKPencilStatisticsManager *)self->_statisticsManager startAnalyticsSessionIfNecessary];
  [(PKPencilObserverInteraction *)self _updateActivePencilMinutes];
  self->_currentLocation = point->var0;
  self->_timestampForPencilObserverBegan = CACurrentMediaTime();
  [(PKHoverController *)self->_hoverController didReceiveNormalTouch:?];
  v6 = *&point->var13;
  v10[6] = *&point->var11;
  v10[7] = v6;
  var15 = point->var15;
  v7 = *&point->var5;
  v10[2] = *&point->var3;
  v10[3] = v7;
  v8 = *&point->var9;
  v10[4] = *&point->var7;
  v10[5] = v8;
  v9 = *&point->var1;
  v10[0] = point->var0;
  v10[1] = v9;
  [(PKPencilObserverInteraction *)self _updatePencilShadowView:v10];
}

- (void)pencilObserver:(id)observer didMoveToPoint:(id *)point
{
  [(PKPencilObserverInteraction *)self _updateActivePencilMinutes];
  self->_currentLocation = point->var0;
  [(PKHoverController *)self->_hoverController didReceiveNormalTouch:?];
  v6 = *&point->var13;
  v10[6] = *&point->var11;
  v10[7] = v6;
  var15 = point->var15;
  v7 = *&point->var5;
  v10[2] = *&point->var3;
  v10[3] = v7;
  v8 = *&point->var9;
  v10[4] = *&point->var7;
  v10[5] = v8;
  v9 = *&point->var1;
  v10[0] = point->var0;
  v10[1] = v9;
  [(PKPencilObserverInteraction *)self _updatePencilShadowView:v10];
}

- (void)pencilObserverDidEnd:(id)end
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = CACurrentMediaTime();
  v5 = v4;
  if (self)
  {
    v5 = v4 - self->_timestampForPencilObserverBegan;
    v6 = self->_statisticsManager;
    if (v6)
    {
      v6->_accumulatedOnScreenDuration = v5 + v6->_accumulatedOnScreenDuration;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = os_log_create("com.apple.pencilkit", "Pencil Observer");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEFAULT, "Pencil On Screen Duration: %.3f", &v8, 0xCu);
  }

  [(PKPencilObserverInteraction *)self performSelector:sel_hidePencilShadowViewIfNecessary withObject:0 afterDelay:0.0666666667];
}

- (uint64_t)workaroundShadowUpdateEnded
{
  if (result)
  {
    v1 = result;
    result = [(PKPencilObserverInteraction *)result isActive];
    if ((result & 1) == 0)
    {

      return [v1 performSelector:sel_hidePencilShadowViewIfNecessary withObject:0 afterDelay:0.0666666667];
    }
  }

  return result;
}

- (void)hidePencilShadowViewIfNecessary
{
  if (([(PKPencilObserverInteraction *)self isActive]& 1) == 0)
  {
    std::vector<PKInputPoint>::resize(&self->_inputPoints.__begin_, 0);
    shadowView = self->_shadowView;

    [(PKPencilShadowView *)shadowView hideShadow];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([touchCopy type] == 2 && (hoverController = self->_hoverController) != 0)
  {
    [(PKHoverController *)hoverController didReceiveNormalTouch:touchCopy];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)pencilInteractionDidTap:(id)tap
{
  [(PKPencilStatisticsManager *)self->_statisticsManager startAnalyticsSessionIfNecessary];
  hoverController = self->_hoverController;
  if (hoverController)
  {
    waitingForHoverHoldTimestamp_low = LOBYTE(hoverController->_waitingForHoverHoldTimestamp);
    statisticsManager = self->_statisticsManager;
    if (waitingForHoverHoldTimestamp_low == 1)
    {
      if (!statisticsManager)
      {
        return;
      }

      p_doubleTapsInRange = &statisticsManager->_doubleTapsInRange;
      goto LABEL_8;
    }
  }

  else
  {
    statisticsManager = self->_statisticsManager;
  }

  if (!statisticsManager)
  {
    return;
  }

  p_doubleTapsInRange = &statisticsManager->_doubleTapsOutsideRange;
LABEL_8:
  ++*p_doubleTapsInRange;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end