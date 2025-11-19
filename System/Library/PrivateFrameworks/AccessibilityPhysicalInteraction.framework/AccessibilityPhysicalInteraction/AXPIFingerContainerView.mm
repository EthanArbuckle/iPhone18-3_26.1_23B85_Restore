@interface AXPIFingerContainerView
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerContainerView)initWithFrame:(CGRect)a3;
- (CGRect)rectForFingersAtPoints:(id)a3;
- (unint64_t)indexOfFingerAtPoint:(CGPoint)a3;
- (void)_updateFingerModelViews:(BOOL)a3 startPointForAnimation:(CGPoint)a4;
- (void)_updateLumaMeasurementViewFrame;
- (void)_updatePinchChainAppearance;
- (void)_updateSystemFiltersWithBackgroundLuminanceLevel:(unint64_t)a3;
- (void)animateToTapWithDuration:(double)a3;
- (void)cancelCircularProgressAnimation;
- (void)clearAllFingersAnimated:(BOOL)a3 endPointForAnimation:(CGPoint)a4;
- (void)performCircularProgressAnimationOnFingersWithDuration:(double)a3 completion:(id)a4;
- (void)setPointerLumaMeasurementViewEnabled:(BOOL)a3;
- (void)setPressedState:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldSuppressFingerVisuals:(BOOL)a3;
- (void)showFingerModels:(id)a3 animated:(BOOL)a4 startPointForAnimation:(CGPoint)a5 shouldShowPinchChain:(BOOL)a6;
- (void)updateWithFingerModel:(id)a3 forFingerAtIndex:(unint64_t)a4;
@end

@implementation AXPIFingerContainerView

- (AXPIFingerContainerView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = AXPIFingerContainerView;
  v3 = [(AXPIFingerContainerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    fingerViews = v3->_fingerViews;
    v3->_fingerViews = v4;

    objc_initWeak(&location, v3);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v8 = *MEMORY[0x277D76480];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__AXPIFingerContainerView_initWithFrame___block_invoke;
    v11[3] = &unk_278BE6750;
    objc_copyWeak(&v12, &location);
    v9 = [v6 addObserverForName:v8 object:0 queue:v7 usingBlock:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __41__AXPIFingerContainerView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFingerModelViews:0 startPointForAnimation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
}

- (void)_updateFingerModelViews:(BOOL)a3 startPointForAnimation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v26 = a3;
  v32 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_fingerViews enumerateObjectsUsingBlock:&__block_literal_global_7];
  v7 = [(UIView *)self->_viewForAnimatingAlpha subviews];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_285];

  [(NSMutableArray *)self->_fingerViews removeAllObjects];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(AXPIFingerContainerView *)self fingerModels];
  v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v11 = !v26;
    if (x != *MEMORY[0x277CBF348])
    {
      v11 = 1;
    }

    if (y == *(MEMORY[0x277CBF348] + 8))
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [(AXPIFingerContainerView *)self appearanceDelegate];
        [v15 fingerWidth];
        v17 = v16;

        [v14 location];
        if (v26)
        {
          v19 = y;
          v18 = x;
        }

        if ((v12 & 1) == 0)
        {
          [v14 location];
        }

        v20 = v18 - v17 * 0.5;
        v21 = v19 - v17 * 0.5;
        v22 = [AXPIFingerView alloc];
        v23 = [(AXPIFingerContainerView *)self appearanceDelegate];
        v24 = [(AXPIFingerView *)v22 initWithFrame:v23 appearanceDelegate:v20, v21, v17, v17];

        -[AXPIFingerView setPressed:animated:](v24, "setPressed:animated:", [v14 isPressed], -[AXPIFingerContainerView shouldAnimatePress](self, "shouldAnimatePress"));
        -[AXPIFingerView setSelected:](v24, "setSelected:", [v14 isSelected]);
        [v14 force];
        [(AXPIFingerView *)v24 setForce:?];
        [(UIView *)self->_viewForAnimatingAlpha addSubview:v24];
        [(NSMutableArray *)self->_fingerViews addObject:v24];
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }
}

- (void)showFingerModels:(id)a3 animated:(BOOL)a4 startPointForAnimation:(CGPoint)a5 shouldShowPinchChain:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [objc_alloc(MEMORY[0x277D760C0]) initWithTransitionBoundaries:self delegate:0.45 frame:{0.55, 0.0, 0.0, 19.0, 19.0}];
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  self->_pointerLumaMeasurementView = v12;

  v14 = [MEMORY[0x277CE7E18] sharedInstance];
  -[AXPIFingerContainerView setPointerLumaMeasurementViewEnabled:](self, "setPointerLumaMeasurementViewEnabled:", [v14 assistiveTouchMouseBehavesLikeFinger]);

  [(AXPIFingerContainerView *)self addSubview:self->_pointerLumaMeasurementView];
  viewForAnimatingAlpha = self->_viewForAnimatingAlpha;
  if (viewForAnimatingAlpha)
  {
    [(UIView *)viewForAnimatingAlpha removeFromSuperview];
  }

  v16 = objc_alloc(MEMORY[0x277D75D18]);
  [(AXPIFingerContainerView *)self bounds];
  v17 = [v16 initWithFrame:?];
  v18 = self->_viewForAnimatingAlpha;
  self->_viewForAnimatingAlpha = v17;

  [(UIView *)self->_viewForAnimatingAlpha setAutoresizingMask:18];
  [(AXPIFingerContainerView *)self addSubview:self->_viewForAnimatingAlpha];
  [(AXPIFingerContainerView *)self setFingerModels:v11];
  [(AXPIFingerContainerView *)self _updateFingerModelViews:v9 startPointForAnimation:x, y];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = v11;
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v36 = v6;
    v22 = v9;
    v23 = 0;
    v24 = 0;
    v25 = *v40;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = *(*(&v39 + 1) + 8 * i);
        if (v24)
        {
          v24 = 1;
          if ((v23 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v24 = [*(*(&v39 + 1) + 8 * i) isSelected];
          if ((v23 & 1) == 0)
          {
LABEL_10:
            v23 = [v27 isPressed];
            continue;
          }
        }

        v23 = 1;
      }

      v21 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (!v21)
      {
        v28 = v24 | v23;
        LODWORD(v9) = v22;
        v6 = v36;
        goto LABEL_17;
      }
    }
  }

  v28 = 0;
LABEL_17:

  if (v6)
  {
    pinchChainView = self->_pinchChainView;
    if (pinchChainView)
    {
      [(AXPIPinchChainView *)pinchChainView removeFromSuperview];
    }

    v30 = objc_alloc_init(AXPIPinchChainView);
    v31 = self->_pinchChainView;
    self->_pinchChainView = v30;

    v32 = [(AXPIFingerContainerView *)self appearanceDelegate];
    [(AXPIPinchChainView *)self->_pinchChainView setAppearanceDelegate:v32];

    [(UIView *)self->_viewForAnimatingAlpha addSubview:self->_pinchChainView];
    if ([v19 count] == 2)
    {
      v33 = [v19 objectAtIndexedSubscript:0];
      [v33 location];
      [(AXPIPinchChainView *)self->_pinchChainView setStartPoint:?];

      v34 = [v19 objectAtIndexedSubscript:1];
      [v34 location];
      [(AXPIPinchChainView *)self->_pinchChainView setEndPoint:?];

      [(AXPIFingerContainerView *)self _updatePinchChainAppearance];
    }
  }

  if (+[AXPIFingerUtilities laserEnabled])
  {
    [(AXPIFingerContainerView *)self _updateLumaMeasurementViewFrame];
    [(AXPIFingerContainerView *)self _updateSystemFiltersWithBackgroundLuminanceLevel:0];
    [(AXPIFingerContainerView *)self setPressedState:v28 & 1 animated:0];
  }

  if ([(AXPIFingerContainerView *)self shouldSuppressFingerVisuals])
  {
    [(UIView *)self->_viewForAnimatingAlpha setAlpha:0.0];
  }

  else if (v9)
  {
    [(UIView *)self->_viewForAnimatingAlpha setAlpha:0.0];
    v35 = MEMORY[0x277D75D18];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __97__AXPIFingerContainerView_showFingerModels_animated_startPointForAnimation_shouldShowPinchChain___block_invoke;
    v37[3] = &unk_278BE6330;
    v37[4] = self;
    v38 = v19;
    [v35 animateWithDuration:v37 animations:0.25];
  }
}

uint64_t __97__AXPIFingerContainerView_showFingerModels_animated_startPointForAnimation_shouldShowPinchChain___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setAlpha:1.0];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__AXPIFingerContainerView_showFingerModels_animated_startPointForAnimation_shouldShowPinchChain___block_invoke_2;
  v4[3] = &unk_278BE6618;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v4];
  return [*(a1 + 32) setPointerLumaMeasurementViewEnabled:1];
}

void __97__AXPIFingerContainerView_showFingerModels_animated_startPointForAnimation_shouldShowPinchChain___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 408);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v5 location];

  [v6 setFrame:_frameCenteredAroundPointForView(v6)];
}

- (void)setShouldSuppressFingerVisuals:(BOOL)a3
{
  if (self->_shouldSuppressFingerVisuals != a3)
  {
    v10 = v4;
    v11 = v3;
    v7 = a3;
    self->_shouldSuppressFingerVisuals = a3;
    v9 = 1.0;
    if (a3)
    {
      v9 = 0.0;
    }

    [(UIView *)self->_viewForAnimatingAlpha setAlpha:v9, v10, v11, v5];

    [(AXPIFingerContainerView *)self setPointerLumaMeasurementViewEnabled:!v7];
  }
}

- (void)clearAllFingersAnimated:(BOOL)a3 endPointForAnimation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v8 = [(NSMutableArray *)self->_fingerViews copy];
  [(NSMutableArray *)self->_fingerViews removeAllObjects];
  [(AXPIPinchChainView *)self->_pinchChainView removeFromSuperview];
  pinchChainView = self->_pinchChainView;
  self->_pinchChainView = 0;

  v10 = self->_viewForAnimatingAlpha;
  viewForAnimatingAlpha = self->_viewForAnimatingAlpha;
  self->_viewForAnimatingAlpha = 0;

  [(_UILumaTrackingBackdropView *)self->_pointerLumaMeasurementView removeFromSuperview];
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  self->_pointerLumaMeasurementView = 0;

  if (v6)
  {
    v13 = MEMORY[0x277D75D18];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__AXPIFingerContainerView_clearAllFingersAnimated_endPointForAnimation___block_invoke;
    v25[3] = &unk_278BE6798;
    v26 = v10;
    v27 = v8;
    v28 = x;
    v29 = y;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __72__AXPIFingerContainerView_clearAllFingersAnimated_endPointForAnimation___block_invoke_2;
    v23[3] = &unk_278BE66B8;
    v24 = v26;
    [v13 animateWithDuration:v25 animations:v23 completion:0.25];

    v14 = v26;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v8;
    v15 = [(UIView *)v14 countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) removeFromSuperview];
        }

        while (v16 != v18);
        v16 = [(UIView *)v14 countByEnumeratingWithState:&v19 objects:v30 count:16];
      }

      while (v16);
    }
  }
}

void __72__AXPIFingerContainerView_clearAllFingersAnimated_endPointForAnimation___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setAlpha:0.0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(a1 + 48) != v6 || *(a1 + 56) != v7)
        {
          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = _frameCenteredAroundPointForView(v10);
          [v10 setFrame:{v11, v12}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (unint64_t)indexOfFingerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_fingerViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 convertPoint:self fromView:{x, y, v14}];
        if ([v11 pointInside:0 withEvent:?])
        {
          v12 = [(NSMutableArray *)self->_fingerViews indexOfObject:v11];
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v12;
}

- (void)updateWithFingerModel:(id)a3 forFingerAtIndex:(unint64_t)a4
{
  v11 = a3;
  v6 = [(NSMutableArray *)self->_fingerViews objectAtIndexedSubscript:a4];
  v7 = [v6 isPressed];
  v8 = [v6 isSelected];
  [v11 location];
  [v6 setFrame:_frameCenteredAroundPointForView(v6)];
  [v6 setPressed:objc_msgSend(v11 animated:{"isPressed"), -[AXPIFingerContainerView shouldAnimatePress](self, "shouldAnimatePress")}];
  [v6 setSelected:{objc_msgSend(v11, "isSelected")}];
  [v11 force];
  [v6 setForce:?];
  [v6 setShape:{objc_msgSend(v11, "shape")}];
  if (self->_pinchChainView)
  {
    [v11 location];
    pinchChainView = self->_pinchChainView;
    if (a4)
    {
      [(AXPIPinchChainView *)pinchChainView setEndPoint:?];
    }

    else
    {
      [(AXPIPinchChainView *)pinchChainView setStartPoint:?];
    }

    [(AXPIFingerContainerView *)self _updatePinchChainAppearance];
  }

  if (v7 != [v6 isPressed] || v8 != objc_msgSend(v6, "isSelected"))
  {
    if ([v6 isPressed])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v6 isSelected];
    }

    [(AXPIFingerContainerView *)self setPressedState:v10 animated:1];
  }

  [(AXPIFingerContainerView *)self _updateLumaMeasurementViewFrame];
}

- (void)setPressedState:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (+[AXPIFingerUtilities laserEnabled])
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__AXPIFingerContainerView_setPressedState_animated___block_invoke;
    aBlock[3] = &unk_278BE6590;
    v19 = a3;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    v9 = MEMORY[0x277D75D18];
    if (v4)
    {
      v10 = +[AXPIFingerUtilities pointerAnimationSettings];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __52__AXPIFingerContainerView_setPressedState_animated___block_invoke_2;
      v16[3] = &unk_278BE64C8;
      v11 = &v17;
      v17 = v8;
      v12 = v8;
      [v9 _animateUsingSpringBehavior:v10 tracking:0 animations:v16 completion:0];
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__AXPIFingerContainerView_setPressedState_animated___block_invoke_3;
      v14[3] = &unk_278BE64C8;
      v11 = &v15;
      v15 = v7;
      v13 = v7;
      [v9 _performWithoutRetargetingAnimations:v14];
    }
  }
}

void *__52__AXPIFingerContainerView_setPressedState_animated___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) appearanceDelegate];
  v4 = v3;
  if (v2)
  {
    [v3 pressedScale];
  }

  else
  {
    [v3 unpressedScale];
  }

  v6 = v5;

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) appearanceDelegate];
  v9 = v8;
  if (v7)
  {
    [v8 pressedAlpha];
  }

  else
  {
    [v8 unpressedAlpha];
  }

  v11 = v10;

  v12 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v12;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformMakeScale(&v30, v6, v6);
  v13 = [*(a1 + 32) isPinchChainVisible];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = *(*(a1 + 32) + 408);
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v26 + 1) + 8 * i);
        v21 = [v20 filterLayer];
        v18 = v11;
        *&v22 = v18;
        [v21 setOpacity:v22];

        if ((v13 & 1) == 0)
        {
          v25 = v30;
          [v20 setTransform:&v25];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v16);
  }

  result = *(*(a1 + 32) + 424);
  if (result)
  {
    result = [result setAlpha:v11];
  }

  if (v13)
  {
    v24 = *(*(a1 + 32) + 416);
    v25 = v30;
    return [v24 setTransform:&v25];
  }

  return result;
}

- (void)_updateSystemFiltersWithBackgroundLuminanceLevel:(unint64_t)a3
{
  if (+[AXPIFingerUtilities laserEnabled])
  {
    v5 = [(AXPIFingerContainerView *)self appearanceDelegate];
    v6 = [v5 useSystemFilters];

    if (v6)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__AXPIFingerContainerView__updateSystemFiltersWithBackgroundLuminanceLevel___block_invoke;
      v10[3] = &unk_278BE64A0;
      v10[4] = self;
      v10[5] = a3;
      v7 = _Block_copy(v10);
      v8 = MEMORY[0x277D75D18];
      v9 = +[AXPIFingerUtilities pointerAnimationSettings];
      [v8 _animateUsingSpringBehavior:v9 tracking:0 animations:v7 completion:0];
    }
  }
}

void __76__AXPIFingerContainerView__updateSystemFiltersWithBackgroundLuminanceLevel___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [AXPIFingerUtilities pointerFiltersForLuminanceLevel:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 408);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) filterLayer];
        [v8 setFilters:v2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = [*(*(a1 + 32) + 424) layer];
  [v9 setFilters:v2];
}

- (void)_updateLumaMeasurementViewFrame
{
  if ([(NSMutableArray *)self->_fingerViews count])
  {
    v3 = [(NSMutableArray *)self->_fingerViews objectAtIndexedSubscript:0];
    [v3 frame];
    x = v4;
    y = v6;
    width = v8;
    height = v10;

    if ([(NSMutableArray *)self->_fingerViews count]>= 2)
    {
      v12 = 1;
      do
      {
        v13 = [(NSMutableArray *)self->_fingerViews objectAtIndexedSubscript:v12];
        [v13 frame];
        v22.origin.x = v14;
        v22.origin.y = v15;
        v22.size.width = v16;
        v22.size.height = v17;
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        v21 = CGRectUnion(v20, v22);
        x = v21.origin.x;
        y = v21.origin.y;
        width = v21.size.width;
        height = v21.size.height;

        ++v12;
      }

      while (v12 < [(NSMutableArray *)self->_fingerViews count]);
    }
  }

  else
  {
    width = 19.0;
    x = 0.0;
    y = 0.0;
    height = 19.0;
  }

  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;

  [(_UILumaTrackingBackdropView *)pointerLumaMeasurementView setFrame:x, y, width, height];
}

- (void)_updatePinchChainAppearance
{
  v24 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_fingerViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    LOBYTE(v11) = 1;
    LOBYTE(v12) = 1;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        [v14 frame];
        v27.origin.x = v15;
        v27.origin.y = v16;
        v27.size.width = v17;
        v27.size.height = v18;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v27);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        if (v12)
        {
          v12 = [v14 isPressed];
          if ((v11 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v12 = 0;
          if ((v11 & 1) == 0)
          {
LABEL_8:
            v11 = 0;
            continue;
          }
        }

        v11 = [v14 isSelected];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v9)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = 1;
  v12 = 1;
LABEL_15:

  [(AXPIPinchChainView *)self->_pinchChainView setFrame:x, y, width, height];
  [(AXPIPinchChainView *)self->_pinchChainView setPressed:v12];
  [(AXPIPinchChainView *)self->_pinchChainView setSelected:v11];
}

- (CGRect)rectForFingersAtPoints:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  x = *MEMORY[0x277CBF398];
  y = *(MEMORY[0x277CBF398] + 8);
  width = *(MEMORY[0x277CBF398] + 16);
  height = *(MEMORY[0x277CBF398] + 24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    v12 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v15 = CGPointFromString(*(*(&v27 + 1) + 8 * v14));
        v38.origin.x = v15.x;
        v38.origin.y = v15.y;
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v38.size.width = v12;
        v38.size.height = v13;
        v34 = CGRectUnion(v33, v38);
        x = v34.origin.x;
        y = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        ++v14;
      }

      while (v10 != v14);
      v10 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v16 = [(AXPIFingerContainerView *)self appearanceDelegate];
  [v16 fingerWidth];
  v18 = v17;

  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v36 = CGRectInset(v35, v18 * -0.5, v18 * -0.5);
  v19 = v36.origin.x;
  v20 = v36.origin.y;
  v21 = v36.size.width;
  v22 = v36.size.height;

  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)performCircularProgressAnimationOnFingersWithDuration:(double)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v13 = a4;
  [(AXPIFingerContainerView *)self cancelCircularProgressAnimation];
  v6 = dispatch_group_create();
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_fingerViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        dispatch_group_enter(v6);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __92__AXPIFingerContainerView_performCircularProgressAnimationOnFingersWithDuration_completion___block_invoke;
        v17[3] = &unk_278BE67C0;
        v19 = v24;
        v18 = v6;
        [v11 animateCircularProgressWithDuration:v17 completion:a3];
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__AXPIFingerContainerView_performCircularProgressAnimationOnFingersWithDuration_completion___block_invoke_2;
  block[3] = &unk_278BE67E8;
  v15 = v13;
  v16 = v24;
  block[4] = self;
  v12 = v13;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v24, 8);
}

uint64_t __92__AXPIFingerContainerView_performCircularProgressAnimationOnFingersWithDuration_completion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[6] + 8) + 24));
  }

  v3 = a1[4];

  return [v3 cancelCircularProgressAnimation];
}

- (void)cancelCircularProgressAnimation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_fingerViews;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) cancelExisingCircularProgressAnimation];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)animateToTapWithDuration:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_fingerViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) animateToTapWithDuration:{a3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setPointerLumaMeasurementViewEnabled:(BOOL)a3
{
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  if (pointerLumaMeasurementView)
  {
    v5 = a3;
    [(_UILumaTrackingBackdropView *)pointerLumaMeasurementView setHidden:!a3];
    v6 = self->_pointerLumaMeasurementView;

    [(_UILumaTrackingBackdropView *)v6 setPaused:!v5];
  }
}

- (AXPIFingerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

@end