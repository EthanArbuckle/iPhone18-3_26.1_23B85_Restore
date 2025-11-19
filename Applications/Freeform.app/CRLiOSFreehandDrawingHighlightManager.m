@interface CRLiOSFreehandDrawingHighlightManager
- (CGPath)newPathForSearchReference:(id)a3;
- (CRLiOSFreehandDrawingHighlightManager)initWithInteractiveCanvasController:(id)a3;
- (NSArray)decoratorOverlayRenderables;
- (id)imageForSearchReference:(id)a3 forPath:(CGPath *)a4 shouldPulsate:(BOOL)a5;
- (id)p_boardItemsForSearchReference:(id)a3;
- (id)p_makeOverlayHighlight;
- (void)dealloc;
- (void)didEndZoomingOperation;
- (void)p_setPrimaryFindResultSearchReference:(id)a3;
- (void)p_setPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4;
- (void)p_updateAnimationWithAnimatingPulse:(BOOL)a3;
- (void)p_updateHighlights;
- (void)pulseAnimationDidStop:(id)a3;
- (void)setPrimaryFindResultSearchReference:(id)a3;
- (void)setSearchReferencesToHighlight:(id)a3;
- (void)teardown;
@end

@implementation CRLiOSFreehandDrawingHighlightManager

- (CRLiOSFreehandDrawingHighlightManager)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLiOSFreehandDrawingHighlightManager;
  v5 = [(CRLiOSFreehandDrawingHighlightManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
    [v4 addDecorator:v6];
  }

  return v6;
}

- (void)teardown
{
  if (self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101330CE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101330CFC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101330D90();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v2);
    }

    v3 = [NSString stringWithUTF8String:"[CRLiOSFreehandDrawingHighlightManager teardown]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingHighlightManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:55 isFatal:0 description:"attempting to call teardown on an instance of CRLiOSFreehandDrawingHighlightManager that has already been torn down."];
  }

  else
  {
    self->_isTornDown = 1;
    searchReferencesToHighlight = self->_searchReferencesToHighlight;
    self->_searchReferencesToHighlight = 0;

    primaryFindResultSearchReference = self->_primaryFindResultSearchReference;
    self->_primaryFindResultSearchReference = 0;

    pulseArrayController = self->_pulseArrayController;
    self->_pulseArrayController = 0;

    highlightArrayController = self->_highlightArrayController;
    self->_highlightArrayController = 0;
  }
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101330DB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101330DCC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101330E60();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLiOSFreehandDrawingHighlightManager dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingHighlightManager.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:60 isFatal:0 description:"teardown not called for CRLiOSFreehandDrawingHighlightManager."];
  }

  v6.receiver = self;
  v6.super_class = CRLiOSFreehandDrawingHighlightManager;
  [(CRLiOSFreehandDrawingHighlightManager *)&v6 dealloc];
}

- (void)setPrimaryFindResultSearchReference:(id)a3
{
  v12 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v12);
  v7 = v6;
  if (v6 && ([v6 model], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass & 1) != 0))
  {
    objc_storeStrong(&self->_primaryFindResultSearchReference, a3);
    [(CRLiOSFreehandDrawingHighlightManager *)self p_setPrimaryFindResultSearchReference:v12];
  }

  else if (self->_primaryFindResultSearchReference)
  {
    [(CRLWPHighlightArrayController *)self->_pulseArrayController stop];
    [(CRLiOSFreehandDrawingHighlightManager *)self p_setPulseControllerActive:0 autohide:0];
    primaryFindResultSearchReference = self->_primaryFindResultSearchReference;
    self->_primaryFindResultSearchReference = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained invalidateLayersForDecorator:self];
}

- (void)p_setPrimaryFindResultSearchReference:(id)a3
{
  v8 = a3;
  [(CRLWPHighlightArrayController *)self->_pulseArrayController stop];
  if (v8)
  {
    v4 = [v8 autohideHighlight];
    v5 = self;
    v6 = 1;
  }

  else
  {
    v5 = self;
    v6 = 0;
    v4 = 0;
  }

  [(CRLiOSFreehandDrawingHighlightManager *)v5 p_setPulseControllerActive:v6 autohide:v4];
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained invalidateLayersForDecorator:self];

  [(CRLiOSFreehandDrawingHighlightManager *)self p_updateAnimationWithAnimatingPulse:[(CRLWPHighlightArrayController *)self->_pulseArrayController shouldPulsate]];
}

- (void)setSearchReferencesToHighlight:(id)a3
{
  v19 = self;
  v3 = a3;
  v4 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v3;
  v5 = [v3 keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = [v20 objectForKey:v10];
          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            do
            {
              v15 = 0;
              do
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v4 addObject:{*(*(&v21 + 1) + 8 * v15), v19}];
                v15 = v15 + 1;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v13);
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v16 = [v4 count];
  if (v16)
  {
    v16 = [v4 copy];
  }

  searchReferencesToHighlight = v19->_searchReferencesToHighlight;
  v19->_searchReferencesToHighlight = v16;

  WeakRetained = objc_loadWeakRetained(&v19->_interactiveCanvasController);
  [WeakRetained invalidateLayersForDecorator:v19];

  [(CRLiOSFreehandDrawingHighlightManager *)v19 p_updateHighlights];
}

- (void)p_updateAnimationWithAnimatingPulse:(BOOL)a3
{
  v3 = a3;
  if (![(CRLWPHighlightArrayController *)self->_pulseArrayController pulsating]&& self->_primaryFindResultSearchReference && !self->_updatingHighlights)
  {
    self->_updatingHighlights = 1;
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v6 = [WeakRetained canvas];
    [v6 viewScale];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setViewScale:?];

    [(CRLWPHighlightArrayController *)self->_pulseArrayController reset];
    v7 = sub_1002843F0();
    pulseArrayController = self->_pulseArrayController;
    primaryFindResultSearchReference = self->_primaryFindResultSearchReference;
    v9 = [NSArray arrayWithObjects:&primaryFindResultSearchReference count:1];
    v10 = [WeakRetained canvas];
    [v10 contentsScale];
    v11 = [(CRLWPHighlightArrayController *)pulseArrayController buildHighlightsForSearchReferences:v9 contentsScaleForLayers:1 shouldCreateBackground:v7 backgroundColor:?];

    CGColorRelease(v7);
    if (v3)
    {
      [(CRLWPHighlightArrayController *)self->_pulseArrayController startAnimating];
    }

    self->_updatingHighlights = 0;
  }
}

- (void)p_updateHighlights
{
  v3 = [(NSArray *)self->_searchReferencesToHighlight count];
  highlightArrayController = self->_highlightArrayController;
  if (v3)
  {
    if (!highlightArrayController)
    {
      v5 = [[CRLWPHighlightArrayController alloc] initWithZOrder:self delegate:0.0];
      v6 = self->_highlightArrayController;
      self->_highlightArrayController = v5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v8 = self->_highlightArrayController;
    v9 = *&CGAffineTransformIdentity.c;
    v26[0] = *&CGAffineTransformIdentity.a;
    v26[1] = v9;
    v26[2] = *&CGAffineTransformIdentity.tx;
    [(CRLWPHighlightArrayController *)v8 setTransform:v26];
    v10 = [WeakRetained canvas];
    [v10 viewScale];
    [(CRLWPHighlightArrayController *)self->_highlightArrayController setViewScale:?];

    [(CRLWPHighlightArrayController *)self->_highlightArrayController reset];
    v11 = sub_100284410();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = self->_searchReferencesToHighlight;
    v12 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = self->_highlightArrayController;
          v27 = *(*(&v22 + 1) + 8 * v15);
          v16 = v27;
          v18 = [NSArray arrayWithObjects:&v27 count:1];
          v19 = [WeakRetained canvas];
          [v19 contentsScale];
          v20 = [(CRLWPHighlightArrayController *)v17 buildHighlightsForSearchReferences:v18 contentsScaleForLayers:1 shouldCreateBackground:v11 backgroundColor:?];

          [v16 setFindHighlights:v20];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v13);
    }

    CGColorRelease(v11);
  }

  else if (highlightArrayController)
  {
    self->_highlightArrayController = 0;
  }
}

- (void)p_setPulseControllerActive:(BOOL)a3 autohide:(BOOL)a4
{
  pulseArrayController = self->_pulseArrayController;
  if (a3)
  {
    v6 = a4;
    if (!pulseArrayController)
    {
      v7 = [[CRLWPHighlightArrayController alloc] initWithZOrder:self delegate:0.0];
      v8 = self->_pulseArrayController;
      self->_pulseArrayController = v7;

      pulseArrayController = self->_pulseArrayController;
    }

    [(CRLWPHighlightArrayController *)pulseArrayController setShouldPulsate:1];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setAutohide:v6];
    v9 = self->_pulseArrayController;
    v10 = *&CGAffineTransformIdentity.c;
    v12[0] = *&CGAffineTransformIdentity.a;
    v12[1] = v10;
    v12[2] = *&CGAffineTransformIdentity.tx;
    [(CRLWPHighlightArrayController *)v9 setTransform:v12];
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    [WeakRetained viewScale];
    [(CRLWPHighlightArrayController *)self->_pulseArrayController setViewScale:?];
  }

  else if (pulseArrayController)
  {
    self->_pulseArrayController = 0;
  }
}

- (id)p_makeOverlayHighlight
{
  v3 = +[NSMutableArray array];
  highlightArrayController = self->_highlightArrayController;
  if (highlightArrayController)
  {
    v5 = [(CRLWPHighlightArrayController *)highlightArrayController layers];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(CRLWPHighlightArrayController *)self->_highlightArrayController layers];
      v8 = [CRLCanvasRenderable renderablesFromLayers:v7];
      [v3 addObjectsFromArray:v8];
    }
  }

  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController)
  {
    v10 = [(CRLWPHighlightArrayController *)pulseArrayController layers];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(CRLWPHighlightArrayController *)self->_pulseArrayController layers];
      v13 = [CRLCanvasRenderable renderablesFromLayers:v12];
      [v3 addObjectsFromArray:v13];
    }
  }

  return v3;
}

- (id)p_boardItemsForSearchReference:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v6 = [WeakRetained selectionModelTranslator];

  v7 = objc_opt_class();
  v8 = sub_100013F00(v7, v4);

  v9 = [v8 selectionPath];
  v10 = [v6 boardItemsForSelectionPath:v9];

  return v10;
}

- (NSArray)decoratorOverlayRenderables
{
  if (self->_searchReferencesToHighlight)
  {
    v3 = [(CRLiOSFreehandDrawingHighlightManager *)self p_makeOverlayHighlight];
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (void)didEndZoomingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  [WeakRetained invalidateLayersForDecorator:self];

  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController)
  {
    [(CRLiOSFreehandDrawingHighlightManager *)self p_updateAnimationWithAnimatingPulse:[(CRLWPHighlightArrayController *)pulseArrayController shouldPulsate]];
  }

  if (self->_highlightArrayController)
  {

    [(CRLiOSFreehandDrawingHighlightManager *)self p_updateHighlights];
  }
}

- (CGPath)newPathForSearchReference:(id)a3
{
  v4 = [(CRLiOSFreehandDrawingHighlightManager *)self p_boardItemsForSearchReference:a3];
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
        v15 = [WeakRetained layoutForInfo:v13];

        if (v15)
        {
          [v15 frameForCulling];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = [v15 parent];
          v25 = [v24 geometryInRoot];
          v26 = v25;
          if (v25)
          {
            [v25 transform];
          }

          else
          {
            memset(&v35, 0, sizeof(v35));
          }

          v41.origin.x = v17;
          v41.origin.y = v19;
          v41.size.width = v21;
          v41.size.height = v23;
          v42 = CGRectApplyAffineTransform(v41, &v35);
          v27 = v42.origin.x;
          v28 = v42.origin.y;
          v29 = v42.size.width;
          v30 = v42.size.height;

          v43.origin.x = x;
          v43.origin.y = y;
          v43.size.width = width;
          v43.size.height = height;
          v45.origin.x = v27;
          v45.origin.y = v28;
          v45.size.width = v29;
          v45.size.height = v30;
          v44 = CGRectUnion(v43, v45);
          x = v44.origin.x;
          y = v44.origin.y;
          width = v44.size.width;
          height = v44.size.height;
        }
      }

      v10 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v10);
  }

  v31 = [CRLBezierPath bezierPathWithRect:x, y, width, height, *&v35.a, *&v35.c, *&v35.tx];
  v32 = v31;
  if (v31)
  {
    v33 = CGPathRetain([v31 CGPath]);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)imageForSearchReference:(id)a3 forPath:(CGPath *)a4 shouldPulsate:(BOOL)a5
{
  v5 = self;
  v6 = [(CRLiOSFreehandDrawingHighlightManager *)self p_boardItemsForSearchReference:a3, a4, a5];
  v7 = +[NSMutableArray array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    v46 = *v56;
    v47 = v5;
    do
    {
      v11 = 0;
      v48 = v9;
      do
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v55 + 1) + 8 * v11);
        WeakRetained = objc_loadWeakRetained(&v5->_interactiveCanvasController);
        v14 = [WeakRetained layoutForInfo:v12];

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = sub_100013F00(v15, v12);
          v17 = v16;
          if (v16)
          {
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v18 = [v16 pencilKitStrokesInParentSpace];
            v19 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v52;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v52 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v51 + 1) + 8 * i);
                  v24 = [v14 parent];
                  v25 = v24;
                  if (v24)
                  {
                    [v24 transformInRoot];
                  }

                  else
                  {
                    memset(v50, 0, sizeof(v50));
                  }

                  v26 = [v23 _strokeByAppendingTransform:v50];
                  [v7 addObject:v26];
                }

                v20 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
              }

              while (v20);
            }

            v10 = v46;
            v5 = v47;
            v9 = v48;
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v9);
  }

  v27 = objc_loadWeakRetained(&v5->_interactiveCanvasController);
  v28 = [v27 canvas];
  [v28 contentsScale];
  v30 = v29;

  v31 = objc_loadWeakRetained(&v5->_interactiveCanvasController);
  v32 = [v31 canvas];
  [v32 viewScale];
  v34 = v33;

  v35 = v30 * v34;
  PathBoundingBox = CGPathGetPathBoundingBox(a4);
  x = PathBoundingBox.origin.x;
  y = PathBoundingBox.origin.y;
  v38 = sub_10011F340(PathBoundingBox.size.width, PathBoundingBox.size.height, v35);
  v40 = sub_10050DF80(11, v38, v39);
  CGContextSaveGState(v40);
  CGContextScaleCTM(v40, v35, v35);
  CGContextTranslateCTM(v40, -x, -y);
  v41 = [v7 copy];
  [CRLPencilKitRenderer drawStrokes:v41 inContext:v40 overTransparentCanvas:1];

  CGContextRestoreGState(v40);
  Image = CGBitmapContextCreateImage(v40);
  v43 = [CRLImage imageWithCGImage:Image];
  CGImageRelease(Image);
  CGContextRelease(v40);

  return v43;
}

- (void)pulseAnimationDidStop:(id)a3
{
  pulseArrayController = self->_pulseArrayController;
  if (pulseArrayController == a3)
  {
    if ([(CRLWPHighlightArrayController *)pulseArrayController autohide])
    {
      [(CRLiOSFreehandDrawingHighlightManager *)self p_setPulseControllerActive:0 autohide:0];
      if (self->_pulseArrayController)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101330E88();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101330E9C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101330F4C();
        }

        v5 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v5);
        }

        v6 = [NSString stringWithUTF8String:"[CRLiOSFreehandDrawingHighlightManager pulseAnimationDidStop:]"];
        v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingHighlightManager.m"];
        [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:280 isFatal:0 description:"expected nil value for '%{public}s'", "_pulseArrayController"];
      }

      [(CRLiOSFreehandDrawingHighlightManager *)self p_setPrimaryFindResultSearchReference:0];
      WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
      [WeakRetained invalidateLayersForDecorator:self];
    }

    [(CRLSearchReference *)self->_primaryFindResultSearchReference setPulseHighlight:0];
  }
}

@end