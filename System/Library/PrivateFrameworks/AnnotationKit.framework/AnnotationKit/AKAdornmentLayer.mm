@interface AKAdornmentLayer
+ (Class)_adornmentClassForAnnotation:(id)annotation;
+ (id)newAdornmentLayerForAnnotation:(id)annotation withPageController:(id)controller;
- (AKPageController)pageController;
- (id)_initWithAnnotation:(id)annotation andPageController:(id)controller;
- (id)handleSublayerWithStyle:(unint64_t)style;
- (unint64_t)currentlyDraggedArea;
- (void)_addHandleSublayerAtPoint:(CGPoint)point withStyle:(unint64_t)style;
- (void)_startObservingAnnotation;
- (void)_startObservingAnnotationEventHandlers;
- (void)_stopObservingAnnotation;
- (void)_stopObservingAnnotationEventHandlers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)teardown;
- (void)updateAdornmentElements;
- (void)updatePixelAlignment;
- (void)updateSublayersWithScale:(double)scale;
@end

@implementation AKAdornmentLayer

+ (id)newAdornmentLayerForAnnotation:(id)annotation withPageController:(id)controller
{
  controllerCopy = controller;
  annotationCopy = annotation;
  v8 = [objc_alloc(objc_msgSend(self _adornmentClassForAnnotation:{annotationCopy)), "_initWithAnnotation:andPageController:", annotationCopy, controllerCopy}];

  return v8;
}

- (id)_initWithAnnotation:(id)annotation andPageController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = AKAdornmentLayer;
  v8 = [(AKAdornmentLayer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(AKAdornmentLayer *)v8 setAnnotation:annotationCopy];
    [(AKAdornmentLayer *)v9 setPageController:controllerCopy];
    [(AKAdornmentLayer *)v9 setCurrentScaleFactor:9.22337204e18];
    geometryHelper = [controllerCopy geometryHelper];
    [geometryHelper adornmentLayerFrameForAnnotation:annotationCopy];
    [(AKAdornmentLayer *)v9 setFrame:?];

    v11 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(AKAdornmentLayer *)v9 setHandleContainerLayer:v11];

    handleContainerLayer = [(AKAdornmentLayer *)v9 handleContainerLayer];
    [(AKAdornmentLayer *)v9 addSublayer:handleContainerLayer];

    [(AKAdornmentLayer *)v9 updateAdornmentElements];
    [(AKAdornmentLayer *)v9 _startObservingAnnotation];
    if ([(AKAdornmentLayer *)v9 needsUpdateWhenDraggingStartsOrEnds])
    {
      [(AKAdornmentLayer *)v9 _startObservingAnnotationEventHandlers];
    }
  }

  return v9;
}

- (void)dealloc
{
  [(AKAdornmentLayer *)self teardown];
  v3.receiver = self;
  v3.super_class = AKAdornmentLayer;
  [(AKAdornmentLayer *)&v3 dealloc];
}

- (void)teardown
{
  [(AKAdornmentLayer *)self _stopObservingAnnotation];

  [(AKAdornmentLayer *)self _stopObservingAnnotationEventHandlers];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == @"AKAdornmentLayer.modelAnnotationObservationContext")
  {
    if ([pathCopy isEqualToString:@"drawingBounds"])
    {
      pageController = [(AKAdornmentLayer *)self pageController];
      geometryHelper = [pageController geometryHelper];
      annotation = [(AKAdornmentLayer *)self annotation];
      [geometryHelper adornmentLayerFrameForAnnotation:annotation];
      [(AKAdornmentLayer *)self setFrame:?];
    }

    goto LABEL_6;
  }

  if (context == @"AKAdornmentLayer.eventHandlingObservationContext")
  {
LABEL_6:
    [(AKAdornmentLayer *)self updateAdornmentElements];
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = AKAdornmentLayer;
  [(AKAdornmentLayer *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_7:
}

- (unint64_t)currentlyDraggedArea
{
  pageController = [(AKAdornmentLayer *)self pageController];
  controller = [pageController controller];
  mainEventHandler = [controller mainEventHandler];
  annotationEventHandler = [mainEventHandler annotationEventHandler];

  if (annotationEventHandler && ([annotationEventHandler annotation], v7 = objc_claimAutoreleasedReturnValue(), -[AKAdornmentLayer annotation](self, "annotation"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
  {
    initiallyDraggedArea = [annotationEventHandler initiallyDraggedArea];
  }

  else
  {
    initiallyDraggedArea = 0;
  }

  return initiallyDraggedArea;
}

- (void)updatePixelAlignment
{
  pageController = [(AKAdornmentLayer *)self pageController];
  if (pageController)
  {
    v4 = pageController;
    [(AKAdornmentLayer *)self updateAdornmentElements];
    pageController = v4;
  }
}

- (void)updateAdornmentElements
{
  pageController = [(AKAdornmentLayer *)self pageController];
  v37 = 0;
  v38 = 0;
  annotation = [(AKAdornmentLayer *)self annotation];
  [AKAnnotationPointOfInterestHelper pointsOfInterest:&v38 withVisualStyle:&v37 ofAnnotation:annotation pageControllerForPixelAlignment:pageController];
  v5 = v38;
  v6 = v37;

  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  reverseObjectEnumerator2 = [v6 reverseObjectEnumerator];
  allObjects2 = [reverseObjectEnumerator2 allObjects];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  handleContainerLayer = [(AKAdornmentLayer *)self handleContainerLayer];
  annotation2 = [(AKAdornmentLayer *)self annotation];
  if (![annotation2 isEditingText])
  {
    v16 = 0;
LABEL_12:

    goto LABEL_13;
  }

  annotation3 = [(AKAdornmentLayer *)self annotation];
  v14 = [annotation3 isMemberOfClass:objc_opt_class()];

  if (v14)
  {
    annotation2 = [(AKAdornmentLayer *)self annotation];
    fillColor = [annotation2 fillColor];
    if (fillColor)
    {
      v16 = 0;
    }

    else
    {
      strokeColor = [annotation2 strokeColor];
      if (strokeColor)
      {
        [annotation2 strokeWidth];
        v16 = v18 <= 0.0;
      }

      else
      {
        v16 = 1;
      }
    }

    goto LABEL_12;
  }

  v16 = 0;
LABEL_13:
  v19 = [allObjects count];
  sublayers = [handleContainerLayer sublayers];
  v21 = [sublayers count];

  if (v16 || v19 != v21)
  {
    sublayers2 = [handleContainerLayer sublayers];
    [sublayers2 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  sublayers3 = [handleContainerLayer sublayers];
  v24 = [sublayers3 count];

  if (v24)
  {
    sublayers4 = [handleContainerLayer sublayers];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_23F45DAB4;
    v30[3] = &unk_278C7BE18;
    v26 = &v31;
    v31 = allObjects;
    v27 = v32;
    v32[0] = pageController;
    v32[1] = self;
    [sublayers4 enumerateObjectsUsingBlock:v30];
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_23F45D9C4;
    v33[3] = &unk_278C7BDF0;
    v26 = &v34;
    v34 = allObjects2;
    v36 = v16;
    v27 = v35;
    v35[0] = pageController;
    v35[1] = self;
    [allObjects enumerateObjectsUsingBlock:v33];
  }

  handleContainerLayer2 = [(AKAdornmentLayer *)self handleContainerLayer];
  [handleContainerLayer2 removeFromSuperlayer];

  handleContainerLayer3 = [(AKAdornmentLayer *)self handleContainerLayer];
  [(AKAdornmentLayer *)self addSublayer:handleContainerLayer3];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)scale
{
  v19 = *MEMORY[0x277D85DE8];
  [(AKAdornmentLayer *)self setCurrentScaleFactor:?];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  handleContainerLayer = [(AKAdornmentLayer *)self handleContainerLayer];
  sublayers = [handleContainerLayer sublayers];

  v7 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = 1.0 / scale;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(sublayers);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        CGAffineTransformMakeScale(&v13, v10, v10);
        [v12 setAffineTransform:&v13];
        ++v11;
      }

      while (v8 != v11);
      v8 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)handleSublayerWithStyle:(unint64_t)style
{
  if (style > 2)
  {
    layer = 0;
  }

  else
  {
    layer = [(__objc2_class *)*off_278C7BE38[style] layer];
  }

  [(AKAdornmentLayer *)self currentScaleFactor];
  if (v5 != 9.22337204e18)
  {
    CGAffineTransformMakeScale(&v7, 1.0 / v5, 1.0 / v5);
    [layer setAffineTransform:&v7];
  }

  return layer;
}

- (void)_addHandleSublayerAtPoint:(CGPoint)point withStyle:(unint64_t)style
{
  y = point.y;
  x = point.x;
  v7 = [(AKAdornmentLayer *)self handleSublayerWithStyle:style];
  if (v7)
  {
    v9 = v7;
    handleContainerLayer = [(AKAdornmentLayer *)self handleContainerLayer];
    [handleContainerLayer addSublayer:v9];

    [v9 setPosition:{x, y}];
    v7 = v9;
  }
}

- (void)_startObservingAnnotation
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(AKAdornmentLayer *)self isObservingAnnotation])
  {
    annotation = [(AKAdornmentLayer *)self annotation];
    keysForValuesToObserveForAdornments = [annotation keysForValuesToObserveForAdornments];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [keysForValuesToObserveForAdornments countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(keysForValuesToObserveForAdornments);
          }

          [annotation addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:0 context:@"AKAdornmentLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [keysForValuesToObserveForAdornments countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(AKAdornmentLayer *)self setIsObservingAnnotation:1];
  }
}

- (void)_stopObservingAnnotation
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(AKAdornmentLayer *)self isObservingAnnotation])
  {
    annotation = [(AKAdornmentLayer *)self annotation];
    keysForValuesToObserveForAdornments = [annotation keysForValuesToObserveForAdornments];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [keysForValuesToObserveForAdornments countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(keysForValuesToObserveForAdornments);
          }

          [annotation removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:@"AKAdornmentLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [keysForValuesToObserveForAdornments countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(AKAdornmentLayer *)self setIsObservingAnnotation:0];
  }
}

- (void)_startObservingAnnotationEventHandlers
{
  if (![(AKAdornmentLayer *)self isObservingEventHandling])
  {
    pageController = [(AKAdornmentLayer *)self pageController];
    controller = [pageController controller];
    mainEventHandler = [controller mainEventHandler];
    [mainEventHandler addObserver:self forKeyPath:@"annotationEventHandler" options:0 context:@"AKAdornmentLayer.eventHandlingObservationContext"];
    [(AKAdornmentLayer *)self setIsObservingEventHandling:1];
  }
}

- (void)_stopObservingAnnotationEventHandlers
{
  if ([(AKAdornmentLayer *)self isObservingEventHandling])
  {
    pageController = [(AKAdornmentLayer *)self pageController];
    controller = [pageController controller];
    mainEventHandler = [controller mainEventHandler];
    [mainEventHandler removeObserver:self forKeyPath:@"annotationEventHandler" context:@"AKAdornmentLayer.eventHandlingObservationContext"];
    [(AKAdornmentLayer *)self setIsObservingEventHandling:0];
  }
}

+ (Class)_adornmentClassForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ![annotationCopy isMemberOfClass:objc_opt_class()])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [annotationCopy visualStyle];
            }
          }
        }
      }
    }
  }

  v4 = objc_opt_class();

  return v4;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end