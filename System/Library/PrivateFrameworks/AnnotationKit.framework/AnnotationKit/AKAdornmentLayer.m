@interface AKAdornmentLayer
+ (Class)_adornmentClassForAnnotation:(id)a3;
+ (id)newAdornmentLayerForAnnotation:(id)a3 withPageController:(id)a4;
- (AKPageController)pageController;
- (id)_initWithAnnotation:(id)a3 andPageController:(id)a4;
- (id)handleSublayerWithStyle:(unint64_t)a3;
- (unint64_t)currentlyDraggedArea;
- (void)_addHandleSublayerAtPoint:(CGPoint)a3 withStyle:(unint64_t)a4;
- (void)_startObservingAnnotation;
- (void)_startObservingAnnotationEventHandlers;
- (void)_stopObservingAnnotation;
- (void)_stopObservingAnnotationEventHandlers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)teardown;
- (void)updateAdornmentElements;
- (void)updatePixelAlignment;
- (void)updateSublayersWithScale:(double)a3;
@end

@implementation AKAdornmentLayer

+ (id)newAdornmentLayerForAnnotation:(id)a3 withPageController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_msgSend(a1 _adornmentClassForAnnotation:{v7)), "_initWithAnnotation:andPageController:", v7, v6}];

  return v8;
}

- (id)_initWithAnnotation:(id)a3 andPageController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AKAdornmentLayer;
  v8 = [(AKAdornmentLayer *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(AKAdornmentLayer *)v8 setAnnotation:v6];
    [(AKAdornmentLayer *)v9 setPageController:v7];
    [(AKAdornmentLayer *)v9 setCurrentScaleFactor:9.22337204e18];
    v10 = [v7 geometryHelper];
    [v10 adornmentLayerFrameForAnnotation:v6];
    [(AKAdornmentLayer *)v9 setFrame:?];

    v11 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(AKAdornmentLayer *)v9 setHandleContainerLayer:v11];

    v12 = [(AKAdornmentLayer *)v9 handleContainerLayer];
    [(AKAdornmentLayer *)v9 addSublayer:v12];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == @"AKAdornmentLayer.modelAnnotationObservationContext")
  {
    if ([v10 isEqualToString:@"drawingBounds"])
    {
      v13 = [(AKAdornmentLayer *)self pageController];
      v14 = [v13 geometryHelper];
      v15 = [(AKAdornmentLayer *)self annotation];
      [v14 adornmentLayerFrameForAnnotation:v15];
      [(AKAdornmentLayer *)self setFrame:?];
    }

    goto LABEL_6;
  }

  if (a6 == @"AKAdornmentLayer.eventHandlingObservationContext")
  {
LABEL_6:
    [(AKAdornmentLayer *)self updateAdornmentElements];
    goto LABEL_7;
  }

  v16.receiver = self;
  v16.super_class = AKAdornmentLayer;
  [(AKAdornmentLayer *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_7:
}

- (unint64_t)currentlyDraggedArea
{
  v3 = [(AKAdornmentLayer *)self pageController];
  v4 = [v3 controller];
  v5 = [v4 mainEventHandler];
  v6 = [v5 annotationEventHandler];

  if (v6 && ([v6 annotation], v7 = objc_claimAutoreleasedReturnValue(), -[AKAdornmentLayer annotation](self, "annotation"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
  {
    v9 = [v6 initiallyDraggedArea];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updatePixelAlignment
{
  v3 = [(AKAdornmentLayer *)self pageController];
  if (v3)
  {
    v4 = v3;
    [(AKAdornmentLayer *)self updateAdornmentElements];
    v3 = v4;
  }
}

- (void)updateAdornmentElements
{
  v3 = [(AKAdornmentLayer *)self pageController];
  v37 = 0;
  v38 = 0;
  v4 = [(AKAdornmentLayer *)self annotation];
  [AKAnnotationPointOfInterestHelper pointsOfInterest:&v38 withVisualStyle:&v37 ofAnnotation:v4 pageControllerForPixelAlignment:v3];
  v5 = v38;
  v6 = v37;

  v7 = [v5 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  v9 = [v6 reverseObjectEnumerator];
  v10 = [v9 allObjects];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v11 = [(AKAdornmentLayer *)self handleContainerLayer];
  v12 = [(AKAdornmentLayer *)self annotation];
  if (![v12 isEditingText])
  {
    v16 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = [(AKAdornmentLayer *)self annotation];
  v14 = [v13 isMemberOfClass:objc_opt_class()];

  if (v14)
  {
    v12 = [(AKAdornmentLayer *)self annotation];
    v15 = [v12 fillColor];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v17 = [v12 strokeColor];
      if (v17)
      {
        [v12 strokeWidth];
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
  v19 = [v8 count];
  v20 = [v11 sublayers];
  v21 = [v20 count];

  if (v16 || v19 != v21)
  {
    v22 = [v11 sublayers];
    [v22 makeObjectsPerformSelector:sel_removeFromSuperlayer];
  }

  v23 = [v11 sublayers];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [v11 sublayers];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_23F45DAB4;
    v30[3] = &unk_278C7BE18;
    v26 = &v31;
    v31 = v8;
    v27 = v32;
    v32[0] = v3;
    v32[1] = self;
    [v25 enumerateObjectsUsingBlock:v30];
  }

  else
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_23F45D9C4;
    v33[3] = &unk_278C7BDF0;
    v26 = &v34;
    v34 = v10;
    v36 = v16;
    v27 = v35;
    v35[0] = v3;
    v35[1] = self;
    [v8 enumerateObjectsUsingBlock:v33];
  }

  v28 = [(AKAdornmentLayer *)self handleContainerLayer];
  [v28 removeFromSuperlayer];

  v29 = [(AKAdornmentLayer *)self handleContainerLayer];
  [(AKAdornmentLayer *)self addSublayer:v29];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateSublayersWithScale:(double)a3
{
  v19 = *MEMORY[0x277D85DE8];
  [(AKAdornmentLayer *)self setCurrentScaleFactor:?];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(AKAdornmentLayer *)self handleContainerLayer];
  v6 = [v5 sublayers];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = 1.0 / a3;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        CGAffineTransformMakeScale(&v13, v10, v10);
        [v12 setAffineTransform:&v13];
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)handleSublayerWithStyle:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(__objc2_class *)*off_278C7BE38[a3] layer];
  }

  [(AKAdornmentLayer *)self currentScaleFactor];
  if (v5 != 9.22337204e18)
  {
    CGAffineTransformMakeScale(&v7, 1.0 / v5, 1.0 / v5);
    [v4 setAffineTransform:&v7];
  }

  return v4;
}

- (void)_addHandleSublayerAtPoint:(CGPoint)a3 withStyle:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(AKAdornmentLayer *)self handleSublayerWithStyle:a4];
  if (v7)
  {
    v9 = v7;
    v8 = [(AKAdornmentLayer *)self handleContainerLayer];
    [v8 addSublayer:v9];

    [v9 setPosition:{x, y}];
    v7 = v9;
  }
}

- (void)_startObservingAnnotation
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(AKAdornmentLayer *)self isObservingAnnotation])
  {
    v3 = [(AKAdornmentLayer *)self annotation];
    v4 = [v3 keysForValuesToObserveForAdornments];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:0 context:@"AKAdornmentLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    v3 = [(AKAdornmentLayer *)self annotation];
    v4 = [v3 keysForValuesToObserveForAdornments];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:@"AKAdornmentLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    v5 = [(AKAdornmentLayer *)self pageController];
    v3 = [v5 controller];
    v4 = [v3 mainEventHandler];
    [v4 addObserver:self forKeyPath:@"annotationEventHandler" options:0 context:@"AKAdornmentLayer.eventHandlingObservationContext"];
    [(AKAdornmentLayer *)self setIsObservingEventHandling:1];
  }
}

- (void)_stopObservingAnnotationEventHandlers
{
  if ([(AKAdornmentLayer *)self isObservingEventHandling])
  {
    v5 = [(AKAdornmentLayer *)self pageController];
    v3 = [v5 controller];
    v4 = [v3 mainEventHandler];
    [v4 removeObserver:self forKeyPath:@"annotationEventHandler" context:@"AKAdornmentLayer.eventHandlingObservationContext"];
    [(AKAdornmentLayer *)self setIsObservingEventHandling:0];
  }
}

+ (Class)_adornmentClassForAnnotation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ![v3 isMemberOfClass:objc_opt_class()])
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
              [v3 visualStyle];
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