@interface AKAnnotationLayer
+ (id)newAnnotationLayerForAnnotation:(id)annotation withPageController:(id)controller;
- (AKPageController)pageController;
- (id)_initWithAnnotation:(id)annotation andPageController:(id)controller;
- (void)_addDebugVisuals;
- (void)_removeDebugVisuals;
- (void)_startObservingAnnotation;
- (void)_stopObservingAnnotation;
- (void)_updateAnnotationLayerWithLoupeFastPath:(BOOL)path;
- (void)_updateLayerRange;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateContents;
- (void)updatePixelAlignment;
@end

@implementation AKAnnotationLayer

+ (id)newAnnotationLayerForAnnotation:(id)annotation withPageController:(id)controller
{
  controllerCopy = controller;
  annotationCopy = annotation;
  v8 = [[self alloc] _initWithAnnotation:annotationCopy andPageController:controllerCopy];

  return v8;
}

- (id)_initWithAnnotation:(id)annotation andPageController:(id)controller
{
  annotationCopy = annotation;
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = AKAnnotationLayer;
  v8 = [(AKAnnotationLayer *)&v28 init];
  v9 = v8;
  if (v8)
  {
    [(AKAnnotationLayer *)v8 setAnnotation:annotationCopy];
    [(AKAnnotationLayer *)v9 setPageController:controllerCopy];
    [(AKAnnotationLayer *)v9 setShouldRecalculateLoupeImage:1];
    [(AKAnnotationLayer *)v9 setDrawsAsynchronously:1];
    geometryHelper = [controllerCopy geometryHelper];
    annotation = [(AKAnnotationLayer *)v9 annotation];
    [geometryHelper annotationLayerFrameForAnnotation:annotation layerIsClipped:0];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [(AKAnnotationLayer *)v9 setFrame:v13, v15, v17, v19];
    [(AKAnnotationLayer *)v9 _startObservingAnnotation];
    [(AKAnnotationLayer *)v9 _updateAnnotationLayerWithLoupeFastPath:1];
    v20 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5A8]];
      [(AKAnnotationLayer *)v9 setCompositingFilter:v22];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_initWeak(&location, v9);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23F444214;
      block[3] = &unk_278C7B888;
      objc_copyWeak(&v26, &location);
      v25 = annotationCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    if (sub_23F4ABAF8())
    {
      [(AKAnnotationLayer *)v9 _addDebugVisuals];
    }

    [(AKAnnotationLayer *)v9 _updateLayerRange];
  }

  return v9;
}

- (void)dealloc
{
  [(AKAnnotationLayer *)self _stopObservingAnnotation];
  v3.receiver = self;
  v3.super_class = AKAnnotationLayer;
  [(AKAnnotationLayer *)&v3 dealloc];
}

- (void)drawInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  v12.receiver = self;
  v12.super_class = AKAnnotationLayer;
  [(AKAnnotationLayer *)&v12 drawInContext:context];
  [(AKAnnotationLayer *)self _updateLayerRange];
  pageController = [(AKAnnotationLayer *)self pageController];
  controller = [pageController controller];
  v7 = objc_alloc_init(AKAnnotationRendererOptions);
  [(AKAnnotationRendererOptions *)v7 setForDisplay:1];
  preferredDynamicRange = [(AKAnnotationLayer *)self preferredDynamicRange];
  if ([preferredDynamicRange isEqualToString:*MEMORY[0x277CD9DB0]])
  {
    [(AKAnnotationRendererOptions *)v7 setAllowHDR:1];
  }

  else
  {
    preferredDynamicRange2 = [(AKAnnotationLayer *)self preferredDynamicRange];
    -[AKAnnotationRendererOptions setAllowHDR:](v7, "setAllowHDR:", [preferredDynamicRange2 isEqualToString:*MEMORY[0x277CD9DB8]]);
  }

  [controller availableHeadroom];
  [(AKAnnotationRendererOptions *)v7 setAvailableHeadroom:?];
  modelController = [controller modelController];
  [modelController annotationHeadroom];
  [(AKAnnotationRendererOptions *)v7 setDesiredHeadroom:?];

  annotation = [(AKAnnotationLayer *)self annotation];
  [AKAnnotationRenderer renderAnnotation:annotation intoContext:context options:v7 pageControllerOrNil:pageController];

  CGContextRestoreGState(context);
}

- (void)updateContents
{
  [(AKAnnotationLayer *)self _updateAnnotationLayerWithLoupeFastPath:0];

  [(AKAnnotationLayer *)self setNeedsDisplay];
}

- (void)updatePixelAlignment
{
  pageController = [(AKAnnotationLayer *)self pageController];
  if (pageController)
  {
    v16 = pageController;
    geometryHelper = [pageController geometryHelper];
    annotation = [(AKAnnotationLayer *)self annotation];
    [geometryHelper annotationLayerFrameForAnnotation:annotation layerIsClipped:0];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(AKAnnotationLayer *)self setFrame:v7, v9, v11, v13];
    [(AKAnnotationLayer *)self borderWidth];
    if ((((v14 != 1.0) ^ sub_23F4ABAF8()) & 1) == 0)
    {
      [(AKAnnotationLayer *)self borderWidth];
      if (v15 == 0.0)
      {
        [(AKAnnotationLayer *)self _addDebugVisuals];
      }

      else
      {
        [(AKAnnotationLayer *)self _removeDebugVisuals];
      }
    }

    [(AKAnnotationLayer *)self setNeedsDisplay];
    [MEMORY[0x277CD9FF0] commit];
    pageController = v16;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (context == @"AKAnnotationLayer.modelAnnotationObservationContext")
  {
    pageController = [(AKAnnotationLayer *)self pageController];
    if (!pageController)
    {
      goto LABEL_30;
    }

    v12 = pageController;
    lastRedrawWasForDrawingBounds = [(AKAnnotationLayer *)self lastRedrawWasForDrawingBounds];
    [(AKAnnotationLayer *)self setLastRedrawWasForDrawingBounds:0];
    -[AKAnnotationLayer setShouldRecalculateLoupeImage:](self, "setShouldRecalculateLoupeImage:", [pathCopy isEqualToString:@"strokeColor"] ^ 1);
    if (![pathCopy isEqualToString:@"drawingBounds"])
    {
      [(AKAnnotationLayer *)self _updateLayerRange];
      if (lastRedrawWasForDrawingBounds && ([pathCopy isEqualToString:@"rectangle"] & 1) != 0)
      {
        goto LABEL_29;
      }

      annotation = [(AKAnnotationLayer *)self annotation];
      if ([annotation isTranslating])
      {
        annotation2 = [(AKAnnotationLayer *)self annotation];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      annotation3 = [(AKAnnotationLayer *)self annotation];
      -[AKAnnotationLayer _updateAnnotationLayerWithLoupeFastPath:](self, "_updateAnnotationLayerWithLoupeFastPath:", [annotation3 isDraggingHandle]);

LABEL_29:
      [(AKAnnotationLayer *)self setShouldRecalculateLoupeImage:1];

      goto LABEL_30;
    }

    [MEMORY[0x277CD9FF0] begin];
    v14 = 1;
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v42 = 0;
    geometryHelper = [v12 geometryHelper];
    annotation4 = [(AKAnnotationLayer *)self annotation];
    [geometryHelper annotationLayerFrameForAnnotation:annotation4 layerIsClipped:&v42];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    if (v42)
    {
      wasLastDrawingClipped = 0;
    }

    else
    {
      wasLastDrawingClipped = [(AKAnnotationLayer *)self wasLastDrawingClipped];
      v14 = v42;
    }

    [(AKAnnotationLayer *)self setWasLastDrawingClipped:v14 & 1];
    annotation5 = [(AKAnnotationLayer *)self annotation];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if ((v42 & 1) == 0 && !wasLastDrawingClipped && (v30 & 1) == 0)
    {
      annotation6 = [(AKAnnotationLayer *)self annotation];
      if ([annotation6 isTranslating])
      {
        annotation7 = [(AKAnnotationLayer *)self annotation];
        isEditingText = [annotation7 isEditingText];

        if ((isEditingText & 1) == 0)
        {
          annotation8 = [(AKAnnotationLayer *)self annotation];
          isTranslating = [annotation8 isTranslating];

          if (isTranslating)
          {
            [(AKAnnotationLayer *)self frame];
            v22 = v36;
            v24 = v37;
          }

          [(AKAnnotationLayer *)self setFrame:v18, v20, v22, v24];
          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    [(AKAnnotationLayer *)self setFrame:v18, v20, v22, v24];
    [(AKAnnotationLayer *)self setLastRedrawWasForDrawingBounds:1];
    annotation9 = [(AKAnnotationLayer *)self annotation];
    if ([annotation9 isTranslating])
    {
      [(AKAnnotationLayer *)self _updateAnnotationLayerWithLoupeFastPath:1];
    }

    else
    {
      annotation10 = [(AKAnnotationLayer *)self annotation];
      -[AKAnnotationLayer _updateAnnotationLayerWithLoupeFastPath:](self, "_updateAnnotationLayerWithLoupeFastPath:", [annotation10 isDraggingHandle]);
    }

LABEL_28:
    [MEMORY[0x277CD9FF0] commit];
    goto LABEL_29;
  }

  v41.receiver = self;
  v41.super_class = AKAnnotationLayer;
  [(AKAnnotationLayer *)&v41 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
LABEL_30:
}

- (void)_updateLayerRange
{
  if (qword_27E39B608 != -1)
  {
    sub_23F4BD038();
  }

  if (byte_27E39B600 == 1)
  {
    annotation = [(AKAnnotationLayer *)self annotation];
    akIsEDR = [annotation conformsToProtocol:&unk_2851D6420];

    annotation2 = [(AKAnnotationLayer *)self annotation];
    if ([annotation2 conformsToProtocol:&unk_2851D6300])
    {
      isKindOfClass = 1;
    }

    else
    {
      annotation3 = [(AKAnnotationLayer *)self annotation];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    annotation4 = [(AKAnnotationLayer *)self annotation];
    v9 = [annotation4 conformsToProtocol:&unk_2851D6B08];

    if (akIsEDR)
    {
      annotation5 = [(AKAnnotationLayer *)self annotation];
      fillColorHDR = [annotation5 fillColorHDR];
      if (fillColorHDR)
      {
        fillColorHDR2 = [annotation5 fillColorHDR];
        akIsEDR = [fillColorHDR2 akIsEDR];
      }

      else
      {
        akIsEDR = 0;
      }

      if ((isKindOfClass & 1) == 0)
      {
LABEL_10:
        if (!v9)
        {
LABEL_24:
          annotation6 = [(AKAnnotationLayer *)self annotation];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();

          if (v21)
          {
            annotation7 = [(AKAnnotationLayer *)self annotation];
            image = [annotation7 image];

            if (image)
            {
              image2 = [annotation7 image];
              akIsEDR |= [image2 akIsHDR];
            }
          }

          annotation8 = [(AKAnnotationLayer *)self annotation];
          objc_opt_class();
          v26 = akIsEDR | objc_opt_isKindOfClass();

          v28 = v26 & 1;
          v27 = (v26 & 1) == 0;
          if (v26)
          {
            v29 = MEMORY[0x277CD9DB8];
          }

          else
          {
            v29 = MEMORY[0x277CD9DC0];
          }

          if (v27)
          {
            v30 = MEMORY[0x277CDA0D8];
          }

          else
          {
            v30 = MEMORY[0x277CDA0D0];
          }

          [(AKAnnotationLayer *)self setWantsExtendedDynamicRangeContent:v28];
          [(AKAnnotationLayer *)self setPreferredDynamicRange:*v29];
          v31 = *v30;

          [(AKAnnotationLayer *)self setContentsFormat:v31];
          return;
        }

LABEL_19:
        annotation9 = [(AKAnnotationLayer *)self annotation];
        annotationText = [annotation9 annotationText];
        foregroundColorHDR = [annotation9 foregroundColorHDR];
        if (!foregroundColorHDR)
        {
          if ([annotationText length])
          {
            v19 = [annotationText attributesAtIndex:0 effectiveRange:0];
            foregroundColorHDR = [v19 objectForKey:@"NSColor"];
          }

          else
          {
            foregroundColorHDR = 0;
          }
        }

        akIsEDR |= [foregroundColorHDR akIsEDR];

        goto LABEL_24;
      }
    }

    else if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_10;
    }

    annotation10 = [(AKAnnotationLayer *)self annotation];
    strokeColorHDR = [annotation10 strokeColorHDR];
    if (strokeColorHDR)
    {
      strokeColorHDR2 = [annotation10 strokeColorHDR];
      akIsEDR |= [strokeColorHDR2 akIsEDR];
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }
}

- (void)_updateAnnotationLayerWithLoupeFastPath:(BOOL)path
{
  pathCopy = path;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  if (pathCopy)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  [threadDictionary setObject:v7 forKey:@"AKAnnotationRendererIsFastPathRenderingOnCurrentThread"];
  annotation = [(AKAnnotationLayer *)self annotation];
  if (!pathCopy || ![AKAnnotationRenderer annotationShouldAvoidRedrawDuringLiveResize:annotation])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pageController = [(AKAnnotationLayer *)self pageController];
      v10 = annotation;
      v11 = v10;
      if (pathCopy)
      {
        fastPathLayer = [(AKAnnotationLayer *)self fastPathLayer];

        if (!fastPathLayer)
        {
          layer = [MEMORY[0x277CD9F90] layer];
          [layer setFillRule:*MEMORY[0x277CDA248]];
          v14 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
          [layer setFillColor:{objc_msgSend(v14, "CGColor")}];

          layer2 = [MEMORY[0x277CD9ED0] layer];
          [(AKAnnotationLayer *)self setFastPathLayer:layer2];

          fastPathLayer2 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer2 setMask:layer];

          v17 = *MEMORY[0x277CDA5B8];
          fastPathLayer3 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer3 setMinificationFilter:v17];

          fastPathLayer4 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer4 setMagnificationFilter:v17];

          superlayer = [(AKAnnotationLayer *)self superlayer];
          fastPathLayer5 = [(AKAnnotationLayer *)self fastPathLayer];
          [superlayer addSublayer:fastPathLayer5];

          [(AKAnnotationLayer *)self zPosition];
          v23 = v22 + -0.5;
          fastPathLayer6 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer6 setZPosition:v23];

          whiteColor = [MEMORY[0x277D75348] whiteColor];
          cGColor = [whiteColor CGColor];
          fastPathLayer7 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer7 setBackgroundColor:cGColor];

          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          fastPathLayer8 = [(AKAnnotationLayer *)self fastPathLayer];
          [AKLoupeAnnotationImageUpdaterHelper transformForFastPathLayer:fastPathLayer8 ofLoupeAnnotation:v11 onPageController:pageController];

          v38 = v41;
          v39 = v42;
          v40 = v43;
          fastPathLayer9 = [(AKAnnotationLayer *)self fastPathLayer];
          v37[0] = v38;
          v37[1] = v39;
          v37[2] = v40;
          [fastPathLayer9 setAffineTransform:v37];
        }

        fastPathLayer10 = [(AKAnnotationLayer *)self fastPathLayer];
        [AKLoupeAnnotationImageUpdaterHelper updateFastPathImageOnLoupeAnnotation:v11 withFastPathLayer:fastPathLayer10 onPageController:pageController];
      }

      else
      {
        imageData = [v10 imageData];
        if (!imageData || (v32 = imageData, v33 = [(AKAnnotationLayer *)self shouldRecalculateLoupeImage], v32, v33))
        {
          [AKLoupeAnnotationImageUpdaterHelper updateModelImageOnLoupeAnnotation:v11 onPageController:pageController];
        }

        fastPathLayer11 = [(AKAnnotationLayer *)self fastPathLayer];

        if (fastPathLayer11)
        {
          fastPathLayer12 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer12 removeFromSuperlayer];

          fastPathLayer13 = [(AKAnnotationLayer *)self fastPathLayer];
          [fastPathLayer13 setContents:0];

          [(AKAnnotationLayer *)self setFastPathLayer:0];
        }
      }
    }

    [(AKAnnotationLayer *)self setNeedsDisplay];
  }
}

- (void)_startObservingAnnotation
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(AKAnnotationLayer *)self isObservingAnnotation])
  {
    annotation = [(AKAnnotationLayer *)self annotation];
    keysForValuesToObserveForRedrawing = [annotation keysForValuesToObserveForRedrawing];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(keysForValuesToObserveForRedrawing);
          }

          [annotation addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:0 context:@"AKAnnotationLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(AKAnnotationLayer *)self setIsObservingAnnotation:1];
  }
}

- (void)_stopObservingAnnotation
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(AKAnnotationLayer *)self isObservingAnnotation])
  {
    annotation = [(AKAnnotationLayer *)self annotation];
    keysForValuesToObserveForRedrawing = [annotation keysForValuesToObserveForRedrawing];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(keysForValuesToObserveForRedrawing);
          }

          [annotation removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:@"AKAnnotationLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(AKAnnotationLayer *)self setIsObservingAnnotation:0];
  }
}

- (void)_addDebugVisuals
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  -[AKAnnotationLayer setBorderColor:](self, "setBorderColor:", [blackColor CGColor]);

  [(AKAnnotationLayer *)self setBorderWidth:1.0];
  v8 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v8 setZPosition:100.0];
  greenColor = [MEMORY[0x277D75348] greenColor];
  [v8 setBackgroundColor:{objc_msgSend(greenColor, "CGColor")}];

  yellowColor = [MEMORY[0x277D75348] yellowColor];
  [v8 setBorderColor:{objc_msgSend(yellowColor, "CGColor")}];

  [v8 setBorderWidth:2.0];
  [v8 setAnchorPoint:{0.5, 0.5}];
  [v8 setBounds:{0.0, 0.0, 50.0, 50.0}];
  [v8 setPosition:{0.0, 0.0}];
  v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
  yellowColor2 = [MEMORY[0x277D75348] yellowColor];
  [v6 setBackgroundColor:{objc_msgSend(yellowColor2, "CGColor")}];

  [v6 setAnchorPoint:{0.0, 0.0}];
  [v6 setBounds:{0.0, 0.0, 12.5, 20.0}];
  [v6 setPosition:{37.5, 30.0}];
  [v8 addSublayer:v6];
  [(AKAnnotationLayer *)self addSublayer:v8];
}

- (void)_removeDebugVisuals
{
  v15 = *MEMORY[0x277D85DE8];
  [(AKAnnotationLayer *)self setBorderWidth:0.0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sublayers = [(AKAnnotationLayer *)self sublayers];
  v4 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(sublayers);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 borderWidth];
          if (v9 == 2.0)
          {
            [v8 removeFromSuperlayer];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end