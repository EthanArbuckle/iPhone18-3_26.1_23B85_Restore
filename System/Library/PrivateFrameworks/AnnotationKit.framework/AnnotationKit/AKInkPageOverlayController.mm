@interface AKInkPageOverlayController
- (AKInkPageOverlayController)initWithPageController:(id)controller;
- (AKPageController)pageController;
- (BOOL)inputViewCanBeginDrawing:(id)drawing withTouch:(id)touch;
- (BOOL)shapeDetectionController:(id)controller shouldSelectCandidateAnnotation:(id)annotation;
- (CGRect)_convertRect:(CGRect)rect fromDrawingInCanvasView:(id)view toPageControllerModelSpace:(id)space;
- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)picker;
- (CGSize)scaleFromDrawingInCanvasView:(id)view toPageControllerModelSpace:(id)space;
- (PKRulerHostingDelegate)rulerHostingDelegate;
- (id)_convertCHDrawing:(id)drawing fromDrawingInCanvasView:(id)view toInkOverlayView:(id)overlayView;
- (void)_controllerWillSave:(id)save;
- (void)_enclosingScrollViewDidScroll:(id)scroll;
- (void)_fullSetup;
- (void)_inkCanvasAnnotationUpdated:(id)updated;
- (void)_inkDidChangeNotification:(id)notification;
- (void)_partialTeardown;
- (void)_performDelayedShapeDetection;
- (void)_setupGestureDependencies;
- (void)_tearDownGestureDependencies;
- (void)_toolStatusUpdated:(id)updated;
- (void)_updateAllowedTouchTypesAllEnabled:(BOOL)enabled pencilEnabled:(BOOL)pencilEnabled;
- (void)_updateGestureDependencyPriority;
- (void)annotationEditingDidEndWithCompletion:(id)completion;
- (void)didToggleRuler;
- (void)inputView:(id)view didCollectDrawingForAnalysis:(id)analysis;
- (void)inputViewDidBeginStroke:(id)stroke;
- (void)setInkOverlayView:(id)view;
- (void)setRulerHostingDelegate:(id)delegate;
- (void)setup;
- (void)shapeDetectionControllerWillPickCandidate:(id)candidate isInk:(BOOL)ink;
- (void)teardown;
@end

@implementation AKInkPageOverlayController

- (AKInkPageOverlayController)initWithPageController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKInkPageOverlayController;
  v5 = [(AKInkPageOverlayController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKInkPageOverlayController *)v5 setPageController:controllerCopy];
  }

  return v6;
}

- (void)setup
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fullSetup object:0];
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  pageModelController = [pageController pageModelController];
  inkCanvasAnnotation = [pageModelController inkCanvasAnnotation];

  if (inkCanvasAnnotation && ([inkCanvasAnnotation drawing], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "strokes"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    [(AKInkPageOverlayController *)self _fullSetup];
  }

  else
  {
    toolController = [controller toolController];
    if (([toolController allInkEnabled] & 1) != 0 || objc_msgSend(toolController, "pencilInkEnabled"))
    {
      [(AKInkPageOverlayController *)self performSelector:sel__fullSetup withObject:0 afterDelay:0.25];
    }

    else
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v11 = off_27E39A388[0];
      pageModelController2 = [pageController pageModelController];
      [defaultCenter addObserver:self selector:sel__inkCanvasAnnotationUpdated_ name:v11 object:pageModelController2];
    }
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__toolStatusUpdated_ name:@"AKToolController.inkToolStatusUpdated" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__controllerWillSave_ name:AKControllerWillSaveNotification object:controller];
}

- (void)_fullSetup
{
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];

  if (!inkOverlayView)
  {
    pageController = [(AKInkPageOverlayController *)self pageController];
    controller = [pageController controller];
    v5 = controller;
    if (controller && ([controller isTornDown] & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v6 = [[AKShapeDetectionController alloc] initWithController:v5];
      [(AKInkPageOverlayController *)self setShapeDetectionController:v6];

      shapeDetectionController = [(AKInkPageOverlayController *)self shapeDetectionController];
      [shapeDetectionController setDelegate:self];

      shapeDetectionEnabled = [v5 shapeDetectionEnabled];
      shapeDetectionController2 = [(AKInkPageOverlayController *)self shapeDetectionController];
      [shapeDetectionController2 setShapeDetectionEnabled:shapeDetectionEnabled];

      pageModelController = [pageController pageModelController];
      shapeDetectionController3 = [(AKInkPageOverlayController *)self shapeDetectionController];
      [shapeDetectionController3 setModelControllerToObserveForAnnotationsAndSelections:pageModelController];

      overlayView = [pageController overlayView];
      [overlayView bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      inkOverlayDrawingUndoTarget = [pageController inkOverlayDrawingUndoTarget];
      v22 = [AKInkOverlayView newAKInkOverlayViewForCurrentPlatformWithPageController:pageController drawingUndoTarget:inkOverlayDrawingUndoTarget];

      [(AKInkPageOverlayController *)self setInkOverlayView:v22];
      [v22 setDelegate:self];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v22 setFrame:{v14, v16, v18, v20}];
      [overlayView addSubview:v22];
      centerXAnchor = [v22 centerXAnchor];
      centerXAnchor2 = [overlayView centerXAnchor];
      v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v25 setActive:1];

      centerYAnchor = [v22 centerYAnchor];
      centerYAnchor2 = [overlayView centerYAnchor];
      v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [v28 setActive:1];

      widthAnchor = [v22 widthAnchor];
      widthAnchor2 = [overlayView widthAnchor];
      v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v31 setActive:1];

      heightAnchor = [v22 heightAnchor];
      v50 = overlayView;
      heightAnchor2 = [overlayView heightAnchor];
      v34 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      [v34 setActive:1];

      v35 = ((2 * AKAdornmentZPositionOffset) | 1uLL);
      layer = [v22 layer];
      [layer setZPosition:v35];

      [(AKInkPageOverlayController *)self _setupGestureDependencies];
      undoController = [v5 undoController];
      undoManager = [undoController undoManager];

      isUndoRegistrationEnabled = [undoManager isUndoRegistrationEnabled];
      if (isUndoRegistrationEnabled)
      {
        [undoManager disableUndoRegistration];
      }

      pageModelController2 = [pageController pageModelController];
      inkCanvasAnnotation = [pageModelController2 inkCanvasAnnotation];

      if (inkCanvasAnnotation)
      {
        drawing = [inkCanvasAnnotation drawing];

        if (drawing)
        {
          drawing2 = [inkCanvasAnnotation drawing];
          canvasView = [v22 canvasView];
          [canvasView setDrawing:drawing2];
        }

        else
        {
          NSLog(&cfstr_TheCanvasAnnot.isa);
        }
      }

      if (isUndoRegistrationEnabled)
      {
        [undoManager enableUndoRegistration];
      }

      toolController = [v5 toolController];
      -[AKInkPageOverlayController _updateAllowedTouchTypesAllEnabled:pencilEnabled:](self, "_updateAllowedTouchTypesAllEnabled:pencilEnabled:", [toolController allInkEnabled], objc_msgSend(toolController, "pencilInkEnabled"));
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 attributeController];
      v48 = v47 = undoManager;
      [defaultCenter addObserver:self selector:sel__inkDidChangeNotification_ name:@"AKAttributeController.inkDidChange" object:v48];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__enclosingScrollViewDidScroll_ name:@"AKOverlayView.AKContentScrollViewVisibleRectChangeNotification" object:0];

      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)teardown
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fullSetup object:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AKInkPageOverlayController *)self _partialTeardown];
}

- (void)_partialTeardown
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__fullSetup object:0];
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  if (inkOverlayView)
  {
    v7 = inkOverlayView;
    canvasView = [inkOverlayView canvasView];
    [canvasView setRulerActive:0];

    [(AKInkPageOverlayController *)self _tearDownGestureDependencies];
    shapeDetectionController = [(AKInkPageOverlayController *)self shapeDetectionController];
    [shapeDetectionController setModelControllerToObserveForAnnotationsAndSelections:0];

    shapeDetectionController2 = [(AKInkPageOverlayController *)self shapeDetectionController];
    [shapeDetectionController2 dismissCandidatePicker];

    [v7 teardown];
    [v7 removeFromSuperview];
    [(AKInkPageOverlayController *)self setInkOverlayView:0];
    inkOverlayView = v7;
  }
}

- (void)annotationEditingDidEndWithCompletion:(id)completion
{
  completionCopy = completion;
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView = [inkOverlayView canvasView];

  if (canvasView)
  {
    [canvasView setRulerActive:0];
    [canvasView commitSelectionIfNecessaryWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)setInkOverlayView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_inkOverlayView, view);
  WeakRetained = objc_loadWeakRetained(&self->_rulerHostingDelegate);
  if (viewCopy && WeakRetained)
  {
    [(AKInkOverlayView *)self->_inkOverlayView setRulerHostingDelegate:WeakRetained];
  }
}

- (void)setRulerHostingDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_rulerHostingDelegate, delegateCopy);
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  [canvasView setRulerHostingDelegate:delegateCopy];
}

- (BOOL)inputViewCanBeginDrawing:(id)drawing withTouch:(id)touch
{
  v30 = *MEMORY[0x277D85DE8];
  touchCopy = touch;
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];

  if ([touchCopy type] == 2)
  {
    if (([controller pencilAlwaysDraws] & 1) == 0 && (objc_msgSend(controller, "annotationEditingEnabled") & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (![controller annotationEditingEnabled])
  {
LABEL_4:
    v8 = 0;
    goto LABEL_28;
  }

  modelController = [controller modelController];
  allSelectedAnnotations = [modelController allSelectedAnnotations];
  v11 = [allSelectedAnnotations count];

  if (!v11)
  {
    v8 = 1;
    goto LABEL_28;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  modelController2 = [controller modelController];
  allSelectedAnnotations2 = [modelController2 allSelectedAnnotations];

  v14 = [allSelectedAnnotations2 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(allSelectedAnnotations2);
        }

        if ([*(*(&v25 + 1) + 8 * i) conformsToAKTextAnnotationProtocol] && objc_msgSend(touchCopy, "type") == 2)
        {
          v8 = 0;
          goto LABEL_27;
        }
      }

      v15 = [allSelectedAnnotations2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  allSelectedAnnotations2 = [controller textEditorController];
  if ([allSelectedAnnotations2 isEditing])
  {
    textView = [allSelectedAnnotations2 textView];
    [touchCopy locationInView:textView];
    if (([textView pointInside:0 withEvent:?] & 1) == 0)
    {
      [allSelectedAnnotations2 endEditing];
LABEL_24:
      modelController3 = [controller modelController];
      [modelController3 deselectAllAnnotations];
    }
  }

  else
  {
    if ([touchCopy type] == 2)
    {
      textView = [controller modelController];
      [textView deselectAllAnnotations];
      v8 = 1;
      goto LABEL_26;
    }

    [touchCopy locationInView:0];
    v20 = v19;
    v22 = v21;
    textView = [controller mainEventHandler];
    if (([textView hitTestAnnotationsIncludingPOI:1 ignoreIfDeselected:1 atPointInWindow:0 outAnnotation:{v20, v22}] & 1) == 0)
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

- (void)inputViewDidBeginStroke:(id)stroke
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedShapeDetection object:0];
  [(AKInkPageOverlayController *)self setDelayedShapeDetectionBlock:0];
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  toolbarViewController = [controller toolbarViewController];

  if (toolbarViewController && [toolbarViewController isPresentingPopovers])
  {
    [toolbarViewController dismissPresentedPopovers];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

  controller2 = [pageController controller];
  modelController = [controller2 modelController];
  [modelController deselectAllAnnotations];
}

- (void)inputView:(id)view didCollectDrawingForAnalysis:(id)analysis
{
  viewCopy = view;
  analysisCopy = analysis;
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  canvasView = [viewCopy canvasView];
  drawing = [canvasView drawing];
  modelController = [controller modelController];
  [modelController deselectAllAnnotations];

  pageModelController = [pageController pageModelController];
  inkCanvasAnnotation = [pageModelController inkCanvasAnnotation];

  _rootStrokes = [drawing _rootStrokes];
  v15 = [_rootStrokes count];

  if (inkCanvasAnnotation)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 == 0;
  }

  v17 = !v16;
  if (inkCanvasAnnotation && !v15)
  {
    pageModelController2 = [pageController pageModelController];
    v19 = [pageModelController2 mutableArrayValueForKey:@"annotations"];

    [v19 removeObject:inkCanvasAnnotation];
    inkCanvasAnnotation = 0;
    goto LABEL_16;
  }

  if (v17)
  {
    inkCanvasAnnotation = objc_alloc_init(AKInkAnnotation2);
    [viewCopy canvasSizeInPKDrawingSpace];
    [(AKInkAnnotation *)inkCanvasAnnotation setDrawingSize:?];
    [pageController modelBaseScaleFactor];
    [(AKAnnotation *)inkCanvasAnnotation setOriginalModelBaseScaleFactor:?];
    [(AKAnnotation *)inkCanvasAnnotation setOriginalExifOrientation:1];
  }

  else if (!v15)
  {
    goto LABEL_14;
  }

  [drawing bounds];
  [(AKInkPageOverlayController *)self _convertRect:canvasView fromDrawingInCanvasView:pageController toPageControllerModelSpace:?];
  [(AKInkAnnotation *)inkCanvasAnnotation setRectangle:?];
LABEL_14:
  if (inkCanvasAnnotation)
  {
    v20 = [drawing copy];
    [(AKInkAnnotation *)inkCanvasAnnotation setDrawing:v20];

    [(AKAnnotation *)inkCanvasAnnotation setShouldUseAppearanceOverride:0];
  }

LABEL_16:
  if (v17)
  {
    pageModelController3 = [pageController pageModelController];
    [pageModelController3 setInkCanvasAnnotationOneTime:inkCanvasAnnotation];
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(AKInkPageOverlayController *)self lastStrokeEndTime];
  v24 = v23;
  [(AKInkPageOverlayController *)self setLastStrokeEndTime:Current];
  shapeDetectionController = [(AKInkPageOverlayController *)self shapeDetectionController];
  if ([shapeDetectionController shapeDetectionEnabled])
  {
    strokes = [analysisCopy strokes];
    v27 = [strokes count];

    if (v27 == 1)
    {
      v28 = Current - v24;
      if (Current - v24 > 0.5)
      {
        objc_initWeak(&location, self);
        objc_initWeak(&from, pageController);
        objc_initWeak(&v38, canvasView);
        objc_initWeak(&v37, viewCopy);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_23F43D030;
        v31[3] = &unk_278C7BC20;
        objc_copyWeak(&v33, &location);
        objc_copyWeak(&v34, &from);
        objc_copyWeak(&v35, &v38);
        objc_copyWeak(&v36, &v37);
        v32 = analysisCopy;
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

  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate penStrokeCompletedForAnnotationController:controller];
  }
}

- (void)_performDelayedShapeDetection
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedShapeDetection object:0];
  delayedShapeDetectionBlock = [(AKInkPageOverlayController *)self delayedShapeDetectionBlock];
  [(AKInkPageOverlayController *)self setDelayedShapeDetectionBlock:0];
  v3 = delayedShapeDetectionBlock;
  if (delayedShapeDetectionBlock)
  {
    (*(delayedShapeDetectionBlock + 16))(delayedShapeDetectionBlock);
    v3 = delayedShapeDetectionBlock;
  }
}

- (void)shapeDetectionControllerWillPickCandidate:(id)candidate isInk:(BOOL)ink
{
  if (!ink)
  {
    [(AKInkPageOverlayController *)self setIgnoreAnnotationAndSelectionKVO:1];
    pageController = [(AKInkPageOverlayController *)self pageController];
    controller = [pageController controller];
    [controller undo:self];

    [(AKInkPageOverlayController *)self setIgnoreAnnotationAndSelectionKVO:0];
  }
}

- (CGRect)shapeDetectionControllerPositioningRectForCandidatePicker:(id)picker
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

- (BOOL)shapeDetectionController:(id)controller shouldSelectCandidateAnnotation:(id)annotation
{
  annotationCopy = annotation;
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  selectNewlyCreatedAnnotations = [controller selectNewlyCreatedAnnotations];

  objc_opt_class();
  LOBYTE(pageController) = objc_opt_isKindOfClass();

  return selectNewlyCreatedAnnotations & (pageController ^ 1);
}

- (void)_inkDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  pageController = [(AKInkPageOverlayController *)self pageController];
  v5 = pageController;
  if (pageController)
  {
    controller = [pageController controller];
    object = [notificationCopy object];
    attributeController = [controller attributeController];

    if (object == attributeController)
    {
      attributeController2 = [controller attributeController];
      v10 = [attributeController2 ink];

      inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
      [inkOverlayView setInk:v10];
    }
  }
}

- (void)didToggleRuler
{
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  isRulerActive = [canvasView isRulerActive];
  inkOverlayView2 = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView2 = [inkOverlayView2 canvasView];
  [canvasView2 setRulerActive:isRulerActive ^ 1u];
}

- (void)_enclosingScrollViewDidScroll:(id)scroll
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  [canvasView setNeedsLayout];
}

- (void)_inkCanvasAnnotationUpdated:(id)updated
{
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];

  if (!inkOverlayView)
  {
    pageController = [(AKInkPageOverlayController *)self pageController];
    pageModelController = [pageController pageModelController];
    inkCanvasAnnotation = [pageModelController inkCanvasAnnotation];

    v7 = inkCanvasAnnotation;
    if (inkCanvasAnnotation)
    {
      drawing = [inkCanvasAnnotation drawing];
      strokes = [drawing strokes];
      v10 = [strokes count];

      v7 = inkCanvasAnnotation;
      if (v10)
      {
        [(AKInkPageOverlayController *)self _fullSetup];
        v7 = inkCanvasAnnotation;
      }
    }
  }
}

- (void)_toolStatusUpdated:(id)updated
{
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  toolController = [controller toolController];
  v6 = toolController;
  if (toolController)
  {
    if (([toolController allInkEnabled] & 1) != 0 || objc_msgSend(v6, "pencilInkEnabled"))
    {
      inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];

      if (!inkOverlayView)
      {
        [(AKInkPageOverlayController *)self _fullSetup];
      }
    }

    else
    {
      pageModelController = [pageController pageModelController];
      inkCanvasAnnotation = [pageModelController inkCanvasAnnotation];

      inkOverlayView2 = [(AKInkPageOverlayController *)self inkOverlayView];
      if (inkOverlayView2)
      {
        v11 = inkOverlayView2;
        drawing = [inkCanvasAnnotation drawing];
        strokes = [drawing strokes];
        v14 = [strokes count];

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

- (void)_controllerWillSave:(id)save
{
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  [canvasView commitSelectionIfNecessaryWithCompletion:0];
}

- (void)_updateAllowedTouchTypesAllEnabled:(BOOL)enabled pencilEnabled:(BOOL)pencilEnabled
{
  pencilEnabledCopy = pencilEnabled;
  enabledCopy = enabled;
  pageController = [(AKInkPageOverlayController *)self pageController];
  overlayView = [pageController overlayView];
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  drawingGestureRecognizer = [inkOverlayView drawingGestureRecognizer];

  superview = [overlayView superview];
  akEnclosingScrollView = [superview akEnclosingScrollView];
  v11AkEnclosingScrollView = [akEnclosingScrollView akEnclosingScrollView];
  panGestureRecognizer = [akEnclosingScrollView panGestureRecognizer];
  panGestureRecognizer2 = [v11AkEnclosingScrollView panGestureRecognizer];
  if (enabledCopy || pencilEnabledCopy)
  {
    v15 = &unk_2851BAAE8;
  }

  else
  {
    v15 = &unk_2851BAB00;
  }

  [panGestureRecognizer setAllowedTouchTypes:v15];
  [panGestureRecognizer2 setAllowedTouchTypes:v15];
  allowedTouchTypes = [drawingGestureRecognizer allowedTouchTypes];
  AKLog(@"%s %@ types: %@ on recognizer: %p scrollview recognizer: %p");
}

- (void)_setupGestureDependencies
{
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  delegate = [controller delegate];
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  drawingGestureRecognizer = [inkOverlayView drawingGestureRecognizer];

  view = [drawingGestureRecognizer view];

  if (view)
  {
    view2 = [drawingGestureRecognizer view];
    [view2 removeGestureRecognizer:drawingGestureRecognizer];
  }

  inkOverlayView2 = [(AKInkPageOverlayController *)self inkOverlayView];
  pinchGestureRecognizer = [inkOverlayView2 pinchGestureRecognizer];

  view3 = [pinchGestureRecognizer view];

  if (view3)
  {
    view4 = [pinchGestureRecognizer view];
    [view4 removeGestureRecognizer:pinchGestureRecognizer];
  }

  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      if (controller && pageController && drawingGestureRecognizer)
      {
        [delegate installDrawingGestureRecognizer:drawingGestureRecognizer forPageAtIndex:objc_msgSend(pageController forAnnotationController:{"pageIndex"), controller}];
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
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  mainEventHandler = [controller mainEventHandler];
  inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
  canvasView = [inkOverlayView canvasView];
  _selectionInteraction = [canvasView _selectionInteraction];
  [_selectionInteraction setDelegate:mainEventHandler];

  delegate = [controller delegate];
  inkOverlayView2 = [(AKInkPageOverlayController *)self inkOverlayView];
  drawingGestureRecognizer = [inkOverlayView2 drawingGestureRecognizer];

  if (controller && pageController && drawingGestureRecognizer)
  {
    modelController = [controller modelController];
    allSelectedAnnotations = [modelController allSelectedAnnotations];
    v14 = [allSelectedAnnotations count] == 0;

    toolController = [controller toolController];
    if (([toolController allInkEnabled] & 1) == 0 && !objc_msgSend(toolController, "pencilInkEnabled"))
    {
      v14 = 0;
    }

    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate updateDrawingGestureRecognizer:drawingGestureRecognizer forPageAtIndex:objc_msgSend(pageController withPriority:"pageIndex") forAnnotationController:{v14, controller}];
      if (v14)
      {
        inkOverlayView3 = [(AKInkPageOverlayController *)self inkOverlayView];
        canvasView2 = [inkOverlayView3 canvasView];
        _tiledView = [canvasView2 _tiledView];
        allowsFingerDrawing = [_tiledView allowsFingerDrawing];

        if ((allowsFingerDrawing & 1) == 0)
        {
          v32 = v14;
          tapGestureRecognizer = [controller tapGestureRecognizer];
          v40[0] = tapGestureRecognizer;
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
                [drawingGestureRecognizer removeFailureRequirement:v27];
                [v27 requireGestureRecognizerToFail:drawingGestureRecognizer];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v29 = AKControllerDrawingGestureRecognizerNeedsDependencyUpdate;
    v37[0] = @"drawingGestureRecognizer";
    v37[1] = @"highPriority";
    v38[0] = drawingGestureRecognizer;
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v38[1] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [defaultCenter postNotificationName:v29 object:controller userInfo:v31];
  }
}

- (void)_tearDownGestureDependencies
{
  pageController = [(AKInkPageOverlayController *)self pageController];
  controller = [pageController controller];
  delegate = [controller delegate];
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      inkOverlayView = [(AKInkPageOverlayController *)self inkOverlayView];
      drawingGestureRecognizer = [inkOverlayView drawingGestureRecognizer];

      if (controller && pageController && drawingGestureRecognizer)
      {
        [delegate uninstallDrawingGestureRecognizer:drawingGestureRecognizer forPageAtIndex:objc_msgSend(pageController forAnnotationController:{"pageIndex"), controller}];
      }
    }

    else
    {
      NSLog(&cfstr_ThisClientIsMi_1.isa);
    }
  }
}

- (CGSize)scaleFromDrawingInCanvasView:(id)view toPageControllerModelSpace:(id)space
{
  [(AKInkPageOverlayController *)self _convertRect:view fromDrawingInCanvasView:space toPageControllerModelSpace:0.0, 0.0, 1.0, 1.0];
  v5 = v4;
  v7 = v6;
  result.height = v7;
  result.width = v5;
  return result;
}

- (CGRect)_convertRect:(CGRect)rect fromDrawingInCanvasView:(id)view toPageControllerModelSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  spaceCopy = space;
  memset(&v37[1], 0, sizeof(CGAffineTransform));
  if (viewCopy)
  {
    [viewCopy drawingTransform];
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
  overlayView = [spaceCopy overlayView];
  [viewCopy convertRect:overlayView toView:{v12, v13, v14, v15}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [spaceCopy convertRectFromOverlayToModel:{v18, v20, v22, v24}];
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

- (id)_convertCHDrawing:(id)drawing fromDrawingInCanvasView:(id)view toInkOverlayView:(id)overlayView
{
  drawingCopy = drawing;
  viewCopy = view;
  overlayViewCopy = overlayView;
  v10 = objc_alloc_init(MEMORY[0x277CFEE38]);
  v11 = *MEMORY[0x277CBF2C0];
  v12 = *(MEMORY[0x277CBF2C0] + 16);
  v13 = *(MEMORY[0x277CBF2C0] + 32);
  if (viewCopy)
  {
    v26 = *(MEMORY[0x277CBF2C0] + 16);
    v27 = *MEMORY[0x277CBF2C0];
    v25 = *(MEMORY[0x277CBF2C0] + 32);
    [viewCopy drawingTransform];
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
  if ([drawingCopy strokeCount])
  {
    v20 = 0;
    do
    {
      if ([drawingCopy pointCountForStrokeIndex:v20])
      {
        v21 = 0;
        do
        {
          [drawingCopy pointForStrokeIndex:v20 pointIndex:v21];
          [viewCopy convertPoint:overlayViewCopy toView:{tx + c * v22 + a * v23, ty + d * v22 + b * v23}];
          [v10 addPoint:?];
          ++v21;
        }

        while (v21 < [drawingCopy pointCountForStrokeIndex:v20]);
      }

      [v10 endStroke];
      ++v20;
    }

    while (v20 < [drawingCopy strokeCount]);
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