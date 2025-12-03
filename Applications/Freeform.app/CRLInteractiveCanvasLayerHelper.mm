@interface CRLInteractiveCanvasLayerHelper
- (BOOL)isCanvasContentLayer:(id)layer;
- (CRLInteractiveCanvasLayerHelper)initWithInteractiveCanvasController:(id)controller;
- (id)viewWithTransferredLayers;
- (void)beginSuppressingLayerUpdatesExceptForReps:(id)reps;
- (void)dealloc;
- (void)endSuppressingLayerUpdates;
- (void)p_recursivelySetContentsFormatForLayer:(id)layer toContentsFormat:(id)format;
- (void)p_recursivelyUpdateLayerEdgeAntialiasingForLayer:(id)layer;
- (void)p_updateDecoratorOverlayContainer;
- (void)p_updateLayersForcingUpdateOfValidLayers:(BOOL)layers;
- (void)p_updateOverlayViewForReps:(id)reps forcingUpdateOfValidLayers:(BOOL)layers;
- (void)teardown;
- (void)updateLayerContainerFrames;
- (void)updateLayers;
@end

@implementation CRLInteractiveCanvasLayerHelper

- (CRLInteractiveCanvasLayerHelper)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v25.receiver = self;
  v25.super_class = CRLInteractiveCanvasLayerHelper;
  v5 = [(CRLInteractiveCanvasLayerHelper *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
    v7 = objc_alloc_init(CRLCanvasSubview);
    repContainerView = v6->_repContainerView;
    v6->_repContainerView = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_interactiveCanvasController);
    [(CRLCanvasSubview *)v6->_repContainerView setLayerDelegate:WeakRetained];

    layer = [(CRLCanvasSubview *)v6->_repContainerView layer];
    repContainerLayer = v6->_repContainerLayer;
    v6->_repContainerLayer = layer;

    v12 = [CRLInteractiveCanvasRepContentUpdater alloc];
    v13 = objc_loadWeakRetained(&v6->_interactiveCanvasController);
    canvas = [v13 canvas];
    v15 = objc_loadWeakRetained(&v6->_interactiveCanvasController);
    v16 = [(CRLInteractiveCanvasRepContentUpdater *)v12 initWithCanvas:canvas layerDelegate:v15];
    repContentUpdater = v6->_repContentUpdater;
    v6->_repContentUpdater = v16;

    v18 = [[CRLInteractiveCanvasRepContentSubviewUpdater alloc] initWithRepContainerView:v6->_repContainerView];
    repContentSubviewUpdater = v6->_repContentSubviewUpdater;
    v6->_repContentSubviewUpdater = v18;

    v20 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    repOverlayRenderablesByRep = v6->_repOverlayRenderablesByRep;
    v6->_repOverlayRenderablesByRep = v20;

    v22 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    decoratorOverlayRenderablesByDecorator = v6->_decoratorOverlayRenderablesByDecorator;
    v6->_decoratorOverlayRenderablesByDecorator = v22;
  }

  return v6;
}

- (void)teardown
{
  repOverlayRenderablesByRep = self->_repOverlayRenderablesByRep;
  self->_repOverlayRenderablesByRep = 0;

  decoratorOverlayRenderablesByDecorator = self->_decoratorOverlayRenderablesByDecorator;
  self->_decoratorOverlayRenderablesByDecorator = 0;

  [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater teardown];
  if (self->_wasTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101385D44();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385D58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385DE0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper teardown]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:95 isFatal:0 description:"Shouldn't be torn down twice!"];
  }

  self->_wasTornDown = 1;
}

- (void)dealloc
{
  if (!self->_wasTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101385E08();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385E1C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385EA4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:100 isFatal:0 description:"Must be torn down!"];
  }

  v6.receiver = self;
  v6.super_class = CRLInteractiveCanvasLayerHelper;
  [(CRLInteractiveCanvasLayerHelper *)&v6 dealloc];
}

- (void)updateLayers
{
  [(CRLInteractiveCanvasLayerHelper *)self p_updateLayersForcingUpdateOfValidLayers:0];
  if ([(CRLInteractiveCanvasLayerHelper *)self p_shouldPerformLayerTreeComparison])
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    canvasView = [WeakRetained canvasView];

    canvasLayer = [canvasView canvasLayer];
    v6 = [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater i_descriptionOfLayerTreeRootedAt:canvasLayer];
    [(CRLInteractiveCanvasLayerHelper *)self p_updateLayersForcingUpdateOfValidLayers:1];
    v7 = [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater i_descriptionOfLayerTreeRootedAt:canvasLayer];
    v8 = [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater i_firstDifferenceBetweenLayerTreeDescription:v6 andDescription:v7];
    if ([v8 count])
    {
      v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101385ECC();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101385EE0(v8, v9, v10);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101385F9C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper updateLayers]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:144 isFatal:0 description:"Canvas layer tree mismatch detected! The fully and incrementally updated layer trees do not match.\n%@", v8];
    }
  }
}

- (void)p_updateLayersForcingUpdateOfValidLayers:(BOOL)layers
{
  layersCopy = layers;
  v5 = +[NSThread isMainThread];
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvasView = [WeakRetained canvasView];

  v59 = canvasView;
  canvasLayer = [canvasView canvasLayer];
  v9 = objc_alloc_init(NSMutableOrderedSet);
  v58 = canvasLayer;
  [canvasLayer bounds];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (v5)
  {
    [(CRLCanvasSubview *)self->_repContainerView setFrame:v10, v11, v12, v13];
    [(CRLCanvasSubview *)self->_repContainerView setBounds:v14, v15, v16, v17];
  }

  v18 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  additionalLayersUnderRepLayers = [v18 additionalLayersUnderRepLayers];

  if ([additionalLayersUnderRepLayers count])
  {
    if (((self->_bottommostLayersContainerView == 0) & v5) == 1)
    {
      v20 = objc_alloc_init(CRLCanvasSubview);
      bottommostLayersContainerView = self->_bottommostLayersContainerView;
      self->_bottommostLayersContainerView = v20;

      v22 = objc_loadWeakRetained(&self->_interactiveCanvasController);
      [(CRLCanvasSubview *)self->_bottommostLayersContainerView setLayerDelegate:v22];

      layer = [(CRLCanvasSubview *)self->_bottommostLayersContainerView layer];
      bottommostLayersContainerLayer = self->_bottommostLayersContainerLayer;
      self->_bottommostLayersContainerLayer = layer;
    }

    if (!self->_bottommostLayersContainerLayer)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101385FC4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101385FD8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101386060();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v26 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper p_updateLayersForcingUpdateOfValidLayers:]"];
      v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:183 isFatal:0 description:"Layout with bottommost layers should have run at least once on the main thread."];
    }
  }

  if (self->_bottommostLayersContainerLayer)
  {
    if (v5)
    {
      [(CRLCanvasSubview *)self->_bottommostLayersContainerView setFrame:v14, v15, v16, v17];
      [(CRLCanvasSubview *)self->_bottommostLayersContainerView setBounds:v14, v15, v16, v17];
    }

    if (!additionalLayersUnderRepLayers)
    {
      additionalLayersUnderRepLayers = &__NSArray0__struct;
    }

    sublayers = [(CALayer *)self->_bottommostLayersContainerLayer sublayers];
    v29 = [additionalLayersUnderRepLayers isEqualToArray:sublayers];

    if ((v29 & 1) == 0)
    {
      [(CALayer *)self->_bottommostLayersContainerLayer setSublayers:additionalLayersUnderRepLayers];
    }

    if (self->_bottommostLayersContainerView)
    {
      [v9 addObject:?];
    }
  }

  currentlySuppressingLayerUpdates = [(CRLInteractiveCanvasLayerHelper *)self currentlySuppressingLayerUpdates];
  repContentUpdater = self->_repContentUpdater;
  if (currentlySuppressingLayerUpdates)
  {
    [(CRLInteractiveCanvasRepContentUpdater *)repContentUpdater updateLayerFramesOnlyForReps:self->_repsWhoseLayersAreAllowedToUpdate];
  }

  else
  {
    [(CRLInteractiveCanvasRepContentUpdater *)repContentUpdater updateRepContentForcingUpdateOfValidLayers:layersCopy];
    repContentPiles = [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater repContentPiles];
    allReps = [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater allReps];
    [(CRLInteractiveCanvasRepContentSubviewUpdater *)self->_repContentSubviewUpdater updateSubviewsFromRepContentPiles:repContentPiles];
    [v9 addObject:self->_repContainerView];
    v34 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    overlayLayerSuppressed = [v34 overlayLayerSuppressed];

    if ((overlayLayerSuppressed & 1) == 0)
    {
      [(CRLInteractiveCanvasLayerHelper *)self p_updateOverlayViewForReps:allReps forcingUpdateOfValidLayers:layersCopy];
      if (self->_overlayView)
      {
        [v9 addObject:?];
      }

      [(CRLInteractiveCanvasLayerHelper *)self p_updateDecoratorOverlayContainer];
      if (self->_decoratorOverlayContainerView)
      {
        [v9 addObject:?];
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    subviews = [v59 subviews];
    v37 = [subviews countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v65;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v65 != v39)
          {
            objc_enumerationMutation(subviews);
          }

          v41 = *(*(&v64 + 1) + 8 * i);
          if (v41 != self->_bottommostLayersContainerView && v41 != self->_repContainerView && v41 != self->_overlayView && v41 != self->_decoratorOverlayContainerView)
          {
            [v9 addObject:?];
          }
        }

        v38 = [subviews countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v38);
    }

    if (v5)
    {
      array = [v9 array];
      canvasSubviews = [v59 canvasSubviews];
      v44 = [array isEqualToArray:canvasSubviews];

      if ((v44 & 1) == 0)
      {
        [v59 setCanvasSubviews:array];
      }
    }
  }

  v45 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvas = [v45 canvas];
  canvasIsWideGamut = [canvas canvasIsWideGamut];
  v48 = &kCAContentsFormatRGBA16Float;
  if (!canvasIsWideGamut)
  {
    v48 = &kCAContentsFormatRGBA8Uint;
  }

  v49 = *v48;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v50 = v9;
  v51 = [v50 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v61;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v60 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layer2 = [v55 layer];
          [(CRLInteractiveCanvasLayerHelper *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:layer2];

          layer3 = [v55 layer];
          [(CRLInteractiveCanvasLayerHelper *)self p_recursivelySetContentsFormatForLayer:layer3 toContentsFormat:v49];
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v52);
  }
}

- (void)p_updateDecoratorOverlayContainer
{
  if (+[NSThread isMainThread])
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    selfCopy = self;
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    i_decorators = [WeakRetained i_decorators];

    v6 = [i_decorators countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v39;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(i_decorators);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            decoratorOverlayViews = [v10 decoratorOverlayViews];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v12 = [decoratorOverlayViews countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v35;
              do
              {
                for (j = 0; j != v13; j = j + 1)
                {
                  if (*v35 != v14)
                  {
                    objc_enumerationMutation(decoratorOverlayViews);
                  }

                  [v3 addObject:*(*(&v34 + 1) + 8 * j)];
                }

                v13 = [decoratorOverlayViews countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v13);
            }
          }
        }

        v7 = [i_decorators countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v7);
    }

    v16 = [v3 count];
    decoratorOverlayContainerView = selfCopy->_decoratorOverlayContainerView;
    if (v16)
    {
      if (!decoratorOverlayContainerView)
      {
        v18 = objc_alloc_init(CRLCanvasSubview);
        v19 = selfCopy->_decoratorOverlayContainerView;
        selfCopy->_decoratorOverlayContainerView = v18;

        v20 = objc_loadWeakRetained(&selfCopy->_interactiveCanvasController);
        [(CRLCanvasSubview *)selfCopy->_decoratorOverlayContainerView setLayerDelegate:v20];
      }
    }

    else if (!decoratorOverlayContainerView)
    {
LABEL_26:

      return;
    }

    array = [v3 array];
    [(CRLCanvasSubview *)selfCopy->_decoratorOverlayContainerView setSubviews:array];

    v22 = objc_loadWeakRetained(&selfCopy->_interactiveCanvasController);
    layerHost = [v22 layerHost];
    canvasLayer = [layerHost canvasLayer];
    [canvasLayer bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    [(CRLCanvasSubview *)selfCopy->_decoratorOverlayContainerView frame];
    v46.origin.x = v26;
    v46.origin.y = v28;
    v46.size.width = v30;
    v46.size.height = v32;
    if (!CGRectEqualToRect(v44, v46))
    {
      [(CRLCanvasSubview *)selfCopy->_decoratorOverlayContainerView setFrame:v26, v28, v30, v32];
    }

    [(CRLCanvasSubview *)selfCopy->_decoratorOverlayContainerView bounds];
    v47.origin.x = v26;
    v47.origin.y = v28;
    v47.size.width = v30;
    v47.size.height = v32;
    if (!CGRectEqualToRect(v45, v47))
    {
      [(CRLCanvasSubview *)selfCopy->_decoratorOverlayContainerView setBounds:v26, v28, v30, v32];
    }

    goto LABEL_26;
  }
}

- (void)p_recursivelyUpdateLayerEdgeAntialiasingForLayer:(id)layer
{
  layerCopy = layer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [layerCopy setAllowsEdgeAntialiasing:1];
  }

  mask = [layerCopy mask];
  if (mask)
  {
    [(CRLInteractiveCanvasLayerHelper *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:mask];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  sublayers = [layerCopy sublayers];
  v7 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(sublayers);
        }

        [(CRLInteractiveCanvasLayerHelper *)self p_recursivelyUpdateLayerEdgeAntialiasingForLayer:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)p_recursivelySetContentsFormatForLayer:(id)layer toContentsFormat:(id)format
{
  layerCopy = layer;
  formatCopy = format;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [layerCopy setContentsFormat:formatCopy];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [layerCopy sublayers];
  v9 = [sublayers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(sublayers);
        }

        [(CRLInteractiveCanvasLayerHelper *)self p_recursivelySetContentsFormatForLayer:*(*(&v13 + 1) + 8 * v12) toContentsFormat:formatCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [sublayers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)p_updateOverlayViewForReps:(id)reps forcingUpdateOfValidLayers:(BOOL)layers
{
  repsCopy = reps;
  v61 = +[NSThread isMainThread];
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvas = [WeakRetained canvas];

  v7 = objc_alloc_init(NSMutableArray);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = repsCopy;
  v8 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
  selfCopy = self;
  if (v8)
  {
    v9 = v8;
    v10 = *v80;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v80 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v79 + 1) + 8 * i);
        if (layers || [canvas i_areOverlayLayersInvalidForRep:*(*(&v79 + 1) + 8 * i)])
        {
          overlayRenderables = [v12 overlayRenderables];
          [(NSMapTable *)self->_repOverlayRenderablesByRep setObject:overlayRenderables forKeyedSubscript:v12];
          if (!overlayRenderables)
          {
            goto LABEL_19;
          }
        }

        else
        {
          overlayRenderables = [(NSMapTable *)self->_repOverlayRenderablesByRep objectForKeyedSubscript:v12];
          if (!overlayRenderables)
          {
            goto LABEL_19;
          }
        }

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v14 = overlayRenderables;
        v15 = [v14 countByEnumeratingWithState:&v75 objects:v85 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v76;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v76 != v17)
              {
                objc_enumerationMutation(v14);
              }

              layer = [*(*(&v75 + 1) + 8 * j) layer];
              [v7 addObject:layer];
            }

            v16 = [v14 countByEnumeratingWithState:&v75 objects:v85 count:16];
          }

          while (v16);
        }

        self = selfCopy;
LABEL_19:
      }

      v9 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
    }

    while (v9);
  }

  v20 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  i_decorators = [v20 i_decorators];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v63 = i_decorators;
  v22 = [v63 countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = v22;
  v24 = *v72;
  do
  {
    for (k = 0; k != v23; k = k + 1)
    {
      if (*v72 != v24)
      {
        objc_enumerationMutation(v63);
      }

      v26 = *(*(&v71 + 1) + 8 * k);
      if (layers || (v27 = objc_loadWeakRetained(&self->_interactiveCanvasController), v28 = [v27 i_areLayersInvalidForDecorator:v26], v27, v28))
      {
        decoratorOverlayRenderables = [v26 decoratorOverlayRenderables];
        [(NSMapTable *)self->_decoratorOverlayRenderablesByDecorator setObject:decoratorOverlayRenderables forKeyedSubscript:v26];
        if (!decoratorOverlayRenderables)
        {
          goto LABEL_39;
        }
      }

      else
      {
        decoratorOverlayRenderables = [(NSMapTable *)self->_decoratorOverlayRenderablesByDecorator objectForKeyedSubscript:v26];
        if (!decoratorOverlayRenderables)
        {
          goto LABEL_39;
        }
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v30 = decoratorOverlayRenderables;
      v31 = [v30 countByEnumeratingWithState:&v67 objects:v83 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v68;
        do
        {
          for (m = 0; m != v32; m = m + 1)
          {
            if (*v68 != v33)
            {
              objc_enumerationMutation(v30);
            }

            layer2 = [*(*(&v67 + 1) + 8 * m) layer];
            [v7 addObject:layer2];
          }

          v32 = [v30 countByEnumeratingWithState:&v67 objects:v83 count:16];
        }

        while (v32);
      }

      self = selfCopy;
LABEL_39:
    }

    v23 = [v63 countByEnumeratingWithState:&v71 objects:v84 count:16];
  }

  while (v23);
LABEL_41:

  if (((self->_overlayView == 0) & v61) == 1)
  {
    v36 = objc_alloc_init(CRLCanvasSubview);
    overlayView = self->_overlayView;
    self->_overlayView = v36;

    v38 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    [(CRLCanvasSubview *)self->_overlayView setLayerDelegate:v38];

    layer3 = [(CRLCanvasSubview *)self->_overlayView layer];
    overlayLayer = self->_overlayLayer;
    self->_overlayLayer = layer3;
  }

  v41 = self->_overlayLayer;
  if (!v41)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386088();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013860B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386138();
    }

    v42 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v42);
    }

    v43 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper p_updateOverlayViewForReps:forcingUpdateOfValidLayers:]"];
    v44 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v43 file:v44 lineNumber:407 isFatal:0 description:"Layout with overlay layers should have run at least once on the main thread."];

    self = selfCopy;
    v41 = selfCopy->_overlayLayer;
  }

  sublayers = [(CALayer *)v41 sublayers];
  v46 = [sublayers isEqualToArray:v7];

  if ((v46 & 1) == 0)
  {
    [(CALayer *)self->_overlayLayer setSublayers:v7];
  }

  v47 = objc_loadWeakRetained(&self->_interactiveCanvasController);
  showGrayOverlay = [v47 showGrayOverlay];

  if (showGrayOverlay)
  {
    v49 = sub_1000CCEA0(0.0, 0.0, 0.0, 0.219600007);
    [(CALayer *)self->_overlayLayer setBackgroundColor:v49];
    CGColorRelease(v49);
    if (!v61)
    {
      goto LABEL_63;
    }

LABEL_59:
    v50 = objc_loadWeakRetained(&self->_interactiveCanvasController);
    layerHost = [v50 layerHost];
    canvasLayer = [layerHost canvasLayer];
    [canvasLayer bounds];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    [(CRLCanvasSubview *)self->_overlayView frame];
    v89.origin.x = v54;
    v89.origin.y = v56;
    v89.size.width = v58;
    v89.size.height = v60;
    if (!CGRectEqualToRect(v87, v89))
    {
      [(CRLCanvasSubview *)self->_overlayView setFrame:v54, v56, v58, v60];
    }

    [(CRLCanvasSubview *)self->_overlayView bounds];
    v90.origin.x = v54;
    v90.origin.y = v56;
    v90.size.width = v58;
    v90.size.height = v60;
    if (!CGRectEqualToRect(v88, v90))
    {
      [(CRLCanvasSubview *)self->_overlayView setBounds:v54, v56, v58, v60];
    }
  }

  else
  {
    [(CALayer *)self->_overlayLayer setBackgroundColor:0];
    if (v61)
    {
      goto LABEL_59;
    }
  }

LABEL_63:
}

- (id)viewWithTransferredLayers
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvasView = [WeakRetained canvasView];

  v5 = [CRLCanvasSubview alloc];
  [canvasView frame];
  v6 = [(CRLCanvasSubview *)v5 initWithFrame:?];
  v25 = canvasView;
  [canvasView bounds];
  v24 = v6;
  [(CRLCanvasSubview *)v6 setBounds:?];
  subviews = [(CRLCanvasSubview *)self->_repContainerView subviews];
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(subviews, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = subviews;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        subviews2 = [v14 subviews];
        v16 = [subviews2 count];

        if (!v16)
        {
          v17 = [CRLCanvasSubview alloc];
          [v14 frame];
          v18 = [(CRLCanvasSubview *)v17 initWithFrame:?];
          [v14 bounds];
          [(CRLCanvasSubview *)v18 setBounds:?];
          layer = [v14 layer];
          sublayers = [layer sublayers];
          v21 = [sublayers copy];

          layer2 = [(CRLCanvasSubview *)v18 layer];
          [layer2 setSublayers:v21];

          [v8 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [(CRLCanvasSubview *)v24 setSubviews:v8];

  return v24;
}

- (BOOL)isCanvasContentLayer:(id)layer
{
  layerCopy = layer;
  if ([(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater isRepContentLayer:layerCopy]|| [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater isRepContainerLayer:layerCopy]|| [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater isChildWrapperLayer:layerCopy]|| [(CRLInteractiveCanvasRepContentUpdater *)self->_repContentUpdater isClonedParentRepLayer:layerCopy]|| self->_repContainerLayer == layerCopy)
  {
    v8 = 1;
  }

  else
  {
    superlayer = [(CALayer *)layerCopy superlayer];
    if (superlayer == self->_repContainerLayer || self->_overlayLayer == layerCopy)
    {
      v8 = 1;
    }

    else
    {
      superlayer2 = [(CALayer *)layerCopy superlayer];
      if (superlayer2 == self->_overlayLayer || self->_bottommostLayersContainerLayer == layerCopy)
      {
        v8 = 1;
      }

      else
      {
        superlayer3 = [(CALayer *)layerCopy superlayer];
        v8 = superlayer3 == 0;
      }
    }
  }

  return v8;
}

- (void)beginSuppressingLayerUpdatesExceptForReps:(id)reps
{
  v4 = [reps copy];
  repsWhoseLayersAreAllowedToUpdate = self->_repsWhoseLayersAreAllowedToUpdate;
  self->_repsWhoseLayersAreAllowedToUpdate = v4;
}

- (void)endSuppressingLayerUpdates
{
  repsWhoseLayersAreAllowedToUpdate = self->_repsWhoseLayersAreAllowedToUpdate;
  if (!repsWhoseLayersAreAllowedToUpdate)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101386160();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386174();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101386224();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper endSuppressingLayerUpdates]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:517 isFatal:0 description:"invalid nil value for '%{public}s'", "_repsWhoseLayersAreAllowedToUpdate"];

    repsWhoseLayersAreAllowedToUpdate = self->_repsWhoseLayersAreAllowedToUpdate;
  }

  self->_repsWhoseLayersAreAllowedToUpdate = 0;
}

- (void)updateLayerContainerFrames
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138624C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101386260();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013862E8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasLayerHelper updateLayerContainerFrames]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasLayerHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:528 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  canvasView = [WeakRetained canvasView];
  canvasLayer = [canvasView canvasLayer];
  [canvasLayer bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(CRLCanvasSubview *)self->_repContainerView setFrame:v10, v12, v14, v16];
  [(CRLCanvasSubview *)self->_repContainerView setBounds:v10, v12, v14, v16];
  [(CRLInteractiveCanvasRepContentSubviewUpdater *)self->_repContentSubviewUpdater updateSubviewFrames];
  [(CRLCanvasSubview *)self->_bottommostLayersContainerView setFrame:v10, v12, v14, v16];
  [(CRLCanvasSubview *)self->_bottommostLayersContainerView setBounds:v10, v12, v14, v16];
  [(CRLCanvasSubview *)self->_overlayView setFrame:v10, v12, v14, v16];
  [(CRLCanvasSubview *)self->_overlayView setBounds:v10, v12, v14, v16];
  [(CRLCanvasSubview *)self->_decoratorOverlayContainerView setFrame:v10, v12, v14, v16];
  [(CRLCanvasSubview *)self->_decoratorOverlayContainerView setBounds:v10, v12, v14, v16];
}

@end