@interface CRLCanvasEditorHelper
+ (BOOL)physicalKeyboardIsSender:(id)sender;
- (BOOL)allowSelectAllForSender:(id)sender hasNothingVisiblySelected:(BOOL)selected hasAtLeastOneThingToSelect:(BOOL)select;
- (BOOL)canGroupBoardItems:(id)items;
- (BOOL)canInsertBoardItems:(id)items intoGroup:(id)group;
- (BOOL)canPasteWithItemSource:(id)source sender:(id)sender;
- (BOOL)canPerformMaskWithSender:(id)sender;
- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)sender;
- (BOOL)canPerformMaskWithShapeWithSender:(id)sender;
- (BOOL)canPerformUnmaskWithSender:(id)sender;
- (BOOL)canUngroupGroupInfo:(id)info;
- (BOOL)canUngroupWithSelection:(id)selection;
- (BOOL)insertBoardItemsFromDragAndDrop:(id)drop atPoint:(CGPoint)point onRep:(id)rep insertionContext:(id)context alreadyPositionedInputInfos:(BOOL)infos;
- (BOOL)isLayoutSelectable:(id)selectable;
- (BOOL)p_allowsCanvasScrollingFromKeyboard;
- (BOOL)selectionContainsJustUnlockedObjects;
- (BOOL)selectionIsEmpty;
- (BOOL)shouldAllowPotentiallyKeyboardBasedActionForSender:(id)sender;
- (BOOL)shouldReleaseChildItemsFromTableWhenUngrouping:(id)ungrouping;
- (BOOL)wantsToHighlightRep:(id)rep forDragOperationWithDragInfo:(id)info atPoint:(CGPoint)point allowNonPlaceholderReplacement:(BOOL)replacement;
- (CGPoint)contentOffsetForDocumentNavigationType:(unint64_t)type;
- (CGPoint)p_centerOfBoardItems:(id)items;
- (CGPoint)p_offsetToMoveCenterOfLayout:(id)layout toPoint:(CGPoint)point inRootSpace:(BOOL)space;
- (CGPoint)p_offsetToMoveLayout:(id)layout edge:(int)edge toOffset:(double)offset inRootSpace:(BOOL)space;
- (CGRect)p_boundingBoxForLayouts:(id)layouts inRootSpace:(BOOL)space;
- (CRLCanvasEditor)canvasEditor;
- (CRLCanvasEditorHelper)initWithCanvasEditor:(id)editor;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (Class)p_editorClassForBoardItems:(id)items shouldIgnoreLockedState:(BOOL)state;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)boardItemsToDelete;
- (id)commandForDeletingBoardItemsFromTopLevelContainer:(id)container shouldRemoveEmptyContainers:(BOOL)containers;
- (id)commandForDeletingInfosPossiblyFromMultipleContainers:(id)containers shouldRemoveEmptyContainers:(BOOL)emptyContainers canDeleteNewlyCreatedInfos:(BOOL)infos;
- (id)commandForInsertingBoardItemsIntoTopLevelContainer:(id)container below:(id)below withOffset:(unint64_t)offset;
- (id)commandForReplacingImagePlaceholderInSelection:(id)selection withBoardItems:(id)items isCrossDocument:(BOOL)document withSender:(id)sender outSelectionBehavior:(id *)behavior;
- (id)commandToAnchorChildItemWhenUngrouping:(id)ungrouping childItem:(id)item childItemGeometry:(id)geometry;
- (id)commandToInsertBoardItems:(id)items intoContainer:(id)container belowBoardItem:(id)item withOffset:(unint64_t)offset;
- (id)commandsForUngrouping:(id)ungrouping objectsToSelect:(id)select;
- (id)commandsToSwapConnectionsFromRep:(id)rep toInfo:(id)info;
- (id)infosToDeleteToDeleteInfos:(id)infos;
- (id)insertCopiesOfInfos:(id)infos forDuplicatingDragOnRep:(id)rep;
- (id)layoutsForAlignAndDistribute;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (id)p_canvasSelectionPathChangingInfo:(id)info shouldExclude:(BOOL)exclude;
- (id)p_commandForUpdatingMagnetAfterGroupingForCline:(id)cline withPosition:(id)position withGroupLayout:(id)layout forMagnet:(BOOL)magnet;
- (id)p_commandsForGroupingBoardItems:(id)items outNewGroup:(id *)group;
- (id)p_commandsToPrepareForGroupingBoardItems:(id)items infosToAdjustForConnectionLines:(id)lines;
- (id)pasteboardController;
- (id)repToHighlightForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (id)selectionBehaviorForDeletingBoardItems:(id)items;
- (id)selectionPathByReplacingInfosInSelectionPath:(id)path withInfos:(id)infos preservingMultipleContainers:(BOOL)containers;
- (id)selectionPathForInsertingBoardItems:(id)items byReplacingInfosInSelectionPath:(id)path preservingMultipleContainers:(BOOL)containers;
- (id)selectionPathWithInfo:(id)info;
- (id)selectionPathWithInfos:(id)infos;
- (id)shapeInfoToBeginEditing;
- (id)tooltipForMoveBackward;
- (id)tooltipForMoveForward;
- (id)tooltipForMoveToBack;
- (id)tooltipForMoveToFront;
- (id)topMostContainerForDeletingContainer:(id)container;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformAlignAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformBringDrawablesForwardActionWithSender:(id)sender;
- (int64_t)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformCopyAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformCopyStyleAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformCutAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformDeleteAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformDeselectAllAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformDistributeActionWithSender:(id)sender;
- (int64_t)canvasEditorCanPerformDuplicateAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformGroupActionWithSender:(id)sender;
- (int64_t)canvasEditorCanPerformLockAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformPasteAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformPasteAsPlainTextAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformPastePreservingFormulasAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformPasteValuesAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformSelectAllAction:(SEL)action withSender:(id)sender;
- (int64_t)canvasEditorCanPerformSendDrawablesBackwardActionWithSender:(id)sender;
- (int64_t)canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:(id)sender;
- (int64_t)canvasEditorCanPerformUngroupActionWithSender:(id)sender;
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)addContextualMenuItemsToArray:(id)array;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)alignDrawablesByEdge:(int)edge;
- (void)arrowKeyReceivedInDirection:(unint64_t)direction withModifierKeys:(id)keys;
- (void)beginEditingOnKeyInputWithString:(id)string;
- (void)bringForward:(id)forward;
- (void)bringToFront:(id)front;
- (void)contextMenuDidHideForContextMenuController:(id)controller;
- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point;
- (void)cut:(id)cut;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)deselectAll:(id)all;
- (void)distributeDrawablesByEdge:(int)edge;
- (void)distributeDrawablesEvenly;
- (void)donateBoardItemsInsertion:(id)insertion;
- (void)duplicate:(id)duplicate;
- (void)enterQuickSelectMode:(id)mode;
- (void)group:(id)group;
- (void)hideDragAndDropUI;
- (void)lock:(id)lock;
- (void)mask;
- (void)maskImage:(id)image withShapeType:(int64_t)type;
- (void)maskWithShape;
- (void)maskWithShapeType:(int64_t)type;
- (void)moveSelections:(unint64_t)selections;
- (void)p_beginEditingTextShape:(id)shape replacementRange:(_NSRange)range withText:(id)text;
- (void)p_copy:(id)p_copy;
- (void)p_fixupGeometryForInsertingBoardItems:(id)items intoContainer:(id)container;
- (void)p_maskImage:(id)image withShape:(id)shape shouldOpenGroup:(BOOL)group shouldBeginEditing:(BOOL)editing shouldCenterAroundFaces:(BOOL)faces;
- (void)p_scrollCanvasForScrollType:(unint64_t)type;
- (void)p_setLockStatusOfSelectedDrawables:(BOOL)drawables;
- (void)paste:(id)paste;
- (void)pasteAsPlainText:(id)text;
- (void)pasteValues:(id)values;
- (void)perform_delete;
- (void)perform_deleteBoardItems:(id)items;
- (void)prepareGeometryForInsertingBoardItems:(id)items withInsertionContext:(id)context;
- (void)prepareGeometryForPastingBoardItems:(id)items fromPasteboard:(id)pasteboard intoContainer:(id)container useOriginalPositions:(BOOL)positions;
- (void)presentAlignmentTools:(id)tools;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler;
- (void)replaceBoardItem:(id)item withBoardItem:(id)boardItem;
- (void)scrollCanvasDown:(id)down;
- (void)scrollCanvasLeft:(id)left;
- (void)scrollCanvasPageDown:(id)down;
- (void)scrollCanvasPageUp:(id)up;
- (void)scrollCanvasRight:(id)right;
- (void)scrollCanvasUp:(id)up;
- (void)selectParent:(id)parent;
- (void)sendBackward:(id)backward;
- (void)sendToBack:(id)back;
- (void)showMiniFormatterToExitDrawingMode:(id)mode;
- (void)ungroup:(id)ungroup;
- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info;
- (void)updateTableAnchorHintWhenGrouping:(id)grouping groupLayout:(id)layout;
- (void)zoomIn:(id)in;
- (void)zoomOut:(id)out;
@end

@implementation CRLCanvasEditorHelper

- (CRLCanvasEditorHelper)initWithCanvasEditor:(id)editor
{
  editorCopy = editor;
  v13.receiver = self;
  v13.super_class = CRLCanvasEditorHelper;
  v5 = [(CRLCanvasEditorHelper *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mCanvasEditor, editorCopy);
    v6->mTornDown = 0;
    v7 = [CRLKeyboardMovementManipulator alloc];
    WeakRetained = objc_loadWeakRetained(&v6->mCanvasEditor);
    interactiveCanvasController = [WeakRetained interactiveCanvasController];
    v10 = [(CRLKeyboardMovementManipulator *)v7 initWithInteractiveCanvasController:interactiveCanvasController];
    mKeyboardManipulator = v6->mKeyboardManipulator;
    v6->mKeyboardManipulator = v10;
  }

  return v6;
}

- (CRLCanvasEditor)canvasEditor
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);

  return WeakRetained;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];

  return interactiveCanvasController;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];

  return editingCoordinator;
}

- (id)pasteboardController
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  pasteboardController = [canvasEditor pasteboardController];

  return pasteboardController;
}

- (void)dealloc
{
  if (!self->mTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101345F98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101345FAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134603C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:165 isFatal:0 description:"Need to call teardown on the editor helper"];
  }

  v6.receiver = self;
  v6.super_class = CRLCanvasEditorHelper;
  [(CRLCanvasEditorHelper *)&v6 dealloc];
}

- (BOOL)isLayoutSelectable:(id)selectable
{
  selectableCopy = selectable;
  if (![selectableCopy isSelectable])
  {
    goto LABEL_6;
  }

  v5 = objc_opt_class();
  info = [selectableCopy info];
  v7 = sub_100014370(v5, info);

  if (v7)
  {
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    mainBoard = [editingCoordinator mainBoard];
    v11 = [v7 id];
    v12 = [mainBoard containsObject:v11];

    if ((v12 & 1) == 0)
    {

LABEL_6:
      v17 = 0;
      goto LABEL_7;
    }
  }

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator2 = [interactiveCanvasController2 editingCoordinator];
  followCoordinator = [editingCoordinator2 followCoordinator];
  isFollowing = [followCoordinator isFollowing];

  v17 = isFollowing ^ 1;
LABEL_7:

  return v17;
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  selectionCopy = selection;
  pathCopy = path;
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, selectionCopy);
  v11 = v10;
  if (!v10)
  {
    v22 = objc_opt_class();
    boardItems = sub_100014370(v22, selectionCopy);
    if (boardItems)
    {
      v23 = [CRLPathEditor alloc];
      interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      v21 = [(CRLBoardItemEditor *)v23 initWithInteractiveCanvasController:interactiveCanvasController];

      goto LABEL_32;
    }

    if (!selectionCopy)
    {
      goto LABEL_31;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346130();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101346144();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013461CC();
    }

    v34 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v34);
    }

    v26 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper nextEditorForSelection:withNewEditorStack:selectionPath:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    v36 = selectionCopy;
    v28 = "Can't build an editor from the canvas editor with something that isn't a CRLBoardItemSelection (received %@)";
    v29 = v26;
    v30 = v27;
    v31 = 213;
    goto LABEL_30;
  }

  boardItems = [v10 boardItems];
  v13 = [(CRLCanvasEditorHelper *)self editorClassForInfos:boardItems];
  if (!v13)
  {
LABEL_31:
    v21 = 0;
    goto LABEL_32;
  }

  v14 = v13;
  if (![(objc_class *)v13 isSubclassOfClass:objc_opt_class()])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346064();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101346078();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101346108();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v25);
    }

    v26 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper nextEditorForSelection:withNewEditorStack:selectionPath:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    v28 = "Unknown editor class";
    v29 = v26;
    v30 = v27;
    v31 = 243;
LABEL_30:
    [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:v31 isFatal:0 description:v28, v36];

    goto LABEL_31;
  }

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController2 freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  v18 = objc_opt_class();
  v19 = sub_100014370(v18, selectionCopy);
  v20 = v19;
  if (isInDrawingMode && [v19 hasSelectedItemsInNonGroupContainer])
  {
    v21 = [[CRLFreehandDrawingMixedTypeEditor alloc] initWithInteractiveCanvasController:interactiveCanvasController2 currentSelectionPath:pathCopy];
  }

  else
  {
    v32 = [v14 alloc];
    interactiveCanvasController3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v21 = [v32 initWithInteractiveCanvasController:interactiveCanvasController3];

    [(CRLFreehandDrawingMixedTypeEditor *)v21 setBoardItems:boardItems];
  }

LABEL_32:

  return v21;
}

- (Class)p_editorClassForBoardItems:(id)items shouldIgnoreLockedState:(BOOL)state
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    anyObject = [itemsCopy anyObject];
    editorClass = [anyObject editorClass];

    if (editorClass)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = itemsCopy;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            if ([v13 locked] && !state)
            {
              editorClass = objc_opt_class();
              goto LABEL_23;
            }

            editorClass2 = [v13 editorClass];
            if (!editorClass2)
            {
              goto LABEL_21;
            }

            v15 = editorClass2;
            if (([editorClass2 isSubclassOfClass:editorClass] & 1) == 0 && v15 != editorClass)
            {
              editorClass = [editorClass superclass];
              if (([v15 isSubclassOfClass:editorClass] & 1) == 0)
              {
                do
                {
                  editorClass = [editorClass superclass];
                }

                while (![v15 isSubclassOfClass:editorClass]);
              }

              if (objc_opt_class() != editorClass && ![editorClass isSubclassOfClass:objc_opt_class()])
              {
LABEL_21:
                editorClass = 0;
                goto LABEL_23;
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }
  }

  else
  {
    editorClass = 0;
  }

  v16 = editorClass;

  return editorClass;
}

- (id)selectionPathWithInfo:(id)info
{
  if (info)
  {
    v4 = [NSSet setWithObject:?];
    v5 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:v4];
  }

  else
  {
    v5 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:?];
  }

  return v5;
}

- (id)selectionPathWithInfos:(id)infos
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = infos;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      v6 = 0;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * v6);
        if (([v7 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasElementInfo] & 1) == 0)
        {
          v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013461F4();
          }

          v9 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v27 = v8;
            v28 = 2082;
            v29 = "[CRLCanvasEditorHelper selectionPathWithInfos:]";
            v30 = 2082;
            v31 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m";
            v32 = 1024;
            v33 = 310;
            v34 = 2112;
            v35 = v7;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot make a selection path with an object that is not a <CRLCanvasElementInfo> (%@)", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134621C();
          }

          v10 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v13 = v10;
            v14 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v27 = v8;
            v28 = 2114;
            v29 = v14;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v11 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper selectionPathWithInfos:]"];
          v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
          [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:310 isFatal:0 description:"Cannot make a selection path with an object that is not a <CRLCanvasElementInfo> (%@)", v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v36 count:16];
    }

    while (v4);
  }

  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  delegate = [interactiveCanvasController delegate];
  v17 = [delegate selectionModelTranslatorForInteractiveCanvasController:interactiveCanvasController];
  v18 = [v17 selectionPathForInfos:obj];

  return v18;
}

- (id)selectionPathByReplacingInfosInSelectionPath:(id)path withInfos:(id)infos preservingMultipleContainers:(BOOL)containers
{
  containersCopy = containers;
  pathCopy = path;
  infosCopy = infos;
  if ([(CRLCanvasEditorHelper *)self p_editorClassForBoardItems:infosCopy shouldIgnoreLockedState:0])
  {
    v10 = [[_TtC8Freeform21CRLBoardItemSelection alloc] initWithBoardItems:infosCopy];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(CRLCanvasSelection);
  v12 = pathCopy;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];

  v16 = [selectionModelTranslator containerToInsertIntoForSelectionPath:v12];
  v17 = v16;
  if (containersCopy)
  {
    v18 = [v12 mostSpecificSelectionOfClass:objc_opt_class()];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v19 = [v12 selectionPathPoppingOffSelection:v18];
    }

    else
    {
      v19 = v12;
    }
  }

  else
  {
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([infosCopy allObjects], v20 = objc_claimAutoreleasedReturnValue(), v21 = -[CRLCanvasEditorHelper canInsertBoardItems:intoGroup:](self, "canInsertBoardItems:intoGroup:", v20, v17), v20, v21))
    {
      v22 = [selectionModelTranslator selectionPathForNothingSelectedInsideGroup:v17];
    }

    else
    {
      v22 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:0];
    }

    v19 = v22;
    v18 = v12;
  }

  v23 = [v19 mostSpecificSelectionOfClass:objc_opt_class()];
  v24 = [v19 selectionPathReplacingMostSpecificLocationOfSelection:v23 withSelection:v11];
  v25 = v24;
  if (v10)
  {
    v26 = [v24 selectionPathWithAppendedSelection:v10];
  }

  else
  {
    v26 = v24;
  }

  v27 = v26;

  return v27;
}

- (id)selectionPathForInsertingBoardItems:(id)items byReplacingInfosInSelectionPath:(id)path preservingMultipleContainers:(BOOL)containers
{
  containersCopy = containers;
  itemsCopy = items;
  v9 = [(CRLCanvasEditorHelper *)self selectionPathByReplacingInfosInSelectionPath:path withInfos:itemsCopy preservingMultipleContainers:containersCopy];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  LODWORD(self) = [freehandDrawingToolkit isInDrawingMode];

  if (self)
  {
    v34 = [itemsCopy count];
    v12 = +[NSMutableSet set];
    v13 = +[NSMutableSet set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = v14;
            goto LABEL_35;
          }

          [v12 addObject:v19];
          childItems = [v19 childItems];
          [v13 addObjectsFromArray:childItems];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    if (v34 && [v13 count])
    {
      v21 = v9;
      v22 = [v21 mostSpecificSelectionOfClass:objc_opt_class()];
      v23 = v22;
      if (v22)
      {
        boardItems = [v22 boardItems];
        v25 = [boardItems isEqual:v14];

        if ((v25 & 1) == 0)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101346244();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10134626C();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013462FC();
          }

          v26 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v26);
          }

          v27 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper selectionPathForInsertingBoardItems:byReplacingInfosInSelectionPath:preservingMultipleContainers:]"];
          v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
          [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:409 isFatal:0 description:"the default selection should be pointing at the boardItems we're trying to insert"];
        }

        v29 = [[_TtC8Freeform17CRLGroupSelection alloc] initWithContainerGroups:v12 hasSelectedItemsInNonGroupContainer:0];
        v30 = [v21 selectionPathReplacingMostSpecificLocationOfSelection:v23 withSelection:v29];
        v31 = [[_TtC8Freeform21CRLBoardItemSelection alloc] initWithBoardItems:v13];
        v9 = [v30 selectionPathWithAppendedSelection:v31];
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101346324();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10134634C();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013463E8();
        }

        v32 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v32);
        }

        v29 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper selectionPathForInsertingBoardItems:byReplacingInfosInSelectionPath:preservingMultipleContainers:]"];
        v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
        [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:407 isFatal:0 description:"invalid nil value for '%{public}s'", "boardItemSelection"];
        v9 = v21;
      }

LABEL_35:
    }
  }

  return v9;
}

- (id)p_canvasSelectionPathChangingInfo:(id)info shouldExclude:(BOOL)exclude
{
  excludeCopy = exclude;
  infoCopy = info;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];

  selectionPath = [editorController selectionPath];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v11 = [interactiveCanvasController infosForSelectionPath:selectionPath];

  v12 = [v11 mutableCopy];
  v13 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];
  v14 = v13;
  if (v13)
  {
    boardItems = [v13 boardItems];
    v16 = [boardItems isEqual:v11];

    if (v16)
    {
      v17 = +[NSMutableSet set];

      v12 = v17;
    }
  }

  if (!v12)
  {
    v12 = +[NSMutableSet set];
  }

  if (excludeCopy)
  {
    [v12 removeObject:infoCopy];
  }

  else
  {
    [v12 addObject:infoCopy];
  }

  v18 = [v12 count];
  if (!v14 || v18)
  {
    v26 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:v12];
  }

  else
  {
    interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    selectionModelTranslator = [interactiveCanvasController2 selectionModelTranslator];
    containerGroups = [v14 containerGroups];
    [containerGroups firstObject];
    v21 = selectionPath;
    v22 = v11;
    v23 = editorController;
    v25 = v24 = infoCopy;
    v26 = [selectionModelTranslator selectionPathForNothingSelectedInsideGroup:v25];

    infoCopy = v24;
    editorController = v23;
    v11 = v22;
    selectionPath = v21;
  }

  return v26;
}

- (BOOL)shouldAllowPotentiallyKeyboardBasedActionForSender:(id)sender
{
  senderCopy = sender;
  v5 = [objc_opt_class() physicalKeyboardIsSender:senderCopy];

  if (!v5)
  {
    return 1;
  }

  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  shouldAllowKeyCommands = [interactiveCanvasController shouldAllowKeyCommands];

  return shouldAllowKeyCommands;
}

+ (BOOL)physicalKeyboardIsSender:(id)sender
{
  senderCopy = sender;
  if ([senderCopy conformsToProtocol:&OBJC_PROTOCOL___CRLiOSPhysicalKeyboardAwareSender])
  {
    crl_representsPhysicalKeyboard = [senderCopy crl_representsPhysicalKeyboard];
  }

  else
  {
    crl_representsPhysicalKeyboard = 1;
  }

  return crl_representsPhysicalKeyboard;
}

- (BOOL)canPasteWithItemSource:(id)source sender:(id)sender
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    pasteboardController = [(CRLCanvasEditorHelper *)self pasteboardController];

    if (!pasteboardController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101346410();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101346424();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013464C0();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper canPasteWithItemSource:sender:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:495 isFatal:0 description:"invalid nil value for '%{public}s'", "self.pasteboardController"];
    }

    pasteboardController2 = [(CRLCanvasEditorHelper *)self pasteboardController];
    v11 = +[CRLPasteboard generalPasteboard];
    sourceCopy = [pasteboardController2 ingestibleItemSourceForPasteboard:v11];
  }

  canProduceBoardItems = [sourceCopy canProduceBoardItems];

  return canProduceBoardItems;
}

- (int64_t)canvasEditorCanPerformDeleteAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if (([canvasEditor canvasEditorCanDeleteWithSender:senderCopy] & ("delete:" == action)) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int64_t)canvasEditorCanPerformCopyAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = -1;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy]&& "copy:" == action)
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanCopyWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformCopyStyleAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [canvasEditor canvasEditorCanCopyStyleWithSender:senderCopy];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int64_t)canvasEditorCanPerformCutAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    v7 = [canvasEditor canvasEditorCanCutWithSender:senderCopy];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int64_t)canvasEditorCanPerformPasteAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = -1;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy]&& "paste:" == action)
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanPasteWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformPasteAsPlainTextAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanPasteAsPlainTextWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformPasteValuesAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanPasteValuesWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformPastePreservingFormulasAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanPasteWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformDuplicateAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if (([canvasEditor canvasEditorCanDuplicateWithSender:senderCopy] & ("duplicate:" == action)) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int64_t)canvasEditorCanPerformSelectAllAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:senderCopy])
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanSelectAllWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (BOOL)allowSelectAllForSender:(id)sender hasNothingVisiblySelected:(BOOL)selected hasAtLeastOneThingToSelect:(BOOL)select
{
  selectCopy = select;
  selectedCopy = selected;
  senderCopy = sender;
  if (selectCopy)
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    interactiveCanvasController = [canvasEditor interactiveCanvasController];
    layerHost = [interactiveCanvasController layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    if ([asiOSCVC allowedToEnterQuickSelectMode])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }

    if (selectedCopy && (isKindOfClass & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = [CRLCanvasEditor physicalKeyboardIsSender:senderCopy];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)canvasEditorCanPerformDeselectAllAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [canvasEditor canvasEditorCanDeselectAllWithSender:senderCopy];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (int64_t)canvasEditorCanPerformGroupActionWithSender:(id)sender
{
  senderCopy = sender;
  if (-[CRLCanvasEditorHelper shouldAllowPotentiallyKeyboardBasedActionForSender:](self, "shouldAllowPotentiallyKeyboardBasedActionForSender:", senderCopy) && (-[CRLCanvasEditorHelper interactiveCanvasController](self, "interactiveCanvasController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 documentIsSharedReadOnly], v5, (v6 & 1) == 0) && (-[CRLCanvasEditorHelper canvasEditor](self, "canvasEditor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "canvasEditorCanGroupWithSender:", senderCopy), v7, v8))
  {
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    editorController = [canvasEditor editorController];
    selectionPath = [editorController selectionPath];
    v14 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      v19 = 1;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          containingGroup = [*(*(&v26 + 1) + 8 * i) containingGroup];
          v22 = containingGroup;
          if (containingGroup)
          {
            childInfos = [containingGroup childInfos];
            v24 = [NSSet setWithArray:childInfos];

            LOBYTE(childInfos) = [v24 isEqualToSet:v15];
            if (childInfos)
            {

              v19 = -1;
              goto LABEL_18;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 1;
    }

LABEL_18:
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

- (int64_t)canvasEditorCanPerformUngroupActionWithSender:(id)sender
{
  senderCopy = sender;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
  {
    v7 = -1;
  }

  else
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([canvasEditor canvasEditorCanUngroupWithSender:senderCopy])
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)action withSender:(id)sender
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController:action];
  canvasEditor = [v4 canvasEditor];
  infosToConnect = [canvasEditor infosToConnect];
  if ([infosToConnect count] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformAlignAction:(SEL)action withSender:(id)sender
{
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController:action];
  if ([v5 documentIsSharedReadOnly])
  {
    v6 = -1;
  }

  else
  {
    layoutsForAlignAndDistribute = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
    if ([layoutsForAlignAndDistribute count] > 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }
  }

  return v6;
}

- (int64_t)canvasEditorCanPerformDistributeActionWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if ([interactiveCanvasController documentIsSharedReadOnly])
  {
    v5 = -1;
  }

  else
  {
    layoutsForAlignAndDistribute = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
    if ([layoutsForAlignAndDistribute count] > 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }
  }

  return v5;
}

- (BOOL)canPerformMaskWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editorController = [interactiveCanvasController2 editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  if ([v9 count] == 1)
  {
    v10 = objc_opt_class();
    anyObject = [v9 anyObject];
    v12 = sub_100014370(v10, anyObject);

    if (v12 && ([v12 locked] & 1) == 0)
    {
      v14 = +[CRLImageProviderPool sharedPool];
      imageAssetPayload = [v12 imageAssetPayload];
      v16 = [v14 providerForAsset:imageAssetPayload shouldValidate:1];

      v13 = [v16 isError] ^ 1;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)canPerformUnmaskWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  if ([v9 count] == 1)
  {
    anyObject = [v9 anyObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([anyObject locked] & 1) == 0)
    {
      maskCanBeReset = [anyObject maskCanBeReset];
    }

    else
    {
      maskCanBeReset = 0;
    }
  }

  else
  {
    maskCanBeReset = 0;
  }

  return maskCanBeReset;
}

- (BOOL)canPerformMaskWithShapeWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  if ([v9 count] == 2 && (objc_msgSend(interactiveCanvasController, "hasSelectedInfosInMultipleContainers") & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = v9;
      v27 = 0;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = objc_opt_class();
          v18 = sub_100014370(v17, v16);
          v19 = v18;
          if (v18 && ([v18 locked] & 1) == 0)
          {
            v20 = objc_opt_class();
            v21 = sub_100014370(v20, v16);
            v22 = objc_opt_class();
            v23 = [interactiveCanvasController repForInfo:v19];
            v24 = sub_100014370(v22, v23);

            if (v21)
            {
              BYTE4(v27) = 1;
            }

            else if (v24)
            {
              LOBYTE(v27) = [v24 canBeUsedForImageMask];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
      v10 = BYTE4(v27) & v27;
      v9 = v26;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  if ([v9 count] == 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = objc_opt_class();
          v16 = sub_100014370(v15, v14);
          v17 = v16;
          if (v16 && ([v16 locked] & 1) == 0)
          {

            LOBYTE(v11) = 1;
            goto LABEL_14;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (int64_t)canvasEditorCanPerformLockAction:(SEL)action withSender:(id)sender
{
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController:action];
  documentIsSharedReadOnly = [v6 documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
  {
    return -1;
  }

  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editorController = [interactiveCanvasController2 editorController];
  selectionPath = [editorController selectionPath];
  v14 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  [(CRLCanvasEditorHelper *)self drawablesToLockOrUnlockForInfos:v14];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v28 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        v21 = objc_opt_class();
        v22 = sub_100014370(v21, v20);
        v23 = v22;
        if (v22 && ("lock:" == action) != [v22 locked] && objc_msgSend(v23, "isLockable"))
        {

          v8 = 1;
          goto LABEL_15;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v8 = -1;
LABEL_15:

  return v8;
}

- (BOOL)canUngroupWithSelection:(id)selection
{
  selectionCopy = selection;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [selectionCopy infosOfClass:{objc_opt_class(), 0}];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([(CRLCanvasEditorHelper *)self canUngroupGroupInfo:*(*(&v12 + 1) + 8 * i)])
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)canUngroupGroupInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (infoCopy && ([infoCopy isFreehandDrawing] & 1) == 0)
  {
    v5 = [v4 locked] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)tooltipForMoveToBack
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move selected objects to the back layer." value:0 table:0];

  return v3;
}

- (id)tooltipForMoveToFront
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move selected objects to the front layer." value:0 table:0];

  return v3;
}

- (id)tooltipForMoveBackward
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move selected objects backward one layer." value:0 table:0];

  return v3;
}

- (id)tooltipForMoveForward
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move selected objects forward one layer." value:0 table:0];

  return v3;
}

- (BOOL)selectionIsEmpty
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];

  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator infosForSelectionPath:selectionPath];

  LOBYTE(editorController) = [v8 count] == 0;
  return editorController;
}

- (BOOL)selectionContainsJustUnlockedObjects
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];

  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  editorController2 = [canvasEditor editorController];
  selectionPath2 = [editorController2 selectionPath];
  v11 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath2];

  v12 = [v8 count];
  v13 = v12 == [v11 count] && objc_msgSend(v8, "count") != 0;

  return v13;
}

- (int64_t)canvasEditorCanPerformBringDrawablesForwardActionWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
  {
    return -1;
  }

  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  arrangeInspectorDelegate = [canvasEditor arrangeInspectorDelegate];
  canBringDrawablesForward = [arrangeInspectorDelegate canBringDrawablesForward];
  if (([(CRLCanvasEditorHelper *)self selectionContainsJustUnlockedObjects]& canBringDrawablesForward) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int64_t)canvasEditorCanPerformSendDrawablesBackwardActionWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
  {
    return -1;
  }

  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  arrangeInspectorDelegate = [canvasEditor arrangeInspectorDelegate];
  canSendDrawablesBackward = [arrangeInspectorDelegate canSendDrawablesBackward];
  if (([(CRLCanvasEditorHelper *)self selectionContainsJustUnlockedObjects]& canSendDrawablesBackward) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("cut:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformCutAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("copy:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformCopyAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("delete:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDeleteAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("paste:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformPasteAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if (sel_isEqual(action, "duplicate:"))
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDuplicateAction:action withSender:senderCopy];
LABEL_64:
    v8 = v7;
    goto LABEL_65;
  }

  if ("pasteAsPlainText:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformPasteAsPlainTextAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("pasteValues:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformPasteValuesAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("selectAll:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformSelectAllAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("deselectAll:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDeselectAllAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("group:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformGroupActionWithSender:senderCopy];
    goto LABEL_64;
  }

  if ("ungroup:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformUngroupActionWithSender:senderCopy];
    goto LABEL_64;
  }

  v8 = 1;
  if ("zoomIn:" == action || "zoomOut:" == action)
  {
    goto LABEL_65;
  }

  if ("showMiniFormatterToExitDrawingMode:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:senderCopy];
    goto LABEL_64;
  }

  if ("selectParent:" == action)
  {
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    topLevelContainerRepForEditing = [interactiveCanvasController topLevelContainerRepForEditing];
    v8 = topLevelContainerRepForEditing != 0;

    goto LABEL_65;
  }

  if ("connectWithConnectionLine:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformConnectWithConnectionLineAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("alignDrawablesByLeftEdge:" == action || "alignDrawablesByRightEdge:" == action || "alignDrawablesByTopEdge:" == action || "alignDrawablesByBottomEdge:" == action || "alignDrawablesByHorizontalCenter:" == action || "alignDrawablesByVerticalCenter:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformAlignAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("distributeDrawablesHorizontally:" == action || "distributeDrawablesVertically:" == action || "distributeDrawablesEvenly:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDistributeActionWithSender:senderCopy];
    goto LABEL_64;
  }

  if ("bringToFront:" == action || "bringForward:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformBringDrawablesForwardActionWithSender:senderCopy];
    goto LABEL_64;
  }

  if ("sendBackward:" == action || "sendToBack:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformSendDrawablesBackwardActionWithSender:senderCopy];
    goto LABEL_64;
  }

  if ("mask:" == action)
  {
    p_allowsCanvasScrollingFromKeyboard = [(CRLCanvasEditorHelper *)self canPerformUnmaskWithSender:senderCopy];
    goto LABEL_72;
  }

  if ("maskWithShape:" == action)
  {
    p_allowsCanvasScrollingFromKeyboard = [(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:senderCopy];
    goto LABEL_72;
  }

  if ("maskWithSelection:" == action)
  {
    if ([(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:senderCopy]|| [(CRLCanvasEditorHelper *)self canPerformMaskWithSender:senderCopy])
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    goto LABEL_65;
  }

  if ("maskWithShapeType:" == action || "maskWithShapeTypeInPropertyList:" == action)
  {
    p_allowsCanvasScrollingFromKeyboard = [(CRLCanvasEditorHelper *)self canPerformMaskWithShapeTypeWithSender:senderCopy];
    goto LABEL_72;
  }

  if ("lock:" == action || "unlock:" == action)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformLockAction:action withSender:senderCopy];
    goto LABEL_64;
  }

  if ("scrollCanvasPageUp:" == action || "scrollCanvasPageDown:" == action || "scrollCanvasUp:" == action || "scrollCanvasDown:" == action || "scrollCanvasLeft:" == action || "scrollCanvasRight:" == action)
  {
    p_allowsCanvasScrollingFromKeyboard = [(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard];
LABEL_72:
    if (p_allowsCanvasScrollingFromKeyboard)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    goto LABEL_65;
  }

  if ("enterQuickSelectMode:" != action)
  {
    if ("presentAlignmentTools:" != action)
    {
      v8 = 0;
      goto LABEL_65;
    }

    p_allowsCanvasScrollingFromKeyboard = [CRLFeatureFlagsHelper isOSFeatureEnabled:10];
    goto LABEL_72;
  }

  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController2 = [canvasEditor interactiveCanvasController];
  layerHost = [interactiveCanvasController2 layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  if ([asiOSCVC allowedToEnterQuickSelectMode])
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

LABEL_65:
  return v8;
}

- (id)topMostContainerForDeletingContainer:(id)container
{
  containerCopy = container;
  v5 = objc_opt_class();
  parentInfo = [containerCopy parentInfo];
  v7 = sub_100014370(v5, parentInfo);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    childInfos = [v7 childInfos];
    v9 = [NSSet setWithArray:childInfos];

    v10 = [NSSet setWithObject:containerCopy];
    v11 = [v9 isEqualToSet:v10];

    if (v11)
    {
      v12 = [(CRLCanvasEditorHelper *)self topMostContainerForDeletingContainer:v7];
    }

    else
    {
      v12 = containerCopy;
    }

    v20 = v12;

    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if (v7)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013464E8();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013464FC(v14, v7, v13);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013465E8();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper topMostContainerForDeletingContainer:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1051 isFatal:0 description:"Starting container had a parent info of an unexpected class %{public}@", v19];
  }

  v20 = containerCopy;
  if (!v20)
  {
LABEL_18:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346610();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101346638();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013466D4();
    }

    v21 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v21);
    }

    v22 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper topMostContainerForDeletingContainer:]"];
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1055 isFatal:0 description:"invalid nil value for '%{public}s'", "result"];
  }

LABEL_27:

  return v20;
}

- (id)selectionBehaviorForDeletingBoardItems:(id)items
{
  v4 = [(CRLCanvasEditorHelper *)self infosToDeleteToDeleteInfos:items];
  v5 = +[NSMutableSet set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        parentInfo = [v11 parentInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          parentInfo2 = [v11 parentInfo];
          [v5 addObject:parentInfo2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  if ([v5 count] < 2 && objc_msgSend(v5, "count") == 1)
  {
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    delegate = [interactiveCanvasController delegate];
    v17 = [delegate selectionModelTranslatorForInteractiveCanvasController:interactiveCanvasController];
    anyObject = [v5 anyObject];
    v19 = [v17 selectionPathForNothingSelectedInsideGroup:anyObject];
  }

  else
  {
    v19 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:0, v26];
  }

  v20 = [CRLCommandSelectionBehavior alloc];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v24 = [(CRLCommandSelectionBehavior *)v20 initWithForwardSelectionPath:v19 reverseSelectionPath:selectionPath selectionFlags:4];

  return v24;
}

- (id)boardItemsToDelete
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v6 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  return v6;
}

- (void)perform_delete
{
  boardItemsToDelete = [(CRLCanvasEditorHelper *)self boardItemsToDelete];
  [(CRLCanvasEditorHelper *)self perform_deleteBoardItems:boardItemsToDelete];
}

- (void)perform_deleteBoardItems:(id)items
{
  itemsCopy = items;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  v7 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:itemsCopy shouldRemoveEmptyContainers:1];
  if (v7)
  {
    if (!commandController)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013466FC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101346710();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013467A0();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper perform_deleteBoardItems:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:1111 isFatal:0 description:"can't delete without a command controller"];
    }

    v11 = +[NSMutableArray array];
    v12 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:itemsCopy];
    editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
    interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v15 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v12 infosToRemove:itemsCopy editingCoordinator:editingCoordinator withIcc:interactiveCanvasController2];

    if ([v15 count])
    {
      [v11 addObjectsFromArray:v15];
    }

    [v11 addObject:v7];
    v16 = [(CRLCanvasEditorHelper *)self selectionBehaviorForDeletingBoardItems:itemsCopy];
    v17 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v11];
    [commandController enqueueCommand:v17 withSelectionBehavior:v16];
  }
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v6 = [canvasEditor canvasEditorCanDeleteWithSender:deleteCopy];

  if (v6)
  {
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10029DDE4;
    v9[3] = &unk_10183D270;
    v9[4] = self;
    [editingCoordinator canPerformUserActionUsingBlock:v9];
  }
}

- (void)p_copy:(id)p_copy
{
  p_copyCopy = p_copy;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  [canvasEditor copy:p_copyCopy];
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v5 = [canvasEditor canvasEditorCanCutWithSender:cutCopy];

  if (v5)
  {
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    [commandController openGroup];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Cut" value:0 table:@"UndoStrings"];
    [commandController setCurrentGroupActionString:v9];

    [(CRLCanvasEditorHelper *)self p_copy:cutCopy];
    [(CRLCanvasEditorHelper *)self perform_delete];
    [commandController closeGroup];
  }
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  if ([canvasEditor canvasEditorCanPasteWithSender:pasteCopy])
  {
    interactiveCanvasController = [canvasEditor interactiveCanvasController];
    topLevelContainerRepForEditing = [interactiveCanvasController topLevelContainerRepForEditing];

    if (topLevelContainerRepForEditing)
    {
      v7 = [canvasEditor selectionPathWithInfos:0];
      editorController = [canvasEditor editorController];
      [editorController setSelectionPath:v7];
    }

    v9 = +[CRLPasteboard generalPasteboard];
    editorController2 = [canvasEditor editorController];
    selectionPath = [editorController2 selectionPath];
    [canvasEditor pasteWithPasteboard:v9 selectionPath:selectionPath forceMatchStyle:0 sender:pasteCopy];
  }
}

- (void)pasteAsPlainText:(id)text
{
  textCopy = text;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029E1F0;
  v8[3] = &unk_101850AA8;
  v8[4] = self;
  v9 = textCopy;
  v7 = textCopy;
  [editingCoordinator canPerformUserActionUsingBlock:v8];
}

- (void)pasteValues:(id)values
{
  valuesCopy = values;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029E370;
  v8[3] = &unk_101850AA8;
  v8[4] = self;
  v9 = valuesCopy;
  v7 = valuesCopy;
  [editingCoordinator canPerformUserActionUsingBlock:v8];
}

- (void)duplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029E4F0;
  v8[3] = &unk_101850AA8;
  v8[4] = self;
  v9 = duplicateCopy;
  v7 = duplicateCopy;
  [editingCoordinator canPerformUserActionUsingBlock:v8];
}

- (void)deselectAll:(id)all
{
  v6 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:0];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  [editorController setSelectionPath:v6];
}

- (void)p_setLockStatusOfSelectedDrawables:(BOOL)drawables
{
  drawablesCopy = drawables;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  infosForCurrentSelectionPath = [interactiveCanvasController2 infosForCurrentSelectionPath];

  v9 = [(CRLCanvasEditorHelper *)self drawablesToLockOrUnlockForInfos:infosForCurrentSelectionPath];
  interactiveCanvasController3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editorController = [interactiveCanvasController3 editorController];
  selectionPath = [editorController selectionPath];

  if (drawablesCopy || (v13 = [v9 count], v13 != objc_msgSend(infosForCurrentSelectionPath, "count")))
  {
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    v15 = [canvasEditor selectionPathWithInfos:v9];

    selectionPath = v15;
  }

  v16 = [CRLCommandSelectionBehavior alloc];
  interactiveCanvasController4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editorController2 = [interactiveCanvasController4 editorController];
  selectionPath2 = [editorController2 selectionPath];
  v20 = [(CRLCommandSelectionBehavior *)v16 initWithForwardSelectionPath:selectionPath reverseSelectionPath:selectionPath2 selectionFlags:1024];

  [commandController openGroupWithSelectionBehavior:v20];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
  v23 = v21;
  if (!v22)
  {
    goto LABEL_21;
  }

  v24 = v22;
  v36 = selectionPath;
  v25 = 0;
  v26 = *v38;
  do
  {
    for (i = 0; i != v24; i = i + 1)
    {
      if (*v38 != v26)
      {
        objc_enumerationMutation(v21);
      }

      v28 = *(*(&v37 + 1) + 8 * i);
      v29 = objc_opt_class();
      v30 = sub_100014370(v29, v28);
      v31 = v30;
      if (v30 && ([v30 isLockable] & 1) != 0 || !drawablesCopy && objc_msgSend(v31, "locked"))
      {
        v32 = [[_TtC8Freeform19CRLCommandSetLocked alloc] initWithBoardItem:v31 locked:drawablesCopy];
        [commandController enqueueCommand:v32];

        v25 = 1;
      }
    }

    v24 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v24);

  selectionPath = v36;
  if (v25)
  {
    v33 = +[NSBundle mainBundle];
    v34 = v33;
    if (drawablesCopy)
    {
      v35 = @"Lock";
    }

    else
    {
      v35 = @"Unlock";
    }

    v23 = [v33 localizedStringForKey:v35 value:0 table:@"UndoStrings"];

    [commandController setCurrentGroupActionString:v23];
LABEL_21:
  }

  [commandController closeGroup];
}

- (void)lock:(id)lock
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  delegate = [interactiveCanvasController delegate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10029EC28;
  v15[3] = &unk_10183AE28;
  v15[4] = interactiveCanvasController;
  v15[5] = self;
  v6 = objc_retainBlock(v15);
  if (objc_opt_respondsToSelector())
  {
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    editorController = [canvasEditor editorController];
    selectionPath = [editorController selectionPath];
    v11 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];
    v12 = [(CRLCanvasEditorHelper *)self drawablesToLockOrUnlockForInfos:v11];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10029EC68;
    v13[3] = &unk_10183D168;
    v14 = v6;
    [delegate interactiveCanvasController:interactiveCanvasController didRequestToLockSelectedCanvasElements:v12 animated:1 completionQueue:0 completionHandler:v13];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (id)p_commandsToPrepareForGroupingBoardItems:(id)items infosToAdjustForConnectionLines:(id)lines
{
  linesCopy = lines;
  v7 = [NSMutableSet setWithArray:items];
  editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v10 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:linesCopy infosToRemove:v7 editingCoordinator:editingCoordinator withIcc:interactiveCanvasController];

  return v10;
}

- (id)p_commandsForGroupingBoardItems:(id)items outNewGroup:(id *)group
{
  itemsCopy = items;
  v6 = +[NSMutableArray array];
  v7 = [_TtC8Freeform12CRLGroupItem groupGeometryFromChildrenInfos:itemsCopy];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];
  v39 = v7;
  v11 = [boardItemFactory makeGroupItemWithGeometry:v7];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v13)
  {
    v14 = *v47;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v46 + 1) + 8 * i) aspectRatioLocked])
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v11 setAspectRatioLocked:v13];
  v16 = objc_opt_class();
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  topLevelContainerInfoForEditing = [interactiveCanvasController2 topLevelContainerInfoForEditing];
  containerForTopLevelInsertion = sub_100014370(v16, topLevelContainerInfoForEditing);

  if (!containerForTopLevelInsertion)
  {
    interactiveCanvasController3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    containerForTopLevelInsertion = [interactiveCanvasController3 containerForTopLevelInsertion];
  }

  childInfos = [containerForTopLevelInsertion childInfos];
  lastObject = [v12 lastObject];
  v23 = [childInfos indexOfObject:lastObject];

  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    childInfos2 = [containerForTopLevelInsertion childInfos];
    v23 = [childInfos2 count];
  }

  v38 = containerForTopLevelInsertion;
  v37 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:containerForTopLevelInsertion boardItem:v11 index:v23];
  [v6 addObject:?];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v12;
  v25 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v43;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v42 + 1) + 8 * j);
        geometry = [v29 geometry];
        geometry2 = [v11 geometry];
        v32 = [geometry geometryRelativeToGeometry:geometry2];

        v33 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v29 geometry:v32];
        [v6 addObject:v33];
        v34 = [[_TtC8Freeform28CRLCommandReparentBoardItems alloc] initWithDestinationContainer:v11 boardItem:v29];
        [v6 addObject:v34];
      }

      v26 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v26);
  }

  if (group)
  {
    v35 = v11;
    *group = v11;
  }

  return v6;
}

- (void)group:(id)group
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v5 = interactiveCanvasController;
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  v10 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  v11 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      v16 = 0;
      do
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v52 + 1) + 8 * v16);
        canvasEditor2 = [(CRLCanvasEditorHelper *)self canvasEditor];
        v19 = [canvasEditor2 canGroupBoardItem:v17];

        if (v19)
        {
          [v11 addObject:v17];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v14);
  }

  v39 = v5;
  v20 = [v5 topLevelZOrderedSiblingsOfInfos:v11];
  v43 = [v20 crl_arrayWithObjectsInSet:v11];

  [commandController openGroup];
  [commandController enableProgressiveEnqueuingInCurrentGroup];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Group" value:0 table:@"UndoStrings"];
  [commandController setCurrentGroupActionString:v22];

  v23 = objc_alloc_init(NSMapTable);
  v24 = objc_alloc_init(NSMapTable);
  v41 = [v5 topLevelZOrderedSiblingsOfInfos:v11];
  v50 = v24;
  v51 = v23;
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [CRLConnectionLineAdjustmentHelper getMagnetUnscaledPositionsFromInfos:v41 withAffectedInfos:v11 withClineHeadMagnets:&v51 withClineTailMagnets:&v50 withIcc:interactiveCanvasController2];
  v38 = v51;

  v37 = v50;
  v26 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v11];
  v40 = [(CRLCanvasEditorHelper *)self p_commandsToPrepareForGroupingBoardItems:v43 infosToAdjustForConnectionLines:v26];

  v27 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v27 addCommands:v40];
  [commandController enqueueCommand:v27];
  v49 = 0;
  v36 = [(CRLCanvasEditorHelper *)self p_commandsForGroupingBoardItems:v43 outNewGroup:&v49];
  v28 = v49;
  v29 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor3 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v31 = [NSSet setWithObject:v28];
  v32 = [(CRLCanvasCommandSelectionBehavior *)v29 initWithCanvasEditor:canvasEditor3 type:3 constructedInfos:v31];

  v33 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v33 addCommands:v36];
  [commandController enqueueCommand:v33];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10029F5F0;
  v44[3] = &unk_101850AD0;
  v45 = v38;
  selfCopy = self;
  v47 = commandController;
  v48 = v37;
  v34 = v37;
  v35 = v38;
  [v28 withTemporaryLayoutPerform:v44];
  [commandController closeGroupWithSelectionBehavior:v32];
}

- (id)p_commandForUpdatingMagnetAfterGroupingForCline:(id)cline withPosition:(id)position withGroupLayout:(id)layout forMagnet:(BOOL)magnet
{
  magnetCopy = magnet;
  clineCopy = cline;
  layoutCopy = layout;
  [position CGPointValue];
  v29 = v12;
  v30 = v11;
  if (layoutCopy)
  {
    [layoutCopy pureTransformInRoot];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  CGAffineTransformInvert(&v33, &v32);
  v31 = vaddq_f64(*&v33.tx, vmlaq_n_f64(vmulq_n_f64(*&v33.c, v29), *&v33.a, v30));
  pureGeometry = [layoutCopy pureGeometry];
  [pureGeometry size];
  v14 = sub_10011ECB4();
  v17 = sub_100121720(v31.f64[0], v31.f64[1], v14, v15, v16);
  v19 = v18;

  connectionLinePathSource = [clineCopy connectionLinePathSource];
  v21 = [connectionLinePathSource copy];

  v22 = [[CRLConnectionLineMagnet alloc] initWithType:7 normalizedPosition:v17, v19];
  if (magnetCopy)
  {
    [v21 setHeadMagnet:v22];
    v23 = 1;
  }

  else
  {
    [v21 setTailMagnet:v22];
    v23 = 0;
  }

  v24 = objc_opt_class();
  info = [layoutCopy info];
  v26 = sub_100014370(v24, info);

  v27 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:clineCopy connectedItem:v26 chirality:v23 pathSource:v21];

  return v27;
}

- (id)commandsForUngrouping:(id)ungrouping objectsToSelect:(id)select
{
  ungroupingCopy = ungrouping;
  selectCopy = select;
  v62 = ungroupingCopy;
  childItems = [ungroupingCopy childItems];
  v54 = [childItems crl_arrayOfObjectsPassingTest:&stru_101850AF0];

  if ([v54 count])
  {
    v7 = +[NSMutableArray array];
    [selectCopy addObjectsFromArray:v54];
    memset(&v81, 0, sizeof(v81));
    if (ungroupingCopy)
    {
      [ungroupingCopy transformInRoot];
    }

    v8 = objc_opt_class();
    parentInfo = [v62 parentInfo];
    v55 = sub_100014370(v8, parentInfo);

    v74 = 0;
    v75 = &v74;
    v76 = 0x5010000000;
    v77 = &unk_1016A8115;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1002A0430;
    v73[3] = &unk_1018453B0;
    v73[4] = &v74;
    [v62 withTemporaryLayoutPerform:v73];
    v10 = objc_opt_class();
    parentItem = [v62 parentItem];
    v12 = sub_100013F00(v10, parentItem);

    v13 = [(CRLCanvasEditorHelper *)self shouldReleaseChildItemsFromTableWhenUngrouping:v62];
    if (v13)
    {
      v14 = objc_opt_class();
      anchoringTableItemIfAny = [v62 anchoringTableItemIfAny];
      parentItem2 = [anchoringTableItemIfAny parentItem];
      v17 = sub_100013F00(v14, parentItem2);

      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    v59 = v18;
    childInfos = [v18 childInfos];
    v60 = [childInfos indexOfObject:v62];

    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      childInfos2 = [v59 childInfos];
      v60 = [childInfos2 count];
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    reverseObjectEnumerator = [v54 reverseObjectEnumerator];
    v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v24)
    {
      obj = reverseObjectEnumerator;
      v58 = *v70;
      do
      {
        v61 = v24;
        for (i = 0; i != v61; i = i + 1)
        {
          if (*v70 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v69 + 1) + 8 * i);
          geometry = [v26 geometry];
          if (v26 && [v26 wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent] && (objc_msgSend(v26, "supportsParentRotation") & 1) == 0)
          {
            geometry2 = [v26 geometry];
            v38 = geometry2;
            if (geometry2)
            {
              [geometry2 transform];
            }

            else
            {
              memset(&v82, 0, sizeof(v82));
            }

            v39 = sub_1001399E4(&v82.a);
            v82 = v81;
            v40 = [CRLCounterRotateInfo infoGeometryForTransformInRoot:&v82 isChildFlipped:v39];

            memset(&v82, 0, sizeof(v82));
            if (v40)
            {
              [v40 transform];
            }

            else
            {
              memset(&t1, 0, sizeof(t1));
            }

            t2 = v81;
            CGAffineTransformConcat(&v82, &t1, &t2);
            memset(&t1, 0, sizeof(t1));
            if (geometry)
            {
              [geometry fullTransform];
            }

            else
            {
              memset(&t2, 0, sizeof(t2));
            }

            v66 = v82;
            CGAffineTransformConcat(&t1, &t2, &v66);
            t2 = t1;
            if (v55)
            {
              memset(&v66, 0, sizeof(v66));
              [v55 transformInRoot];
              v65 = v66;
              v41 = [CRLCounterRotateInfo infoGeometryForTransformInRoot:&v65 isChildFlipped:0];
              v42 = v41;
              memset(&v65, 0, sizeof(v65));
              if (v41)
              {
                [v41 transform];
              }

              else
              {
                memset(&v64, 0, sizeof(v64));
              }

              v63 = v66;
              CGAffineTransformConcat(&v65, &v64, &v63);
              v63 = v65;
              CGAffineTransformInvert(&v64, &v63);
              v63 = t1;
              CGAffineTransformConcat(&t2, &v63, &v64);
            }

            widthValid = [geometry widthValid];
            heightValid = [geometry heightValid];
            v66 = t2;
            v29 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v66 widthValid:widthValid heightValid:heightValid];
          }

          else
          {
            if (geometry)
            {
              [geometry fullTransform];
            }

            else
            {
              memset(&t1, 0, sizeof(t1));
            }

            v28 = *(v75 + 3);
            *&t2.a = *(v75 + 2);
            *&t2.c = v28;
            *&t2.tx = *(v75 + 4);
            CGAffineTransformConcat(&v82, &t1, &t2);
            v29 = +[CRLCanvasInfoGeometry geometryFromFullTransform:widthValid:heightValid:](CRLCanvasInfoGeometry, "geometryFromFullTransform:widthValid:heightValid:", &v82, [geometry widthValid], objc_msgSend(geometry, "heightValid"));
          }

          if (v13)
          {
            if (v29)
            {
              [v29 fullTransform];
            }

            else
            {
              memset(&t1, 0, sizeof(t1));
            }

            anchoringTableItemIfAny2 = [v62 anchoringTableItemIfAny];
            geometry3 = [anchoringTableItemIfAny2 geometry];
            v32 = geometry3;
            if (geometry3)
            {
              [geometry3 transform];
            }

            else
            {
              memset(&t2, 0, sizeof(t2));
            }

            CGAffineTransformConcat(&v82, &t1, &t2);
            v33 = +[CRLCanvasInfoGeometry geometryFromFullTransform:widthValid:heightValid:](CRLCanvasInfoGeometry, "geometryFromFullTransform:widthValid:heightValid:", &v82, [geometry widthValid], objc_msgSend(geometry, "heightValid"));

            v29 = v33;
          }

          v34 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v26 geometry:v29];
          [v7 addObject:v34];
          v35 = [[_TtC8Freeform28CRLCommandReparentBoardItems alloc] initWithDestinationContainer:v59 boardItem:v26 index:v60];
          [v7 addObject:v35];
          if (!(v13 & 1 | (([v62 isDirectlyAnchoredToTable] & 1) == 0)))
          {
            v36 = [(CRLCanvasEditorHelper *)self commandToAnchorChildItemWhenUngrouping:v62 childItem:v26 childItemGeometry:v29];
            [v7 addObject:v36];
          }
        }

        reverseObjectEnumerator = obj;
        v24 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
      }

      while (v24);
    }

    v45 = [NSSet setWithObject:v62];
    v46 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v45 shouldRemoveEmptyContainers:0];

    if (v46)
    {
      [v7 addObject:v46];
    }

    else
    {
      v47 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013467C8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013467F0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134688C();
      }

      v48 = off_1019EDA68;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v49, &v82, v47, v48);
      }

      v50 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper commandsForUngrouping:objectsToSelect:]"];
      v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:1581 isFatal:0 description:"invalid nil value for '%{public}s'", "delCommand"];
    }

    _Block_object_dispose(&v74, 8);
  }

  else
  {
    v19 = [NSSet setWithObject:ungroupingCopy];
    v20 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v19 shouldRemoveEmptyContainers:1];
    v84 = v20;
    v7 = [NSArray arrayWithObjects:&v84 count:1];
  }

  return v7;
}

- (void)ungroup:(id)ungroup
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  if (!commandController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013468B4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013468C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101346958();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper ungroup:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1592 isFatal:0 description:"can't ungroup without a command controller"];
  }

  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  selectionPath = [editorController selectionPath];
  obj = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  selectionModelTranslator2 = [interactiveCanvasController selectionModelTranslator];
  canvasEditor2 = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController2 = [canvasEditor2 editorController];
  selectionPath2 = [editorController2 selectionPath];
  v17 = [selectionModelTranslator2 unlockedBoardItemsForSelectionPath:selectionPath2];

  v18 = +[NSMutableSet set];
  v84 = +[NSMutableArray array];
  v19 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Ungroup" value:0 table:@"UndoStrings"];
  v82 = v19;
  [(CRLCommandGroup *)v19 setActionString:v21];

  v22 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v17];
  v23 = [v22 crl_arrayWithObjectsInSet:v17];

  v83 = +[NSMutableSet set];
  v85 = v23;
  v24 = [v23 count];
  if (v24 - 1 >= 0)
  {
    v25 = v24;
    do
    {
      --v25;
      v26 = objc_opt_class();
      v27 = [v85 objectAtIndexedSubscript:v25];
      v28 = sub_100014370(v26, v27);

      if ([(CRLCanvasEditorHelper *)self canUngroupGroupInfo:v28])
      {
        v29 = [(CRLCanvasEditorHelper *)self commandsForUngrouping:v28 objectsToSelect:v18];
        [v84 addObjectsFromArray:v29];

        [v83 addObject:v28];
      }
    }

    while (v25 > 0);
  }

  v30 = objc_alloc_init(NSMapTable);
  v31 = objc_alloc_init(NSMapTable);
  v32 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v17];
  v106 = v31;
  v107 = v30;
  [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v33 = v81 = v18;
  v77 = v32;
  [CRLConnectionLineAdjustmentHelper getMagnetUnscaledPositionsFromInfos:v32 withAffectedInfos:v17 withClineHeadMagnets:&v107 withClineTailMagnets:&v106 withIcc:v33];
  v89 = v107;

  v88 = v106;
  v34 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v83];
  editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v76 = v34;
  v37 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v34 infosToRemove:v83 editingCoordinator:editingCoordinator withIcc:interactiveCanvasController2];

  v75 = v37;
  [(CRLCommandGroup *)v82 addCommands:v37];
  [(CRLCommandGroup *)v82 addCommands:v84];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obja = obj;
  v38 = [obja countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v103;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v103 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v42 = *(*(&v102 + 1) + 8 * i);
        if (([v83 containsObject:v42] & 1) == 0)
        {
          [v81 addObject:v42];
        }
      }

      v39 = [obja countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v39);
  }

  v43 = [v81 count];
  v44 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor3 = [(CRLCanvasEditorHelper *)self canvasEditor];
  if (v43)
  {
    v46 = [(CRLCanvasCommandSelectionBehavior *)v44 initWithCanvasEditor:canvasEditor3 type:3 constructedInfos:v81];
  }

  else
  {
    v46 = [(CRLCanvasCommandSelectionBehavior *)v44 initWithCanvasEditor:canvasEditor3 type:1];
  }

  v47 = v46;
  v78 = v17;

  [commandController openGroupWithSelectionBehavior:v47];
  [commandController enableProgressiveEnqueuingInCurrentGroup];
  v79 = commandController;
  v74 = v47;
  [commandController enqueueCommand:v82 withSelectionBehavior:v47];
  v80 = interactiveCanvasController;
  [interactiveCanvasController layoutIfNeeded];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  keyEnumerator = [v89 keyEnumerator];
  v49 = [keyEnumerator countByEnumeratingWithState:&v98 objects:v110 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v99;
    v52 = &__NSArray0__struct;
    do
    {
      v53 = 0;
      v54 = v52;
      do
      {
        if (*v99 != v51)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v55 = *(*(&v98 + 1) + 8 * v53);
        v56 = [v89 objectForKey:v55];
        interactiveCanvasController3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v58 = [CRLConnectionLineAdjustmentHelper commandForUpdatingMagnetAfterUngroupingForCline:v55 withPosition:v56 forMagnet:1 withIcc:interactiveCanvasController3];
        v52 = [v54 arrayByAddingObjectsFromArray:v58];

        v53 = v53 + 1;
        v54 = v52;
      }

      while (v50 != v53);
      v50 = [keyEnumerator countByEnumeratingWithState:&v98 objects:v110 count:16];
    }

    while (v50);
  }

  else
  {
    v52 = &__NSArray0__struct;
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  keyEnumerator2 = [v88 keyEnumerator];
  v60 = [keyEnumerator2 countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v95;
    do
    {
      v63 = 0;
      v64 = v52;
      do
      {
        if (*v95 != v62)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v65 = *(*(&v94 + 1) + 8 * v63);
        v66 = [v88 objectForKey:v65];
        interactiveCanvasController4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v68 = [CRLConnectionLineAdjustmentHelper commandForUpdatingMagnetAfterUngroupingForCline:v65 withPosition:v66 forMagnet:0 withIcc:interactiveCanvasController4];
        v52 = [v64 arrayByAddingObjectsFromArray:v68];

        v63 = v63 + 1;
        v64 = v52;
      }

      while (v61 != v63);
      v61 = [keyEnumerator2 countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v61);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v69 = v52;
  v70 = [v69 countByEnumeratingWithState:&v90 objects:v108 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v91;
    do
    {
      for (j = 0; j != v71; j = j + 1)
      {
        if (*v91 != v72)
        {
          objc_enumerationMutation(v69);
        }

        [v79 enqueueCommand:*(*(&v90 + 1) + 8 * j)];
      }

      v71 = [v69 countByEnumeratingWithState:&v90 objects:v108 count:16];
    }

    while (v71);
  }

  [v79 closeGroup];
}

- (BOOL)canGroupBoardItems:(id)items
{
  itemsCopy = items;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        parentInfo = [v13 parentInfo];

        if (parentInfo)
        {
          parentInfo2 = [v13 parentInfo];
          v16 = parentInfo2;
          if (v10)
          {

            if (v10 != v16)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v10 = parentInfo2;
          }
        }

        else
        {
          v9 = 1;
          if (v10)
          {
            goto LABEL_17;
          }
        }

        if (![canvasEditor canGroupBoardItem:v13])
        {
LABEL_17:
          v17 = 0;
          goto LABEL_19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v17 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v17 = 1;
  }

LABEL_19:

  return v17 & (v9 ^ 1 | (v10 == 0));
}

- (BOOL)canInsertBoardItems:(id)items intoGroup:(id)group
{
  itemsCopy = items;
  groupCopy = group;
  if ([(CRLCanvasEditorHelper *)self canGroupBoardItems:itemsCopy])
  {
    isFreehandDrawing = [groupCopy isFreehandDrawing];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          if (isFreehandDrawing)
          {
            if (([v14 isAllowedInFreehandDrawings] & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else if (([v14 supportsParentRotation] & 1) == 0 && groupCopy)
          {
            while (1)
            {
              geometry = [groupCopy geometry];
              [geometry angle];
              v17 = v16;

              if (v17 != 0.0 && fabs(v17) >= 0.00999999978)
              {
                break;
              }

              v18 = objc_opt_class();
              parentInfo = [groupCopy parentInfo];
              v20 = sub_100014370(v18, parentInfo);

              groupCopy = v20;
              if (!v20)
              {
                goto LABEL_15;
              }
            }

LABEL_19:
            v21 = 0;
            goto LABEL_21;
          }

LABEL_15:
          ;
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v21 = 1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = 1;
    }

LABEL_21:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)selectParent:(id)parent
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  topLevelContainerRepForEditing = [interactiveCanvasController topLevelContainerRepForEditing];
  info = [topLevelContainerRepForEditing info];
  v7 = [canvasEditor selectionPathWithInfo:info];
  editorController = [interactiveCanvasController editorController];
  [editorController setSelectionPath:v7];
}

- (int64_t)canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isLassoAbleToSelectMixedType = [freehandDrawingToolkit isLassoAbleToSelectMixedType];

  if (!isLassoAbleToSelectMixedType)
  {
    return -1;
  }

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  freehandDrawingToolkit2 = [interactiveCanvasController2 freehandDrawingToolkit];
  if ([freehandDrawingToolkit2 isInDrawingMode])
  {
    editorController = [interactiveCanvasController2 editorController];
    selectionPath = [editorController selectionPath];

    selectionModelTranslator = [interactiveCanvasController2 selectionModelTranslator];
    v12 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

    if ([v12 count])
    {
      v13 = +[NSMutableArray array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v12;
      allObjects = [v12 allObjects];
      v15 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(allObjects);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            if ([v19 isMemberOfClass:objc_opt_class()])
            {
              v20 = objc_opt_class();
              v21 = sub_100014370(v20, v19);
              allNestedChildrenItemsExcludingGroups = [v21 allNestedChildrenItemsExcludingGroups];
              [v13 addObjectsFromArray:allNestedChildrenItemsExcludingGroups];
            }

            else
            {
              [v13 addObject:v19];
            }
          }

          v16 = [allObjects countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }

      v23 = [v13 crl_arrayByTransformingWithBlock:&stru_101850BB0];
      if ([v23 count])
      {
        v24 = -1;
      }

      else
      {
        v24 = 1;
      }

      v12 = v26;
    }

    else
    {
      v24 = -1;
    }
  }

  else
  {
    v24 = -1;
  }

  return v24;
}

- (void)showMiniFormatterToExitDrawingMode:(id)mode
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];

  v7 = objc_opt_class();
  v8 = sub_100014370(v7, currentDocumentMode);
  v9 = v8;
  if (v8)
  {
    boardViewController = [v8 boardViewController];
    documentModeController = [boardViewController documentModeController];
    [documentModeController resetToDefaultModeAnimated:1];
  }
}

- (void)mask
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = objc_opt_class();
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v7 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];
  anyObject = [v7 anyObject];
  v9 = sub_100014370(v3, anyObject);

  maskInfo = [v9 maskInfo];

  if (!maskInfo)
  {
    v11 = [CRLCanvasCommandSelectionBehavior alloc];
    interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController2 canvasEditor];
    v14 = [(CRLCanvasCommandSelectionBehavior *)v11 initWithCanvasEditor:canvasEditor];

    defaultMaskInfo = [v9 defaultMaskInfo];
    v16 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:v9 maskInfo:defaultMaskInfo];
    commandController = [interactiveCanvasController commandController];
    [commandController enqueueCommand:v16 withSelectionBehavior:v14];
  }

  v18 = [interactiveCanvasController repForInfo:v9];
  imageLayout = [v18 imageLayout];
  if (([imageLayout isInMaskEditMode] & 1) == 0)
  {
    [v18 editMaskWithHUD:1];
  }
}

- (void)maskWithShape
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v7 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v8)
  {

    v10 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  selfCopy = self;
  v25 = interactiveCanvasController;
  v10 = 0;
  v11 = 0;
  v12 = *v27;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v11;
        v16 = v10;
        v11 = v14;
      }

      else
      {
        objc_opt_class();
        v15 = v10;
        v16 = v14;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }
      }

      v17 = v14;

      v10 = v16;
    }

    v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v9);

  if (!v11)
  {
    interactiveCanvasController = v25;
LABEL_17:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346980();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013469A8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101346A44();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper maskWithShape]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1829 isFatal:0 description:"invalid nil value for '%{public}s'", "imageInfo"];

    v11 = 0;
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  interactiveCanvasController = v25;
  if (v10)
  {
    [(CRLCanvasEditorHelper *)selfCopy p_maskImage:v11 withShape:v10 shouldOpenGroup:1 shouldBeginEditing:1 shouldCenterAroundFaces:0];
    goto LABEL_35;
  }

LABEL_26:
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101346A6C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101346A94();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101346B30();
  }

  v21 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v21);
  }

  v22 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper maskWithShape]"];
  v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
  [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1830 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeInfo"];

  v10 = 0;
LABEL_35:
}

- (void)maskWithShapeType:(int64_t)type
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v14;

    if (!v15)
    {
      goto LABEL_12;
    }

    [(CRLCanvasEditorHelper *)self maskImage:v15 withShapeType:type];
  }

  else
  {
LABEL_9:

LABEL_12:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346B58();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101346B80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101346C1C();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v15 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper maskWithShapeType:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v17 lineNumber:1850 isFatal:0 description:"invalid nil value for '%{public}s'", "imageInfo"];
  }
}

- (void)p_maskImage:(id)image withShape:(id)shape shouldOpenGroup:(BOOL)group shouldBeginEditing:(BOOL)editing shouldCenterAroundFaces:(BOOL)faces
{
  facesCopy = faces;
  editingCopy = editing;
  groupCopy = group;
  imageCopy = image;
  shapeCopy = shape;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v82 = groupCopy;
  if (groupCopy)
  {
    v15 = [CRLCanvasCommandSelectionBehavior alloc];
    canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
    v17 = [NSSet setWithObject:imageCopy];
    v18 = [(CRLCanvasCommandSelectionBehavior *)v15 initWithCanvasEditor:canvasEditor type:3 constructedInfos:v17];

    [commandController openGroupWithSelectionBehavior:v18];
  }

  v91[0] = 0;
  [(CRLCanvasEditorHelper *)self willMaskImage:imageCopy withShapeInfo:shapeCopy additionalData:v91];
  v19 = objc_opt_class();
  v20 = [interactiveCanvasController layoutForInfo:shapeCopy];
  v21 = sub_100014370(v19, v20);

  geometry = [shapeCopy geometry];
  v81 = v21;
  if (v21)
  {
    pureGeometry = [v21 pureGeometry];
    v24 = pureGeometry;
    if (pureGeometry)
    {
      [pureGeometry fullTransform];
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
    }

    v25 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v88];

    geometry = v25;
  }

  geometry2 = [imageCopy geometry];
  v27 = [geometry geometryRelativeToGeometry:geometry2];

  v87 = v27;
  if (facesCopy)
  {
    imageAssetPayload = [imageCopy imageAssetPayload];
    [imageCopy geometry];
    v30 = v29 = geometry;
    [v30 size];
    v32 = v31;
    v34 = v33;
    [v87 transformedBounds];
    v36 = v35;
    v38 = v37;
    [v87 center];
    [CRLImageFaceAnalyzer maskCenterForFacesInImageData:imageAssetPayload imageSize:imageCopy maskSize:v32 defaultCenter:v34 assetOwner:v36, v38, v39, v40];
    x = v41;
    y = v43;

    geometry = v29;
    v27 = v87;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v84 = interactiveCanvasController;
  pathSource = [shapeCopy pathSource];
  v46 = [pathSource copy];

  v80 = geometry;
  [geometry size];
  [v46 scaleToNaturalSize:?];
  v79 = [[CRLMaskInfo alloc] initWithImageItem:imageCopy geometry:v27 pathSource:v46];
  v78 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:imageCopy maskInfo:v79];
  [commandController enqueueCommand:?];
  if (facesCopy)
  {
    [v27 center];
    if (!sub_10011ED38(x, y, v47, v48))
    {
      [v27 center];
      v51 = sub_10011F31C(v49, v50, x);
      geometry3 = [imageCopy geometry];
      v53 = [geometry3 mutableCopy];

      [v53 size];
      v54 = sub_10011ECB4();
      v58 = sub_100120414(v54, v55, v56, v57);
      v60 = sub_10011F334(v58, v59, v51);
      if (v53)
      {
        v85 = v60;
        v77 = v61;
        [v53 transform];
        v61 = v77;
        v60 = v85;
        v63 = v88;
        v62 = v89;
        v64 = v90;
      }

      else
      {
        v64 = 0uLL;
        v63 = 0uLL;
        v62 = 0uLL;
      }

      [v53 setCenter:{vaddq_f64(v64, vmlaq_n_f64(vmulq_n_f64(v62, v61), v63, v60))}];
      v65 = [v27 mutableCopy];
      [v65 setCenter:{x, y}];
      v66 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:imageCopy imageGeometry:v53 maskGeometry:v65 maskPathSource:v46];
      [commandController enqueueCommand:v66];
    }
  }

  v86 = shapeCopy;
  v67 = [NSSet setWithObject:shapeCopy];
  v68 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v69 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v67];
  editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v72 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v69 infosToRemove:v67 editingCoordinator:editingCoordinator withIcc:interactiveCanvasController2];
  [(CRLCommandGroup *)v68 addCommands:v72];

  [commandController enqueueCommand:v68];
  v73 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v67 shouldRemoveEmptyContainers:1];
  [commandController enqueueCommand:v73];
  [(CRLCanvasEditorHelper *)self didMaskImage:imageCopy additionalData:v91[0]];
  v74 = +[NSBundle mainBundle];
  v75 = [v74 localizedStringForKey:@"Mask with Shape" value:0 table:0];
  [commandController setCurrentGroupActionString:v75];

  if (v82)
  {
    [commandController closeGroup];
  }

  if (editingCopy)
  {
    [v84 layoutIfNeeded];
    v76 = [v84 repForInfo:imageCopy];
    [v76 editMaskWithHUD:1];
  }
}

- (void)maskImage:(id)image withShapeType:(int64_t)type
{
  imageCopy = image;
  v7 = [[CRLCanvasInfoGeometry alloc] initWithSize:sub_10057DBD4(type)];
  [(CRLCanvasInfoGeometry *)v7 size];
  v8 = [CRLPathSource pathSourceForShapeType:type naturalSize:?];
  if (type == 4)
  {
    v9 = objc_opt_class();
    v10 = sub_100013F00(v9, v8);
    v11 = v10;
    if (v10)
    {
      [v10 setIsCurveContinuous:1];
    }
  }

  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v14 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v16 = [(CRLCanvasCommandSelectionBehavior *)v14 initWithCanvasEditor:canvasEditor];

  v47 = v16;
  [commandController openGroupWithSelectionBehavior:v16];
  v49 = 0;
  [(CRLCanvasEditorHelper *)self willMaskImage:imageCopy withShapeInfo:0 additionalData:&v49];
  v48 = interactiveCanvasController;
  [interactiveCanvasController repForInfo:imageCopy];
  v17 = v46 = self;
  imageLayout = [v17 imageLayout];
  imageAssetPayload = [imageCopy imageAssetPayload];
  geometry = [imageCopy geometry];
  [geometry size];
  v22 = v21;
  v24 = v23;
  [(CRLCanvasInfoGeometry *)v7 transformedBounds];
  v26 = v25;
  v28 = v27;
  [imageLayout imageGeometry];
  v29 = v7;
  v31 = v30 = v8;
  [v31 size];
  v32 = sub_10011ECB4();
  v36 = sub_100120414(v32, v33, v34, v35);
  [CRLImageFaceAnalyzer maskCenterForFacesInImageData:imageAssetPayload imageSize:imageCopy maskSize:v22 defaultCenter:v24 assetOwner:v26, v28, v36, v37];
  v39 = v38;
  v41 = v40;

  [v30 naturalSize];
  v43 = [(CRLCanvasInfoGeometry *)v29 geometryWithNewBounds:sub_10011EC70(v39, v41, v42)];
  v44 = [[CRLMaskInfo alloc] initWithImageItem:imageCopy geometry:v43 pathSource:v30];
  v45 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:imageCopy maskInfo:v44];
  [commandController enqueueCommand:v45];
  [(CRLCanvasEditorHelper *)v46 didMaskImage:imageCopy additionalData:v49];

  [commandController closeGroup];
  if (([imageLayout isInMaskEditMode] & 1) == 0)
  {
    [v17 editMaskWithHUD:1];
  }
}

- (id)commandForReplacingImagePlaceholderInSelection:(id)selection withBoardItems:(id)items isCrossDocument:(BOOL)document withSender:(id)sender outSelectionBehavior:(id *)behavior
{
  itemsCopy = items;
  senderCopy = sender;
  selectionCopy = selection;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  v16 = [selectionModelTranslator boardItemsForSelectionPath:selectionCopy];

  if ([itemsCopy count] != 1 || objc_msgSend(v16, "count") != 1)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v17 = objc_opt_class();
  anyObject = [v16 anyObject];
  v19 = sub_100014370(v17, anyObject);

  if (v19 && ([v19 locked] & 1) == 0)
  {
    firstObject = [itemsCopy firstObject];
    v22 = objc_opt_class();
    imageData = sub_100014370(v22, firstObject);
    v63 = firstObject;
    if (!imageData)
    {
      editingCoordinator = [interactiveCanvasController editingCoordinator];
      boardItemFactory = [editingCoordinator boardItemFactory];

      v38 = sub_1003035DC(firstObject, 1, v32, v33, v34, v35, v36, v37, &OBJC_PROTOCOL___CRLIngestibleBoardItemProvider);
      if (v38 && (v45 = v38, v46 = [v38 newBoardItemWithFactory:boardItemFactory bakedSize:0], v47 = objc_opt_class(), sub_100014370(v47, v46), imageData = objc_claimAutoreleasedReturnValue(), v46, v38 = v45, firstObject = v63, imageData))
      {
      }

      else
      {
        v60 = v38;
        v49 = sub_1003035DC(firstObject, 1, v39, v40, v41, v42, v43, v44, &OBJC_PROTOCOL___CRLPasteboardImageDataProvider);
        if (v49)
        {
          v50 = v49;
          imageData = [v49 imageData];
          v59 = v50;
          thumbnailImageData = [v50 thumbnailImageData];
          v52 = boardItemFactory;
          v61 = imageData;
          if (imageData)
          {
            v58 = thumbnailImageData;
            v53 = [CRLImageDataHelper alloc];
            assetOwner = [boardItemFactory assetOwner];
            v57 = [(CRLImageDataHelper *)v53 initWithImageData:v61 assetOwner:assetOwner];

            v55 = [CRLCanvasInfoGeometry alloc];
            [(CRLImageDataHelper *)v57 naturalSize];
            v56 = [(CRLCanvasInfoGeometry *)v55 initWithSize:?];
            imageData = [boardItemFactory makeImageItemWithGeometry:v56 imageData:v61 thumbnailData:v58];

            v52 = boardItemFactory;
            firstObject = v63;

            thumbnailImageData = v58;
          }

          v49 = v59;
        }

        else
        {
          imageData = 0;
          v52 = boardItemFactory;
        }

        if (!imageData)
        {
          v20 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    imageAssetPayload = [imageData imageAssetPayload];

    if (imageAssetPayload)
    {
      v25 = objc_opt_class();
      interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      v27 = [interactiveCanvasController2 repForInfo:v19];
      v28 = sub_100014370(v25, v27);

      if ([v28 shouldAllowReplacementFromPaste] && (!+[CRLCanvasEditor physicalKeyboardIsSender:](CRLCanvasEditor, "physicalKeyboardIsSender:", senderCopy) || (objc_msgSend(imageData, "imageAssetPayload"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "canPasteDataFromPhysicalKeyboard:", v29), v29, v30)))
      {
        v20 = [v28 commandForAcceptingPasteWithImageInfo:imageData outSelectionBehavior:behavior];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    firstObject = v63;
    goto LABEL_20;
  }

  v20 = 0;
LABEL_21:

LABEL_22:

  return v20;
}

- (void)replaceBoardItem:(id)item withBoardItem:(id)boardItem
{
  boardItemCopy = boardItem;
  itemCopy = item;
  v8 = [NSSet setWithObject:itemCopy];
  v15 = boardItemCopy;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [(CRLCanvasEditorHelper *)self commandForInsertingBoardItemsIntoTopLevelContainer:v9 below:itemCopy];

  v11 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v8 shouldRemoveEmptyContainers:0];
  v12 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);

  [(CRLCommandGroup *)v12 addCommand:v10];
  [(CRLCommandGroup *)v12 addCommand:v11];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  [commandController enqueueCommand:v12];
}

- (id)commandForInsertingBoardItemsIntoTopLevelContainer:(id)container below:(id)below withOffset:(unint64_t)offset
{
  containerCopy = container;
  belowCopy = below;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  topLevelContainerInfoForEditing = [interactiveCanvasController topLevelContainerInfoForEditing];
  v12 = objc_opt_class();
  v18 = sub_100303920(topLevelContainerInfoForEditing, v12, 1, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLContainerInfo);

  if (v18)
  {
    v19 = [(CRLCanvasEditorHelper *)self commandToInsertBoardItems:containerCopy intoContainer:v18 belowBoardItem:belowCopy withOffset:offset];
  }

  else
  {
    interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    containerForTopLevelInsertion = [interactiveCanvasController2 containerForTopLevelInsertion];

    v19 = [(CRLCanvasEditorHelper *)self commandToInsertBoardItems:containerCopy intoContainer:containerForTopLevelInsertion belowBoardItem:belowCopy withOffset:offset];
  }

  return v19;
}

- (id)commandToInsertBoardItems:(id)items intoContainer:(id)container belowBoardItem:(id)item withOffset:(unint64_t)offset
{
  itemsCopy = items;
  containerCopy = container;
  itemCopy = item;
  v12 = objc_opt_class();
  v13 = sub_100013F00(v12, containerCopy);
  if (v13)
  {
    childInfos = [containerCopy childInfos];
    v15 = [childInfos indexOfObject:itemCopy];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      childInfos2 = [containerCopy childInfos];
      v15 = [childInfos2 count];
    }

    v17 = v15 >= offset;
    v18 = &v15[-offset];
    if (!v17)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101346C44();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101346C58();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101346CE8();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v24);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Offset for index was too large.", v25, v26, v27, v28, v29, v30, v31, "[CRLCanvasEditorHelper commandToInsertBoardItems:intoContainer:belowBoardItem:withOffset:]");
      v32 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper commandToInsertBoardItems:intoContainer:belowBoardItem:withOffset:]"];
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:2125 isFatal:1 description:"Offset for index was too large."];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v34, v35);
      abort();
    }

    v19 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v13 boardItems:itemsCopy index:v18];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101346D10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101346D24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101346DC0();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper commandToInsertBoardItems:intoContainer:belowBoardItem:withOffset:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:2119 isFatal:0 description:"invalid nil value for '%{public}s'", "containerItem"];

    v19 = 0;
  }

  return v19;
}

- (id)commandForDeletingBoardItemsFromTopLevelContainer:(id)container shouldRemoveEmptyContainers:(BOOL)containers
{
  containersCopy = containers;
  containerCopy = container;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  topLevelContainerInfoForEditing = [interactiveCanvasController topLevelContainerInfoForEditing];

  if (topLevelContainerInfoForEditing)
  {
    v9 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:containerCopy shouldRemoveEmptyContainers:containersCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)commandForDeletingInfosPossiblyFromMultipleContainers:(id)containers shouldRemoveEmptyContainers:(BOOL)emptyContainers canDeleteNewlyCreatedInfos:(BOOL)infos
{
  infosCopy = infos;
  emptyContainersCopy = emptyContainers;
  containersCopy = containers;
  if ([containersCopy count])
  {
    v8 = containersCopy;
    v40 = containersCopy;
    v39 = infosCopy;
    if (emptyContainersCopy)
    {
      v9 = [(CRLCanvasEditorHelper *)self infosToDeleteToDeleteInfos:v8];

      v8 = v9;
    }

    v41 = +[NSMutableSet set];
    v45 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          v15 = objc_opt_class();
          parentInfo = [v14 parentInfo];
          v17 = sub_100014370(v15, parentInfo);

          if (v17)
          {
            v18 = [v45 objectForKeyedSubscript:v17];
            if (!v18)
            {
              v18 = +[NSMutableSet set];
              [v45 setObject:v18 forKey:v17];
            }

            v19 = objc_opt_class();
            v20 = sub_100013F00(v19, v14);
            [v18 addObject:v20];
          }

          else
          {
            [v41 addObject:v14];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v11);
    }

    v21 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
    if ([v45 count])
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v22 = v45;
      v23 = [v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v23)
      {
        v24 = v23;
        v43 = *v47;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            v26 = v21;
            if (*v47 != v43)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [v22 objectForKeyedSubscript:*(*(&v46 + 1) + 8 * j)];
            v28 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v27];
            editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
            interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
            v31 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v28 infosToRemove:v27 editingCoordinator:editingCoordinator withIcc:interactiveCanvasController];

            v21 = v26;
            if ([v31 count])
            {
              [(CRLCommandGroup *)v26 addCommands:v31];
            }

            v32 = [[_TtC8Freeform26CRLCommandDeleteBoardItems alloc] initWithBoardItemsToDelete:v27];
            [(CRLCommandGroup *)v26 addCommand:v32];
          }

          v24 = [v22 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v24);
      }
    }

    if ([v41 count])
    {
      v33 = [[_TtC8Freeform26CRLCommandDeleteBoardItems alloc] initWithBoardItemsToDelete:v41 canDeleteNewlyCreatedItems:v39];
      [(CRLCommandGroup *)v21 addCommand:v33];
    }

    if ([(CRLCommandGroup *)v21 isEmpty])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v34 = v21;
      if (qword_101AD5A10 != -1)
      {
        sub_101346DE8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101346E10();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101346E98();
      }

      v35 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v35);
      }

      v36 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper commandForDeletingInfosPossiblyFromMultipleContainers:shouldRemoveEmptyContainers:canDeleteNewlyCreatedInfos:]"];
      v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v36 file:v37 lineNumber:2200 isFatal:0 description:"Shouldn't vend an empty command group: %@", v34];

      v21 = v34;
    }

    containersCopy = v40;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)infosToDeleteToDeleteInfos:(id)infos
{
  v32 = [infos mutableCopy];
  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  v4 = &off_1019B9000;
  while (1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = [v32 copy];
    v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = 0;
    v8 = *v34;
    do
    {
      v9 = 0;
      v30 = v6;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = objc_opt_class();
        parentInfo = [v10 parentInfo];
        v13 = sub_100014370(v11, parentInfo);

        if (v13)
        {
          v14 = [v3 objectForKeyedSubscript:v13];
          if (!v14)
          {
            childInfos = [v13 childInfos];
            v14 = [NSSet setWithArray:childInfos];

            [v3 setObject:v14 forKeyedSubscript:v13];
          }

          if ([v14 isSubsetOfSet:v32])
          {
            v16 = v8;
            v17 = v3;
            v18 = v4;
            v19 = objc_opt_class();
            parentInfo2 = [v13 parentInfo];
            v21 = sub_100014370(v19, parentInfo2);

            childInfos2 = [v21 childInfos];
            v23 = [childInfos2 count];

            if (v23 == 1)
            {
              do
              {
                parentInfo3 = [v21 parentInfo];

                childInfos3 = [parentInfo3 childInfos];
                v26 = [childInfos3 count];

                v21 = parentInfo3;
              }

              while (v26 == 1);
            }

            else
            {
              parentInfo3 = v21;
            }

            allNestedChildrenItemsIncludingGroups = [v13 allNestedChildrenItemsIncludingGroups];
            v28 = [NSSet setWithArray:allNestedChildrenItemsIncludingGroups];
            [v32 minusSet:v28];

            [v32 addObject:v13];
            v7 = 1;
            v4 = v18;
            v3 = v17;
            v8 = v16;
            v6 = v30;
          }
        }

        v9 = v9 + 1;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);

    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_22:

  return v32;
}

- (id)commandsToSwapConnectionsFromRep:(id)rep toInfo:(id)info
{
  repCopy = rep;
  infoCopy = info;
  v29 = +[NSMutableArray array];
  layout = [repCopy layout];
  connectedLayouts = [layout connectedLayouts];
  v9 = [connectedLayouts count];

  if (v9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    layout2 = [repCopy layout];
    connectedLayouts2 = [layout2 connectedLayouts];

    obj = connectedLayouts2;
    v12 = [connectedLayouts2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = *v33;
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        connectionLineInfo = [*(*(&v32 + 1) + 8 * i) connectionLineInfo];
        editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
        mainBoard = [editingCoordinator mainBoard];
        v19 = [connectionLineInfo getConnectedFromWithBoardItemOwner:mainBoard];

        editingCoordinator2 = [(CRLCanvasEditorHelper *)self editingCoordinator];
        mainBoard2 = [editingCoordinator2 mainBoard];
        v22 = [connectionLineInfo getConnectedToWithBoardItemOwner:mainBoard2];

        info = [repCopy info];

        if (v19 == info)
        {
          v25 = 0;
        }

        else
        {
          info2 = [repCopy info];

          if (v22 != info2)
          {
            goto LABEL_13;
          }

          v25 = 1;
        }

        v26 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:infoCopy chirality:v25];
        if (v26)
        {
          v27 = v26;
          [v29 addObject:v26];
        }

LABEL_13:
      }

      v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v13)
      {
LABEL_15:

        break;
      }
    }
  }

  return v29;
}

- (void)prepareGeometryForInsertingBoardItems:(id)items withInsertionContext:(id)context
{
  itemsCopy = items;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  topLevelContainerInfoForEditing = [interactiveCanvasController topLevelContainerInfoForEditing];
  v8 = objc_opt_class();
  v14 = sub_100303920(topLevelContainerInfoForEditing, v8, 1, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLContainerInfo);

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = sub_100014370(v15, v14);
    if (v16 && [(CRLCanvasEditorHelper *)self canInsertBoardItems:itemsCopy intoGroup:v16])
    {
      memset(&v35, 0, sizeof(v35));
      interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      topLevelContainerRepForEditing = [interactiveCanvasController2 topLevelContainerRepForEditing];
      layout = [topLevelContainerRepForEditing layout];
      v20 = layout;
      if (layout)
      {
        [layout transformInRoot];
      }

      else
      {
        memset(&v35, 0, sizeof(v35));
      }

      v33 = v35;
      CGAffineTransformInvert(&v34, &v33);
      v35 = v34;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = itemsCopy;
      v22 = [v21 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v30;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v29 + 1) + 8 * i);
            geometry = [v26 geometry];
            v34 = v35;
            v28 = [geometry geometryByAppendingTransform:&v34];
            [v26 setGeometry:v28];
          }

          v23 = [v21 countByEnumeratingWithState:&v29 objects:v36 count:16];
        }

        while (v23);
      }
    }
  }
}

- (void)p_fixupGeometryForInsertingBoardItems:(id)items intoContainer:(id)container
{
  itemsCopy = items;
  containerCopy = container;
  if (containerCopy)
  {
    v8 = objc_opt_class();
    v9 = sub_100014370(v8, containerCopy);
    v10 = objc_opt_class();
    v11 = sub_100014370(v10, containerCopy);
    if (v11 && -[CRLCanvasEditorHelper canInsertBoardItems:intoGroup:](self, "canInsertBoardItems:intoGroup:", itemsCopy, v11) || [v9 canInsert:itemsCopy])
    {
      interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
      v14 = [canvasEditor selectionPathWithInfo:containerCopy];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1002A44DC;
      v15[3] = &unk_101850D58;
      v16 = v9;
      v17 = itemsCopy;
      [interactiveCanvasController forLayoutNearestVisibleRectForInfosForSelectionPath:v14 performBlock:v15];
    }
  }
}

- (void)prepareGeometryForPastingBoardItems:(id)items fromPasteboard:(id)pasteboard intoContainer:(id)container useOriginalPositions:(BOOL)positions
{
  positionsCopy = positions;
  pasteboardCopy = pasteboard;
  containerCopy = container;
  itemsCopy = items;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v13 = interactiveCanvasController;
  if (positionsCopy)
  {
    name = [pasteboardCopy name];
    v15 = [name isEqualToString:@"com.apple.freeform.Canvas.CRLCanvasRepNoPositionOffsetPasteboardName"];

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
      v21 = objc_alloc([WeakRetained boardItemPositionerClass]);
      canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
      v16 = [v21 initWithCanvasEditor:canvasEditor];

      [v16 setAvoidCollisions:0];
    }
  }

  else
  {
    infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];
    if ([infosForCurrentSelectionPath count])
    {
      [(CRLCanvasEditorHelper *)self p_centerOfBoardItems:infosForCurrentSelectionPath];
    }

    else
    {
      [v13 visibleUnscaledRect];
      v18 = sub_100120414(v23, v24, v25, v26);
    }

    v27 = v18;
    v28 = v19;
    v29 = objc_loadWeakRetained(&self->mCanvasEditor);
    v30 = objc_alloc([v29 boardItemPositionerClass]);
    canvasEditor2 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v16 = [v30 initWithCanvasEditor:canvasEditor2 targetCenter:1 validGeometries:{v27, v28}];

    [v16 setShouldPreserveRelativePositions:1];
  }

  [v16 positionBoardItems:itemsCopy];
  [(CRLCanvasEditorHelper *)self p_fixupGeometryForInsertingBoardItems:itemsCopy intoContainer:containerCopy];
}

- (CGPoint)p_centerOfBoardItems:(id)items
{
  itemsCopy = items;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [itemsCopy countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    v37 = height;
    v38 = width;
    v39 = y;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v15 = [interactiveCanvasController layoutForInfo:v13];

        if (v15)
        {
          pureGeometryInRoot = [v15 pureGeometryInRoot];
          [pureGeometryInRoot frame];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v56.origin.x = x;
          v56.origin.y = y;
          v56.size.width = width;
          v56.size.height = height;
          v59.origin.y = v39;
          v59.origin.x = CGRectZero.origin.x;
          v59.size.height = v37;
          v59.size.width = v38;
          if (CGRectEqualToRect(v56, v59))
          {
            height = v24;
            width = v22;
            y = v20;
            x = v18;
          }

          else
          {
            v57.origin.x = x;
            v57.origin.y = y;
            v57.size.width = width;
            v57.size.height = height;
            v60.origin.x = v18;
            v60.origin.y = v20;
            v60.size.width = v22;
            v60.size.height = v24;
            v58 = CGRectUnion(v57, v60);
            x = v58.origin.x;
            y = v58.origin.y;
            width = v58.size.width;
            height = v58.size.height;
          }
        }

        else
        {
          v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101346EC0();
          }

          v26 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v45 = v25;
            v46 = 2082;
            v47 = "[CRLCanvasEditorHelper p_centerOfBoardItems:]";
            v48 = 2082;
            v49 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m";
            v50 = 1024;
            v51 = 2365;
            v52 = 2082;
            v53 = "layout";
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101346EE8();
          }

          v27 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v30 = v27;
            v31 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v45 = v25;
            v46 = 2114;
            v47 = v31;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v28 = [NSString stringWithUTF8String:"[CRLCanvasEditorHelper p_centerOfBoardItems:]"];
          v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditorHelper.m"];
          [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:2365 isFatal:0 description:"invalid nil value for '%{public}s'", "layout"];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [itemsCopy countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v10);
  }

  v32 = sub_100120414(x, y, width, height);
  v34 = v33;

  v35 = v32;
  v36 = v34;
  result.y = v36;
  result.x = v35;
  return result;
}

- (id)insertCopiesOfInfos:(id)infos forDuplicatingDragOnRep:(id)rep
{
  infosCopy = infos;
  repCopy = rep;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  v11 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:infosCopy];
  v12 = [v11 crl_arrayWithObjectsInSet:infosCopy];

  editingCoordinator = [interactiveCanvasController editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];
  v15 = [boardItemFactory makeDuplicateOfBoardItems:v12];

  v16 = +[CRLInsertionContext nonInteractiveInsertionContext];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1002A4F20;
  v24 = sub_1002A4F30;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002A4F38;
  v19[3] = &unk_101850DC0;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = &v20;
  [editorController enumerateEditorsOnStackUsingBlock:v19];
  [v21[5] insertBoardItems:v15 withInsertionContext:v16 postProcessBlock:0];
  v17 = [NSSet setWithArray:v15];
  _Block_object_dispose(&v20, 8);

  return v17;
}

- (void)enterQuickSelectMode:(id)mode
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC enterQuickSelectMode];
}

- (void)presentAlignmentTools:(id)tools
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC presentAlignmentTools];
}

- (void)bringToFront:(id)front
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  arrangeInspectorDelegate = [canvasEditor arrangeInspectorDelegate];
  [arrangeInspectorDelegate moveToFrontForArrangeInspector];
}

- (void)bringForward:(id)forward
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  arrangeInspectorDelegate = [canvasEditor arrangeInspectorDelegate];
  [arrangeInspectorDelegate moveFrontForArrangeInspector];
}

- (void)sendBackward:(id)backward
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  arrangeInspectorDelegate = [canvasEditor arrangeInspectorDelegate];
  [arrangeInspectorDelegate moveBackForArrangeInspector];
}

- (void)sendToBack:(id)back
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  arrangeInspectorDelegate = [canvasEditor arrangeInspectorDelegate];
  [arrangeInspectorDelegate moveToBackForArrangeInspector];
}

- (id)layoutsForAlignAndDistribute
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingCoordinator = [(CRLCanvasEditorHelper *)self editingCoordinator];
  mainBoard = [editingCoordinator mainBoard];

  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002A53DC;
  v16[3] = &unk_101850DE8;
  v16[4] = mainBoard;
  v10 = [NSPredicate predicateWithBlock:v16];
  v11 = [v9 filteredSetUsingPredicate:v10];

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  layoutController = [interactiveCanvasController2 layoutController];
  v14 = [layoutController layoutsForInfos:v11];

  return v14;
}

- (void)alignDrawablesByEdge:(int)edge
{
  v3 = *&edge;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:canvasEditor type:2];

  [(CRLCommandSelectionBehavior *)v9 setSelectionFlags:[(CRLCommandSelectionBehavior *)v9 selectionFlags]| 4];
  [commandController openGroupWithSelectionBehavior:v9];
  v61 = v9;
  if (v3 > 5)
  {
    v12 = 0;
  }

  else
  {
    v10 = off_101850EA8[v3];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:v10 value:0 table:@"UndoStrings"];
  }

  [commandController setCurrentGroupActionString:v12];
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController2 hasSelectedInfosInMultipleContainers];

  layoutsForAlignAndDistribute = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
  v72 = 0;
  [(CRLCanvasEditorHelper *)self willRepositionLayouts:layoutsForAlignAndDistribute additionalData:&v72];
  v62 = commandController;
  selfCopy = self;
  v60 = v12;
  if ([layoutsForAlignAndDistribute count] == 1)
  {
    anyObject = [layoutsForAlignAndDistribute anyObject];
    parentLayoutForProvidingGuides = [anyObject parentLayoutForProvidingGuides];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      canvasEditor2 = [(CRLCanvasEditorHelper *)self canvasEditor];
      [canvasEditor2 interactiveCanvasController];
      v19 = v59 = anyObject;
      canvas = [v19 canvas];
      [canvas unscaledSize];

      v21 = sub_10011ECB4();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      canvasEditor3 = [(CRLCanvasEditorHelper *)self canvasEditor];
      interactiveCanvasController3 = [canvasEditor3 interactiveCanvasController];
      canvas2 = [interactiveCanvasController3 canvas];
      isAnchoredAtRight = [canvas2 isAnchoredAtRight];

      anyObject = v59;
      if (isAnchoredAtRight)
      {
        v21 = v21 - v25;
      }
    }

    else
    {
      [parentLayoutForProvidingGuides alignmentFrame];
      v21 = sub_10011ECB4();
      v23 = v36;
      v25 = v37;
      v27 = v38;
    }
  }

  else
  {
    [(CRLCanvasEditorHelper *)self p_boundingBoxForLayouts:layoutsForAlignAndDistribute inRootSpace:hasSelectedInfosInMultipleContainers];
    v21 = v32;
    v23 = v33;
    v25 = v34;
    v27 = v35;
  }

  v39 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(layoutsForAlignAndDistribute, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v40 = layoutsForAlignAndDistribute;
  v41 = [v40 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v69;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v69 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v68 + 1) + 8 * i);
        [(CRLCanvasEditorHelper *)selfCopy p_offsetToMoveLayout:v45 edge:v3 toOffset:hasSelectedInfosInMultipleContainers inRootSpace:sub_10011EC1C(v3, v21, v23, v25, v27)];
        v46 = [NSValue valueWithCGPoint:?];
        [v39 setObject:v46 forKey:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v42);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = v40;
  v48 = [v47 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v65;
    do
    {
      for (j = 0; j != v49; j = j + 1)
      {
        if (*v65 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v64 + 1) + 8 * j);
        v53 = [v39 objectForKeyedSubscript:v52];
        [v53 CGPointValue];
        v55 = v54;
        v57 = v56;

        v58 = [v52 newCommandToMoveByOffset:v39 whenDistributingLayoutsByOffsets:{v55, v57}];
        if (v58)
        {
          [v62 enqueueCommand:v58];
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v49);
  }

  [(CRLCanvasEditorHelper *)selfCopy didRepositionLayouts:v47 additionalData:&v72];
  [v62 closeGroup];
}

- (void)distributeDrawablesByEdge:(int)edge
{
  v3 = *&edge;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  selfCopy = self;
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:canvasEditor type:2];

  [commandController openGroupWithSelectionBehavior:v9];
  if (v3 > 5)
  {
    v12 = 0;
  }

  else
  {
    v10 = off_101850ED8[v3];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:v10 value:0 table:@"UndoStrings"];
  }

  v70 = commandController;
  [commandController setCurrentGroupActionString:v12];
  layoutsForAlignAndDistribute = [(CRLCanvasEditorHelper *)selfCopy layoutsForAlignAndDistribute];
  v84 = 0;
  [(CRLCanvasEditorHelper *)selfCopy willRepositionLayouts:layoutsForAlignAndDistribute additionalData:&v84];
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)selfCopy interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController2 hasSelectedInfosInMultipleContainers];

  allObjects = [layoutsForAlignAndDistribute allObjects];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1002A5EA8;
  v81[3] = &unk_101850E08;
  v83 = hasSelectedInfosInMultipleContainers;
  v82 = v3;
  v17 = [allObjects sortedArrayUsingComparator:v81];

  v18 = [v17 count];
  v19 = [v17 objectAtIndexedSubscript:0];
  v20 = v19;
  v71 = hasSelectedInfosInMultipleContainers;
  v68 = v12;
  v69 = v9;
  if (hasSelectedInfosInMultipleContainers)
  {
    [v19 alignmentFrameInRoot];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    lastObject = [v17 lastObject];
    [lastObject alignmentFrameInRoot];
  }

  else
  {
    [v19 alignmentFrame];
    v22 = v34;
    v24 = v35;
    v26 = v36;
    v28 = v37;

    lastObject = [v17 lastObject];
    [lastObject alignmentFrame];
  }

  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;

  v42 = sub_10011EC1C(v3, v22, v24, v26, v28);
  v43 = v3;
  v44 = sub_10011EC1C(v3, v38, v39, v40, v41);
  v67 = layoutsForAlignAndDistribute;
  v45 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(layoutsForAlignAndDistribute, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v46 = v17;
  v47 = [v46 countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = (v44 - v42) / (v18 + -1.0);
    v51 = *v78;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v78 != v51)
        {
          objc_enumerationMutation(v46);
        }

        v53 = *(*(&v77 + 1) + 8 * i);
        [(CRLCanvasEditorHelper *)selfCopy p_offsetToMoveLayout:v53 edge:v43 toOffset:v71 inRootSpace:v42 + v50 * v49];
        v54 = [NSValue valueWithCGPoint:?];
        [v45 setObject:v54 forKey:v53];

        ++v49;
      }

      v48 = [v46 countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v48);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v55 = v46;
  v56 = [v55 countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v74;
    do
    {
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v74 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v73 + 1) + 8 * j);
        v61 = [v45 objectForKeyedSubscript:v60];
        [v61 CGPointValue];
        v63 = v62;
        v65 = v64;

        v66 = [v60 newCommandToMoveByOffset:v45 whenDistributingLayoutsByOffsets:{v63, v65}];
        if (v66)
        {
          [v70 enqueueCommand:v66];
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v57);
  }

  [(CRLCanvasEditorHelper *)selfCopy didRepositionLayouts:v67 additionalData:&v84];
  [v70 closeGroup];
}

- (void)distributeDrawablesEvenly
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController hasSelectedInfosInMultipleContainers];

  layoutsForAlignAndDistribute = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
  selfCopy = self;
  [(CRLCanvasEditorHelper *)self p_boundingBoxForLayouts:layoutsForAlignAndDistribute inRootSpace:hasSelectedInfosInMultipleContainers];
  v10 = sub_100120414(v6, v7, v8, v9);
  v12 = v11;
  x = CGPointZero.x;
  y = CGPointZero.y;
  v15 = [layoutsForAlignAndDistribute count];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v16 = layoutsForAlignAndDistribute;
  v17 = [v16 countByEnumeratingWithState:&v143 objects:v150 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 1.0 / v15;
    v20 = *v144;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v144 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v143 + 1) + 8 * i);
        if (hasSelectedInfosInMultipleContainers)
        {
          [v22 alignmentFrameInRoot];
        }

        else
        {
          [v22 alignmentFrame];
        }

        v27 = sub_100120414(v23, v24, v25, v26);
        v29 = sub_10011F31C(v27, v28, v10);
        if (v29 >= 0.0)
        {
          if (v29 == 0.0)
          {
            v30 = fabs(v30);
          }
        }

        else
        {
          v29 = sub_10011F340(v29, v30, -1.0);
        }

        v31 = sub_10011F2FC(v29, v30);
        v33 = sub_10011F340(v31, v32, v19);
        x = sub_10011F334(x, y, v33);
        y = v34;
      }

      v18 = [v16 countByEnumeratingWithState:&v143 objects:v150 count:16];
    }

    while (v18);
  }

  v35 = sub_10011F2FC(x, y);
  v37 = v36;
  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)selfCopy interactiveCanvasController];
  commandController = [interactiveCanvasController2 commandController];

  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"Distribute Evenly" value:0 table:@"UndoStrings"];

  if ((v35 == 0.0 || fabs(v35) < 0.00999999978) && (v37 == 1.0 || fabs(v37 + -1.0) < 0.00999999978))
  {
    [commandController openGroup];
    [commandController setCurrentGroupActionString:v41];
    v121 = selfCopy;
    v122 = 4;
LABEL_55:
    [(CRLCanvasEditorHelper *)v121 distributeDrawablesByEdge:v122];
    [commandController closeGroup];
    goto LABEL_56;
  }

  if ((v35 == 1.0 || fabs(v35 + -1.0) < 0.00999999978) && (v37 == 0.0 || fabs(v37) < 0.00999999978))
  {
    [commandController openGroup];
    [commandController setCurrentGroupActionString:v41];
    v121 = selfCopy;
    v122 = 1;
    goto LABEL_55;
  }

  v42 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor = [(CRLCanvasEditorHelper *)selfCopy canvasEditor];
  v44 = [(CRLCanvasCommandSelectionBehavior *)v42 initWithCanvasEditor:canvasEditor type:2];

  v125 = v44;
  [commandController openGroupWithSelectionBehavior:v44];
  v126 = v41;
  [commandController setCurrentGroupActionString:v41];
  v142 = 0;
  [(CRLCanvasEditorHelper *)selfCopy willRepositionLayouts:v16 additionalData:&v142];
  v45 = objc_alloc_init(NSMutableSet);
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v127 = v16;
  obj = v16;
  v46 = [obj countByEnumeratingWithState:&v138 objects:v149 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v139;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v139 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v138 + 1) + 8 * j);
        if (hasSelectedInfosInMultipleContainers)
        {
          [v50 alignmentFrameInRoot];
        }

        else
        {
          [v50 alignmentFrame];
        }

        v55 = sub_100120414(v51, v52, v53, v54);
        v57 = sub_10011F31C(v55, v56, v10);
        v59 = sub_10011F328(v57, v58, v35, v37);
        v60 = sub_10011F340(v35, v37, v59);
        v61 = [NSValue valueWithCGPoint:sub_10011F334(v10, v12, v60)];
        v62 = [CRLPair pairWithFirst:v50 second:v61];

        [v45 addObject:v62];
      }

      v47 = [obj countByEnumeratingWithState:&v138 objects:v149 count:16];
    }

    while (v47);
  }

  allObjects = [v45 allObjects];
  v64 = [allObjects sortedArrayUsingComparator:&stru_101850E48];

  v65 = [v64 count];
  v66 = [v64 objectAtIndex:0];
  lastObject = [v64 lastObject];
  first = [v66 first];
  v69 = first;
  if (hasSelectedInfosInMultipleContainers)
  {
    [first frameInRoot];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;

    first2 = [lastObject first];
    [first2 frameInRoot];
  }

  else
  {
    [first frame];
    v71 = v83;
    v73 = v84;
    v75 = v85;
    v77 = v86;

    first2 = [lastObject first];
    [first2 frame];
  }

  v87 = v79;
  v88 = v80;
  v89 = v81;
  v90 = v82;

  v91 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(obj, "count")}];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v92 = v64;
  v93 = [v92 countByEnumeratingWithState:&v134 objects:v148 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = sub_100120414(v87, v88, v89, v90);
    v97 = v96;
    v98 = sub_100120414(v71, v73, v75, v77);
    v100 = v99;
    v101 = sub_10011F31C(v95, v97, v98);
    v103 = sub_10011F340(v101, v102, 1.0 / (v65 - 1));
    v104 = *v135;
    do
    {
      for (k = 0; k != v94; k = k + 1)
      {
        if (*v135 != v104)
        {
          objc_enumerationMutation(v92);
        }

        first3 = [*(*(&v134 + 1) + 8 * k) first];
        [(CRLCanvasEditorHelper *)selfCopy p_offsetToMoveCenterOfLayout:first3 toPoint:hasSelectedInfosInMultipleContainers inRootSpace:v98, v100];
        v107 = [NSValue valueWithCGPoint:?];
        [v91 setObject:v107 forKey:first3];

        v98 = sub_10011F334(v98, v100, v103);
        v100 = v108;
      }

      v94 = [v92 countByEnumeratingWithState:&v134 objects:v148 count:16];
    }

    while (v94);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v109 = v92;
  v110 = [v109 countByEnumeratingWithState:&v130 objects:v147 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v131;
    do
    {
      for (m = 0; m != v111; m = m + 1)
      {
        if (*v131 != v112)
        {
          objc_enumerationMutation(v109);
        }

        first4 = [*(*(&v130 + 1) + 8 * m) first];
        v115 = [v91 objectForKeyedSubscript:first4];
        [v115 CGPointValue];
        v117 = v116;
        v119 = v118;

        v120 = [first4 newCommandToMoveByOffset:v91 whenDistributingLayoutsByOffsets:{v117, v119}];
        if (v120)
        {
          [commandController enqueueCommand:v120];
        }
      }

      v111 = [v109 countByEnumeratingWithState:&v130 objects:v147 count:16];
    }

    while (v111);
  }

  [(CRLCanvasEditorHelper *)selfCopy didRepositionLayouts:obj additionalData:&v142];
  [commandController closeGroup];

  v16 = v127;
  v41 = v126;
LABEL_56:
}

- (CGRect)p_boundingBoxForLayouts:(id)layouts inRootSpace:(BOOL)space
{
  spaceCopy = space;
  layoutsCopy = layouts;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [layoutsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(layoutsCopy);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        if (spaceCopy)
        {
          [v14 alignmentFrameInRoot];
        }

        else
        {
          [v14 alignmentFrame];
        }

        v19 = v15;
        v20 = v16;
        v21 = v17;
        v22 = v18;
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        if (CGRectIsNull(v32))
        {
          height = v22;
          width = v21;
          y = v20;
          x = v19;
        }

        else
        {
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v36.origin.x = v19;
          v36.origin.y = v20;
          v36.size.width = v21;
          v36.size.height = v22;
          v34 = CGRectUnion(v33, v36);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [layoutsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGPoint)p_offsetToMoveCenterOfLayout:(id)layout toPoint:(CGPoint)point inRootSpace:(BOOL)space
{
  spaceCopy = space;
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v9 = layoutCopy;
  if (spaceCopy)
  {
    [layoutCopy alignmentFrameInRoot];
  }

  else
  {
    [layoutCopy alignmentFrame];
  }

  v14 = sub_100120414(v10, v11, v12, v13);
  v15 = sub_10011F31C(x, y, v14);
  tx = v15;
  ty = v16;
  if (spaceCopy)
  {
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeTranslation(&v24, v15, v16);
    parent = [v9 parent];
    v20 = parent;
    if (parent)
    {
      [parent transformInRoot];
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    sub_100139E2C(&v24, v23, &v25);

    ty = v25.ty;
    tx = v25.tx;
  }

  v21 = tx;
  v22 = ty;
  result.y = v22;
  result.x = v21;
  return result;
}

- (CGPoint)p_offsetToMoveLayout:(id)layout edge:(int)edge toOffset:(double)offset inRootSpace:(BOOL)space
{
  spaceCopy = space;
  v8 = *&edge;
  layoutCopy = layout;
  v10 = layoutCopy;
  if (spaceCopy)
  {
    [layoutCopy alignmentFrameInRoot];
  }

  else
  {
    [layoutCopy alignmentFrame];
  }

  v15 = offset - sub_10011EC1C(v8, v11, v12, v13, v14);
  v16 = [CRLSwappableAxesGeometry geometryWithXAxisAlongEdge:v8];
  [v16 pointX:{v15, 0.0}];
  tx = v17;
  [v16 pointY:{v15, 0.0}];
  ty = v19;
  if (spaceCopy)
  {
    memset(&v27, 0, sizeof(v27));
    CGAffineTransformMakeTranslation(&v26, tx, v19);
    parent = [v10 parent];
    v22 = parent;
    if (parent)
    {
      [parent transformInRoot];
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    sub_100139E2C(&v26, v25, &v27);

    ty = v27.ty;
    tx = v27.tx;
  }

  v23 = tx;
  v24 = ty;
  result.y = v24;
  result.x = v23;
  return result;
}

- (BOOL)p_allowsCanvasScrollingFromKeyboard
{
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  interactiveCanvasController = [canvasEditor interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asUIKitHost = [layerHost asUIKitHost];

  LOBYTE(canvasEditor) = [asUIKitHost allowsCanvasScrollingFromKeyboard];
  return canvasEditor;
}

- (CGPoint)contentOffsetForDocumentNavigationType:(unint64_t)type
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [interactiveCanvasController visibleBoundsRectUsingSizeOfEnclosingScrollView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [interactiveCanvasController viewScale];
  v14 = v13;
  [interactiveCanvasController contentOffset];
  v16 = v15;
  v18 = v17;
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        v29.origin.x = v6;
        v29.origin.y = v8;
        v29.size.width = v10;
        v29.size.height = v12;
        Width = CGRectGetWidth(v29);
        v20 = 0.05;
        goto LABEL_12;
      case 4uLL:
        v31.origin.x = v6;
        v31.origin.y = v8;
        v31.size.width = v10;
        v31.size.height = v12;
        Height = CGRectGetHeight(v31);
        v22 = -0.8;
        break;
      case 5uLL:
        v27.origin.x = v6;
        v27.origin.y = v8;
        v27.size.width = v10;
        v27.size.height = v12;
        Height = CGRectGetHeight(v27);
        v22 = 0.8;
        break;
      default:
        goto LABEL_16;
    }

LABEL_15:
    v18 = v18 + Height * v22 / v14;
    goto LABEL_16;
  }

  switch(type)
  {
    case 0uLL:
      v28.origin.x = v6;
      v28.origin.y = v8;
      v28.size.width = v10;
      v28.size.height = v12;
      Height = CGRectGetHeight(v28);
      v22 = -0.05;
      goto LABEL_15;
    case 1uLL:
      v30.origin.x = v6;
      v30.origin.y = v8;
      v30.size.width = v10;
      v30.size.height = v12;
      Height = CGRectGetHeight(v30);
      v22 = 0.05;
      goto LABEL_15;
    case 2uLL:
      v26.origin.x = v6;
      v26.origin.y = v8;
      v26.size.width = v10;
      v26.size.height = v12;
      Width = CGRectGetWidth(v26);
      v20 = -0.05;
LABEL_12:
      v16 = v16 + Width * v20 / v14;
      break;
  }

LABEL_16:

  v23 = v16;
  v24 = v18;
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)p_scrollCanvasForScrollType:(unint64_t)type
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [(CRLCanvasEditorHelper *)self contentOffsetForDocumentNavigationType:type];
  v6 = v5;
  v8 = v7;
  [interactiveCanvasController viewScale];
  [interactiveCanvasController clampedUnscaledContentOffset:v6 forViewScale:{v8, v9}];
  [interactiveCanvasController setContentOffset:1 scrollOptions:?];
}

- (void)scrollCanvasUp:(id)up
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:0];
  }
}

- (void)scrollCanvasDown:(id)down
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:1];
  }
}

- (void)scrollCanvasLeft:(id)left
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:2];
  }
}

- (void)scrollCanvasRight:(id)right
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:3];
  }
}

- (void)scrollCanvasPageDown:(id)down
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:5];
  }
}

- (void)scrollCanvasPageUp:(id)up
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:4];
  }
}

- (void)zoomIn:(id)in
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v5 = [[_TtC8Freeform16CRLiOSZoomHelper alloc] initWithInteractiveCanvasController:interactiveCanvasController zoomTrackerDelegate:asiOSCVC];
  [(CRLiOSZoomHelper *)v5 incrementZoomLevel];
}

- (void)zoomOut:(id)out
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v5 = [[_TtC8Freeform16CRLiOSZoomHelper alloc] initWithInteractiveCanvasController:interactiveCanvasController zoomTrackerDelegate:asiOSCVC];
  [(CRLiOSZoomHelper *)v5 decrementZoomLevel];
}

- (void)arrowKeyReceivedInDirection:(unint64_t)direction withModifierKeys:(id)keys
{
  keysCopy = keys;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editingDisabled = [interactiveCanvasController editingDisabled];

  if ((editingDisabled & 1) == 0)
  {
    interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController2 layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    [asiOSCVC hideEditMenu];

    rawValue = [keysCopy rawValue];
    v12 = +[_TtC8Freeform27CRLTextInputModifierKeyMask none];
    rawValue2 = [v12 rawValue];

    if (rawValue == rawValue2)
    {
      [(CRLCanvasEditorHelper *)self moveSelections:direction];
      goto LABEL_38;
    }

    rawValue3 = [keysCopy rawValue];
    v15 = +[_TtC8Freeform27CRLTextInputModifierKeyMask shift];
    rawValue4 = [v15 rawValue];

    if (rawValue3 == rawValue4)
    {
      if (direction > 2)
      {
        if (direction == 3)
        {
          keyboardMovementManipulator = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator;
          v19 = 0.0;
          v25 = -10.0;
        }

        else
        {
          if (direction != 4)
          {
            goto LABEL_38;
          }

          keyboardMovementManipulator = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator;
          v19 = 0.0;
          v25 = 10.0;
        }
      }

      else
      {
        if (direction == 1)
        {
          keyboardMovementManipulator = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator;
          v19 = -10.0;
        }

        else
        {
          if (direction != 2)
          {
            goto LABEL_38;
          }

          keyboardMovementManipulator = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator;
          v19 = 10.0;
        }

        v25 = 0.0;
      }

      [keyboardMovementManipulator moveSelectionByDelta:{v19, v25}];
      goto LABEL_37;
    }

    rawValue5 = [keysCopy rawValue];
    v21 = +[_TtC8Freeform27CRLTextInputModifierKeyMask option];
    rawValue6 = [v21 rawValue];

    if (rawValue5 == rawValue6)
    {
      if (direction > 2)
      {
        if (direction == 3)
        {
          keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator2;
          v24 = 0.0;
          v31 = -1.0;
        }

        else
        {
          if (direction != 4)
          {
            goto LABEL_38;
          }

          keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator2;
          v24 = 0.0;
          v31 = 1.0;
        }

        goto LABEL_36;
      }

      if (direction == 1)
      {
        keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = keyboardMovementManipulator2;
        v24 = -1.0;
      }

      else
      {
        if (direction != 2)
        {
          goto LABEL_38;
        }

        keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = keyboardMovementManipulator2;
        v24 = 1.0;
      }
    }

    else
    {
      rawValue7 = [keysCopy rawValue];
      v27 = +[_TtC8Freeform27CRLTextInputModifierKeyMask option];
      rawValue8 = [v27 rawValue];
      v29 = +[_TtC8Freeform27CRLTextInputModifierKeyMask shift];
      v30 = [v29 rawValue] | rawValue8;

      if (rawValue7 != v30)
      {
        goto LABEL_38;
      }

      if (direction > 2)
      {
        if (direction == 3)
        {
          keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator2;
          v24 = 0.0;
          v31 = -10.0;
        }

        else
        {
          if (direction != 4)
          {
            goto LABEL_38;
          }

          keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = keyboardMovementManipulator2;
          v24 = 0.0;
          v31 = 10.0;
        }

        goto LABEL_36;
      }

      if (direction == 1)
      {
        keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = keyboardMovementManipulator2;
        v24 = -10.0;
      }

      else
      {
        if (direction != 2)
        {
          goto LABEL_38;
        }

        keyboardMovementManipulator2 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = keyboardMovementManipulator2;
        v24 = 10.0;
      }
    }

    v31 = 0.0;
LABEL_36:
    [keyboardMovementManipulator2 duplicateSelectionMovingByDelta:{v24, v31}];
LABEL_37:
  }

LABEL_38:
}

- (void)moveSelections:(unint64_t)selections
{
  if (selections > 2)
  {
    if (selections == 3)
    {
      v3 = -1.0;
    }

    else
    {
      if (selections != 4)
      {
        return;
      }

      v3 = 1.0;
    }

    v4 = 0.0;
  }

  else
  {
    v3 = 0.0;
    if (selections == 1)
    {
      v4 = -1.0;
    }

    else
    {
      if (selections != 2)
      {
        return;
      }

      v4 = 1.0;
    }
  }

  keyboardMovementManipulator = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
  [keyboardMovementManipulator moveSelectionByDelta:{v4, v3}];
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  [layerHost presentMediaCompatibilityAlertWithReasons:reasons forMediaType:type forSingleMediaObject:objectCopy completionHandler:handlerCopy];
}

- (id)repToHighlightForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v9 = [interactiveCanvasController hitRep:{x, y}];

  repForSelecting = [v9 repForSelecting];
  if (repForSelecting && [(CRLCanvasEditorHelper *)self wantsToHighlightRep:repForSelecting forDragOperationWithDragInfo:infoCopy atPoint:0 allowNonPlaceholderReplacement:x, y])
  {
    v11 = repForSelecting;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info
{
  if (!self->mDragAndDropHighlightDecorator)
  {
    v5 = [CRLDragAndDropCanvasHighlightDecorator alloc];
    interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v7 = [(CRLDragAndDropCanvasHighlightDecorator *)v5 initWithInteractiveCanvasController:interactiveCanvasController];
    mDragAndDropHighlightDecorator = self->mDragAndDropHighlightDecorator;
    self->mDragAndDropHighlightDecorator = v7;

    WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
    v10 = [WeakRetained newDragAndDropHighlightPathWithInset:1.0];

    [(CRLDragAndDropCanvasHighlightDecorator *)self->mDragAndDropHighlightDecorator beginHighlightingWithPath:v10];
    CGPathRelease(v10);
  }

  v11 = objc_loadWeakRetained(&self->mCanvasEditor);
  v12 = [v11 newDragAndDropHighlightPathWithInset:1.0];

  [(CRLDragAndDropCanvasHighlightDecorator *)self->mDragAndDropHighlightDecorator setHighlightPath:v12];

  CFRelease(v12);
}

- (void)hideDragAndDropUI
{
  [(CRLDragAndDropCanvasHighlightDecorator *)self->mDragAndDropHighlightDecorator endHighlighting];
  mDragAndDropHighlightDecorator = self->mDragAndDropHighlightDecorator;
  self->mDragAndDropHighlightDecorator = 0;
}

- (BOOL)wantsToHighlightRep:(id)rep forDragOperationWithDragInfo:(id)info atPoint:(CGPoint)point allowNonPlaceholderReplacement:(BOOL)replacement
{
  repCopy = rep;
  infoCopy = info;
  if (repCopy && ([repCopy isLocked] & 1) == 0 && (objc_msgSend(repCopy, "isInDynamicOperation") & 1) == 0 && objc_msgSend(infoCopy, "numberOfDraggingItems") == 1)
  {
    promisedUTIs = [infoCopy promisedUTIs];
    itemSource = [infoCopy itemSource];
    if ([itemSource hasNativeBoardItems] && (objc_msgSend(itemSource, "hasSingleNativeImageBoardItem") & 1) == 0 && !objc_msgSend(itemSource, "hasSingleNativeMovieBoardItem"))
    {
      v24 = 0;
LABEL_26:

      goto LABEL_13;
    }

    v12 = objc_opt_class();
    v13 = sub_100014370(v12, repCopy);
    v14 = objc_opt_class();
    v15 = sub_100014370(v14, repCopy);
    v16 = objc_opt_class();
    v17 = sub_100014370(v16, repCopy);
    v18 = objc_opt_class();
    v19 = sub_100014370(v18, repCopy);
    v30 = v19;
    v31 = v13;
    if (!v13)
    {
      v20 = v19;
      if (v15 && [v15 canBeUsedForImageMask])
      {
        v21 = itemSource;
        v22 = v15;
        v23 = +[CRLBoardItemImporter supportedImageFileUTTypes];
        goto LABEL_16;
      }

      if (!v17)
      {
        v23 = 0;
        v24 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v21 = itemSource;
    v22 = v15;
    +[CRLBoardItemImporter supportedImageFileUTTypes];
    v27 = v26 = promisedUTIs;
    +[CRLIngestionTypes supportedMovieUTTypes];
    v29 = v28 = v17;
    v23 = [v27 arrayByAddingObjectsFromArray:v29];

    v17 = v28;
    promisedUTIs = v26;
LABEL_16:
    if (v23)
    {
      v15 = v22;
      itemSource = v21;
      v20 = v30;
      if (!v30 || replacement || [v30 shouldAllowReplacementFromDrop])
      {
        v24 = [promisedUTIs crl_conformsToAnyUTType:{v23, v30}];
      }

      else
      {
        v24 = 0;
      }

      v13 = v31;
    }

    else
    {
      v24 = 0;
      v15 = v22;
      itemSource = v21;
      v20 = v30;
      v13 = v31;
    }

    goto LABEL_25;
  }

  v24 = 0;
LABEL_13:

  return v24;
}

- (BOOL)insertBoardItemsFromDragAndDrop:(id)drop atPoint:(CGPoint)point onRep:(id)rep insertionContext:(id)context alreadyPositionedInputInfos:(BOOL)infos
{
  y = point.y;
  x = point.x;
  dropCopy = drop;
  repCopy = rep;
  contextCopy = context;
  v16 = repCopy;
  v17 = contextCopy;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Insert" value:0 table:@"UndoStrings"];

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [interactiveCanvasController2 endEditing];

  [commandController openGroup];
  [commandController enableProgressiveEnqueuingInCurrentGroup];
  v23 = [dropCopy count];
  v24 = 0;
  if (!v16 || v23 != 1)
  {
    goto LABEL_51;
  }

  info = [v16 info];
  if (!info)
  {
    v24 = 0;
    goto LABEL_51;
  }

  v26 = info;
  infosCopy = infos;
  isLocked = [v16 isLocked];

  if ((isLocked & 1) == 0)
  {
    v123 = v21;
    v116 = v17;
    lastObject = [dropCopy lastObject];
    v29 = objc_opt_class();
    v118 = v16;
    info2 = [v16 info];
    v31 = sub_100014370(v29, info2);

    v32 = objc_opt_class();
    v33 = sub_100014370(v32, lastObject);
    v34 = objc_opt_class();
    v121 = sub_100014370(v34, lastObject);
    v35 = objc_opt_class();
    v120 = lastObject;
    v36 = sub_100014370(v35, lastObject);
    v37 = v33;
    v38 = objc_opt_class();
    v39 = sub_100014370(v38, v31);
    v40 = objc_opt_class();
    v41 = sub_100014370(v40, v31);
    v42 = objc_opt_class();
    v119 = v31;
    v43 = v31;
    v44 = v37;
    v45 = sub_100014370(v42, v43);
    v46 = v45;
    v117 = v36;
    v122 = v41;
    v115 = v45;
    if (v37 && v39)
    {
      maskInfo = [v39 maskInfo];

      if (!maskInfo)
      {
        v48 = [_TtC8Freeform17CRLCommandSetMask alloc];
        defaultMaskInfo = [v39 defaultMaskInfo];
        v50 = [(CRLCommandSetMask *)v48 initWithImageItem:v39 maskInfo:defaultMaskInfo];

        [commandController enqueueCommand:v50];
      }

      v51 = [_TtC8Freeform22CRLCommandReplaceImage alloc];
      imageAssetPayload = [v37 imageAssetPayload];
      thumbnailAssetPayload = [v37 thumbnailAssetPayload];
      v54 = [(CRLCommandReplaceImage *)v51 initWithImageItem:v39 imageData:imageAssetPayload thumbnailData:thumbnailAssetPayload];

      [commandController enqueueCommand:v54];
      v55 = +[NSBundle mainBundle];
      v56 = [v55 localizedStringForKey:@"Replace with Image" value:0 table:@"UndoStrings"];

      v24 = 0;
      v57 = 1;
      v123 = v56;
      infos = infosCopy;
      v46 = v115;
      v17 = v116;
LABEL_50:

      v21 = v123;
      v16 = v118;
      if (v57)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v114 = v39;
    if (!v36 || !v45 || ([v121 isAudioOnly] & 1) != 0)
    {
      v24 = 0;
      v57 = 0;
      infos = infosCopy;
      v17 = v116;
      if (v44)
      {
        if (!v122)
        {
          v46 = v115;
          goto LABEL_50;
        }

        v112 = v44;
        v58 = objc_opt_class();
        interactiveCanvasController3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v60 = [interactiveCanvasController3 repForInfo:v122];
        v61 = sub_100014370(v58, v60);

        if (v61 && [v61 canBeUsedForImageMask])
        {
          v62 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:0 fromDragToInsertController:0 insertFloating:0x7FFFFFFFFFFFFFFFLL targetZOrder:x, y];
          canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
          info3 = [v61 info];
          v64 = [canvasEditor selectionPathWithInfo:info3];
          canvasEditor2 = [(CRLCanvasEditorHelper *)self canvasEditor];
          editorController = [canvasEditor2 editorController];
          [editorController setSelectionPath:v64];

          canvasEditor3 = [(CRLCanvasEditorHelper *)self canvasEditor];
          v110 = v62;
          [canvasEditor3 prepareGeometryForInsertingBoardItems:dropCopy withInsertionContext:v62];

          v68 = [CRLCanvasCommandSelectionBehavior alloc];
          canvasEditor4 = [(CRLCanvasEditorHelper *)self canvasEditor];
          v70 = [NSSet setWithObject:v120];
          v71 = [(CRLCanvasCommandSelectionBehavior *)v68 initWithCanvasEditor:canvasEditor4 type:3 constructedInfos:v70];

          v72 = [NSArray arrayWithObject:v120];
          v73 = [(CRLCanvasEditorHelper *)self commandForInsertingBoardItemsIntoTopLevelContainer:v72 below:v119];

          v107 = v73;
          v108 = v71;
          [commandController enqueueCommand:v73 withSelectionBehavior:v71];
          v74 = [(CRLCanvasEditorHelper *)self commandsToSwapConnectionsFromRep:v61 toInfo:v112];
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v75 = [v74 countByEnumeratingWithState:&v125 objects:v133 count:16];
          if (v75)
          {
            v76 = v75;
            v77 = *v126;
            do
            {
              for (i = 0; i != v76; i = i + 1)
              {
                if (*v126 != v77)
                {
                  objc_enumerationMutation(v74);
                }

                [commandController enqueueCommand:*(*(&v125 + 1) + 8 * i)];
              }

              v76 = [v74 countByEnumeratingWithState:&v125 objects:v133 count:16];
            }

            while (v76);
          }

          v79 = v61;
          [(CRLCanvasEditorHelper *)self maskImage:v112 withShape:v122 shouldOpenGroup:0 shouldBeginEditing:0];
          v80 = +[NSBundle mainBundle];
          v81 = [v80 localizedStringForKey:@"Mask With Shape" value:0 table:@"UndoStrings"];

          v44 = v112;
          v24 = v112;

          v57 = 1;
          v123 = v81;
          infos = infosCopy;
        }

        else
        {
          v79 = v61;
          v57 = 0;
          v24 = 0;
          infos = infosCopy;
          v44 = v112;
        }

        v46 = v115;
      }

      goto LABEL_49;
    }

    v113 = v37;
    [v36 takePropertiesFromReplacedBoardItem:v46];
    v17 = v116;
    if ([v36 isAnimatedImage] && (objc_msgSend(v46, "isAnimatedImage") & 1) == 0)
    {
      [v36 setIsLooping:1];
    }

    v82 = [(CRLCanvasEditorHelper *)self commandsToSwapConnectionsFromRep:v118 toInfo:v36];
    v83 = [CRLCanvasCommandSelectionBehavior alloc];
    canvasEditor5 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v85 = v36;
    v86 = canvasEditor5;
    v87 = [NSSet setWithObject:v85];
    v88 = [(CRLCanvasCommandSelectionBehavior *)v83 initWithCanvasEditor:v86 type:3 constructedInfos:v87];

    v111 = v88;
    [commandController openGroupWithSelectionBehavior:v88];
    [(CRLCanvasEditorHelper *)self replaceBoardItem:v119 withBoardItem:v120];
    [commandController closeGroup];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v89 = v82;
    v90 = [v89 countByEnumeratingWithState:&v129 objects:v134 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v130;
      do
      {
        for (j = 0; j != v91; j = j + 1)
        {
          if (*v130 != v92)
          {
            objc_enumerationMutation(v89);
          }

          [commandController enqueueCommand:*(*(&v129 + 1) + 8 * j)];
        }

        v91 = [v89 countByEnumeratingWithState:&v129 objects:v134 count:16];
      }

      while (v91);
    }

    v44 = v113;
    if (v113)
    {
      v94 = +[NSBundle mainBundle];
      v95 = [v94 localizedStringForKey:@"Replace with Image" value:0 table:@"UndoStrings"];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        infos = infosCopy;
        v46 = v115;
        goto LABEL_48;
      }

      v96 = objc_opt_class();
      v94 = sub_100014370(v96, v117);
      isAudioOnly = [v94 isAudioOnly];
      v98 = +[NSBundle mainBundle];
      v99 = v98;
      v44 = 0;
      if (isAudioOnly)
      {
        v100 = @"Replace with Audio";
      }

      else
      {
        v100 = @"Replace with Video";
      }

      v95 = [v98 localizedStringForKey:v100 value:0 table:@"UndoStrings"];

      v123 = v99;
    }

    infos = infosCopy;
    v46 = v115;

    v123 = v95;
LABEL_48:

    v24 = 0;
    v57 = 1;
LABEL_49:
    v39 = v114;
    goto LABEL_50;
  }

  v24 = 0;
  infos = infosCopy;
LABEL_51:
  if (!infos)
  {
    canvasEditor6 = [(CRLCanvasEditorHelper *)self canvasEditor];
    [canvasEditor6 prepareGeometryForInsertingBoardItems:dropCopy withInsertionContext:v17];
  }

  canvasEditor7 = [(CRLCanvasEditorHelper *)self canvasEditor];
  [canvasEditor7 insertBoardItems:dropCopy withInsertionContext:v17 postProcessBlock:0];

LABEL_54:
  [commandController setCurrentGroupActionString:v21];
  [commandController closeGroup];
  if (v24)
  {
    interactiveCanvasController4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    [interactiveCanvasController4 layoutIfNeeded];

    interactiveCanvasController5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v105 = [interactiveCanvasController5 repForInfo:v24];

    [v105 editMaskWithHUD:1];
  }

  return 1;
}

- (void)addContextualMenuItemsToArray:(id)array
{
  arrayCopy = array;
  if ([(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:0])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Mask with Shape" value:0 table:0];

    v6 = [[UIMenuItem alloc] initWithTitle:v5 action:"maskWithShape:"];
    [arrayCopy addObject:v6];
  }
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  v8 = +[NSMutableArray array];
  [(CRLCanvasEditorHelper *)self addContextualMenuElementsToArray:v8 atPoint:x, y];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    v24 = *v32;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = [v13 crlaxValueForKey:@"children"];
        if ([v14 count])
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          title2 = v14;
          v16 = [title2 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (!v16)
          {
            goto LABEL_22;
          }

          v17 = v16;
          v18 = *v28;
          while (1)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(title2);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              title = [v20 title];
              if ([title length])
              {
                state = [v20 state];

                if (state != 1)
                {
                  continue;
                }

                title = [v20 title];
                [arrayCopy addObject:title];
              }
            }

            v17 = [title2 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (!v17)
            {
              v11 = v24;
              v10 = v25;
              goto LABEL_22;
            }
          }
        }

        title2 = [v13 title];
        if ([title2 length])
        {
          state2 = [v13 state];

          if (state2 != 1)
          {
            goto LABEL_23;
          }

          title2 = [v13 title];
          [arrayCopy addObject:title2];
        }

LABEL_22:

LABEL_23:
        v12 = v12 + 1;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  arrayCopy = array;
  v5 = [arrayCopy count];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"BACK_CONTEXT_MENU" value:@"Back" table:0];

  v8 = [UIImage systemImageNamed:@"square.3.stack.3d.bottom.filled"];
  v9 = [UICommand commandWithTitle:v7 image:v8 action:"sendToBack:" propertyList:0];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Front" value:0 table:0];
  v12 = [UIImage systemImageNamed:@"square.3.stack.3d.top.filled"];
  v13 = [UICommand commandWithTitle:v11 image:v12 action:"bringToFront:" propertyList:0];

  v156[0] = v9;
  v156[1] = v13;
  v14 = [NSArray arrayWithObjects:v156 count:2];
  v15 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLZOrderMenuIdentifier" options:1 children:v14];

  [v15 setPreferredElementSize:1];
  v142 = arrayCopy;
  v139 = v5;
  [arrayCopy insertObject:v15 atIndex:v5];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"Cut" value:0 table:0];
  v18 = [UIImage systemImageNamed:@"scissors"];
  v144 = [UICommand commandWithTitle:v17 image:v18 action:"cut:" propertyList:0];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Copy" value:0 table:0];
  v21 = [UIImage systemImageNamed:@"doc.on.doc"];
  v22 = [UICommand commandWithTitle:v20 image:v21 action:"copy:" propertyList:0];

  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:@"Paste" value:0 table:0];
  v25 = [UIImage systemImageNamed:@"doc.on.clipboard"];
  v26 = [UICommand commandWithTitle:v24 image:v25 action:"paste:" propertyList:0];

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"Duplicate" value:0 table:0];
  v29 = [UIImage systemImageNamed:@"plus.square.on.square"];
  v30 = [UICommand commandWithTitle:v28 image:v29 action:"duplicate:" propertyList:0];

  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"Lock" value:0 table:0];
  v33 = [UIImage systemImageNamed:@"lock"];
  v34 = [UICommand commandWithTitle:v32 image:v33 action:"lock:" propertyList:0];

  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  LODWORD(v15) = [freehandDrawingToolkit isInDrawingMode];

  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController = [canvasEditor editorController];
  v39 = [editorController mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (v15 && v39)
  {
    v40 = v144;
    v155[0] = v144;
    v155[1] = v22;
    v155[2] = v26;
    v155[3] = v34;
    v41 = v155;
    v42 = 4;
  }

  else
  {
    v40 = v144;
    v154[0] = v144;
    v154[1] = v22;
    v154[2] = v26;
    v154[3] = v30;
    v154[4] = v34;
    v41 = v154;
    v42 = 5;
  }

  v43 = [NSArray arrayWithObjects:v41 count:v42];
  v44 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLCutCopyPasteMenuIdentifier" options:1 children:v43];
  [v142 insertObject:v44 atIndex:v139 + 1];
  v145 = v139 + 2;

  canvasEditor2 = [(CRLCanvasEditorHelper *)self canvasEditor];
  editorController2 = [canvasEditor2 editorController];
  v47 = [editorController2 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v141 = v47;
  if (v47)
  {
    makeSelectionSpecificMenuElements = [v47 makeSelectionSpecificMenuElements];
    v49 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v50 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
    v51 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
    if ([makeSelectionSpecificMenuElements count])
    {
      v52 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:makeSelectionSpecificMenuElements];
      [v142 insertObject:v52 atIndex:v145];
      v145 = v139 + 3;
    }
  }

  else
  {
    v49 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v50 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
    v51 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
  }

  v53 = v51[64];
  mainBundle = [v49[62] mainBundle];
  v55 = [mainBundle localizedStringForKey:@"Copy Style" value:0 table:0];
  v56 = [v50[90] imageNamed:@"sf_tb_style_copy"];
  v140 = [v53 commandWithTitle:v55 image:v56 action:"copyStyle:" propertyList:0];

  v57 = v51[64];
  mainBundle2 = [v49[62] mainBundle];
  v59 = [mainBundle2 localizedStringForKey:@"Paste Style" value:0 table:0];
  v60 = [v50[90] imageNamed:@"sf_tb_style_paste"];
  v138 = [v57 commandWithTitle:v59 image:v60 action:"pasteStyle:" propertyList:0];

  v153[0] = v140;
  v153[1] = v138;
  v61 = [NSArray arrayWithObjects:v153 count:2];
  v62 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v61];

  v63 = v51[64];
  mainBundle3 = [v49[62] mainBundle];
  v65 = [mainBundle3 localizedStringForKey:@"Save as Insert Style" value:0 table:0];
  v66 = [v63 commandWithTitle:v65 image:0 action:"saveDefaultInsertionPreset:" propertyList:0];

  mainBundle4 = [v49[62] mainBundle];
  v68 = [mainBundle4 localizedStringForKey:@"Style" value:0 table:0];
  v69 = [v50[90] systemImageNamed:@"eyedropper"];
  v152[0] = v62;
  v152[1] = v66;
  v70 = [NSArray arrayWithObjects:v152 count:2];
  v71 = [UIMenu menuWithTitle:v68 image:v69 identifier:@"CRLStyleMenuIdentifier" options:0 children:v70];

  [v142 insertObject:v71 atIndex:v145];
  if (+[_TtC8Freeform19CRLFeatureFlagGroup isEasierConnectionLinesEnabled])
  {
    v72 = +[NSBundle mainBundle];
    v73 = [v72 localizedStringForKey:@"Add Connection Line" value:0 table:0];
    v74 = [UIImage imageNamed:@"circle.square.square.diagram"];
    v75 = [UICommand commandWithTitle:v73 image:v74 action:"connectWithConnectionLine:" propertyList:0];

    v151 = v75;
    v76 = [NSArray arrayWithObjects:&v151 count:1];
    v77 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v76];

    [v142 addObject:v77];
  }

  v78 = v51[64];
  v79 = +[NSBundle mainBundle];
  v80 = [v79 localizedStringForKey:@"Constrain Proportions" value:0 table:0];
  v81 = [UIImage systemImageNamed:@"square.split.bottomrightquarter"];
  v82 = [v78 commandWithTitle:v80 image:v81 action:"toggleAspectRatioLock:" propertyList:0];

  aspectRatioLockControlState = [v141 aspectRatioLockControlState];
  [v82 setState:{objc_msgSend(aspectRatioLockControlState, "stateValue")}];
  v150 = v82;
  v84 = [NSArray arrayWithObjects:&v150 count:1];
  v85 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v84];

  [v142 addObject:v85];
  v86 = v51[64];
  v87 = +[NSBundle mainBundle];
  v88 = [v87 localizedStringForKey:@"Description" value:0 table:0];
  v89 = [UIImage _systemImageNamed:@"accessibility"];
  v90 = [v86 commandWithTitle:v88 image:v89 action:"editAccessibilityDescription:" propertyList:0];

  v149 = v90;
  v91 = [NSArray arrayWithObjects:&v149 count:1];
  v92 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLDescriptionMenuIdentifier" options:1 children:v91];

  [v142 addObject:v92];
  if (!v141 || ([v141 boardItems], v93 = objc_claimAutoreleasedReturnValue(), v94 = objc_msgSend(v93, "count"), v93, v94 >= 2))
  {
    v95 = +[NSBundle mainBundle];
    v96 = [v95 localizedStringForKey:@"Select Objects…" value:0 table:0];
    v97 = [UIImage systemImageNamed:@"square.dashed"];
    v98 = [UICommand commandWithTitle:v96 image:v97 action:"enterQuickSelectMode:" propertyList:0];

    v148 = v98;
    v99 = [NSArray arrayWithObjects:&v148 count:1];
    v100 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v99];

    [v142 addObject:v100];
  }

  if (+[_TtC8Freeform19CRLFeatureFlagGroup isStencilsEnabled])
  {
    boardItems = [v141 boardItems];
    v102 = [boardItems count];

    if (v102)
    {
      v103 = +[NSBundle mainBundle];
      v104 = [v103 localizedStringForKey:@"Save to Library…" value:0 table:0];
      v105 = [UIImage systemImageNamed:@"books.vertical"];
      v106 = [UICommand commandWithTitle:v104 image:v105 action:"saveSelectedBoardItemsAsStencil:" propertyList:0];

      v147 = v106;
      v107 = [NSArray arrayWithObjects:&v147 count:1];
      v108 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v107];

      [v142 addObject:v108];
    }
  }

  v109 = v51[64];
  v110 = +[NSBundle mainBundle];
  v111 = [v110 localizedStringForKey:@"Delete" value:0 table:0];
  v112 = [UIImage systemImageNamed:@"trash"];
  v113 = [v109 commandWithTitle:v111 image:v112 action:"delete:" propertyList:0];

  [v113 setAttributes:2];
  v146 = v113;
  v114 = [NSArray arrayWithObjects:&v146 count:1];
  v115 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:@"CRLDeleteMenuIdentifier" options:1 children:v114];

  [v142 addObject:v115];
  if ([(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:0])
  {
    v116 = v51[64];
    v117 = +[NSBundle mainBundle];
    v118 = [v117 localizedStringForKey:@"Mask with Shape" value:0 table:0];
    v119 = [UIImage imageNamed:@"dash.square.on.circle"];
    v120 = [v116 commandWithTitle:v118 image:v119 action:"maskWithShape:" propertyList:0];

    [v142 insertObject:v120 atIndex:v145 + 1];
    v121 = v145 + 2;
  }

  else
  {
    v121 = v145 + 1;
  }

  interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  freehandDrawingToolkit2 = [interactiveCanvasController2 freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit2 isInDrawingMode];

  if (isInDrawingMode)
  {
    v125 = +[NSBundle mainBundle];
    v126 = [v125 localizedStringForKey:@"Select All" value:0 table:0];
    v127 = [UIImage systemImageNamed:@"square.dashed"];
    v128 = [UICommand commandWithTitle:v126 image:v127 action:"selectAll:" propertyList:0];

    [v142 insertObject:v128 atIndex:v121++];
  }

  interactiveCanvasController3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if ([interactiveCanvasController3 documentIsSharedReadOnly])
  {
    goto LABEL_31;
  }

  interactiveCanvasController4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if (![_TtC8Freeform29CRLGenerativePlaygroundHelper iccHasGenerativePlaygroundInputSelection:interactiveCanvasController4])
  {

LABEL_31:
    goto LABEL_32;
  }

  interactiveCanvasController5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v132 = [_TtC8Freeform29CRLGenerativePlaygroundHelper shouldShowGP:interactiveCanvasController5];

  if (v132)
  {
    v133 = +[NSBundle mainBundle];
    v134 = [v133 localizedStringForKey:@"Add to Playground" value:0 table:0];
    v135 = [UIImage systemImageNamed:@"apple.image.playground"];
    interactiveCanvasController3 = [UICommand commandWithTitle:v134 image:v135 action:"presentGenerativePlaygroundForCurrentSelection:" propertyList:0];

    v136 = [v142 indexOfObjectPassingTest:&stru_101850E88];
    if (v136 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v137 = v121;
    }

    else
    {
      v137 = v136 + 1;
    }

    [v142 insertObject:interactiveCanvasController3 atIndex:v137];
    goto LABEL_31;
  }

LABEL_32:
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  arrayCopy = array;
  v76 = [arrayCopy count];
  layoutsForAlignAndDistribute = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
  v7 = [layoutsForAlignAndDistribute count];

  v8 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformUngroupActionWithSender:@"CRLMiniFormatter"];
  v9 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformGroupActionWithSender:@"CRLMiniFormatter"];
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  infosForCurrentSelectionPath = [interactiveCanvasController infosForCurrentSelectionPath];

  p_superclass = &OBJC_METACLASS___CRLPulseAnimationController.superclass;
  v77 = arrayCopy;
  if (v7 > 1 || (v9 != 1 ? (v12 = v8 == 1) : (v12 = 1), v12))
  {
    +[NSBundle mainBundle];
    v13 = v74 = v8;
    v14 = [v13 localizedStringForKey:@"Align Objects…" value:0 table:0];
    v15 = [CRLImage crl_quickInspectorImageNamed:@"rectangle.3.group"];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Arrange" value:0 table:0];
    v18 = [CRLQuickInspectorElement elementWithName:v14 image:v15 type:2 options:0x4000 crlaxLabel:v17];

    v8 = v74;
    [v18 setTag:0];
    if (v7 >= 2 && v9 == 1 && v74 == 1)
    {
      v19 = +[NSBundle mainBundle];
      v20 = v19;
      v21 = @"Align, distribute, group, or ungroup selected objects";
    }

    else
    {
      if (v7 < 2)
      {
        p_superclass = &OBJC_METACLASS___CRLPulseAnimationController.superclass;
        if (v9 == 1)
        {
          v29 = +[NSBundle mainBundle];
          v30 = [v29 localizedStringForKey:@"Group selected objects" value:0 table:0];
          [v18 setToolTip:v30];

          v23 = v76;
          arrayCopy = v77;
        }

        else
        {
          v23 = v76;
          arrayCopy = v77;
          if (v74 == 1)
          {
            v33 = +[NSBundle mainBundle];
            v34 = [v33 localizedStringForKey:@"Ungroup selected objects" value:0 table:0];
            [v18 setToolTip:v34];

            arrayCopy = v77;
          }
        }

        goto LABEL_29;
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v24 = infosForCurrentSelectionPath;
      v25 = [v24 countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v79;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v79 != v27)
            {
              objc_enumerationMutation(v24);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }

            v31 = +[NSBundle mainBundle];
            v32 = [v31 localizedStringForKey:@"Align value:distribute table:{or group selected objects", 0, 0}];
            [v18 setToolTip:v32];

            v23 = v76;
            arrayCopy = v77;
            p_superclass = (&OBJC_METACLASS___CRLPulseAnimationController + 8);
            v8 = v74;
            goto LABEL_29;
          }

          v26 = [v24 countByEnumeratingWithState:&v78 objects:v82 count:16];
          v8 = v74;
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v19 = +[NSBundle mainBundle];
      v20 = v19;
      v21 = @"Align, distribute, group, or combine shapes";
    }

    v22 = [v19 localizedStringForKey:v21 value:0 table:0];
    [v18 setToolTip:v22];

    v23 = v76;
    arrayCopy = v77;
    p_superclass = (&OBJC_METACLASS___CRLPulseAnimationController + 8);
LABEL_29:
    [arrayCopy addObject:v18];
    v76 = v23 + 1;
  }

  if ([(CRLCanvasEditorHelper *)self canvasEditorCanPerformDuplicateAction:"duplicate:" withSender:@"CRLMiniFormatter"]== 1)
  {
    v35 = arrayCopy;
    v36 = p_superclass + 104;
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"Duplicate" value:0 table:0];
    v39 = [CRLImage crl_quickInspectorImageNamed:@"plus.square.on.square"];
    v40 = [v36 elementWithName:v38 image:v39 type:0 action:"duplicate:" parent:0 children:0];

    [v35 insertObject:v40 atIndex:v76];
    v41 = v76 + 1;
  }

  else
  {
    v41 = v76;
  }

  if ([(CRLCanvasEditorHelper *)self canvasEditorCanPerformDeleteAction:"delete:" withSender:@"CRLMiniFormatter"]== 1)
  {
    v42 = +[NSBundle mainBundle];
    v43 = [v42 localizedStringForKey:@"Delete" value:0 table:0];
    v44 = [CRLImage crl_quickInspectorImageNamed:@"trash"];
    v45 = [CRLQuickInspectorElement elementWithName:v43 image:v44 type:0 action:"delete:" parent:0 children:0];

    v46 = (&OBJC_METACLASS___CRLPulseAnimationController + 8);
    [v45 setTag:27];
    v47 = +[CRLColor redColor];
    [v45 setTintColor:v47];

    [v77 insertObject:v45 atIndex:v41++];
  }

  else
  {
    v46 = &OBJC_METACLASS___CRLPulseAnimationController.superclass;
  }

  v48 = v46 + 104;
  v49 = +[NSBundle mainBundle];
  v50 = [v49 localizedStringForKey:@"Lock" value:0 table:0];
  v51 = [CRLImage crl_quickInspectorImageNamed:@"lock"];
  v52 = [v48 elementWithName:v50 image:v51 type:1 action:"lock:" parent:0 children:0];

  v53 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformLockAction:"lock:" withSender:0];
  v54 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformLockAction:"unlock:" withSender:0];
  if (v53 == 1)
  {
    v55 = v77;
    [v77 insertObject:v52 atIndex:v41];
    if (v54 != 1 && v8 != 1)
    {
      goto LABEL_48;
    }

    v56 = v52;
    v57 = +[NSBundle mainBundle];
    v58 = [v57 localizedStringForKey:@"Lock" value:0 table:0];
    [CRLImage crl_quickInspectorImageNamed:@"lock"];
    v60 = v59 = v41;
    v61 = [CRLQuickInspectorElement elementWithName:v58 image:v60 type:2 action:"lock:" parent:0 children:0];

    [v61 setTag:25];
    v62 = +[NSBundle mainBundle];
    v63 = [v62 localizedStringForKey:@"Lock selected objects" value:0 table:0];
    [v61 setToolTip:v63];

    v55 = v77;
    [v77 insertObject:v61 atIndex:v59 + 1];
    v41 = v59 + 2;
  }

  else
  {
    v56 = v52;
    v55 = v77;
  }

  v52 = v56;
  if (v54 == 1)
  {
    v64 = +[NSBundle mainBundle];
    v65 = [v64 localizedStringForKey:@"Unlock" value:0 table:0];
    v66 = [CRLImage crl_quickInspectorImageNamed:@"lock.open"];
    v67 = [CRLQuickInspectorElement elementWithName:v65 image:v66 type:2 action:"unlock:" parent:0 children:0];

    [v67 setTag:26];
    if ([infosForCurrentSelectionPath count] == 1)
    {
      anyObject = [infosForCurrentSelectionPath anyObject];
      v69 = [anyObject isMemberOfClass:objc_opt_class()];

      v70 = +[NSBundle mainBundle];
      v71 = v70;
      if (v69)
      {
        v72 = @"Unlock this group";
      }

      else
      {
        v72 = @"Unlock this object";
      }
    }

    else
    {
      v70 = +[NSBundle mainBundle];
      v71 = v70;
      v72 = @"Unlock selected objects";
    }

    v73 = [v70 localizedStringForKey:v72 value:0 table:0];
    v55 = v77;
    [v67 setToolTip:v73];

    [v77 insertObject:v67 atIndex:v41];
  }

LABEL_48:
}

- (void)contextMenuDidHideForContextMenuController:(id)controller
{
  controllerCopy = controller;
  contextMenuController = [(CRLCanvasEditorHelper *)self contextMenuController];

  if (contextMenuController == controllerCopy)
  {
    [(CRLCanvasEditorHelper *)self setContextMenuController:0];

    [(CRLCanvasEditorHelper *)self setCustomPasteMenuDisplayed:0];
  }
}

- (id)shapeInfoToBeginEditing
{
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  canvasEditor = [(CRLCanvasEditorHelper *)self canvasEditor];
  textInputEditor = [editorController textInputEditor];
  if (textInputEditor == canvasEditor)
  {
    interactiveCanvasController2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    editorController2 = [interactiveCanvasController2 editorController];
    selectionPath = [editorController2 selectionPath];
    v12 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

    if ([v12 count] == 1)
    {
      crl_onlyObject = [v12 crl_onlyObject];
      if ([crl_onlyObject locked])
      {
        v8 = 0;
      }

      else
      {
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, crl_onlyObject);
        if (v15)
        {
          v16 = objc_opt_class();
          v17 = [interactiveCanvasController repForInfo:v15];
          v18 = sub_100013F00(v16, v17);

          v19 = v18;
          if ([v18 canBeginEditing])
          {
            v8 = v15;
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
      }
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

- (void)beginEditingOnKeyInputWithString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_class();
  shapeInfoToBeginEditing = [(CRLCanvasEditorHelper *)self shapeInfoToBeginEditing];
  v6 = sub_100014370(v4, shapeInfoToBeginEditing);

  if (v6)
  {
    textStorage = [v6 textStorage];
    range = [textStorage range];
    [(CRLCanvasEditorHelper *)self p_beginEditingTextShape:v6 replacementRange:range withText:v9, stringCopy];
  }
}

- (void)p_beginEditingTextShape:(id)shape replacementRange:(_NSRange)range withText:(id)text
{
  length = range.length;
  location = range.location;
  shapeCopy = shape;
  textCopy = text;
  interactiveCanvasController = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if ([_TtC8Freeform11CRLWPEditor canEditTextIn:shapeCopy using:interactiveCanvasController])
  {
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    textStorage = [shapeCopy textStorage];
    v14 = [selectionModelTranslator selectionPathForRange:location onStorage:{length, textStorage}];

    editorController = [interactiveCanvasController editorController];
    [editorController setSelectionPath:v14];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1002A4F20;
    v25 = sub_1002A4F30;
    v26 = 0;
    editorController2 = [interactiveCanvasController editorController];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002AA978;
    v20[3] = &unk_101840680;
    v20[4] = &v21;
    [editorController2 enumerateEditorsOnStackUsingBlock:v20];

    v17 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:location, length];
    textInputReceiver = [v22[5] textInputReceiver];
    v19 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:textCopy];
    [textInputReceiver replace:v17 with:v19];

    _Block_object_dispose(&v21, 8);
  }
}

- (void)updateTableAnchorHintWhenGrouping:(id)grouping groupLayout:(id)layout
{
  type metadata accessor for CRLBoardItem(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  layoutCopy = layout;
  selfCopy = self;
  sub_100FFEE40(v6, layoutCopy);
}

- (BOOL)shouldReleaseChildItemsFromTableWhenUngrouping:(id)ungrouping
{
  ungroupingCopy = ungrouping;
  selfCopy = self;
  LOBYTE(self) = sub_101000620(ungroupingCopy);

  return self & 1;
}

- (id)commandToAnchorChildItemWhenUngrouping:(id)ungrouping childItem:(id)item childItemGeometry:(id)geometry
{
  ungroupingCopy = ungrouping;
  itemCopy = item;
  geometryCopy = geometry;
  selfCopy = self;
  v12 = sub_101000B8C(ungroupingCopy, itemCopy, geometryCopy);

  return v12;
}

- (void)donateBoardItemsInsertion:(id)insertion
{
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_101001434(v4);
}

@end