@interface CRLCanvasInteractiveCanvasControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_crlaxElementSupportsChangeTracking:(id)tracking;
- (BOOL)_crlaxZoomToShowRepForLayoutAndFocus:(id)focus;
- (BOOL)crlaxDocumentIsSharedReadOnly;
- (BOOL)crlaxIsInFollowingMode;
- (BOOL)crlaxScrollLayoutToVisibleAndFocusTheAssociatedRep:(id)rep;
- (CGPoint)crlaxConvertBoundsToUnscaledPoint:(CGPoint)point;
- (CGPoint)crlaxConvertUnscaledToBoundsPoint:(CGPoint)point;
- (CGRect)crlaxConvertBoundsToUnscaledRect:(CGRect)rect;
- (CGRect)crlaxConvertUnscaledRectToRulerUnits:(CGRect)units;
- (CGRect)crlaxConvertUnscaledToBoundsRect:(CGRect)rect;
- (CRLAccessibilityEditMenuControllerItemProvider)crlaxEditMenuItemProvider;
- (CRLCanvasAccessibility)crlaxCanvas;
- (CRLCanvasRepAccessibility)crlaxFirstSelectedRep;
- (CRLCanvasRepAccessibility)crlaxFocusedRep;
- (CRLCanvasViewAccessibility)crlaxCanvasView;
- (CRLEditorControllerAccessibility)crlaxEditorController;
- (CRLKeyboardMovementManipulatorAccessibility)crlaxKeyboardMovementManipulator;
- (CRLSubselectionAccessibility)crlaxCanvasSelection;
- (CRLTextInputResponderAccessibility)crlaxTextInputResponder;
- (CRLiOSCanvasViewControllerAccessibility)crlaxCanvasViewController;
- (NSArray)crlaxCustomRotors;
- (NSArray)crlaxFilteredTopLevelReps;
- (NSArray)crlaxTopLevelRepsForHitTesting;
- (NSSet)crlaxSelectedReps;
- (UIAccessibilityCustomRotor)crlaxCommentsRotor;
- (UIAccessibilityCustomRotor)crlaxHighlightsRotor;
- (UIAccessibilityCustomRotor)crlaxNearbyElementsRotor;
- (UIAccessibilityCustomRotor)crlaxTrackedChangesRotor;
- (double)_crlaxConvertPointToRulerValue:(double)value;
- (id)_crlaxCurrentSearchReferenceForRotor:(id)rotor;
- (id)_crlaxElementForMovingToSelection;
- (id)_crlaxFirstSelectedRepInCanvasEditor:(id)editor preferExplicitlyFocusedReps:(BOOL)reps;
- (id)_crlaxSelectedRepsInCanvasEditor:(id)editor preferExplicitlyFocusedReps:(BOOL)reps;
- (id)_crlaxTopLevelInspectorViewControllers;
- (id)_rotorForName:(id)name;
- (id)accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)crlaxActionMenuItemsForRep:(id)rep;
- (id)crlaxCanvasEditor;
- (id)crlaxCommentEditor;
- (id)crlaxCustomRotorResultForRotor:(id)rotor predicate:(id)predicate;
- (id)crlaxCustomRotorResultForRotorName:(id)name predicate:(id)predicate;
- (id)crlaxDescriptionOfPointValueConvertedToRulerUnit:(double)unit;
- (id)crlaxHitTestWithUnscaledPoint:(CGPoint)point;
- (id)crlaxInfosForCurrentSelectionPath;
- (id)crlaxInfosForSelectionPath:(id)path;
- (id)crlaxLayoutsForSelectionPath:(id)path;
- (id)crlaxLocalizedRulerUnitsForCanvas;
- (id)crlaxRepForInfo:(id)info;
- (id)crlaxRepForLayout:(id)layout;
- (id)crlaxRepForSearchReference:(id)reference;
- (id)crlaxRepsForInfo:(id)info;
- (id)crlaxResultSearchReferenceForRotor:(id)rotor fromSearchReference:(id)reference inDirection:(int64_t)direction;
- (id)crlaxRotorSearchControllerForRotor:(id)rotor;
- (id)crlaxRulerUnitsInstance;
- (id)crlaxSearchReferenceForSelectionPath:(id)path;
- (id)crlaxSelectionPathWithInfo:(id)info;
- (id)crlaxSelectionPathWithInfos:(id)infos;
- (id)p_sentenceUsingFormat:(id)format toDescribeRepSelectionOrDeltaWith:(id)with;
- (void)_crlaxAddArrangeActionsToArray:(id)array forRep:(id)rep;
- (void)_crlaxAddMultiSelectionActionsToArray:(id)array forRep:(id)rep;
- (void)_crlaxAddSelectionActionsToArray:(id)array forRep:(id)rep;
- (void)_crlaxAlignSelectionToEdge:(int)edge;
- (void)_crlaxAnnounceSelectedElementCount;
- (void)_crlaxDeselectWithSelectionPath:(id)path;
- (void)_crlaxPostCollaborationOccurredSound;
- (void)_crlaxPostCollaborationOccurredSoundRepeatedly:(int)repeatedly;
- (void)_crlaxScrollAndAnnounceSearchReference:(id)reference forRotor:(id)rotor;
- (void)_crlaxUnregisterForNotifications;
- (void)_crlaxUpdateSelectionWithRep:(id)rep;
- (void)addCommonObservers;
- (void)collaboratorCursorSelectionPathChangedFromSelectionPath:(id)path toSelectionPath:(id)selectionPath collaboratorPresence:(id)presence;
- (void)crlaxAddRepToSelection:(id)selection;
- (void)crlaxAnnounceSearchReference:(id)reference forRotor:(id)rotor;
- (void)crlaxCancelCollaborationOccurredTimer;
- (void)crlaxCollaboratorDeletedMySelection;
- (void)crlaxDeselectAll;
- (void)crlaxDeselectRep:(id)rep;
- (void)crlaxDidFocusRep:(id)rep;
- (void)crlaxLayoutIfNeeded;
- (void)crlaxLoadAccessibilityInformation;
- (void)crlaxScrollCurrentSelectionToVisible;
- (void)crlaxScrollSelectionPathToVisible:(id)visible;
- (void)crlaxSelectRep:(id)rep;
- (void)crlaxSelectReps:(id)reps;
- (void)crlaxSelectReps:(id)reps force:(BOOL)force;
- (void)crlaxWillSelectRep:(id)rep;
- (void)p_editorControllerSelectionPathDidChange:(id)change;
- (void)removeCommonObservers;
- (void)teardown;
@end

@implementation CRLCanvasInteractiveCanvasControllerAccessibility

- (CRLiOSCanvasViewControllerAccessibility)crlaxCanvasViewController
{
  v9 = 0;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  layerHost = [crlaxTarget layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, asiOSCVC, 1, &v9);
  if (v9 == 1)
  {
    abort();
  }

  v7 = v6;

  return v7;
}

- (CRLTextInputResponderAccessibility)crlaxTextInputResponder
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  textInputResponder = [crlaxTarget textInputResponder];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, textInputResponder, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)_crlaxElementForMovingToSelection
{
  crlaxTextInputResponder = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTextInputResponder];
  crlaxFocusedElement = [crlaxTextInputResponder crlaxFocusedElement];

  if (!crlaxFocusedElement)
  {
    crlaxFocusedRep = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusedRep];
    crlaxFocusedElement = [crlaxFocusedRep crlaxFocusedElement];
  }

  return crlaxFocusedElement;
}

- (id)accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxConvertBoundsToUnscaledPoint:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxHitTestWithUnscaledPoint:?];
  if ([v12 isAccessibilityElement])
  {
    goto LABEL_4;
  }

  v13 = [v12 accessibilityHitTest:eventCopy withEvent:{v9, v11}];

  if ([v13 isAccessibilityElement])
  {
    v12 = v13;
LABEL_4:
    v14 = v12;
    v13 = v14;
    goto LABEL_6;
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (CRLAccessibilityEditMenuControllerItemProvider)crlaxEditMenuItemProvider
{
  crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxEditorController];
  crlaxTextInputEditor = [crlaxEditorController crlaxTextInputEditor];
  v5 = __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___CRLAccessibilityEditMenuControllerItemProvider, crlaxTextInputEditor, 0, 0);

  if (!v5)
  {
    crlaxCanvasViewController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasViewController];
    v5 = __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___CRLAccessibilityEditMenuControllerItemProvider, crlaxCanvasViewController, 0, 0);
  }

  return v5;
}

- (id)crlaxActionMenuItemsForRep:(id)rep
{
  repCopy = rep;
  v5 = +[NSMutableArray array];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxAddSelectionActionsToArray:v5 forRep:repCopy];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxAddMultiSelectionActionsToArray:v5 forRep:repCopy];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxAddArrangeActionsToArray:v5 forRep:repCopy];

  return v5;
}

- (void)_crlaxAddSelectionActionsToArray:(id)array forRep:(id)rep
{
  arrayCopy = array;
  repCopy = rep;
  if (([repCopy crlaxIsSelected] & 1) == 0)
  {
    crlaxRepForSelecting = [repCopy crlaxRepForSelecting];
    if ([crlaxRepForSelecting crlaxIsSelected])
    {
    }

    else
    {
      if ([repCopy crlaxIsSelectable])
      {
      }

      else
      {
        crlaxRepForSelecting2 = [repCopy crlaxRepForSelecting];
        crlaxIsSelectable = [crlaxRepForSelecting2 crlaxIsSelectable];

        if ((crlaxIsSelectable & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      _crlaxElementForMovingToSelection = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxElementForMovingToSelection];
      if (_crlaxElementForMovingToSelection)
      {
        v12 = +[NSBundle mainBundle];
        v13 = [v12 localizedStringForKey:@"Move to selected item" value:0 table:0];

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_10038CA54;
        v20[3] = &unk_10185A910;
        v21 = _crlaxElementForMovingToSelection;
        [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v13 actionBlock:v20];
      }

      crlaxRepForSelecting3 = [repCopy crlaxRepForSelecting];
      if (crlaxRepForSelecting3)
      {
        v15 = +[NSBundle mainBundle];
        v16 = [v15 localizedStringForKey:@"Select" value:0 table:0];

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10038CA74;
        v17[3] = &unk_10185A938;
        v18 = crlaxRepForSelecting3;
        v19 = repCopy;
        [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v16 actionBlock:v17];
      }
    }
  }

LABEL_12:
}

- (void)_crlaxAddMultiSelectionActionsToArray:(id)array forRep:(id)rep
{
  arrayCopy = array;
  crlaxRepForSelecting = [rep crlaxRepForSelecting];
  if (crlaxRepForSelecting)
  {
    crlaxSelectedReps = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectedReps];
    if ([crlaxSelectedReps count])
    {
      if (![crlaxRepForSelecting crlaxIsSelectedIgnoringLocking])
      {
        v12 = +[NSBundle mainBundle];
        v10 = [v12 localizedStringForKey:@"Add to selection" value:0 table:0];

        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_10038CC88;
        v16 = &unk_10185A938;
        selfCopy = self;
        v18 = crlaxRepForSelecting;
        v11 = &v13;
        goto LABEL_7;
      }

      if ([crlaxSelectedReps count] >= 2)
      {
        v9 = +[NSBundle mainBundle];
        v10 = [v9 localizedStringForKey:@"Remove from selection" value:0 table:0];

        v19 = _NSConcreteStackBlock;
        v20 = 3221225472;
        v21 = sub_10038CC64;
        v22 = &unk_10185A938;
        selfCopy2 = self;
        v24 = crlaxRepForSelecting;
        v11 = &v19;
LABEL_7:
        [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v10 actionBlock:v11, v13, v14, v15, v16, selfCopy, v18, v19, v20, v21, v22, selfCopy2, v24];
      }
    }
  }
}

- (void)_crlaxAddArrangeActionsToArray:(id)array forRep:(id)rep
{
  arrayCopy = array;
  repCopy = rep;
  crlaxSelectedReps = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectedReps];
  if ([crlaxSelectedReps count] >= 2)
  {
    crlaxRepForSelecting = [repCopy crlaxRepForSelecting];
    v10 = [crlaxSelectedReps containsObject:crlaxRepForSelecting];

    if (v10)
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Arrange" value:0 table:0];

      v13 = +[NSBundle mainBundle];
      v26 = [v13 localizedStringForKey:@"Align left edges to leftmost edge" value:0 table:0];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10038D1A4;
      v33[3] = &unk_10185A910;
      v33[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v26 categoryName:v12 actionBlock:v33];
      v14 = +[NSBundle mainBundle];
      v25 = [v14 localizedStringForKey:@"Align to horizontal center" value:0 table:0];

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10038D1C4;
      v32[3] = &unk_10185A910;
      v32[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v25 categoryName:v12 actionBlock:v32];
      v15 = +[NSBundle mainBundle];
      v24 = [v15 localizedStringForKey:@"Align right edges to rightmost edge" value:0 table:0];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10038D1E4;
      v31[3] = &unk_10185A910;
      v31[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v24 categoryName:v12 actionBlock:v31];
      v16 = +[NSBundle mainBundle];
      v23 = [v16 localizedStringForKey:@"Align top edges to topmost edge" value:0 table:0];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10038D204;
      v30[3] = &unk_10185A910;
      v30[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v23 categoryName:v12 actionBlock:v30];
      v17 = +[NSBundle mainBundle];
      v22 = [v17 localizedStringForKey:@"Align to vertical center" value:0 table:0];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10038D224;
      v29[3] = &unk_10185A910;
      v29[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v22 categoryName:v12 actionBlock:v29];
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"Align bottom edges to bottommost edge" value:0 table:0];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10038D244;
      v28[3] = &unk_10185A910;
      v28[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v19 categoryName:v12 actionBlock:v28];
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"Go to arrange inspector" value:0 table:0];

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10038D264;
      v27[3] = &unk_10185A910;
      v27[4] = self;
      [CRLAccessibilityBlockBasedCustomAction addActionToArray:arrayCopy withName:v21 categoryName:v12 actionBlock:v27];
    }
  }
}

- (void)_crlaxUpdateSelectionWithRep:(id)rep
{
  repCopy = rep;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  crlaxTarget2 = [repCopy crlaxTarget];

  [crlaxTarget updateSelectionForInteractionWithRep:crlaxTarget2 extendingSelection:1];

  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxAnnounceSelectedElementCount];
}

- (void)_crlaxAnnounceSelectedElementCount
{
  crlaxSelectedReps = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectedReps];
  v4 = [crlaxSelectedReps count];

  v7 = CRLAccessibilityStringsDictKey(@"multiselection.elements.selected.announcement");
  v5 = [NSString localizedStringWithFormat:v7, v4];
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  CRLAccessibilityPostAnnouncementNotification(crlaxTarget, v5);
}

- (void)_crlaxAlignSelectionToEdge:(int)edge
{
  v3 = *&edge;
  crlaxCanvasEditor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v6 = __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___CRLCanvasEditor, crlaxCanvasEditor, 0, 0);

  canvasEditorHelper = [v6 canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:v3];
}

- (id)_crlaxTopLevelInspectorViewControllers
{
  v3 = objc_opt_class();
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v5 = [crlaxTarget crlaxValueForKey:@"topLevelInspectorViewControllers"];
  v6 = __CRLAccessibilityCastAsClass(v3, v5, 0, 0);

  return v6;
}

- (void)crlaxCollaboratorDeletedMySelection
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Participant deleted selection" value:0 table:0];

  CRLAccessibilityPostHighPriorityAnnouncementNotification(0, v3);
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)crlaxWillSelectRep:(id)rep
{
  crlaxCanvasViewController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasViewController];
  crlaxIsInEyeDropperMode = [crlaxCanvasViewController crlaxIsInEyeDropperMode];

  if (crlaxIsInEyeDropperMode)
  {
    crlaxCanvasViewController2 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasViewController];
    [crlaxCanvasViewController2 crlaxCancelEyeDropperMode];
  }
}

- (NSArray)crlaxCustomRotors
{
  v3 = +[NSMutableArray array];
  crlaxCommentsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCommentsRotor];
  [v3 addObject:crlaxCommentsRotor];

  crlaxHighlightsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxHighlightsRotor];
  [v3 addObject:crlaxHighlightsRotor];

  crlaxSelectedReps = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectedReps];
  v7 = [crlaxSelectedReps count];

  if (v7 == 1)
  {
    crlaxNearbyElementsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxNearbyElementsRotor];
    [v3 addObject:crlaxNearbyElementsRotor];
  }

  return v3;
}

- (UIAccessibilityCustomRotor)crlaxTrackedChangesRotor
{
  _crlaxStoredTrackedChangesRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredTrackedChangesRotor];
  if (!_crlaxStoredTrackedChangesRotor)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Tracked Changes" value:0 table:0];

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10038D850;
    v9[3] = &unk_1018578F8;
    objc_copyWeak(&v11, &location);
    v6 = v5;
    v10 = v6;
    v7 = objc_retainBlock(v9);
    _crlaxStoredTrackedChangesRotor = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredTrackedChangesRotor;
}

- (UIAccessibilityCustomRotor)crlaxCommentsRotor
{
  _crlaxStoredCommentsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredCommentsRotor];
  if (!_crlaxStoredCommentsRotor)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Comments" value:0 table:0];

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10038DA10;
    v9[3] = &unk_1018578F8;
    objc_copyWeak(&v11, &location);
    v6 = v5;
    v10 = v6;
    v7 = objc_retainBlock(v9);
    _crlaxStoredCommentsRotor = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredCommentsRotor;
}

- (UIAccessibilityCustomRotor)crlaxHighlightsRotor
{
  _crlaxStoredHighlightsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredHighlightsRotor];
  if (!_crlaxStoredHighlightsRotor)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Highlights" value:0 table:0];

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10038DBD0;
    v9[3] = &unk_1018578F8;
    objc_copyWeak(&v11, &location);
    v6 = v5;
    v10 = v6;
    v7 = objc_retainBlock(v9);
    _crlaxStoredHighlightsRotor = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredHighlightsRotor;
}

- (UIAccessibilityCustomRotor)crlaxNearbyElementsRotor
{
  _crlaxStoredNearbyElementsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredNearbyElementsRotor];
  if (!_crlaxStoredNearbyElementsRotor)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Nearby Elements" value:0 table:0];

    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10038DDF0;
    v12[3] = &unk_1018578F8;
    objc_copyWeak(&v14, &location);
    v6 = v5;
    v13 = v6;
    v7 = objc_retainBlock(v12);
    _crlaxStoredNearbyElementsRotor = [[UIAccessibilityCustomRotor alloc] initWithName:v6 itemSearchBlock:v7];
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredNearbyElementsRotor:_crlaxStoredNearbyElementsRotor];
    v8 = [CRLNearbyElementRotorSearchController alloc];
    crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    v10 = [(CRLRotorSearchController *)v8 initWithInteractiveCanvasController:crlaxTarget];
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetStoredNearbyElementsRotorSearchController:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return _crlaxStoredNearbyElementsRotor;
}

- (id)crlaxCustomRotorResultForRotorName:(id)name predicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _rotorForName:name];
  v8 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCustomRotorResultForRotor:v7 predicate:predicateCopy];

  return v8;
}

- (id)crlaxCustomRotorResultForRotor:(id)rotor predicate:(id)predicate
{
  rotorCopy = rotor;
  predicateCopy = predicate;
  v8 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxCurrentSearchReferenceForRotor:rotorCopy];
  searchDirection = [predicateCopy searchDirection];

  v10 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxResultSearchReferenceForRotor:rotorCopy fromSearchReference:v8 inDirection:searchDirection];
  if (v10)
  {
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxScrollAndAnnounceSearchReference:v10 forRotor:rotorCopy];
    v11 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusElementFromSearchReference:v10];
    v12 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxFocusTextRangeFromSearchReference:v10];
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v11);
    v13 = [[UIAccessibilityCustomRotorItemResult alloc] initWithTargetElement:v11 targetRange:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_crlaxCurrentSearchReferenceForRotor:(id)rotor
{
  v4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRotorSearchControllerForRotor:rotor];
  if ([v4 shouldChangeSelectionPath])
  {
    crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    editorController = [crlaxTarget editorController];
    selectionPath = [editorController selectionPath];
    v8 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSearchReferenceForSelectionPath:selectionPath];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = +[CRLAccessibility currentlyFocusedElement];
    crlaxTarget = __CRLAccessibilityCastAsClass(v9, v10, 0, 0);

    editorController = [crlaxTarget repForSelecting];
    crlaxTarget2 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    canvasEditor = [crlaxTarget2 canvasEditor];
    info = [editorController info];
    selectionPath = [canvasEditor selectionPathWithInfo:info];

    v8 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSearchReferenceForSelectionPath:selectionPath];
    layout = [editorController layout];
    [layout alignmentFrameInRoot];
    [v8 setSearchReferenceLayoutFrame:?];
  }

  return v8;
}

- (id)crlaxSearchReferenceForSelectionPath:(id)path
{
  pathCopy = path;
  orderedSelections = [pathCopy orderedSelections];
  lastObject = [orderedSelections lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    boardItems = [lastObject boardItems];
    anyObject = [boardItems anyObject];

    if (anyObject)
    {
      v8 = [CRLCanvasSearchReference searchReferenceWithBoardItem:anyObject selectionPath:pathCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)crlaxRotorSearchControllerForRotor:(id)rotor
{
  rotorCopy = rotor;
  crlaxTrackedChangesRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTrackedChangesRotor];
  v6 = [rotorCopy isEqual:crlaxTrackedChangesRotor];

  if (v6)
  {
    _crlaxStoredTrackedChangesRotorSearchController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredTrackedChangesRotorSearchController];
LABEL_9:
    v14 = _crlaxStoredTrackedChangesRotorSearchController;
    goto LABEL_10;
  }

  crlaxCommentsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCommentsRotor];
  v9 = [rotorCopy isEqual:crlaxCommentsRotor];

  if (v9)
  {
    _crlaxStoredTrackedChangesRotorSearchController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredCommentsRotorSearchController];
    goto LABEL_9;
  }

  crlaxHighlightsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxHighlightsRotor];
  v11 = [rotorCopy isEqual:crlaxHighlightsRotor];

  if (v11)
  {
    _crlaxStoredTrackedChangesRotorSearchController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredHighlightsRotorSearchController];
    goto LABEL_9;
  }

  crlaxNearbyElementsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxNearbyElementsRotor];
  v13 = [rotorCopy isEqual:crlaxNearbyElementsRotor];

  if (v13)
  {
    _crlaxStoredTrackedChangesRotorSearchController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredNearbyElementsRotorSearchController];
    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)crlaxResultSearchReferenceForRotor:(id)rotor fromSearchReference:(id)reference inDirection:(int64_t)direction
{
  referenceCopy = reference;
  v9 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRotorSearchControllerForRotor:rotor];
  v10 = [v9 searchReferenceAfterReference:referenceCopy inRotorDirection:direction];

  return v10;
}

- (void)crlaxAnnounceSearchReference:(id)reference forRotor:(id)rotor
{
  referenceCopy = reference;
  rotorCopy = rotor;
  crlaxTrackedChangesRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTrackedChangesRotor];
  if ([rotorCopy isEqual:crlaxTrackedChangesRotor])
  {
    goto LABEL_4;
  }

  crlaxCommentsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCommentsRotor];
  if ([rotorCopy isEqual:crlaxCommentsRotor])
  {

LABEL_4:
LABEL_5:
    v15 = __CRLAccessibilityStringForVariables(1, 0, v9, v10, v11, v12, v13, v14, 0);
    v16 = [[NSMutableAttributedString alloc] initWithString:v15];
    if (![0 length])
    {
LABEL_8:
      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v16);

      goto LABEL_9;
    }

    v17 = v15;
    v18 = 0;
LABEL_7:
    v19 = [v17 rangeOfString:v18];
    [v16 addAttribute:@"UIAccessibilityTokenLowPitch" value:&__kCFBooleanTrue range:{v19, v20}];
    goto LABEL_8;
  }

  crlaxHighlightsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxHighlightsRotor];
  v22 = [rotorCopy isEqual:crlaxHighlightsRotor];

  if (v22)
  {
    goto LABEL_5;
  }

  crlaxNearbyElementsRotor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxNearbyElementsRotor];
  v24 = [rotorCopy isEqual:crlaxNearbyElementsRotor];

  if (v24)
  {
    v25 = objc_opt_class();
    _crlaxStoredNearbyElementsRotorSearchController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxStoredNearbyElementsRotorSearchController];
    v27 = __CRLAccessibilityCastAsClass(v25, _crlaxStoredNearbyElementsRotorSearchController, 0, 0);
    v15 = [v27 nearbyDescriptionForSearchReference:referenceCopy];

    v16 = [[NSMutableAttributedString alloc] initWithString:v15];
    if (![v15 length])
    {
      goto LABEL_8;
    }

    v17 = v15;
    v18 = v15;
    goto LABEL_7;
  }

LABEL_9:
}

- (id)_rotorForName:(id)name
{
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  crlaxCustomRotors = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCustomRotors];
  v6 = [crlaxCustomRotors countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(crlaxCustomRotors);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [crlaxCustomRotors countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_crlaxScrollAndAnnounceSearchReference:(id)reference forRotor:(id)rotor
{
  referenceCopy = reference;
  rotorCopy = rotor;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  [crlaxTarget scrollSearchReferenceToVisible:referenceCopy scrollOptions:8];
  v9 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRotorSearchControllerForRotor:rotorCopy];
  shouldChangeSelectionPath = [v9 shouldChangeSelectionPath];

  if (shouldChangeSelectionPath)
  {
    editorController = [crlaxTarget editorController];
    selectionPath = [referenceCopy selectionPath];
    [editorController setSelectionPath:selectionPath withFlags:0];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10038E8CC;
  v15[3] = &unk_10183AE00;
  v15[4] = self;
  v16 = referenceCopy;
  v17 = rotorCopy;
  v13 = rotorCopy;
  v14 = referenceCopy;
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v15, 2.0);
}

- (id)crlaxRepForSearchReference:(id)reference
{
  referenceCopy = reference;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  selectionPath = [referenceCopy selectionPath];
  v7 = [crlaxTarget infosForSelectionPath:selectionPath];

  if (![v7 count])
  {
    infoForSelectionPath = [referenceCopy infoForSelectionPath];
    v10 = objc_opt_class();
    anyObject = sub_100303920(infoForSelectionPath, v10, 1, v11, v12, v13, v14, v15, &OBJC_PROTOCOL___CRLCanvasElementInfo);

    if (anyObject)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  if ([v7 count] != 1)
  {
    anyObject = 0;
    goto LABEL_8;
  }

  anyObject = [v7 anyObject];
  if (!anyObject)
  {
    goto LABEL_8;
  }

LABEL_6:
  crlaxTarget2 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v17 = [crlaxTarget2 repForInfo:anyObject createIfNeeded:1];

LABEL_9:
  v18 = v17;

  return v17;
}

- (BOOL)_crlaxElementSupportsChangeTracking:(id)tracking
{
  trackingCopy = tracking;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, trackingCopy, 0, 0);

  if (v5)
  {
    crlaxSupportsChangeTracking = [v5 crlaxSupportsChangeTracking];
  }

  else
  {
    crlaxSupportsChangeTracking = 0;
  }

  return crlaxSupportsChangeTracking;
}

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CRLCanvasViewAccessibility)crlaxCanvasView
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  canvasView = [crlaxTarget canvasView];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, canvasView, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLCanvasAccessibility)crlaxCanvas
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  canvas = [crlaxTarget canvas];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, canvas, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLEditorControllerAccessibility)crlaxEditorController
{
  v8 = 0;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  editorController = [crlaxTarget editorController];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, editorController, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxCanvasEditor
{
  v2 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxValueForKey:@"canvasEditor"];
  v3 = NSProtocolFromString(@"CRLCanvasEditor");
  if (([v2 conformsToProtocol:v3] & 1) == 0)
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Object doesn't conform to CRLCanvasEditor protocol!", v5, v6, v7, v8, v9, v11))
      {
        abort();
      }
    }

    v2 = 0;
  }

  return v2;
}

- (CRLKeyboardMovementManipulatorAccessibility)crlaxKeyboardMovementManipulator
{
  crlaxCanvasEditor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v3 = [crlaxCanvasEditor crlaxValueForKey:@"canvasEditorHelper"];

  v9 = 0;
  v4 = [v3 crlaxValueForKey:@"keyboardMovementManipulator"];
  v5 = objc_opt_class();
  v6 = __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v9);
  if (v9 == 1)
  {
    abort();
  }

  v7 = v6;

  return v7;
}

- (NSArray)crlaxTopLevelRepsForHitTesting
{
  if ([(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCurrentlyWaitingOnThreadedLayoutAndRender])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxValueForKey:@"topLevelRepsForHitTesting"];
  }

  return v3;
}

- (NSSet)crlaxSelectedReps
{
  crlaxCanvasEditor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSelectedRepsInCanvasEditor:crlaxCanvasEditor preferExplicitlyFocusedReps:0];

  return v4;
}

- (CRLCanvasRepAccessibility)crlaxFirstSelectedRep
{
  crlaxCanvasEditor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxFirstSelectedRepInCanvasEditor:crlaxCanvasEditor preferExplicitlyFocusedReps:0];

  return v4;
}

- (CRLSubselectionAccessibility)crlaxCanvasSelection
{
  v8 = 0;
  crlaxCanvasEditor = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvasEditor];
  v3 = [crlaxCanvasEditor crlaxValueForKey:@"canvasSelection"];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)_crlaxSelectedRepsInCanvasEditor:(id)editor preferExplicitlyFocusedReps:(BOOL)reps
{
  repsCopy = reps;
  editorCopy = editor;
  v54 = 0;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  selectionModelTranslator = [crlaxTarget selectionModelTranslator];
  selfCopy = self;
  crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxEditorController];
  crlaxSelectionPath = [crlaxEditorController crlaxSelectionPath];
  crlaxTarget2 = [crlaxSelectionPath crlaxTarget];
  v11 = [selectionModelTranslator boardItemsForSelectionPath:crlaxTarget2];

  v12 = __CRLAccessibilityCastAsProtocol(&OBJC_PROTOCOL___NSFastEnumeration, v11, 1, &v54);
  if (v54 == 1)
  {
LABEL_38:
    abort();
  }

  v13 = v12;
  v39 = editorCopy;

  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_35;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v51;
  v19 = repsCopy;
  v20 = selfCopy;
  v44 = *v51;
  v40 = v14;
  do
  {
    v21 = 0;
    v45 = v16;
    do
    {
      if (*v51 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v22 = *(*(&v50 + 1) + 8 * v21);
      if (!v19)
      {
        goto LABEL_27;
      }

      v23 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)v20 crlaxRepsForInfo:*(*(&v50 + 1) + 8 * v21)];
      v24 = [v23 count];
      if (v24 == 1)
      {
        v54 = 0;
        anyObject = [v23 anyObject];
        v26 = objc_opt_class();
        v27 = __CRLAccessibilityCastAsSafeCategory(v26, anyObject, 1, &v54);
        if (v54 == 1)
        {
          goto LABEL_38;
        }

        v28 = v27;
      }

      else
      {
        if (!v24)
        {

          v16 = v45;
LABEL_27:
          v28 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)v20 crlaxRepForInfo:v22];
          if (!v28)
          {
            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v43 = v17;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v29 = v23;
        v30 = [v29 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v47;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v47 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v46 + 1) + 8 * i);
              v54 = 0;
              v35 = v34;
              v36 = objc_opt_class();
              v37 = __CRLAccessibilityCastAsSafeCategory(v36, v35, 1, &v54);
              if (v54 == 1)
              {
                goto LABEL_38;
              }

              v28 = v37;

              if ([v28 crlaxWasExplicitlyFocused])
              {
                goto LABEL_23;
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v31);
          v28 = 0;
LABEL_23:
          v19 = repsCopy;
          v14 = v40;
          v20 = selfCopy;
        }

        else
        {
          v28 = 0;
        }

        v17 = v43;
      }

      v18 = v44;

      v16 = v45;
      if (!v28)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (!v17)
      {
        v17 = +[NSMutableSet set];
      }

      [v17 addObject:v28];

LABEL_31:
      v21 = v21 + 1;
    }

    while (v21 != v16);
    v16 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
  }

  while (v16);
LABEL_35:

  return v17;
}

- (id)_crlaxFirstSelectedRepInCanvasEditor:(id)editor preferExplicitlyFocusedReps:(BOOL)reps
{
  v4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSelectedRepsInCanvasEditor:editor preferExplicitlyFocusedReps:reps];
  if ([v4 count])
  {
    allObjects = [v4 allObjects];
    v6 = [allObjects sortedArrayUsingComparator:&stru_1018668E8];

    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (CRLCanvasRepAccessibility)crlaxFocusedRep
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_10048B71C;
  v45 = sub_10048B72C;
  v46 = 0;
  v3 = &OBJC_PROTOCOL___CRLCanvasEditor;
  crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxEditorController];
  crlaxCurrentEditors = [crlaxEditorController crlaxCurrentEditors];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10048B734;
  v37[3] = &unk_101866910;
  v40 = &v41;
  v6 = v3;
  v38 = v6;
  selfCopy = self;
  [crlaxCurrentEditors enumerateObjectsWithOptions:2 usingBlock:v37];
  v7 = v42[5];
  if (!v7)
  {
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxInfosForCurrentSelectionPath];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v8 = v34 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v9)
    {
      v10 = *v34;
      do
      {
        v11 = 0;
        v27 = v9;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRepsForInfo:*(*(&v33 + 1) + 8 * v11), v27];
          v28 = v11;
          v13 = v6;
          v14 = crlaxCurrentEditors;
          v15 = v8;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v16 = v12;
          v17 = [v16 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v17)
          {
            v18 = *v30;
            while (2)
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v29 + 1) + 8 * i);
                if ([v20 crlaxWasExplicitlyFocused])
                {
                  objc_storeStrong(v42 + 5, v20);
                  v8 = v15;
                  crlaxCurrentEditors = v14;
                  v6 = v13;

                  goto LABEL_19;
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v29 objects:v47 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v8 = v15;
          crlaxCurrentEditors = v14;
          v6 = v13;

          v11 = v28 + 1;
        }

        while ((v28 + 1) != v27);
        v9 = [v8 countByEnumeratingWithState:&v33 objects:v48 count:16];
      }

      while (v9);
    }

LABEL_19:

    v7 = v42[5];
    if (!v7)
    {
      crlaxInfosForCurrentSelectionPath = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxInfosForCurrentSelectionPath];
      anyObject = [crlaxInfosForCurrentSelectionPath anyObject];
      v23 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRepForInfo:anyObject];
      v24 = v42[5];
      v42[5] = v23;

      v7 = v42[5];
    }
  }

  v25 = v7;

  _Block_object_dispose(&v41, 8);

  return v25;
}

- (NSArray)crlaxFilteredTopLevelReps
{
  crlaxCanvas = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCanvas];
  crlaxTopLevelReps = [crlaxCanvas crlaxTopLevelReps];

  return crlaxTopLevelReps;
}

- (BOOL)crlaxDocumentIsSharedReadOnly
{
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  documentIsSharedReadOnly = [crlaxTarget documentIsSharedReadOnly];

  return documentIsSharedReadOnly;
}

- (CGPoint)crlaxConvertBoundsToUnscaledPoint:(CGPoint)point
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1016A8115;
  v13 = 0;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048B9A4;
  v7[3] = &unk_1018427D8;
  v7[4] = self;
  v7[5] = &v9;
  pointCopy = point;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)crlaxConvertBoundsToUnscaledRect:(CGRect)rect
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1016A8115;
  v17 = 0u;
  v18 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10048BAD8;
  v11[3] = &unk_101866938;
  v11[4] = self;
  v11[5] = &v13;
  rectCopy = rect;
  if (__CRLAccessibilityPerformSafeBlock(v11))
  {
    abort();
  }

  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)crlaxConvertUnscaledToBoundsPoint:(CGPoint)point
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1016A8115;
  v13 = 0;
  v14 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10048BBF8;
  v7[3] = &unk_1018427D8;
  v7[4] = self;
  v7[5] = &v9;
  pointCopy = point;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)crlaxConvertUnscaledToBoundsRect:(CGRect)rect
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4010000000;
  v16 = &unk_1016A8115;
  v17 = 0u;
  v18 = 0u;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10048BD2C;
  v11[3] = &unk_101866938;
  v11[4] = self;
  v11[5] = &v13;
  rectCopy = rect;
  if (__CRLAccessibilityPerformSafeBlock(v11))
  {
    abort();
  }

  v3 = v14[4];
  v4 = v14[5];
  v5 = v14[6];
  v6 = v14[7];
  _Block_object_dispose(&v13, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)crlaxRepForInfo:(id)info
{
  infoCopy = info;
  if ([(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCurrentlyWaitingOnThreadedLayoutAndRender])
  {
    v5 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10048B71C;
    v18 = sub_10048B72C;
    v19 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10048BEF8;
    v11[3] = &unk_10183DE60;
    v13 = &v14;
    v11[4] = self;
    v12 = infoCopy;
    if (__CRLAccessibilityPerformSafeBlock(v11) || (v12, v6 = v15[5], _Block_object_dispose(&v14, 8), v19, LOBYTE(v14) = 0, v7 = v6, v8 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v8, v7, 1, &v14), v9 = objc_claimAutoreleasedReturnValue(), v14 == 1))
    {
      abort();
    }

    v5 = v9;
  }

  return v5;
}

- (id)crlaxRepsForInfo:(id)info
{
  infoCopy = info;
  if ([(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCurrentlyWaitingOnThreadedLayoutAndRender])
  {
    v5 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10048B71C;
    v18 = sub_10048B72C;
    v19 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10048C0D4;
    v11[3] = &unk_10183DE60;
    v13 = &v14;
    v11[4] = self;
    v12 = infoCopy;
    if (__CRLAccessibilityPerformSafeBlock(v11) || (v12, v6 = v15[5], _Block_object_dispose(&v14, 8), v19, LOBYTE(v14) = 0, v7 = v6, v8 = objc_opt_class(), __CRLAccessibilityCastAsClass(v8, v7, 1, &v14), v9 = objc_claimAutoreleasedReturnValue(), v14 == 1))
    {
      abort();
    }

    v5 = v9;
  }

  return v5;
}

- (id)crlaxRepForLayout:(id)layout
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10048B71C;
  v17 = sub_10048B72C;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10048C29C;
  v10[3] = &unk_10183DE60;
  v12 = &v13;
  v10[4] = self;
  layoutCopy = layout;
  v11 = layoutCopy;
  if (__CRLAccessibilityPerformSafeBlock(v10) || (v11, v4 = v14[5], _Block_object_dispose(&v13, 8), v18, LOBYTE(v13) = 0, v5 = v4, v6 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v13), v7 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v8 = v7;

  return v8;
}

- (id)crlaxHitTestWithUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v29 = 0;
  v28 = 0;
  v6 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self hitKnobAtPoint:1 inputType:&v28 returningRep:?];
  v7 = v28;
  v8 = objc_opt_class();
  v9 = __CRLAccessibilityCastAsSafeCategory(v8, v6, 1, &v29);
  if (v29 == 1)
  {
    goto LABEL_21;
  }

  v10 = v9;

  if (!v10)
  {
LABEL_14:
    if (objc_opt_respondsToSelector())
    {
      [(CRLCanvasInteractiveCanvasControllerAccessibility *)self hitRep:1 allowsAllReps:x, y];
    }

    else
    {
      [(CRLCanvasInteractiveCanvasControllerAccessibility *)self hitRep:x, y];
    }
    v20 = ;
    goto LABEL_18;
  }

  if (CRLAccessibilityShouldPerformValidationChecks() && !v7 && (ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), __CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"A knob was hit, but no rep returned!", v12, v13, v14, v15, v16, v28)) || (v17 = [v10 crlaxKnobTag], v18 = objc_msgSend(v10, "crlaxNodeIndex"), objc_msgSend(v10, "crlaxIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "crlaxKnobElementForTag:index:identifier:", v17, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v19, CRLAccessibilityShouldPerformValidationChecks()) && !v20 && (v21 = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), __CRLAccessibilityHandleValidationErrorWithDescription(v21, 0, @"Knob element not found!", v22, v23, v24, v25, v26, v28)))
  {
LABEL_21:
    abort();
  }

  if (![(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRespondsToSelector:"crlaxKnobElementIsAccessibilityElement:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasInteractiveCanvasControllerAccessibilityExtras]|| ![(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxKnobElementIsAccessibilityElement:v20])
  {

    goto LABEL_14;
  }

  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_18:

  return v20;
}

- (void)crlaxSelectRep:(id)rep
{
  if (rep)
  {
    repCopy = rep;
    repCopy2 = rep;
    v5 = [NSArray arrayWithObjects:&repCopy count:1];

    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectReps:v5, repCopy];
  }
}

- (void)crlaxAddRepToSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    v8 = selectionCopy;
    crlaxSelectedReps = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectedReps];
    if (([crlaxSelectedReps containsObject:v8] & 1) == 0)
    {
      allObjects = [crlaxSelectedReps allObjects];
      v7 = [allObjects arrayByAddingObject:v8];
      [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectReps:v7];
    }

    selectionCopy = v8;
  }
}

- (void)crlaxSelectReps:(id)reps
{
  repsCopy = reps;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = repsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 0, 0);
        if ([v13 crlaxIsSelectable])
        {
          crlaxTarget = [v13 crlaxTarget];
          info = [crlaxTarget info];

          if (info)
          {
            [v4 addObject:info];
            if (!v8)
            {
              v8 = v13;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v4 count])
  {
    if ([(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRespondsToSelector:"crlaxWillSelectRep:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasInteractiveCanvasControllerAccessibilityExtras])
    {
      [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxWillSelectRep:v8];
    }

    v16 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectionPathWithInfos:v4];
    crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxEditorController];
    [crlaxEditorController crlaxSetSelectionPath:v16];

    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxDidFocusRep:v8];
  }
}

- (void)crlaxSelectReps:(id)reps force:(BOOL)force
{
  forceCopy = force;
  repsCopy = reps;
  v22 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = repsCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 0, 0);
        v15 = v14;
        if (forceCopy)
        {
          crlaxTarget = [v14 crlaxTarget];
          info = [crlaxTarget info];

          if (info)
          {
            [v22 addObject:info];
            if (!v9)
            {
              v9 = v15;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v22 count])
  {
    selfCopy = self;
    if ([(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRespondsToSelector:"crlaxWillSelectRep:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLCanvasInteractiveCanvasControllerAccessibilityExtras])
    {
      [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxWillSelectRep:v9];
    }

    v19 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectionPathWithInfos:v22, self];
    crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)selfCopy crlaxEditorController];
    [crlaxEditorController crlaxSetSelectionPath:v19];

    [(CRLCanvasInteractiveCanvasControllerAccessibility *)selfCopy crlaxDidFocusRep:v9];
  }
}

- (id)crlaxSelectionPathWithInfo:(id)info
{
  v4 = [NSSet setWithObject:info];
  v5 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxSelectionPathWithInfos:v4];

  return v5;
}

- (id)crlaxSelectionPathWithInfos:(id)infos
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10048B71C;
  v17 = sub_10048B72C;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10048CC04;
  v10[3] = &unk_10183DE60;
  v12 = &v13;
  v10[4] = self;
  infosCopy = infos;
  v11 = infosCopy;
  if (__CRLAccessibilityPerformSafeBlock(v10) || (v11, v4 = v14[5], _Block_object_dispose(&v13, 8), v18, LOBYTE(v13) = 0, v5 = v4, v6 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v6, v5, 1, &v13), v7 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v8 = v7;

  return v8;
}

- (void)crlaxDidFocusRep:(id)rep
{
  repCopy = rep;
  crlaxInfo = [repCopy crlaxInfo];
  if (crlaxInfo)
  {
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRepsForInfo:crlaxInfo];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v20 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v16 = 0;
          v12 = v11;
          v13 = objc_opt_class();
          v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 1, &v16);
          if (v16 == 1)
          {
            abort();
          }

          v15 = v14;

          [v15 crlaxSetWasExplicitlyFocused:{objc_msgSend(v15, "isEqual:", repCopy)}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }
}

- (id)crlaxInfosForSelectionPath:(id)path
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10048B71C;
  v17 = sub_10048B72C;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10048CF74;
  v10[3] = &unk_10183DE60;
  v12 = &v13;
  v10[4] = self;
  pathCopy = path;
  v11 = pathCopy;
  if (__CRLAccessibilityPerformSafeBlock(v10) || (v11, v4 = v14[5], _Block_object_dispose(&v13, 8), v18, LOBYTE(v13) = 0, v5 = v4, v6 = objc_opt_class(), __CRLAccessibilityCastAsClass(v6, v5, 1, &v13), v7 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v8 = v7;

  return v8;
}

- (id)crlaxInfosForCurrentSelectionPath
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10048B71C;
  v13 = sub_10048B72C;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10048D110;
  v8[3] = &unk_101839FF8;
  v8[4] = self;
  v8[5] = &v9;
  if (__CRLAccessibilityPerformSafeBlock(v8) || (v2 = v10[5], _Block_object_dispose(&v9, 8), v14, LOBYTE(v9) = 0, v3 = v2, v4 = objc_opt_class(), __CRLAccessibilityCastAsClass(v4, v3, 1, &v9), v5 = objc_claimAutoreleasedReturnValue(), v9 == 1))
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)crlaxLayoutsForSelectionPath:(id)path
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10048B71C;
  v17 = sub_10048B72C;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10048D2D4;
  v10[3] = &unk_10183DE60;
  v12 = &v13;
  v10[4] = self;
  pathCopy = path;
  v11 = pathCopy;
  if (__CRLAccessibilityPerformSafeBlock(v10) || (v11, v4 = v14[5], _Block_object_dispose(&v13, 8), v18, LOBYTE(v13) = 0, v5 = v4, v6 = objc_opt_class(), __CRLAccessibilityCastAsClass(v6, v5, 1, &v13), v7 = objc_claimAutoreleasedReturnValue(), v13 == 1))
  {
    abort();
  }

  v8 = v7;

  return v8;
}

- (void)crlaxScrollCurrentSelectionToVisible
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10048D398;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  if (__CRLAccessibilityPerformSafeBlock(v2))
  {
    abort();
  }
}

- (BOOL)crlaxScrollLayoutToVisibleAndFocusTheAssociatedRep:(id)rep
{
  repCopy = rep;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  canvasEditor = [crlaxTarget canvasEditor];
  crlaxTarget2 = [repCopy crlaxTarget];
  info = [crlaxTarget2 info];
  v9 = [canvasEditor selectionPathWithInfo:info];

  crlaxTarget3 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  [crlaxTarget3 scrollToSelectionPath:v9 scrollOptions:0];

  crlaxTarget4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  [crlaxTarget4 layoutIfNeeded];

  crlaxRepForLayout = [repCopy crlaxRepForLayout];
  crlaxTarget5 = [crlaxRepForLayout crlaxTarget];

  if (crlaxTarget5)
  {
    v14 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxZoomToShowRepForLayoutAndFocus:repCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_crlaxZoomToShowRepForLayoutAndFocus:(id)focus
{
  crlaxRepForLayout = [focus crlaxRepForLayout];
  crlaxTarget = [crlaxRepForLayout crlaxTarget];

  if (crlaxTarget)
  {
    crlaxTarget2 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
    [crlaxTarget2 visibleUnscaledRect];
    v8 = v7;
    v10 = v9;

    [crlaxTarget frameInUnscaledCanvas];
    if (v14 > v10 || v13 > v8)
    {
      v16 = v11;
      v17 = v12;
      if (v14 >= v10)
      {
        v10 = v14;
      }

      if (v13 >= v8)
      {
        v8 = v13;
      }

      crlaxTarget3 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
      [crlaxTarget3 zoomWithAnimationToUnscaledRect:v16 withDuration:{v17, v10, v8, 0.0}];
    }

    CRLAccessibilityPostLayoutChangedNotification(crlaxTarget);
  }

  return crlaxTarget != 0;
}

- (void)crlaxScrollSelectionPathToVisible:(id)visible
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10048D64C;
  v4[3] = &unk_10183AE28;
  v4[4] = self;
  visibleCopy = visible;
  v5 = visibleCopy;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

- (void)crlaxLayoutIfNeeded
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10048D6D0;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  if (__CRLAccessibilityPerformSafeBlock(v2))
  {
    abort();
  }
}

- (BOOL)crlaxIsInFollowingMode
{
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  editingCoordinator = [crlaxTarget editingCoordinator];
  followCoordinator = [editingCoordinator followCoordinator];
  isFollowing = [followCoordinator isFollowing];

  return isFollowing;
}

- (id)crlaxLocalizedRulerUnitsForCanvas
{
  crlaxRulerUnitsInstance = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRulerUnitsInstance];
  crlaxLocalizedCompatibleRulerUnitsForCanvas = [crlaxRulerUnitsInstance crlaxLocalizedCompatibleRulerUnitsForCanvas];

  return crlaxLocalizedCompatibleRulerUnitsForCanvas;
}

- (CGRect)crlaxConvertUnscaledRectToRulerUnits:(CGRect)units
{
  height = units.size.height;
  width = units.size.width;
  y = units.origin.y;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxConvertPointToRulerValue:units.origin.x];
  v8 = v7;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxConvertPointToRulerValue:y];
  v10 = v9;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxConvertPointToRulerValue:width];
  v12 = v11;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxConvertPointToRulerValue:height];
  v14 = v13;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)crlaxDescriptionOfPointValueConvertedToRulerUnit:(double)unit
{
  crlaxRulerUnitsInstance = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRulerUnitsInstance];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxConvertPointToRulerValue:unit];
  v7 = [objc_opt_class() crlaxLocalizedDescriptionForUnits:objc_msgSend(crlaxRulerUnitsInstance value:{"crlaxRulerUnits"), v6}];

  return v7;
}

- (id)crlaxRulerUnitsInstance
{
  [NSClassFromString(@"CRLRulerUnits") crlaxValueForKey:@"instance"];
  v2 = v7 = 0;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsSafeCategory(v3, v2, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v5 = v4;

  return v5;
}

- (double)_crlaxConvertPointToRulerValue:(double)value
{
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxRulerUnitsInstance];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10048DA44;
  v9[3] = &unk_10183B670;
  v4 = v11 = &v13;
  v10 = v4;
  valueCopy = value;
  if (__CRLAccessibilityPerformSafeBlock(v9))
  {
    abort();
  }

  v5 = v14[3];
  _Block_object_dispose(&v13, 8);
  v6 = v5 * 100.0;
  v7 = (roundf(v6) / 100.0);

  return v7;
}

- (id)crlaxCommentEditor
{
  crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxEditorController];
  v3 = [crlaxEditorController crlaxEditorForEditAction:"addOrShowComment:" withSender:0];

  return v3;
}

- (void)addCommonObservers
{
  v3.receiver = self;
  v3.super_class = CRLCanvasInteractiveCanvasControllerAccessibility;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v3 addCommonObservers];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxRegisterForNotifications];
}

- (void)removeCommonObservers
{
  v3.receiver = self;
  v3.super_class = CRLCanvasInteractiveCanvasControllerAccessibility;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v3 removeCommonObservers];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxUnregisterForNotifications];
}

- (void)_crlaxUnregisterForNotifications
{
  if ([(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxIsObservingRemoteCommands])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxValueForKey:@"documentRoot"];
    [v3 removeObserver:self name:@"CRLCommandControllerReceivedIncomingCommand" object:v4];

    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetIsObservingRemoteCommands:0];
  }
}

- (void)crlaxCancelCollaborationOccurredTimer
{
  _crlaxCollaborationOccurredTimer = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxCollaborationOccurredTimer];

  if (_crlaxCollaborationOccurredTimer)
  {
    _crlaxCollaborationOccurredTimer2 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxCollaborationOccurredTimer];
    [_crlaxCollaborationOccurredTimer2 cancel];

    _crlaxCollaborationModifiers = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxCollaborationModifiers];
    [_crlaxCollaborationModifiers removeAllObjects];
  }
}

- (void)_crlaxPostCollaborationOccurredSound
{
  _crlaxCollaborationOccurredTimer = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxCollaborationOccurredTimer];
  if (!_crlaxCollaborationOccurredTimer)
  {
    _crlaxCollaborationOccurredTimer = [[CRLAccessibilityTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    [(CRLAccessibilityTimer *)_crlaxCollaborationOccurredTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetCollaborationOccurredTimer:_crlaxCollaborationOccurredTimer];
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10048DD84;
  v4[3] = &unk_10183AE28;
  v4[4] = self;
  v5 = 0;
  [(CRLAccessibilityTimer *)_crlaxCollaborationOccurredTimer afterDelay:v4 processBlock:4.0];
  CRLAccessibilityPostHighPriorityAnnouncementNotificationWithSound(0, 0, @"AXAnnouncementCollaborationOccurredSound");
}

- (void)_crlaxPostCollaborationOccurredSoundRepeatedly:(int)repeatedly
{
  if (repeatedly >= 1)
  {
    block[5] = v6;
    block[6] = v5;
    block[15] = v3;
    block[16] = v4;
    v8 = 0;
    v9 = 500000000 * repeatedly;
    do
    {
      v10 = dispatch_time(0, v8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10048DF90;
      block[3] = &unk_10183AB38;
      block[4] = self;
      dispatch_after(v10, &_dispatch_main_q, block);
      v8 += 500000000;
    }

    while (v9 != v8);
  }
}

- (void)collaboratorCursorSelectionPathChangedFromSelectionPath:(id)path toSelectionPath:(id)selectionPath collaboratorPresence:(id)presence
{
  pathCopy = path;
  selectionPathCopy = selectionPath;
  presenceCopy = presence;
  v46.receiver = self;
  v46.super_class = CRLCanvasInteractiveCanvasControllerAccessibility;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v46 collaboratorCursorSelectionPathChangedFromSelectionPath:pathCopy toSelectionPath:selectionPathCopy collaboratorPresence:presenceCopy];
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  v12 = [crlaxTarget infoForSelectionPath:selectionPathCopy];

  if (v12)
  {
    v45 = 0;
    v13 = +[CRLAccessibility currentlyFocusedElement];
    v14 = objc_opt_class();
    v15 = __CRLAccessibilityCastAsClass(v14, v13, 1, &v45);
    if (v45 != 1)
    {
      v16 = v15;

      v44 = v16;
      repForSelecting = [v16 repForSelecting];
      info = [repForSelecting info];

      v45 = 0;
      v19 = repForSelecting;
      v20 = objc_opt_class();
      v21 = __CRLAccessibilityCastAsSafeCategory(v20, v19, 1, &v45);
      if (v45 != 1)
      {
        v22 = v21;

        v43 = v22;
        crlaxContainedRep = [v22 crlaxContainedRep];
        crlaxTarget2 = [crlaxContainedRep crlaxTarget];
        info2 = [crlaxTarget2 info];

        if (v12 == info)
        {
          [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxPostCollaborationOccurredSound];
LABEL_21:
          v26 = v44;
          goto LABEL_22;
        }

        if (v12 == info2)
        {
          crlaxTarget3 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
          v41 = [crlaxTarget3 infoForSelectionPath:pathCopy];

          v26 = v44;
          if (v41)
          {
            info3 = [v19 info];

            if (v41 == info3)
            {
              [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxPostCollaborationOccurredSoundRepeatedly:2];
            }
          }

          goto LABEL_22;
        }

        v26 = v44;
        if (![(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxIsInFollowingMode])
        {
LABEL_22:

          goto LABEL_23;
        }

        crlaxTarget4 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
        editingCoordinator = [crlaxTarget4 editingCoordinator];
        followCoordinator = [editingCoordinator followCoordinator];
        accessibilityExperienceCoordinator = [followCoordinator accessibilityExperienceCoordinator];

        owner = [presenceCopy owner];
        lastFollowedParticipant = [accessibilityExperienceCoordinator lastFollowedParticipant];

        if (owner != lastFollowedParticipant)
        {
LABEL_20:

          goto LABEL_21;
        }

        crlaxTarget5 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
        v34 = [crlaxTarget5 repForInfo:v12];

        if (!v34)
        {
LABEL_19:

          goto LABEL_20;
        }

        v45 = 0;
        v35 = selectionPathCopy;
        v36 = objc_opt_class();
        v37 = __CRLAccessibilityCastAsSafeCategory(v36, v35, 1, &v45);
        if (v45 != 1)
        {
          v38 = v37;

          crlaxMostSpecificTextSelection = [v38 crlaxMostSpecificTextSelection];

          if (crlaxMostSpecificTextSelection)
          {
            [accessibilityExperienceCoordinator submitEventForEditOf:v34];
          }

          else
          {
            [accessibilityExperienceCoordinator submitEventForSelectionOf:v34];
          }

          goto LABEL_19;
        }
      }
    }

    abort();
  }

LABEL_23:
}

- (void)crlaxLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CRLCanvasInteractiveCanvasControllerAccessibility;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v3 crlaxLoadAccessibilityInformation];
  if (![(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxIsTearingDown])
  {
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxRegisterForNotifications];
  }
}

- (void)crlaxDeselectAll
{
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  canvasEditor = [crlaxTarget canvasEditor];
  v5 = [canvasEditor selectionPathWithInfos:0];

  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxDeselectWithSelectionPath:v5];
}

- (void)crlaxDeselectRep:(id)rep
{
  repCopy = rep;
  if (repCopy)
  {
    v13 = repCopy;
    infosForCurrentSelectionPath = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self infosForCurrentSelectionPath];
    v6 = [infosForCurrentSelectionPath mutableCopy];

    crlaxInfo = [v13 crlaxInfo];
    if (crlaxInfo)
    {
      crlaxInfo2 = [v13 crlaxInfo];
      [v6 removeObject:crlaxInfo2];

      crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
      canvasEditor = [crlaxTarget canvasEditor];
      v11 = [v6 copy];
      v12 = [canvasEditor selectionPathWithInfos:v11];

      [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxDeselectWithSelectionPath:v12];
    }

    repCopy = v13;
  }
}

- (void)_crlaxDeselectWithSelectionPath:(id)path
{
  pathCopy = path;
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  editorController = [crlaxTarget editorController];
  [editorController setSelectionPath:pathCopy withFlags:0x2000];
}

- (void)p_editorControllerSelectionPathDidChange:(id)change
{
  changeCopy = change;
  v48.receiver = self;
  v48.super_class = CRLCanvasInteractiveCanvasControllerAccessibility;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v48 p_editorControllerSelectionPathDidChange:changeCopy];
  userInfo = [changeCopy userInfo];
  v47 = 0;
  v6 = [userInfo objectForKeyedSubscript:@"CRLEditorControllerOldSelectionPathKey"];
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v47);
  if (v47 == 1)
  {
    abort();
  }

  v9 = v8;

  v44 = v9;
  v10 = [v9 crlaxMostSpecificSelectionOfClass:{+[CRLAccessibilitySafeCategory crlaxTargetClass](CRLBoardItemSelectionAccessibility, "crlaxTargetClass")}];
  crlaxEditorController = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxEditorController];
  crlaxSelectionPath = [crlaxEditorController crlaxSelectionPath];

  v13 = crlaxSelectionPath;
  v14 = [crlaxSelectionPath crlaxMostSpecificSelectionOfClass:{+[CRLAccessibilitySafeCategory crlaxTargetClass](CRLBoardItemSelectionAccessibility, "crlaxTargetClass")}];
  crlaxTarget = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxTarget];
  layerHost = [crlaxTarget layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

  if (isCurrentlyInQuickSelectMode && v10 != v14)
  {
    _crlaxSelectionAnnouncementTimer = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSelectionAnnouncementTimer];
    [_crlaxSelectionAnnouncementTimer invalidate];

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10048EA28;
    v45[3] = &unk_101866960;
    v45[4] = self;
    v20 = v14;
    v46 = v20;
    v21 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v45 block:2.0];
    [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetSelectionAnnouncmentTimer:v21];

    crlaxInfos = [v10 crlaxInfos];
    v23 = [crlaxInfos mutableCopy];

    crlaxInfos2 = [v20 crlaxInfos];
    [v23 minusSet:crlaxInfos2];

    crlaxInfos3 = [v20 crlaxInfos];
    v26 = [crlaxInfos3 mutableCopy];

    crlaxInfos4 = [v10 crlaxInfos];
    [v26 minusSet:crlaxInfos4];

    v28 = [v23 count];
    v29 = [v26 count];
    if (!(v28 | v29))
    {
LABEL_21:

      goto LABEL_22;
    }

    v30 = v29;
    v40 = v23;
    v39 = v13;
    v31 = +[NSBundle mainBundle];
    v41 = [v31 localizedStringForKey:@"Added %@ to selection" value:0 table:0];

    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"Removed %@ from selection" value:0 table:0];

    v34 = +[NSBundle mainBundle];
    v38 = [v34 localizedStringForKey:@"%@. %@." value:0 table:0];

    v35 = +[NSBundle mainBundle];
    v43 = [v35 localizedStringForKey:@"Selection changed" value:0 table:0];

    if (v28)
    {
      v42 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self p_sentenceUsingFormat:v33 toDescribeRepSelectionOrDeltaWith:v40];
    }

    else
    {
      v42 = 0;
    }

    v13 = v39;
    if (v30)
    {
      v30 = [(CRLCanvasInteractiveCanvasControllerAccessibility *)self p_sentenceUsingFormat:v41 toDescribeRepSelectionOrDeltaWith:v26];
      v36 = v43;
      if (v28)
      {
        if (v42)
        {
          v37 = v38;
          if (v30)
          {
            v36 = [NSString stringWithFormat:v38, v42, v30];
LABEL_18:

            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      else if (v30)
      {
        v30 = v30;
        v36 = v30;
        v37 = v38;
        goto LABEL_18;
      }
    }

    else
    {
      v36 = v43;
      if (v28)
      {
        v37 = v38;
        if (v42)
        {
          v36 = v42;
          v30 = 0;
          goto LABEL_18;
        }

LABEL_20:
        UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v36);

        v23 = v40;
        goto LABEL_21;
      }
    }

    v37 = v38;
    goto LABEL_20;
  }

LABEL_22:
}

- (id)p_sentenceUsingFormat:(id)format toDescribeRepSelectionOrDeltaWith:(id)with
{
  formatCopy = format;
  withCopy = with;
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@" value:" table:{0, 0}];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@" " value:0 table:0];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"and %@" value:0 table:0];

  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [withCopy count]);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10048EDA0;
  v26 = &unk_101866988;
  selfCopy = self;
  v14 = v29 = &v30;
  v28 = v14;
  [withCopy enumerateObjectsUsingBlock:&v23];
  if (v31[3])
  {
    v15 = 0;
  }

  else
  {
    if ([v14 count] >= 2)
    {
      v16 = [v14 count];
      lastObject = [v14 lastObject];
      selfCopy = [NSString stringWithFormat:v13, lastObject, v23, v24, v25, v26, selfCopy];
      [v14 replaceObjectAtIndex:v16 - 1 withObject:selfCopy];
    }

    if ([v14 count] <= 2)
    {
      v19 = v11;
    }

    else
    {
      v19 = v9;
    }

    v20 = v19;
    v21 = [v14 componentsJoinedByString:v20];
    v15 = [NSString stringWithFormat:formatCopy, v21];
  }

  _Block_object_dispose(&v30, 8);

  return v15;
}

- (void)teardown
{
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetIsTearingDown:1];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self crlaxCancelCollaborationOccurredTimer];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetCollaborationOccurredTimer:0];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetCollaborationModifiers:0];
  v3.receiver = self;
  v3.super_class = CRLCanvasInteractiveCanvasControllerAccessibility;
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)&v3 teardown];
  [(CRLCanvasInteractiveCanvasControllerAccessibility *)self _crlaxSetIsTearingDown:0];
}

@end