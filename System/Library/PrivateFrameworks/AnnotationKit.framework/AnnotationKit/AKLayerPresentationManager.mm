@interface AKLayerPresentationManager
- (AKLayerPresentationManager)initWithPageController:(id)controller;
- (AKPageController)pageController;
- (double)_hiDPIScaleFactor;
- (id)adornmentLayerForAnnotation:(id)annotation;
- (void)_addAdornmentLayerForAnnotation:(id)annotation;
- (void)_addLayerForAnnotation:(id)annotation;
- (void)_applyUpdatesWithScale:(double)scale toLayers:(id)layers isLiveUpdate:(BOOL)update forceUpdate:(BOOL)forceUpdate;
- (void)_removeAdornmentLayerForAnnotation:(id)annotation;
- (void)_removeLayerForAnnotation:(id)annotation;
- (void)_setNeedsDisplayOnNewLayer:(id)layer;
- (void)_startObservingModel;
- (void)_stopObservingModel;
- (void)_updateLoupeAnnotationsContributedToByAnnotation:(id)annotation;
- (void)_updateLoupeAnnotationsIntersectingRemovedAnnotation:(id)annotation;
- (void)dealloc;
- (void)forceUpdateAnnotationLayer:(id)layer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setAdornmentsHidden:(BOOL)hidden;
- (void)setAlignmentGuidePositionX:(double)x;
- (void)setAlignmentGuidePositionY:(double)y;
- (void)updateScaleFactor:(double)factor isLiveUpdate:(BOOL)update forceUpdate:(BOOL)forceUpdate;
@end

@implementation AKLayerPresentationManager

- (AKLayerPresentationManager)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = AKLayerPresentationManager;
  v5 = [(AKLayerPresentationManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(AKLayerPresentationManager *)v5 setPageController:controllerCopy];
    v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(AKLayerPresentationManager *)v6 setRootLayer:v7];

    rootLayer = [(AKLayerPresentationManager *)v6 rootLayer];
    [rootLayer setMasksToBounds:1];

    rootLayer2 = [(AKLayerPresentationManager *)v6 rootLayer];
    [rootLayer2 setAllowsGroupBlending:0];

    rootLayer3 = [(AKLayerPresentationManager *)v6 rootLayer];
    [rootLayer3 setEdgeAntialiasingMask:0];

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    [(AKLayerPresentationManager *)v6 setAnnotationsToAnnotationLayers:weakToStrongObjectsMapTable];

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    [(AKLayerPresentationManager *)v6 setAnnotationsToAdornmentLayers:weakToStrongObjectsMapTable2];

    [(AKLayerPresentationManager *)v6 setCurrentScaleFactor:1.0];
    [(AKLayerPresentationManager *)v6 setAlignmentGuidePositionX:1.79769313e308];
    [(AKLayerPresentationManager *)v6 setAlignmentGuidePositionY:1.79769313e308];
  }

  return v6;
}

- (void)dealloc
{
  [(AKLayerPresentationManager *)self teardown];
  v3.receiver = self;
  v3.super_class = AKLayerPresentationManager;
  [(AKLayerPresentationManager *)&v3 dealloc];
}

- (void)setAdornmentsHidden:(BOOL)hidden
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_adornmentsHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_adornmentsHidden = hidden;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    annotationsToAdornmentLayers = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
    objectEnumerator = [annotationsToAdornmentLayers objectEnumerator];

    v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v11 + 1) + 8 * v10++) setHidden:hiddenCopy];
        }

        while (v8 != v10);
        v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)updateScaleFactor:(double)factor isLiveUpdate:(BOOL)update forceUpdate:(BOOL)forceUpdate
{
  forceUpdateCopy = forceUpdate;
  updateCopy = update;
  rootLayer = [(AKLayerPresentationManager *)self rootLayer];
  sublayers = [rootLayer sublayers];
  [(AKLayerPresentationManager *)self _applyUpdatesWithScale:sublayers toLayers:updateCopy isLiveUpdate:forceUpdateCopy forceUpdate:factor];
}

- (void)setAlignmentGuidePositionX:(double)x
{
  if (self->_alignmentGuidePositionX != x)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    self->_alignmentGuidePositionX = x;
    alignmentGuideXLayer = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
    v6 = alignmentGuideXLayer;
    if (x == 1.79769313e308)
    {
      [alignmentGuideXLayer removeFromSuperlayer];

      [(AKLayerPresentationManager *)self setAlignmentGuideXLayer:0];
    }

    else
    {

      if (!v6)
      {
        v7 = [AKAlignmentGuideLineLayer alloc];
        [(AKLayerPresentationManager *)self currentScaleFactor];
        v9 = v8;
        rootLayer = [(AKLayerPresentationManager *)self rootLayer];
        [rootLayer bounds];
        v11 = [(AKAlignmentGuideLineLayer *)v7 initWithScaleFactor:1 forVerticalOrientation:v9 withMaxSize:CGRectGetHeight(v35)];
        [(AKLayerPresentationManager *)self setAlignmentGuideXLayer:v11];

        v12 = (AKAdornmentZPositionOffset - 1);
        alignmentGuideXLayer2 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
        [alignmentGuideXLayer2 setZPosition:v12];

        v14 = *MEMORY[0x277CBF3A0];
        v15 = *(MEMORY[0x277CBF3A0] + 8);
        v16 = *(MEMORY[0x277CBF3A0] + 16);
        v17 = *(MEMORY[0x277CBF3A0] + 24);
        alignmentGuideXLayer3 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
        [alignmentGuideXLayer3 setFrame:{v14, v15, v16, v17}];

        rootLayer2 = [(AKLayerPresentationManager *)self rootLayer];
        alignmentGuideXLayer4 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
        [rootLayer2 addSublayer:alignmentGuideXLayer4];
      }

      alignmentGuideXLayer5 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
      [alignmentGuideXLayer5 position];
      v23 = v22;

      pageController = [(AKLayerPresentationManager *)self pageController];
      geometryHelper = [pageController geometryHelper];
      alignmentGuideXLayer6 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
      [alignmentGuideXLayer6 lineWidth];
      [geometryHelper screenStrokeAlignedRectForRect:x withStrokeWidth:{v23, 0.0, 0.0, v27}];
      v29 = v28;
      v31 = v30;

      alignmentGuideXLayer7 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
      [alignmentGuideXLayer7 setPosition:{v29, v31}];
    }

    v33 = MEMORY[0x277CD9FF0];

    [v33 commit];
  }
}

- (void)setAlignmentGuidePositionY:(double)y
{
  if (self->_alignmentGuidePositionY != y)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    self->_alignmentGuidePositionY = y;
    alignmentGuideYLayer = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
    v6 = alignmentGuideYLayer;
    if (y == 1.79769313e308)
    {
      [alignmentGuideYLayer removeFromSuperlayer];

      [(AKLayerPresentationManager *)self setAlignmentGuideYLayer:0];
    }

    else
    {

      if (!v6)
      {
        v7 = [AKAlignmentGuideLineLayer alloc];
        [(AKLayerPresentationManager *)self currentScaleFactor];
        v9 = v8;
        rootLayer = [(AKLayerPresentationManager *)self rootLayer];
        [rootLayer bounds];
        v11 = [(AKAlignmentGuideLineLayer *)v7 initWithScaleFactor:0 forVerticalOrientation:v9 withMaxSize:CGRectGetWidth(v35)];
        [(AKLayerPresentationManager *)self setAlignmentGuideYLayer:v11];

        v12 = (AKAdornmentZPositionOffset - 1);
        alignmentGuideYLayer2 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
        [alignmentGuideYLayer2 setZPosition:v12];

        v14 = *MEMORY[0x277CBF3A0];
        v15 = *(MEMORY[0x277CBF3A0] + 8);
        v16 = *(MEMORY[0x277CBF3A0] + 16);
        v17 = *(MEMORY[0x277CBF3A0] + 24);
        alignmentGuideYLayer3 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
        [alignmentGuideYLayer3 setFrame:{v14, v15, v16, v17}];

        rootLayer2 = [(AKLayerPresentationManager *)self rootLayer];
        alignmentGuideYLayer4 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
        [rootLayer2 addSublayer:alignmentGuideYLayer4];
      }

      alignmentGuideYLayer5 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
      [alignmentGuideYLayer5 position];
      v23 = v22;

      pageController = [(AKLayerPresentationManager *)self pageController];
      geometryHelper = [pageController geometryHelper];
      alignmentGuideYLayer6 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
      [alignmentGuideYLayer6 lineWidth];
      [geometryHelper screenStrokeAlignedRectForRect:v23 withStrokeWidth:{y, 0.0, 0.0, v27}];
      v29 = v28;
      v31 = v30;

      alignmentGuideYLayer7 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
      [alignmentGuideYLayer7 setPosition:{v29, v31}];
    }

    v33 = MEMORY[0x277CD9FF0];

    [v33 commit];
  }
}

- (id)adornmentLayerForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationsToAdornmentLayers = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  v6 = [annotationsToAdornmentLayers objectForKey:annotationCopy];

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v90 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == @"AKLayerPresentationManager.modelAnnotationsObservationContext")
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    v15 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v53 = objectCopy;
    v55 = pathCopy;
    v51 = v14;
    v52 = v13;
    v50 = v15;
    if (v14)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v81;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v81 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v80 + 1) + 8 * i);
            [(AKLayerPresentationManager *)self _updateLoupeAnnotationsIntersectingRemovedAnnotation:v20, v50, v51];
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            keysForValuesToObserveForRedrawing = [v20 keysForValuesToObserveForRedrawing];
            v22 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v76 objects:v88 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v77;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v77 != v24)
                  {
                    objc_enumerationMutation(keysForValuesToObserveForRedrawing);
                  }

                  [v20 removeObserver:self forKeyPath:*(*(&v76 + 1) + 8 * j) context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
                }

                v23 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v76 objects:v88 count:16];
              }

              while (v23);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [(AKLayerPresentationManager *)self _removeAdornmentLayerForAnnotation:v20];
            }

            [(AKLayerPresentationManager *)self _removeLayerForAnnotation:v20];
          }

          v17 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
        }

        while (v17);
      }

      objectCopy = v53;
      pathCopy = v55;
      v14 = v51;
      v13 = v52;
      v15 = v50;
    }

    if (v15)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obja = v15;
      v26 = [obja countByEnumeratingWithState:&v72 objects:v87 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v73;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v73 != v28)
            {
              objc_enumerationMutation(obja);
            }

            v30 = *(*(&v72 + 1) + 8 * k);
            [(AKLayerPresentationManager *)self _addLayerForAnnotation:v30, v50, v51];
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:v30];
            }

            [(AKLayerPresentationManager *)self _updateLoupeAnnotationsContributedToByAnnotation:v30];
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            keysForValuesToObserveForRedrawing2 = [v30 keysForValuesToObserveForRedrawing];
            v32 = [keysForValuesToObserveForRedrawing2 countByEnumeratingWithState:&v68 objects:v86 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v69;
              do
              {
                for (m = 0; m != v33; ++m)
                {
                  if (*v69 != v34)
                  {
                    objc_enumerationMutation(keysForValuesToObserveForRedrawing2);
                  }

                  [v30 addObserver:self forKeyPath:*(*(&v68 + 1) + 8 * m) options:0 context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
                }

                v33 = [keysForValuesToObserveForRedrawing2 countByEnumeratingWithState:&v68 objects:v86 count:16];
              }

              while (v33);
            }
          }

          v27 = [obja countByEnumeratingWithState:&v72 objects:v87 count:16];
        }

        while (v27);
      }

      objectCopy = v53;
      pathCopy = v55;
      v14 = v51;
      v13 = v52;
      v15 = v50;
    }

    [MEMORY[0x277CD9FF0] commit];
  }

  else if (context == @"AKLayerPresentationManager.modelSelectionsObservationContext")
  {
    v54 = objectCopy;
    v56 = pathCopy;
    v36 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    v37 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    if (v36)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v38 = v36;
      v39 = [v38 countByEnumeratingWithState:&v64 objects:v85 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v65;
        do
        {
          for (n = 0; n != v40; ++n)
          {
            if (*v65 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v64 + 1) + 8 * n);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(AKLayerPresentationManager *)self _removeAdornmentLayerForAnnotation:v43];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v64 objects:v85 count:16];
        }

        while (v40);
      }
    }

    if (v37)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v44 = v37;
      v45 = [v44 countByEnumeratingWithState:&v60 objects:v84 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v61;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v61 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v60 + 1) + 8 * ii);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:v49];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v60 objects:v84 count:16];
        }

        while (v46);
      }
    }

    [MEMORY[0x277CD9FF0] commit];

    objectCopy = v54;
    pathCopy = v56;
  }

  else if (context == @"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext")
  {
    [(AKLayerPresentationManager *)self _updateLoupeAnnotationsContributedToByAnnotation:objectCopy];
  }

  else
  {
    v59.receiver = self;
    v59.super_class = AKLayerPresentationManager;
    [(AKLayerPresentationManager *)&v59 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_updateLoupeAnnotationsContributedToByAnnotation:(id)annotation
{
  v28 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  pageModelController = [(AKLayerPresentationManager *)self pageModelController];
  annotations = [pageModelController annotations];

  v7 = [annotations countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v10 = 0x278C7A000uLL;
    do
    {
      v11 = 0;
      v22 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(annotations);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          pageController = [(AKLayerPresentationManager *)self pageController];
          v14 = [pageController annotationsBeneathLoupe:v12];
          if ([v14 containsObject:annotationCopy])
          {
            [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
            v15 = v9;
            selfCopy = self;
            v17 = v10;
            v18 = annotations;
            v20 = v19 = annotationCopy;
            v21 = [v20 objectForKey:v12];

            annotationCopy = v19;
            annotations = v18;
            v10 = v17;
            self = selfCopy;
            v9 = v15;
            v8 = v22;
            [v21 updateContents];
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [annotations countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)_updateLoupeAnnotationsIntersectingRemovedAnnotation:(id)annotation
{
  v31 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  pageModelController = [(AKLayerPresentationManager *)self pageModelController];
  annotations = [pageModelController annotations];

  v7 = [annotations countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(annotations);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 drawingBounds];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          [annotationCopy drawingBounds];
          v33.origin.x = v20;
          v33.origin.y = v21;
          v33.size.width = v22;
          v33.size.height = v23;
          v32.origin.x = v13;
          v32.origin.y = v15;
          v32.size.width = v17;
          v32.size.height = v19;
          if (CGRectIntersectsRect(v32, v33))
          {
            annotationsToAnnotationLayers = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
            v25 = [annotationsToAnnotationLayers objectForKey:v11];

            [v25 updateContents];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [annotations countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }
}

- (void)forceUpdateAnnotationLayer:(id)layer
{
  layerCopy = layer;
  annotationsToAnnotationLayers = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
  v6 = [annotationsToAnnotationLayers objectForKey:layerCopy];

  [v6 updateContents];
}

- (void)_setNeedsDisplayOnNewLayer:(id)layer
{
  v8 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  v4 = MEMORY[0x277CBEA60];
  layerCopy2 = layer;
  v6 = [v4 arrayWithObjects:&layerCopy count:1];

  [(AKLayerPresentationManager *)self _applyUpdatesWithScale:v6 toLayers:0 isLiveUpdate:1 forceUpdate:9.22337204e18, layerCopy, v8];
}

- (void)_applyUpdatesWithScale:(double)scale toLayers:(id)layers isLiveUpdate:(BOOL)update forceUpdate:(BOOL)forceUpdate
{
  v38 = *MEMORY[0x277D85DE8];
  layersCopy = layers;
  if (scale == 9.22337204e18)
  {
    [(AKLayerPresentationManager *)self currentScaleFactor];
    if (v10 == 9.22337204e18)
    {
      scale = 1.0;
    }

    else
    {
      scale = v10;
    }
  }

  [(AKLayerPresentationManager *)self _hiDPIScaleFactor];
  v12 = scale * v11;
  shouldPixelate = [(AKLayerPresentationManager *)self shouldPixelate];
  v14 = 1.0;
  if (scale < 2.0)
  {
    v14 = v12;
  }

  v15 = *MEMORY[0x277CDA560];
  v16 = *MEMORY[0x277CDA5B8];
  if (scale < 2.0)
  {
    v16 = *MEMORY[0x277CDA560];
  }

  if (shouldPixelate)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  if (shouldPixelate)
  {
    v15 = v16;
  }

  v18 = v15;
  [(AKLayerPresentationManager *)self setCurrentScaleFactor:scale];
  if ([layersCopy count])
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = layersCopy;
    v19 = layersCopy;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v20)
    {
      goto LABEL_34;
    }

    v21 = v20;
    v22 = *v34;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || update)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          [v24 updateSublayersWithScale:scale];
          goto LABEL_31;
        }

        annotation = [v24 annotation];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v27 = v24;
          v28 = v12;
          goto LABEL_30;
        }

        if (!forceUpdate)
        {
          [v24 contentsScale];
          if (vabdd_f64(v29, v17) <= 0.00001)
          {
            minificationFilter = [v24 minificationFilter];

            if (minificationFilter == v18)
            {
              continue;
            }
          }
        }

        [v24 setMinificationFilter:{v18, v31}];
        [v24 setMagnificationFilter:v18];
        v27 = v24;
        v28 = v17;
LABEL_30:
        [v27 setContentsScale:{v28, v31}];
LABEL_31:
        [v24 updatePixelAlignment];
        continue;
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v21)
      {
LABEL_34:

        [MEMORY[0x277CD9FF0] commit];
        layersCopy = v31;
        break;
      }
    }
  }
}

- (double)_hiDPIScaleFactor
{
  pageController = [(AKLayerPresentationManager *)self pageController];
  overlayView = [pageController overlayView];
  window = [overlayView window];
  screen = [window screen];

  if (screen)
  {
    window2 = [overlayView window];
    screen2 = [window2 screen];
    [screen2 scale];
    v9 = v8;
  }

  else
  {
    window2 = [MEMORY[0x277D759A0] mainScreen];
    [window2 scale];
    v9 = v10;
  }

  return v9;
}

- (void)_startObservingModel
{
  v47 = *MEMORY[0x277D85DE8];
  if (![(AKLayerPresentationManager *)self isObservingModel])
  {
    pageController = [(AKLayerPresentationManager *)self pageController];
    pageModelController = [pageController pageModelController];
    [(AKLayerPresentationManager *)self setPageModelController:?];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v4 = MEMORY[0x277CD9FF0];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_23F4B8DEC;
    v42[3] = &unk_278C7B540;
    v27 = pageController;
    v43 = v27;
    [v4 setCompletionBlock:v42];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    pageModelController2 = [(AKLayerPresentationManager *)self pageModelController];
    annotations = [pageModelController2 annotations];

    obj = annotations;
    v7 = [annotations countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          [(AKLayerPresentationManager *)self _addLayerForAnnotation:v11];
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          keysForValuesToObserveForRedrawing = [v11 keysForValuesToObserveForRedrawing];
          v13 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v34 objects:v45 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v35;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v35 != v15)
                {
                  objc_enumerationMutation(keysForValuesToObserveForRedrawing);
                }

                [v11 addObserver:self forKeyPath:*(*(&v34 + 1) + 8 * j) options:0 context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
              }

              v14 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v34 objects:v45 count:16];
            }

            while (v14);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v8);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    pageModelController3 = [(AKLayerPresentationManager *)self pageModelController];
    selectedAnnotations = [pageModelController3 selectedAnnotations];

    v19 = [selectedAnnotations countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(selectedAnnotations);
          }

          [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:*(*(&v30 + 1) + 8 * k)];
        }

        v20 = [selectedAnnotations countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v20);
    }

    pageModelController4 = [(AKLayerPresentationManager *)self pageModelController];
    cropAnnotation = [pageModelController4 cropAnnotation];

    if (cropAnnotation)
    {
      pageModelController5 = [(AKLayerPresentationManager *)self pageModelController];
      cropAnnotation2 = [pageModelController5 cropAnnotation];
      [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:cropAnnotation2];
    }

    [MEMORY[0x277CD9FF0] commit];
    [pageModelController addObserver:self forKeyPath:@"annotations" options:3 context:@"AKLayerPresentationManager.modelAnnotationsObservationContext"];
    [pageModelController addObserver:self forKeyPath:@"selectedAnnotations" options:3 context:@"AKLayerPresentationManager.modelSelectionsObservationContext"];
    [(AKLayerPresentationManager *)self setIsObservingModel:1];
  }
}

- (void)_stopObservingModel
{
  v43 = *MEMORY[0x277D85DE8];
  if ([(AKLayerPresentationManager *)self isObservingModel])
  {
    pageModelController = [(AKLayerPresentationManager *)self pageModelController];
    [pageModelController removeObserver:self forKeyPath:@"selectedAnnotations" context:@"AKLayerPresentationManager.modelSelectionsObservationContext"];

    pageModelController2 = [(AKLayerPresentationManager *)self pageModelController];
    [pageModelController2 removeObserver:self forKeyPath:@"annotations" context:@"AKLayerPresentationManager.modelAnnotationsObservationContext"];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    pageModelController3 = [(AKLayerPresentationManager *)self pageModelController];
    cropAnnotation = [pageModelController3 cropAnnotation];

    if (cropAnnotation)
    {
      pageModelController4 = [(AKLayerPresentationManager *)self pageModelController];
      cropAnnotation2 = [pageModelController4 cropAnnotation];
      [(AKLayerPresentationManager *)self _removeAdornmentLayerForAnnotation:cropAnnotation2];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    pageModelController5 = [(AKLayerPresentationManager *)self pageModelController];
    selectedAnnotations = [pageModelController5 selectedAnnotations];

    v11 = [selectedAnnotations countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        v14 = 0;
        do
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(selectedAnnotations);
          }

          [(AKLayerPresentationManager *)self _removeAdornmentLayerForAnnotation:*(*(&v36 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [selectedAnnotations countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v12);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    pageModelController6 = [(AKLayerPresentationManager *)self pageModelController];
    annotations = [pageModelController6 annotations];

    obj = annotations;
    v17 = [annotations countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        v20 = 0;
        do
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v32 + 1) + 8 * v20);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          keysForValuesToObserveForRedrawing = [v21 keysForValuesToObserveForRedrawing];
          v23 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v29;
            do
            {
              v26 = 0;
              do
              {
                if (*v29 != v25)
                {
                  objc_enumerationMutation(keysForValuesToObserveForRedrawing);
                }

                [v21 removeObserver:self forKeyPath:*(*(&v28 + 1) + 8 * v26++) context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
              }

              while (v24 != v26);
              v24 = [keysForValuesToObserveForRedrawing countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v24);
          }

          [(AKLayerPresentationManager *)self _removeLayerForAnnotation:v21];
          ++v20;
        }

        while (v20 != v18);
        v18 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v18);
    }

    [MEMORY[0x277CD9FF0] commit];
    [(AKLayerPresentationManager *)self setPageModelController:0];
    [(AKLayerPresentationManager *)self setIsObservingModel:0];
  }
}

- (void)_addLayerForAnnotation:(id)annotation
{
  v28 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    pageController = [(AKLayerPresentationManager *)self pageController];
    v6 = [AKAnnotationLayer newAnnotationLayerForAnnotation:annotationCopy withPageController:pageController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AKLayerPresentationManager *)self setCropAnnotationLayer:v6];
    }

    rootLayer = [(AKLayerPresentationManager *)self rootLayer];
    [rootLayer addSublayer:v6];

    [v6 updatePixelAlignment];
    annotationsToAnnotationLayers = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
    [annotationsToAnnotationLayers setObject:v6 forKey:annotationCopy];

    [(AKLayerPresentationManager *)self _setNeedsDisplayOnNewLayer:v6];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    pageModelController = [pageController pageModelController];
    annotations = [pageModelController annotations];

    v11 = [annotations countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v22 = pageController;
      v13 = 0;
      v14 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(annotations);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          annotationsToAnnotationLayers2 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
          v18 = [annotationsToAnnotationLayers2 objectForKey:v16];

          [v18 setZPosition:v13++];
        }

        v12 = [annotations countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
      v19 = v13;
      pageController = v22;
    }

    else
    {
      v19 = 0.0;
    }

    cropAnnotationLayer = [(AKLayerPresentationManager *)self cropAnnotationLayer];

    if (cropAnnotationLayer)
    {
      cropAnnotationLayer2 = [(AKLayerPresentationManager *)self cropAnnotationLayer];
      [cropAnnotationLayer2 setZPosition:v19];
    }
  }
}

- (void)_removeLayerForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationsToAnnotationLayers = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
  v5 = [annotationsToAnnotationLayers objectForKey:annotationCopy];

  if (v5)
  {
    [v5 removeFromSuperlayer];
    annotationsToAnnotationLayers2 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
    [annotationsToAnnotationLayers2 removeObjectForKey:annotationCopy];

    cropAnnotationLayer = [(AKLayerPresentationManager *)self cropAnnotationLayer];

    if (v5 == cropAnnotationLayer)
    {
      [(AKLayerPresentationManager *)self setCropAnnotationLayer:0];
    }
  }
}

- (void)_addAdornmentLayerForAnnotation:(id)annotation
{
  v29 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  pageController = [(AKLayerPresentationManager *)self pageController];
  v6 = [AKAdornmentLayer newAdornmentLayerForAnnotation:annotationCopy withPageController:pageController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKLayerPresentationManager *)self setCropAdornmentLayer:v6];
  }

  rootLayer = [(AKLayerPresentationManager *)self rootLayer];
  [rootLayer addSublayer:v6];

  [v6 updatePixelAlignment];
  annotationsToAdornmentLayers = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  v23 = annotationCopy;
  [annotationsToAdornmentLayers setObject:v6 forKey:annotationCopy];

  [(AKLayerPresentationManager *)self _setNeedsDisplayOnNewLayer:v6];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = pageController;
  pageModelController = [pageController pageModelController];
  annotations = [pageModelController annotations];

  v11 = [annotations countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(annotations);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        annotationsToAdornmentLayers2 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
        v18 = [annotationsToAdornmentLayers2 objectForKey:v16];

        [v18 setZPosition:(v13 + AKAdornmentZPositionOffset)];
        ++v13;
      }

      v12 = [annotations countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  cropAdornmentLayer = [(AKLayerPresentationManager *)self cropAdornmentLayer];

  if (cropAdornmentLayer)
  {
    v20 = (AKAdornmentZPositionOffset + v13);
    cropAdornmentLayer2 = [(AKLayerPresentationManager *)self cropAdornmentLayer];
    [cropAdornmentLayer2 setZPosition:v20];
  }
}

- (void)_removeAdornmentLayerForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationsToAdornmentLayers = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  v9 = [annotationsToAdornmentLayers objectForKey:annotationCopy];

  [v9 removeFromSuperlayer];
  annotationsToAdornmentLayers2 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  [annotationsToAdornmentLayers2 removeObjectForKey:annotationCopy];

  [v9 teardown];
  cropAdornmentLayer = [(AKLayerPresentationManager *)self cropAdornmentLayer];

  v8 = v9;
  if (v9 == cropAdornmentLayer)
  {
    [(AKLayerPresentationManager *)self setCropAdornmentLayer:0];
    v8 = v9;
  }
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end