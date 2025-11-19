@interface AKLayerPresentationManager
- (AKLayerPresentationManager)initWithPageController:(id)a3;
- (AKPageController)pageController;
- (double)_hiDPIScaleFactor;
- (id)adornmentLayerForAnnotation:(id)a3;
- (void)_addAdornmentLayerForAnnotation:(id)a3;
- (void)_addLayerForAnnotation:(id)a3;
- (void)_applyUpdatesWithScale:(double)a3 toLayers:(id)a4 isLiveUpdate:(BOOL)a5 forceUpdate:(BOOL)a6;
- (void)_removeAdornmentLayerForAnnotation:(id)a3;
- (void)_removeLayerForAnnotation:(id)a3;
- (void)_setNeedsDisplayOnNewLayer:(id)a3;
- (void)_startObservingModel;
- (void)_stopObservingModel;
- (void)_updateLoupeAnnotationsContributedToByAnnotation:(id)a3;
- (void)_updateLoupeAnnotationsIntersectingRemovedAnnotation:(id)a3;
- (void)dealloc;
- (void)forceUpdateAnnotationLayer:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAdornmentsHidden:(BOOL)a3;
- (void)setAlignmentGuidePositionX:(double)a3;
- (void)setAlignmentGuidePositionY:(double)a3;
- (void)updateScaleFactor:(double)a3 isLiveUpdate:(BOOL)a4 forceUpdate:(BOOL)a5;
@end

@implementation AKLayerPresentationManager

- (AKLayerPresentationManager)initWithPageController:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AKLayerPresentationManager;
  v5 = [(AKLayerPresentationManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(AKLayerPresentationManager *)v5 setPageController:v4];
    v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(AKLayerPresentationManager *)v6 setRootLayer:v7];

    v8 = [(AKLayerPresentationManager *)v6 rootLayer];
    [v8 setMasksToBounds:1];

    v9 = [(AKLayerPresentationManager *)v6 rootLayer];
    [v9 setAllowsGroupBlending:0];

    v10 = [(AKLayerPresentationManager *)v6 rootLayer];
    [v10 setEdgeAntialiasingMask:0];

    v11 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    [(AKLayerPresentationManager *)v6 setAnnotationsToAnnotationLayers:v11];

    v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    [(AKLayerPresentationManager *)v6 setAnnotationsToAdornmentLayers:v12];

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

- (void)setAdornmentsHidden:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_adornmentsHidden != a3)
  {
    v3 = a3;
    self->_adornmentsHidden = a3;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
    v6 = [v5 objectEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setHidden:v3];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)updateScaleFactor:(double)a3 isLiveUpdate:(BOOL)a4 forceUpdate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = [(AKLayerPresentationManager *)self rootLayer];
  v9 = [v10 sublayers];
  [(AKLayerPresentationManager *)self _applyUpdatesWithScale:v9 toLayers:v6 isLiveUpdate:v5 forceUpdate:a3];
}

- (void)setAlignmentGuidePositionX:(double)a3
{
  if (self->_alignmentGuidePositionX != a3)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    self->_alignmentGuidePositionX = a3;
    v5 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
    v6 = v5;
    if (a3 == 1.79769313e308)
    {
      [v5 removeFromSuperlayer];

      [(AKLayerPresentationManager *)self setAlignmentGuideXLayer:0];
    }

    else
    {

      if (!v6)
      {
        v7 = [AKAlignmentGuideLineLayer alloc];
        [(AKLayerPresentationManager *)self currentScaleFactor];
        v9 = v8;
        v10 = [(AKLayerPresentationManager *)self rootLayer];
        [v10 bounds];
        v11 = [(AKAlignmentGuideLineLayer *)v7 initWithScaleFactor:1 forVerticalOrientation:v9 withMaxSize:CGRectGetHeight(v35)];
        [(AKLayerPresentationManager *)self setAlignmentGuideXLayer:v11];

        v12 = (AKAdornmentZPositionOffset - 1);
        v13 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
        [v13 setZPosition:v12];

        v14 = *MEMORY[0x277CBF3A0];
        v15 = *(MEMORY[0x277CBF3A0] + 8);
        v16 = *(MEMORY[0x277CBF3A0] + 16);
        v17 = *(MEMORY[0x277CBF3A0] + 24);
        v18 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
        [v18 setFrame:{v14, v15, v16, v17}];

        v19 = [(AKLayerPresentationManager *)self rootLayer];
        v20 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
        [v19 addSublayer:v20];
      }

      v21 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
      [v21 position];
      v23 = v22;

      v24 = [(AKLayerPresentationManager *)self pageController];
      v25 = [v24 geometryHelper];
      v26 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
      [v26 lineWidth];
      [v25 screenStrokeAlignedRectForRect:a3 withStrokeWidth:{v23, 0.0, 0.0, v27}];
      v29 = v28;
      v31 = v30;

      v32 = [(AKLayerPresentationManager *)self alignmentGuideXLayer];
      [v32 setPosition:{v29, v31}];
    }

    v33 = MEMORY[0x277CD9FF0];

    [v33 commit];
  }
}

- (void)setAlignmentGuidePositionY:(double)a3
{
  if (self->_alignmentGuidePositionY != a3)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    self->_alignmentGuidePositionY = a3;
    v5 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
    v6 = v5;
    if (a3 == 1.79769313e308)
    {
      [v5 removeFromSuperlayer];

      [(AKLayerPresentationManager *)self setAlignmentGuideYLayer:0];
    }

    else
    {

      if (!v6)
      {
        v7 = [AKAlignmentGuideLineLayer alloc];
        [(AKLayerPresentationManager *)self currentScaleFactor];
        v9 = v8;
        v10 = [(AKLayerPresentationManager *)self rootLayer];
        [v10 bounds];
        v11 = [(AKAlignmentGuideLineLayer *)v7 initWithScaleFactor:0 forVerticalOrientation:v9 withMaxSize:CGRectGetWidth(v35)];
        [(AKLayerPresentationManager *)self setAlignmentGuideYLayer:v11];

        v12 = (AKAdornmentZPositionOffset - 1);
        v13 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
        [v13 setZPosition:v12];

        v14 = *MEMORY[0x277CBF3A0];
        v15 = *(MEMORY[0x277CBF3A0] + 8);
        v16 = *(MEMORY[0x277CBF3A0] + 16);
        v17 = *(MEMORY[0x277CBF3A0] + 24);
        v18 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
        [v18 setFrame:{v14, v15, v16, v17}];

        v19 = [(AKLayerPresentationManager *)self rootLayer];
        v20 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
        [v19 addSublayer:v20];
      }

      v21 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
      [v21 position];
      v23 = v22;

      v24 = [(AKLayerPresentationManager *)self pageController];
      v25 = [v24 geometryHelper];
      v26 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
      [v26 lineWidth];
      [v25 screenStrokeAlignedRectForRect:v23 withStrokeWidth:{a3, 0.0, 0.0, v27}];
      v29 = v28;
      v31 = v30;

      v32 = [(AKLayerPresentationManager *)self alignmentGuideYLayer];
      [v32 setPosition:{v29, v31}];
    }

    v33 = MEMORY[0x277CD9FF0];

    [v33 commit];
  }
}

- (id)adornmentLayerForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v90 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 == @"AKLayerPresentationManager.modelAnnotationsObservationContext")
  {
    v14 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    v15 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v53 = v11;
    v55 = v10;
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
            v21 = [v20 keysForValuesToObserveForRedrawing];
            v22 = [v21 countByEnumeratingWithState:&v76 objects:v88 count:16];
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
                    objc_enumerationMutation(v21);
                  }

                  [v20 removeObserver:self forKeyPath:*(*(&v76 + 1) + 8 * j) context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
                }

                v23 = [v21 countByEnumeratingWithState:&v76 objects:v88 count:16];
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

      v11 = v53;
      v10 = v55;
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
            v31 = [v30 keysForValuesToObserveForRedrawing];
            v32 = [v31 countByEnumeratingWithState:&v68 objects:v86 count:16];
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
                    objc_enumerationMutation(v31);
                  }

                  [v30 addObserver:self forKeyPath:*(*(&v68 + 1) + 8 * m) options:0 context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
                }

                v33 = [v31 countByEnumeratingWithState:&v68 objects:v86 count:16];
              }

              while (v33);
            }
          }

          v27 = [obja countByEnumeratingWithState:&v72 objects:v87 count:16];
        }

        while (v27);
      }

      v11 = v53;
      v10 = v55;
      v14 = v51;
      v13 = v52;
      v15 = v50;
    }

    [MEMORY[0x277CD9FF0] commit];
  }

  else if (a6 == @"AKLayerPresentationManager.modelSelectionsObservationContext")
  {
    v54 = v11;
    v56 = v10;
    v36 = [v12 objectForKey:*MEMORY[0x277CCA300]];
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

    v11 = v54;
    v10 = v56;
  }

  else if (a6 == @"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext")
  {
    [(AKLayerPresentationManager *)self _updateLoupeAnnotationsContributedToByAnnotation:v11];
  }

  else
  {
    v59.receiver = self;
    v59.super_class = AKLayerPresentationManager;
    [(AKLayerPresentationManager *)&v59 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_updateLoupeAnnotationsContributedToByAnnotation:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(AKLayerPresentationManager *)self pageModelController];
  v6 = [v5 annotations];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [(AKLayerPresentationManager *)self pageController];
          v14 = [v13 annotationsBeneathLoupe:v12];
          if ([v14 containsObject:v4])
          {
            [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
            v15 = v9;
            v16 = self;
            v17 = v10;
            v18 = v6;
            v20 = v19 = v4;
            v21 = [v20 objectForKey:v12];

            v4 = v19;
            v6 = v18;
            v10 = v17;
            self = v16;
            v9 = v15;
            v8 = v22;
            [v21 updateContents];
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }
}

- (void)_updateLoupeAnnotationsIntersectingRemovedAnnotation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(AKLayerPresentationManager *)self pageModelController];
  v6 = [v5 annotations];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
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
          [v4 drawingBounds];
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
            v24 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
            v25 = [v24 objectForKey:v11];

            [v25 updateContents];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }
}

- (void)forceUpdateAnnotationLayer:(id)a3
{
  v4 = a3;
  v5 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
  v6 = [v5 objectForKey:v4];

  [v6 updateContents];
}

- (void)_setNeedsDisplayOnNewLayer:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(AKLayerPresentationManager *)self _applyUpdatesWithScale:v6 toLayers:0 isLiveUpdate:1 forceUpdate:9.22337204e18, v7, v8];
}

- (void)_applyUpdatesWithScale:(double)a3 toLayers:(id)a4 isLiveUpdate:(BOOL)a5 forceUpdate:(BOOL)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a3 == 9.22337204e18)
  {
    [(AKLayerPresentationManager *)self currentScaleFactor];
    if (v10 == 9.22337204e18)
    {
      a3 = 1.0;
    }

    else
    {
      a3 = v10;
    }
  }

  [(AKLayerPresentationManager *)self _hiDPIScaleFactor];
  v12 = a3 * v11;
  v13 = [(AKLayerPresentationManager *)self shouldPixelate];
  v14 = 1.0;
  if (a3 < 2.0)
  {
    v14 = v12;
  }

  v15 = *MEMORY[0x277CDA560];
  v16 = *MEMORY[0x277CDA5B8];
  if (a3 < 2.0)
  {
    v16 = *MEMORY[0x277CDA560];
  }

  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  if (v13)
  {
    v15 = v16;
  }

  v18 = v15;
  [(AKLayerPresentationManager *)self setCurrentScaleFactor:a3];
  if ([v9 count])
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = v9;
    v19 = v9;
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
        if ((objc_opt_isKindOfClass() & 1) == 0 || a5)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          [v24 updateSublayersWithScale:a3];
          goto LABEL_31;
        }

        v25 = [v24 annotation];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v27 = v24;
          v28 = v12;
          goto LABEL_30;
        }

        if (!a6)
        {
          [v24 contentsScale];
          if (vabdd_f64(v29, v17) <= 0.00001)
          {
            v30 = [v24 minificationFilter];

            if (v30 == v18)
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
        v9 = v31;
        break;
      }
    }
  }
}

- (double)_hiDPIScaleFactor
{
  v2 = [(AKLayerPresentationManager *)self pageController];
  v3 = [v2 overlayView];
  v4 = [v3 window];
  v5 = [v4 screen];

  if (v5)
  {
    v6 = [v3 window];
    v7 = [v6 screen];
    [v7 scale];
    v9 = v8;
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    v9 = v10;
  }

  return v9;
}

- (void)_startObservingModel
{
  v47 = *MEMORY[0x277D85DE8];
  if (![(AKLayerPresentationManager *)self isObservingModel])
  {
    v3 = [(AKLayerPresentationManager *)self pageController];
    v28 = [v3 pageModelController];
    [(AKLayerPresentationManager *)self setPageModelController:?];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v4 = MEMORY[0x277CD9FF0];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_23F4B8DEC;
    v42[3] = &unk_278C7B540;
    v27 = v3;
    v43 = v27;
    [v4 setCompletionBlock:v42];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = [(AKLayerPresentationManager *)self pageModelController];
    v6 = [v5 annotations];

    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
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
          v12 = [v11 keysForValuesToObserveForRedrawing];
          v13 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
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
                  objc_enumerationMutation(v12);
                }

                [v11 addObserver:self forKeyPath:*(*(&v34 + 1) + 8 * j) options:0 context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
              }

              v14 = [v12 countByEnumeratingWithState:&v34 objects:v45 count:16];
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
    v17 = [(AKLayerPresentationManager *)self pageModelController];
    v18 = [v17 selectedAnnotations];

    v19 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
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
            objc_enumerationMutation(v18);
          }

          [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:*(*(&v30 + 1) + 8 * k)];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v44 count:16];
      }

      while (v20);
    }

    v23 = [(AKLayerPresentationManager *)self pageModelController];
    v24 = [v23 cropAnnotation];

    if (v24)
    {
      v25 = [(AKLayerPresentationManager *)self pageModelController];
      v26 = [v25 cropAnnotation];
      [(AKLayerPresentationManager *)self _addAdornmentLayerForAnnotation:v26];
    }

    [MEMORY[0x277CD9FF0] commit];
    [v28 addObserver:self forKeyPath:@"annotations" options:3 context:@"AKLayerPresentationManager.modelAnnotationsObservationContext"];
    [v28 addObserver:self forKeyPath:@"selectedAnnotations" options:3 context:@"AKLayerPresentationManager.modelSelectionsObservationContext"];
    [(AKLayerPresentationManager *)self setIsObservingModel:1];
  }
}

- (void)_stopObservingModel
{
  v43 = *MEMORY[0x277D85DE8];
  if ([(AKLayerPresentationManager *)self isObservingModel])
  {
    v3 = [(AKLayerPresentationManager *)self pageModelController];
    [v3 removeObserver:self forKeyPath:@"selectedAnnotations" context:@"AKLayerPresentationManager.modelSelectionsObservationContext"];

    v4 = [(AKLayerPresentationManager *)self pageModelController];
    [v4 removeObserver:self forKeyPath:@"annotations" context:@"AKLayerPresentationManager.modelAnnotationsObservationContext"];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v5 = [(AKLayerPresentationManager *)self pageModelController];
    v6 = [v5 cropAnnotation];

    if (v6)
    {
      v7 = [(AKLayerPresentationManager *)self pageModelController];
      v8 = [v7 cropAnnotation];
      [(AKLayerPresentationManager *)self _removeAdornmentLayerForAnnotation:v8];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [(AKLayerPresentationManager *)self pageModelController];
    v10 = [v9 selectedAnnotations];

    v11 = [v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
            objc_enumerationMutation(v10);
          }

          [(AKLayerPresentationManager *)self _removeAdornmentLayerForAnnotation:*(*(&v36 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v12);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [(AKLayerPresentationManager *)self pageModelController];
    v16 = [v15 annotations];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
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
          v22 = [v21 keysForValuesToObserveForRedrawing];
          v23 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
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
                  objc_enumerationMutation(v22);
                }

                [v21 removeObserver:self forKeyPath:*(*(&v28 + 1) + 8 * v26++) context:@"AKLayerPresentationManager.modelAnnotationsAppearanceObservationContext"];
              }

              while (v24 != v26);
              v24 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
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

- (void)_addLayerForAnnotation:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [(AKLayerPresentationManager *)self pageController];
    v6 = [AKAnnotationLayer newAnnotationLayerForAnnotation:v4 withPageController:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AKLayerPresentationManager *)self setCropAnnotationLayer:v6];
    }

    v7 = [(AKLayerPresentationManager *)self rootLayer];
    [v7 addSublayer:v6];

    [v6 updatePixelAlignment];
    v8 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
    [v8 setObject:v6 forKey:v4];

    [(AKLayerPresentationManager *)self _setNeedsDisplayOnNewLayer:v6];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v5 pageModelController];
    v10 = [v9 annotations];

    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v22 = v5;
      v13 = 0;
      v14 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
          v18 = [v17 objectForKey:v16];

          [v18 setZPosition:v13++];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
      v19 = v13;
      v5 = v22;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = [(AKLayerPresentationManager *)self cropAnnotationLayer];

    if (v20)
    {
      v21 = [(AKLayerPresentationManager *)self cropAnnotationLayer];
      [v21 setZPosition:v19];
    }
  }
}

- (void)_removeLayerForAnnotation:(id)a3
{
  v8 = a3;
  v4 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    [v5 removeFromSuperlayer];
    v6 = [(AKLayerPresentationManager *)self annotationsToAnnotationLayers];
    [v6 removeObjectForKey:v8];

    v7 = [(AKLayerPresentationManager *)self cropAnnotationLayer];

    if (v5 == v7)
    {
      [(AKLayerPresentationManager *)self setCropAnnotationLayer:0];
    }
  }
}

- (void)_addAdornmentLayerForAnnotation:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AKLayerPresentationManager *)self pageController];
  v6 = [AKAdornmentLayer newAdornmentLayerForAnnotation:v4 withPageController:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AKLayerPresentationManager *)self setCropAdornmentLayer:v6];
  }

  v7 = [(AKLayerPresentationManager *)self rootLayer];
  [v7 addSublayer:v6];

  [v6 updatePixelAlignment];
  v8 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  v23 = v4;
  [v8 setObject:v6 forKey:v4];

  [(AKLayerPresentationManager *)self _setNeedsDisplayOnNewLayer:v6];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = v5;
  v9 = [v5 pageModelController];
  v10 = [v9 annotations];

  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
        v18 = [v17 objectForKey:v16];

        [v18 setZPosition:(v13 + AKAdornmentZPositionOffset)];
        ++v13;
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v19 = [(AKLayerPresentationManager *)self cropAdornmentLayer];

  if (v19)
  {
    v20 = (AKAdornmentZPositionOffset + v13);
    v21 = [(AKLayerPresentationManager *)self cropAdornmentLayer];
    [v21 setZPosition:v20];
  }
}

- (void)_removeAdornmentLayerForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  v9 = [v5 objectForKey:v4];

  [v9 removeFromSuperlayer];
  v6 = [(AKLayerPresentationManager *)self annotationsToAdornmentLayers];
  [v6 removeObjectForKey:v4];

  [v9 teardown];
  v7 = [(AKLayerPresentationManager *)self cropAdornmentLayer];

  v8 = v9;
  if (v9 == v7)
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