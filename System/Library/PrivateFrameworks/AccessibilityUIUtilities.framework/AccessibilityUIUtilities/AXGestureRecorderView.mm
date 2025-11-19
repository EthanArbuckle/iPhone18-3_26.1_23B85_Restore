@interface AXGestureRecorderView
- (AXGestureRecorderView)initWithCoder:(id)a3;
- (AXGestureRecorderView)initWithFrame:(CGRect)a3;
- (AXGestureRecorderViewDelegate)dataSource;
- (CGRect)accessibilityFrame;
- (CGRect)constrainedBoundsForDrawing;
- (UIColor)dynamicFingerPathBackgroundGradientPatternColor;
- (id)_dynamicFingerPathAtIndex:(unint64_t)a3;
- (id)accessibilityCustomActions;
- (void)_commonInit;
- (void)_hideControls;
- (void)_performTransitionToStaticFingers:(id)a3 transitionLayers:(id)a4 hasExistingStaticFingers:(BOOL)a5;
- (void)_showControls;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)clearInstantReplayFingerPaths;
- (void)deleteAllFingerPaths;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)fingerPathDidChange:(unint64_t)a3;
- (void)finishInstantReplayAtIndex:(unint64_t)a3;
- (void)freezeAllDynamicFingerPathsWithInstantReplayOffset:(unint64_t)a3;
- (void)hideStaticView;
- (void)setDataSource:(id)a3;
- (void)setStyleProvider:(id)a3;
- (void)updateInstantReplayAtIndex:(unint64_t)a3 withPartialPath:(id)a4;
@end

@implementation AXGestureRecorderView

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  activeLayers = self->_activeLayers;
  self->_activeLayers = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  instantReplayViews = self->_instantReplayViews;
  self->_instantReplayViews = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  staticLayers = self->_staticLayers;
  self->_staticLayers = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  transitionLayers = self->_transitionLayers;
  self->_transitionLayers = v9;

  [(AXGestureRecorderView *)self setUserInteractionEnabled:1];
  [(AXGestureRecorderView *)self setMultipleTouchEnabled:1];

  [(AXGestureRecorderView *)self setNeedsDisplay];
}

- (AXGestureRecorderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderView;
  v3 = [(AXGestureRecorderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXGestureRecorderView *)v3 _commonInit];
  }

  return v4;
}

- (AXGestureRecorderView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderView;
  v3 = [(AXGestureRecorderView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(AXGestureRecorderView *)v3 _commonInit];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [(AXGestureRecorderView *)self styleProvider];
  v10 = [v9 gestureRecorderViewBackgroundColor];
  CGContextSetFillColorWithColor(CurrentContext, [v10 CGColor]);

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  CGContextFillRect(CurrentContext, *&v11);
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(AXGestureRecorderView *)self deleteAllFingerPaths];
    v5 = [obj numberOfDynamicFingerPathsInGestureRecorderView:self];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [(AXGestureRecorderView *)self insertDynamicFingerPathAtIndex:i];
      }
    }
  }
}

- (void)setStyleProvider:(id)a3
{
  v5 = a3;
  if (self->_styleProvider != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_styleProvider, a3);
    v5 = v13;
    if (v13)
    {
      v6 = [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientTopColor];
      v7 = [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientBottomColor];
      [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientTopColorLocation];
      v9 = v8;
      [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientBottomColorLocation];
      LODWORD(v11) = v10;
      LODWORD(v12) = v9;
      [(AXGestureRecorderGradientView *)self configureGradientWithTopColor:v6 bottomColor:v7 topColorLocation:v12 bottomColorLocation:v11];

      v5 = v13;
    }
  }
}

- (UIColor)dynamicFingerPathBackgroundGradientPatternColor
{
  locations[2] = *MEMORY[0x1E69E9840];
  dynamicFingerPathBackgroundGradientPatternColor = self->_dynamicFingerPathBackgroundGradientPatternColor;
  if (!dynamicFingerPathBackgroundGradientPatternColor)
  {
    v4 = [(AXGestureRecorderView *)self styleProvider];
    v5 = [(AXGestureRecorderView *)self window];
    [(AXGestureRecorderView *)self bounds];
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    v10 = CGRectGetWidth(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v11 = CGRectGetHeight(v36);
    if (v4)
    {
      if (v5)
      {
        if (v10 > 0.0)
        {
          v12 = v11;
          if (v11 > 0.0)
          {
            v13 = [v5 screen];
            [v13 scale];
            v15 = v14;

            v32.width = width;
            v32.height = height;
            UIGraphicsBeginImageContextWithOptions(v32, 1, v15);
            CurrentContext = UIGraphicsGetCurrentContext();
            CGContextSaveGState(CurrentContext);
            v17 = objc_alloc(MEMORY[0x1E695DEC8]);
            v18 = [v4 dynamicFingerLineGradientTopColor];
            v19 = [v18 CGColor];
            v20 = [v4 dynamicFingerLineGradientBottomColor];
            v21 = [v17 initWithObjects:{v19, objc_msgSend(v20, "CGColor"), 0}];

            [v4 dynamicFingerLineGradientTopColorLocation];
            locations[0] = v22;
            [v4 dynamicFingerLineGradientBottomColorLocation];
            locations[1] = v23;
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            v25 = CGGradientCreateWithColors(DeviceRGB, v21, locations);
            CGColorSpaceRelease(DeviceRGB);
            v33.x = v10 * 0.5;
            v33.y = 0.0;
            v34.x = v10 * 0.5;
            v34.y = v12;
            CGContextDrawLinearGradient(CurrentContext, v25, v33, v34, 0);
            CGGradientRelease(v25);
            v26 = UIGraphicsGetImageFromCurrentImageContext();
            v27 = [objc_alloc(MEMORY[0x1E69DC888]) initWithPatternImage:v26];
            v28 = self->_dynamicFingerPathBackgroundGradientPatternColor;
            self->_dynamicFingerPathBackgroundGradientPatternColor = v27;

            CGContextRestoreGState(CurrentContext);
            UIGraphicsEndImageContext();
          }
        }
      }
    }

    dynamicFingerPathBackgroundGradientPatternColor = self->_dynamicFingerPathBackgroundGradientPatternColor;
  }

  return dynamicFingerPathBackgroundGradientPatternColor;
}

- (CGRect)accessibilityFrame
{
  v3 = [(AXGestureRecorderView *)self safeAreaLayoutGuide];
  [v3 layoutFrame];
  v13 = UIAccessibilityConvertFrameToScreenCoordinates(v12, &self->super.super);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_hideControls
{
  v3 = [(AXGestureRecorderView *)self dataSource];
  [v3 gestureRecorderView:self setChromeVisible:0];
}

- (void)_showControls
{
  v3 = [(AXGestureRecorderView *)self dataSource];
  [v3 gestureRecorderView:self setChromeVisible:1];
}

- (id)accessibilityCustomActions
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [(AXGestureRecorderView *)self dataSource];
  v4 = [v3 canToggleChromeForGestureRecorderView:self];

  if (v4)
  {
    v5 = [(AXGestureRecorderView *)self dataSource];
    v6 = [v5 isChromeVisibleForGestureRecorderView:self];

    if (v6)
    {
      v7 = [(AXGestureRecorderView *)self hideControlsAction];

      if (!v7)
      {
        v8 = objc_alloc(MEMORY[0x1E69DC5E8]);
        v9 = AXUILocalizedStringForKey(@"CustomGesturesHideControls");
        v10 = [v8 initWithName:v9 target:self selector:sel__hideControls];

        [(AXGestureRecorderView *)self setHideControlsAction:v10];
      }

      v11 = [(AXGestureRecorderView *)self hideControlsAction];
      v20[0] = v11;
      v12 = v20;
    }

    else
    {
      v14 = [(AXGestureRecorderView *)self showControlsAction];

      if (!v14)
      {
        v15 = objc_alloc(MEMORY[0x1E69DC5E8]);
        v16 = AXUILocalizedStringForKey(@"CustomGesturesShowControls");
        v17 = [v15 initWithName:v16 target:self selector:sel__showControls];

        [(AXGestureRecorderView *)self setShowControlsAction:v17];
      }

      v11 = [(AXGestureRecorderView *)self showControlsAction];
      v19 = v11;
      v12 = &v19;
    }

    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = AXGestureRecorderView;
  [(AXGestureRecorderView *)&v3 didMoveToWindow];
  [(AXGestureRecorderView *)self setNeedsDisplay];
}

- (void)fingerPathDidChange:(unint64_t)a3
{
  v16 = [(AXGestureRecorderView *)self _dynamicFingerPathAtIndex:?];
  activeLayers = self->_activeLayers;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)activeLayers objectForKey:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x1E69794A0] layer];
    v8 = [(AXGestureRecorderView *)self replayMode];
    v9 = [(AXGestureRecorderView *)self styleProvider];
    v10 = v9;
    if (v8)
    {
      [v9 finalDynamicFingerColor];
    }

    else
    {
      [v9 tracingDynamicFingerColor];
    }
    v11 = ;
    [v7 setFillColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [(AXGestureRecorderView *)self layer];
    [v12 addSublayer:v7];

    v13 = self->_activeLayers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v13 setObject:v7 forKey:v14];
  }

  v15 = v16;
  [v7 setPath:{objc_msgSend(v16, "CGPath")}];
}

- (id)_dynamicFingerPathAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_freezedDynamicPaths count])
  {
    v5 = [(NSMutableArray *)self->_freezedDynamicPaths objectAtIndex:a3];
  }

  else
  {
    v6 = [(AXGestureRecorderView *)self dataSource];
    if ([v6 numberOfDynamicFingerPathsInGestureRecorderView:self] <= a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v6 gestureRecorderView:self dynamicFingerPathAtIndex:a3];
    }
  }

  return v5;
}

- (void)updateInstantReplayAtIndex:(unint64_t)a3 withPartialPath:(id)a4
{
  v15 = a4;
  instantReplayViews = self->_instantReplayViews;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [(NSMutableDictionary *)instantReplayViews objectForKey:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x1E69794A0] layer];
    v9 = [(AXGestureRecorderView *)self styleProvider];
    v10 = [v9 finalDynamicFingerColor];
    [v8 setFillColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [(AXGestureRecorderView *)self layer];
    [v11 addSublayer:v8];

    v12 = self->_instantReplayViews;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v8 forKey:v13];
  }

  v14 = v15;
  [v8 setPath:{objc_msgSend(v15, "CGPath")}];
}

- (void)finishInstantReplayAtIndex:(unint64_t)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(AXGestureRecorderView *)self styleProvider];
  v9 = [v8 finalDynamicFingerColor];
  [v7 setFillColor:{objc_msgSend(v9, "CGColor")}];

  v10 = [(NSMutableArray *)self->_staticLayers count];
  if (v10)
  {
    v11 = v10;
    [v7 removeFromSuperlayer];
    v12 = [(AXGestureRecorderView *)self layer];
    [v12 insertSublayer:v7 atIndex:v11];
  }

  v21[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(AXGestureRecorderView *)self _performTransitionToStaticFingers:v13 transitionLayers:0 hasExistingStaticFingers:0];

  v14 = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v14 removeObjectForKey:v15];

  instantReplayViews = self->_instantReplayViews;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v18 = [(NSMutableDictionary *)instantReplayViews objectForKeyedSubscript:v17];
  [v18 removeFromSuperlayer];

  v19 = self->_instantReplayViews;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v19 removeObjectForKey:v20];
}

- (void)clearInstantReplayFingerPaths
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_instantReplayViews allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_instantReplayViews removeAllObjects];
}

- (void)_performTransitionToStaticFingers:(id)a3 transitionLayers:(id)a4 hasExistingStaticFingers:(BOOL)a5
{
  v22 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"fillColor"];
        [v14 setDuration:0.53];
        v15 = [(AXGestureRecorderView *)self styleProvider];
        v16 = [v15 finalDynamicFingerColor];
        [v14 setFromValue:{objc_msgSend(v16, "CGColor")}];

        v17 = [(AXGestureRecorderView *)self styleProvider];
        v18 = [v17 staticFingerColor];
        [v14 setToValue:{objc_msgSend(v18, "CGColor")}];

        [v14 setValue:@"GrayTransition" forKey:@"AnimationName"];
        v19 = [MEMORY[0x1E696AD98] numberWithBool:v22];
        [v14 setValue:v19 forKey:@"HasExistingStaticFingers"];

        [v14 setDelegate:self];
        [v14 setValue:v7 forKey:@"AnimatingLayers"];
        [v14 setValue:v8 forKey:@"TransitionLayers"];
        v20 = [(AXGestureRecorderView *)self styleProvider];
        v21 = [v20 staticFingerColor];
        [v13 setFillColor:{objc_msgSend(v21, "CGColor")}];

        [v13 addAnimation:v14 forKey:@"Change"];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 valueForKey:@"AnimatingLayers"];
  v8 = [v6 valueForKey:@"TransitionLayers"];
  v9 = [v6 valueForKey:@"AnimationName"];
  v10 = [v9 isEqualToString:@"GrayTransition"];

  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = [v6 valueForKey:@"HasExistingStaticFingers"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v31 = v8;
    v32 = v7;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v41 + 1) + 8 * i) removeFromSuperlayer];
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v15);
    }

LABEL_19:
    v7 = v32;

    v8 = v31;
    goto LABEL_20;
  }

  if (v4)
  {
    v31 = v8;
    v32 = v7;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * j);
          v24 = [(AXGestureRecorderView *)self styleProvider];
          v25 = [v24 staticFingerColor];
          [v23 setFillColor:{objc_msgSend(v25, "CGColor")}];

          [(NSMutableArray *)self->_staticLayers addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v20);
    }

    goto LABEL_19;
  }

LABEL_20:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v8;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v33 + 1) + 8 * k) removeFromSuperlayer];
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v28);
  }

LABEL_28:
}

- (void)freezeAllDynamicFingerPathsWithInstantReplayOffset:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_activeLayers copy];
  v6 = [(NSMutableDictionary *)self->_activeLayers allValues];
  [(NSMutableDictionary *)self->_activeLayers removeAllObjects];
  if ([(AXGestureRecorderView *)self replayMode])
  {
    [(AXGestureRecorderView *)self _performTransitionToStaticFingers:v6 transitionLayers:0 hasExistingStaticFingers:1];
  }

  else if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXAssert();
  }

  else
  {
    v19 = v6;
    v7 = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];

    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      [(AXGestureRecorderView *)self setPreviouslyActiveLayersByInstantReplayFingerIndex:v8];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 unsignedIntegerValue];
          v16 = [v9 objectForKeyedSubscript:v14];
          v17 = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15 + a3];
          [v17 setObject:v16 forKeyedSubscript:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v6 = v19;
    v5 = v20;
  }
}

- (void)deleteAllFingerPaths
{
  [(AXGestureRecorderView *)self setNeedsDisplay];
  v3 = [(AXGestureRecorderView *)self layer];
  [v3 removeAllAnimations];

  v4 = [(AXGestureRecorderView *)self layer];
  v5 = [v4 sublayers];
  v6 = [v5 copy];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_7];
  [(NSMutableDictionary *)self->_activeLayers removeAllObjects];
  [(AXGestureRecorderView *)self clearInstantReplayFingerPaths];
}

- (void)hideStaticView
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_staticLayers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_staticLayers removeAllObjects];
}

- (AXGestureRecorderViewDelegate)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGRect)constrainedBoundsForDrawing
{
  x = self->_constrainedBoundsForDrawing.origin.x;
  y = self->_constrainedBoundsForDrawing.origin.y;
  width = self->_constrainedBoundsForDrawing.size.width;
  height = self->_constrainedBoundsForDrawing.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end