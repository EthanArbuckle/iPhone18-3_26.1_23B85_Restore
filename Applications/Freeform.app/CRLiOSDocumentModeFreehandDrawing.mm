@interface CRLiOSDocumentModeFreehandDrawing
+ (void)presentEducationPaneIfNecessaryIn:(id)a3;
- (BOOL)allowGestureInRestrictedGestureMode:(id)a3;
- (BOOL)allowsFingerDrawing;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4;
- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidForEditorController:(id)a3;
- (BOOL)p_areAnyDrawingItemsOrDrawingShapesSelected;
- (BOOL)p_gestureRecognizer:(id)a3 shouldReceiveTouchAtLocation:(CGPoint)a4 touchType:(int64_t)a5;
- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4;
- (BOOL)wantsAlternateContextMenuBehaviorAtPoint:(CGPoint)a3;
- (BOOL)wantsToSuppressMultiselectionWithSingleBounds;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLiOSDocumentModeFreehandDrawing)initWithBoardViewController:(id)a3 andInteractiveCanvasController:(id)a4;
- (id)contextMenuConfigurationForContextMenuInteraction:(id)a3 atPoint:(CGPoint)a4 onInteractiveCanvasController:(id)a5;
- (id)cursorAtPoint:(CGPoint)a3 withCursorPlatformObject:(id)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)gesturesToAdjustIfPencilShouldSelectAndScrollFromGestures:(id)a3;
- (id)p_menuElementsToDisplayForLassoSelectionAtPoint:(CGPoint)a3;
- (id)toolTray;
- (id)validateSelectionPathIfNeededFromPersistableSelectionPath:(id)a3 withSelectionPathValidator:(id)a4;
- (unint64_t)p_currentLassoSelectionType;
- (unint64_t)p_currentLockedInfosCount;
- (void)beginDrawingTransformMode;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)hideEditMenuForLassoSelection;
- (void)modeDidBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeDidEndForMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4;
- (void)p_addObservationOfInteractiveCanvasController:(id)a3;
- (void)p_deselectAllInfosNotInDrawingsOrDrawings;
- (void)p_editMenuTapReceived:(id)a3;
- (void)p_handleMarqueeTapWithInput:(id)a3 afterDelay:(double)a4;
- (void)p_insertEditCommandInto:(id)a3;
- (void)p_removeObservationOfInteractiveCanvasController:(id)a3;
- (void)p_updatePanAndDrawingGestureRecognizersForState;
- (void)pencilKitDidSmartSelectStrokesInDrawingShapeItems:(id)a3;
- (void)prefersPencilOnlyDrawingDidChange;
- (void)presentEditMenuForLassoSelection;
- (void)selectionPathDidChange:(id)a3;
- (void)setInteractiveCanvasController:(id)a3;
- (void)toolkitDidUpdateCurrentToolSelection;
- (void)toolkitDidUpdateRulerVisibility;
@end

@implementation CRLiOSDocumentModeFreehandDrawing

- (CRLiOSDocumentModeFreehandDrawing)initWithBoardViewController:(id)a3 andInteractiveCanvasController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFreehandDrawing;
  v7 = [(CRLiOSDocumentMode *)&v10 initWithBoardViewController:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_icc, v6);
    v8->_previousCanvasScrollMinTouchCount = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained layerHost];
  v7 = [v6 asiOSCVC];

  v8 = [v7 allTouchesDoneGestureRecognizer];
  if (v8 == v4)
  {
    goto LABEL_16;
  }

  v9 = [v7 preventScrollGestureRecognizer];
  if (v9 == v4)
  {
LABEL_15:

LABEL_16:
    v17 = 1;
    goto LABEL_17;
  }

  v10 = [v7 zoomGestureRecognizer];
  if (v10 == v4)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = [v7 freehandDrawingGestureRecognizer];
  if (v11 == v4)
  {
LABEL_13:

    goto LABEL_14;
  }

  v12 = [v7 knobDragGestureRecognizer];
  if (v12 == v4)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [v7 singleTapGestureRecognizer];
  if (v13 == v4)
  {
LABEL_11:

    goto LABEL_12;
  }

  v14 = [v7 repDragGestureRecognizer];
  v15 = v14;
  if (v14 == v4)
  {

    goto LABEL_11;
  }

  v16 = [v7 doubleTapGestureRecognizer];

  if (v16 == v4)
  {
    v17 = 1;
    goto LABEL_18;
  }

  v8 = [v7 appSpecificGestureRecognizersAllowedDuringFreehandDrawing];
  v17 = [v8 containsObject:v4];
LABEL_17:

LABEL_18:
  return v17;
}

- (id)gesturesToAdjustIfPencilShouldSelectAndScrollFromGestures:(id)a3
{
  v4 = [a3 mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained layerHost];
  v7 = [v6 asiOSCVC];

  v8 = [v7 singleTapGestureRecognizer];
  [v4 removeObject:v8];

  v9 = [v7 repDragGestureRecognizer];
  [v4 removeObject:v9];

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v10 = [v7 doubleTapGestureRecognizer];
    [v4 removeObject:v10];
  }

  return v4;
}

- (id)validateSelectionPathIfNeededFromPersistableSelectionPath:(id)a3 withSelectionPathValidator:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained freehandDrawingToolkit];

  v10 = [v9 currentTool];
  v11 = [v10 type];

  v12 = [v9 isLassoAbleToSelectMixedType];
  if (v11 != 10 || v12 == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v7 selectionPathFromPersistableSelectionPath:v6 selectableBoardItemsFromParentMapAndSiblings:&stru_10184B0E0];
  }

  return v14;
}

- (void)setInteractiveCanvasController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (self->_isObservingICCNotifications)
    {
      v6 = objc_loadWeakRetained(&self->_icc);
      [(CRLiOSDocumentModeFreehandDrawing *)self p_removeObservationOfInteractiveCanvasController:v6];

      [(CRLiOSDocumentModeFreehandDrawing *)self p_addObservationOfInteractiveCanvasController:obj];
    }

    objc_storeWeak(&self->_icc, obj);
    v5 = obj;
  }
}

- (void)p_addObservationOfInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  v5 = [v4 editorController];

  [v6 addObserver:self selector:"selectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v5];
  self->_isObservingICCNotifications = 1;
}

- (void)p_removeObservationOfInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  v5 = [v4 editorController];

  [v6 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v5];
  self->_isObservingICCNotifications = 0;
}

- (void)selectionPathDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v6 = [v5 editorController];

  if (v4 != v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101337A88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337A9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337B2C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing selectionPathDidChange:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:249 isFatal:0 description:"The observed editor controller does not match the editor controller owned by self.interactiveCanvasController. You probably forgot to update observation in -setInteractiveCanvasController:"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v11 = [WeakRetained freehandDrawingToolkit];

  v12 = [v11 currentTool];
  v13 = [v12 type];

  if (v13 != 10)
  {
    v14 = objc_loadWeakRetained(&self->_icc);
    v15 = [v14 editorController];
    v16 = [v15 mostSpecificCurrentEditorOfClass:objc_opt_class()];

    if ([CRLFeatureFlagsHelper isOSFeatureEnabled:1])
    {
      v17 = objc_loadWeakRetained(&self->_icc);
      v18 = [v17 editorController];
      v19 = [v18 mostSpecificCurrentEditorOfClass:objc_opt_class()];

      v20 = objc_loadWeakRetained(&self->_icc);
      v21 = [v20 editorController];
      v22 = [v21 mostSpecificCurrentEditorOfClass:objc_opt_class()];

      if (v19 || !v22)
      {
        v23 = objc_loadWeakRetained(&self->_icc);
        v24 = [v23 editorController];
        v25 = [v24 mostSpecificCurrentEditorOfClass:objc_opt_class()];

        if (v25)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v11 setCurrentToolSelection:10];
          }
        }
      }

      else
      {
        [v11 setCurrentToolSelection:10];
      }
    }

    else if (v16)
    {
      [v11 setCurrentToolSelection:10];
    }
  }
}

- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v22.receiver = self;
  v22.super_class = CRLiOSDocumentModeFreehandDrawing;
  v6 = a3;
  [(CRLiOSDocumentMode *)&v22 modeWillBeginFromMode:v6 forced:v4];
  v7 = [(CRLiOSDocumentMode *)self boardViewController];
  v8 = [v7 presentedViewController];

  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 dismissPresentedViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [(CRLiOSDocumentModeFreehandDrawing *)self p_addObservationOfInteractiveCanvasController:WeakRetained];

  v10 = objc_loadWeakRetained(&self->_icc);
  v11 = [v10 freehandDrawingToolkit];

  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101337B54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337B7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337C18();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing modeWillBeginFromMode:forced:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:293 isFatal:0 description:"invalid nil value for '%{public}s'", "toolkit"];
  }

  [v11 addToolkitObserver:self];
  v15 = [v6 toolTray];
  v16 = [(CRLiOSDocumentModeFreehandDrawing *)self toolTray];

  if (v15 == v16)
  {
    self->_didFinishPresentingBottomToolTray = 1;
  }

  v17 = [v6 pencilModeType];

  if (v17 != 1)
  {
    [_TtC8Freeform23CRLAnalyticsFeatureUsed logFeatureUsedWithName:6];
  }

  v18 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
  lassoSelectionEditMenuInteraction = self->_lassoSelectionEditMenuInteraction;
  self->_lassoSelectionEditMenuInteraction = v18;

  [(UIEditMenuInteraction *)self->_lassoSelectionEditMenuInteraction setPresentsContextMenuAsSecondaryAction:0];
  v20 = objc_loadWeakRetained(&self->_icc);
  v21 = [v20 canvasView];
  [v21 addInteraction:self->_lassoSelectionEditMenuInteraction];
}

- (void)modeDidBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v33.receiver = self;
  v33.super_class = CRLiOSDocumentModeFreehandDrawing;
  v6 = a3;
  [(CRLiOSDocumentMode *)&v33 modeDidBeginFromMode:v6 forced:v4];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateAllLayers];

  v8 = objc_loadWeakRetained(&self->_icc);
  v9 = [v8 layerHost];
  v10 = [v9 asiOSCVC];

  v11 = [v10 canvasView];
  v12 = objc_opt_class();
  v13 = sub_100014370(v12, v6);

  if (v13)
  {
    self->_previousCanvasScrollMinTouchCount = v13[3];
  }

  else
  {
    v14 = [v11 enclosingScrollView];
    v15 = [v14 panGestureRecognizer];

    self->_previousCanvasScrollMinTouchCount = [v15 minimumNumberOfTouches];
  }

  v16 = [v10 freehandDrawingGestureRecognizer];
  v17 = [v16 allowedTouchTypes];
  previousFreehandGestureTouchTypes = self->_previousFreehandGestureTouchTypes;
  self->_previousFreehandGestureTouchTypes = v17;

  v19 = [v10 repDragGestureRecognizer];
  [v19 setAllowedTouchTypes:&off_1018E1230];

  v20 = [v10 singleTapGestureRecognizer];
  [v20 setAllowedTouchTypes:&off_1018E1230];

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v21 = [v10 doubleTapGestureRecognizer];
    [v21 setAllowedTouchTypes:&off_1018E1248];
  }

  v22 = [[CRLiOSTapGestureRecognizer alloc] initWithTarget:self action:"p_editMenuTapReceived:"];
  editMenuTapGR = self->_editMenuTapGR;
  self->_editMenuTapGR = &v22->super;

  [(UITapGestureRecognizer *)self->_editMenuTapGR setName:@"freehand edit tap GR"];
  [(UITapGestureRecognizer *)self->_editMenuTapGR setDelegate:self];
  [(UITapGestureRecognizer *)self->_editMenuTapGR setAllowedTouchTypes:&off_1018E1260];
  [v11 addGestureRecognizer:self->_editMenuTapGR];
  [(CRLiOSDocumentModeFreehandDrawing *)self p_updatePanAndDrawingGestureRecognizersForState];
  if (!v4)
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self p_deselectAllInfosNotInDrawingsOrDrawings];
  }

  v24 = objc_loadWeakRetained(&self->_icc);
  v25 = [v24 freehandDrawingToolkit];

  if (!v25)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101337C40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337C68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337D04();
    }

    v26 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v26);
    }

    v27 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing modeDidBeginFromMode:forced:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:363 isFatal:0 description:"invalid nil value for '%{public}s'", "toolkit"];
  }

  v29 = [v25 isRulerToolShowing];
  v30 = [(CRLiOSDocumentMode *)self boardViewController];
  v31 = [v30 pencilKitCanvasView];
  [v31 setRulerActive:v29];

  v32 = [(CRLiOSDocumentMode *)self boardViewController];
  [CRLiOSDocumentModeFreehandDrawing presentEducationPaneIfNecessaryIn:v32];
}

- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [(CRLiOSDocumentModeFreehandDrawing *)self p_removeObservationOfInteractiveCanvasController:WeakRetained];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_24;
  }

  v8 = objc_loadWeakRetained(&self->_icc);
  v9 = [v8 layerHost];
  v10 = [v9 asiOSCVC];

  [v10 hideEditMenu];
  v11 = [v10 delegate];
  v12 = [v11 pencilKitCanvasViewControllerForCanvasViewController:v10];

  [v12 removeSmartSelectionViewIfNecessary];
  v13 = objc_loadWeakRetained(&self->_icc);
  v14 = [v13 freehandDrawingToolkit];

  if (!v14)
  {
    v61 = v4;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101337D2C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337D40();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337DDC();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing modeWillEndForMode:forced:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:383 isFatal:0 description:"invalid nil value for '%{public}s'", "toolkit"];

    v4 = v61;
  }

  v18 = [v14 currentTool];
  v19 = [v18 type];

  if ([v14 isLassoAbleToSelectMixedType])
  {
    if ((v4 & 1) == 0)
    {
      v62 = v4;
      v20 = objc_loadWeakRetained(&self->_icc);
      v21 = v20;
      if (v19 == 10)
      {
        v60 = v6;
        v22 = [v20 editorController];
        v23 = [v22 selectionPath];

        v24 = objc_loadWeakRetained(&self->_icc);
        v25 = [v24 selectionModelTranslator];

        v59 = v23;
        v26 = [v25 selectionPathRemovingCrossContainerSelectionsForSelectionPath:v23];
        v27 = [v26 mostSpecificSelectionOfClass:objc_opt_class()];
        v28 = v26;
        v29 = v28;
        if ([v27 containsKindOfClass:objc_opt_class()])
        {
          v30 = [v27 boardItems];
          v29 = [v25 selectionPathForInfos:v30];
        }

        v58 = v27;
        v31 = objc_loadWeakRetained(&self->_icc);
        v32 = [v31 editorController];
        [v32 setSelectionPath:v29 withFlags:0x2000];

        v33 = v59;
        v6 = v60;
        goto LABEL_22;
      }

      v37 = [v20 canvasEditor];
      v38 = +[NSSet set];
      v39 = [v37 selectionPathWithInfos:v38];

      v33 = v39;
LABEL_21:

      v25 = objc_loadWeakRetained(&self->_icc);
      v28 = [v25 editorController];
      [v28 setSelectionPath:v33 withFlags:0x2000];
LABEL_22:

      v4 = v62;
    }
  }

  else if ((v4 & 1) == 0)
  {
    v62 = v4;
    v21 = objc_loadWeakRetained(&self->_icc);
    v34 = [v21 canvasEditor];
    +[NSSet set];
    v36 = v35 = v6;
    v33 = [v34 selectionPathWithInfos:v36];

    v6 = v35;
    goto LABEL_21;
  }

LABEL_24:
  v40 = objc_loadWeakRetained(&self->_icc);
  v41 = [v40 canvasView];
  v42 = [v41 enclosingScrollView];
  v43 = [v42 panGestureRecognizer];

  [v43 setMinimumNumberOfTouches:self->_previousCanvasScrollMinTouchCount];
  v44 = objc_loadWeakRetained(&self->_icc);
  v45 = [v44 layerHost];
  v46 = [v45 asiOSCVC];

  v47 = [v46 freehandDrawingGestureRecognizer];
  [v47 setAllowedTouchTypes:self->_previousFreehandGestureTouchTypes];
  if ([(CRLiOSDocumentMode *)self shouldSelectAndScrollWithApplePencil])
  {
    v48 = &off_1018E1278;
  }

  else
  {
    v48 = &off_1018E1290;
  }

  v49 = [v46 repDragGestureRecognizer];
  [v49 setAllowedTouchTypes:v48];

  v50 = [v46 singleTapGestureRecognizer];
  [v50 setAllowedTouchTypes:v48];

  v51 = [(UITapGestureRecognizer *)self->_editMenuTapGR view];
  [v51 removeGestureRecognizer:self->_editMenuTapGR];

  editMenuTapGR = self->_editMenuTapGR;
  self->_editMenuTapGR = 0;

  v53 = objc_loadWeakRetained(&self->_icc);
  v54 = [v53 freehandDrawingToolkit];

  if (!v54)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    v63 = v4;
    if (qword_101AD5A10 != -1)
    {
      sub_101337E04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337E2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337EC8();
    }

    v55 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v55);
    }

    v56 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing modeWillEndForMode:forced:]"];
    v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v56 file:v57 lineNumber:445 isFatal:0 description:"invalid nil value for '%{public}s'", "toolkit"];

    v4 = v63;
  }

  [v54 setRulerToolShowing:0];
  [v54 removeToolkitObserver:self];
  v64.receiver = self;
  v64.super_class = CRLiOSDocumentModeFreehandDrawing;
  [(CRLiOSDocumentMode *)&v64 modeWillEndForMode:v6 forced:v4];
}

- (void)modeDidEndForMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateAllLayers];

  if (self->_lassoSelectionEditMenuInteraction)
  {
    v8 = objc_loadWeakRetained(&self->_icc);
    v9 = [v8 canvasView];
    [v9 removeInteraction:self->_lassoSelectionEditMenuInteraction];

    lassoSelectionEditMenuInteraction = self->_lassoSelectionEditMenuInteraction;
    self->_lassoSelectionEditMenuInteraction = 0;
  }

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v11 = objc_loadWeakRetained(&self->_icc);
    v12 = [v11 layerHost];
    v13 = [v12 asiOSCVC];

    v14 = [v13 doubleTapGestureRecognizer];
    [v14 setAllowedTouchTypes:&off_1018E12A8];
  }

  v15.receiver = self;
  v15.super_class = CRLiOSDocumentModeFreehandDrawing;
  [(CRLiOSDocumentMode *)&v15 modeDidEndForMode:v6 forced:v4];
}

- (BOOL)wantsAlternateContextMenuBehaviorAtPoint:(CGPoint)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained freehandDrawingToolkit];
  v5 = [v4 currentTool];
  v6 = [v5 type] != 10;

  return v6;
}

- (id)cursorAtPoint:(CGPoint)a3 withCursorPlatformObject:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v6 = [WeakRetained freehandDrawingToolkit];
  v7 = [v6 currentTool];

  v8 = [v7 type];
  if (v8 < 8)
  {
    v9 = objc_opt_class();
    v10 = sub_100013F00(v9, v7);
    [v10 unscaledWidth];
    v12 = v11;
    v13 = objc_loadWeakRetained(&self->_icc);
    [v13 viewScale];
    v15 = v12 * v14;

    v16 = [UIBezierPath bezierPathWithOvalInRect:sub_10011EC70(CGPointZero.x, CGPointZero.y, fmax(v15, 10.0))];
    v17 = [UIPointerShape shapeWithPath:v16];

    v18 = objc_loadWeakRetained(&self->_icc);
    [v18 visibleBoundsRect];
    v19 = [CRLCursor cursorWithShape:v17 activeScaledRect:?];

LABEL_3:
    goto LABEL_4;
  }

  if (v8 == 9)
  {
    v21 = objc_loadWeakRetained(&self->_icc);
    v22 = [v21 freehandDrawingToolkit];
    v23 = [v22 toolkitUIState];
    v24 = [v23 eraserToolErasesWholeObjects];

    v25 = objc_opt_class();
    v26 = sub_100013F00(v25, v7);
    if (v24)
    {
      [v26 currentScaledEraserDiameter];
    }

    else
    {
      [v26 scaledWidthForSlicingEraser];
    }

    v28 = v27;

    v29 = [UIBezierPath bezierPathWithOvalInRect:sub_10011EC70(CGPointZero.x, CGPointZero.y, fmax(v28, 10.0))];
    v10 = [UIPointerShape shapeWithPath:v29];

    v17 = objc_loadWeakRetained(&self->_icc);
    [v17 visibleBoundsRect];
    v19 = [CRLCursor cursorWithShape:v10 activeScaledRect:?];
    goto LABEL_3;
  }

  v19 = 0;
LABEL_4:

  return v19;
}

- (BOOL)allowsFingerDrawing
{
  v3 = [(CRLiOSDocumentModeFreehandDrawing *)self toolTray];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101337EF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337F04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101337FA0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing allowsFingerDrawing]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:531 isFatal:0 description:"invalid nil value for '%{public}s'", "toolTray"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v8 = [WeakRetained layerHost];
  v9 = [v8 asiOSCVC];
  v10 = [v9 pencilMediator];

  if (!v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101337FC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101337FF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133808C();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing allowsFingerDrawing]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:533 isFatal:0 description:"invalid nil value for '%{public}s'", "pencilMediator"];
  }

  if ([v3 hidden])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = [v10 prefersPencilOnlyDrawing] ^ 1;
  }

  return v14;
}

- (BOOL)wantsToSuppressMultiselectionWithSingleBounds
{
  v2 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v3 = [v2 freehandDrawingToolkit];
  v4 = [v3 currentTool];
  v5 = [v4 type] != 10;

  return v5;
}

- (void)presentEditMenuForLassoSelection
{
  if (!+[CRLAccessibility isVoiceOverEnabled])
  {
    if (self->_lassoSelectionEditMenuInteraction)
    {
      v11 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      v3 = [v11 layerHost];
      v4 = [v3 asiOSCVC];

      v5 = [v11 editorController];
      v6 = [v5 selectionPath];

      v7 = [v4 editMenuConfigrationForSelectionPath:v6 withConfigurationIdentifier:@"CRLFreehandDrawingModeLassoSelectionMenuIdentifier"];
      [(UIEditMenuInteraction *)self->_lassoSelectionEditMenuInteraction presentEditMenuWithConfiguration:v7];
      self->_lassoSelectionEditMenuDisplayed = 1;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013380B4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013380C8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101338158();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing presentEditMenuForLassoSelection]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:559 isFatal:0 description:"_lassoSelectionMenuInteraction should not be nil."];
    }
  }
}

- (void)hideEditMenuForLassoSelection
{
  lassoSelectionEditMenuInteraction = self->_lassoSelectionEditMenuInteraction;
  if (lassoSelectionEditMenuInteraction)
  {
    [(UIEditMenuInteraction *)lassoSelectionEditMenuInteraction dismissMenu];
    self->_lassoSelectionEditMenuDisplayed = 0;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338180();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338194();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101338224();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing hideEditMenuForLassoSelection]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:575 isFatal:0 description:"_lassoSelectionMenuInteraction should not be nil."];
  }
}

- (void)toolkitDidUpdateCurrentToolSelection
{
  v19 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v3 = [v19 freehandDrawingToolkit];
  v4 = [v3 currentTool];
  v5 = [v4 type];

  if (v5 != 10)
  {
    v6 = [v19 editorController];
    v7 = [v6 mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor];
    v14 = sub_1003035DC(v7, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor);

    v15 = [v19 canvasEditor];
    v16 = [v14 drawingItemsFromCurrentSelectionPath];
    v17 = [v15 selectionPathWithInfos:v16];
    v18 = [v19 editorController];
    [v18 setSelectionPath:v17];

    [(UIEditMenuInteraction *)self->_lassoSelectionEditMenuInteraction dismissMenu];
  }
}

- (void)toolkitDidUpdateRulerVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained freehandDrawingToolkit];

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133824C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338260();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013382FC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing toolkitDidUpdateRulerVisibility]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:621 isFatal:0 description:"invalid nil value for '%{public}s'", "toolkit"];
  }

  v8 = [(CRLiOSDocumentMode *)self boardViewController];
  v9 = [v8 pencilKitCanvasView];

  if (!v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338324();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133834C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013383E8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing toolkitDidUpdateRulerVisibility]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:623 isFatal:0 description:"invalid nil value for '%{public}s'", "pkCanvasView"];
  }

  v13 = [v9 isRulerActive];
  if (v13 != [v4 isRulerToolShowing])
  {
    [v9 setRulerActive:{objc_msgSend(v4, "isRulerToolShowing")}];
  }
}

- (BOOL)isValidForEditorController:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isLassoAbleToSelectMixedType];

  if (v7)
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self p_currentLassoSelectionType];
  }

  v8 = [v4 mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v9 = v8 != 0;

  if (v7)
  {
    v10 = [v4 mostSpecificCurrentEditorOfClass:objc_opt_class()];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 == 0;
    }

    v9 = !v11;
  }

  v12 = [v4 selectionPath];
  v13 = objc_opt_class();
  v14 = [v12 mostSpecificSelectionOfClass:0];
  v15 = sub_100014370(v13, v14);

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v17 = [WeakRetained infosForCurrentSelectionPath];
  v18 = [v17 count];

  if (v15)
  {
    v19 = 1;
  }

  else
  {
    v19 = v9;
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)prefersPencilOnlyDrawingDidChange
{
  v3.receiver = self;
  v3.super_class = CRLiOSDocumentModeFreehandDrawing;
  [(CRLiOSDocumentMode *)&v3 prefersPencilOnlyDrawingDidChange];
  [(CRLiOSDocumentModeFreehandDrawing *)self p_updatePanAndDrawingGestureRecognizersForState];
}

- (void)p_deselectAllInfosNotInDrawingsOrDrawings
{
  v3 = +[NSMutableSet set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = self;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v5 = [WeakRetained infosForCurrentSelectionPath];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = sub_100014370(v11, v10);
        v13 = v12;
        if (v12 && ([v12 parentInfo], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0))
        {
          v16 = v3;
          v17 = v13;
        }

        else
        {
          v18 = objc_opt_class();
          v19 = sub_100014370(v18, v10);

          if (!v19)
          {
            goto LABEL_12;
          }

          v16 = v3;
          v17 = v10;
        }

        [v16 addObject:v17];
LABEL_12:
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v20 = objc_loadWeakRetained(&v24->_icc);
  v21 = [v20 canvasEditor];
  v22 = [v21 selectionPathWithInfos:v3];

  v23 = objc_loadWeakRetained(&v24->_icc);
  [v23 setSelectionPath:v22 withSelectionFlags:0];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained hitRep:{x, y}];

  v10 = objc_opt_class();
  v11 = objc_loadWeakRetained(&self->_icc);
  v12 = [v11 freehandDrawingToolkit];
  v13 = [v12 currentTool];
  v14 = sub_100014370(v10, v13);

  v15 = [[CRLFreehandDrawingToolMarqueeInput alloc] initWithUnscaledTapPoint:sub_10042B6C0(a4) inputType:x, y];
  if (v9)
  {
    v16 = objc_opt_class();
    v17 = [v9 info];
    v18 = sub_100014370(v16, v17);

    v19 = [v18 containingGroup];
    v20 = [v9 layout];
    if ([v20 isInGroup])
    {
      v21 = [v19 isFreehandDrawing];

      if (v21)
      {
LABEL_4:
        v22 = 1;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
    }

    v24 = [(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing];
    if (a4 == 2 || (v24 & 1) != 0)
    {
      v25 = objc_loadWeakRetained(&self->_icc);
      v26 = [v25 freehandDrawingToolkit];
      v27 = [v26 isLassoAbleToSelectMixedType];

      if (v14)
      {
        v22 = v27;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_26;
    }

    if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
    {
      if (v14)
      {
        if ([v14 handleMarqueeOrFingerTapOnMathResultStrokesInDrawingModeWithInput:v15])
        {
          goto LABEL_4;
        }
      }

      else
      {
        v28 = objc_opt_class();
        v29 = sub_100014370(v28, v9);
        v30 = v29;
        if (v29)
        {
          v31 = [v29 handledDirectTouchForDrawingModePencilOnlyAtPoint:{x, y}];

          if (v31)
          {
            goto LABEL_4;
          }
        }

        else
        {
        }
      }
    }

    v32 = [(CRLiOSDocumentMode *)self boardViewController];
    v33 = [v32 documentModeController];
    [v33 resetToDefaultModeAnimated:1];

    v34 = [v9 repForSelecting];
    v35 = [v34 info];

    if (v35 && [v35 isSelectable])
    {
      v36 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      v37 = [v36 canvasEditor];
      v44 = [v37 selectionPathWithInfo:v35];

      v38 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      v39 = [v38 editorController];
      [v39 setSelectionPath:v44];

      v40 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      v41 = [v40 layerHost];
      v42 = [v41 asiOSCVC];
      [v42 toggleDefaultEditUIForCurrentSelection];
    }

    v22 = 0;
    goto LABEL_26;
  }

  v23 = 0;
  if (!+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled]|| !v14)
  {
    goto LABEL_30;
  }

  v22 = [v14 handleMarqueeOrFingerTapOnMathResultStrokesInDrawingModeWithInput:v15];
LABEL_27:
  v23 = 0;
  if (v22 && v14)
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self p_handleMarqueeTapWithInput:v15 afterDelay:0.3];
    v23 = 1;
  }

LABEL_30:

  return v23;
}

- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)a3
{
  v4 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9, a3.x, a3.y];
  if (v4)
  {
    if ([(CRLiOSDocumentModeFreehandDrawing *)self currentlyDisplayingLassoSelectionMenu])
    {
      [(CRLiOSDocumentModeFreehandDrawing *)self hideEditMenuForLassoSelection];
    }

    else
    {
      v5 = [(CRLiOSDocumentMode *)self boardViewController];
      v6 = [v5 interactiveCanvasController];

      v7 = [v6 canvasEditor];
      v8 = +[NSSet set];
      v9 = [v7 selectionPathWithInfos:v8];

      v10 = [v6 editorController];
      [v10 setSelectionPath:v9];

      [(CRLiOSDocumentModeFreehandDrawing *)self presentEditMenuForLassoSelection];
    }
  }

  return v4;
}

- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v7 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    v9 = [WeakRetained freehandDrawingToolkit];
    v10 = [v9 currentTool];
    v11 = sub_100014370(v7, v10);

    if (v11)
    {
      [v11 cancelCommitSelectionForHandlingMarqueeTapForSmartSelection];
    }

    v47 = v11;
    v12 = [(CRLiOSDocumentMode *)self boardViewController];
    v13 = [v12 interactiveCanvasController];

    v14 = [v13 layerHost];
    v15 = [v14 asiOSCVC];

    v16 = [v15 delegate];
    v17 = [v16 pencilKitCanvasViewControllerForCanvasViewController:v15];

    v18 = [v13 hitRep:{x, y}];
    v19 = [v18 repForSelecting];

    v20 = objc_opt_class();
    v46 = sub_100014370(v20, v19);
    v45 = [v46 shapeInfo];
    v21 = [v45 isFreehandDrawingShape];
    v22 = objc_loadWeakRetained(&self->_icc);
    v23 = [v22 freehandDrawingToolkit];

    v44 = v23;
    v24 = [v23 currentTool];
    v25 = [v24 type] != 10;

    v26 = [v13 freehandDrawingToolkit];
    v27 = [v26 isLassoAbleToSelectMixedType];

    if ((v19 == 0) | v21 & 1 | v25)
    {
      v28 = v21;
    }

    else
    {
      v28 = v27 ^ 1 | v21;
    }

    if ([(CRLiOSDocumentModeFreehandDrawing *)self currentlyDisplayingLassoSelectionMenu])
    {
      [(CRLiOSDocumentModeFreehandDrawing *)self hideEditMenuForLassoSelection];
    }

    v29 = [v15 canvasView];
    v30 = [v29 unscaledCoordinateSpace];
    v31 = [v15 canvasView];
    v32 = [v31 window];
    v33 = [v32 coordinateSpace];
    [v30 convertPoint:v33 toCoordinateSpace:{x, y}];
    v35 = v34;
    v37 = v36;

    v38 = [v15 smartSelectionManager];
    v39 = [v17 smartSelectionView];
    [v39 frame];
    [v13 convertBoundsToUnscaledRect:?];
    v48.x = x;
    v48.y = y;
    v40 = CGRectContainsPoint(v49, v48);

    v41 = [v17 smartSelectionView];

    if (v41 && v38 && v40)
    {
      v42 = [v17 smartSelectionView];
      [v38 handleDoubleTapInputAtUnscaledPoint:v42 inSelectionView:{v35, v37}];
    }

    else
    {
      [v38 handleDoubleTapInputAtUnscaledPoint:{v35, v37}];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

- (void)pencilKitDidSmartSelectStrokesInDrawingShapeItems:(id)a3
{
  v10 = a3;
  v4 = [(CRLiOSDocumentMode *)self boardViewController];
  v5 = [v4 interactiveCanvasController];

  v6 = [v5 canvasEditor];
  v7 = [NSSet setWithArray:v10];
  v8 = [v6 selectionPathWithInfos:v7];

  v9 = [v5 editorController];
  [v9 setSelectionPath:v8];

  if ([(CRLiOSDocumentModeFreehandDrawing *)self currentlyDisplayingLassoSelectionMenu])
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self hideEditMenuForLassoSelection];
  }

  if ([v10 count])
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self presentEditMenuForLassoSelection];
  }
}

- (void)p_editMenuTapReceived:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_icc);
  v6 = [v5 canvasView];
  [v4 locationInView:v6];
  [v5 convertBoundsToUnscaledPoint:?];
  v8 = v7;
  v10 = v9;

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v12 = [WeakRetained layerHost];
  v13 = [v12 asiOSCVC];

  [v13 setLastTapPoint:{v8, v10}];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    v14 = objc_loadWeakRetained(&self->_icc);
    v15 = [v14 freehandDrawingToolkit];
    v16 = [v15 currentTool];
    if ([v16 type] == 10)
    {
    }

    else
    {
      v17 = [(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing];

      if ((v17 & 1) == 0)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v18 = objc_loadWeakRetained(&self->_icc);
        v19 = [v18 canvas];
        v20 = [v19 topLevelReps];

        v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v30;
          while (2)
          {
            v24 = 0;
            do
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v29 + 1) + 8 * v24);
              v26 = objc_opt_class();
              v27 = sub_100014370(v26, v25);
              v28 = v27;
              if (v27 && [v27 handledDirectTouchForDrawingModePencilOnlyAtPoint:{v8, v10}])
              {

                goto LABEL_16;
              }

              v24 = v24 + 1;
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  [v13 toggleEditMenuForCurrentSelection];
LABEL_16:
}

- (void)p_updatePanAndDrawingGestureRecognizersForState
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained canvasView];
  v5 = [v4 enclosingScrollView];
  v6 = [v5 panGestureRecognizer];

  v7 = objc_loadWeakRetained(&self->_icc);
  v8 = [v7 layerHost];
  v9 = [v8 asiOSCVC];
  v10 = [v9 freehandDrawingGestureRecognizer];

  if ([(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing])
  {
    v11 = &off_1018E12C0;
    previousCanvasScrollMinTouchCount = 2;
  }

  else
  {
    previousCanvasScrollMinTouchCount = self->_previousCanvasScrollMinTouchCount;
    v11 = &off_1018E12D8;
  }

  [v6 setMinimumNumberOfTouches:previousCanvasScrollMinTouchCount];
  [v10 setAllowedTouchTypes:v11];
  v13 = [v10 allowedTouchTypes];
  v14 = [v13 arrayByAddingObject:&off_1018E2190];
  [v10 setAllowedTouchTypes:v14];

  if (!self->_editMenuTapGR)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101338410();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101338424();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013384C0();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing p_updatePanAndDrawingGestureRecognizersForState]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:872 isFatal:0 description:"invalid nil value for '%{public}s'", "_editMenuTapGR"];
  }

  -[UITapGestureRecognizer setNumberOfTouchesRequired:](self->_editMenuTapGR, "setNumberOfTouchesRequired:", [v6 minimumNumberOfTouches]);
}

- (id)p_menuElementsToDisplayForLassoSelectionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v8 = [WeakRetained editorController];
  v9 = [v8 currentEditors];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 addContextualMenuElementsToArray:v6 atPoint:{x, y}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (![(CRLiOSDocumentModeFreehandDrawing *)self p_areAnyDrawingItemsOrDrawingShapesSelected])
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self p_insertEditCommandInto:v6];
  }

  return v6;
}

- (BOOL)p_areAnyDrawingItemsOrDrawingShapesSelected
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained selectionModelTranslator];
  v5 = objc_loadWeakRetained(&self->_icc);
  v6 = [v5 editorController];
  v7 = [v6 selectionPath];
  v8 = [v4 boardItemsForSelectionPath:v7];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v14 = 1;
        goto LABEL_13;
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (void)p_insertEditCommandInto:(id)a3
{
  v3 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Edit" value:0 table:0];
  v6 = [UIImage systemImageNamed:@"paintbrush"];
  v38 = [UICommand commandWithTitle:v5 image:v6 action:"showMiniFormatterToExitDrawingMode:" propertyList:0];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = v3;
  v7 = [v3 copy];
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    v40 = *v49;
    v41 = v7;
    do
    {
      v11 = 0;
      v42 = v9;
      do
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * v11);
        v13 = objc_opt_class();
        v14 = sub_100014370(v13, v12);
        v15 = v14;
        if (v14)
        {
          v16 = [v14 identifier];
          v17 = [v16 isEqualToString:@"CRLCutCopyPasteMenuIdentifier"];

          if (v17)
          {
            v43 = v11;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v18 = v15;
            v19 = [v15 children];
            v20 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v45;
              v23 = 0x7FFFFFFFFFFFFFFFLL;
              do
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v45 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v25 = *(*(&v44 + 1) + 8 * i);
                  v26 = objc_opt_class();
                  v27 = sub_100014370(v26, v25);
                  v28 = v27;
                  if (v27 && [v27 action] == "copy:")
                  {
                    v29 = [v18 children];
                    v23 = [v29 indexOfObjectIdenticalTo:v25] + 1;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v21);

              v10 = v40;
              v7 = v41;
              v15 = v18;
              v9 = v42;
              v11 = v43;
              if (v23 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v33 = [v15 children];
                v34 = [v33 mutableCopy];

                v35 = v38;
                [v34 insertObject:v38 atIndex:v23];
                v36 = [v15 menuByReplacingChildren:v34];
                v37 = v39;
                [v39 replaceObjectAtIndex:objc_msgSend(v39 withObject:{"indexOfObjectIdenticalTo:", v15), v36}];

                goto LABEL_32;
              }
            }

            else
            {

              v11 = v43;
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v9);
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013384E8();
  }

  v37 = v39;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101338510();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013385A0();
  }

  v30 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v30);
  }

  v31 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing p_insertEditCommandInto:]"];
  v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
  [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:935 isFatal:0 description:"Unable to find paste menu item to insert after."];

  v35 = v38;
  [v39 addObject:v38];
LABEL_32:
}

- (unint64_t)p_currentLassoSelectionType
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained selectionModelTranslator];
  v5 = objc_loadWeakRetained(&self->_icc);
  v6 = [v5 editorController];
  v7 = [v6 selectionPath];
  v8 = [v4 boardItemsForSelectionPath:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = 1;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v12 |= isKindOfClass ^ 1;
          v13 |= isKindOfClass;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);

    if (!(v12 & 1 | ((v13 & 1) == 0)))
    {
      v17 = 1;
      goto LABEL_19;
    }

    if (!(v13 & 1 | ((v12 & 1) == 0)))
    {
      v17 = 2;
      goto LABEL_19;
    }
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

  if ((v13 | v12))
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (unint64_t)p_currentLockedInfosCount
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v4 = [WeakRetained editorController];
  v5 = [v4 selectionPath];

  v6 = objc_loadWeakRetained(&self->_icc);
  v7 = [v6 selectionModelTranslator];
  v8 = objc_loadWeakRetained(&self->_icc);
  v9 = [v8 editorController];
  v10 = [v9 selectionPath];
  v11 = [v7 boardItemsForSelectionPath:v10];

  v12 = objc_loadWeakRetained(&self->_icc);
  v13 = [v12 selectionModelTranslator];
  v14 = [v13 unlockedBoardItemsForSelectionPath:v5];

  v15 = [v11 count];
  if (v15 < [v14 count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013385C8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013385DC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133866C();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing p_currentLockedInfosCount]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:967 isFatal:0 description:"unlockedItems should not have more items than selectedItems."];
  }

  v19 = [v11 count];
  v20 = v19 - [v14 count];

  return v20;
}

- (void)p_handleMarqueeTapWithInput:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained freehandDrawingToolkit];
  v10 = [v9 currentTool];
  v11 = sub_100014370(v7, v10);

  [v11 performSelector:"handleMarqueeTapWithInput:" withObject:v6 afterDelay:a4];
}

- (void)beginDrawingTransformMode
{
  v3 = [CRLiOSDocumentModeFreehandDrawingTransform alloc];
  v4 = [(CRLiOSDocumentMode *)self boardViewController];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v8 = [(CRLiOSDocumentModeFreehandDrawingTransform *)v3 initWithBoardViewController:v4 andInteractiveCanvasController:WeakRetained];

  v6 = [(CRLiOSDocumentMode *)self boardViewController];
  v7 = [v6 documentModeController];
  [v7 setMode:v8 animated:0];
}

- (id)toolTray
{
  v2 = [(CRLiOSDocumentMode *)self boardViewController];
  v3 = [v2 sharedPencilTray];

  return v3;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_loadWeakRetained(&self->_icc);
  v9 = [v8 canvasView];
  [v6 locationInView:v9];
  [v8 convertBoundsToUnscaledPoint:?];
  v11 = v10;
  v13 = v12;

  v14 = [v6 type];
  LOBYTE(self) = [(CRLiOSDocumentModeFreehandDrawing *)self p_gestureRecognizer:v7 shouldReceiveTouchAtLocation:v14 touchType:v11, v13];

  return self;
}

- (BOOL)p_gestureRecognizer:(id)a3 shouldReceiveTouchAtLocation:(CGPoint)a4 touchType:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v11 = [WeakRetained layerHost];
  v12 = [v11 asiOSCVC];

  v13 = [v12 delegate];
  v14 = objc_opt_class();
  v15 = sub_100014370(v14, v13);
  v16 = [v15 presentedViewController];

  if (v16)
  {
    goto LABEL_2;
  }

  if (self->_editMenuTapGR != v9)
  {
    goto LABEL_4;
  }

  v19 = objc_loadWeakRetained(&self->_icc);
  v20 = [v19 freehandDrawingToolkit];
  v21 = [v20 currentTool];
  v33 = [v21 type];

  if (v33 == 10)
  {
LABEL_2:
    v17 = 0;
    goto LABEL_5;
  }

  if (a5 || [(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing])
  {
LABEL_4:
    v17 = 1;
    goto LABEL_5;
  }

  v22 = objc_loadWeakRetained(&self->_icc);
  v23 = [v22 hitRep:{x, y}];

  if (v23)
  {
    v24 = objc_opt_class();
    v25 = [v23 info];
    v26 = sub_100014370(v24, v25);

    v27 = [v26 containingGroup];
    if (([v27 isFreehandDrawing] & 1) != 0 || (objc_msgSend(v23, "repForSelecting"), v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
    {
      v29 = [v23 parentRep];

      if (v29)
      {
        v30 = objc_opt_class();
        v31 = [v23 parentRep];
        v32 = sub_100014370(v30, v31);
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_5:
  return v17;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v6 = a4;
  v7 = [v6 identifier];

  if (v7 == @"CRLFreehandDrawingModeLassoSelectionMenuIdentifier")
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    [v6 sourcePoint];
    [WeakRetained convertBoundsToUnscaledPoint:?];
    v15 = v14;
    v17 = v16;

    v18 = [(CRLiOSDocumentModeFreehandDrawing *)self p_menuElementsToDisplayForLassoSelectionAtPoint:v15, v17];
    v12 = [UIMenu menuWithTitle:&stru_1018BCA28 children:v18];
  }

  else
  {
    v8 = [v6 identifier];

    if (v8 != @"CRLFreehandDrawingModeLassoSelectionMenuIdentifier")
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101338694();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013386A8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101338738();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLiOSDocumentModeFreehandDrawing editMenuInteraction:menuForConfiguration:suggestedActions:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLiOSDocumentModeFreehandDrawing.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1037 isFatal:0 description:"Freehand drawing mode should only accept CRLFreehandDrawingModeLassoSelectionEditMenuIdentifier now for lasso selection feature."];
    }

    v12 = 0;
  }

  return v12;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v4 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController:a3];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];

  v7 = [v4 editorController];
  v8 = [v7 selectionPath];

  [v6 targetRectForEditMenu:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5
{
  v12 = [NSNotificationCenter defaultCenter:a3];
  v6 = +[NSNotification CRLCommandControllerWillUndo];
  v7 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v8 = [v7 commandController];
  [v12 addObserver:self selector:"p_commandControllerWillUndoOrRedo:" name:v6 object:v8];

  v9 = +[NSNotification CRLCommandControllerWillRedo];
  v10 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v11 = [v10 commandController];
  [v12 addObserver:self selector:"p_commandControllerWillUndoOrRedo:" name:v9 object:v11];
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v12 = [NSNotificationCenter defaultCenter:a3];
  v6 = +[NSNotification CRLCommandControllerWillRedo];
  v7 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v8 = [v7 commandController];
  [v12 removeObserver:self name:v6 object:v8];

  v9 = +[NSNotification CRLCommandControllerWillUndo];
  v10 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  v11 = [v10 commandController];
  [v12 removeObserver:self name:v9 object:v11];
}

- (id)contextMenuConfigurationForContextMenuInteraction:(id)a3 atPoint:(CGPoint)a4 onInteractiveCanvasController:(id)a5
{
  y = a4.y;
  x = a4.x;
  if ([a3 menuAppearance] == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CRLiOSDocumentModeFreehandDrawing *)self p_menuElementsToDisplayForLassoSelectionAtPoint:x, y];
    if ([v9 count])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1002317CC;
      v12[3] = &unk_10184B4C8;
      v12[4] = v9;
      v10 = objc_retainBlock(v12);
      v8 = [UIContextMenuConfiguration configurationWithIdentifier:@"CRLFreehandDrawingModeLassoSelectionMenuIdentifier" previewProvider:0 actionProvider:v10];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained layerHost];
  v10 = [v9 asiOSCVC];

  v11 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v10 freehandDrawingGestureRecognizer];
  if (v12 != v6)
  {
    goto LABEL_3;
  }

  v13 = [v10 doubleTapGestureRecognizer];

  if (v13 == v7)
  {
    v19 = objc_loadWeakRetained(&self->_icc);
    v12 = [v19 freehandDrawingToolkit];

    v24 = [v10 pencilMediator];
    v20 = [v12 currentTool];
    v21 = [v20 type];

    if (v21 == 10 || ([v24 prefersPencilOnlyDrawing] & 1) == 0)
    {

LABEL_3:
      goto LABEL_5;
    }

    v22 = [v10 freehandDrawingGestureRecognizer];
    v23 = [v22 inputType];

    if (v23 == 1)
    {
      v17 = 1;
      goto LABEL_10;
    }
  }

LABEL_5:
  v14 = objc_loadWeakRetained(&self->_icc);
  v15 = [v14 drawingIntelligenceProvider];

  v17 = 0;
  if ((v11 | [CRLFeatureFlagsHelper isOSFeatureEnabled:11]))
  {
    if ([v15 isGestureRecognizerFromDescendantOfDetectorView:v7])
    {
      v16 = [v10 doubleTapGestureRecognizer];

      if (v16 == v6)
      {
        v17 = 1;
      }
    }
  }

LABEL_10:
  return v17;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained layerHost];
  v10 = [v9 asiOSCVC];

  if (![CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    goto LABEL_10;
  }

  v11 = [v10 freehandDrawingGestureRecognizer];
  if (v11 == v6)
  {
    v12 = [v10 doubleTapGestureRecognizer];
    v9 = v12;
    if (v12 == v7)
    {

      goto LABEL_12;
    }
  }

  v13 = [v10 doubleTapGestureRecognizer];
  v14 = v13;
  if (v13 != v6)
  {

    v15 = 0;
    v16 = 0;
    if (v11 != v6)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:

    v16 = v15;
    goto LABEL_14;
  }

  v17 = [v10 freehandDrawingGestureRecognizer];

  if (v11 == v6)
  {
  }

  if (v17 == v7)
  {
LABEL_12:
    v18 = objc_loadWeakRetained(&self->_icc);
    v11 = [v18 freehandDrawingToolkit];

    v9 = [v11 currentTool];
    v15 = [v9 type] == 10;
    goto LABEL_13;
  }

LABEL_10:
  v16 = 0;
LABEL_15:

  return v16;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);

  return WeakRetained;
}

+ (void)presentEducationPaneIfNecessaryIn:(id)a3
{
  v3 = a3;
  sub_1006EF79C();
}

@end