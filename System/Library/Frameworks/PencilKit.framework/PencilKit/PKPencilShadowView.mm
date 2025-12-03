@interface PKPencilShadowView
+ (id)shadowViewForScene:(id)scene;
+ (void)createShadowViewForSceneIfNecessary:(id)necessary;
+ (void)hideShadowViewForSceneIfNecessary:(id)necessary;
- (CGPoint)location;
- (PKPencilShadowView)initWithFrame:(CGRect)frame;
- (uint64_t)_shadowShouldBeVisibleForCurrentTiledView;
- (uint64_t)_updateFrame;
- (uint64_t)_updateFrameIfNecessary;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)keepVisibleInTiledView:(id)view;
- (void)layoutSubviews;
- (void)pauseUpdateCycle;
- (void)setLocation:(CGPoint)location;
- (void)updateInk:(id)ink animated:(BOOL)animated;
- (void)updateOpacity:(double)opacity animated:(BOOL)animated;
@end

@implementation PKPencilShadowView

- (PKPencilShadowView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = PKPencilShadowView;
  v3 = [(PKPencilShadowView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_minimumFrameDuration = 0.00833333333;
    v3->_shadowAlphaMultiplier = 1.0;
    +[PKMetalUtility layerContentsScale];
    v4->_contentScale = v5;
    +[PKMetalPencilShadowRenderer pixelSize];
    contentScale = v4->_contentScale;
    v4->_viewSize.width = v7 / contentScale;
    v4->_viewSize.height = v8 / contentScale;
    v9 = +[PKHoverSettings sharedSettings];
    [v9 toolShadowMaxOpacityInDrawingCanvas];
    v4->_shadowAlpha = v10;

    v11 = objc_alloc_init(MEMORY[0x1E69793F0]);
    objc_storeStrong(&v4->_metalLayer, v11);
    [(CAMetalLayer *)v4->_metalLayer setPixelFormat:80];
    layer = [(PKPencilShadowView *)v4 layer];
    [layer addSublayer:v11];

    v13 = +[PKMetalUtility defaultDevice];
    [(CAMetalLayer *)v11 setDevice:v13];

    [(CAMetalLayer *)v11 setOpaque:0];
    [(CAMetalLayer *)v11 setFramebufferOnly:1];
    +[PKMetalPencilShadowRenderer pixelSize];
    [(CAMetalLayer *)v11 setDrawableSize:?];
    [(CAMetalLayer *)v11 setContentsScale:v4->_contentScale];
    [(CAMetalLayer *)v11 setPresentsWithTransaction:1];
    [(CAMetalLayer *)v11 setAllowsHitTesting:0];
    [(CAMetalLayer *)v11 setLowLatency:0];
    if (objc_opt_respondsToSelector())
    {
      [(CAMetalLayer *)v11 setLowWorkload:1];
    }

    metalLayer = v4->_metalLayer;
    v4->_metalLayer = v11;
    v15 = v11;

    [(PKPencilShadowView *)v4 setNeedsLayout];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_attr_make_with_qos_class(v16, QOS_CLASS_USER_INTERACTIVE, 0);

    v18 = dispatch_queue_create("com.apple.pencilkit.shadowRenderer", v17);
    renderQueue = v4->_renderQueue;
    v4->_renderQueue = v18;

    device = [(CAMetalLayer *)v4->_metalLayer device];
    v21 = [PKMetalResourceHandler sharedResourceHandlerWithDevice:device];

    v22 = [PKMetalPencilShadowRenderer alloc];
    device2 = [(CAMetalLayer *)v4->_metalLayer device];
    shaderLibrary = [(PKMetalResourceHandler *)v21 shaderLibrary];
    v25 = [(PKMetalPencilShadowRenderer *)v22 initWithDevice:device2 library:shaderLibrary];
    shadowRenderer = v4->_shadowRenderer;
    v4->_shadowRenderer = v25;

    v4->_updateCyclePaused = 1;
    [(PKPencilShadowView *)v4 setUserInteractionEnabled:0];
    layer2 = [(PKPencilShadowView *)v4 layer];
    [layer2 setAllowsHitTesting:0];

    [(PKPencilShadowView *)v4 setAnchorPoint:0.5, 0.0];
    v28 = v4->_renderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PKPencilShadowView_initWithFrame___block_invoke;
    block[3] = &unk_1E82D7148;
    v29 = v4;
    v34 = v29;
    dispatch_async(v28, block);
    v30 = +[PKRendererVSyncController sharedController];
    [(PKRendererVSyncController *)v30 addRendererController:v29];

    v31 = +[PKRendererVSyncController sharedController];
    v29->_useVSyncController = [(PKRendererVSyncController *)v31 isActive];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[PKRendererVSyncController sharedController];
  [(PKRendererVSyncController *)v3 removeRendererController:?];

  [(NSTimer *)self->_idleTimer invalidate];
  idleTimer = self->_idleTimer;
  self->_idleTimer = 0;

  v5.receiver = self;
  v5.super_class = PKPencilShadowView;
  [(PKPencilShadowView *)&v5 dealloc];
}

+ (void)createShadowViewForSceneIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (_UIUpdateCycleEnabled())
  {
    v3 = [PKPencilObserverInteraction interactionForScene:necessaryCopy];
    [(PKPencilObserverInteraction *)v3 createShadowViewIfNecessary];
  }
}

+ (void)hideShadowViewForSceneIfNecessary:(id)necessary
{
  v3 = [PKPencilObserverInteraction interactionForScene:necessary];
  if (v3)
  {
    *(v3 + 32) = 0;
    v5 = v3;
    [*(v3 + 48) removeFromSuperview];
    v4 = v5[6];
    v5[6] = 0;

    v3 = v5;
  }
}

+ (id)shadowViewForScene:(id)scene
{
  v3 = [PKPencilObserverInteraction interactionForScene:scene];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void __38__PKPencilShadowView_startUpdateCycle__block_invoke(uint64_t a1)
{
  _UIMediaTimeForMachTime();
  v3 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained bounds];
    IsEmpty = CGRectIsEmpty(v10);
    v5 = v8;
    if (!IsEmpty && (*(v8 + 546) & 1) == 0)
    {
      v7 = v3 + *(v8 + 472) * 2.0 + -0.001;
      if (CACurrentMediaTime() < v7)
      {
        atomic_store(*&v7, (v8 + 584));
      }

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [MEMORY[0x1E6979518] setAnimationDuration:0.0];
      [(PKPencilShadowView *)v8 _updateFrame];
      [MEMORY[0x1E6979518] commit];
      v5 = v8;
    }
  }
}

void __38__PKPencilShadowView_startUpdateCycle__block_invoke_2(uint64_t a1)
{
  _UIMediaTimeForMachTime();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 >= 1)
  {
    v5 = 1.0 / v4;
    mach_absolute_time();
    _UIMediaTimeForMachTime();
    v7 = v3 - v5 - v6;
    if (v7 > 0.0 && v7 < v5 / 3.0)
    {
      v9 = _UIMachTimeForMediaTime();
      mach_wait_until(v9);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v47 = WeakRetained;
    [WeakRetained bounds];
    IsEmpty = CGRectIsEmpty(v70);
    v11 = v47;
    if (!IsEmpty)
    {
      ShouldBeVisibleForCurrentTiled = [(PKPencilShadowView *)v47 _shadowShouldBeVisibleForCurrentTiledView];
      v14 = v47;
      if ((ShouldBeVisibleForCurrentTiled & 1) != 0 || *(v47 + 416) == 0.0)
      {
        v15 = *(v47 + 552);
        *(v47 + 552) = v15 + 1;
        *(v47 + 546) = (v15 < 15) & v15;
        if (*(v47 + 576) == 1 && (*(v47 + 546) & 1) == 0)
        {
          v16 = COERCE_DOUBLE(atomic_load((v47 + 584)));
          if (v3 < v16)
          {
            v17 = -5;
            while (!__CFADD__(v17++, 1))
            {
              usleep(0xFAu);
              v14 = v47;
              v19 = COERCE_DOUBLE(atomic_load((v47 + 584)));
              if (v3 >= v19)
              {
                goto LABEL_21;
              }
            }

            *(v14 + 546) = 1;
            _UIMachTimeForMediaTime();
            kdebug_trace();
            v14 = v47;
          }
        }

LABEL_21:
        v20 = *(v14 + 424);
        v21 = *(v14 + 416);
        v22 = 10.0;
        if (v21 > v20)
        {
          v22 = 30.0;
        }

        v23 = (v21 + v20 * (v22 + -1.0)) / v22;
        *(v14 + 424) = v23;
        v24 = *(v14 + 632) * (*(v14 + 480) * v23);
        v25 = 0.0;
        if (v24 >= 0.00390625)
        {
          v25 = v24;
          if (v24 > 0.99609375)
          {
            v25 = 1.0;
          }
        }

        v26 = CACurrentMediaTime();
        v27 = v47;
        if (*(v47 + 624) && *(v47 + 416) == 1.0 && *(v47 + 424) > 0.9 && v26 - *(v47 + 496) > 0.1 && (*(v47 + 544) & 1) == 0)
        {
          [v47 updateInk:0 animated:1];
          v27 = v47;
        }

        [v27 zPosition];
        v29 = v28;
        [v47 altitude];
        v31 = v30;
        [v47 rollAngle];
        v33 = v32;
        v34 = *(v47 + 512);
        v35 = [v47 ink];
        if (v34 == 1)
        {
          v36 = *(v47 + 528);

          v37 = *(v47 + 520);
          v38 = v47;
          v39 = v26 - *(v47 + 504) + v26 - *(v47 + 504);
          v40 = 1.0;
          if (v39 >= 1.0)
          {
            v41 = *(v47 + 528);
            *(v47 + 528) = 0;

            v42 = *(v47 + 520);
            *(v47 + 520) = 0;

            v38 = v47;
            *(v47 + 512) = 0;
            v35 = v36;
          }

          else
          {
            v35 = v36;
            v40 = v39;
          }
        }

        else
        {
          v37 = 0;
          v40 = 1.0;
          v38 = v47;
        }

        if (v25 == 0.0 || (*(v38 + 546) & 1) == 0)
        {
          [MEMORY[0x1E6979518] activate];
          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          [MEMORY[0x1E6979518] setAnimationDuration:0.0];
          [v47 setAlpha:v25];
          [v47 setHidden:v25 == 0.0];
          if (v25 > 0.0)
          {
            v43 = *(v47 + 440);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __48__PKPencilShadowView__vsyncWithTargetTimestamp___block_invoke;
            block[3] = &unk_1E82DAA60;
            block[4] = v47;
            v49 = v35;
            v50 = v37;
            v51 = v33;
            v52 = v31;
            v53 = v40;
            dispatch_async(v43, block);
            if ([*(v47 + 408) isDrawableAvailable])
            {
              v44 = [*(v47 + 408) nextDrawable];
              if (v44)
              {
                v63 = 0;
                v64 = &v63;
                v65 = 0x3032000000;
                v66 = __Block_byref_object_copy__21;
                v67 = __Block_byref_object_dispose__21;
                v68 = 0;
                v45 = *(v47 + 440);
                *buf = MEMORY[0x1E69E9820];
                v55 = 3221225472;
                v56 = __53__PKPencilShadowView__renderAtHeight_altitude_alpha___block_invoke;
                v57 = &unk_1E82DAA88;
                v60 = &v63;
                v58 = v47;
                v46 = v44;
                v59 = v46;
                v61 = v31;
                v62 = v29;
                dispatch_sync(v45, buf);
                [v64[5] waitUntilScheduled];
                [v46 present];

                _Block_object_dispose(&v63, 8);
              }

              else
              {
                v46 = 0;
              }
            }

            else
            {
              v46 = os_log_create("com.apple.pencilkit", "");
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1C7CCA000, v46, OS_LOG_TYPE_DEFAULT, "PKPencilShadowView: No drawable available; skipping frame", buf, 2u);
              }
            }
          }

          [MEMORY[0x1E6979518] commit];
          if (v25 == 0.0 && *(v47 + 416) == 0.0 && (*(v47 + 512) & 1) == 0)
          {
            [(PKPencilShadowView *)v47 pauseUpdateCycle];
          }
        }
      }

      else
      {
        [v47 updateOpacity:1 animated:0.0];
      }

      v11 = v47;
    }
  }
}

- (void)didMoveToSuperview
{
  superview = [(PKPencilShadowView *)self superview];

  if (superview)
  {
    window = [(PKPencilShadowView *)self window];
    screen = [window screen];
    maximumFramesPerSecond = [screen maximumFramesPerSecond];

    if (maximumFramesPerSecond >= 1)
    {
      self->_minimumFrameDuration = 1.0 / maximumFramesPerSecond;
    }
  }

  else
  {

    [(PKPencilShadowView *)self pauseUpdateCycle];
  }
}

- (void)pauseUpdateCycle
{
  if (self)
  {
    *(self + 545) = 1;
    if (*(self + 568))
    {
      _UIUpdateRequestDeactivate();
      _UIUpdateSequenceRemoveItem();
      _UIUpdateSequenceRemoveItem();
      *(self + 568) = 0;
      *(self + 560) = 0;
    }

    *(self + 424) = 0;
    [*(self + 488) invalidate];
    v2 = *(self + 488);
    *(self + 488) = 0;
  }
}

- (void)updateOpacity:(double)opacity animated:(BOOL)animated
{
  self->_targetOpacity = opacity;
  if (opacity > 0.0 && self->_updateCyclePaused)
  {
    self->_updateCyclePaused = 0;
    self->_presentationCount = 0;
    if (!self->_vsyncItem)
    {
      window = [(PKPencilShadowView *)self window];
      screen = [window screen];
      maximumFramesPerSecond = [screen maximumFramesPerSecond];

      objc_initWeak(&location, self);
      _UIUpdateRequestActivate();
      v14[2] = MEMORY[0x1E69E9820];
      v14[3] = 3221225472;
      v14[4] = __38__PKPencilShadowView_startUpdateCycle__block_invoke;
      v14[5] = &unk_1E82DA9E8;
      objc_copyWeak(&v15, &location);
      self->_commitItem = _UIUpdateSequenceInsertItem();
      from[0] = MEMORY[0x1E69E9820];
      from[1] = 3221225472;
      from[2] = __38__PKPencilShadowView_startUpdateCycle__block_invoke_2;
      from[3] = &unk_1E82DAA10;
      v14[1] = maximumFramesPerSecond;
      objc_copyWeak(v14, &location);
      self->_vsyncItem = _UIUpdateSequenceInsertItem();
      objc_destroyWeak(v14);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    if (!self->_idleTimer)
    {
      objc_initWeak(from, self);
      v8 = MEMORY[0x1E695DFF0];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__PKPencilShadowView_updateOpacity_animated___block_invoke;
      v11[3] = &unk_1E82DAA38;
      objc_copyWeak(&v12, from);
      v9 = [v8 scheduledTimerWithTimeInterval:1 repeats:v11 block:0.5];
      idleTimer = self->_idleTimer;
      self->_idleTimer = v9;

      objc_destroyWeak(&v12);
      objc_destroyWeak(from);
    }
  }
}

void __45__PKPencilShadowView_updateOpacity_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[61])
    {
      v3 = WeakRetained;
      v2 = CACurrentMediaTime();
      WeakRetained = v3;
      if (v2 - *(v3 + 62) > 10.0 && (v3[68] & 1) == 0)
      {
        [v3 updateOpacity:1 animated:0.0];
        WeakRetained = v3;
      }
    }
  }
}

- (void)updateInk:(id)ink animated:(BOOL)animated
{
  animatedCopy = animated;
  inkCopy = ink;
  ink = self->_ink;
  inkCopy2 = ink;
  v10 = inkCopy2;
  if (inkCopy2 != inkCopy)
  {
    identifier = [(PKInk *)inkCopy2 identifier];
    identifier2 = [(PKInk *)inkCopy identifier];
    v13 = [identifier isEqual:identifier2];

    if ((v13 & 1) == 0)
    {
      objc_storeStrong(&self->_ink, ink);
      if (animatedCopy && !self->_updateCyclePaused)
      {
        self->_animatingInk = 1;
        self->_animatingInkBeginTimestamp = CACurrentMediaTime();
        objc_storeStrong(&self->_animatingInkOld, ink);
        objc_storeStrong(&self->_animatingInkNew, ink);
      }

      else
      {
        self->_animatingInk = 0;
        renderQueue = self->_renderQueue;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __41__PKPencilShadowView_updateInk_animated___block_invoke;
        v15[3] = &unk_1E82D6E70;
        v15[4] = self;
        v16 = inkCopy;
        dispatch_async(renderQueue, v15);
      }
    }
  }
}

- (void)setLocation:(CGPoint)location
{
  self->_location = location;
  if (CACurrentMediaTime() - self->_latestKeepVisibleTimestamp < 10.0)
  {
    [(PKPencilShadowView *)self updateOpacity:1 animated:1.0];
  }

  [(PKPencilShadowView *)self _updateFrameIfNecessary];
}

- (uint64_t)_updateFrameIfNecessary
{
  if (result)
  {
    v1 = result;
    [*(result + 408) bounds];
    v4 = v3 == *(v1 + 456) && v2 == *(v1 + 464);
    if (!v4 || ((result = [v1 bounds], v6 == *(v1 + 456)) ? (v7 = v5 == *(v1 + 464)) : (v7 = 0), !v7 || *(v1 + 545) == 1))
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [MEMORY[0x1E6979518] setAnimationDuration:0.0];
      [(PKPencilShadowView *)v1 _updateFrame];
      v8 = MEMORY[0x1E6979518];

      return [v8 commit];
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPencilShadowView;
  [(PKPencilShadowView *)&v3 layoutSubviews];
  [(CAMetalLayer *)self->_metalLayer setFrame:0.0, 0.0, self->_viewSize.width, self->_viewSize.height];
}

- (uint64_t)_shadowShouldBeVisibleForCurrentTiledView
{
  if (result)
  {
    if (*(result + 544))
    {
      return 1;
    }

    else
    {
      v14 = v4;
      v15 = v3;
      v16 = v2;
      v17 = v1;
      v18 = v5;
      v19 = v6;
      v7 = objc_loadWeakRetained((result + 536));
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v10 = [bundleIdentifier isEqualToString:@"com.apple.freeform"];

      if (v10)
      {

        if (v7)
        {
          return 1;
        }
      }

      else
      {
        v11 = v7;
        if (v7)
        {
          window = [v7 window];

          v11 = v7;
          if (window)
          {
            v11 = v7;
            while (([v11 isHidden] & 1) == 0)
            {
              superview = [v11 superview];

              v11 = superview;
              if (!superview)
              {

                return 1;
              }
            }
          }
        }
      }

      CACurrentMediaTime();
      return 0;
    }
  }

  return result;
}

- (void)keepVisibleInTiledView:(id)view
{
  objc_storeWeak(&self->_keepVisibleInTiledView, view);
  self->_latestKeepVisibleTimestamp = CACurrentMediaTime();
  ShouldBeVisibleForCurrentTiled = [(PKPencilShadowView *)self _shadowShouldBeVisibleForCurrentTiledView];
  v5 = 0.0;
  if (ShouldBeVisibleForCurrentTiled)
  {
    v5 = 1.0;
  }

  [(PKPencilShadowView *)self updateOpacity:1 animated:v5];
}

- (uint64_t)_updateFrame
{
  v2 = *(self + 464) * 0.5;
  +[PKMetalPencilShadowRenderer maxBlurSize];
  v4 = v2 * v3;
  +[PKMetalPencilShadowRenderer pixelSize];
  memset(&v19, 0, sizeof(v19));
  v6 = v4 / v5;
  [self azimuth];
  CGAffineTransformMakeRotation(&v19, v7);
  v8 = v19.tx + v6 * v19.c + v19.a * 0.0;
  v9 = v19.ty + v6 * v19.d + v19.b * 0.0;
  [self location];
  v11 = v10 - *(self + 456) * 0.5 - v8;
  [self location];
  v13 = v12 - v9;
  v14 = *(self + 456);
  v15 = *(self + 464);
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v18.a = *MEMORY[0x1E695EFD0];
  *&v18.c = v16;
  *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
  [self setTransform:&v18];
  [self setFrame:{v11, v13, v14, v15}];
  v18 = v19;
  [self setTransform:&v18];
  return [*(self + 408) setFrame:{0.0, 0.0, *(self + 456), *(self + 464)}];
}

uint64_t __53__PKPencilShadowView__renderAtHeight_altitude_alpha___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 432) commandQueue];
  v3 = [v2 commandBuffer];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  +[PKMetalPencilShadowRenderer pixelSize];
  v7 = v6;
  v8 = *(*(a1 + 32) + 432);
  v9 = [*(a1 + 40) texture];
  [v8 renderInto:v9 commandBuffer:*(*(*(a1 + 48) + 8) + 40) position:1 azimuth:v7 * 0.5 altitude:0.0 height:0.0 alpha:*(a1 + 56) scale:*(a1 + 64) clearFramebuffer:1.0 grayscale:{1.0, 0.1}];

  v10 = *(*(*(a1 + 48) + 8) + 40);

  return [v10 commit];
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end