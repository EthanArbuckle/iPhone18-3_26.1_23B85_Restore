@interface CRLiOSDocumentModeFreehandDrawing
+ (void)presentEducationPaneIfNecessaryIn:(id)in;
- (BOOL)allowGestureInRestrictedGestureMode:(id)mode;
- (BOOL)allowsFingerDrawing;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point touchType:(int64_t)type;
- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)point;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidForEditorController:(id)controller;
- (BOOL)p_areAnyDrawingItemsOrDrawingShapesSelected;
- (BOOL)p_gestureRecognizer:(id)recognizer shouldReceiveTouchAtLocation:(CGPoint)location touchType:(int64_t)type;
- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)point touchType:(int64_t)type;
- (BOOL)wantsAlternateContextMenuBehaviorAtPoint:(CGPoint)point;
- (BOOL)wantsToSuppressMultiselectionWithSingleBounds;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLiOSDocumentModeFreehandDrawing)initWithBoardViewController:(id)controller andInteractiveCanvasController:(id)canvasController;
- (id)contextMenuConfigurationForContextMenuInteraction:(id)interaction atPoint:(CGPoint)point onInteractiveCanvasController:(id)controller;
- (id)cursorAtPoint:(CGPoint)point withCursorPlatformObject:(id)object;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (id)gesturesToAdjustIfPencilShouldSelectAndScrollFromGestures:(id)gestures;
- (id)p_menuElementsToDisplayForLassoSelectionAtPoint:(CGPoint)point;
- (id)toolTray;
- (id)validateSelectionPathIfNeededFromPersistableSelectionPath:(id)path withSelectionPathValidator:(id)validator;
- (unint64_t)p_currentLassoSelectionType;
- (unint64_t)p_currentLockedInfosCount;
- (void)beginDrawingTransformMode;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)hideEditMenuForLassoSelection;
- (void)modeDidBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeDidEndForMode:(id)mode forced:(BOOL)forced;
- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced;
- (void)p_addObservationOfInteractiveCanvasController:(id)controller;
- (void)p_deselectAllInfosNotInDrawingsOrDrawings;
- (void)p_editMenuTapReceived:(id)received;
- (void)p_handleMarqueeTapWithInput:(id)input afterDelay:(double)delay;
- (void)p_insertEditCommandInto:(id)into;
- (void)p_removeObservationOfInteractiveCanvasController:(id)controller;
- (void)p_updatePanAndDrawingGestureRecognizersForState;
- (void)pencilKitDidSmartSelectStrokesInDrawingShapeItems:(id)items;
- (void)prefersPencilOnlyDrawingDidChange;
- (void)presentEditMenuForLassoSelection;
- (void)selectionPathDidChange:(id)change;
- (void)setInteractiveCanvasController:(id)controller;
- (void)toolkitDidUpdateCurrentToolSelection;
- (void)toolkitDidUpdateRulerVisibility;
@end

@implementation CRLiOSDocumentModeFreehandDrawing

- (CRLiOSDocumentModeFreehandDrawing)initWithBoardViewController:(id)controller andInteractiveCanvasController:(id)canvasController
{
  canvasControllerCopy = canvasController;
  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFreehandDrawing;
  v7 = [(CRLiOSDocumentMode *)&v10 initWithBoardViewController:controller];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_icc, canvasControllerCopy);
    v8->_previousCanvasScrollMinTouchCount = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (BOOL)allowGestureInRestrictedGestureMode:(id)mode
{
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  allTouchesDoneGestureRecognizer = [asiOSCVC allTouchesDoneGestureRecognizer];
  if (allTouchesDoneGestureRecognizer == modeCopy)
  {
    goto LABEL_16;
  }

  preventScrollGestureRecognizer = [asiOSCVC preventScrollGestureRecognizer];
  if (preventScrollGestureRecognizer == modeCopy)
  {
LABEL_15:

LABEL_16:
    v17 = 1;
    goto LABEL_17;
  }

  zoomGestureRecognizer = [asiOSCVC zoomGestureRecognizer];
  if (zoomGestureRecognizer == modeCopy)
  {
LABEL_14:

    goto LABEL_15;
  }

  freehandDrawingGestureRecognizer = [asiOSCVC freehandDrawingGestureRecognizer];
  if (freehandDrawingGestureRecognizer == modeCopy)
  {
LABEL_13:

    goto LABEL_14;
  }

  knobDragGestureRecognizer = [asiOSCVC knobDragGestureRecognizer];
  if (knobDragGestureRecognizer == modeCopy)
  {
LABEL_12:

    goto LABEL_13;
  }

  singleTapGestureRecognizer = [asiOSCVC singleTapGestureRecognizer];
  if (singleTapGestureRecognizer == modeCopy)
  {
LABEL_11:

    goto LABEL_12;
  }

  repDragGestureRecognizer = [asiOSCVC repDragGestureRecognizer];
  v15 = repDragGestureRecognizer;
  if (repDragGestureRecognizer == modeCopy)
  {

    goto LABEL_11;
  }

  doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];

  if (doubleTapGestureRecognizer == modeCopy)
  {
    v17 = 1;
    goto LABEL_18;
  }

  allTouchesDoneGestureRecognizer = [asiOSCVC appSpecificGestureRecognizersAllowedDuringFreehandDrawing];
  v17 = [allTouchesDoneGestureRecognizer containsObject:modeCopy];
LABEL_17:

LABEL_18:
  return v17;
}

- (id)gesturesToAdjustIfPencilShouldSelectAndScrollFromGestures:(id)gestures
{
  v4 = [gestures mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  singleTapGestureRecognizer = [asiOSCVC singleTapGestureRecognizer];
  [v4 removeObject:singleTapGestureRecognizer];

  repDragGestureRecognizer = [asiOSCVC repDragGestureRecognizer];
  [v4 removeObject:repDragGestureRecognizer];

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];
    [v4 removeObject:doubleTapGestureRecognizer];
  }

  return v4;
}

- (id)validateSelectionPathIfNeededFromPersistableSelectionPath:(id)path withSelectionPathValidator:(id)validator
{
  pathCopy = path;
  validatorCopy = validator;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];

  currentTool = [freehandDrawingToolkit currentTool];
  type = [currentTool type];

  isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];
  if (type != 10 || isLassoAbleToSelectMixedType == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [validatorCopy selectionPathFromPersistableSelectionPath:pathCopy selectableBoardItemsFromParentMapAndSiblings:&stru_10184B0E0];
  }

  return v14;
}

- (void)setInteractiveCanvasController:(id)controller
{
  obj = controller;
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

- (void)p_addObservationOfInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v6 = +[NSNotificationCenter defaultCenter];
  editorController = [controllerCopy editorController];

  [v6 addObserver:self selector:"selectionPathDidChange:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];
  self->_isObservingICCNotifications = 1;
}

- (void)p_removeObservationOfInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v6 = +[NSNotificationCenter defaultCenter];
  editorController = [controllerCopy editorController];

  [v6 removeObserver:self name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:editorController];
  self->_isObservingICCNotifications = 0;
}

- (void)selectionPathDidChange:(id)change
{
  object = [change object];
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];

  if (object != editorController)
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
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];

  currentTool = [freehandDrawingToolkit currentTool];
  type = [currentTool type];

  if (type != 10)
  {
    v14 = objc_loadWeakRetained(&self->_icc);
    editorController2 = [v14 editorController];
    v16 = [editorController2 mostSpecificCurrentEditorOfClass:objc_opt_class()];

    if ([CRLFeatureFlagsHelper isOSFeatureEnabled:1])
    {
      v17 = objc_loadWeakRetained(&self->_icc);
      editorController3 = [v17 editorController];
      v19 = [editorController3 mostSpecificCurrentEditorOfClass:objc_opt_class()];

      v20 = objc_loadWeakRetained(&self->_icc);
      editorController4 = [v20 editorController];
      v22 = [editorController4 mostSpecificCurrentEditorOfClass:objc_opt_class()];

      if (v19 || !v22)
      {
        v23 = objc_loadWeakRetained(&self->_icc);
        editorController5 = [v23 editorController];
        v25 = [editorController5 mostSpecificCurrentEditorOfClass:objc_opt_class()];

        if (v25)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [freehandDrawingToolkit setCurrentToolSelection:10];
          }
        }
      }

      else
      {
        [freehandDrawingToolkit setCurrentToolSelection:10];
      }
    }

    else if (v16)
    {
      [freehandDrawingToolkit setCurrentToolSelection:10];
    }
  }
}

- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  v22.receiver = self;
  v22.super_class = CRLiOSDocumentModeFreehandDrawing;
  modeCopy = mode;
  [(CRLiOSDocumentMode *)&v22 modeWillBeginFromMode:modeCopy forced:forcedCopy];
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  presentedViewController = [boardViewController presentedViewController];

  if (presentedViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [boardViewController dismissPresentedViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [(CRLiOSDocumentModeFreehandDrawing *)self p_addObservationOfInteractiveCanvasController:WeakRetained];

  v10 = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [v10 freehandDrawingToolkit];

  if (!freehandDrawingToolkit)
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

  [freehandDrawingToolkit addToolkitObserver:self];
  toolTray = [modeCopy toolTray];
  toolTray2 = [(CRLiOSDocumentModeFreehandDrawing *)self toolTray];

  if (toolTray == toolTray2)
  {
    self->_didFinishPresentingBottomToolTray = 1;
  }

  pencilModeType = [modeCopy pencilModeType];

  if (pencilModeType != 1)
  {
    [_TtC8Freeform23CRLAnalyticsFeatureUsed logFeatureUsedWithName:6];
  }

  v18 = [[UIEditMenuInteraction alloc] initWithDelegate:self];
  lassoSelectionEditMenuInteraction = self->_lassoSelectionEditMenuInteraction;
  self->_lassoSelectionEditMenuInteraction = v18;

  [(UIEditMenuInteraction *)self->_lassoSelectionEditMenuInteraction setPresentsContextMenuAsSecondaryAction:0];
  v20 = objc_loadWeakRetained(&self->_icc);
  canvasView = [v20 canvasView];
  [canvasView addInteraction:self->_lassoSelectionEditMenuInteraction];
}

- (void)modeDidBeginFromMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  v33.receiver = self;
  v33.super_class = CRLiOSDocumentModeFreehandDrawing;
  modeCopy = mode;
  [(CRLiOSDocumentMode *)&v33 modeDidBeginFromMode:modeCopy forced:forcedCopy];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateAllLayers];

  v8 = objc_loadWeakRetained(&self->_icc);
  layerHost = [v8 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  canvasView = [asiOSCVC canvasView];
  v12 = objc_opt_class();
  v13 = sub_100014370(v12, modeCopy);

  if (v13)
  {
    self->_previousCanvasScrollMinTouchCount = v13[3];
  }

  else
  {
    enclosingScrollView = [canvasView enclosingScrollView];
    panGestureRecognizer = [enclosingScrollView panGestureRecognizer];

    self->_previousCanvasScrollMinTouchCount = [panGestureRecognizer minimumNumberOfTouches];
  }

  freehandDrawingGestureRecognizer = [asiOSCVC freehandDrawingGestureRecognizer];
  allowedTouchTypes = [freehandDrawingGestureRecognizer allowedTouchTypes];
  previousFreehandGestureTouchTypes = self->_previousFreehandGestureTouchTypes;
  self->_previousFreehandGestureTouchTypes = allowedTouchTypes;

  repDragGestureRecognizer = [asiOSCVC repDragGestureRecognizer];
  [repDragGestureRecognizer setAllowedTouchTypes:&off_1018E1230];

  singleTapGestureRecognizer = [asiOSCVC singleTapGestureRecognizer];
  [singleTapGestureRecognizer setAllowedTouchTypes:&off_1018E1230];

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setAllowedTouchTypes:&off_1018E1248];
  }

  v22 = [[CRLiOSTapGestureRecognizer alloc] initWithTarget:self action:"p_editMenuTapReceived:"];
  editMenuTapGR = self->_editMenuTapGR;
  self->_editMenuTapGR = &v22->super;

  [(UITapGestureRecognizer *)self->_editMenuTapGR setName:@"freehand edit tap GR"];
  [(UITapGestureRecognizer *)self->_editMenuTapGR setDelegate:self];
  [(UITapGestureRecognizer *)self->_editMenuTapGR setAllowedTouchTypes:&off_1018E1260];
  [canvasView addGestureRecognizer:self->_editMenuTapGR];
  [(CRLiOSDocumentModeFreehandDrawing *)self p_updatePanAndDrawingGestureRecognizersForState];
  if (!forcedCopy)
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self p_deselectAllInfosNotInDrawingsOrDrawings];
  }

  v24 = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [v24 freehandDrawingToolkit];

  if (!freehandDrawingToolkit)
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

  isRulerToolShowing = [freehandDrawingToolkit isRulerToolShowing];
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  pencilKitCanvasView = [boardViewController pencilKitCanvasView];
  [pencilKitCanvasView setRulerActive:isRulerToolShowing];

  boardViewController2 = [(CRLiOSDocumentMode *)self boardViewController];
  [CRLiOSDocumentModeFreehandDrawing presentEducationPaneIfNecessaryIn:boardViewController2];
}

- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [(CRLiOSDocumentModeFreehandDrawing *)self p_removeObservationOfInteractiveCanvasController:WeakRetained];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_24;
  }

  v8 = objc_loadWeakRetained(&self->_icc);
  layerHost = [v8 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC hideEditMenu];
  delegate = [asiOSCVC delegate];
  v12 = [delegate pencilKitCanvasViewControllerForCanvasViewController:asiOSCVC];

  [v12 removeSmartSelectionViewIfNecessary];
  v13 = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [v13 freehandDrawingToolkit];

  if (!freehandDrawingToolkit)
  {
    v61 = forcedCopy;
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

    forcedCopy = v61;
  }

  currentTool = [freehandDrawingToolkit currentTool];
  type = [currentTool type];

  if ([freehandDrawingToolkit isLassoAbleToSelectMixedType])
  {
    if ((forcedCopy & 1) == 0)
    {
      v62 = forcedCopy;
      v20 = objc_loadWeakRetained(&self->_icc);
      v21 = v20;
      if (type == 10)
      {
        v60 = modeCopy;
        editorController = [v20 editorController];
        selectionPath = [editorController selectionPath];

        v24 = objc_loadWeakRetained(&self->_icc);
        selectionModelTranslator = [v24 selectionModelTranslator];

        v59 = selectionPath;
        v26 = [selectionModelTranslator selectionPathRemovingCrossContainerSelectionsForSelectionPath:selectionPath];
        v27 = [v26 mostSpecificSelectionOfClass:objc_opt_class()];
        editorController3 = v26;
        v29 = editorController3;
        if ([v27 containsKindOfClass:objc_opt_class()])
        {
          boardItems = [v27 boardItems];
          v29 = [selectionModelTranslator selectionPathForInfos:boardItems];
        }

        v58 = v27;
        v31 = objc_loadWeakRetained(&self->_icc);
        editorController2 = [v31 editorController];
        [editorController2 setSelectionPath:v29 withFlags:0x2000];

        v33 = v59;
        modeCopy = v60;
        goto LABEL_22;
      }

      canvasEditor = [v20 canvasEditor];
      v38 = +[NSSet set];
      v39 = [canvasEditor selectionPathWithInfos:v38];

      v33 = v39;
LABEL_21:

      selectionModelTranslator = objc_loadWeakRetained(&self->_icc);
      editorController3 = [selectionModelTranslator editorController];
      [editorController3 setSelectionPath:v33 withFlags:0x2000];
LABEL_22:

      forcedCopy = v62;
    }
  }

  else if ((forcedCopy & 1) == 0)
  {
    v62 = forcedCopy;
    v21 = objc_loadWeakRetained(&self->_icc);
    canvasEditor2 = [v21 canvasEditor];
    +[NSSet set];
    v36 = v35 = modeCopy;
    v33 = [canvasEditor2 selectionPathWithInfos:v36];

    modeCopy = v35;
    goto LABEL_21;
  }

LABEL_24:
  v40 = objc_loadWeakRetained(&self->_icc);
  canvasView = [v40 canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  panGestureRecognizer = [enclosingScrollView panGestureRecognizer];

  [panGestureRecognizer setMinimumNumberOfTouches:self->_previousCanvasScrollMinTouchCount];
  v44 = objc_loadWeakRetained(&self->_icc);
  layerHost2 = [v44 layerHost];
  asiOSCVC2 = [layerHost2 asiOSCVC];

  freehandDrawingGestureRecognizer = [asiOSCVC2 freehandDrawingGestureRecognizer];
  [freehandDrawingGestureRecognizer setAllowedTouchTypes:self->_previousFreehandGestureTouchTypes];
  if ([(CRLiOSDocumentMode *)self shouldSelectAndScrollWithApplePencil])
  {
    v48 = &off_1018E1278;
  }

  else
  {
    v48 = &off_1018E1290;
  }

  repDragGestureRecognizer = [asiOSCVC2 repDragGestureRecognizer];
  [repDragGestureRecognizer setAllowedTouchTypes:v48];

  singleTapGestureRecognizer = [asiOSCVC2 singleTapGestureRecognizer];
  [singleTapGestureRecognizer setAllowedTouchTypes:v48];

  view = [(UITapGestureRecognizer *)self->_editMenuTapGR view];
  [view removeGestureRecognizer:self->_editMenuTapGR];

  editMenuTapGR = self->_editMenuTapGR;
  self->_editMenuTapGR = 0;

  v53 = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit2 = [v53 freehandDrawingToolkit];

  if (!freehandDrawingToolkit2)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    v63 = forcedCopy;
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

    forcedCopy = v63;
  }

  [freehandDrawingToolkit2 setRulerToolShowing:0];
  [freehandDrawingToolkit2 removeToolkitObserver:self];
  v64.receiver = self;
  v64.super_class = CRLiOSDocumentModeFreehandDrawing;
  [(CRLiOSDocumentMode *)&v64 modeWillEndForMode:modeCopy forced:forcedCopy];
}

- (void)modeDidEndForMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  modeCopy = mode;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained invalidateAllLayers];

  if (self->_lassoSelectionEditMenuInteraction)
  {
    v8 = objc_loadWeakRetained(&self->_icc);
    canvasView = [v8 canvasView];
    [canvasView removeInteraction:self->_lassoSelectionEditMenuInteraction];

    lassoSelectionEditMenuInteraction = self->_lassoSelectionEditMenuInteraction;
    self->_lassoSelectionEditMenuInteraction = 0;
  }

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v11 = objc_loadWeakRetained(&self->_icc);
    layerHost = [v11 layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setAllowedTouchTypes:&off_1018E12A8];
  }

  v15.receiver = self;
  v15.super_class = CRLiOSDocumentModeFreehandDrawing;
  [(CRLiOSDocumentMode *)&v15 modeDidEndForMode:modeCopy forced:forcedCopy];
}

- (BOOL)wantsAlternateContextMenuBehaviorAtPoint:(CGPoint)point
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  v6 = [currentTool type] != 10;

  return v6;
}

- (id)cursorAtPoint:(CGPoint)point withCursorPlatformObject:(id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];

  type = [currentTool type];
  if (type < 8)
  {
    v9 = objc_opt_class();
    v10 = sub_100013F00(v9, currentTool);
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

  if (type == 9)
  {
    v21 = objc_loadWeakRetained(&self->_icc);
    freehandDrawingToolkit2 = [v21 freehandDrawingToolkit];
    toolkitUIState = [freehandDrawingToolkit2 toolkitUIState];
    eraserToolErasesWholeObjects = [toolkitUIState eraserToolErasesWholeObjects];

    v25 = objc_opt_class();
    v26 = sub_100013F00(v25, currentTool);
    if (eraserToolErasesWholeObjects)
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
  toolTray = [(CRLiOSDocumentModeFreehandDrawing *)self toolTray];
  if (!toolTray)
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
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  pencilMediator = [asiOSCVC pencilMediator];

  if (!pencilMediator)
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

  if ([toolTray hidden])
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = [pencilMediator prefersPencilOnlyDrawing] ^ 1;
  }

  return v14;
}

- (BOOL)wantsToSuppressMultiselectionWithSingleBounds
{
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  v5 = [currentTool type] != 10;

  return v5;
}

- (void)presentEditMenuForLassoSelection
{
  if (!+[CRLAccessibility isVoiceOverEnabled])
  {
    if (self->_lassoSelectionEditMenuInteraction)
    {
      interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      layerHost = [interactiveCanvasController layerHost];
      asiOSCVC = [layerHost asiOSCVC];

      editorController = [interactiveCanvasController editorController];
      selectionPath = [editorController selectionPath];

      v7 = [asiOSCVC editMenuConfigrationForSelectionPath:selectionPath withConfigurationIdentifier:@"CRLFreehandDrawingModeLassoSelectionMenuIdentifier"];
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
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  type = [currentTool type];

  if (type != 10)
  {
    editorController = [interactiveCanvasController editorController];
    v7 = [editorController mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor];
    v14 = sub_1003035DC(v7, 1, v8, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLFreehandDrawingHostingEditor);

    canvasEditor = [interactiveCanvasController canvasEditor];
    drawingItemsFromCurrentSelectionPath = [v14 drawingItemsFromCurrentSelectionPath];
    v17 = [canvasEditor selectionPathWithInfos:drawingItemsFromCurrentSelectionPath];
    editorController2 = [interactiveCanvasController editorController];
    [editorController2 setSelectionPath:v17];

    [(UIEditMenuInteraction *)self->_lassoSelectionEditMenuInteraction dismissMenu];
  }
}

- (void)toolkitDidUpdateRulerVisibility
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];

  if (!freehandDrawingToolkit)
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

  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  pencilKitCanvasView = [boardViewController pencilKitCanvasView];

  if (!pencilKitCanvasView)
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

  isRulerActive = [pencilKitCanvasView isRulerActive];
  if (isRulerActive != [freehandDrawingToolkit isRulerToolShowing])
  {
    [pencilKitCanvasView setRulerActive:{objc_msgSend(freehandDrawingToolkit, "isRulerToolShowing")}];
  }
}

- (BOOL)isValidForEditorController:(id)controller
{
  controllerCopy = controller;
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];

  if (isLassoAbleToSelectMixedType)
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self p_currentLassoSelectionType];
  }

  v8 = [controllerCopy mostSpecificCurrentEditorOfClass:objc_opt_class()];
  v9 = v8 != 0;

  if (isLassoAbleToSelectMixedType)
  {
    v10 = [controllerCopy mostSpecificCurrentEditorOfClass:objc_opt_class()];
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

  selectionPath = [controllerCopy selectionPath];
  v13 = objc_opt_class();
  v14 = [selectionPath mostSpecificSelectionOfClass:0];
  v15 = sub_100014370(v13, v14);

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  infosForCurrentSelectionPath = [WeakRetained infosForCurrentSelectionPath];
  v18 = [infosForCurrentSelectionPath count];

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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  infosForCurrentSelectionPath = [WeakRetained infosForCurrentSelectionPath];

  v6 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(infosForCurrentSelectionPath);
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

      v7 = [infosForCurrentSelectionPath countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v20 = objc_loadWeakRetained(&selfCopy->_icc);
  canvasEditor = [v20 canvasEditor];
  v22 = [canvasEditor selectionPathWithInfos:v3];

  v23 = objc_loadWeakRetained(&selfCopy->_icc);
  [v23 setSelectionPath:v22 withSelectionFlags:0];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point touchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v9 = [WeakRetained hitRep:{x, y}];

  v10 = objc_opt_class();
  v11 = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [v11 freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  v14 = sub_100014370(v10, currentTool);

  v15 = [[CRLFreehandDrawingToolMarqueeInput alloc] initWithUnscaledTapPoint:sub_10042B6C0(type) inputType:x, y];
  if (v9)
  {
    v16 = objc_opt_class();
    info = [v9 info];
    v18 = sub_100014370(v16, info);

    containingGroup = [v18 containingGroup];
    layout = [v9 layout];
    if ([layout isInGroup])
    {
      isFreehandDrawing = [containingGroup isFreehandDrawing];

      if (isFreehandDrawing)
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

    allowsFingerDrawing = [(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing];
    if (type == 2 || (allowsFingerDrawing & 1) != 0)
    {
      v25 = objc_loadWeakRetained(&self->_icc);
      freehandDrawingToolkit2 = [v25 freehandDrawingToolkit];
      isLassoAbleToSelectMixedType = [freehandDrawingToolkit2 isLassoAbleToSelectMixedType];

      if (v14)
      {
        v22 = isLassoAbleToSelectMixedType;
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

    boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
    documentModeController = [boardViewController documentModeController];
    [documentModeController resetToDefaultModeAnimated:1];

    repForSelecting = [v9 repForSelecting];
    info2 = [repForSelecting info];

    if (info2 && [info2 isSelectable])
    {
      interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      canvasEditor = [interactiveCanvasController canvasEditor];
      v44 = [canvasEditor selectionPathWithInfo:info2];

      interactiveCanvasController2 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      editorController = [interactiveCanvasController2 editorController];
      [editorController setSelectionPath:v44];

      interactiveCanvasController3 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
      layerHost = [interactiveCanvasController3 layerHost];
      asiOSCVC = [layerHost asiOSCVC];
      [asiOSCVC toggleDefaultEditUIForCurrentSelection];
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

- (BOOL)handleTapOnCanvasBackgroundAtUnscaledPoint:(CGPoint)point
{
  v4 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9, point.x, point.y];
  if (v4)
  {
    if ([(CRLiOSDocumentModeFreehandDrawing *)self currentlyDisplayingLassoSelectionMenu])
    {
      [(CRLiOSDocumentModeFreehandDrawing *)self hideEditMenuForLassoSelection];
    }

    else
    {
      boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
      interactiveCanvasController = [boardViewController interactiveCanvasController];

      canvasEditor = [interactiveCanvasController canvasEditor];
      v8 = +[NSSet set];
      v9 = [canvasEditor selectionPathWithInfos:v8];

      editorController = [interactiveCanvasController editorController];
      [editorController setSelectionPath:v9];

      [(CRLiOSDocumentModeFreehandDrawing *)self presentEditMenuForLassoSelection];
    }
  }

  return v4;
}

- (BOOL)shouldHandleDoubleTapAtPoint:(CGPoint)point touchType:(int64_t)type
{
  y = point.y;
  x = point.x;
  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    v7 = objc_opt_class();
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];
    currentTool = [freehandDrawingToolkit currentTool];
    v11 = sub_100014370(v7, currentTool);

    if (v11)
    {
      [v11 cancelCommitSelectionForHandlingMarqueeTapForSmartSelection];
    }

    v47 = v11;
    boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
    interactiveCanvasController = [boardViewController interactiveCanvasController];

    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    delegate = [asiOSCVC delegate];
    v17 = [delegate pencilKitCanvasViewControllerForCanvasViewController:asiOSCVC];

    v18 = [interactiveCanvasController hitRep:{x, y}];
    repForSelecting = [v18 repForSelecting];

    v20 = objc_opt_class();
    v46 = sub_100014370(v20, repForSelecting);
    shapeInfo = [v46 shapeInfo];
    isFreehandDrawingShape = [shapeInfo isFreehandDrawingShape];
    v22 = objc_loadWeakRetained(&self->_icc);
    freehandDrawingToolkit2 = [v22 freehandDrawingToolkit];

    v44 = freehandDrawingToolkit2;
    currentTool2 = [freehandDrawingToolkit2 currentTool];
    v25 = [currentTool2 type] != 10;

    freehandDrawingToolkit3 = [interactiveCanvasController freehandDrawingToolkit];
    isLassoAbleToSelectMixedType = [freehandDrawingToolkit3 isLassoAbleToSelectMixedType];

    if ((repForSelecting == 0) | isFreehandDrawingShape & 1 | v25)
    {
      v28 = isFreehandDrawingShape;
    }

    else
    {
      v28 = isLassoAbleToSelectMixedType ^ 1 | isFreehandDrawingShape;
    }

    if ([(CRLiOSDocumentModeFreehandDrawing *)self currentlyDisplayingLassoSelectionMenu])
    {
      [(CRLiOSDocumentModeFreehandDrawing *)self hideEditMenuForLassoSelection];
    }

    canvasView = [asiOSCVC canvasView];
    unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];
    canvasView2 = [asiOSCVC canvasView];
    window = [canvasView2 window];
    coordinateSpace = [window coordinateSpace];
    [unscaledCoordinateSpace convertPoint:coordinateSpace toCoordinateSpace:{x, y}];
    v35 = v34;
    v37 = v36;

    smartSelectionManager = [asiOSCVC smartSelectionManager];
    smartSelectionView = [v17 smartSelectionView];
    [smartSelectionView frame];
    [interactiveCanvasController convertBoundsToUnscaledRect:?];
    v48.x = x;
    v48.y = y;
    v40 = CGRectContainsPoint(v49, v48);

    smartSelectionView2 = [v17 smartSelectionView];

    if (smartSelectionView2 && smartSelectionManager && v40)
    {
      smartSelectionView3 = [v17 smartSelectionView];
      [smartSelectionManager handleDoubleTapInputAtUnscaledPoint:smartSelectionView3 inSelectionView:{v35, v37}];
    }

    else
    {
      [smartSelectionManager handleDoubleTapInputAtUnscaledPoint:{v35, v37}];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

- (void)pencilKitDidSmartSelectStrokesInDrawingShapeItems:(id)items
{
  itemsCopy = items;
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  interactiveCanvasController = [boardViewController interactiveCanvasController];

  canvasEditor = [interactiveCanvasController canvasEditor];
  v7 = [NSSet setWithArray:itemsCopy];
  v8 = [canvasEditor selectionPathWithInfos:v7];

  editorController = [interactiveCanvasController editorController];
  [editorController setSelectionPath:v8];

  if ([(CRLiOSDocumentModeFreehandDrawing *)self currentlyDisplayingLassoSelectionMenu])
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self hideEditMenuForLassoSelection];
  }

  if ([itemsCopy count])
  {
    [(CRLiOSDocumentModeFreehandDrawing *)self presentEditMenuForLassoSelection];
  }
}

- (void)p_editMenuTapReceived:(id)received
{
  receivedCopy = received;
  v5 = objc_loadWeakRetained(&self->_icc);
  canvasView = [v5 canvasView];
  [receivedCopy locationInView:canvasView];
  [v5 convertBoundsToUnscaledPoint:?];
  v8 = v7;
  v10 = v9;

  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC setLastTapPoint:{v8, v10}];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isMathPaperEnabled])
  {
    v14 = objc_loadWeakRetained(&self->_icc);
    freehandDrawingToolkit = [v14 freehandDrawingToolkit];
    currentTool = [freehandDrawingToolkit currentTool];
    if ([currentTool type] == 10)
    {
    }

    else
    {
      allowsFingerDrawing = [(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing];

      if ((allowsFingerDrawing & 1) == 0)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v18 = objc_loadWeakRetained(&self->_icc);
        canvas = [v18 canvas];
        topLevelReps = [canvas topLevelReps];

        v21 = [topLevelReps countByEnumeratingWithState:&v29 objects:v33 count:16];
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
                objc_enumerationMutation(topLevelReps);
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
            v22 = [topLevelReps countByEnumeratingWithState:&v29 objects:v33 count:16];
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

  [asiOSCVC toggleEditMenuForCurrentSelection];
LABEL_16:
}

- (void)p_updatePanAndDrawingGestureRecognizersForState
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  canvasView = [WeakRetained canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  panGestureRecognizer = [enclosingScrollView panGestureRecognizer];

  v7 = objc_loadWeakRetained(&self->_icc);
  layerHost = [v7 layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  freehandDrawingGestureRecognizer = [asiOSCVC freehandDrawingGestureRecognizer];

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

  [panGestureRecognizer setMinimumNumberOfTouches:previousCanvasScrollMinTouchCount];
  [freehandDrawingGestureRecognizer setAllowedTouchTypes:v11];
  allowedTouchTypes = [freehandDrawingGestureRecognizer allowedTouchTypes];
  v14 = [allowedTouchTypes arrayByAddingObject:&off_1018E2190];
  [freehandDrawingGestureRecognizer setAllowedTouchTypes:v14];

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

  -[UITapGestureRecognizer setNumberOfTouchesRequired:](self->_editMenuTapGR, "setNumberOfTouchesRequired:", [panGestureRecognizer minimumNumberOfTouches]);
}

- (id)p_menuElementsToDisplayForLassoSelectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  editorController = [WeakRetained editorController];
  currentEditors = [editorController currentEditors];

  v10 = [currentEditors countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(currentEditors);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 addContextualMenuElementsToArray:v6 atPoint:{x, y}];
        }
      }

      v11 = [currentEditors countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  selectionModelTranslator = [WeakRetained selectionModelTranslator];
  v5 = objc_loadWeakRetained(&self->_icc);
  editorController = [v5 editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

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

- (void)p_insertEditCommandInto:(id)into
{
  intoCopy = into;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Edit" value:0 table:0];
  v6 = [UIImage systemImageNamed:@"paintbrush"];
  v38 = [UICommand commandWithTitle:v5 image:v6 action:"showMiniFormatterToExitDrawingMode:" propertyList:0];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v39 = intoCopy;
  v7 = [intoCopy copy];
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
          identifier = [v14 identifier];
          v17 = [identifier isEqualToString:@"CRLCutCopyPasteMenuIdentifier"];

          if (v17)
          {
            v43 = v11;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v18 = v15;
            children = [v15 children];
            v20 = [children countByEnumeratingWithState:&v44 objects:v52 count:16];
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
                    objc_enumerationMutation(children);
                  }

                  v25 = *(*(&v44 + 1) + 8 * i);
                  v26 = objc_opt_class();
                  v27 = sub_100014370(v26, v25);
                  v28 = v27;
                  if (v27 && [v27 action] == "copy:")
                  {
                    children2 = [v18 children];
                    v23 = [children2 indexOfObjectIdenticalTo:v25] + 1;
                  }
                }

                v21 = [children countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v21);

              v10 = v40;
              v7 = v41;
              v15 = v18;
              v9 = v42;
              v11 = v43;
              if (v23 != 0x7FFFFFFFFFFFFFFFLL)
              {
                children3 = [v15 children];
                v34 = [children3 mutableCopy];

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
  selectionModelTranslator = [WeakRetained selectionModelTranslator];
  v5 = objc_loadWeakRetained(&self->_icc);
  editorController = [v5 editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

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
  editorController = [WeakRetained editorController];
  selectionPath = [editorController selectionPath];

  v6 = objc_loadWeakRetained(&self->_icc);
  selectionModelTranslator = [v6 selectionModelTranslator];
  v8 = objc_loadWeakRetained(&self->_icc);
  editorController2 = [v8 editorController];
  selectionPath2 = [editorController2 selectionPath];
  v11 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath2];

  v12 = objc_loadWeakRetained(&self->_icc);
  selectionModelTranslator2 = [v12 selectionModelTranslator];
  v14 = [selectionModelTranslator2 unlockedBoardItemsForSelectionPath:selectionPath];

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

- (void)p_handleMarqueeTapWithInput:(id)input afterDelay:(double)delay
{
  inputCopy = input;
  v7 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  v11 = sub_100014370(v7, currentTool);

  [v11 performSelector:"handleMarqueeTapWithInput:" withObject:inputCopy afterDelay:delay];
}

- (void)beginDrawingTransformMode
{
  v3 = [CRLiOSDocumentModeFreehandDrawingTransform alloc];
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  v8 = [(CRLiOSDocumentModeFreehandDrawingTransform *)v3 initWithBoardViewController:boardViewController andInteractiveCanvasController:WeakRetained];

  boardViewController2 = [(CRLiOSDocumentMode *)self boardViewController];
  documentModeController = [boardViewController2 documentModeController];
  [documentModeController setMode:v8 animated:0];
}

- (id)toolTray
{
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  sharedPencilTray = [boardViewController sharedPencilTray];

  return sharedPencilTray;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  v8 = objc_loadWeakRetained(&self->_icc);
  canvasView = [v8 canvasView];
  [touchCopy locationInView:canvasView];
  [v8 convertBoundsToUnscaledPoint:?];
  v11 = v10;
  v13 = v12;

  type = [touchCopy type];
  LOBYTE(self) = [(CRLiOSDocumentModeFreehandDrawing *)self p_gestureRecognizer:recognizerCopy shouldReceiveTouchAtLocation:type touchType:v11, v13];

  return self;
}

- (BOOL)p_gestureRecognizer:(id)recognizer shouldReceiveTouchAtLocation:(CGPoint)location touchType:(int64_t)type
{
  y = location.y;
  x = location.x;
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  delegate = [asiOSCVC delegate];
  v14 = objc_opt_class();
  v15 = sub_100014370(v14, delegate);
  presentedViewController = [v15 presentedViewController];

  if (presentedViewController)
  {
    goto LABEL_2;
  }

  if (self->_editMenuTapGR != recognizerCopy)
  {
    goto LABEL_4;
  }

  v19 = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [v19 freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  type = [currentTool type];

  if (type == 10)
  {
LABEL_2:
    v17 = 0;
    goto LABEL_5;
  }

  if (type || [(CRLiOSDocumentModeFreehandDrawing *)self allowsFingerDrawing])
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
    info = [v23 info];
    v26 = sub_100014370(v24, info);

    containingGroup = [v26 containingGroup];
    if (([containingGroup isFreehandDrawing] & 1) != 0 || (objc_msgSend(v23, "repForSelecting"), v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
    {
      parentRep = [v23 parentRep];

      if (parentRep)
      {
        v30 = objc_opt_class();
        parentRep2 = [v23 parentRep];
        v32 = sub_100014370(v30, parentRep2);
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

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  configurationCopy = configuration;
  identifier = [configurationCopy identifier];

  if (identifier == @"CRLFreehandDrawingModeLassoSelectionMenuIdentifier")
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    [configurationCopy sourcePoint];
    [WeakRetained convertBoundsToUnscaledPoint:?];
    v15 = v14;
    v17 = v16;

    v18 = [(CRLiOSDocumentModeFreehandDrawing *)self p_menuElementsToDisplayForLassoSelectionAtPoint:v15, v17];
    v12 = [UIMenu menuWithTitle:&stru_1018BCA28 children:v18];
  }

  else
  {
    identifier2 = [configurationCopy identifier];

    if (identifier2 != @"CRLFreehandDrawingModeLassoSelectionMenuIdentifier")
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

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  v4 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController:interaction];
  layerHost = [v4 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  editorController = [v4 editorController];
  selectionPath = [editorController selectionPath];

  [asiOSCVC targetRectForEditMenu:selectionPath];
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

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  v12 = [NSNotificationCenter defaultCenter:interaction];
  v6 = +[NSNotification CRLCommandControllerWillUndo];
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [v12 addObserver:self selector:"p_commandControllerWillUndoOrRedo:" name:v6 object:commandController];

  v9 = +[NSNotification CRLCommandControllerWillRedo];
  interactiveCanvasController2 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  commandController2 = [interactiveCanvasController2 commandController];
  [v12 addObserver:self selector:"p_commandControllerWillUndoOrRedo:" name:v9 object:commandController2];
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v12 = [NSNotificationCenter defaultCenter:interaction];
  v6 = +[NSNotification CRLCommandControllerWillRedo];
  interactiveCanvasController = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [v12 removeObserver:self name:v6 object:commandController];

  v9 = +[NSNotification CRLCommandControllerWillUndo];
  interactiveCanvasController2 = [(CRLiOSDocumentModeFreehandDrawing *)self interactiveCanvasController];
  commandController2 = [interactiveCanvasController2 commandController];
  [v12 removeObserver:self name:v9 object:commandController2];
}

- (id)contextMenuConfigurationForContextMenuInteraction:(id)interaction atPoint:(CGPoint)point onInteractiveCanvasController:(id)controller
{
  y = point.y;
  x = point.x;
  if ([interaction menuAppearance] == 1)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v11 = [CRLFeatureFlagsHelper isOSFeatureEnabled:9];
  if (!v11)
  {
    goto LABEL_5;
  }

  freehandDrawingGestureRecognizer = [asiOSCVC freehandDrawingGestureRecognizer];
  if (freehandDrawingGestureRecognizer != recognizerCopy)
  {
    goto LABEL_3;
  }

  doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];

  if (doubleTapGestureRecognizer == gestureRecognizerCopy)
  {
    v19 = objc_loadWeakRetained(&self->_icc);
    freehandDrawingGestureRecognizer = [v19 freehandDrawingToolkit];

    pencilMediator = [asiOSCVC pencilMediator];
    currentTool = [freehandDrawingGestureRecognizer currentTool];
    type = [currentTool type];

    if (type == 10 || ([pencilMediator prefersPencilOnlyDrawing] & 1) == 0)
    {

LABEL_3:
      goto LABEL_5;
    }

    freehandDrawingGestureRecognizer2 = [asiOSCVC freehandDrawingGestureRecognizer];
    inputType = [freehandDrawingGestureRecognizer2 inputType];

    if (inputType == 1)
    {
      v17 = 1;
      goto LABEL_10;
    }
  }

LABEL_5:
  v14 = objc_loadWeakRetained(&self->_icc);
  drawingIntelligenceProvider = [v14 drawingIntelligenceProvider];

  v17 = 0;
  if ((v11 | [CRLFeatureFlagsHelper isOSFeatureEnabled:11]))
  {
    if ([drawingIntelligenceProvider isGestureRecognizerFromDescendantOfDetectorView:gestureRecognizerCopy])
    {
      doubleTapGestureRecognizer2 = [asiOSCVC doubleTapGestureRecognizer];

      if (doubleTapGestureRecognizer2 == recognizerCopy)
      {
        v17 = 1;
      }
    }
  }

LABEL_10:
  return v17;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  layerHost = [WeakRetained layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  if (![CRLFeatureFlagsHelper isOSFeatureEnabled:9])
  {
    goto LABEL_10;
  }

  freehandDrawingGestureRecognizer = [asiOSCVC freehandDrawingGestureRecognizer];
  if (freehandDrawingGestureRecognizer == recognizerCopy)
  {
    doubleTapGestureRecognizer = [asiOSCVC doubleTapGestureRecognizer];
    layerHost = doubleTapGestureRecognizer;
    if (doubleTapGestureRecognizer == gestureRecognizerCopy)
    {

      goto LABEL_12;
    }
  }

  doubleTapGestureRecognizer2 = [asiOSCVC doubleTapGestureRecognizer];
  v14 = doubleTapGestureRecognizer2;
  if (doubleTapGestureRecognizer2 != recognizerCopy)
  {

    v15 = 0;
    v16 = 0;
    if (freehandDrawingGestureRecognizer != recognizerCopy)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:

    v16 = v15;
    goto LABEL_14;
  }

  freehandDrawingGestureRecognizer2 = [asiOSCVC freehandDrawingGestureRecognizer];

  if (freehandDrawingGestureRecognizer == recognizerCopy)
  {
  }

  if (freehandDrawingGestureRecognizer2 == gestureRecognizerCopy)
  {
LABEL_12:
    v18 = objc_loadWeakRetained(&self->_icc);
    freehandDrawingGestureRecognizer = [v18 freehandDrawingToolkit];

    layerHost = [freehandDrawingGestureRecognizer currentTool];
    v15 = [layerHost type] == 10;
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

+ (void)presentEducationPaneIfNecessaryIn:(id)in
{
  inCopy = in;
  sub_1006EF79C();
}

@end