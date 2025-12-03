@interface AKMainEventHandler
+ (id)newMainEventHandlerForCurrentPlatformWithController:(id)controller;
- (AKAnnotation)annotationToBeginEditingOnDragEnd;
- (AKController)controller;
- (AKMainEventHandler)initWithController:(id)controller;
- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)window;
- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)window withStartingPoint:(CGPoint)point;
- (BOOL)_didNotHandleEventSoDeselect;
- (BOOL)continueDragEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)continueRotateEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)enterDragEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)enterRotateEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)handleDoubleDownEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)handleRotateEvent:(id)event orRecognizer:(id)recognizer;
- (BOOL)hitTestAnnotationsIncludingPOI:(BOOL)i ignoreIfDeselected:(BOOL)deselected atPointInWindow:(CGPoint)window outAnnotation:(id *)annotation;
- (BOOL)hitTestPointsOfInterestsAtPoint:(CGPoint)point onPageController:(id)controller inAnnotations:(id)annotations event:(id)event recognizer:(id)recognizer cursorUpdateOnly:(BOOL)only;
- (BOOL)mainHandleEvent:(id)event orRecognizer:(id)recognizer;
- (CGPoint)_alignedAnnotationDragPointForPoint:(CGPoint)point withEvent:(id)event orRecognizer:(id)recognizer;
- (CGPoint)_modelPointFromPointInWindow:(CGPoint)window usingPageController:(id)controller;
- (CGPoint)firstDragPoint;
- (CGPoint)lastDragActualLocation;
- (CGPoint)lastDragActualLocationInWindow;
- (CGPoint)lastDragPoint;
- (CGPoint)leftMouseDownPoint;
- (CGPoint)modelPointFromEvent:(id)event orRecognizer:(id)recognizer onPageController:(id *)controller;
- (CGPoint)modelPointFromWindowPoint:(CGPoint)point foundOnPageController:(id *)controller;
- (CGPoint)panGestureStartPointInWindow;
- (CGPoint)windowPointFromEvent:(id)event orRecognizer:(id)recognizer;
- (id)annotationsPassingBoundingBoxHitTestsWithPoint:(CGPoint)point onPageController:(id)controller;
- (id)topmostAnnotationForBorderAndInteriorHitTestAtPoint:(CGPoint)point inAnnotations:(id)annotations onPageController:(id)controller wasOnBorder:(BOOL *)border wasOnText:(BOOL *)text;
- (void)_setCurrentPageBasedOnPageController:(id)controller;
- (void)_updateSelectionWithAnnotation:(id)annotation onPageController:(id)controller;
- (void)applyTranslationToAllSelectedAnnotations:(CGPoint)annotations;
- (void)finishTranslationOfAllSelectedAnnotations;
@end

@implementation AKMainEventHandler

+ (id)newMainEventHandlerForCurrentPlatformWithController:(id)controller
{
  controllerCopy = controller;
  v4 = [objc_alloc(objc_opt_class()) initWithController:controllerCopy];

  return v4;
}

- (AKMainEventHandler)initWithController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = AKMainEventHandler;
  v5 = [(AKMainEventHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKMainEventHandler *)v5 setController:controllerCopy];
  }

  return v6;
}

- (BOOL)mainHandleEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  controller = [(AKMainEventHandler *)self controller];
  currentPageController = [controller currentPageController];
  overlayView = [currentPageController overlayView];

  superview = [overlayView superview];
  if (!superview)
  {
    goto LABEL_22;
  }

  window = [overlayView window];
  if (!window)
  {

    goto LABEL_13;
  }

  v13 = window;
  superview2 = [overlayView superview];
  window2 = [superview2 window];

  if (!window2)
  {
LABEL_13:
    LOBYTE(superview) = 0;
    goto LABEL_22;
  }

  annotationEventHandler = [(AKMainEventHandler *)self annotationEventHandler];

  if (!annotationEventHandler)
  {
    if ([(AKMainEventHandler *)self mainEventHandlerIsInTrackingLoop])
    {
      [MEMORY[0x277CD9FF0] activate];
      [MEMORY[0x277CD9FF0] begin];
      LOBYTE(superview) = 1;
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v28 = [(AKMainEventHandler *)self continueDragEventTrackingLoopWithEvent:eventCopy orRecognizer:recognizerCopy];
      [MEMORY[0x277CD9FF0] commit];
      if (v28)
      {
        goto LABEL_22;
      }

      [(AKMainEventHandler *)self setMainEventHandlerIsInTrackingLoop:0];
      [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:0];
      [(AKMainEventHandler *)self setLeftMouseDownPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    else
    {
      if (![(AKMainEventHandler *)self mainEventHandlerIsInRotationLoop])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = [(AKMainEventHandler *)self handleRotateEvent:eventCopy orRecognizer:recognizerCopy];
        }

        else
        {
          v35 = [(AKMainEventHandler *)self handleDownEvent:eventCopy orRecognizer:recognizerCopy];
        }

        LOBYTE(superview) = v35;
        goto LABEL_22;
      }

      [MEMORY[0x277CD9FF0] activate];
      [MEMORY[0x277CD9FF0] begin];
      LOBYTE(superview) = 1;
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v29 = [(AKMainEventHandler *)self continueRotateEventTrackingLoopWithEvent:eventCopy orRecognizer:recognizerCopy];
      [MEMORY[0x277CD9FF0] commit];
      if (v29)
      {
        goto LABEL_22;
      }

      [(AKMainEventHandler *)self setMainEventHandlerIsInRotationLoop:0];
      [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:0];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v31 = *MEMORY[0x277CCA7F0];
    undoController = [controller undoController];
    undoManager = [undoController undoManager];
    [defaultCenter postNotificationName:v31 object:undoManager];

LABEL_21:
    LOBYTE(superview) = 1;
    goto LABEL_22;
  }

  [MEMORY[0x277CD9FF0] begin];
  LOBYTE(superview) = 1;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  annotationEventHandler2 = [(AKMainEventHandler *)self annotationEventHandler];
  v18 = [annotationEventHandler2 continueDraggableAreaEventTrackingLoopWithEvent:eventCopy orRecognizer:recognizerCopy];

  [MEMORY[0x277CD9FF0] commit];
  if ((v18 & 1) == 0)
  {
    annotationEventHandler3 = [(AKMainEventHandler *)self annotationEventHandler];
    annotation = [annotationEventHandler3 annotation];

    [annotation setIsDraggingHandle:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || [AKAnnotationRenderer annotationShouldAvoidRedrawDuringLiveResize:annotation])
    {
      annotationEventHandler4 = [(AKMainEventHandler *)self annotationEventHandler];
      pageController = [annotationEventHandler4 pageController];
      layerPresentationManager = [pageController layerPresentationManager];
      [layerPresentationManager forceUpdateAnnotationLayer:annotation];
    }

    [(AKMainEventHandler *)self setAnnotationEventHandler:0];
    [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *MEMORY[0x277CCA7F0];
    undoController2 = [controller undoController];
    undoManager2 = [undoController2 undoManager];
    [defaultCenter2 postNotificationName:v25 object:undoManager2];

    goto LABEL_21;
  }

LABEL_22:

  return superview;
}

- (CGPoint)modelPointFromEvent:(id)event orRecognizer:(id)recognizer onPageController:(id *)controller
{
  [(AKMainEventHandler *)self windowPointFromEvent:event orRecognizer:recognizer];

  [(AKMainEventHandler *)self modelPointFromWindowPoint:controller foundOnPageController:?];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)windowPointFromEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  if (recognizerCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    annotationEventHandler = [(AKMainEventHandler *)self annotationEventHandler];
    if (annotationEventHandler)
    {
    }

    else if (![(AKMainEventHandler *)self mainEventHandlerIsInTrackingLoop])
    {
      v11 = *MEMORY[0x277CBF348];
      v12 = *(MEMORY[0x277CBF348] + 8);
LABEL_8:
      [(AKMainEventHandler *)self panGestureStartPointInWindow];
      if (v14 != v11 || v13 != v12)
      {
        [(AKMainEventHandler *)self panGestureStartPointInWindow];
LABEL_14:
        v9 = v16;
        v10 = v17;
        goto LABEL_15;
      }

LABEL_13:
      [recognizerCopy akLocationInWindow];
      goto LABEL_14;
    }

    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    [(AKMainEventHandler *)self setPanGestureStartPointInWindow:*MEMORY[0x277CBF348], v12];
    goto LABEL_8;
  }

  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
LABEL_15:

  v18 = v9;
  v19 = v10;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)modelPointFromWindowPoint:(CGPoint)point foundOnPageController:(id *)controller
{
  y = point.y;
  x = point.x;
  v30 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  controller = [(AKMainEventHandler *)self controller];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  pageControllers = [controller pageControllers];
  v11 = [pageControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(pageControllers);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([v14 relinquishablesAreLoaded])
        {
          overlayView = [v14 overlayView];
          [overlayView convertPoint:0 fromView:{x, y}];
          v17 = v16;
          v19 = v18;
          [overlayView bounds];
          v32.x = v17;
          v32.y = v19;
          if (CGRectContainsPoint(v33, v32))
          {
            v11 = v14;
            [v11 convertPointFromOverlayToModel:{v17, v19}];
            v7 = v20;
            v8 = v21;

            goto LABEL_13;
          }
        }
      }

      v11 = [pageControllers countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (controller)
  {
    v22 = v11;
    *controller = v11;
  }

  v23 = v7;
  v24 = v8;
  result.y = v24;
  result.x = v23;
  return result;
}

- (BOOL)handleDownEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v8 = recognizerCopy;
  if (!recognizerCopy || [recognizerCopy akNumberOfTouches] <= 1)
  {
    controller = [(AKMainEventHandler *)self controller];
    toolController = [controller toolController];
    toolMode = [toolController toolMode];

    [(AKMainEventHandler *)self setAnnotationToBeginEditingOnDragEnd:0];
    v13 = 0x277CCA000uLL;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

    v86 = 0;
    [(AKMainEventHandler *)self modelPointFromEvent:eventCopy orRecognizer:v8 onPageController:&v86];
    v16 = v15;
    v18 = v17;
    v19 = v86;
    textEditorController = [controller textEditorController];
    isEditing = [textEditorController isEditing];

    if (!isEditing)
    {
      goto LABEL_18;
    }

    textEditorController2 = [controller textEditorController];
    textView = [textEditorController2 textView];

    if (v8)
    {
      [v8 locationInView:textView];
    }

    else
    {
      v24 = 1.79769313e308;
    }

    v25 = eventCopy;
    toolbarViewController2 = textView;
    v27 = [textView pointInside:0 withEvent:v24];
    v28 = v27;
    if (v8 && !v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = [v8 state] != 1;
      if (v29)
      {
        v30 = toolMode;
LABEL_15:
        textEditorController3 = [controller textEditorController];
        annotation = [textEditorController3 annotation];

        v33 = [AKTextAnnotationRenderHelper hitTestPoint:annotation againstActualTextForAnnotation:v19 onPageController:v16, v18];
        if (v29 || (toolMode = v30, v33))
        {
          if (v8)
          {
            objc_opt_class();
            eventCopy = v25;
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 state] == 3 || objc_msgSend(v8, "state") == 4 || objc_msgSend(v8, "state") == 5))
            {
              [(AKMainEventHandler *)self setPanGestureStartPointInWindow:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
            }

            goto LABEL_109;
          }

          v9 = 1;
          eventCopy = v25;
          goto LABEL_110;
        }
      }
    }

    else if (v28)
    {
      v30 = toolMode;
      v29 = 0;
      goto LABEL_15;
    }

    textEditorController4 = [controller textEditorController];
    [textEditorController4 endEditing];

    eventCopy = v25;
    v13 = 0x277CCA000;
LABEL_18:
    if (eventCopy || !v8)
    {
LABEL_51:
      if (!v19)
      {
        v9 = 0;
LABEL_111:

        goto LABEL_112;
      }

      [(AKMainEventHandler *)self _setCurrentPageBasedOnPageController:v19];
      v85 = 0;
      if ([(AKMainEventHandler *)self mainEventHandlerIsInDoodleTrackingLoop])
      {
        toolbarViewController2 = 0;
      }

      else
      {
        v43 = [(AKMainEventHandler *)self annotationsPassingBoundingBoxHitTestsWithPoint:v19 onPageController:v16, v18];
        if (![(AKMainEventHandler *)self wasSelectedByLongPressRecognizer]&& [(AKMainEventHandler *)self hitTestPointsOfInterestsAtPoint:v19 onPageController:v43 inAnnotations:eventCopy event:v8 recognizer:0 cursorUpdateOnly:v16, v18])
        {

          toolbarViewController2 = 0;
LABEL_109:
          v9 = 1;
          goto LABEL_110;
        }

        toolbarViewController2 = [(AKMainEventHandler *)self topmostAnnotationForBorderAndInteriorHitTestAtPoint:v43 inAnnotations:v19 onPageController:&v85 + 1 wasOnBorder:&v85 wasOnText:v16, v18];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!toolbarViewController2)
        {
          goto LABEL_89;
        }

        modelController = [controller modelController];
        [modelController allSelectedAnnotations];
        v45 = eventCopy;
        v46 = v19;
        v48 = v47 = toolMode;
        v49 = [v48 containsObject:toolbarViewController2];

        toolMode = v47;
        v19 = v46;
        eventCopy = v45;

        v50 = v49 ^ 1;
        v13 = 0x277CCA000;
      }

      else
      {
        v50 = 0;
        if (!toolbarViewController2)
        {
          goto LABEL_89;
        }
      }

      if (v50)
      {
LABEL_89:
        if ((toolMode - 1) > 1)
        {
          if (v8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v8 akLocationInWindow];
              if ([(AKMainEventHandler *)self _detectFormElementInCurrentPageControllerUnderPointInWindow:?])
              {
                goto LABEL_109;
              }
            }
          }
        }

        else if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            modelController2 = [controller modelController];
            [modelController2 deselectAllAnnotations];

            [controller hideSelectionMenu:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              legacyDoodleController = [controller legacyDoodleController];
              [legacyDoodleController handleDragAction:v8];

              if (([v8 state] - 3) <= 2)
              {
                [(AKMainEventHandler *)self setMainEventHandlerIsInDoodleTrackingLoop:0];
              }
            }

            [(AKMainEventHandler *)self setLeftMouseDownPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
            defaultCenter2 = [*(v13 + 2968) defaultCenter];
            v75 = *MEMORY[0x277CCA7F0];
            undoController = [controller undoController];
            undoManager = [undoController undoManager];
            [defaultCenter2 postNotificationName:v75 object:undoManager];

            goto LABEL_109;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            modelController3 = [controller modelController];
            allSelectedAnnotations = [modelController3 allSelectedAnnotations];

            toolbarViewController = [controller toolbarViewController];
            if ([toolbarViewController isPresentingPopovers])
            {
              [toolbarViewController dismissPresentedPopovers];
LABEL_108:

              goto LABEL_109;
            }

            if (![allSelectedAnnotations count])
            {
              legacyDoodleController2 = [controller legacyDoodleController];
              [legacyDoodleController2 handleTapAction:v8];

              goto LABEL_108;
            }
          }
        }

        _didNotHandleEventSoDeselect = [(AKMainEventHandler *)self _didNotHandleEventSoDeselect];
        goto LABEL_106;
      }

      v84 = toolMode;
      if (v85 == 1)
      {
        pageModelController = [v19 pageModelController];
        selectedAnnotations = [pageModelController selectedAnnotations];
        v53 = [selectedAnnotations containsObject:toolbarViewController2];

        if (v53)
        {
          pageModelController2 = [v19 pageModelController];
          v55 = [pageModelController2 mutableSetValueForKey:@"selectedAnnotations"];

          v56 = [MEMORY[0x277CBEB98] setWithObject:toolbarViewController2];
          [v55 setSet:v56];

          [(AKMainEventHandler *)self setAnnotationToBeginEditingOnDragEnd:toolbarViewController2];
        }

        else
        {
          v57 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:toolbarViewController2];
          v55 = v57;
          if (!v57 || ![v57 length])
          {
            LOBYTE(v85) = 0;
          }
        }
      }

      pageModelController3 = [v19 pageModelController];
      selectedAnnotations2 = [pageModelController3 selectedAnnotations];
      v83 = [selectedAnnotations2 containsObject:toolbarViewController2];

      v60 = objc_opt_respondsToSelector();
      if (v60)
      {
        strokeColor = [toolbarViewController2 strokeColor];
        cGColor = [strokeColor CGColor];

        Alpha = CGColorGetAlpha(cGColor);
        v64 = Alpha > 0.0;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v65 = Alpha <= 0.0;
          v66 = 1;
LABEL_77:
          v13 = 0x277CCA000;
          goto LABEL_81;
        }
      }

      else
      {
        v64 = 1;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v70 = 0;
          v66 = 1;
          goto LABEL_80;
        }
      }

      fillColor = [toolbarViewController2 fillColor];
      cGColor2 = [fillColor CGColor];

      v69 = CGColorGetAlpha(cGColor2);
      v66 = v69 > 0.0;
      if (v60)
      {
        v65 = (v69 <= 0.0) & ~v64;
        goto LABEL_77;
      }

      v70 = 1;
LABEL_80:
      v13 = 0x277CCA000uLL;
      v65 = v70 & !v66;
LABEL_81:
      toolMode = v84;
      if (v85)
      {
        goto LABEL_82;
      }

      if (HIBYTE(v85) == 1)
      {
        if (((v64 | v65) & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (((v66 | v65 | v83) & 1) == 0)
      {
        goto LABEL_89;
      }

LABEL_82:
      [(AKMainEventHandler *)self _updateSelectionWithAnnotation:toolbarViewController2 onPageController:v19];
      if ([(AKMainEventHandler *)self enterDragEventTrackingLoopWithEvent:eventCopy orRecognizer:v8])
      {
        v9 = 1;
        [(AKMainEventHandler *)self setMainEventHandlerIsInTrackingLoop:1];
        [controller hideSelectionMenu:0];
      }

      else
      {
        v71 = [AKAnnotationEventHandler newAnnotationEventHandlerForCurrentPlatformForAnnotation:toolbarViewController2 withPageController:v19];
        v9 = [v71 handleDownEvent:eventCopy orRecognizer:v8];
      }

      goto LABEL_110;
    }

    toolbarViewController2 = [controller toolbarViewController];
    if ([toolbarViewController2 isPresentingPopovers])
    {
      [toolbarViewController2 dismissPresentedPopovers];
    }

    if ([v8 conformsToProtocol:&unk_2851DEBB8])
    {
      [v8 penGestureDetected];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:0];
      if ([v8 akNumberOfTapsRequired] == 2)
      {
        _didNotHandleEventSoDeselect = [(AKMainEventHandler *)self handleDoubleDownEvent:0 orRecognizer:v8];
LABEL_106:
        v9 = _didNotHandleEventSoDeselect;
        goto LABEL_110;
      }

      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setEnabled:0];
      [v8 setEnabled:1];
      if (![(AKMainEventHandler *)self mainEventHandlerIsInTrackingLoop]&& ![(AKMainEventHandler *)self mainEventHandlerIsInRotationLoop])
      {
        [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:1];
      }

      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      state = [v8 state];
      if (state == 2)
      {
        if ([(AKMainEventHandler *)self mainEventHandlerIsInTrackingLoop]|| (toolMode - 3) < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_50;
        }

        selfCopy2 = self;
        v38 = 1;
      }

      else
      {
        if (state == 1)
        {
          if ((toolMode - 1) <= 1)
          {
            modelController4 = [controller modelController];
            [modelController4 allSelectedAnnotations];
            v40 = v19;
            v42 = v41 = toolMode;
            -[AKMainEventHandler setMainEventHandlerIsInDoodleTrackingLoop:](self, "setMainEventHandlerIsInDoodleTrackingLoop:", [v42 count] == 0);

            toolMode = v41;
            v19 = v40;
            eventCopy = 0;
          }

          goto LABEL_50;
        }

        if (state)
        {
LABEL_50:

          goto LABEL_51;
        }

        selfCopy2 = self;
        v38 = 0;
      }

      [(AKMainEventHandler *)selfCopy2 setMainEventHandlerIsInDoodleTrackingLoop:v38];
      goto LABEL_50;
    }

    v9 = 0;
LABEL_110:

    goto LABEL_111;
  }

  v9 = 0;
LABEL_112:

  return v9;
}

- (BOOL)handleDoubleDownEvent:(id)event orRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  eventCopy = event;
  controller = [(AKMainEventHandler *)self controller];
  v22 = 0;
  [(AKMainEventHandler *)self modelPointFromEvent:eventCopy orRecognizer:recognizerCopy onPageController:&v22];
  v10 = v9;
  v12 = v11;

  v13 = v22;
  if (v13)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

    if (![recognizerCopy conformsToProtocol:&unk_2851DEBB8] || (objc_msgSend(recognizerCopy, "penGestureDetected") & 1) == 0)
    {
      [(AKMainEventHandler *)self _setCurrentPageBasedOnPageController:v13];
      v15 = [(AKMainEventHandler *)self annotationsPassingBoundingBoxHitTestsWithPoint:v13 onPageController:v10, v12];
      v21 = 0;
      v16 = [(AKMainEventHandler *)self topmostAnnotationForBorderAndInteriorHitTestAtPoint:v15 inAnnotations:v13 onPageController:&v21 + 1 wasOnBorder:&v21 wasOnText:v10, v12];
      v17 = v16;
      if (v16 && [v16 conformsToAKTextAnnotationProtocol] && (objc_msgSend(v17, "editingDisabled") & 1) == 0)
      {
        textEditorController = [controller textEditorController];
        [textEditorController beginEditingAnnotation:v17 withPageController:v13 selectAllText:0];

        _didNotHandleEventSoDeselect = 1;
        goto LABEL_10;
      }
    }

    _didNotHandleEventSoDeselect = [(AKMainEventHandler *)self _didNotHandleEventSoDeselect];
  }

  else
  {
    _didNotHandleEventSoDeselect = 0;
  }

LABEL_10:

  return _didNotHandleEventSoDeselect;
}

- (BOOL)handleRotateEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  controller = [(AKMainEventHandler *)self controller];
  v12 = 0;
  [(AKMainEventHandler *)self modelPointFromEvent:eventCopy orRecognizer:recognizerCopy onPageController:&v12];
  if (v12 && ([controller textEditorController], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "endEditing"), v9, -[AKMainEventHandler enterRotateEventTrackingLoopWithEvent:orRecognizer:](self, "enterRotateEventTrackingLoopWithEvent:orRecognizer:", eventCopy, recognizerCopy)))
  {
    v10 = 1;
    [(AKMainEventHandler *)self setMainEventHandlerIsInRotationLoop:1];
    [controller hideSelectionMenu:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)enterDragEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer
{
  v66 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  recognizerCopy = recognizer;
  if (recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v56 = 0;
  }

  else
  {
    [(AKMainEventHandler *)self windowPointFromEvent:eventCopy orRecognizer:recognizerCopy];
    v9 = v8;
    v11 = v10;
    v64 = 0;
    [(AKMainEventHandler *)self modelPointFromWindowPoint:&v64 foundOnPageController:?];
    v58 = v12;
    v14 = v13;
    v15 = v64;
    if (v15)
    {
      [(AKMainEventHandler *)self setDraggedAnnotationsMaxLeftEdge:2.22507386e-308];
      [(AKMainEventHandler *)self setDraggedAnnotationsMinRightEdge:1.79769313e308];
      [(AKMainEventHandler *)self setDraggedAnnotationsMaxBottomEdge:2.22507386e-308];
      [(AKMainEventHandler *)self setDraggedAnnotationsMinTopEdge:1.79769313e308];
      v59 = v15;
      pageModelController = [v15 pageModelController];
      selectedAnnotations = [pageModelController selectedAnnotations];

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v18 = selectedAnnotations;
      v19 = [v18 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v61;
LABEL_6:
        v22 = 0;
        while (1)
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v60 + 1) + 8 * v22);
          if (![AKAnnotationEventHandler allowsDraggingOfAnnotation:v23])
          {

            v56 = 0;
            v15 = v59;
            goto LABEL_37;
          }

          if (([recognizerCopy modifierFlags] & 0x80000) != 0)
          {
            controller = [(AKMainEventHandler *)self controller];
            [controller duplicate:0];
          }

          if ([v23 conformsToAKRectangularAnnotationProtocol])
          {
            [v23 rectangle];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v23 startPoint];
              v30 = v29;
              v32 = v31;
              [v23 endPoint];
              if (v30 >= v33)
              {
                v35 = v33;
              }

              else
              {
                v35 = v30;
              }

              if (v32 >= v34)
              {
                v36 = v34;
              }

              else
              {
                v36 = v32;
              }

              v37 = vabdd_f64(v33, v30);
              v38 = vabdd_f64(v34, v32);
              goto LABEL_24;
            }

            [v23 hitTestBounds];
          }

          v35 = v25;
          v36 = v26;
          v37 = v27;
          v38 = v28;
LABEL_24:
          [(AKMainEventHandler *)self draggedAnnotationsMaxLeftEdge];
          v40 = v39;
          v67.origin.x = v35;
          v67.origin.y = v36;
          v67.size.width = v37;
          v67.size.height = v38;
          MinX = CGRectGetMinX(v67);
          if (v40 >= MinX)
          {
            MinX = v40;
          }

          [(AKMainEventHandler *)self setDraggedAnnotationsMaxLeftEdge:MinX];
          [(AKMainEventHandler *)self draggedAnnotationsMinRightEdge];
          v43 = v42;
          v68.origin.x = v35;
          v68.origin.y = v36;
          v68.size.width = v37;
          v68.size.height = v38;
          MaxX = CGRectGetMaxX(v68);
          if (v43 < MaxX)
          {
            MaxX = v43;
          }

          [(AKMainEventHandler *)self setDraggedAnnotationsMinRightEdge:MaxX];
          [(AKMainEventHandler *)self draggedAnnotationsMaxBottomEdge];
          v46 = v45;
          v69.origin.x = v35;
          v69.origin.y = v36;
          v69.size.width = v37;
          v69.size.height = v38;
          MinY = CGRectGetMinY(v69);
          if (v46 >= MinY)
          {
            MinY = v46;
          }

          [(AKMainEventHandler *)self setDraggedAnnotationsMaxBottomEdge:MinY];
          [(AKMainEventHandler *)self draggedAnnotationsMinTopEdge];
          v49 = v48;
          v70.origin.x = v35;
          v70.origin.y = v36;
          v70.size.width = v37;
          v70.size.height = v38;
          MaxY = CGRectGetMaxY(v70);
          if (v49 < MaxY)
          {
            MaxY = v49;
          }

          [(AKMainEventHandler *)self setDraggedAnnotationsMinTopEdge:MaxY];
          if (v20 == ++v22)
          {
            v20 = [v18 countByEnumeratingWithState:&v60 objects:v65 count:16];
            if (v20)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      v15 = v59;
      [(AKMainEventHandler *)self setDragPageController:v59];
      v51 = [[AKAlignmentGuideController alloc] initWithPageController:v59];
      [(AKMainEventHandler *)self setDragAlignmentGuideController:v51];

      [(AKMainEventHandler *)self _alignedAnnotationDragPointForPoint:eventCopy withEvent:recognizerCopy orRecognizer:v58, v14];
      v53 = v52;
      v55 = v54;
      [(AKMainEventHandler *)self setFirstDragPoint:?];
      [(AKMainEventHandler *)self setLastDragPoint:v53, v55];
      [(AKMainEventHandler *)self setLastDragActualLocationInWindow:v9, v11];
      [(AKMainEventHandler *)self setLastEventWithValidLocationForAutoscroll:eventCopy];
      v56 = 1;
LABEL_37:
    }

    else
    {
      v56 = 0;
    }
  }

  return v56;
}

- (BOOL)continueDragEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  v8 = eventCopy;
  if (!recognizerCopy)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = [recognizerCopy state] != 3 && objc_msgSend(recognizerCopy, "state") != 4 && objc_msgSend(recognizerCopy, "state") != 5;
  [(AKMainEventHandler *)self lastDragPoint];
  v78 = v11;
  v79 = v10;
  [(AKMainEventHandler *)self windowPointFromEvent:v8 orRecognizer:recognizerCopy];
  v13 = v12;
  v15 = v14;
  [(AKMainEventHandler *)self setLastDragActualLocationInWindow:?];
  [(AKMainEventHandler *)self setLastEventWithValidLocationForAutoscroll:v8];
  dragPageController = [(AKMainEventHandler *)self dragPageController];
  [(AKMainEventHandler *)self _modelPointFromPointInWindow:dragPageController usingPageController:v13, v15];
  v76 = v17;
  v77 = v18;

  dragPageController2 = [(AKMainEventHandler *)self dragPageController];
  [dragPageController2 visibleRectOfOverlay];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  dragPageController3 = [(AKMainEventHandler *)self dragPageController];
  overlayView = [dragPageController3 overlayView];
  [AKGeometryHelper convertRect:overlayView fromScreenPointsToView:0.0, 0.0, 12.0, 12.0];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  dragPageController4 = [(AKMainEventHandler *)self dragPageController];
  [dragPageController4 convertRectFromOverlayToModel:{v31, v33, v35, v37}];
  v40 = v39;
  v42 = v41;

  v80.origin.x = v21;
  v80.origin.y = v23;
  v80.size.width = v25;
  v80.size.height = v27;
  v81 = CGRectInset(v80, v40, v42);
  x = v81.origin.x;
  y = v81.origin.y;
  width = v81.size.width;
  height = v81.size.height;
  MaxX = CGRectGetMaxX(v81);
  [(AKMainEventHandler *)self firstDragPoint];
  v49 = v48;
  [(AKMainEventHandler *)self draggedAnnotationsMaxLeftEdge];
  v51 = MaxX + v49 - v50;
  if (v76 >= v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = v76;
  }

  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  MinX = CGRectGetMinX(v82);
  [(AKMainEventHandler *)self draggedAnnotationsMinRightEdge];
  v55 = v54;
  [(AKMainEventHandler *)self firstDragPoint];
  v57 = MinX - (v55 - v56);
  if (v52 >= v57)
  {
    v58 = v52;
  }

  else
  {
    v58 = v57;
  }

  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = height;
  MaxY = CGRectGetMaxY(v83);
  [(AKMainEventHandler *)self firstDragPoint];
  v61 = v60;
  [(AKMainEventHandler *)self draggedAnnotationsMaxBottomEdge];
  v63 = MaxY + v61 - v62;
  if (v77 >= v63)
  {
    v64 = v63;
  }

  else
  {
    v64 = v77;
  }

  v84.origin.x = x;
  v84.origin.y = y;
  v84.size.width = width;
  v84.size.height = height;
  MinY = CGRectGetMinY(v84);
  [(AKMainEventHandler *)self draggedAnnotationsMinTopEdge];
  v67 = v66;
  [(AKMainEventHandler *)self firstDragPoint];
  if (v64 >= MinY - (v67 - v68))
  {
    v69 = v64;
  }

  else
  {
    v69 = MinY - (v67 - v68);
  }

  [(AKMainEventHandler *)self _alignedAnnotationDragPointForPoint:v8 withEvent:recognizerCopy orRecognizer:v58, v69, *&v76];
  v71 = v70;
  v73 = v72;
  [(AKMainEventHandler *)self setLastDragActualLocation:?];
  [(AKMainEventHandler *)self setLastDragPoint:v79 + v71 - v79, v78 + v73 - v78];
  if (vabdd_f64(v71, v79) >= 0.0005 || vabdd_f64(v73, v78) >= 0.0005)
  {
    [(AKMainEventHandler *)self applyTranslationToAllSelectedAnnotations:v71 - v79, v73 - v78];
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_24:
    [(AKMainEventHandler *)self finishTranslationOfAllSelectedAnnotations];
    [(AKMainEventHandler *)self setLastEventWithValidLocationForAutoscroll:0];
    v74 = 0;
    goto LABEL_25;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_22:
  v74 = 1;
LABEL_25:

  return v74;
}

- (BOOL)enterRotateEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer
{
  eventCopy = event;
  recognizerCopy = recognizer;
  if (recognizerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    controller = [(AKMainEventHandler *)self controller];
    currentPageController = [controller currentPageController];
    pageModelController = [currentPageController pageModelController];
    selectedAnnotations = [pageModelController selectedAnnotations];

    v12 = [selectedAnnotations count] != 0;
  }

  return v12;
}

- (BOOL)continueRotateEventTrackingLoopWithEvent:(id)event orRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(AKMainEventHandler *)self applyToAllSelectedAnnotationsRotateEvent:event orRecognizer:recognizerCopy];
  v7 = !recognizerCopy || [recognizerCopy state] != 3 && objc_msgSend(recognizerCopy, "state") != 4;

  return v7;
}

- (id)annotationsPassingBoundingBoxHitTestsWithPoint:(CGPoint)point onPageController:(id)controller
{
  y = point.y;
  x = point.x;
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  [controllerCopy currentModelToScreenScaleFactor];
  [AKAnnotationPointOfInterestHelper draggableAreaScaleFactorForScaleFactor:?];
  v9 = v8;
  v10 = *&AKPointOfInterestSize_LargestHandleSize;
  pageModelController = [controllerCopy pageModelController];
  annotations = [pageModelController annotations];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  reverseObjectEnumerator = [annotations reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = -1.0 / v9 * v10;
    v17 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        if (([v19 editingDisabled] & 1) == 0)
        {
          [v19 hitTestBounds];
          v32 = CGRectInset(v31, v16, v16);
          v30.x = x;
          v30.y = y;
          if (CGRectContainsPoint(v32, v30))
          {
            [orderedSet addObject:v19];
          }
        }
      }

      v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  reversedOrderedSet = [orderedSet reversedOrderedSet];
  array = [reversedOrderedSet array];

  return array;
}

- (id)topmostAnnotationForBorderAndInteriorHitTestAtPoint:(CGPoint)point inAnnotations:(id)annotations onPageController:(id)controller wasOnBorder:(BOOL *)border wasOnText:(BOOL *)text
{
  y = point.y;
  x = point.x;
  v31 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  controllerCopy = controller;
  *border = 0;
  *text = 0;
  [controllerCopy currentModelToScreenScaleFactor];
  v15 = v14;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  reverseObjectEnumerator = [annotationsCopy reverseObjectEnumerator];
  v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v25 = annotationsCopy;
    v19 = *v27;
    v20 = 20.0 / v15;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v22 = *(*(&v26 + 1) + 8 * i);
        if (([v22 editingDisabled] & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v22 showHandles])
          {
            if ([v22 conformsToAKTextAnnotationProtocol])
            {
              v23 = v22;
              if ([AKTextAnnotationRenderHelper hitTestPoint:v23 againstActualTextForAnnotation:controllerCopy onPageController:x, y])
              {
                *text = 1;
                goto LABEL_22;
              }
            }

            if ([AKAnnotationRenderer pointIsOnBorder:v22 ofAnnotation:x minimumBorderThickness:y, v20])
            {
              *border = 1;
LABEL_20:
              v23 = v22;
              goto LABEL_22;
            }

            if ([AKAnnotationRenderer pointIsOnInside:v22 ofAnnotation:x, y])
            {
              *border = 0;
              goto LABEL_20;
            }
          }
        }
      }

      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_22:
    annotationsCopy = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)hitTestPointsOfInterestsAtPoint:(CGPoint)point onPageController:(id)controller inAnnotations:(id)annotations event:(id)event recognizer:(id)recognizer cursorUpdateOnly:(BOOL)only
{
  y = point.y;
  x = point.x;
  v48 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  annotationsCopy = annotations;
  eventCopy = event;
  recognizerCopy = recognizer;
  pageModelController = [controllerCopy pageModelController];
  selectedAnnotations = [pageModelController selectedAnnotations];

  [controllerCopy currentModelToScreenScaleFactor];
  v21 = v20;
  v22 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:annotationsCopy];
  [v22 intersectSet:selectedAnnotations];
  pageModelController2 = [controllerCopy pageModelController];
  cropAnnotation = [pageModelController2 cropAnnotation];

  if (cropAnnotation)
  {
    [v22 insertObject:cropAnnotation atIndex:0];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  reverseObjectEnumerator = [v22 reverseObjectEnumerator];
  v26 = [reverseObjectEnumerator countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v26)
  {
    LOBYTE(v33) = 0;
    goto LABEL_26;
  }

  v27 = v26;
  v39 = v22;
  v40 = selectedAnnotations;
  *&v41 = recognizerCopy;
  *(&v41 + 1) = eventCopy;
  v42 = annotationsCopy;
  v28 = *v44;
LABEL_5:
  v29 = 0;
  while (1)
  {
    if (*v44 != v28)
    {
      objc_enumerationMutation(reverseObjectEnumerator);
    }

    v30 = *(*(&v43 + 1) + 8 * v29);
    if (([v30 editingDisabled] & 1) == 0 && (v30 != cropAnnotation || objc_msgSend(cropAnnotation, "showHandles")))
    {
      break;
    }

LABEL_14:
    if (v27 == ++v29)
    {
      v27 = [reverseObjectEnumerator countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_16:
      LOBYTE(v33) = 0;
      annotationsCopy = v42;
      recognizerCopy = v41;
      goto LABEL_25;
    }
  }

  v31 = [AKAnnotationPointOfInterestHelper draggableAreaForPoint:v30 onAnnotation:controllerCopy withScale:x pageControllerForPixelAlignment:y, v21];
  v32 = v31;
  if (!v31 || only)
  {
    if (v31)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  recognizerCopy = v41;
  annotationsCopy = v42;
  if (v41 == 0)
  {
    LOBYTE(v33) = 1;
  }

  else
  {
    v34 = [AKAnnotationEventHandler newAnnotationEventHandlerForCurrentPlatformForAnnotation:v30 withPageController:controllerCopy];
    [v34 setInitiallyDraggedArea:v32];
    v33 = [v34 enterDraggableAreaEventTrackingLoopWithEvent:eventCopy orRecognizer:v41];
    if (v33)
    {
      controller = [(AKMainEventHandler *)self controller];
      [(AKMainEventHandler *)self setAnnotationEventHandler:v34];
      if (v30 == cropAnnotation)
      {
        modelController = [controller modelController];
        [modelController deselectAllAnnotations];
      }

      [controller hideSelectionMenu:0];
      [v30 setIsDraggingHandle:1];
    }
  }

LABEL_25:
  v22 = v39;
  selectedAnnotations = v40;
LABEL_26:

  return v33;
}

- (BOOL)hitTestAnnotationsIncludingPOI:(BOOL)i ignoreIfDeselected:(BOOL)deselected atPointInWindow:(CGPoint)window outAnnotation:(id *)annotation
{
  deselectedCopy = deselected;
  iCopy = i;
  v25 = 0;
  [(AKMainEventHandler *)self modelPointFromWindowPoint:&v25 foundOnPageController:window.x, window.y];
  v11 = v10;
  v13 = v12;
  v14 = v25;
  v15 = [(AKMainEventHandler *)self annotationsPassingBoundingBoxHitTestsWithPoint:v14 onPageController:v11, v13];
  if (iCopy && [(AKMainEventHandler *)self hitTestPointsOfInterestsAtPoint:v14 onPageController:v15 inAnnotations:0 event:0 recognizer:0 cursorUpdateOnly:v11, v13])
  {
    v16 = 1;
  }

  else
  {
    v24 = 0;
    v17 = [(AKMainEventHandler *)self topmostAnnotationForBorderAndInteriorHitTestAtPoint:v15 inAnnotations:v14 onPageController:&v24 + 1 wasOnBorder:&v24 wasOnText:v11, v13];
    v18 = v17;
    v16 = v17 != 0;
    if (deselectedCopy && v17 && ([v14 pageModelController], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "selectedAnnotations"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsObject:", v18), v20, v19, (v21 & 1) == 0))
    {

      v16 = 0;
      v18 = 0;
    }

    else if (annotation && v18)
    {
      v22 = v18;
      *annotation = v18;
      v16 = 1;
    }
  }

  return v16;
}

- (void)applyTranslationToAllSelectedAnnotations:(CGPoint)annotations
{
  y = annotations.y;
  x = annotations.x;
  v20 = *MEMORY[0x277D85DE8];
  if (annotations.x != *MEMORY[0x277CBF348] || annotations.y != *(MEMORY[0x277CBF348] + 8))
  {
    controller = [(AKMainEventHandler *)self controller];
    currentPageController = [controller currentPageController];
    pageModelController = [currentPageController pageModelController];
    selectedAnnotations = [pageModelController selectedAnnotations];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = selectedAnnotations;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v15 + 1) + 8 * i) translateBy:{x, y, v15}];
        }

        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)finishTranslationOfAllSelectedAnnotations
{
  v18 = *MEMORY[0x277D85DE8];
  controller = [(AKMainEventHandler *)self controller];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];
  selectedAnnotations = [pageModelController selectedAnnotations];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = selectedAnnotations;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          layerPresentationManager = [currentPageController layerPresentationManager];
          [layerPresentationManager forceUpdateAnnotationLayer:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (CGPoint)_modelPointFromPointInWindow:(CGPoint)window usingPageController:(id)controller
{
  y = window.y;
  x = window.x;
  controllerCopy = controller;
  overlayView = [controllerCopy overlayView];
  [overlayView convertPoint:0 fromView:{x, y}];
  [controllerCopy convertPointFromOverlayToModel:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_setCurrentPageBasedOnPageController:(id)controller
{
  controllerCopy = controller;
  controller = [(AKMainEventHandler *)self controller];
  pageIndex = [controllerCopy pageIndex];

  [controller setCurrentPageIndex:pageIndex];
}

- (BOOL)_didNotHandleEventSoDeselect
{
  controller = [(AKMainEventHandler *)self controller];
  modelController = [controller modelController];
  [modelController deselectAllAnnotations];

  delegate = [controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate clearHighlightableSelectionForAnnotationController:controller];
  }

  [controller hideSelectionMenu:0];

  return 0;
}

- (void)_updateSelectionWithAnnotation:(id)annotation onPageController:(id)controller
{
  annotationCopy = annotation;
  pageModelController = [controller pageModelController];
  v6 = [pageModelController mutableSetValueForKey:@"selectedAnnotations"];

  if (([v6 containsObject:annotationCopy] & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObject:annotationCopy];
    [v6 setSet:v7];
  }
}

- (CGPoint)_alignedAnnotationDragPointForPoint:(CGPoint)point withEvent:(id)event orRecognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  recognizerCopy = recognizer;
  eventCopy = event;
  dragAlignmentGuideController = [(AKMainEventHandler *)self dragAlignmentGuideController];
  [dragAlignmentGuideController guideAlignedPointForPoint:eventCopy withEvent:recognizerCopy orRecognizer:{x, y}];
  v13 = v12;
  v15 = v14;

  dragPageController = [(AKMainEventHandler *)self dragPageController];
  geometryHelper = [dragPageController geometryHelper];
  [geometryHelper screenPixelAlignedPointForPoint:{v13, v15}];
  v19 = v18;
  v21 = v20;

  dragPageController2 = [(AKMainEventHandler *)self dragPageController];
  geometryHelper2 = [dragPageController2 geometryHelper];
  [geometryHelper2 contentAlignedPointForPoint:{v19, v21}];
  v25 = v24;
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)window withStartingPoint:(CGPoint)point
{
  y = window.y;
  x = window.x;
  [(AKMainEventHandler *)self leftMouseDownPoint:window.x];
  [AKGeometryHelper distanceBetweenPoints:"distanceBetweenPoints:andPoint:" andPoint:?];
  if (v7 > 0.0)
  {
    return 0;
  }

  return [(AKMainEventHandler *)self _detectFormElementInCurrentPageControllerUnderPointInWindow:x, y];
}

- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)window
{
  y = window.y;
  x = window.x;
  controller = [(AKMainEventHandler *)self controller];
  delegate = [controller delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate controllerShouldDetectFormElements:controller])
  {
    currentPageController = [controller currentPageController];
    overlayView = [currentPageController overlayView];

    [overlayView convertPoint:0 fromView:{x, y}];
    v10 = v9;
    v12 = v11;
    formDetectionController = [controller formDetectionController];
    currentPageController2 = [controller currentPageController];
    v15 = [formDetectionController detectFormFeatureAtPoint:currentPageController2 inPageController:{v10, v12}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGPoint)leftMouseDownPoint
{
  objc_copyStruct(v4, &self->_leftMouseDownPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lastDragPoint
{
  objc_copyStruct(v4, &self->_lastDragPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lastDragActualLocation
{
  objc_copyStruct(v4, &self->_lastDragActualLocation, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)lastDragActualLocationInWindow
{
  objc_copyStruct(v4, &self->_lastDragActualLocationInWindow, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (AKAnnotation)annotationToBeginEditingOnDragEnd
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationToBeginEditingOnDragEnd);

  return WeakRetained;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (CGPoint)firstDragPoint
{
  objc_copyStruct(v4, &self->_firstDragPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)panGestureStartPointInWindow
{
  objc_copyStruct(v4, &self->_panGestureStartPointInWindow, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end