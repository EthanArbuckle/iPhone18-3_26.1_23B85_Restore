@interface ABActionSelectorDriver
- (_BYTE)didRevealScene;
- (double)overlayRenderInputs;
- (double)sceneRenderInputs;
- (id)_buttonBaseColor;
- (id)_sceneParamsForState:(int64_t)state;
- (id)initWithItems:(void *)items selectedIndex:(int)index isInWelcomeMode:(void *)mode renderBlock:;
- (uint64_t)isInWelcomeMode;
- (uint64_t)items;
- (uint64_t)pause;
- (uint64_t)resume;
- (uint64_t)selectedIndex;
- (void)_scheduleZoomOutIfNeeded;
- (void)_updateForDisplayLink:(id)link;
- (void)_updateRenderInputs;
- (void)_updateSceneInterpolatorsResettingToTarget:(BOOL)target;
- (void)_updateTransitionSchedulerState;
- (void)_updateWithState:(int64_t)state dragProgress:(id)progress;
- (void)endDragging;
- (void)occlusionDidChange:(void *)change;
- (void)startDragging;
- (void)updateDragProgress:(void *)progress;
- (void)updateItems:(int)items animateButtonColor:;
- (void)updateSelectedIndex:(int)index animateButtonColor:;
- (void)updateWithZoomedOutSceneParamsOverride:(void *)override zoomedInSceneParamsOverride:;
- (void)zoomIn;
- (void)zoomOut;
- (void)zoomOutAfterDelay:(uint64_t *)val;
@end

@implementation ABActionSelectorDriver

- (id)_buttonBaseColor
{
  v2 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedIndex];
  color = [v2 color];

  return color;
}

- (void)zoomOutAfterDelay:(uint64_t *)val
{
  if (val)
  {
    objc_initWeak(&location, val);
    v4 = val[4];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__ABActionSelectorDriver_zoomOutAfterDelay___block_invoke;
    v5[3] = &unk_278BFFD20;
    objc_copyWeak(&v6, &location);
    [(ABDelayedBlockExecutor *)v4 scheduleBlock:v5 delay:a2];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (id)_sceneParamsForState:(int64_t)state
{
  selfCopy = self;
  if (state > 1)
  {
    if (state == 3)
    {
      zoomedOutParams = self->_zoomedOutParams;
LABEL_22:
      self = zoomedOutParams;
      goto LABEL_23;
    }

    if (state != 2)
    {
      goto LABEL_23;
    }
  }

  else if (state)
  {
    if (state != 1)
    {
      goto LABEL_23;
    }

    zoomedOutParams = self->_zoomedInParams;
    goto LABEL_22;
  }

  dragProgress = self->_dragProgress;
  if (!dragProgress)
  {
    v11 = 48;
    if (!state)
    {
      v11 = 40;
    }

    zoomedOutParams = *(&selfCopy->super.isa + v11);
    goto LABEL_22;
  }

  [(NSNumber *)dragProgress doubleValue];
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = modf(v7, &__y);
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  v9 = 48;
  if (state)
  {
    v10 = 48;
  }

  else
  {
    v10 = 40;
  }

  if (state)
  {
    v9 = 40;
  }

  self = ABScrollDraggingStateParams(*(&selfCopy->super.isa + v10), *(&selfCopy->super.isa + v9), v8, 0.1);
LABEL_23:

  return self;
}

- (void)_updateSceneInterpolatorsResettingToTarget:(BOOL)target
{
  v5 = [(ABActionSelectorDriver *)self _sceneParamsForState:self->_state];
  sceneInterpolators = self->_sceneInterpolators;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__ABActionSelectorDriver__updateSceneInterpolatorsResettingToTarget___block_invoke;
  v8[3] = &unk_278BFFDB0;
  v9 = v5;
  targetCopy = target;
  v7 = v5;
  [(NSDictionary *)sceneInterpolators enumerateKeysAndObjectsUsingBlock:v8];
}

void __69__ABActionSelectorDriver__updateSceneInterpolatorsResettingToTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:@"Damping"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKeyedSubscript:@"DampingSmooth"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [*(a1 + 32) objectForKeyedSubscript:@"ResponseSmooth"];
  [v13 doubleValue];
  v15 = v14;

  [v22 setParameters:{v9, v12, 0.0, v15}];
  v16 = [*(a1 + 32) objectForKeyedSubscript:@"TimeFactor"];
  [v16 doubleValue];
  v18 = v17;

  [v22 setTimeFactor:v18];
  v19 = [*(a1 + 32) objectForKeyedSubscript:v6];

  [v19 doubleValue];
  v21 = v20;

  [v22 setTarget:v21];
  if (*(a1 + 40) == 1)
  {
    [v22 resetToTarget];
  }
}

- (void)_updateTransitionSchedulerState
{
  if (self->_isOccluded || self->_dragProgress || !self->_displayLink || !self->_isSceneRevealed)
  {
    [(ABDelayedBlockExecutor *)self->_transitionScheduler pause];
  }

  else
  {
    [(ABDelayedBlockExecutor *)self->_transitionScheduler resume];
  }
}

- (void)_updateWithState:(int64_t)state dragProgress:(id)progress
{
  progressCopy = progress;
  state = self->_state;
  if (state == state)
  {
    if (ABEqualObjects(self->_dragProgress, progressCopy))
    {
      goto LABEL_12;
    }

    state = self->_state;
  }

  self->_state = state;
  objc_storeStrong(&self->_dragProgress, progress);
  v8 = self->_state;
  if (v8 != state)
  {
    if (v8 == 2)
    {
      if (!self->_isInWelcomeMode)
      {
LABEL_10:
        [(ABActionSelectorDriver *)self _updateButtonAnimatorActiveState];
        [(ABActionSelectorDriver *)self _scheduleZoomOutIfNeeded];
        goto LABEL_11;
      }

      self->_isInWelcomeMode = 0;
      v9 = ABDefaultZoomedOutSceneParams();
      zoomedOutParams = self->_zoomedOutParams;
      self->_zoomedOutParams = v9;

      v11 = ABDefaultZoomedInSceneParams();
      zoomedInParams = self->_zoomedInParams;
      self->_zoomedInParams = v11;

      v8 = self->_state;
    }

    if ((v8 | 2) == 3)
    {
      [(ABDelayedBlockExecutor *)&self->_transitionScheduler->super.isa cancelPendingBlock];
    }

    goto LABEL_10;
  }

LABEL_11:
  [(ABActionSelectorDriver *)self _updateSceneInterpolatorsResettingToTarget:0];
LABEL_12:
}

- (void)_updateRenderInputs
{
  v3 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"Scale"];
  [v3 value];
  v5 = v4;

  memset(&v60, 0, sizeof(v60));
  CATransform3DMakeScale(&v60, v5, v5, v5);
  memset(&v59, 0, sizeof(v59));
  v6 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"Rotation"];
  [v6 value];
  v8 = ABDegreesToRadians(v7);
  CATransform3DMakeRotation(&v59, v8, 0.0, 1.0, 0.0);

  memset(&v58, 0, sizeof(v58));
  v9 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"xOffset"];
  [v9 value];
  v11 = v10;
  v12 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"yOffset"];
  [v12 value];
  v14 = v13;
  v15 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"zOffset"];
  [v15 value];
  CATransform3DMakeTranslation(&v58, v11, v14, v16);

  memset(&v57, 0, sizeof(v57));
  a = v60;
  b = v59;
  CATransform3DConcat(&v56, &a, &b);
  a = v58;
  CATransform3DConcat(&v57, &v56, &a);
  v17 = [(ABActionSelectorDriver *)self _sceneParamsForState:self->_state];
  color = [(ABDeviceButtonAnimator *)&self->_buttonAnimator->super.isa color];
  v53 = v57;
  v19 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"fStop"];
  [v19 value];
  v21 = v20;
  v22 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"FocusDistance"];
  [v22 value];
  v24 = v23;
  v25 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"FocalLength"];
  [v25 value];
  v27 = v26;
  v28 = [v17 objectForKeyedSubscript:@"ApertureBlades"];
  [v28 doubleValue];
  v30 = v29;

  v31 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"LightingIntensity"];
  [v31 value];
  v33 = v32;
  v34 = color;
  opacity = [(ABDeviceButtonAnimator *)self->_buttonAnimator opacity];
  pressProgress = [(ABDeviceButtonAnimator *)self->_buttonAnimator pressProgress];
  if (self->_isInWelcomeMode)
  {
    islandMode = [(ABDeviceButtonAnimator *)self->_buttonAnimator islandMode];
  }

  else
  {
    islandMode = 0;
  }

  self->_sceneRenderInputs.modelTransform = v53;
  self->_sceneRenderInputs.cameraAndLight.fStop = v21;
  self->_sceneRenderInputs.cameraAndLight.focusDistance = v24;
  self->_sceneRenderInputs.cameraAndLight.focalLength = v27;
  self->_sceneRenderInputs.cameraAndLight.apertureBladeCount = v30;
  self->_sceneRenderInputs.cameraAndLight.lightingIntensity = v33;
  objc_storeStrong(&self->_sceneRenderInputs.buttonHighlight.color, color);
  self->_sceneRenderInputs.buttonHighlight.opacity = opacity;
  self->_sceneRenderInputs.buttonPressProgress = pressProgress;
  self->_sceneRenderInputs.islandMode = islandMode;

  v38 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"ZoomInProgress"];
  [v38 value];
  v40 = v39;

  v41 = 1.0;
  if (self->_isInWelcomeMode)
  {
    v41 = ABClamp((v40 + -0.25) / 0.65 + 0.0, 0.0, 1.0);
  }

  pressProgress2 = [(ABDeviceButtonAnimator *)self->_buttonAnimator pressProgress];
  isInWelcomeMode = self->_isInWelcomeMode;
  v44 = v34;
  isRingHighlightVisible = [(ABDeviceButtonAnimator *)self->_buttonAnimator isRingHighlightVisible];
  v46 = 0.0;
  if (self->_isInWelcomeMode && (v46 = ABClamp(v40 / -0.15 + 1.0, 0.0, 1.0), self->_isInWelcomeMode))
  {
    v47 = 0;
    v48 = v40 * 0.25 + 0.25;
  }

  else
  {
    state = self->_state;
    if (state)
    {
      v50 = state == 3;
    }

    else
    {
      v50 = 1;
    }

    v47 = v50;
    v48 = 0.5;
  }

  v51 = !isInWelcomeMode;
  if (v40 > 0.3)
  {
    v51 = 1;
  }

  self->_overlayRenderInputs.carouselInputs.pressProgress = pressProgress2;
  self->_overlayRenderInputs.carouselInputs.itemOpacity = v41;
  self->_overlayRenderInputs.carouselInputs.selectedItemIgnoresOpacity = isInWelcomeMode;
  self->_overlayRenderInputs.carouselInputs.isScrollingEnabled = v51;
  color = self->_overlayRenderInputs.highlightRingInputs.color;
  self->_overlayRenderInputs.highlightRingInputs.color = v44;

  self->_overlayRenderInputs.highlightRingInputs.isVisible = isRingHighlightVisible;
  self->_overlayRenderInputs.detailsViewOpacity = v41;
  self->_overlayRenderInputs.welcomeViewOpacity = v46;
  self->_overlayRenderInputs.topShadowRatio = v48;
  self->_overlayRenderInputs.isZoomInByTapEnabled = v47;
}

- (void)_updateForDisplayLink:(id)link
{
  v41 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  v5 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:?];
  [v5 value];
  v7 = v6;

  v8 = [(ABActionSelectorDriver *)self _sceneParamsForState:self->_state];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  allValues = [(NSDictionary *)self->_sceneInterpolators allValues];
  v10 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v13 = (1.0 - v7 + -0.1) * -1.2 / 0.2 + 2.0;
    if (1.0 - v7 >= 0.3)
    {
      v13 = 0.8;
    }

    if (1.0 - v7 >= 0.1)
    {
      v14 = v13;
    }

    else
    {
      v14 = (1.0 - v7) * -3.0 / 0.1 + 5.0;
    }

    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        [v16 parameters];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = v14;
        if (self->_state != 3)
        {
          v24 = [v8 objectForKeyedSubscript:@"Response"];
          [v24 doubleValue];
          v23 = v25;
        }

        [v16 setParameters:{v18, v20, v23, v22}];
        [linkCopy duration];
        [v16 step:?];
      }

      v11 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  v26 = [(NSDictionary *)self->_sceneInterpolators objectForKeyedSubscript:@"ZoomInProgress"];
  [v26 value];
  v28 = v27;

  state = self->_state;
  if (state == 1 && v28 > 0.99)
  {
    v30 = 2;
LABEL_20:
    [(ABActionSelectorDriver *)self _updateWithState:v30 dragProgress:self->_dragProgress];
    goto LABEL_21;
  }

  if (state == 3 && v28 < 0.01)
  {
    v30 = 0;
    goto LABEL_20;
  }

LABEL_21:
  [(ABDeviceButtonAnimator *)self->_buttonAnimator update];
  [(ABActionSelectorDriver *)self _updateRenderInputs];
  renderBlock = self->_renderBlock;
  [(CADisplayLink *)self->_displayLink targetTimestamp];
  v33 = v32;
  [(CADisplayLink *)self->_displayLink duration];
  renderBlock[2](renderBlock, v33, v34);

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleZoomOutIfNeeded
{
  if (self->_state == 2 && self->_isSceneRevealed)
  {
    v3 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedIndex];
    canBeHighlighted = [v3 canBeHighlighted];

    if (canBeHighlighted)
    {

      [(ABActionSelectorDriver *)self zoomOutAfterDelay:?];
    }

    else
    {
      transitionScheduler = self->_transitionScheduler;

      [(ABDelayedBlockExecutor *)transitionScheduler cancelPendingBlock];
    }
  }
}

- (double)sceneRenderInputs
{
  if (self)
  {
    v4 = *(self + 344);
    *(a2 + 160) = *(self + 336);
    v5 = *(self + 320);
    *(a2 + 128) = *(self + 304);
    *(a2 + 144) = v5;
    v6 = *(self + 256);
    *(a2 + 64) = *(self + 240);
    *(a2 + 80) = v6;
    v7 = *(self + 288);
    *(a2 + 96) = *(self + 272);
    *(a2 + 112) = v7;
    v8 = *(self + 192);
    *a2 = *(self + 176);
    *(a2 + 16) = v8;
    v9 = *(self + 224);
    *(a2 + 32) = *(self + 208);
    *(a2 + 48) = v9;
    v10 = v4;
    v11 = *(self + 352);
    *(a2 + 168) = v10;
    *(a2 + 176) = v11;
    v12 = *(self + 360);
    *(a2 + 184) = v12;
  }

  else
  {
    *(a2 + 192) = 0;
    *&v12 = 0;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v12;
}

- (double)overlayRenderInputs
{
  if (self)
  {
    *a2 = *(self + 104);
    v4 = *(self + 128);
    *(a2 + 16) = *(self + 120);
    *(a2 + 24) = v4;
    *(a2 + 32) = *(self + 136);
    *(a2 + 40) = *(self + 144);
    v5 = *(self + 153);
    *(a2 + 49) = v5;
  }

  else
  {
    *(a2 + 64) = 0;
    *&v5 = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v5;
}

- (id)initWithItems:(void *)items selectedIndex:(int)index isInWelcomeMode:(void *)mode renderBlock:
{
  v44[10] = *MEMORY[0x277D85DE8];
  v10 = a2;
  modeCopy = mode;
  if (self)
  {
    v42.receiver = self;
    v42.super_class = ABActionSelectorDriver;
    v12 = objc_msgSendSuper2(&v42, sel_init);
    self = v12;
    if (v12)
    {
      v41 = v10;
      objc_storeStrong(v12 + 11, a2);
      self[12] = items;
      *(self + 82) = index;
      v40 = modeCopy;
      v13 = MEMORY[0x23EF01A70](modeCopy);
      v14 = self[1];
      self[1] = v13;

      v15 = 2;
      if (index)
      {
        v15 = 0;
      }

      self[7] = v15;
      v43[0] = @"Rotation";
      v39 = objc_opt_new();
      v44[0] = v39;
      v43[1] = @"Scale";
      v16 = objc_opt_new();
      v44[1] = v16;
      v43[2] = @"xOffset";
      v17 = objc_opt_new();
      v44[2] = v17;
      v43[3] = @"yOffset";
      v18 = objc_opt_new();
      v44[3] = v18;
      v43[4] = @"zOffset";
      v19 = objc_opt_new();
      v44[4] = v19;
      v43[5] = @"FocusDistance";
      v20 = objc_opt_new();
      v44[5] = v20;
      v43[6] = @"FocalLength";
      v21 = objc_opt_new();
      v44[6] = v21;
      v43[7] = @"fStop";
      v22 = objc_opt_new();
      v44[7] = v22;
      v43[8] = @"LightingIntensity";
      v23 = objc_opt_new();
      v44[8] = v23;
      v43[9] = @"ZoomInProgress";
      v24 = objc_opt_new();
      v44[9] = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:10];
      v26 = self[2];
      self[2] = v25;

      if (*(self + 82))
      {
        ABWelcomeModeZoomedOutSceneParams();
      }

      else
      {
        ABDefaultZoomedOutSceneParams();
      }
      v27 = ;
      v28 = self[5];
      self[5] = v27;

      v10 = v41;
      if (*(self + 82))
      {
        ABWelcomeModeZoomedInSceneParams();
      }

      else
      {
        ABDefaultZoomedInSceneParams();
      }
      v29 = ;
      v30 = self[6];
      self[6] = v29;

      v31 = [ABDeviceButtonAnimator alloc];
      _buttonBaseColor = [self _buttonBaseColor];
      v33 = [(ABDeviceButtonAnimator *)&v31->super.isa initWithBaseColor:_buttonBaseColor];
      v34 = self[3];
      self[3] = v33;

      v35 = objc_opt_new();
      v36 = self[4];
      self[4] = v35;

      modeCopy = v40;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return self;
}

- (uint64_t)resume
{
  v15 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (!*(result + 64))
    {
      v2 = ABLogger();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0(&dword_23DE18000, v3, v4, "(%{public}@) resume scene updates", v5, v6, v7, v8, 2u);
      }

      v9 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v1 selector:sel__updateForDisplayLink_];
      v10 = v1[8];
      v1[8] = v9;

      *&v11 = ABFrameRateRange();
      [v1[8] setPreferredFrameRateRange:v11];
      [v1[8] setHighFrameRateReason:ABHighFrameRateUpdateReasonMake(101)];
      v12 = v1[8];
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [v12 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

      [v1 _updateSceneInterpolatorsResettingToTarget:1];
      [v1 _updateTransitionSchedulerState];
      result = [v1 _updateButtonAnimatorActiveState];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)pause
{
  v13 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (*(result + 64))
    {
      v2 = ABLogger();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0(&dword_23DE18000, v3, v4, "(%{public}@) pause scene updates", v5, v6, v7, v8, 2u);
      }

      v9 = v1[8];
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [v9 removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

      v11 = v1[8];
      v1[8] = 0;

      [v1 _updateTransitionSchedulerState];
      result = [v1 _updateButtonAnimatorActiveState];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)updateSelectedIndex:(int)index animateButtonColor:
{
  if (self)
  {
    v6 = [*(self + 88) count] - 1;
    if (v6 >= a2)
    {
      v6 = a2;
    }

    *(self + 96) = v6;
    if (*(self + 56))
    {
      [self _scheduleZoomOutIfNeeded];
    }

    else if ((*(self + 82) & 1) == 0)
    {
      [self _updateWithState:1 dragProgress:*(self + 72)];
    }

    v7 = *(self + 24);
    _buttonBaseColor = [self _buttonBaseColor];
    [(ABDeviceButtonAnimator *)v7 setBaseColor:_buttonBaseColor animated:index];
  }
}

- (void)zoomIn
{
  if (self)
  {
    if ((*(self + 7) - 1) >= 2)
    {
      return [self _updateWithState:1 dragProgress:*(self + 9)];
    }
  }

  return self;
}

- (void)updateItems:(int)items animateButtonColor:
{
  v10 = a2;
  if (self)
  {
    objc_storeStrong((self + 88), a2);
    v6 = *(self + 96);
    v7 = [*(self + 88) count] - 1;
    if (v6 < v7)
    {
      v7 = v6;
    }

    *(self + 96) = v7;
    [self _scheduleZoomOutIfNeeded];
    v8 = *(self + 24);
    _buttonBaseColor = [self _buttonBaseColor];
    [(ABDeviceButtonAnimator *)v8 setBaseColor:_buttonBaseColor animated:items];
  }
}

- (void)zoomOut
{
  if (self)
  {
    v2 = *(self + 7);
    if (v2)
    {
      v3 = v2 == 3;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return [self _updateWithState:3 dragProgress:*(self + 9)];
    }
  }

  return self;
}

void __44__ABActionSelectorDriver_zoomOutAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[7];
    if (v2 && v2 != 3)
    {
      v4 = WeakRetained;
      [WeakRetained _updateWithState:3 dragProgress:WeakRetained[9]];
      WeakRetained = v4;
    }
  }
}

- (void)startDragging
{
  if (result)
  {
    v1 = result;
    if (result[7] == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = result[7];
    }

    [result _updateWithState:v2 dragProgress:&unk_28501EF18];

    return [v1 _updateTransitionSchedulerState];
  }

  return result;
}

- (void)updateDragProgress:(void *)progress
{
  if (progress)
  {
    v3 = progress[7];
    if (v3 == 3 || v3 == 0)
    {
      v5 = -a2;
      if (a2 >= 0.0)
      {
        v5 = a2;
      }

      if (v5 > 0.1)
      {
        v3 = 1;
      }
    }

    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [progress _updateWithState:v3 dragProgress:v6];
  }
}

- (void)endDragging
{
  if (result)
  {
    v1 = result;
    v2 = result[7];
    if (v2)
    {
      v3 = v2 == 3;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = result[7];
    }

    [result _updateWithState:v4 dragProgress:0];

    return [v1 _updateTransitionSchedulerState];
  }

  return result;
}

- (_BYTE)didRevealScene
{
  if (result)
  {
    v1 = result;
    result[81] = 1;
    [result _updateTransitionSchedulerState];
    [v1 _updateButtonAnimatorActiveState];

    return [v1 _scheduleZoomOutIfNeeded];
  }

  return result;
}

- (void)occlusionDidChange:(void *)change
{
  if (change)
  {
    if (*(change + 80) != a2)
    {
      *(change + 80) = a2;
      return [change _updateTransitionSchedulerState];
    }
  }

  return change;
}

- (void)updateWithZoomedOutSceneParamsOverride:(void *)override zoomedInSceneParamsOverride:
{
  v10 = a2;
  overrideCopy = override;
  if (self)
  {
    if (v10)
    {
      v6 = v10;
    }

    else
    {
      v6 = ABDefaultZoomedOutSceneParams();
    }

    v7 = self[5];
    self[5] = v6;

    if (overrideCopy)
    {
      v8 = overrideCopy;
    }

    else
    {
      v8 = ABDefaultZoomedInSceneParams();
    }

    v9 = self[6];
    self[6] = v8;

    [self _updateSceneInterpolatorsResettingToTarget:1];
  }
}

- (uint64_t)items
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)selectedIndex
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)isInWelcomeMode
{
  if (self)
  {
    v1 = *(self + 82);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end