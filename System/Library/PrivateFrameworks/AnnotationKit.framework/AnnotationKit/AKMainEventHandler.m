@interface AKMainEventHandler
+ (id)newMainEventHandlerForCurrentPlatformWithController:(id)a3;
- (AKAnnotation)annotationToBeginEditingOnDragEnd;
- (AKController)controller;
- (AKMainEventHandler)initWithController:(id)a3;
- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)a3;
- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)a3 withStartingPoint:(CGPoint)a4;
- (BOOL)_didNotHandleEventSoDeselect;
- (BOOL)continueDragEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)continueRotateEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)enterDragEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)enterRotateEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)handleDoubleDownEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)handleRotateEvent:(id)a3 orRecognizer:(id)a4;
- (BOOL)hitTestAnnotationsIncludingPOI:(BOOL)a3 ignoreIfDeselected:(BOOL)a4 atPointInWindow:(CGPoint)a5 outAnnotation:(id *)a6;
- (BOOL)hitTestPointsOfInterestsAtPoint:(CGPoint)a3 onPageController:(id)a4 inAnnotations:(id)a5 event:(id)a6 recognizer:(id)a7 cursorUpdateOnly:(BOOL)a8;
- (BOOL)mainHandleEvent:(id)a3 orRecognizer:(id)a4;
- (CGPoint)_alignedAnnotationDragPointForPoint:(CGPoint)a3 withEvent:(id)a4 orRecognizer:(id)a5;
- (CGPoint)_modelPointFromPointInWindow:(CGPoint)a3 usingPageController:(id)a4;
- (CGPoint)firstDragPoint;
- (CGPoint)lastDragActualLocation;
- (CGPoint)lastDragActualLocationInWindow;
- (CGPoint)lastDragPoint;
- (CGPoint)leftMouseDownPoint;
- (CGPoint)modelPointFromEvent:(id)a3 orRecognizer:(id)a4 onPageController:(id *)a5;
- (CGPoint)modelPointFromWindowPoint:(CGPoint)a3 foundOnPageController:(id *)a4;
- (CGPoint)panGestureStartPointInWindow;
- (CGPoint)windowPointFromEvent:(id)a3 orRecognizer:(id)a4;
- (id)annotationsPassingBoundingBoxHitTestsWithPoint:(CGPoint)a3 onPageController:(id)a4;
- (id)topmostAnnotationForBorderAndInteriorHitTestAtPoint:(CGPoint)a3 inAnnotations:(id)a4 onPageController:(id)a5 wasOnBorder:(BOOL *)a6 wasOnText:(BOOL *)a7;
- (void)_setCurrentPageBasedOnPageController:(id)a3;
- (void)_updateSelectionWithAnnotation:(id)a3 onPageController:(id)a4;
- (void)applyTranslationToAllSelectedAnnotations:(CGPoint)a3;
- (void)finishTranslationOfAllSelectedAnnotations;
@end

@implementation AKMainEventHandler

+ (id)newMainEventHandlerForCurrentPlatformWithController:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithController:v3];

  return v4;
}

- (AKMainEventHandler)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKMainEventHandler;
  v5 = [(AKMainEventHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKMainEventHandler *)v5 setController:v4];
  }

  return v6;
}

- (BOOL)mainHandleEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AKMainEventHandler *)self controller];
  v9 = [v8 currentPageController];
  v10 = [v9 overlayView];

  v11 = [v10 superview];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = [v10 window];
  if (!v12)
  {

    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v10 superview];
  v15 = [v14 window];

  if (!v15)
  {
LABEL_13:
    LOBYTE(v11) = 0;
    goto LABEL_22;
  }

  v16 = [(AKMainEventHandler *)self annotationEventHandler];

  if (!v16)
  {
    if ([(AKMainEventHandler *)self mainEventHandlerIsInTrackingLoop])
    {
      [MEMORY[0x277CD9FF0] activate];
      [MEMORY[0x277CD9FF0] begin];
      LOBYTE(v11) = 1;
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v28 = [(AKMainEventHandler *)self continueDragEventTrackingLoopWithEvent:v6 orRecognizer:v7];
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
          v35 = [(AKMainEventHandler *)self handleRotateEvent:v6 orRecognizer:v7];
        }

        else
        {
          v35 = [(AKMainEventHandler *)self handleDownEvent:v6 orRecognizer:v7];
        }

        LOBYTE(v11) = v35;
        goto LABEL_22;
      }

      [MEMORY[0x277CD9FF0] activate];
      [MEMORY[0x277CD9FF0] begin];
      LOBYTE(v11) = 1;
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v29 = [(AKMainEventHandler *)self continueRotateEventTrackingLoopWithEvent:v6 orRecognizer:v7];
      [MEMORY[0x277CD9FF0] commit];
      if (v29)
      {
        goto LABEL_22;
      }

      [(AKMainEventHandler *)self setMainEventHandlerIsInRotationLoop:0];
      [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:0];
    }

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    v31 = *MEMORY[0x277CCA7F0];
    v32 = [v8 undoController];
    v33 = [v32 undoManager];
    [v30 postNotificationName:v31 object:v33];

LABEL_21:
    LOBYTE(v11) = 1;
    goto LABEL_22;
  }

  [MEMORY[0x277CD9FF0] begin];
  LOBYTE(v11) = 1;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v17 = [(AKMainEventHandler *)self annotationEventHandler];
  v18 = [v17 continueDraggableAreaEventTrackingLoopWithEvent:v6 orRecognizer:v7];

  [MEMORY[0x277CD9FF0] commit];
  if ((v18 & 1) == 0)
  {
    v19 = [(AKMainEventHandler *)self annotationEventHandler];
    v20 = [v19 annotation];

    [v20 setIsDraggingHandle:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || [AKAnnotationRenderer annotationShouldAvoidRedrawDuringLiveResize:v20])
    {
      v21 = [(AKMainEventHandler *)self annotationEventHandler];
      v22 = [v21 pageController];
      v23 = [v22 layerPresentationManager];
      [v23 forceUpdateAnnotationLayer:v20];
    }

    [(AKMainEventHandler *)self setAnnotationEventHandler:0];
    [(AKMainEventHandler *)self setWasSelectedByLongPressRecognizer:0];
    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *MEMORY[0x277CCA7F0];
    v26 = [v8 undoController];
    v27 = [v26 undoManager];
    [v24 postNotificationName:v25 object:v27];

    goto LABEL_21;
  }

LABEL_22:

  return v11;
}

- (CGPoint)modelPointFromEvent:(id)a3 orRecognizer:(id)a4 onPageController:(id *)a5
{
  [(AKMainEventHandler *)self windowPointFromEvent:a3 orRecognizer:a4];

  [(AKMainEventHandler *)self modelPointFromWindowPoint:a5 foundOnPageController:?];
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)windowPointFromEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = [(AKMainEventHandler *)self annotationEventHandler];
    if (v8)
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
      [v7 akLocationInWindow];
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

- (CGPoint)modelPointFromWindowPoint:(CGPoint)a3 foundOnPageController:(id *)a4
{
  y = a3.y;
  x = a3.x;
  v30 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v9 = [(AKMainEventHandler *)self controller];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v9 pageControllers];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([v14 relinquishablesAreLoaded])
        {
          v15 = [v14 overlayView];
          [v15 convertPoint:0 fromView:{x, y}];
          v17 = v16;
          v19 = v18;
          [v15 bounds];
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

      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (a4)
  {
    v22 = v11;
    *a4 = v11;
  }

  v23 = v7;
  v24 = v8;
  result.y = v24;
  result.x = v23;
  return result;
}

- (BOOL)handleDownEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7 || [v7 akNumberOfTouches] <= 1)
  {
    v10 = [(AKMainEventHandler *)self controller];
    v11 = [v10 toolController];
    v12 = [v11 toolMode];

    [(AKMainEventHandler *)self setAnnotationToBeginEditingOnDragEnd:0];
    v13 = 0x277CCA000uLL;
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

    v86 = 0;
    [(AKMainEventHandler *)self modelPointFromEvent:v6 orRecognizer:v8 onPageController:&v86];
    v16 = v15;
    v18 = v17;
    v19 = v86;
    v20 = [v10 textEditorController];
    v21 = [v20 isEditing];

    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = [v10 textEditorController];
    v23 = [v22 textView];

    if (v8)
    {
      [v8 locationInView:v23];
    }

    else
    {
      v24 = 1.79769313e308;
    }

    v25 = v6;
    v26 = v23;
    v27 = [v23 pointInside:0 withEvent:v24];
    v28 = v27;
    if (v8 && !v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = [v8 state] != 1;
      if (v29)
      {
        v30 = v12;
LABEL_15:
        v31 = [v10 textEditorController];
        v32 = [v31 annotation];

        v33 = [AKTextAnnotationRenderHelper hitTestPoint:v32 againstActualTextForAnnotation:v19 onPageController:v16, v18];
        if (v29 || (v12 = v30, v33))
        {
          if (v8)
          {
            objc_opt_class();
            v6 = v25;
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 state] == 3 || objc_msgSend(v8, "state") == 4 || objc_msgSend(v8, "state") == 5))
            {
              [(AKMainEventHandler *)self setPanGestureStartPointInWindow:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
            }

            goto LABEL_109;
          }

          v9 = 1;
          v6 = v25;
          goto LABEL_110;
        }
      }
    }

    else if (v28)
    {
      v30 = v12;
      v29 = 0;
      goto LABEL_15;
    }

    v34 = [v10 textEditorController];
    [v34 endEditing];

    v6 = v25;
    v13 = 0x277CCA000;
LABEL_18:
    if (v6 || !v8)
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
        v26 = 0;
      }

      else
      {
        v43 = [(AKMainEventHandler *)self annotationsPassingBoundingBoxHitTestsWithPoint:v19 onPageController:v16, v18];
        if (![(AKMainEventHandler *)self wasSelectedByLongPressRecognizer]&& [(AKMainEventHandler *)self hitTestPointsOfInterestsAtPoint:v19 onPageController:v43 inAnnotations:v6 event:v8 recognizer:0 cursorUpdateOnly:v16, v18])
        {

          v26 = 0;
LABEL_109:
          v9 = 1;
          goto LABEL_110;
        }

        v26 = [(AKMainEventHandler *)self topmostAnnotationForBorderAndInteriorHitTestAtPoint:v43 inAnnotations:v19 onPageController:&v85 + 1 wasOnBorder:&v85 wasOnText:v16, v18];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v26)
        {
          goto LABEL_89;
        }

        v44 = [v10 modelController];
        [v44 allSelectedAnnotations];
        v45 = v6;
        v46 = v19;
        v48 = v47 = v12;
        v49 = [v48 containsObject:v26];

        v12 = v47;
        v19 = v46;
        v6 = v45;

        v50 = v49 ^ 1;
        v13 = 0x277CCA000;
      }

      else
      {
        v50 = 0;
        if (!v26)
        {
          goto LABEL_89;
        }
      }

      if (v50)
      {
LABEL_89:
        if ((v12 - 1) > 1)
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
            v72 = [v10 modelController];
            [v72 deselectAllAnnotations];

            [v10 hideSelectionMenu:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v73 = [v10 legacyDoodleController];
              [v73 handleDragAction:v8];

              if (([v8 state] - 3) <= 2)
              {
                [(AKMainEventHandler *)self setMainEventHandlerIsInDoodleTrackingLoop:0];
              }
            }

            [(AKMainEventHandler *)self setLeftMouseDownPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
            v74 = [*(v13 + 2968) defaultCenter];
            v75 = *MEMORY[0x277CCA7F0];
            v76 = [v10 undoController];
            v77 = [v76 undoManager];
            [v74 postNotificationName:v75 object:v77];

            goto LABEL_109;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = [v10 modelController];
            v79 = [v78 allSelectedAnnotations];

            v80 = [v10 toolbarViewController];
            if ([v80 isPresentingPopovers])
            {
              [v80 dismissPresentedPopovers];
LABEL_108:

              goto LABEL_109;
            }

            if (![v79 count])
            {
              v81 = [v10 legacyDoodleController];
              [v81 handleTapAction:v8];

              goto LABEL_108;
            }
          }
        }

        v35 = [(AKMainEventHandler *)self _didNotHandleEventSoDeselect];
        goto LABEL_106;
      }

      v84 = v12;
      if (v85 == 1)
      {
        v51 = [v19 pageModelController];
        v52 = [v51 selectedAnnotations];
        v53 = [v52 containsObject:v26];

        if (v53)
        {
          v54 = [v19 pageModelController];
          v55 = [v54 mutableSetValueForKey:@"selectedAnnotations"];

          v56 = [MEMORY[0x277CBEB98] setWithObject:v26];
          [v55 setSet:v56];

          [(AKMainEventHandler *)self setAnnotationToBeginEditingOnDragEnd:v26];
        }

        else
        {
          v57 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:v26];
          v55 = v57;
          if (!v57 || ![v57 length])
          {
            LOBYTE(v85) = 0;
          }
        }
      }

      v58 = [v19 pageModelController];
      v59 = [v58 selectedAnnotations];
      v83 = [v59 containsObject:v26];

      v60 = objc_opt_respondsToSelector();
      if (v60)
      {
        v61 = [v26 strokeColor];
        v62 = [v61 CGColor];

        Alpha = CGColorGetAlpha(v62);
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

      v67 = [v26 fillColor];
      v68 = [v67 CGColor];

      v69 = CGColorGetAlpha(v68);
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
      v12 = v84;
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
      [(AKMainEventHandler *)self _updateSelectionWithAnnotation:v26 onPageController:v19];
      if ([(AKMainEventHandler *)self enterDragEventTrackingLoopWithEvent:v6 orRecognizer:v8])
      {
        v9 = 1;
        [(AKMainEventHandler *)self setMainEventHandlerIsInTrackingLoop:1];
        [v10 hideSelectionMenu:0];
      }

      else
      {
        v71 = [AKAnnotationEventHandler newAnnotationEventHandlerForCurrentPlatformForAnnotation:v26 withPageController:v19];
        v9 = [v71 handleDownEvent:v6 orRecognizer:v8];
      }

      goto LABEL_110;
    }

    v26 = [v10 toolbarViewController];
    if ([v26 isPresentingPopovers])
    {
      [v26 dismissPresentedPopovers];
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
        v35 = [(AKMainEventHandler *)self handleDoubleDownEvent:0 orRecognizer:v8];
LABEL_106:
        v9 = v35;
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
      v36 = [v8 state];
      if (v36 == 2)
      {
        if ([(AKMainEventHandler *)self mainEventHandlerIsInTrackingLoop]|| (v12 - 3) < 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_50;
        }

        v37 = self;
        v38 = 1;
      }

      else
      {
        if (v36 == 1)
        {
          if ((v12 - 1) <= 1)
          {
            v39 = [v10 modelController];
            [v39 allSelectedAnnotations];
            v40 = v19;
            v42 = v41 = v12;
            -[AKMainEventHandler setMainEventHandlerIsInDoodleTrackingLoop:](self, "setMainEventHandlerIsInDoodleTrackingLoop:", [v42 count] == 0);

            v12 = v41;
            v19 = v40;
            v6 = 0;
          }

          goto LABEL_50;
        }

        if (v36)
        {
LABEL_50:

          goto LABEL_51;
        }

        v37 = self;
        v38 = 0;
      }

      [(AKMainEventHandler *)v37 setMainEventHandlerIsInDoodleTrackingLoop:v38];
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

- (BOOL)handleDoubleDownEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AKMainEventHandler *)self controller];
  v22 = 0;
  [(AKMainEventHandler *)self modelPointFromEvent:v7 orRecognizer:v6 onPageController:&v22];
  v10 = v9;
  v12 = v11;

  v13 = v22;
  if (v13)
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"AKShapeDetectionController.shouldDismissCandidatePicker" object:self];

    if (![v6 conformsToProtocol:&unk_2851DEBB8] || (objc_msgSend(v6, "penGestureDetected") & 1) == 0)
    {
      [(AKMainEventHandler *)self _setCurrentPageBasedOnPageController:v13];
      v15 = [(AKMainEventHandler *)self annotationsPassingBoundingBoxHitTestsWithPoint:v13 onPageController:v10, v12];
      v21 = 0;
      v16 = [(AKMainEventHandler *)self topmostAnnotationForBorderAndInteriorHitTestAtPoint:v15 inAnnotations:v13 onPageController:&v21 + 1 wasOnBorder:&v21 wasOnText:v10, v12];
      v17 = v16;
      if (v16 && [v16 conformsToAKTextAnnotationProtocol] && (objc_msgSend(v17, "editingDisabled") & 1) == 0)
      {
        v20 = [v8 textEditorController];
        [v20 beginEditingAnnotation:v17 withPageController:v13 selectAllText:0];

        v18 = 1;
        goto LABEL_10;
      }
    }

    v18 = [(AKMainEventHandler *)self _didNotHandleEventSoDeselect];
  }

  else
  {
    v18 = 0;
  }

LABEL_10:

  return v18;
}

- (BOOL)handleRotateEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AKMainEventHandler *)self controller];
  v12 = 0;
  [(AKMainEventHandler *)self modelPointFromEvent:v6 orRecognizer:v7 onPageController:&v12];
  if (v12 && ([v8 textEditorController], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "endEditing"), v9, -[AKMainEventHandler enterRotateEventTrackingLoopWithEvent:orRecognizer:](self, "enterRotateEventTrackingLoopWithEvent:orRecognizer:", v6, v7)))
  {
    v10 = 1;
    [(AKMainEventHandler *)self setMainEventHandlerIsInRotationLoop:1];
    [v8 hideSelectionMenu:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)enterDragEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v56 = 0;
  }

  else
  {
    [(AKMainEventHandler *)self windowPointFromEvent:v6 orRecognizer:v7];
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
      v16 = [v15 pageModelController];
      v17 = [v16 selectedAnnotations];

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v18 = v17;
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

          if (([v7 modifierFlags] & 0x80000) != 0)
          {
            v24 = [(AKMainEventHandler *)self controller];
            [v24 duplicate:0];
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

      [(AKMainEventHandler *)self _alignedAnnotationDragPointForPoint:v6 withEvent:v7 orRecognizer:v58, v14];
      v53 = v52;
      v55 = v54;
      [(AKMainEventHandler *)self setFirstDragPoint:?];
      [(AKMainEventHandler *)self setLastDragPoint:v53, v55];
      [(AKMainEventHandler *)self setLastDragActualLocationInWindow:v9, v11];
      [(AKMainEventHandler *)self setLastEventWithValidLocationForAutoscroll:v6];
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

- (BOOL)continueDragEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v7)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = [v7 state] != 3 && objc_msgSend(v7, "state") != 4 && objc_msgSend(v7, "state") != 5;
  [(AKMainEventHandler *)self lastDragPoint];
  v78 = v11;
  v79 = v10;
  [(AKMainEventHandler *)self windowPointFromEvent:v8 orRecognizer:v7];
  v13 = v12;
  v15 = v14;
  [(AKMainEventHandler *)self setLastDragActualLocationInWindow:?];
  [(AKMainEventHandler *)self setLastEventWithValidLocationForAutoscroll:v8];
  v16 = [(AKMainEventHandler *)self dragPageController];
  [(AKMainEventHandler *)self _modelPointFromPointInWindow:v16 usingPageController:v13, v15];
  v76 = v17;
  v77 = v18;

  v19 = [(AKMainEventHandler *)self dragPageController];
  [v19 visibleRectOfOverlay];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [(AKMainEventHandler *)self dragPageController];
  v29 = [v28 overlayView];
  [AKGeometryHelper convertRect:v29 fromScreenPointsToView:0.0, 0.0, 12.0, 12.0];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = [(AKMainEventHandler *)self dragPageController];
  [v38 convertRectFromOverlayToModel:{v31, v33, v35, v37}];
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

  [(AKMainEventHandler *)self _alignedAnnotationDragPointForPoint:v8 withEvent:v7 orRecognizer:v58, v69, *&v76];
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

- (BOOL)enterRotateEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    v8 = [(AKMainEventHandler *)self controller];
    v9 = [v8 currentPageController];
    v10 = [v9 pageModelController];
    v11 = [v10 selectedAnnotations];

    v12 = [v11 count] != 0;
  }

  return v12;
}

- (BOOL)continueRotateEventTrackingLoopWithEvent:(id)a3 orRecognizer:(id)a4
{
  v6 = a4;
  [(AKMainEventHandler *)self applyToAllSelectedAnnotationsRotateEvent:a3 orRecognizer:v6];
  v7 = !v6 || [v6 state] != 3 && objc_msgSend(v6, "state") != 4;

  return v7;
}

- (id)annotationsPassingBoundingBoxHitTestsWithPoint:(CGPoint)a3 onPageController:(id)a4
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBEB40] orderedSet];
  [v6 currentModelToScreenScaleFactor];
  [AKAnnotationPointOfInterestHelper draggableAreaScaleFactorForScaleFactor:?];
  v9 = v8;
  v10 = *&AKPointOfInterestSize_LargestHandleSize;
  v11 = [v6 pageModelController];
  v12 = [v11 annotations];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v12 reverseObjectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
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
            [v7 addObject:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v20 = [v7 reversedOrderedSet];
  v21 = [v20 array];

  return v21;
}

- (id)topmostAnnotationForBorderAndInteriorHitTestAtPoint:(CGPoint)a3 inAnnotations:(id)a4 onPageController:(id)a5 wasOnBorder:(BOOL *)a6 wasOnText:(BOOL *)a7
{
  y = a3.y;
  x = a3.x;
  v31 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  *a6 = 0;
  *a7 = 0;
  [v13 currentModelToScreenScaleFactor];
  v15 = v14;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v12 reverseObjectEnumerator];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v25 = v12;
    v19 = *v27;
    v20 = 20.0 / v15;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
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
              if ([AKTextAnnotationRenderHelper hitTestPoint:v23 againstActualTextForAnnotation:v13 onPageController:x, y])
              {
                *a7 = 1;
                goto LABEL_22;
              }
            }

            if ([AKAnnotationRenderer pointIsOnBorder:v22 ofAnnotation:x minimumBorderThickness:y, v20])
            {
              *a6 = 1;
LABEL_20:
              v23 = v22;
              goto LABEL_22;
            }

            if ([AKAnnotationRenderer pointIsOnInside:v22 ofAnnotation:x, y])
            {
              *a6 = 0;
              goto LABEL_20;
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }

    v23 = 0;
LABEL_22:
    v12 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)hitTestPointsOfInterestsAtPoint:(CGPoint)a3 onPageController:(id)a4 inAnnotations:(id)a5 event:(id)a6 recognizer:(id)a7 cursorUpdateOnly:(BOOL)a8
{
  y = a3.y;
  x = a3.x;
  v48 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [v14 pageModelController];
  v19 = [v18 selectedAnnotations];

  [v14 currentModelToScreenScaleFactor];
  v21 = v20;
  v22 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v15];
  [v22 intersectSet:v19];
  v23 = [v14 pageModelController];
  v24 = [v23 cropAnnotation];

  if (v24)
  {
    [v22 insertObject:v24 atIndex:0];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = [v22 reverseObjectEnumerator];
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v26)
  {
    LOBYTE(v33) = 0;
    goto LABEL_26;
  }

  v27 = v26;
  v39 = v22;
  v40 = v19;
  *&v41 = v17;
  *(&v41 + 1) = v16;
  v42 = v15;
  v28 = *v44;
LABEL_5:
  v29 = 0;
  while (1)
  {
    if (*v44 != v28)
    {
      objc_enumerationMutation(v25);
    }

    v30 = *(*(&v43 + 1) + 8 * v29);
    if (([v30 editingDisabled] & 1) == 0 && (v30 != v24 || objc_msgSend(v24, "showHandles")))
    {
      break;
    }

LABEL_14:
    if (v27 == ++v29)
    {
      v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_16:
      LOBYTE(v33) = 0;
      v15 = v42;
      v17 = v41;
      goto LABEL_25;
    }
  }

  v31 = [AKAnnotationPointOfInterestHelper draggableAreaForPoint:v30 onAnnotation:v14 withScale:x pageControllerForPixelAlignment:y, v21];
  v32 = v31;
  if (!v31 || a8)
  {
    if (v31)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v17 = v41;
  v15 = v42;
  if (v41 == 0)
  {
    LOBYTE(v33) = 1;
  }

  else
  {
    v34 = [AKAnnotationEventHandler newAnnotationEventHandlerForCurrentPlatformForAnnotation:v30 withPageController:v14];
    [v34 setInitiallyDraggedArea:v32];
    v33 = [v34 enterDraggableAreaEventTrackingLoopWithEvent:v16 orRecognizer:v41];
    if (v33)
    {
      v37 = [(AKMainEventHandler *)self controller];
      [(AKMainEventHandler *)self setAnnotationEventHandler:v34];
      if (v30 == v24)
      {
        v35 = [v37 modelController];
        [v35 deselectAllAnnotations];
      }

      [v37 hideSelectionMenu:0];
      [v30 setIsDraggingHandle:1];
    }
  }

LABEL_25:
  v22 = v39;
  v19 = v40;
LABEL_26:

  return v33;
}

- (BOOL)hitTestAnnotationsIncludingPOI:(BOOL)a3 ignoreIfDeselected:(BOOL)a4 atPointInWindow:(CGPoint)a5 outAnnotation:(id *)a6
{
  v7 = a4;
  v8 = a3;
  v25 = 0;
  [(AKMainEventHandler *)self modelPointFromWindowPoint:&v25 foundOnPageController:a5.x, a5.y];
  v11 = v10;
  v13 = v12;
  v14 = v25;
  v15 = [(AKMainEventHandler *)self annotationsPassingBoundingBoxHitTestsWithPoint:v14 onPageController:v11, v13];
  if (v8 && [(AKMainEventHandler *)self hitTestPointsOfInterestsAtPoint:v14 onPageController:v15 inAnnotations:0 event:0 recognizer:0 cursorUpdateOnly:v11, v13])
  {
    v16 = 1;
  }

  else
  {
    v24 = 0;
    v17 = [(AKMainEventHandler *)self topmostAnnotationForBorderAndInteriorHitTestAtPoint:v15 inAnnotations:v14 onPageController:&v24 + 1 wasOnBorder:&v24 wasOnText:v11, v13];
    v18 = v17;
    v16 = v17 != 0;
    if (v7 && v17 && ([v14 pageModelController], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "selectedAnnotations"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "containsObject:", v18), v20, v19, (v21 & 1) == 0))
    {

      v16 = 0;
      v18 = 0;
    }

    else if (a6 && v18)
    {
      v22 = v18;
      *a6 = v18;
      v16 = 1;
    }
  }

  return v16;
}

- (void)applyTranslationToAllSelectedAnnotations:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = *MEMORY[0x277D85DE8];
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v6 = [(AKMainEventHandler *)self controller];
    v7 = [v6 currentPageController];
    v8 = [v7 pageModelController];
    v9 = [v8 selectedAnnotations];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v9;
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
  v2 = [(AKMainEventHandler *)self controller];
  v3 = [v2 currentPageController];
  v4 = [v3 pageModelController];
  v5 = [v4 selectedAnnotations];

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
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
          v12 = [v3 layerPresentationManager];
          [v12 forceUpdateAnnotationLayer:v11];
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

- (CGPoint)_modelPointFromPointInWindow:(CGPoint)a3 usingPageController:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = [v6 overlayView];
  [v7 convertPoint:0 fromView:{x, y}];
  [v6 convertPointFromOverlayToModel:?];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)_setCurrentPageBasedOnPageController:(id)a3
{
  v4 = a3;
  v6 = [(AKMainEventHandler *)self controller];
  v5 = [v4 pageIndex];

  [v6 setCurrentPageIndex:v5];
}

- (BOOL)_didNotHandleEventSoDeselect
{
  v2 = [(AKMainEventHandler *)self controller];
  v3 = [v2 modelController];
  [v3 deselectAllAnnotations];

  v4 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 clearHighlightableSelectionForAnnotationController:v2];
  }

  [v2 hideSelectionMenu:0];

  return 0;
}

- (void)_updateSelectionWithAnnotation:(id)a3 onPageController:(id)a4
{
  v8 = a3;
  v5 = [a4 pageModelController];
  v6 = [v5 mutableSetValueForKey:@"selectedAnnotations"];

  if (([v6 containsObject:v8] & 1) == 0)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
    [v6 setSet:v7];
  }
}

- (CGPoint)_alignedAnnotationDragPointForPoint:(CGPoint)a3 withEvent:(id)a4 orRecognizer:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v10 = a4;
  v11 = [(AKMainEventHandler *)self dragAlignmentGuideController];
  [v11 guideAlignedPointForPoint:v10 withEvent:v9 orRecognizer:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = [(AKMainEventHandler *)self dragPageController];
  v17 = [v16 geometryHelper];
  [v17 screenPixelAlignedPointForPoint:{v13, v15}];
  v19 = v18;
  v21 = v20;

  v22 = [(AKMainEventHandler *)self dragPageController];
  v23 = [v22 geometryHelper];
  [v23 contentAlignedPointForPoint:{v19, v21}];
  v25 = v24;
  v27 = v26;

  v28 = v25;
  v29 = v27;
  result.y = v29;
  result.x = v28;
  return result;
}

- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)a3 withStartingPoint:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  [(AKMainEventHandler *)self leftMouseDownPoint:a3.x];
  [AKGeometryHelper distanceBetweenPoints:"distanceBetweenPoints:andPoint:" andPoint:?];
  if (v7 > 0.0)
  {
    return 0;
  }

  return [(AKMainEventHandler *)self _detectFormElementInCurrentPageControllerUnderPointInWindow:x, y];
}

- (BOOL)_detectFormElementInCurrentPageControllerUnderPointInWindow:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(AKMainEventHandler *)self controller];
  v6 = [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 controllerShouldDetectFormElements:v5])
  {
    v7 = [v5 currentPageController];
    v8 = [v7 overlayView];

    [v8 convertPoint:0 fromView:{x, y}];
    v10 = v9;
    v12 = v11;
    v13 = [v5 formDetectionController];
    v14 = [v5 currentPageController];
    v15 = [v13 detectFormFeatureAtPoint:v14 inPageController:{v10, v12}];
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