@interface AKInkPageOverlayController
- (AKInkPageOverlayController)initWithPageController:(id)a3;
- (AKPageController)pageController;
- (BOOL)inputViewCanBeginDrawing:(id)a3 withTouch:(id)a4;
- (BOOL)shapeDetectionController:(id)a3 shouldSelectCandidateAnnotation:(id)a4;
- (CGRect)_convertRect:(CGRect)a3 fromDrawingInCanvasView:(id)a4 toPageControllerModelSpace:(id)a5;
- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)a3;
- (CGSize)scaleFromDrawingInCanvasView:(id)a3 toPageControllerModelSpace:(id)a4;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (id)_convertCHDrawing:(id)a3 fromDrawingInCanvasView:(id)a4 toInkOverlayView:(id)a5;
- (void)_controllerWillSave:(id)a3;
- (void)_enclosingScrollViewDidScroll:(id)a3;
- (void)_fullSetup;
- (void)_inkCanvasAnnotationUpdated:(id)a3;
- (void)_inkDidChangeNotification:(id)a3;
- (void)_partialTeardown;
- (void)_performDelayedShapeDetection;
- (void)_setupGestureDependencies;
- (void)_tearDownGestureDependencies;
- (void)_toolStatusUpdated:(id)a3;
- (void)_updateAllowedTouchTypesAllEnabled:(BOOL)a3 pencilEnabled:(BOOL)a4;
- (void)_updateGestureDependencyPriority;
- (void)annotationEditingDidEndWithCompletion:(id)a3;
- (void)didToggleRuler;
- (void)inputView:(id)a3 didCollectDrawingForAnalysis:(id)a4;
- (void)inputViewDidBeginStroke:(id)a3;
- (void)setInkOverlayView:(id)a3;
- (void)setRulerHostingDelegate:(id)a3;
- (void)setup;
- (void)shapeDetectionControllerWillPickCandidate:(id)a3 isInk:(BOOL)a4;
- (void)teardown;
@end

@implementation AKInkPageOverlayController

- (AKInkPageOverlayController)initWithPageController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKInkPageOverlayController;
  v5 = [(AKInkPageOverlayController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKInkPageOverlayController *)v5 setPageController:v4];
  }

  return v6;
}

- (void)setup
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fullSetup object:0];
  v15 = [(AKInkPageOverlayController *)self pageController];
  v3 = [v15 controller];
  v4 = [v15 pageModelController];
  v5 = [v4 inkCanvasAnnotation];

  if (v5 && ([v5 drawing], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "strokes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    [(AKInkPageOverlayController *)self _fullSetup];
  }

  else
  {
    v9 = [v3 toolController];
    if (([v9 allInkEnabled] & 1) != 0 || objc_msgSend(v9, "pencilInkEnabled"))
    {
      [(AKInkPageOverlayController *)self performSelector:sel__fullSetup withObject:0 afterDelay:0.25];
    }

    else
    {
      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = off_27E39A388[0];
      v12 = [v15 pageModelController];
      [v10 addObserver:self selector:sel__inkCanvasAnnotationUpdated_ name:v11 object:v12];
    }
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 addObserver:self selector:sel__toolStatusUpdated_ name:@"AKToolController.inkToolStatusUpdated" object:0];

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 addObserver:self selector:sel__controllerWillSave_ name:AKControllerWillSaveNotification object:v3];
}

- (void)_fullSetup
{
  v3 = [(AKInkPageOverlayController *)self inkOverlayView];

  if (!v3)
  {
    v51 = [(AKInkPageOverlayController *)self pageController];
    v4 = [v51 controller];
    v5 = v4;
    if (v4 && ([v4 isTornDown] & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v6 = [[AKShapeDetectionController alloc] initWithController:v5];
      [(AKInkPageOverlayController *)self setShapeDetectionController:v6];

      v7 = [(AKInkPageOverlayController *)self shapeDetectionController];
      [v7 setDelegate:self];

      v8 = [v5 shapeDetectionEnabled];
      v9 = [(AKInkPageOverlayController *)self shapeDetectionController];
      [v9 setShapeDetectionEnabled:v8];

      v10 = [v51 pageModelController];
      v11 = [(AKInkPageOverlayController *)self shapeDetectionController];
      [v11 setModelControllerToObserveForAnnotationsAndSelections:v10];

      v12 = [v51 overlayView];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [v51 inkOverlayDrawingUndoTarget];
      v22 = [AKInkOverlayView newAKInkOverlayViewForCurrentPlatformWithPageController:v51 drawingUndoTarget:v21];

      [(AKInkPageOverlayController *)self setInkOverlayView:v22];
      [v22 setDelegate:self];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v22 setFrame:{v14, v16, v18, v20}];
      [v12 addSubview:v22];
      v23 = [v22 centerXAnchor];
      v24 = [v12 centerXAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      [v25 setActive:1];

      v26 = [v22 centerYAnchor];
      v27 = [v12 centerYAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      [v28 setActive:1];

      v29 = [v22 widthAnchor];
      v30 = [v12 widthAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v31 setActive:1];

      v32 = [v22 heightAnchor];
      v50 = v12;
      v33 = [v12 heightAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      [v34 setActive:1];

      v35 = ((2 * AKAdornmentZPositionOffset) | 1uLL);
      v36 = [v22 layer];
      [v36 setZPosition:v35];

      [(AKInkPageOverlayController *)self _setupGestureDependencies];
      v37 = [v5 undoController];
      v38 = [v37 undoManager];

      v39 = [v38 isUndoRegistrationEnabled];
      if (v39)
      {
        [v38 disableUndoRegistration];
      }

      v40 = [v51 pageModelController];
      v41 = [v40 inkCanvasAnnotation];

      if (v41)
      {
        v42 = [v41 drawing];

        if (v42)
        {
          v43 = [v41 drawing];
          v44 = [v22 canvasView];
          [v44 setDrawing:v43];
        }

        else
        {
          NSLog(&cfstr_TheCanvasAnnot.isa);
        }
      }

      if (v39)
      {
        [v38 enableUndoRegistration];
      }

      v45 = [v5 toolController];
      -[AKInkPageOverlayController _updateAllowedTouchTypesAllEnabled:pencilEnabled:](self, "_updateAllowedTouchTypesAllEnabled:pencilEnabled:", [v45 allInkEnabled], objc_msgSend(v45, "pencilInkEnabled"));
      v46 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 attributeController];
      v48 = v47 = v38;
      [v46 addObserver:self selector:sel__inkDidChangeNotification_ name:@"AKAttributeController.inkDidChange" object:v48];

      v49 = [MEMORY[0x277CCAB98] defaultCenter];
      [v49 addObserver:self selector:sel__enclosingScrollViewDidScroll_ name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)teardown
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fullSetup object:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(AKInkPageOverlayController *)self _partialTeardown];
}

- (void)_partialTeardown
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fullSetup object:0];
  v3 = [(AKInkPageOverlayController *)self inkOverlayView];
  if (v3)
  {
    v7 = v3;
    v4 = [v3 canvasView];
    [v4 setRulerActive:0];

    [(AKInkPageOverlayController *)self _tearDownGestureDependencies];
    v5 = [(AKInkPageOverlayController *)self shapeDetectionController];
    [v5 setModelControllerToObserveForAnnotationsAndSelections:0];

    v6 = [(AKInkPageOverlayController *)self shapeDetectionController];
    [v6 dismissCandidatePicker];

    [v7 teardown];
    [v7 removeFromSuperview];
    [(AKInkPageOverlayController *)self setInkOverlayView:0];
    v3 = v7;
  }
}

- (void)annotationEditingDidEndWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(AKInkPageOverlayController *)self inkOverlayView];
  v5 = [v4 canvasView];

  if (v5)
  {
    [v5 setRulerActive:0];
    [v5 commitSelectionIfNecessaryWithCompletion:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)setInkOverlayView:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_inkOverlayView, a3);
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostingDelegate);
  if (v6 && WeakRetained)
  {
    [(AKInkOverlayView *)self->_inkOverlayView setRulerHostingDelegate:WeakRetained];
  }
}

- (void)setRulerHostingDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_rulerHostingDelegate, v4);
  v6 = [(AKInkPageOverlayController *)self inkOverlayView];
  v5 = [v6 canvasView];
  [v5 setRulerHostingDelegate:v4];
}

- (BOOL)inputViewCanBeginDrawing:(id)a3 withTouch:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(AKInkPageOverlayController *)self pageController];
  v7 = [v6 controller];

  if ([v5 type] == 2)
  {
    if (([v7 pencilAlwaysDraws] & 1) == 0 && (objc_msgSend(v7, "annotationEditingEnabled") & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (![v7 annotationEditingEnabled])
  {
LABEL_4:
    v8 = 0;
    goto LABEL_28;
  }

  v9 = [v7 modelController];
  v10 = [v9 allSelectedAnnotations];
  v11 = [v10 count];

  if (!v11)
  {
    v8 = 1;
    goto LABEL_28;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v7 modelController];
  v13 = [v12 allSelectedAnnotations];

  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v25 + 1) + 8 * i) conformsToAKTextAnnotationProtocol] && objc_msgSend(v5, "type") == 2)
        {
          v8 = 0;
          goto LABEL_27;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v7 textEditorController];
  if ([v13 isEditing])
  {
    v18 = [v13 textView];
    [v5 locationInView:v18];
    if (([v18 pointInside:0 withEvent:?] & 1) == 0)
    {
      [v13 endEditing];
LABEL_24:
      v23 = [v7 modelController];
      [v23 deselectAllAnnotations];
    }
  }

  else
  {
    if ([v5 type] == 2)
    {
      v18 = [v7 modelController];
      [v18 deselectAllAnnotations];
      v8 = 1;
      goto LABEL_26;
    }

    [v5 locationInView:0];
    v20 = v19;
    v22 = v21;
    v18 = [v7 mainEventHandler];
    if (([v18 hitTestAnnotationsIncludingPOI:1 ignoreIfDeselected:1 atPointInWindow:0 outAnnotation:{v20, v22}] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v8 = 0;
LABEL_26:

LABEL_27:
LABEL_28:

  return v8;
}

- (void)inputViewDidBeginStroke:(id)a3
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedShapeDetection object:0];
  [(AKInkPageOverlayController *)self setDelayedShapeDetectionBlock:0];
  v9 = [(AKInkPageOverlayController *)self pageController];
  v4 = [v9 controller];
  v5 = [v4 toolbarViewController];

  if (v5 && [v5 isPresentingPopovers])
  {
    [v5 dismissPresentedPopovers];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

  v7 = [v9 controller];
  v8 = [v7 modelController];
  [v8 deselectAllAnnotations];
}

- (void)inputView:(id)a3 didCollectDrawingForAnalysis:(id)a4
{
  v6 = a3;
  v30 = a4;
  v7 = [(AKInkPageOverlayController *)self pageController];
  v8 = [v7 controller];
  v9 = [v6 canvasView];
  v10 = [v9 drawing];
  v11 = [v8 modelController];
  [v11 deselectAllAnnotations];

  v12 = [v7 pageModelController];
  v13 = [v12 inkCanvasAnnotation];

  v14 = [v10 _rootStrokes];
  v15 = [v14 count];

  if (v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 == 0;
  }

  v17 = !v16;
  if (v13 && !v15)
  {
    v18 = [v7 pageModelController];
    v19 = [v18 mutableArrayValueForKey:@"annotations"];

    [v19 removeObject:v13];
    v13 = 0;
    goto LABEL_16;
  }

  if (v17)
  {
    v13 = objc_alloc_init(AKInkAnnotation2);
    [v6 canvasSizeInPKDrawingSpace];
    [(AKInkAnnotation *)v13 setDrawingSize:?];
    [v7 modelBaseScaleFactor];
    [(AKAnnotation *)v13 setOriginalModelBaseScaleFactor:?];
    [(AKAnnotation *)v13 setOriginalExifOrientation:1];
  }

  else if (!v15)
  {
    goto LABEL_14;
  }

  [v10 bounds];
  [(AKInkPageOverlayController *)self _convertRect:v9 fromDrawingInCanvasView:v7 toPageControllerModelSpace:?];
  [(AKInkAnnotation *)v13 setRectangle:?];
LABEL_14:
  if (v13)
  {
    v20 = [v10 copy];
    [(AKInkAnnotation *)v13 setDrawing:v20];

    [(AKAnnotation *)v13 setShouldUseAppearanceOverride:0];
  }

LABEL_16:
  if (v17)
  {
    v21 = [v7 pageModelController];
    [v21 setInkCanvasAnnotationOneTime:v13];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(AKInkPageOverlayController *)self lastStrokeEndTime];
  v24 = v23;
  [(AKInkPageOverlayController *)self setLastStrokeEndTime:Current];
  v25 = [(AKInkPageOverlayController *)self shapeDetectionController];
  if ([v25 shapeDetectionEnabled])
  {
    v26 = [v30 strokes];
    v27 = [v26 count];

    if (v27 == 1)
    {
      v28 = Current - v24;
      if (Current - v24 > 0.5)
      {
        objc_initWeak(&location, self);
        objc_initWeak(&from, v7);
        objc_initWeak(&v38, v9);
        objc_initWeak(&v37, v6);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_23F43D030;
        v31[3] = &unk_278C7BC20;
        objc_copyWeak(&v33, &location);
        objc_copyWeak(&v34, &from);
        objc_copyWeak(&v35, &v38);
        objc_copyWeak(&v36, &v37);
        v32 = v30;
        [(AKInkPageOverlayController *)self setDelayedShapeDetectionBlock:v31];
        [(AKInkPageOverlayController *)self performSelector:sel__performDelayedShapeDetection withObject:0 afterDelay:0.2];

        objc_destroyWeak(&v36);
        objc_destroyWeak(&v35);
        objc_destroyWeak(&v34);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&v37);
        objc_destroyWeak(&v38);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
  }

  v29 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v29 penStrokeCompletedForAnnotationController:v8];
  }
}

- (void)_performDelayedShapeDetection
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedShapeDetection object:0];
  v4 = [(AKInkPageOverlayController *)self delayedShapeDetectionBlock];
  [(AKInkPageOverlayController *)self setDelayedShapeDetectionBlock:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (void)shapeDetectionControllerWillPickCandidate:(id)a3 isInk:(BOOL)a4
{
  if (!a4)
  {
    [(AKInkPageOverlayController *)self setIgnoreAnnotationAndSelectionKVO:1];
    v6 = [(AKInkPageOverlayController *)self pageController];
    v7 = [v6 controller];
    [v7 undo:self];

    [(AKInkPageOverlayController *)self setIgnoreAnnotationAndSelectionKVO:0];
  }
}

- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)a3
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (BOOL)shapeDetectionController:(id)a3 shouldSelectCandidateAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(AKInkPageOverlayController *)self pageController];
  v7 = [v6 controller];
  v8 = [v7 selectNewlyCreatedAnnotations];

  objc_opt_class();
  LOBYTE(v6) = objc_opt_isKindOfClass();

  return v8 & (v6 ^ 1);
}

- (void)_inkDidChangeNotification:(id)a3
{
  v12 = a3;
  v4 = [(AKInkPageOverlayController *)self pageController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 controller];
    v7 = [v12 object];
    v8 = [v6 attributeController];

    if (v7 == v8)
    {
      v9 = [v6 attributeController];
      v10 = [v9 ink];

      v11 = [(AKInkPageOverlayController *)self inkOverlayView];
      [v11 setInk:v10];
    }
  }
}

- (void)didToggleRuler
{
  v7 = [(AKInkPageOverlayController *)self inkOverlayView];
  v3 = [v7 canvasView];
  v4 = [v3 isRulerActive];
  v5 = [(AKInkPageOverlayController *)self inkOverlayView];
  v6 = [v5 canvasView];
  [v6 setRulerActive:v4 ^ 1u];
}

- (void)_enclosingScrollViewDidScroll:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

  v6 = [(AKInkPageOverlayController *)self inkOverlayView];
  v5 = [v6 canvasView];
  [v5 setNeedsLayout];
}

- (void)_inkCanvasAnnotationUpdated:(id)a3
{
  v4 = [(AKInkPageOverlayController *)self inkOverlayView];

  if (!v4)
  {
    v5 = [(AKInkPageOverlayController *)self pageController];
    v6 = [v5 pageModelController];
    v11 = [v6 inkCanvasAnnotation];

    v7 = v11;
    if (v11)
    {
      v8 = [v11 drawing];
      v9 = [v8 strokes];
      v10 = [v9 count];

      v7 = v11;
      if (v10)
      {
        [(AKInkPageOverlayController *)self _fullSetup];
        v7 = v11;
      }
    }
  }
}

- (void)_toolStatusUpdated:(id)a3
{
  v15 = [(AKInkPageOverlayController *)self pageController];
  v4 = [v15 controller];
  v5 = [v4 toolController];
  v6 = v5;
  if (v5)
  {
    if (([v5 allInkEnabled] & 1) != 0 || objc_msgSend(v6, "pencilInkEnabled"))
    {
      v7 = [(AKInkPageOverlayController *)self inkOverlayView];

      if (!v7)
      {
        [(AKInkPageOverlayController *)self _fullSetup];
      }
    }

    else
    {
      v8 = [v15 pageModelController];
      v9 = [v8 inkCanvasAnnotation];

      v10 = [(AKInkPageOverlayController *)self inkOverlayView];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 drawing];
        v13 = [v12 strokes];
        v14 = [v13 count];

        if (!v14)
        {
          [(AKInkPageOverlayController *)self _partialTeardown];
        }
      }
    }

    -[AKInkPageOverlayController _updateAllowedTouchTypesAllEnabled:pencilEnabled:](self, "_updateAllowedTouchTypesAllEnabled:pencilEnabled:", [v6 allInkEnabled], objc_msgSend(v6, "pencilInkEnabled"));
    [(AKInkPageOverlayController *)self _updateGestureDependencyPriority];
  }
}

- (void)_controllerWillSave:(id)a3
{
  v4 = [(AKInkPageOverlayController *)self inkOverlayView];
  v3 = [v4 canvasView];
  [v3 commitSelectionIfNecessaryWithCompletion:0];
}

- (void)_updateAllowedTouchTypesAllEnabled:(BOOL)a3 pencilEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v17 = [(AKInkPageOverlayController *)self pageController];
  v7 = [v17 overlayView];
  v8 = [(AKInkPageOverlayController *)self inkOverlayView];
  v9 = [v8 drawingGestureRecognizer];

  v10 = [v7 superview];
  v11 = [v10 akEnclosingScrollView];
  v12 = [v11 akEnclosingScrollView];
  v13 = [v11 panGestureRecognizer];
  v14 = [v12 panGestureRecognizer];
  if (v5 || v4)
  {
    v15 = &unk_2851BAAE8;
  }

  else
  {
    v15 = &unk_2851BAB00;
  }

  [v13 setAllowedTouchTypes:v15];
  [v14 setAllowedTouchTypes:v15];
  v16 = [v9 allowedTouchTypes];
  AKLog(@"%s %@ types: %@ on recognizer: %p scrollview recognizer: %p");
}

- (void)_setupGestureDependencies
{
  v13 = [(AKInkPageOverlayController *)self pageController];
  v3 = [v13 controller];
  v4 = [v3 delegate];
  v5 = [(AKInkPageOverlayController *)self inkOverlayView];
  v6 = [v5 drawingGestureRecognizer];

  v7 = [v6 view];

  if (v7)
  {
    v8 = [v6 view];
    [v8 removeGestureRecognizer:v6];
  }

  v9 = [(AKInkPageOverlayController *)self inkOverlayView];
  v10 = [v9 pinchGestureRecognizer];

  v11 = [v10 view];

  if (v11)
  {
    v12 = [v10 view];
    [v12 removeGestureRecognizer:v10];
  }

  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      if (v3 && v13 && v6)
      {
        [v4 installDrawingGestureRecognizer:v6 forPageAtIndex:objc_msgSend(v13 forAnnotationController:{"pageIndex"), v3}];
      }
    }

    else
    {
      NSLog(&cfstr_ThisClientIsMi.isa);
    }

    [(AKInkPageOverlayController *)self _updateGestureDependencyPriority];
  }
}

- (void)_updateGestureDependencyPriority
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = [(AKInkPageOverlayController *)self pageController];
  v4 = [v3 controller];
  v5 = [v4 mainEventHandler];
  v6 = [(AKInkPageOverlayController *)self inkOverlayView];
  v7 = [v6 canvasView];
  v8 = [v7 _selectionInteraction];
  [v8 setDelegate:v5];

  v9 = [v4 delegate];
  v10 = [(AKInkPageOverlayController *)self inkOverlayView];
  v11 = [v10 drawingGestureRecognizer];

  if (v4 && v3 && v11)
  {
    v12 = [v4 modelController];
    v13 = [v12 allSelectedAnnotations];
    v14 = [v13 count] == 0;

    v15 = [v4 toolController];
    if (([v15 allInkEnabled] & 1) == 0 && !objc_msgSend(v15, "pencilInkEnabled"))
    {
      v14 = 0;
    }

    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 updateDrawingGestureRecognizer:v11 forPageAtIndex:objc_msgSend(v3 withPriority:"pageIndex") forAnnotationController:{v14, v4}];
      if (v14)
      {
        v16 = [(AKInkPageOverlayController *)self inkOverlayView];
        v17 = [v16 canvasView];
        v18 = [v17 _tiledView];
        v19 = [v18 allowsFingerDrawing];

        if ((v19 & 1) == 0)
        {
          v32 = v14;
          v20 = [v4 tapGestureRecognizer];
          v40[0] = v20;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v34;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v34 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v33 + 1) + 8 * i);
                [v11 removeFailureRequirement:v27];
                [v27 requireGestureRecognizerToFail:v11];
              }

              v24 = [v22 countByEnumeratingWithState:&v33 objects:v39 count:16];
            }

            while (v24);
          }

          v14 = v32;
        }
      }
    }

    else
    {
      NSLog(&cfstr_ThisClientIsMi_0.isa);
    }

    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = AKControllerDrawingGestureRecognizerNeedsDependencyUpdate;
    v37[0] = @"drawingGestureRecognizer";
    v37[1] = @"highPriority";
    v38[0] = v11;
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v38[1] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v28 postNotificationName:v29 object:v4 userInfo:v31];
  }
}

- (void)_tearDownGestureDependencies
{
  v7 = [(AKInkPageOverlayController *)self pageController];
  v3 = [v7 controller];
  v4 = [v3 delegate];
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AKInkPageOverlayController *)self inkOverlayView];
      v6 = [v5 drawingGestureRecognizer];

      if (v3 && v7 && v6)
      {
        [v4 uninstallDrawingGestureRecognizer:v6 forPageAtIndex:objc_msgSend(v7 forAnnotationController:{"pageIndex"), v3}];
      }
    }

    else
    {
      NSLog(&cfstr_ThisClientIsMi_1.isa);
    }
  }
}

- (CGSize)scaleFromDrawingInCanvasView:(id)a3 toPageControllerModelSpace:(id)a4
{
  [(AKInkPageOverlayController *)self _convertRect:a3 fromDrawingInCanvasView:a4 toPageControllerModelSpace:0.0, 0.0, 1.0, 1.0];
  v5 = v4;
  v7 = v6;
  result.height = v7;
  result.width = v5;
  return result;
}

- (CGRect)_convertRect:(CGRect)a3 fromDrawingInCanvasView:(id)a4 toPageControllerModelSpace:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = a5;
  memset(&v37[1], 0, sizeof(CGAffineTransform));
  if (v10)
  {
    [v10 drawingTransform];
  }

  v37[0] = v37[1];
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v39 = CGRectApplyAffineTransform(v38, v37);
  v12 = v39.origin.x;
  v13 = v39.origin.y;
  v14 = v39.size.width;
  v15 = v39.size.height;
  v16 = [v11 overlayView];
  [v10 convertRect:v16 toView:{v12, v13, v14, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v11 convertRectFromOverlayToModel:{v18, v20, v22, v24}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)_convertCHDrawing:(id)a3 fromDrawingInCanvasView:(id)a4 toInkOverlayView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CFEE38]);
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *(MEMORY[0x277CBF2C0] + 32);
  if (v8)
  {
    v26 = *(MEMORY[0x277CBF2C0] + 16);
    v27 = *MEMORY[0x277CBF2C0];
    v25 = *(MEMORY[0x277CBF2C0] + 32);
    [v8 drawingTransform];
    v13 = v25;
    v12 = v26;
    v11 = v27;
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  *&t1.a = v11;
  *&t1.c = v12;
  *&t1.tx = v13;
  CGAffineTransformConcat(&v30, &t1, &t2);
  a = v30.a;
  b = v30.b;
  c = v30.c;
  d = v30.d;
  tx = v30.tx;
  ty = v30.ty;
  if ([v7 strokeCount])
  {
    v20 = 0;
    do
    {
      if ([v7 pointCountForStrokeIndex:v20])
      {
        v21 = 0;
        do
        {
          [v7 pointForStrokeIndex:v20 pointIndex:v21];
          [v8 convertPoint:v9 toView:{tx + c * v22 + a * v23, ty + d * v22 + b * v23}];
          [v10 addPoint:?];
          ++v21;
        }

        while (v21 < [v7 pointCountForStrokeIndex:v20]);
      }

      [v10 endStroke];
      ++v20;
    }

    while (v20 < [v7 strokeCount]);
  }

  return v10;
}

- (AKPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

- (PKRulerHostingDelegate)rulerHostingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostingDelegate);

  return WeakRetained;
}

@end