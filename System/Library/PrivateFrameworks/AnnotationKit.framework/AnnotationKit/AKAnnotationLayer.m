@interface AKAnnotationLayer
+ (id)newAnnotationLayerForAnnotation:(id)a3 withPageController:(id)a4;
- (AKPageController)pageController;
- (id)_initWithAnnotation:(id)a3 andPageController:(id)a4;
- (void)_addDebugVisuals;
- (void)_removeDebugVisuals;
- (void)_startObservingAnnotation;
- (void)_stopObservingAnnotation;
- (void)_updateAnnotationLayerWithLoupeFastPath:(BOOL)a3;
- (void)_updateLayerRange;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateContents;
- (void)updatePixelAlignment;
@end

@implementation AKAnnotationLayer

+ (id)newAnnotationLayerForAnnotation:(id)a3 withPageController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithAnnotation:v7 andPageController:v6];

  return v8;
}

- (id)_initWithAnnotation:(id)a3 andPageController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = AKAnnotationLayer;
  v8 = [(AKAnnotationLayer *)&v28 init];
  v9 = v8;
  if (v8)
  {
    [(AKAnnotationLayer *)v8 setAnnotation:v6];
    [(AKAnnotationLayer *)v9 setPageController:v7];
    [(AKAnnotationLayer *)v9 setShouldRecalculateLoupeImage:1];
    [(AKAnnotationLayer *)v9 setDrawsAsynchronously:1];
    v10 = [v7 geometryHelper];
    v11 = [(AKAnnotationLayer *)v9 annotation];
    [v10 annotationLayerFrameForAnnotation:v11 layerIsClipped:0];
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
      v25 = v6;
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

- (void)drawInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v12.receiver = self;
  v12.super_class = AKAnnotationLayer;
  [(AKAnnotationLayer *)&v12 drawInContext:a3];
  [(AKAnnotationLayer *)self _updateLayerRange];
  v5 = [(AKAnnotationLayer *)self pageController];
  v6 = [v5 controller];
  v7 = objc_alloc_init(AKAnnotationRendererOptions);
  [(AKAnnotationRendererOptions *)v7 setForDisplay:1];
  v8 = [(AKAnnotationLayer *)self preferredDynamicRange];
  if ([v8 isEqualToString:*MEMORY[0x277CD9DB0]])
  {
    [(AKAnnotationRendererOptions *)v7 setAllowHDR:1];
  }

  else
  {
    v9 = [(AKAnnotationLayer *)self preferredDynamicRange];
    -[AKAnnotationRendererOptions setAllowHDR:](v7, "setAllowHDR:", [v9 isEqualToString:*MEMORY[0x277CD9DB8]]);
  }

  [v6 availableHeadroom];
  [(AKAnnotationRendererOptions *)v7 setAvailableHeadroom:?];
  v10 = [v6 modelController];
  [v10 annotationHeadroom];
  [(AKAnnotationRendererOptions *)v7 setDesiredHeadroom:?];

  v11 = [(AKAnnotationLayer *)self annotation];
  [AKAnnotationRenderer renderAnnotation:v11 intoContext:a3 options:v7 pageControllerOrNil:v5];

  CGContextRestoreGState(a3);
}

- (void)updateContents
{
  [(AKAnnotationLayer *)self _updateAnnotationLayerWithLoupeFastPath:0];

  [(AKAnnotationLayer *)self setNeedsDisplay];
}

- (void)updatePixelAlignment
{
  v3 = [(AKAnnotationLayer *)self pageController];
  if (v3)
  {
    v16 = v3;
    v4 = [v3 geometryHelper];
    v5 = [(AKAnnotationLayer *)self annotation];
    [v4 annotationLayerFrameForAnnotation:v5 layerIsClipped:0];
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
    v3 = v16;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (a6 == @"AKAnnotationLayer.modelAnnotationObservationContext")
  {
    v11 = [(AKAnnotationLayer *)self pageController];
    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = v11;
    v13 = [(AKAnnotationLayer *)self lastRedrawWasForDrawingBounds];
    [(AKAnnotationLayer *)self setLastRedrawWasForDrawingBounds:0];
    -[AKAnnotationLayer setShouldRecalculateLoupeImage:](self, "setShouldRecalculateLoupeImage:", [v10 isEqualToString:@"strokeColor"] ^ 1);
    if (![v10 isEqualToString:@"drawingBounds"])
    {
      [(AKAnnotationLayer *)self _updateLayerRange];
      if (v13 && ([v10 isEqualToString:@"rectangle"] & 1) != 0)
      {
        goto LABEL_29;
      }

      v26 = [(AKAnnotationLayer *)self annotation];
      if ([v26 isTranslating])
      {
        v27 = [(AKAnnotationLayer *)self annotation];
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

      v38 = [(AKAnnotationLayer *)self annotation];
      -[AKAnnotationLayer _updateAnnotationLayerWithLoupeFastPath:](self, "_updateAnnotationLayerWithLoupeFastPath:", [v38 isDraggingHandle]);

LABEL_29:
      [(AKAnnotationLayer *)self setShouldRecalculateLoupeImage:1];

      goto LABEL_30;
    }

    [MEMORY[0x277CD9FF0] begin];
    v14 = 1;
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v42 = 0;
    v15 = [v12 geometryHelper];
    v16 = [(AKAnnotationLayer *)self annotation];
    [v15 annotationLayerFrameForAnnotation:v16 layerIsClipped:&v42];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    if (v42)
    {
      v25 = 0;
    }

    else
    {
      v25 = [(AKAnnotationLayer *)self wasLastDrawingClipped];
      v14 = v42;
    }

    [(AKAnnotationLayer *)self setWasLastDrawingClipped:v14 & 1];
    v29 = [(AKAnnotationLayer *)self annotation];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if ((v42 & 1) == 0 && !v25 && (v30 & 1) == 0)
    {
      v31 = [(AKAnnotationLayer *)self annotation];
      if ([v31 isTranslating])
      {
        v32 = [(AKAnnotationLayer *)self annotation];
        v33 = [v32 isEditingText];

        if ((v33 & 1) == 0)
        {
          v34 = [(AKAnnotationLayer *)self annotation];
          v35 = [v34 isTranslating];

          if (v35)
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
    v39 = [(AKAnnotationLayer *)self annotation];
    if ([v39 isTranslating])
    {
      [(AKAnnotationLayer *)self _updateAnnotationLayerWithLoupeFastPath:1];
    }

    else
    {
      v40 = [(AKAnnotationLayer *)self annotation];
      -[AKAnnotationLayer _updateAnnotationLayerWithLoupeFastPath:](self, "_updateAnnotationLayerWithLoupeFastPath:", [v40 isDraggingHandle]);
    }

LABEL_28:
    [MEMORY[0x277CD9FF0] commit];
    goto LABEL_29;
  }

  v41.receiver = self;
  v41.super_class = AKAnnotationLayer;
  [(AKAnnotationLayer *)&v41 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
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
    v3 = [(AKAnnotationLayer *)self annotation];
    v4 = [v3 conformsToProtocol:&unk_2851D6420];

    v5 = [(AKAnnotationLayer *)self annotation];
    if ([v5 conformsToProtocol:&unk_2851D6300])
    {
      isKindOfClass = 1;
    }

    else
    {
      v7 = [(AKAnnotationLayer *)self annotation];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    v8 = [(AKAnnotationLayer *)self annotation];
    v9 = [v8 conformsToProtocol:&unk_2851D6B08];

    if (v4)
    {
      v10 = [(AKAnnotationLayer *)self annotation];
      v11 = [v10 fillColorHDR];
      if (v11)
      {
        v12 = [v10 fillColorHDR];
        v4 = [v12 akIsEDR];
      }

      else
      {
        v4 = 0;
      }

      if ((isKindOfClass & 1) == 0)
      {
LABEL_10:
        if (!v9)
        {
LABEL_24:
          v20 = [(AKAnnotationLayer *)self annotation];
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();

          if (v21)
          {
            v22 = [(AKAnnotationLayer *)self annotation];
            v23 = [v22 image];

            if (v23)
            {
              v24 = [v22 image];
              v4 |= [v24 akIsHDR];
            }
          }

          v25 = [(AKAnnotationLayer *)self annotation];
          objc_opt_class();
          v26 = v4 | objc_opt_isKindOfClass();

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
        v16 = [(AKAnnotationLayer *)self annotation];
        v17 = [v16 annotationText];
        v18 = [v16 foregroundColorHDR];
        if (!v18)
        {
          if ([v17 length])
          {
            v19 = [v17 attributesAtIndex:0 effectiveRange:0];
            v18 = [v19 objectForKey:@"NSColor"];
          }

          else
          {
            v18 = 0;
          }
        }

        v4 |= [v18 akIsEDR];

        goto LABEL_24;
      }
    }

    else if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_10;
    }

    v13 = [(AKAnnotationLayer *)self annotation];
    v14 = [v13 strokeColorHDR];
    if (v14)
    {
      v15 = [v13 strokeColorHDR];
      v4 |= [v15 akIsEDR];
    }

    if (!v9)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }
}

- (void)_updateAnnotationLayerWithLoupeFastPath:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCACC8] currentThread];
  v6 = [v5 threadDictionary];

  if (v3)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  [v6 setObject:v7 forKey:@"AKAnnotationRendererIsFastPathRenderingOnCurrentThread"];
  v8 = [(AKAnnotationLayer *)self annotation];
  if (!v3 || ![AKAnnotationRenderer annotationShouldAvoidRedrawDuringLiveResize:v8])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(AKAnnotationLayer *)self pageController];
      v10 = v8;
      v11 = v10;
      if (v3)
      {
        v12 = [(AKAnnotationLayer *)self fastPathLayer];

        if (!v12)
        {
          v13 = [MEMORY[0x277CD9F90] layer];
          [v13 setFillRule:*MEMORY[0x277CDA248]];
          v14 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
          [v13 setFillColor:{objc_msgSend(v14, "CGColor")}];

          v15 = [MEMORY[0x277CD9ED0] layer];
          [(AKAnnotationLayer *)self setFastPathLayer:v15];

          v16 = [(AKAnnotationLayer *)self fastPathLayer];
          [v16 setMask:v13];

          v17 = *MEMORY[0x277CDA5B8];
          v18 = [(AKAnnotationLayer *)self fastPathLayer];
          [v18 setMinificationFilter:v17];

          v19 = [(AKAnnotationLayer *)self fastPathLayer];
          [v19 setMagnificationFilter:v17];

          v20 = [(AKAnnotationLayer *)self superlayer];
          v21 = [(AKAnnotationLayer *)self fastPathLayer];
          [v20 addSublayer:v21];

          [(AKAnnotationLayer *)self zPosition];
          v23 = v22 + -0.5;
          v24 = [(AKAnnotationLayer *)self fastPathLayer];
          [v24 setZPosition:v23];

          v25 = [MEMORY[0x277D75348] whiteColor];
          v26 = [v25 CGColor];
          v27 = [(AKAnnotationLayer *)self fastPathLayer];
          [v27 setBackgroundColor:v26];

          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          v28 = [(AKAnnotationLayer *)self fastPathLayer];
          [AKLoupeAnnotationImageUpdaterHelper transformForFastPathLayer:v28 ofLoupeAnnotation:v11 onPageController:v9];

          v38 = v41;
          v39 = v42;
          v40 = v43;
          v29 = [(AKAnnotationLayer *)self fastPathLayer];
          v37[0] = v38;
          v37[1] = v39;
          v37[2] = v40;
          [v29 setAffineTransform:v37];
        }

        v30 = [(AKAnnotationLayer *)self fastPathLayer];
        [AKLoupeAnnotationImageUpdaterHelper updateFastPathImageOnLoupeAnnotation:v11 withFastPathLayer:v30 onPageController:v9];
      }

      else
      {
        v31 = [v10 imageData];
        if (!v31 || (v32 = v31, v33 = [(AKAnnotationLayer *)self shouldRecalculateLoupeImage], v32, v33))
        {
          [AKLoupeAnnotationImageUpdaterHelper updateModelImageOnLoupeAnnotation:v11 onPageController:v9];
        }

        v34 = [(AKAnnotationLayer *)self fastPathLayer];

        if (v34)
        {
          v35 = [(AKAnnotationLayer *)self fastPathLayer];
          [v35 removeFromSuperlayer];

          v36 = [(AKAnnotationLayer *)self fastPathLayer];
          [v36 setContents:0];

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
    v3 = [(AKAnnotationLayer *)self annotation];
    v4 = [v3 keysForValuesToObserveForRedrawing];
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

          [v3 addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) options:0 context:@"AKAnnotationLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    v3 = [(AKAnnotationLayer *)self annotation];
    v4 = [v3 keysForValuesToObserveForRedrawing];
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

          [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++) context:@"AKAnnotationLayer.modelAnnotationObservationContext"];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(AKAnnotationLayer *)self setIsObservingAnnotation:0];
  }
}

- (void)_addDebugVisuals
{
  v3 = [MEMORY[0x277D75348] blackColor];
  -[AKAnnotationLayer setBorderColor:](self, "setBorderColor:", [v3 CGColor]);

  [(AKAnnotationLayer *)self setBorderWidth:1.0];
  v8 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v8 setZPosition:100.0];
  v4 = [MEMORY[0x277D75348] greenColor];
  [v8 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [MEMORY[0x277D75348] yellowColor];
  [v8 setBorderColor:{objc_msgSend(v5, "CGColor")}];

  [v8 setBorderWidth:2.0];
  [v8 setAnchorPoint:{0.5, 0.5}];
  [v8 setBounds:{0.0, 0.0, 50.0, 50.0}];
  [v8 setPosition:{0.0, 0.0}];
  v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
  v7 = [MEMORY[0x277D75348] yellowColor];
  [v6 setBackgroundColor:{objc_msgSend(v7, "CGColor")}];

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
  v3 = [(AKAnnotationLayer *)self sublayers];
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
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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