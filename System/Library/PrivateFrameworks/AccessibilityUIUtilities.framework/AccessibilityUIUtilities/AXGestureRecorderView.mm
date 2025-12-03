@interface AXGestureRecorderView
- (AXGestureRecorderView)initWithCoder:(id)coder;
- (AXGestureRecorderView)initWithFrame:(CGRect)frame;
- (AXGestureRecorderViewDelegate)dataSource;
- (CGRect)accessibilityFrame;
- (CGRect)constrainedBoundsForDrawing;
- (UIColor)dynamicFingerPathBackgroundGradientPatternColor;
- (id)_dynamicFingerPathAtIndex:(unint64_t)index;
- (id)accessibilityCustomActions;
- (void)_commonInit;
- (void)_hideControls;
- (void)_performTransitionToStaticFingers:(id)fingers transitionLayers:(id)layers hasExistingStaticFingers:(BOOL)staticFingers;
- (void)_showControls;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)clearInstantReplayFingerPaths;
- (void)deleteAllFingerPaths;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)fingerPathDidChange:(unint64_t)change;
- (void)finishInstantReplayAtIndex:(unint64_t)index;
- (void)freezeAllDynamicFingerPathsWithInstantReplayOffset:(unint64_t)offset;
- (void)hideStaticView;
- (void)setDataSource:(id)source;
- (void)setStyleProvider:(id)provider;
- (void)updateInstantReplayAtIndex:(unint64_t)index withPartialPath:(id)path;
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

- (AXGestureRecorderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderView;
  v3 = [(AXGestureRecorderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXGestureRecorderView *)v3 _commonInit];
  }

  return v4;
}

- (AXGestureRecorderView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AXGestureRecorderView;
  v3 = [(AXGestureRecorderView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AXGestureRecorderView *)v3 _commonInit];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  styleProvider = [(AXGestureRecorderView *)self styleProvider];
  gestureRecorderViewBackgroundColor = [styleProvider gestureRecorderViewBackgroundColor];
  CGContextSetFillColorWithColor(CurrentContext, [gestureRecorderViewBackgroundColor CGColor]);

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  CGContextFillRect(CurrentContext, *&v11);
}

- (void)setDataSource:(id)source
{
  obj = source;
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

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    v13 = providerCopy;
    objc_storeStrong(&self->_styleProvider, provider);
    providerCopy = v13;
    if (v13)
    {
      fingerLineGradientTopColor = [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientTopColor];
      fingerLineGradientBottomColor = [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientBottomColor];
      [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientTopColorLocation];
      v9 = v8;
      [(AXGestureRecorderStyleProvider *)v13 fingerLineGradientBottomColorLocation];
      LODWORD(v11) = v10;
      LODWORD(v12) = v9;
      [(AXGestureRecorderGradientView *)self configureGradientWithTopColor:fingerLineGradientTopColor bottomColor:fingerLineGradientBottomColor topColorLocation:v12 bottomColorLocation:v11];

      providerCopy = v13;
    }
  }
}

- (UIColor)dynamicFingerPathBackgroundGradientPatternColor
{
  locations[2] = *MEMORY[0x1E69E9840];
  dynamicFingerPathBackgroundGradientPatternColor = self->_dynamicFingerPathBackgroundGradientPatternColor;
  if (!dynamicFingerPathBackgroundGradientPatternColor)
  {
    styleProvider = [(AXGestureRecorderView *)self styleProvider];
    window = [(AXGestureRecorderView *)self window];
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
    if (styleProvider)
    {
      if (window)
      {
        if (v10 > 0.0)
        {
          v12 = v11;
          if (v11 > 0.0)
          {
            screen = [window screen];
            [screen scale];
            v15 = v14;

            v32.width = width;
            v32.height = height;
            UIGraphicsBeginImageContextWithOptions(v32, 1, v15);
            CurrentContext = UIGraphicsGetCurrentContext();
            CGContextSaveGState(CurrentContext);
            v17 = objc_alloc(MEMORY[0x1E695DEC8]);
            dynamicFingerLineGradientTopColor = [styleProvider dynamicFingerLineGradientTopColor];
            cGColor = [dynamicFingerLineGradientTopColor CGColor];
            dynamicFingerLineGradientBottomColor = [styleProvider dynamicFingerLineGradientBottomColor];
            v21 = [v17 initWithObjects:{cGColor, objc_msgSend(dynamicFingerLineGradientBottomColor, "CGColor"), 0}];

            [styleProvider dynamicFingerLineGradientTopColorLocation];
            locations[0] = v22;
            [styleProvider dynamicFingerLineGradientBottomColorLocation];
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
  safeAreaLayoutGuide = [(AXGestureRecorderView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
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
  dataSource = [(AXGestureRecorderView *)self dataSource];
  [dataSource gestureRecorderView:self setChromeVisible:0];
}

- (void)_showControls
{
  dataSource = [(AXGestureRecorderView *)self dataSource];
  [dataSource gestureRecorderView:self setChromeVisible:1];
}

- (id)accessibilityCustomActions
{
  v20[1] = *MEMORY[0x1E69E9840];
  dataSource = [(AXGestureRecorderView *)self dataSource];
  v4 = [dataSource canToggleChromeForGestureRecorderView:self];

  if (v4)
  {
    dataSource2 = [(AXGestureRecorderView *)self dataSource];
    v6 = [dataSource2 isChromeVisibleForGestureRecorderView:self];

    if (v6)
    {
      hideControlsAction = [(AXGestureRecorderView *)self hideControlsAction];

      if (!hideControlsAction)
      {
        v8 = objc_alloc(MEMORY[0x1E69DC5E8]);
        v9 = AXUILocalizedStringForKey(@"CustomGesturesHideControls");
        v10 = [v8 initWithName:v9 target:self selector:sel__hideControls];

        [(AXGestureRecorderView *)self setHideControlsAction:v10];
      }

      hideControlsAction2 = [(AXGestureRecorderView *)self hideControlsAction];
      v20[0] = hideControlsAction2;
      v12 = v20;
    }

    else
    {
      showControlsAction = [(AXGestureRecorderView *)self showControlsAction];

      if (!showControlsAction)
      {
        v15 = objc_alloc(MEMORY[0x1E69DC5E8]);
        v16 = AXUILocalizedStringForKey(@"CustomGesturesShowControls");
        v17 = [v15 initWithName:v16 target:self selector:sel__showControls];

        [(AXGestureRecorderView *)self setShowControlsAction:v17];
      }

      hideControlsAction2 = [(AXGestureRecorderView *)self showControlsAction];
      v19 = hideControlsAction2;
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

- (void)fingerPathDidChange:(unint64_t)change
{
  v16 = [(AXGestureRecorderView *)self _dynamicFingerPathAtIndex:?];
  activeLayers = self->_activeLayers;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:change];
  layer = [(NSMutableDictionary *)activeLayers objectForKey:v6];

  if (!layer)
  {
    layer = [MEMORY[0x1E69794A0] layer];
    replayMode = [(AXGestureRecorderView *)self replayMode];
    styleProvider = [(AXGestureRecorderView *)self styleProvider];
    v10 = styleProvider;
    if (replayMode)
    {
      [styleProvider finalDynamicFingerColor];
    }

    else
    {
      [styleProvider tracingDynamicFingerColor];
    }
    v11 = ;
    [layer setFillColor:{objc_msgSend(v11, "CGColor")}];

    layer2 = [(AXGestureRecorderView *)self layer];
    [layer2 addSublayer:layer];

    v13 = self->_activeLayers;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:change];
    [(NSMutableDictionary *)v13 setObject:layer forKey:v14];
  }

  v15 = v16;
  [layer setPath:{objc_msgSend(v16, "CGPath")}];
}

- (id)_dynamicFingerPathAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_freezedDynamicPaths count])
  {
    v5 = [(NSMutableArray *)self->_freezedDynamicPaths objectAtIndex:index];
  }

  else
  {
    dataSource = [(AXGestureRecorderView *)self dataSource];
    if ([dataSource numberOfDynamicFingerPathsInGestureRecorderView:self] <= index)
    {
      v5 = 0;
    }

    else
    {
      v5 = [dataSource gestureRecorderView:self dynamicFingerPathAtIndex:index];
    }
  }

  return v5;
}

- (void)updateInstantReplayAtIndex:(unint64_t)index withPartialPath:(id)path
{
  pathCopy = path;
  instantReplayViews = self->_instantReplayViews;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  layer = [(NSMutableDictionary *)instantReplayViews objectForKey:v7];

  if (!layer)
  {
    layer = [MEMORY[0x1E69794A0] layer];
    styleProvider = [(AXGestureRecorderView *)self styleProvider];
    finalDynamicFingerColor = [styleProvider finalDynamicFingerColor];
    [layer setFillColor:{objc_msgSend(finalDynamicFingerColor, "CGColor")}];

    layer2 = [(AXGestureRecorderView *)self layer];
    [layer2 addSublayer:layer];

    v12 = self->_instantReplayViews;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
    [(NSMutableDictionary *)v12 setObject:layer forKey:v13];
  }

  v14 = pathCopy;
  [layer setPath:{objc_msgSend(pathCopy, "CGPath")}];
}

- (void)finishInstantReplayAtIndex:(unint64_t)index
{
  v21[1] = *MEMORY[0x1E69E9840];
  previouslyActiveLayersByInstantReplayFingerIndex = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v7 = [previouslyActiveLayersByInstantReplayFingerIndex objectForKeyedSubscript:v6];

  styleProvider = [(AXGestureRecorderView *)self styleProvider];
  finalDynamicFingerColor = [styleProvider finalDynamicFingerColor];
  [v7 setFillColor:{objc_msgSend(finalDynamicFingerColor, "CGColor")}];

  v10 = [(NSMutableArray *)self->_staticLayers count];
  if (v10)
  {
    v11 = v10;
    [v7 removeFromSuperlayer];
    layer = [(AXGestureRecorderView *)self layer];
    [layer insertSublayer:v7 atIndex:v11];
  }

  v21[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(AXGestureRecorderView *)self _performTransitionToStaticFingers:v13 transitionLayers:0 hasExistingStaticFingers:0];

  previouslyActiveLayersByInstantReplayFingerIndex2 = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [previouslyActiveLayersByInstantReplayFingerIndex2 removeObjectForKey:v15];

  instantReplayViews = self->_instantReplayViews;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v18 = [(NSMutableDictionary *)instantReplayViews objectForKeyedSubscript:v17];
  [v18 removeFromSuperlayer];

  v19 = self->_instantReplayViews;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  [(NSMutableDictionary *)v19 removeObjectForKey:v20];
}

- (void)clearInstantReplayFingerPaths
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_instantReplayViews allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) removeFromSuperlayer];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_instantReplayViews removeAllObjects];
}

- (void)_performTransitionToStaticFingers:(id)fingers transitionLayers:(id)layers hasExistingStaticFingers:(BOOL)staticFingers
{
  staticFingersCopy = staticFingers;
  v28 = *MEMORY[0x1E69E9840];
  fingersCopy = fingers;
  layersCopy = layers;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [fingersCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(fingersCopy);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"fillColor"];
        [v14 setDuration:0.53];
        styleProvider = [(AXGestureRecorderView *)self styleProvider];
        finalDynamicFingerColor = [styleProvider finalDynamicFingerColor];
        [v14 setFromValue:{objc_msgSend(finalDynamicFingerColor, "CGColor")}];

        styleProvider2 = [(AXGestureRecorderView *)self styleProvider];
        staticFingerColor = [styleProvider2 staticFingerColor];
        [v14 setToValue:{objc_msgSend(staticFingerColor, "CGColor")}];

        [v14 setValue:@"GrayTransition" forKey:@"AnimationName"];
        v19 = [MEMORY[0x1E696AD98] numberWithBool:staticFingersCopy];
        [v14 setValue:v19 forKey:@"HasExistingStaticFingers"];

        [v14 setDelegate:self];
        [v14 setValue:fingersCopy forKey:@"AnimatingLayers"];
        [v14 setValue:layersCopy forKey:@"TransitionLayers"];
        styleProvider3 = [(AXGestureRecorderView *)self styleProvider];
        staticFingerColor2 = [styleProvider3 staticFingerColor];
        [v13 setFillColor:{objc_msgSend(staticFingerColor2, "CGColor")}];

        [v13 addAnimation:v14 forKey:@"Change"];
        ++v12;
      }

      while (v10 != v12);
      v10 = [fingersCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  v48 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  v7 = [stopCopy valueForKey:@"AnimatingLayers"];
  v8 = [stopCopy valueForKey:@"TransitionLayers"];
  v9 = [stopCopy valueForKey:@"AnimationName"];
  v10 = [v9 isEqualToString:@"GrayTransition"];

  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = [stopCopy valueForKey:@"HasExistingStaticFingers"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
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

  if (finishedCopy)
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
          styleProvider = [(AXGestureRecorderView *)self styleProvider];
          staticFingerColor = [styleProvider staticFingerColor];
          [v23 setFillColor:{objc_msgSend(staticFingerColor, "CGColor")}];

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

- (void)freezeAllDynamicFingerPathsWithInstantReplayOffset:(unint64_t)offset
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_activeLayers copy];
  allValues = [(NSMutableDictionary *)self->_activeLayers allValues];
  [(NSMutableDictionary *)self->_activeLayers removeAllObjects];
  if ([(AXGestureRecorderView *)self replayMode])
  {
    [(AXGestureRecorderView *)self _performTransitionToStaticFingers:allValues transitionLayers:0 hasExistingStaticFingers:1];
  }

  else if (offset == 0x7FFFFFFFFFFFFFFFLL)
  {
    _AXAssert();
  }

  else
  {
    v19 = allValues;
    previouslyActiveLayersByInstantReplayFingerIndex = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];

    if (!previouslyActiveLayersByInstantReplayFingerIndex)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(AXGestureRecorderView *)self setPreviouslyActiveLayersByInstantReplayFingerIndex:dictionary];
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
          unsignedIntegerValue = [v14 unsignedIntegerValue];
          v16 = [v9 objectForKeyedSubscript:v14];
          previouslyActiveLayersByInstantReplayFingerIndex2 = [(AXGestureRecorderView *)self previouslyActiveLayersByInstantReplayFingerIndex];
          offset = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + offset];
          [previouslyActiveLayersByInstantReplayFingerIndex2 setObject:v16 forKeyedSubscript:offset];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    allValues = v19;
    v5 = v20;
  }
}

- (void)deleteAllFingerPaths
{
  [(AXGestureRecorderView *)self setNeedsDisplay];
  layer = [(AXGestureRecorderView *)self layer];
  [layer removeAllAnimations];

  layer2 = [(AXGestureRecorderView *)self layer];
  sublayers = [layer2 sublayers];
  v6 = [sublayers copy];

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