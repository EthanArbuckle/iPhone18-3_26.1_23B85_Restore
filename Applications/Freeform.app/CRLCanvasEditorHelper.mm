@interface CRLCanvasEditorHelper
+ (BOOL)physicalKeyboardIsSender:(id)a3;
- (BOOL)allowSelectAllForSender:(id)a3 hasNothingVisiblySelected:(BOOL)a4 hasAtLeastOneThingToSelect:(BOOL)a5;
- (BOOL)canGroupBoardItems:(id)a3;
- (BOOL)canInsertBoardItems:(id)a3 intoGroup:(id)a4;
- (BOOL)canPasteWithItemSource:(id)a3 sender:(id)a4;
- (BOOL)canPerformMaskWithSender:(id)a3;
- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)a3;
- (BOOL)canPerformMaskWithShapeWithSender:(id)a3;
- (BOOL)canPerformUnmaskWithSender:(id)a3;
- (BOOL)canUngroupGroupInfo:(id)a3;
- (BOOL)canUngroupWithSelection:(id)a3;
- (BOOL)insertBoardItemsFromDragAndDrop:(id)a3 atPoint:(CGPoint)a4 onRep:(id)a5 insertionContext:(id)a6 alreadyPositionedInputInfos:(BOOL)a7;
- (BOOL)isLayoutSelectable:(id)a3;
- (BOOL)p_allowsCanvasScrollingFromKeyboard;
- (BOOL)selectionContainsJustUnlockedObjects;
- (BOOL)selectionIsEmpty;
- (BOOL)shouldAllowPotentiallyKeyboardBasedActionForSender:(id)a3;
- (BOOL)shouldReleaseChildItemsFromTableWhenUngrouping:(id)a3;
- (BOOL)wantsToHighlightRep:(id)a3 forDragOperationWithDragInfo:(id)a4 atPoint:(CGPoint)a5 allowNonPlaceholderReplacement:(BOOL)a6;
- (CGPoint)contentOffsetForDocumentNavigationType:(unint64_t)a3;
- (CGPoint)p_centerOfBoardItems:(id)a3;
- (CGPoint)p_offsetToMoveCenterOfLayout:(id)a3 toPoint:(CGPoint)a4 inRootSpace:(BOOL)a5;
- (CGPoint)p_offsetToMoveLayout:(id)a3 edge:(int)a4 toOffset:(double)a5 inRootSpace:(BOOL)a6;
- (CGRect)p_boundingBoxForLayouts:(id)a3 inRootSpace:(BOOL)a4;
- (CRLCanvasEditor)canvasEditor;
- (CRLCanvasEditorHelper)initWithCanvasEditor:(id)a3;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (Class)p_editorClassForBoardItems:(id)a3 shouldIgnoreLockedState:(BOOL)a4;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)boardItemsToDelete;
- (id)commandForDeletingBoardItemsFromTopLevelContainer:(id)a3 shouldRemoveEmptyContainers:(BOOL)a4;
- (id)commandForDeletingInfosPossiblyFromMultipleContainers:(id)a3 shouldRemoveEmptyContainers:(BOOL)a4 canDeleteNewlyCreatedInfos:(BOOL)a5;
- (id)commandForInsertingBoardItemsIntoTopLevelContainer:(id)a3 below:(id)a4 withOffset:(unint64_t)a5;
- (id)commandForReplacingImagePlaceholderInSelection:(id)a3 withBoardItems:(id)a4 isCrossDocument:(BOOL)a5 withSender:(id)a6 outSelectionBehavior:(id *)a7;
- (id)commandToAnchorChildItemWhenUngrouping:(id)a3 childItem:(id)a4 childItemGeometry:(id)a5;
- (id)commandToInsertBoardItems:(id)a3 intoContainer:(id)a4 belowBoardItem:(id)a5 withOffset:(unint64_t)a6;
- (id)commandsForUngrouping:(id)a3 objectsToSelect:(id)a4;
- (id)commandsToSwapConnectionsFromRep:(id)a3 toInfo:(id)a4;
- (id)infosToDeleteToDeleteInfos:(id)a3;
- (id)insertCopiesOfInfos:(id)a3 forDuplicatingDragOnRep:(id)a4;
- (id)layoutsForAlignAndDistribute;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (id)p_canvasSelectionPathChangingInfo:(id)a3 shouldExclude:(BOOL)a4;
- (id)p_commandForUpdatingMagnetAfterGroupingForCline:(id)a3 withPosition:(id)a4 withGroupLayout:(id)a5 forMagnet:(BOOL)a6;
- (id)p_commandsForGroupingBoardItems:(id)a3 outNewGroup:(id *)a4;
- (id)p_commandsToPrepareForGroupingBoardItems:(id)a3 infosToAdjustForConnectionLines:(id)a4;
- (id)pasteboardController;
- (id)repToHighlightForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (id)selectionBehaviorForDeletingBoardItems:(id)a3;
- (id)selectionPathByReplacingInfosInSelectionPath:(id)a3 withInfos:(id)a4 preservingMultipleContainers:(BOOL)a5;
- (id)selectionPathForInsertingBoardItems:(id)a3 byReplacingInfosInSelectionPath:(id)a4 preservingMultipleContainers:(BOOL)a5;
- (id)selectionPathWithInfo:(id)a3;
- (id)selectionPathWithInfos:(id)a3;
- (id)shapeInfoToBeginEditing;
- (id)tooltipForMoveBackward;
- (id)tooltipForMoveForward;
- (id)tooltipForMoveToBack;
- (id)tooltipForMoveToFront;
- (id)topMostContainerForDeletingContainer:(id)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformAlignAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformBringDrawablesForwardActionWithSender:(id)a3;
- (int64_t)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformCopyAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformCopyStyleAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformCutAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformDeleteAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformDeselectAllAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformDistributeActionWithSender:(id)a3;
- (int64_t)canvasEditorCanPerformDuplicateAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformGroupActionWithSender:(id)a3;
- (int64_t)canvasEditorCanPerformLockAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformPasteAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformPasteAsPlainTextAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformPastePreservingFormulasAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformPasteValuesAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformSelectAllAction:(SEL)a3 withSender:(id)a4;
- (int64_t)canvasEditorCanPerformSendDrawablesBackwardActionWithSender:(id)a3;
- (int64_t)canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:(id)a3;
- (int64_t)canvasEditorCanPerformUngroupActionWithSender:(id)a3;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addContextualMenuItemsToArray:(id)a3;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)alignDrawablesByEdge:(int)a3;
- (void)arrowKeyReceivedInDirection:(unint64_t)a3 withModifierKeys:(id)a4;
- (void)beginEditingOnKeyInputWithString:(id)a3;
- (void)bringForward:(id)a3;
- (void)bringToFront:(id)a3;
- (void)contextMenuDidHideForContextMenuController:(id)a3;
- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)cut:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)deselectAll:(id)a3;
- (void)distributeDrawablesByEdge:(int)a3;
- (void)distributeDrawablesEvenly;
- (void)donateBoardItemsInsertion:(id)a3;
- (void)duplicate:(id)a3;
- (void)enterQuickSelectMode:(id)a3;
- (void)group:(id)a3;
- (void)hideDragAndDropUI;
- (void)lock:(id)a3;
- (void)mask;
- (void)maskImage:(id)a3 withShapeType:(int64_t)a4;
- (void)maskWithShape;
- (void)maskWithShapeType:(int64_t)a3;
- (void)moveSelections:(unint64_t)a3;
- (void)p_beginEditingTextShape:(id)a3 replacementRange:(_NSRange)a4 withText:(id)a5;
- (void)p_copy:(id)a3;
- (void)p_fixupGeometryForInsertingBoardItems:(id)a3 intoContainer:(id)a4;
- (void)p_maskImage:(id)a3 withShape:(id)a4 shouldOpenGroup:(BOOL)a5 shouldBeginEditing:(BOOL)a6 shouldCenterAroundFaces:(BOOL)a7;
- (void)p_scrollCanvasForScrollType:(unint64_t)a3;
- (void)p_setLockStatusOfSelectedDrawables:(BOOL)a3;
- (void)paste:(id)a3;
- (void)pasteAsPlainText:(id)a3;
- (void)pasteValues:(id)a3;
- (void)perform_delete;
- (void)perform_deleteBoardItems:(id)a3;
- (void)prepareGeometryForInsertingBoardItems:(id)a3 withInsertionContext:(id)a4;
- (void)prepareGeometryForPastingBoardItems:(id)a3 fromPasteboard:(id)a4 intoContainer:(id)a5 useOriginalPositions:(BOOL)a6;
- (void)presentAlignmentTools:(id)a3;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6;
- (void)replaceBoardItem:(id)a3 withBoardItem:(id)a4;
- (void)scrollCanvasDown:(id)a3;
- (void)scrollCanvasLeft:(id)a3;
- (void)scrollCanvasPageDown:(id)a3;
- (void)scrollCanvasPageUp:(id)a3;
- (void)scrollCanvasRight:(id)a3;
- (void)scrollCanvasUp:(id)a3;
- (void)selectParent:(id)a3;
- (void)sendBackward:(id)a3;
- (void)sendToBack:(id)a3;
- (void)showMiniFormatterToExitDrawingMode:(id)a3;
- (void)ungroup:(id)a3;
- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4;
- (void)updateTableAnchorHintWhenGrouping:(id)a3 groupLayout:(id)a4;
- (void)zoomIn:(id)a3;
- (void)zoomOut:(id)a3;
@end

@implementation CRLCanvasEditorHelper

- (CRLCanvasEditorHelper)initWithCanvasEditor:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRLCanvasEditorHelper;
  v5 = [(CRLCanvasEditorHelper *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mCanvasEditor, v4);
    v6->mTornDown = 0;
    v7 = [CRLKeyboardMovementManipulator alloc];
    WeakRetained = objc_loadWeakRetained(&v6->mCanvasEditor);
    v9 = [WeakRetained interactiveCanvasController];
    v10 = [(CRLKeyboardMovementManipulator *)v7 initWithInteractiveCanvasController:v9];
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
  v2 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v2 interactiveCanvasController];

  return v3;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  v2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = [v2 editingCoordinator];

  return v3;
}

- (id)pasteboardController
{
  v2 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v2 pasteboardController];

  return v3;
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

- (BOOL)isLayoutSelectable:(id)a3
{
  v4 = a3;
  if (![v4 isSelectable])
  {
    goto LABEL_6;
  }

  v5 = objc_opt_class();
  v6 = [v4 info];
  v7 = sub_100014370(v5, v6);

  if (v7)
  {
    v8 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v9 = [v8 editingCoordinator];
    v10 = [v9 mainBoard];
    v11 = [v7 id];
    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {

LABEL_6:
      v17 = 0;
      goto LABEL_7;
    }
  }

  v13 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v14 = [v13 editingCoordinator];
  v15 = [v14 followCoordinator];
  v16 = [v15 isFollowing];

  v17 = v16 ^ 1;
LABEL_7:

  return v17;
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, v7);
  v11 = v10;
  if (!v10)
  {
    v22 = objc_opt_class();
    v12 = sub_100014370(v22, v7);
    if (v12)
    {
      v23 = [CRLPathEditor alloc];
      v24 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      v21 = [(CRLBoardItemEditor *)v23 initWithInteractiveCanvasController:v24];

      goto LABEL_32;
    }

    if (!v7)
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
    v36 = v7;
    v28 = "Can't build an editor from the canvas editor with something that isn't a CRLBoardItemSelection (received %@)";
    v29 = v26;
    v30 = v27;
    v31 = 213;
    goto LABEL_30;
  }

  v12 = [v10 boardItems];
  v13 = [(CRLCanvasEditorHelper *)self editorClassForInfos:v12];
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

  v15 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v16 = [v15 freehandDrawingToolkit];
  v17 = [v16 isInDrawingMode];

  v18 = objc_opt_class();
  v19 = sub_100014370(v18, v7);
  v20 = v19;
  if (v17 && [v19 hasSelectedItemsInNonGroupContainer])
  {
    v21 = [[CRLFreehandDrawingMixedTypeEditor alloc] initWithInteractiveCanvasController:v15 currentSelectionPath:v8];
  }

  else
  {
    v32 = [v14 alloc];
    v33 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v21 = [v32 initWithInteractiveCanvasController:v33];

    [(CRLFreehandDrawingMixedTypeEditor *)v21 setBoardItems:v12];
  }

LABEL_32:

  return v21;
}

- (Class)p_editorClassForBoardItems:(id)a3 shouldIgnoreLockedState:(BOOL)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 anyObject];
    v7 = [v6 editorClass];

    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v5;
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
            if ([v13 locked] && !a4)
            {
              v7 = objc_opt_class();
              goto LABEL_23;
            }

            v14 = [v13 editorClass];
            if (!v14)
            {
              goto LABEL_21;
            }

            v15 = v14;
            if (([v14 isSubclassOfClass:v7] & 1) == 0 && v15 != v7)
            {
              v7 = [v7 superclass];
              if (([v15 isSubclassOfClass:v7] & 1) == 0)
              {
                do
                {
                  v7 = [v7 superclass];
                }

                while (![v15 isSubclassOfClass:v7]);
              }

              if (objc_opt_class() != v7 && ![v7 isSubclassOfClass:objc_opt_class()])
              {
LABEL_21:
                v7 = 0;
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
    v7 = 0;
  }

  v16 = v7;

  return v7;
}

- (id)selectionPathWithInfo:(id)a3
{
  if (a3)
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

- (id)selectionPathWithInfos:(id)a3
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
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

  v15 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v16 = [v15 delegate];
  v17 = [v16 selectionModelTranslatorForInteractiveCanvasController:v15];
  v18 = [v17 selectionPathForInfos:obj];

  return v18;
}

- (id)selectionPathByReplacingInfosInSelectionPath:(id)a3 withInfos:(id)a4 preservingMultipleContainers:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([(CRLCanvasEditorHelper *)self p_editorClassForBoardItems:v9 shouldIgnoreLockedState:0])
  {
    v10 = [[_TtC8Freeform21CRLBoardItemSelection alloc] initWithBoardItems:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(CRLCanvasSelection);
  v12 = v8;
  v13 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v14 = [v13 interactiveCanvasController];
  v15 = [v14 selectionModelTranslator];

  v16 = [v15 containerToInsertIntoForSelectionPath:v12];
  v17 = v16;
  if (v5)
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
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v9 allObjects], v20 = objc_claimAutoreleasedReturnValue(), v21 = -[CRLCanvasEditorHelper canInsertBoardItems:intoGroup:](self, "canInsertBoardItems:intoGroup:", v20, v17), v20, v21))
    {
      v22 = [v15 selectionPathForNothingSelectedInsideGroup:v17];
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

- (id)selectionPathForInsertingBoardItems:(id)a3 byReplacingInfosInSelectionPath:(id)a4 preservingMultipleContainers:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CRLCanvasEditorHelper *)self selectionPathByReplacingInfosInSelectionPath:a4 withInfos:v8 preservingMultipleContainers:v5];
  v10 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v11 = [v10 freehandDrawingToolkit];
  LODWORD(self) = [v11 isInDrawingMode];

  if (self)
  {
    v34 = [v8 count];
    v12 = +[NSMutableSet set];
    v13 = +[NSMutableSet set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v8;
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
          v20 = [v19 childItems];
          [v13 addObjectsFromArray:v20];
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
        v24 = [v22 boardItems];
        v25 = [v24 isEqual:v14];

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

- (id)p_canvasSelectionPathChangingInfo:(id)a3 shouldExclude:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v8 = [v7 editorController];

  v9 = [v8 selectionPath];
  v10 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v11 = [v10 infosForSelectionPath:v9];

  v12 = [v11 mutableCopy];
  v13 = [v9 mostSpecificSelectionOfClass:objc_opt_class()];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 boardItems];
    v16 = [v15 isEqual:v11];

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

  if (v4)
  {
    [v12 removeObject:v6];
  }

  else
  {
    [v12 addObject:v6];
  }

  v18 = [v12 count];
  if (!v14 || v18)
  {
    v26 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:v12];
  }

  else
  {
    v28 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v19 = [v28 selectionModelTranslator];
    v20 = [v14 containerGroups];
    [v20 firstObject];
    v21 = v9;
    v22 = v11;
    v23 = v8;
    v25 = v24 = v6;
    v26 = [v19 selectionPathForNothingSelectedInsideGroup:v25];

    v6 = v24;
    v8 = v23;
    v11 = v22;
    v9 = v21;
  }

  return v26;
}

- (BOOL)shouldAllowPotentiallyKeyboardBasedActionForSender:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() physicalKeyboardIsSender:v4];

  if (!v5)
  {
    return 1;
  }

  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v7 = [v6 shouldAllowKeyCommands];

  return v7;
}

+ (BOOL)physicalKeyboardIsSender:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CRLiOSPhysicalKeyboardAwareSender])
  {
    v4 = [v3 crl_representsPhysicalKeyboard];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)canPasteWithItemSource:(id)a3 sender:(id)a4
{
  v5 = a3;
  if (!v5)
  {
    v6 = [(CRLCanvasEditorHelper *)self pasteboardController];

    if (!v6)
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

    v10 = [(CRLCanvasEditorHelper *)self pasteboardController];
    v11 = +[CRLPasteboard generalPasteboard];
    v5 = [v10 ingestibleItemSourceForPasteboard:v11];
  }

  v12 = [v5 canProduceBoardItems];

  return v12;
}

- (int64_t)canvasEditorCanPerformDeleteAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v6])
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if (([v7 canvasEditorCanDeleteWithSender:v6] & ("delete:" == a3)) != 0)
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

- (int64_t)canvasEditorCanPerformCopyAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = -1;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v6]&& "copy:" == a3)
  {
    v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v8 canvasEditorCanCopyWithSender:v6])
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

- (int64_t)canvasEditorCanPerformCopyStyleAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [v6 canvasEditorCanCopyStyleWithSender:v5];

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

- (int64_t)canvasEditorCanPerformCutAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v5])
  {
    v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v7 = [v6 canvasEditorCanCutWithSender:v5];

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

- (int64_t)canvasEditorCanPerformPasteAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = -1;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v6]&& "paste:" == a3)
  {
    v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v8 canvasEditorCanPasteWithSender:v6])
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

- (int64_t)canvasEditorCanPerformPasteAsPlainTextAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v5])
  {
    v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v6 canvasEditorCanPasteAsPlainTextWithSender:v5])
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

- (int64_t)canvasEditorCanPerformPasteValuesAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v5])
  {
    v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v6 canvasEditorCanPasteValuesWithSender:v5])
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

- (int64_t)canvasEditorCanPerformPastePreservingFormulasAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v5])
  {
    v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v6 canvasEditorCanPasteWithSender:v5])
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

- (int64_t)canvasEditorCanPerformDuplicateAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v6])
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if (([v7 canvasEditorCanDuplicateWithSender:v6] & ("duplicate:" == a3)) != 0)
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

- (int64_t)canvasEditorCanPerformSelectAllAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  if ([(CRLCanvasEditorHelper *)self shouldAllowPotentiallyKeyboardBasedActionForSender:v5])
  {
    v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v6 canvasEditorCanSelectAllWithSender:v5])
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

- (BOOL)allowSelectAllForSender:(id)a3 hasNothingVisiblySelected:(BOOL)a4 hasAtLeastOneThingToSelect:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v5)
  {
    v9 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v10 = [v9 interactiveCanvasController];
    v11 = [v10 layerHost];
    v12 = [v11 asiOSCVC];
    if ([v12 allowedToEnterQuickSelectMode])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 1;
    }

    if (v6 && (isKindOfClass & 1) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = [CRLCanvasEditor physicalKeyboardIsSender:v8];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)canvasEditorCanPerformDeselectAllAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [v6 canvasEditorCanDeselectAllWithSender:v5];

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

- (int64_t)canvasEditorCanPerformGroupActionWithSender:(id)a3
{
  v4 = a3;
  if (-[CRLCanvasEditorHelper shouldAllowPotentiallyKeyboardBasedActionForSender:](self, "shouldAllowPotentiallyKeyboardBasedActionForSender:", v4) && (-[CRLCanvasEditorHelper interactiveCanvasController](self, "interactiveCanvasController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 documentIsSharedReadOnly], v5, (v6 & 1) == 0) && (-[CRLCanvasEditorHelper canvasEditor](self, "canvasEditor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "canvasEditorCanGroupWithSender:", v4), v7, v8))
  {
    v9 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v10 = [v9 selectionModelTranslator];
    v11 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v12 = [v11 editorController];
    v13 = [v12 selectionPath];
    v14 = [v10 boardItemsForSelectionPath:v13];

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

          v21 = [*(*(&v26 + 1) + 8 * i) containingGroup];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 childInfos];
            v24 = [NSSet setWithArray:v23];

            LOBYTE(v23) = [v24 isEqualToSet:v15];
            if (v23)
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

- (int64_t)canvasEditorCanPerformUngroupActionWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 documentIsSharedReadOnly];

  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
    if ([v8 canvasEditorCanUngroupWithSender:v4])
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

- (int64_t)canvasEditorCanPerformConnectWithConnectionLineAction:(SEL)a3 withSender:(id)a4
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController:a3];
  v5 = [v4 canvasEditor];
  v6 = [v5 infosToConnect];
  if ([v6 count] == 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (int64_t)canvasEditorCanPerformAlignAction:(SEL)a3 withSender:(id)a4
{
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController:a3];
  if ([v5 documentIsSharedReadOnly])
  {
    v6 = -1;
  }

  else
  {
    v7 = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
    if ([v7 count] > 1)
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

- (int64_t)canvasEditorCanPerformDistributeActionWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if ([v4 documentIsSharedReadOnly])
  {
    v5 = -1;
  }

  else
  {
    v6 = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
    if ([v6 count] > 2)
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

- (BOOL)canPerformMaskWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v7 = [v6 editorController];
  v8 = [v7 selectionPath];
  v9 = [v5 boardItemsForSelectionPath:v8];

  if ([v9 count] == 1)
  {
    v10 = objc_opt_class();
    v11 = [v9 anyObject];
    v12 = sub_100014370(v10, v11);

    if (v12 && ([v12 locked] & 1) == 0)
    {
      v14 = +[CRLImageProviderPool sharedPool];
      v15 = [v12 imageAssetPayload];
      v16 = [v14 providerForAsset:v15 shouldValidate:1];

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

- (BOOL)canPerformUnmaskWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [v6 editorController];
  v8 = [v7 selectionPath];
  v9 = [v5 boardItemsForSelectionPath:v8];

  if ([v9 count] == 1)
  {
    v10 = [v9 anyObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 locked] & 1) == 0)
    {
      v11 = [v10 maskCanBeReset];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)canPerformMaskWithShapeWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [v6 editorController];
  v8 = [v7 selectionPath];
  v9 = [v5 boardItemsForSelectionPath:v8];

  if ([v9 count] == 2 && (objc_msgSend(v4, "hasSelectedInfosInMultipleContainers") & 1) == 0)
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
            v23 = [v4 repForInfo:v19];
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

- (BOOL)canPerformMaskWithShapeTypeWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [v6 editorController];
  v8 = [v7 selectionPath];
  v9 = [v5 boardItemsForSelectionPath:v8];

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

- (int64_t)canvasEditorCanPerformLockAction:(SEL)a3 withSender:(id)a4
{
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController:a3];
  v7 = [v6 documentIsSharedReadOnly];

  if (v7)
  {
    return -1;
  }

  v9 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v10 = [v9 selectionModelTranslator];
  v11 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v12 = [v11 editorController];
  v13 = [v12 selectionPath];
  v14 = [v10 boardItemsForSelectionPath:v13];

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
        if (v22 && ("lock:" == a3) != [v22 locked] && objc_msgSend(v23, "isLockable"))
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

- (BOOL)canUngroupWithSelection:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 infosOfClass:{objc_opt_class(), 0}];
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

- (BOOL)canUngroupGroupInfo:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isFreehandDrawing] & 1) == 0)
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
  v3 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];

  v6 = [v3 editorController];
  v7 = [v6 selectionPath];
  v8 = [v5 infosForSelectionPath:v7];

  LOBYTE(v6) = [v8 count] == 0;
  return v6;
}

- (BOOL)selectionContainsJustUnlockedObjects
{
  v3 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];

  v6 = [v3 editorController];
  v7 = [v6 selectionPath];
  v8 = [v5 unlockedBoardItemsForSelectionPath:v7];

  v9 = [v3 editorController];
  v10 = [v9 selectionPath];
  v11 = [v5 boardItemsForSelectionPath:v10];

  v12 = [v8 count];
  v13 = v12 == [v11 count] && objc_msgSend(v8, "count") != 0;

  return v13;
}

- (int64_t)canvasEditorCanPerformBringDrawablesForwardActionWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 documentIsSharedReadOnly];

  if (v5)
  {
    return -1;
  }

  v7 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v8 = [v7 arrangeInspectorDelegate];
  v9 = [v8 canBringDrawablesForward];
  if (([(CRLCanvasEditorHelper *)self selectionContainsJustUnlockedObjects]& v9) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int64_t)canvasEditorCanPerformSendDrawablesBackwardActionWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 documentIsSharedReadOnly];

  if (v5)
  {
    return -1;
  }

  v7 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v8 = [v7 arrangeInspectorDelegate];
  v9 = [v8 canSendDrawablesBackward];
  if (([(CRLCanvasEditorHelper *)self selectionContainsJustUnlockedObjects]& v9) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("cut:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformCutAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("copy:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformCopyAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("delete:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDeleteAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("paste:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformPasteAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if (sel_isEqual(a3, "duplicate:"))
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDuplicateAction:a3 withSender:v6];
LABEL_64:
    v8 = v7;
    goto LABEL_65;
  }

  if ("pasteAsPlainText:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformPasteAsPlainTextAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("pasteValues:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformPasteValuesAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("selectAll:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformSelectAllAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("deselectAll:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDeselectAllAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("group:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformGroupActionWithSender:v6];
    goto LABEL_64;
  }

  if ("ungroup:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformUngroupActionWithSender:v6];
    goto LABEL_64;
  }

  v8 = 1;
  if ("zoomIn:" == a3 || "zoomOut:" == a3)
  {
    goto LABEL_65;
  }

  if ("showMiniFormatterToExitDrawingMode:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:v6];
    goto LABEL_64;
  }

  if ("selectParent:" == a3)
  {
    v9 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v10 = [v9 topLevelContainerRepForEditing];
    v8 = v10 != 0;

    goto LABEL_65;
  }

  if ("connectWithConnectionLine:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformConnectWithConnectionLineAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("alignDrawablesByLeftEdge:" == a3 || "alignDrawablesByRightEdge:" == a3 || "alignDrawablesByTopEdge:" == a3 || "alignDrawablesByBottomEdge:" == a3 || "alignDrawablesByHorizontalCenter:" == a3 || "alignDrawablesByVerticalCenter:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformAlignAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("distributeDrawablesHorizontally:" == a3 || "distributeDrawablesVertically:" == a3 || "distributeDrawablesEvenly:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformDistributeActionWithSender:v6];
    goto LABEL_64;
  }

  if ("bringToFront:" == a3 || "bringForward:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformBringDrawablesForwardActionWithSender:v6];
    goto LABEL_64;
  }

  if ("sendBackward:" == a3 || "sendToBack:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformSendDrawablesBackwardActionWithSender:v6];
    goto LABEL_64;
  }

  if ("mask:" == a3)
  {
    v12 = [(CRLCanvasEditorHelper *)self canPerformUnmaskWithSender:v6];
    goto LABEL_72;
  }

  if ("maskWithShape:" == a3)
  {
    v12 = [(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:v6];
    goto LABEL_72;
  }

  if ("maskWithSelection:" == a3)
  {
    if ([(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:v6]|| [(CRLCanvasEditorHelper *)self canPerformMaskWithSender:v6])
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    goto LABEL_65;
  }

  if ("maskWithShapeType:" == a3 || "maskWithShapeTypeInPropertyList:" == a3)
  {
    v12 = [(CRLCanvasEditorHelper *)self canPerformMaskWithShapeTypeWithSender:v6];
    goto LABEL_72;
  }

  if ("lock:" == a3 || "unlock:" == a3)
  {
    v7 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformLockAction:a3 withSender:v6];
    goto LABEL_64;
  }

  if ("scrollCanvasPageUp:" == a3 || "scrollCanvasPageDown:" == a3 || "scrollCanvasUp:" == a3 || "scrollCanvasDown:" == a3 || "scrollCanvasLeft:" == a3 || "scrollCanvasRight:" == a3)
  {
    v12 = [(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard];
LABEL_72:
    if (v12)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    goto LABEL_65;
  }

  if ("enterQuickSelectMode:" != a3)
  {
    if ("presentAlignmentTools:" != a3)
    {
      v8 = 0;
      goto LABEL_65;
    }

    v12 = [CRLFeatureFlagsHelper isOSFeatureEnabled:10];
    goto LABEL_72;
  }

  v13 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v14 = [v13 interactiveCanvasController];
  v15 = [v14 layerHost];
  v16 = [v15 asiOSCVC];

  if ([v16 allowedToEnterQuickSelectMode])
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

- (id)topMostContainerForDeletingContainer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 parentInfo];
  v7 = sub_100014370(v5, v6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 childInfos];
    v9 = [NSSet setWithArray:v8];

    v10 = [NSSet setWithObject:v4];
    v11 = [v9 isEqualToSet:v10];

    if (v11)
    {
      v12 = [(CRLCanvasEditorHelper *)self topMostContainerForDeletingContainer:v7];
    }

    else
    {
      v12 = v4;
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

  v20 = v4;
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

- (id)selectionBehaviorForDeletingBoardItems:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self infosToDeleteToDeleteInfos:a3];
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
        v12 = [v11 parentInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v14 = [v11 parentInfo];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  if ([v5 count] < 2 && objc_msgSend(v5, "count") == 1)
  {
    v15 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v16 = [v15 delegate];
    v17 = [v16 selectionModelTranslatorForInteractiveCanvasController:v15];
    v18 = [v5 anyObject];
    v19 = [v17 selectionPathForNothingSelectedInsideGroup:v18];
  }

  else
  {
    v19 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:0, v26];
  }

  v20 = [CRLCommandSelectionBehavior alloc];
  v21 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v22 = [v21 editorController];
  v23 = [v22 selectionPath];
  v24 = [(CRLCommandSelectionBehavior *)v20 initWithForwardSelectionPath:v19 reverseSelectionPath:v23 selectionFlags:4];

  return v24;
}

- (id)boardItemsToDelete
{
  v2 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = [v2 selectionModelTranslator];
  v4 = [v2 editorController];
  v5 = [v4 selectionPath];
  v6 = [v3 unlockedBoardItemsForSelectionPath:v5];

  return v6;
}

- (void)perform_delete
{
  v3 = [(CRLCanvasEditorHelper *)self boardItemsToDelete];
  [(CRLCanvasEditorHelper *)self perform_deleteBoardItems:v3];
}

- (void)perform_deleteBoardItems:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 commandController];

  v7 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v4 shouldRemoveEmptyContainers:1];
  if (v7)
  {
    if (!v6)
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
    v12 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v4];
    v13 = [(CRLCanvasEditorHelper *)self editingCoordinator];
    v14 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v15 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v12 infosToRemove:v4 editingCoordinator:v13 withIcc:v14];

    if ([v15 count])
    {
      [v11 addObjectsFromArray:v15];
    }

    [v11 addObject:v7];
    v16 = [(CRLCanvasEditorHelper *)self selectionBehaviorForDeletingBoardItems:v4];
    v17 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v11];
    [v6 enqueueCommand:v17 withSelectionBehavior:v16];
  }
}

- (void)delete:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v6 = [v5 canvasEditorCanDeleteWithSender:v4];

  if (v6)
  {
    v7 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v8 = [v7 editingCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10029DDE4;
    v9[3] = &unk_10183D270;
    v9[4] = self;
    [v8 canPerformUserActionUsingBlock:v9];
  }
}

- (void)p_copy:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self canvasEditor];
  [v5 copy:v4];
}

- (void)cut:(id)a3
{
  v10 = a3;
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v5 = [v4 canvasEditorCanCutWithSender:v10];

  if (v5)
  {
    v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v7 = [v6 commandController];

    [v7 openGroup];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Cut" value:0 table:@"UndoStrings"];
    [v7 setCurrentGroupActionString:v9];

    [(CRLCanvasEditorHelper *)self p_copy:v10];
    [(CRLCanvasEditorHelper *)self perform_delete];
    [v7 closeGroup];
  }
}

- (void)paste:(id)a3
{
  v12 = a3;
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  if ([v4 canvasEditorCanPasteWithSender:v12])
  {
    v5 = [v4 interactiveCanvasController];
    v6 = [v5 topLevelContainerRepForEditing];

    if (v6)
    {
      v7 = [v4 selectionPathWithInfos:0];
      v8 = [v4 editorController];
      [v8 setSelectionPath:v7];
    }

    v9 = +[CRLPasteboard generalPasteboard];
    v10 = [v4 editorController];
    v11 = [v10 selectionPath];
    [v4 pasteWithPasteboard:v9 selectionPath:v11 forceMatchStyle:0 sender:v12];
  }
}

- (void)pasteAsPlainText:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 editingCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029E1F0;
  v8[3] = &unk_101850AA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 canPerformUserActionUsingBlock:v8];
}

- (void)pasteValues:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 editingCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029E370;
  v8[3] = &unk_101850AA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 canPerformUserActionUsingBlock:v8];
}

- (void)duplicate:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 editingCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10029E4F0;
  v8[3] = &unk_101850AA8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 canPerformUserActionUsingBlock:v8];
}

- (void)deselectAll:(id)a3
{
  v6 = [(CRLCanvasEditorHelper *)self selectionPathWithInfos:0];
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v5 = [v4 editorController];
  [v5 setSelectionPath:v6];
}

- (void)p_setLockStatusOfSelectedDrawables:(BOOL)a3
{
  v3 = a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 commandController];

  v7 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v8 = [v7 infosForCurrentSelectionPath];

  v9 = [(CRLCanvasEditorHelper *)self drawablesToLockOrUnlockForInfos:v8];
  v10 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v11 = [v10 editorController];
  v12 = [v11 selectionPath];

  if (v3 || (v13 = [v9 count], v13 != objc_msgSend(v8, "count")))
  {
    v14 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v15 = [v14 selectionPathWithInfos:v9];

    v12 = v15;
  }

  v16 = [CRLCommandSelectionBehavior alloc];
  v17 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v18 = [v17 editorController];
  v19 = [v18 selectionPath];
  v20 = [(CRLCommandSelectionBehavior *)v16 initWithForwardSelectionPath:v12 reverseSelectionPath:v19 selectionFlags:1024];

  [v6 openGroupWithSelectionBehavior:v20];
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
  v36 = v12;
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
      if (v30 && ([v30 isLockable] & 1) != 0 || !v3 && objc_msgSend(v31, "locked"))
      {
        v32 = [[_TtC8Freeform19CRLCommandSetLocked alloc] initWithBoardItem:v31 locked:v3];
        [v6 enqueueCommand:v32];

        v25 = 1;
      }
    }

    v24 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v24);

  v12 = v36;
  if (v25)
  {
    v33 = +[NSBundle mainBundle];
    v34 = v33;
    if (v3)
    {
      v35 = @"Lock";
    }

    else
    {
      v35 = @"Unlock";
    }

    v23 = [v33 localizedStringForKey:v35 value:0 table:@"UndoStrings"];

    [v6 setCurrentGroupActionString:v23];
LABEL_21:
  }

  [v6 closeGroup];
}

- (void)lock:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 delegate];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10029EC28;
  v15[3] = &unk_10183AE28;
  v15[4] = v4;
  v15[5] = self;
  v6 = objc_retainBlock(v15);
  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 selectionModelTranslator];
    v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v9 = [v8 editorController];
    v10 = [v9 selectionPath];
    v11 = [v7 boardItemsForSelectionPath:v10];
    v12 = [(CRLCanvasEditorHelper *)self drawablesToLockOrUnlockForInfos:v11];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10029EC68;
    v13[3] = &unk_10183D168;
    v14 = v6;
    [v5 interactiveCanvasController:v4 didRequestToLockSelectedCanvasElements:v12 animated:1 completionQueue:0 completionHandler:v13];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (id)p_commandsToPrepareForGroupingBoardItems:(id)a3 infosToAdjustForConnectionLines:(id)a4
{
  v6 = a4;
  v7 = [NSMutableSet setWithArray:a3];
  v8 = [(CRLCanvasEditorHelper *)self editingCoordinator];
  v9 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v10 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v6 infosToRemove:v7 editingCoordinator:v8 withIcc:v9];

  return v10;
}

- (id)p_commandsForGroupingBoardItems:(id)a3 outNewGroup:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v7 = [_TtC8Freeform12CRLGroupItem groupGeometryFromChildrenInfos:v5];
  v8 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v9 = [v8 editingCoordinator];
  v10 = [v9 boardItemFactory];
  v39 = v7;
  v11 = [v10 makeGroupItemWithGeometry:v7];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v5;
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
  v17 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v18 = [v17 topLevelContainerInfoForEditing];
  v19 = sub_100014370(v16, v18);

  if (!v19)
  {
    v20 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v19 = [v20 containerForTopLevelInsertion];
  }

  v21 = [v19 childInfos];
  v22 = [v12 lastObject];
  v23 = [v21 indexOfObject:v22];

  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [v19 childInfos];
    v23 = [v24 count];
  }

  v38 = v19;
  v37 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v19 boardItem:v11 index:v23];
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
        v30 = [v29 geometry];
        v31 = [v11 geometry];
        v32 = [v30 geometryRelativeToGeometry:v31];

        v33 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v29 geometry:v32];
        [v6 addObject:v33];
        v34 = [[_TtC8Freeform28CRLCommandReparentBoardItems alloc] initWithDestinationContainer:v11 boardItem:v29];
        [v6 addObject:v34];
      }

      v26 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v26);
  }

  if (a4)
  {
    v35 = v11;
    *a4 = v11;
  }

  return v6;
}

- (void)group:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v42 = [v4 commandController];
  v5 = v4;
  v6 = [v4 selectionModelTranslator];
  v7 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v8 = [v7 editorController];
  v9 = [v8 selectionPath];
  v10 = [v6 unlockedBoardItemsForSelectionPath:v9];

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
        v18 = [(CRLCanvasEditorHelper *)self canvasEditor];
        v19 = [v18 canGroupBoardItem:v17];

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

  [v42 openGroup];
  [v42 enableProgressiveEnqueuingInCurrentGroup];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"Group" value:0 table:@"UndoStrings"];
  [v42 setCurrentGroupActionString:v22];

  v23 = objc_alloc_init(NSMapTable);
  v24 = objc_alloc_init(NSMapTable);
  v41 = [v5 topLevelZOrderedSiblingsOfInfos:v11];
  v50 = v24;
  v51 = v23;
  v25 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [CRLConnectionLineAdjustmentHelper getMagnetUnscaledPositionsFromInfos:v41 withAffectedInfos:v11 withClineHeadMagnets:&v51 withClineTailMagnets:&v50 withIcc:v25];
  v38 = v51;

  v37 = v50;
  v26 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v11];
  v40 = [(CRLCanvasEditorHelper *)self p_commandsToPrepareForGroupingBoardItems:v43 infosToAdjustForConnectionLines:v26];

  v27 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v27 addCommands:v40];
  [v42 enqueueCommand:v27];
  v49 = 0;
  v36 = [(CRLCanvasEditorHelper *)self p_commandsForGroupingBoardItems:v43 outNewGroup:&v49];
  v28 = v49;
  v29 = [CRLCanvasCommandSelectionBehavior alloc];
  v30 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v31 = [NSSet setWithObject:v28];
  v32 = [(CRLCanvasCommandSelectionBehavior *)v29 initWithCanvasEditor:v30 type:3 constructedInfos:v31];

  v33 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  [(CRLCommandGroup *)v33 addCommands:v36];
  [v42 enqueueCommand:v33];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10029F5F0;
  v44[3] = &unk_101850AD0;
  v45 = v38;
  v46 = self;
  v47 = v42;
  v48 = v37;
  v34 = v37;
  v35 = v38;
  [v28 withTemporaryLayoutPerform:v44];
  [v42 closeGroupWithSelectionBehavior:v32];
}

- (id)p_commandForUpdatingMagnetAfterGroupingForCline:(id)a3 withPosition:(id)a4 withGroupLayout:(id)a5 forMagnet:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a5;
  [a4 CGPointValue];
  v29 = v12;
  v30 = v11;
  if (v10)
  {
    [v10 pureTransformInRoot];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  CGAffineTransformInvert(&v33, &v32);
  v31 = vaddq_f64(*&v33.tx, vmlaq_n_f64(vmulq_n_f64(*&v33.c, v29), *&v33.a, v30));
  v13 = [v10 pureGeometry];
  [v13 size];
  v14 = sub_10011ECB4();
  v17 = sub_100121720(v31.f64[0], v31.f64[1], v14, v15, v16);
  v19 = v18;

  v20 = [v9 connectionLinePathSource];
  v21 = [v20 copy];

  v22 = [[CRLConnectionLineMagnet alloc] initWithType:7 normalizedPosition:v17, v19];
  if (v6)
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
  v25 = [v10 info];
  v26 = sub_100014370(v24, v25);

  v27 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v9 connectedItem:v26 chirality:v23 pathSource:v21];

  return v27;
}

- (id)commandsForUngrouping:(id)a3 objectsToSelect:(id)a4
{
  v5 = a3;
  v53 = a4;
  v62 = v5;
  v6 = [v5 childItems];
  v54 = [v6 crl_arrayOfObjectsPassingTest:&stru_101850AF0];

  if ([v54 count])
  {
    v7 = +[NSMutableArray array];
    [v53 addObjectsFromArray:v54];
    memset(&v81, 0, sizeof(v81));
    if (v5)
    {
      [v5 transformInRoot];
    }

    v8 = objc_opt_class();
    v9 = [v62 parentInfo];
    v55 = sub_100014370(v8, v9);

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
    v11 = [v62 parentItem];
    v12 = sub_100013F00(v10, v11);

    v13 = [(CRLCanvasEditorHelper *)self shouldReleaseChildItemsFromTableWhenUngrouping:v62];
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v62 anchoringTableItemIfAny];
      v16 = [v15 parentItem];
      v17 = sub_100013F00(v14, v16);

      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    v59 = v18;
    v21 = [v18 childInfos];
    v60 = [v21 indexOfObject:v62];

    if (v60 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v59 childInfos];
      v60 = [v22 count];
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v23 = [v54 reverseObjectEnumerator];
    v24 = [v23 countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v24)
    {
      obj = v23;
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
          v27 = [v26 geometry];
          if (v26 && [v26 wantsCounterRotationWhenNotSupportingParentRotationInRotatedParent] && (objc_msgSend(v26, "supportsParentRotation") & 1) == 0)
          {
            v37 = [v26 geometry];
            v38 = v37;
            if (v37)
            {
              [v37 transform];
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
            if (v27)
            {
              [v27 fullTransform];
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

            v43 = [v27 widthValid];
            v44 = [v27 heightValid];
            v66 = t2;
            v29 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v66 widthValid:v43 heightValid:v44];
          }

          else
          {
            if (v27)
            {
              [v27 fullTransform];
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
            v29 = +[CRLCanvasInfoGeometry geometryFromFullTransform:widthValid:heightValid:](CRLCanvasInfoGeometry, "geometryFromFullTransform:widthValid:heightValid:", &v82, [v27 widthValid], objc_msgSend(v27, "heightValid"));
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

            v30 = [v62 anchoringTableItemIfAny];
            v31 = [v30 geometry];
            v32 = v31;
            if (v31)
            {
              [v31 transform];
            }

            else
            {
              memset(&t2, 0, sizeof(t2));
            }

            CGAffineTransformConcat(&v82, &t1, &t2);
            v33 = +[CRLCanvasInfoGeometry geometryFromFullTransform:widthValid:heightValid:](CRLCanvasInfoGeometry, "geometryFromFullTransform:widthValid:heightValid:", &v82, [v27 widthValid], objc_msgSend(v27, "heightValid"));

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

        v23 = obj;
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
    v19 = [NSSet setWithObject:v5];
    v20 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v19 shouldRemoveEmptyContainers:1];
    v84 = v20;
    v7 = [NSArray arrayWithObjects:&v84 count:1];
  }

  return v7;
}

- (void)ungroup:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 commandController];
  if (!v5)
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

  v9 = [v4 selectionModelTranslator];
  v10 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v11 = [v10 editorController];
  v12 = [v11 selectionPath];
  obj = [v9 boardItemsForSelectionPath:v12];

  v13 = [v4 selectionModelTranslator];
  v14 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v15 = [v14 editorController];
  v16 = [v15 selectionPath];
  v17 = [v13 unlockedBoardItemsForSelectionPath:v16];

  v18 = +[NSMutableSet set];
  v84 = +[NSMutableArray array];
  v19 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Ungroup" value:0 table:@"UndoStrings"];
  v82 = v19;
  [(CRLCommandGroup *)v19 setActionString:v21];

  v22 = [v4 topLevelZOrderedSiblingsOfInfos:v17];
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
  v32 = [v4 topLevelZOrderedSiblingsOfInfos:v17];
  v106 = v31;
  v107 = v30;
  [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v33 = v81 = v18;
  v77 = v32;
  [CRLConnectionLineAdjustmentHelper getMagnetUnscaledPositionsFromInfos:v32 withAffectedInfos:v17 withClineHeadMagnets:&v107 withClineTailMagnets:&v106 withIcc:v33];
  v89 = v107;

  v88 = v106;
  v34 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v83];
  v35 = [(CRLCanvasEditorHelper *)self editingCoordinator];
  v36 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v76 = v34;
  v37 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v34 infosToRemove:v83 editingCoordinator:v35 withIcc:v36];

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
  v45 = [(CRLCanvasEditorHelper *)self canvasEditor];
  if (v43)
  {
    v46 = [(CRLCanvasCommandSelectionBehavior *)v44 initWithCanvasEditor:v45 type:3 constructedInfos:v81];
  }

  else
  {
    v46 = [(CRLCanvasCommandSelectionBehavior *)v44 initWithCanvasEditor:v45 type:1];
  }

  v47 = v46;
  v78 = v17;

  [v5 openGroupWithSelectionBehavior:v47];
  [v5 enableProgressiveEnqueuingInCurrentGroup];
  v79 = v5;
  v74 = v47;
  [v5 enqueueCommand:v82 withSelectionBehavior:v47];
  v80 = v4;
  [v4 layoutIfNeeded];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v48 = [v89 keyEnumerator];
  v49 = [v48 countByEnumeratingWithState:&v98 objects:v110 count:16];
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
          objc_enumerationMutation(v48);
        }

        v55 = *(*(&v98 + 1) + 8 * v53);
        v56 = [v89 objectForKey:v55];
        v57 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v58 = [CRLConnectionLineAdjustmentHelper commandForUpdatingMagnetAfterUngroupingForCline:v55 withPosition:v56 forMagnet:1 withIcc:v57];
        v52 = [v54 arrayByAddingObjectsFromArray:v58];

        v53 = v53 + 1;
        v54 = v52;
      }

      while (v50 != v53);
      v50 = [v48 countByEnumeratingWithState:&v98 objects:v110 count:16];
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
  v59 = [v88 keyEnumerator];
  v60 = [v59 countByEnumeratingWithState:&v94 objects:v109 count:16];
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
          objc_enumerationMutation(v59);
        }

        v65 = *(*(&v94 + 1) + 8 * v63);
        v66 = [v88 objectForKey:v65];
        v67 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v68 = [CRLConnectionLineAdjustmentHelper commandForUpdatingMagnetAfterUngroupingForCline:v65 withPosition:v66 forMagnet:0 withIcc:v67];
        v52 = [v64 arrayByAddingObjectsFromArray:v68];

        v63 = v63 + 1;
        v64 = v52;
      }

      while (v61 != v63);
      v61 = [v59 countByEnumeratingWithState:&v94 objects:v109 count:16];
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

- (BOOL)canGroupBoardItems:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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
        v14 = [v13 parentInfo];

        if (v14)
        {
          v15 = [v13 parentInfo];
          v16 = v15;
          if (v10)
          {

            if (v10 != v16)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v10 = v15;
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

        if (![v5 canGroupBoardItem:v13])
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

- (BOOL)canInsertBoardItems:(id)a3 intoGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CRLCanvasEditorHelper *)self canGroupBoardItems:v6])
  {
    v8 = [v7 isFreehandDrawing];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v6;
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
          if (v8)
          {
            if (([v14 isAllowedInFreehandDrawings] & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else if (([v14 supportsParentRotation] & 1) == 0 && v7)
          {
            while (1)
            {
              v15 = [v7 geometry];
              [v15 angle];
              v17 = v16;

              if (v17 != 0.0 && fabs(v17) >= 0.00999999978)
              {
                break;
              }

              v18 = objc_opt_class();
              v19 = [v7 parentInfo];
              v20 = sub_100014370(v18, v19);

              v7 = v20;
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

- (void)selectParent:(id)a3
{
  v9 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v5 = [v9 topLevelContainerRepForEditing];
  v6 = [v5 info];
  v7 = [v4 selectionPathWithInfo:v6];
  v8 = [v9 editorController];
  [v8 setSelectionPath:v7];
}

- (int64_t)canvasEditorCanPerformShowMiniFormatterToExitDrawingModeActionWithSender:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v5 = [v4 freehandDrawingToolkit];
  v6 = [v5 isLassoAbleToSelectMixedType];

  if (!v6)
  {
    return -1;
  }

  v7 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v8 = [v7 freehandDrawingToolkit];
  if ([v8 isInDrawingMode])
  {
    v9 = [v7 editorController];
    v10 = [v9 selectionPath];

    v11 = [v7 selectionModelTranslator];
    v12 = [v11 boardItemsForSelectionPath:v10];

    if ([v12 count])
    {
      v13 = +[NSMutableArray array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v12;
      v14 = [v12 allObjects];
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v27 + 1) + 8 * i);
            if ([v19 isMemberOfClass:objc_opt_class()])
            {
              v20 = objc_opt_class();
              v21 = sub_100014370(v20, v19);
              v22 = [v21 allNestedChildrenItemsExcludingGroups];
              [v13 addObjectsFromArray:v22];
            }

            else
            {
              [v13 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

- (void)showMiniFormatterToExitDrawingMode:(id)a3
{
  v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = [v12 layerHost];
  v4 = [v3 asiOSCVC];

  v5 = [v4 delegate];
  v6 = [v5 currentDocumentMode];

  v7 = objc_opt_class();
  v8 = sub_100014370(v7, v6);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 boardViewController];
    v11 = [v10 documentModeController];
    [v11 resetToDefaultModeAnimated:1];
  }
}

- (void)mask
{
  v20 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = objc_opt_class();
  v4 = [v20 selectionModelTranslator];
  v5 = [v20 editorController];
  v6 = [v5 selectionPath];
  v7 = [v4 unlockedBoardItemsForSelectionPath:v6];
  v8 = [v7 anyObject];
  v9 = sub_100014370(v3, v8);

  v10 = [v9 maskInfo];

  if (!v10)
  {
    v11 = [CRLCanvasCommandSelectionBehavior alloc];
    v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v13 = [v12 canvasEditor];
    v14 = [(CRLCanvasCommandSelectionBehavior *)v11 initWithCanvasEditor:v13];

    v15 = [v9 defaultMaskInfo];
    v16 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:v9 maskInfo:v15];
    v17 = [v20 commandController];
    [v17 enqueueCommand:v16 withSelectionBehavior:v14];
  }

  v18 = [v20 repForInfo:v9];
  v19 = [v18 imageLayout];
  if (([v19 isInMaskEditMode] & 1) == 0)
  {
    [v18 editMaskWithHUD:1];
  }
}

- (void)maskWithShape
{
  v3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [v3 selectionModelTranslator];
  v5 = [v3 editorController];
  v6 = [v5 selectionPath];
  v7 = [v4 unlockedBoardItemsForSelectionPath:v6];

  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v8)
  {

    v10 = 0;
    goto LABEL_17;
  }

  v9 = v8;
  v24 = self;
  v25 = v3;
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
    v3 = v25;
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

  v3 = v25;
  if (v10)
  {
    [(CRLCanvasEditorHelper *)v24 p_maskImage:v11 withShape:v10 shouldOpenGroup:1 shouldBeginEditing:1 shouldCenterAroundFaces:0];
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

- (void)maskWithShapeType:(int64_t)a3
{
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 selectionModelTranslator];
  v7 = [v5 editorController];
  v8 = [v7 selectionPath];
  v9 = [v6 unlockedBoardItemsForSelectionPath:v8];

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

    [(CRLCanvasEditorHelper *)self maskImage:v15 withShapeType:a3];
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

- (void)p_maskImage:(id)a3 withShape:(id)a4 shouldOpenGroup:(BOOL)a5 shouldBeginEditing:(BOOL)a6 shouldCenterAroundFaces:(BOOL)a7
{
  v7 = a7;
  v83 = a6;
  v8 = a5;
  v11 = a3;
  v12 = a4;
  v13 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v14 = [v13 commandController];
  v82 = v8;
  if (v8)
  {
    v15 = [CRLCanvasCommandSelectionBehavior alloc];
    v16 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v17 = [NSSet setWithObject:v11];
    v18 = [(CRLCanvasCommandSelectionBehavior *)v15 initWithCanvasEditor:v16 type:3 constructedInfos:v17];

    [v14 openGroupWithSelectionBehavior:v18];
  }

  v91[0] = 0;
  [(CRLCanvasEditorHelper *)self willMaskImage:v11 withShapeInfo:v12 additionalData:v91];
  v19 = objc_opt_class();
  v20 = [v13 layoutForInfo:v12];
  v21 = sub_100014370(v19, v20);

  v22 = [v12 geometry];
  v81 = v21;
  if (v21)
  {
    v23 = [v21 pureGeometry];
    v24 = v23;
    if (v23)
    {
      [v23 fullTransform];
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
      v88 = 0u;
    }

    v25 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v88];

    v22 = v25;
  }

  v26 = [v11 geometry];
  v27 = [v22 geometryRelativeToGeometry:v26];

  v87 = v27;
  if (v7)
  {
    v28 = [v11 imageAssetPayload];
    [v11 geometry];
    v30 = v29 = v22;
    [v30 size];
    v32 = v31;
    v34 = v33;
    [v87 transformedBounds];
    v36 = v35;
    v38 = v37;
    [v87 center];
    [CRLImageFaceAnalyzer maskCenterForFacesInImageData:v28 imageSize:v11 maskSize:v32 defaultCenter:v34 assetOwner:v36, v38, v39, v40];
    x = v41;
    y = v43;

    v22 = v29;
    v27 = v87;
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  v84 = v13;
  v45 = [v12 pathSource];
  v46 = [v45 copy];

  v80 = v22;
  [v22 size];
  [v46 scaleToNaturalSize:?];
  v79 = [[CRLMaskInfo alloc] initWithImageItem:v11 geometry:v27 pathSource:v46];
  v78 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:v11 maskInfo:v79];
  [v14 enqueueCommand:?];
  if (v7)
  {
    [v27 center];
    if (!sub_10011ED38(x, y, v47, v48))
    {
      [v27 center];
      v51 = sub_10011F31C(v49, v50, x);
      v52 = [v11 geometry];
      v53 = [v52 mutableCopy];

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
      v66 = [[_TtC8Freeform30CRLCommandSetImageItemGeometry alloc] initWithImageItem:v11 imageGeometry:v53 maskGeometry:v65 maskPathSource:v46];
      [v14 enqueueCommand:v66];
    }
  }

  v86 = v12;
  v67 = [NSSet setWithObject:v12];
  v68 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  v69 = [CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:v67];
  v70 = [(CRLCanvasEditorHelper *)self editingCoordinator];
  v71 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v72 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v69 infosToRemove:v67 editingCoordinator:v70 withIcc:v71];
  [(CRLCommandGroup *)v68 addCommands:v72];

  [v14 enqueueCommand:v68];
  v73 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v67 shouldRemoveEmptyContainers:1];
  [v14 enqueueCommand:v73];
  [(CRLCanvasEditorHelper *)self didMaskImage:v11 additionalData:v91[0]];
  v74 = +[NSBundle mainBundle];
  v75 = [v74 localizedStringForKey:@"Mask with Shape" value:0 table:0];
  [v14 setCurrentGroupActionString:v75];

  if (v82)
  {
    [v14 closeGroup];
  }

  if (v83)
  {
    [v84 layoutIfNeeded];
    v76 = [v84 repForInfo:v11];
    [v76 editMaskWithHUD:1];
  }
}

- (void)maskImage:(id)a3 withShapeType:(int64_t)a4
{
  v6 = a3;
  v7 = [[CRLCanvasInfoGeometry alloc] initWithSize:sub_10057DBD4(a4)];
  [(CRLCanvasInfoGeometry *)v7 size];
  v8 = [CRLPathSource pathSourceForShapeType:a4 naturalSize:?];
  if (a4 == 4)
  {
    v9 = objc_opt_class();
    v10 = sub_100013F00(v9, v8);
    v11 = v10;
    if (v10)
    {
      [v10 setIsCurveContinuous:1];
    }
  }

  v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v13 = [v12 commandController];
  v14 = [CRLCanvasCommandSelectionBehavior alloc];
  v15 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v16 = [(CRLCanvasCommandSelectionBehavior *)v14 initWithCanvasEditor:v15];

  v47 = v16;
  [v13 openGroupWithSelectionBehavior:v16];
  v49 = 0;
  [(CRLCanvasEditorHelper *)self willMaskImage:v6 withShapeInfo:0 additionalData:&v49];
  v48 = v12;
  [v12 repForInfo:v6];
  v17 = v46 = self;
  v18 = [v17 imageLayout];
  v19 = [v6 imageAssetPayload];
  v20 = [v6 geometry];
  [v20 size];
  v22 = v21;
  v24 = v23;
  [(CRLCanvasInfoGeometry *)v7 transformedBounds];
  v26 = v25;
  v28 = v27;
  [v18 imageGeometry];
  v29 = v7;
  v31 = v30 = v8;
  [v31 size];
  v32 = sub_10011ECB4();
  v36 = sub_100120414(v32, v33, v34, v35);
  [CRLImageFaceAnalyzer maskCenterForFacesInImageData:v19 imageSize:v6 maskSize:v22 defaultCenter:v24 assetOwner:v26, v28, v36, v37];
  v39 = v38;
  v41 = v40;

  [v30 naturalSize];
  v43 = [(CRLCanvasInfoGeometry *)v29 geometryWithNewBounds:sub_10011EC70(v39, v41, v42)];
  v44 = [[CRLMaskInfo alloc] initWithImageItem:v6 geometry:v43 pathSource:v30];
  v45 = [[_TtC8Freeform17CRLCommandSetMask alloc] initWithImageItem:v6 maskInfo:v44];
  [v13 enqueueCommand:v45];
  [(CRLCanvasEditorHelper *)v46 didMaskImage:v6 additionalData:v49];

  [v13 closeGroup];
  if (([v18 isInMaskEditMode] & 1) == 0)
  {
    [v17 editMaskWithHUD:1];
  }
}

- (id)commandForReplacingImagePlaceholderInSelection:(id)a3 withBoardItems:(id)a4 isCrossDocument:(BOOL)a5 withSender:(id)a6 outSelectionBehavior:(id *)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a3;
  v14 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v15 = [v14 selectionModelTranslator];
  v16 = [v15 boardItemsForSelectionPath:v13];

  if ([v11 count] != 1 || objc_msgSend(v16, "count") != 1)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v17 = objc_opt_class();
  v18 = [v16 anyObject];
  v19 = sub_100014370(v17, v18);

  if (v19 && ([v19 locked] & 1) == 0)
  {
    v21 = [v11 firstObject];
    v22 = objc_opt_class();
    v23 = sub_100014370(v22, v21);
    v63 = v21;
    if (!v23)
    {
      v31 = [v14 editingCoordinator];
      v62 = [v31 boardItemFactory];

      v38 = sub_1003035DC(v21, 1, v32, v33, v34, v35, v36, v37, &OBJC_PROTOCOL___CRLIngestibleBoardItemProvider);
      if (v38 && (v45 = v38, v46 = [v38 newBoardItemWithFactory:v62 bakedSize:0], v47 = objc_opt_class(), sub_100014370(v47, v46), v23 = objc_claimAutoreleasedReturnValue(), v46, v38 = v45, v21 = v63, v23))
      {
      }

      else
      {
        v60 = v38;
        v49 = sub_1003035DC(v21, 1, v39, v40, v41, v42, v43, v44, &OBJC_PROTOCOL___CRLPasteboardImageDataProvider);
        if (v49)
        {
          v50 = v49;
          v23 = [v49 imageData];
          v59 = v50;
          v51 = [v50 thumbnailImageData];
          v52 = v62;
          v61 = v23;
          if (v23)
          {
            v58 = v51;
            v53 = [CRLImageDataHelper alloc];
            v54 = [v62 assetOwner];
            v57 = [(CRLImageDataHelper *)v53 initWithImageData:v61 assetOwner:v54];

            v55 = [CRLCanvasInfoGeometry alloc];
            [(CRLImageDataHelper *)v57 naturalSize];
            v56 = [(CRLCanvasInfoGeometry *)v55 initWithSize:?];
            v23 = [v62 makeImageItemWithGeometry:v56 imageData:v61 thumbnailData:v58];

            v52 = v62;
            v21 = v63;

            v51 = v58;
          }

          v49 = v59;
        }

        else
        {
          v23 = 0;
          v52 = v62;
        }

        if (!v23)
        {
          v20 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    v24 = [v23 imageAssetPayload];

    if (v24)
    {
      v25 = objc_opt_class();
      v26 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      v27 = [v26 repForInfo:v19];
      v28 = sub_100014370(v25, v27);

      if ([v28 shouldAllowReplacementFromPaste] && (!+[CRLCanvasEditor physicalKeyboardIsSender:](CRLCanvasEditor, "physicalKeyboardIsSender:", v12) || (objc_msgSend(v23, "imageAssetPayload"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "canPasteDataFromPhysicalKeyboard:", v29), v29, v30)))
      {
        v20 = [v28 commandForAcceptingPasteWithImageInfo:v23 outSelectionBehavior:a7];
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

    v21 = v63;
    goto LABEL_20;
  }

  v20 = 0;
LABEL_21:

LABEL_22:

  return v20;
}

- (void)replaceBoardItem:(id)a3 withBoardItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSSet setWithObject:v7];
  v15 = v6;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v10 = [(CRLCanvasEditorHelper *)self commandForInsertingBoardItemsIntoTopLevelContainer:v9 below:v7];

  v11 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v8 shouldRemoveEmptyContainers:0];
  v12 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);

  [(CRLCommandGroup *)v12 addCommand:v10];
  [(CRLCommandGroup *)v12 addCommand:v11];
  v13 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v14 = [v13 commandController];
  [v14 enqueueCommand:v12];
}

- (id)commandForInsertingBoardItemsIntoTopLevelContainer:(id)a3 below:(id)a4 withOffset:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v11 = [v10 topLevelContainerInfoForEditing];
  v12 = objc_opt_class();
  v18 = sub_100303920(v11, v12, 1, v13, v14, v15, v16, v17, &OBJC_PROTOCOL___CRLContainerInfo);

  if (v18)
  {
    v19 = [(CRLCanvasEditorHelper *)self commandToInsertBoardItems:v8 intoContainer:v18 belowBoardItem:v9 withOffset:a5];
  }

  else
  {
    v20 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v21 = [v20 containerForTopLevelInsertion];

    v19 = [(CRLCanvasEditorHelper *)self commandToInsertBoardItems:v8 intoContainer:v21 belowBoardItem:v9 withOffset:a5];
  }

  return v19;
}

- (id)commandToInsertBoardItems:(id)a3 intoContainer:(id)a4 belowBoardItem:(id)a5 withOffset:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_class();
  v13 = sub_100013F00(v12, v10);
  if (v13)
  {
    v14 = [v10 childInfos];
    v15 = [v14 indexOfObject:v11];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v10 childInfos];
      v15 = [v16 count];
    }

    v17 = v15 >= a6;
    v18 = &v15[-a6];
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

    v19 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v13 boardItems:v9 index:v18];
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

- (id)commandForDeletingBoardItemsFromTopLevelContainer:(id)a3 shouldRemoveEmptyContainers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v8 = [v7 topLevelContainerInfoForEditing];

  if (v8)
  {
    v9 = [(CRLCanvasEditorHelper *)self commandForDeletingInfosPossiblyFromMultipleContainers:v6 shouldRemoveEmptyContainers:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)commandForDeletingInfosPossiblyFromMultipleContainers:(id)a3 shouldRemoveEmptyContainers:(BOOL)a4 canDeleteNewlyCreatedInfos:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if ([v7 count])
  {
    v8 = v7;
    v40 = v7;
    v39 = v5;
    if (v6)
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
          v16 = [v14 parentInfo];
          v17 = sub_100014370(v15, v16);

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
            v29 = [(CRLCanvasEditorHelper *)self editingCoordinator];
            v30 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
            v31 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v28 infosToRemove:v27 editingCoordinator:v29 withIcc:v30];

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

    v7 = v40;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)infosToDeleteToDeleteInfos:(id)a3
{
  v32 = [a3 mutableCopy];
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
        v12 = [v10 parentInfo];
        v13 = sub_100014370(v11, v12);

        if (v13)
        {
          v14 = [v3 objectForKeyedSubscript:v13];
          if (!v14)
          {
            v15 = [v13 childInfos];
            v14 = [NSSet setWithArray:v15];

            [v3 setObject:v14 forKeyedSubscript:v13];
          }

          if ([v14 isSubsetOfSet:v32])
          {
            v16 = v8;
            v17 = v3;
            v18 = v4;
            v19 = objc_opt_class();
            v20 = [v13 parentInfo];
            v21 = sub_100014370(v19, v20);

            v22 = [v21 childInfos];
            v23 = [v22 count];

            if (v23 == 1)
            {
              do
              {
                v24 = [v21 parentInfo];

                v25 = [v24 childInfos];
                v26 = [v25 count];

                v21 = v24;
              }

              while (v26 == 1);
            }

            else
            {
              v24 = v21;
            }

            v27 = [v13 allNestedChildrenItemsIncludingGroups];
            v28 = [NSSet setWithArray:v27];
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

- (id)commandsToSwapConnectionsFromRep:(id)a3 toInfo:(id)a4
{
  v6 = a3;
  v31 = a4;
  v29 = +[NSMutableArray array];
  v7 = [v6 layout];
  v8 = [v7 connectedLayouts];
  v9 = [v8 count];

  if (v9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = [v6 layout];
    v11 = [v10 connectedLayouts];

    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
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

        v16 = [*(*(&v32 + 1) + 8 * i) connectionLineInfo];
        v17 = [(CRLCanvasEditorHelper *)self editingCoordinator];
        v18 = [v17 mainBoard];
        v19 = [v16 getConnectedFromWithBoardItemOwner:v18];

        v20 = [(CRLCanvasEditorHelper *)self editingCoordinator];
        v21 = [v20 mainBoard];
        v22 = [v16 getConnectedToWithBoardItemOwner:v21];

        v23 = [v6 info];

        if (v19 == v23)
        {
          v25 = 0;
        }

        else
        {
          v24 = [v6 info];

          if (v22 != v24)
          {
            goto LABEL_13;
          }

          v25 = 1;
        }

        v26 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v16 connectedItem:v31 chirality:v25];
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

- (void)prepareGeometryForInsertingBoardItems:(id)a3 withInsertionContext:(id)a4
{
  v5 = a3;
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v7 = [v6 topLevelContainerInfoForEditing];
  v8 = objc_opt_class();
  v14 = sub_100303920(v7, v8, 1, v9, v10, v11, v12, v13, &OBJC_PROTOCOL___CRLContainerInfo);

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = sub_100014370(v15, v14);
    if (v16 && [(CRLCanvasEditorHelper *)self canInsertBoardItems:v5 intoGroup:v16])
    {
      memset(&v35, 0, sizeof(v35));
      v17 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      v18 = [v17 topLevelContainerRepForEditing];
      v19 = [v18 layout];
      v20 = v19;
      if (v19)
      {
        [v19 transformInRoot];
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
      v21 = v5;
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
            v27 = [v26 geometry];
            v34 = v35;
            v28 = [v27 geometryByAppendingTransform:&v34];
            [v26 setGeometry:v28];
          }

          v23 = [v21 countByEnumeratingWithState:&v29 objects:v36 count:16];
        }

        while (v23);
      }
    }
  }
}

- (void)p_fixupGeometryForInsertingBoardItems:(id)a3 intoContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = sub_100014370(v8, v7);
    v10 = objc_opt_class();
    v11 = sub_100014370(v10, v7);
    if (v11 && -[CRLCanvasEditorHelper canInsertBoardItems:intoGroup:](self, "canInsertBoardItems:intoGroup:", v6, v11) || [v9 canInsert:v6])
    {
      v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
      v13 = [(CRLCanvasEditorHelper *)self canvasEditor];
      v14 = [v13 selectionPathWithInfo:v7];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1002A44DC;
      v15[3] = &unk_101850D58;
      v16 = v9;
      v17 = v6;
      [v12 forLayoutNearestVisibleRectForInfosForSelectionPath:v14 performBlock:v15];
    }
  }
}

- (void)prepareGeometryForPastingBoardItems:(id)a3 fromPasteboard:(id)a4 intoContainer:(id)a5 useOriginalPositions:(BOOL)a6
{
  v6 = a6;
  v32 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v13 = v12;
  if (v6)
  {
    v14 = [v32 name];
    v15 = [v14 isEqualToString:@"com.apple.freeform.Canvas.CRLCanvasRepNoPositionOffsetPasteboardName"];

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->mCanvasEditor);
      v21 = objc_alloc([WeakRetained boardItemPositionerClass]);
      v22 = [(CRLCanvasEditorHelper *)self canvasEditor];
      v16 = [v21 initWithCanvasEditor:v22];

      [v16 setAvoidCollisions:0];
    }
  }

  else
  {
    v17 = [v12 infosForCurrentSelectionPath];
    if ([v17 count])
    {
      [(CRLCanvasEditorHelper *)self p_centerOfBoardItems:v17];
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
    v31 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v16 = [v30 initWithCanvasEditor:v31 targetCenter:1 validGeometries:{v27, v28}];

    [v16 setShouldPreserveRelativePositions:1];
  }

  [v16 positionBoardItems:v11];
  [(CRLCanvasEditorHelper *)self p_fixupGeometryForInsertingBoardItems:v11 intoContainer:v10];
}

- (CGPoint)p_centerOfBoardItems:(id)a3
{
  v4 = a3;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [v4 countByEnumeratingWithState:&v40 objects:v54 count:16];
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
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        v14 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v15 = [v14 layoutForInfo:v13];

        if (v15)
        {
          v16 = [v15 pureGeometryInRoot];
          [v16 frame];
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
      v10 = [v4 countByEnumeratingWithState:&v40 objects:v54 count:16];
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

- (id)insertCopiesOfInfos:(id)a3 forDuplicatingDragOnRep:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v9 = [v8 interactiveCanvasController];
  v10 = [v9 editorController];
  v11 = [v9 topLevelZOrderedSiblingsOfInfos:v6];
  v12 = [v11 crl_arrayWithObjectsInSet:v6];

  v13 = [v9 editingCoordinator];
  v14 = [v13 boardItemFactory];
  v15 = [v14 makeDuplicateOfBoardItems:v12];

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
  [v10 enumerateEditorsOnStackUsingBlock:v19];
  [v21[5] insertBoardItems:v15 withInsertionContext:v16 postProcessBlock:0];
  v17 = [NSSet setWithArray:v15];
  _Block_object_dispose(&v20, 8);

  return v17;
}

- (void)enterQuickSelectMode:(id)a3
{
  v3 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v4 = [v3 interactiveCanvasController];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];

  [v6 enterQuickSelectMode];
}

- (void)presentAlignmentTools:(id)a3
{
  v3 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v4 = [v3 interactiveCanvasController];
  v5 = [v4 layerHost];
  v6 = [v5 asiOSCVC];

  [v6 presentAlignmentTools];
}

- (void)bringToFront:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v4 arrangeInspectorDelegate];
  [v3 moveToFrontForArrangeInspector];
}

- (void)bringForward:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v4 arrangeInspectorDelegate];
  [v3 moveFrontForArrangeInspector];
}

- (void)sendBackward:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v4 arrangeInspectorDelegate];
  [v3 moveBackForArrangeInspector];
}

- (void)sendToBack:(id)a3
{
  v4 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v4 arrangeInspectorDelegate];
  [v3 moveToBackForArrangeInspector];
}

- (id)layoutsForAlignAndDistribute
{
  v3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v4 = [(CRLCanvasEditorHelper *)self editingCoordinator];
  v5 = [v4 mainBoard];

  v6 = [v3 selectionModelTranslator];
  v7 = [v3 editorController];
  v8 = [v7 selectionPath];
  v9 = [v6 unlockedBoardItemsForSelectionPath:v8];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002A53DC;
  v16[3] = &unk_101850DE8;
  v16[4] = v5;
  v10 = [NSPredicate predicateWithBlock:v16];
  v11 = [v9 filteredSetUsingPredicate:v10];

  v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v13 = [v12 layoutController];
  v14 = [v13 layoutsForInfos:v11];

  return v14;
}

- (void)alignDrawablesByEdge:(int)a3
{
  v3 = *&a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  [(CRLCommandSelectionBehavior *)v9 setSelectionFlags:[(CRLCommandSelectionBehavior *)v9 selectionFlags]| 4];
  [v6 openGroupWithSelectionBehavior:v9];
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

  [v6 setCurrentGroupActionString:v12];
  v13 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v14 = [v13 hasSelectedInfosInMultipleContainers];

  v15 = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
  v72 = 0;
  [(CRLCanvasEditorHelper *)self willRepositionLayouts:v15 additionalData:&v72];
  v62 = v6;
  v63 = self;
  v60 = v12;
  if ([v15 count] == 1)
  {
    v16 = [v15 anyObject];
    v17 = [v16 parentLayoutForProvidingGuides];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(CRLCanvasEditorHelper *)self canvasEditor];
      [v18 interactiveCanvasController];
      v19 = v59 = v16;
      v20 = [v19 canvas];
      [v20 unscaledSize];

      v21 = sub_10011ECB4();
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [(CRLCanvasEditorHelper *)self canvasEditor];
      v29 = [v28 interactiveCanvasController];
      v30 = [v29 canvas];
      v31 = [v30 isAnchoredAtRight];

      v16 = v59;
      if (v31)
      {
        v21 = v21 - v25;
      }
    }

    else
    {
      [v17 alignmentFrame];
      v21 = sub_10011ECB4();
      v23 = v36;
      v25 = v37;
      v27 = v38;
    }
  }

  else
  {
    [(CRLCanvasEditorHelper *)self p_boundingBoxForLayouts:v15 inRootSpace:v14];
    v21 = v32;
    v23 = v33;
    v25 = v34;
    v27 = v35;
  }

  v39 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(v15, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v40 = v15;
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
        [(CRLCanvasEditorHelper *)v63 p_offsetToMoveLayout:v45 edge:v3 toOffset:v14 inRootSpace:sub_10011EC1C(v3, v21, v23, v25, v27)];
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

  [(CRLCanvasEditorHelper *)v63 didRepositionLayouts:v47 additionalData:&v72];
  [v62 closeGroup];
}

- (void)distributeDrawablesByEdge:(int)a3
{
  v3 = *&a3;
  v5 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v6 = [v5 commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v72 = self;
  v8 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  [v6 openGroupWithSelectionBehavior:v9];
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

  v70 = v6;
  [v6 setCurrentGroupActionString:v12];
  v13 = [(CRLCanvasEditorHelper *)v72 layoutsForAlignAndDistribute];
  v84 = 0;
  [(CRLCanvasEditorHelper *)v72 willRepositionLayouts:v13 additionalData:&v84];
  v14 = [(CRLCanvasEditorHelper *)v72 interactiveCanvasController];
  v15 = [v14 hasSelectedInfosInMultipleContainers];

  v16 = [v13 allObjects];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1002A5EA8;
  v81[3] = &unk_101850E08;
  v83 = v15;
  v82 = v3;
  v17 = [v16 sortedArrayUsingComparator:v81];

  v18 = [v17 count];
  v19 = [v17 objectAtIndexedSubscript:0];
  v20 = v19;
  v71 = v15;
  v68 = v12;
  v69 = v9;
  if (v15)
  {
    [v19 alignmentFrameInRoot];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [v17 lastObject];
    [v29 alignmentFrameInRoot];
  }

  else
  {
    [v19 alignmentFrame];
    v22 = v34;
    v24 = v35;
    v26 = v36;
    v28 = v37;

    v29 = [v17 lastObject];
    [v29 alignmentFrame];
  }

  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;

  v42 = sub_10011EC1C(v3, v22, v24, v26, v28);
  v43 = v3;
  v44 = sub_10011EC1C(v3, v38, v39, v40, v41);
  v67 = v13;
  v45 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(v13, "count")}];
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
        [(CRLCanvasEditorHelper *)v72 p_offsetToMoveLayout:v53 edge:v43 toOffset:v71 inRootSpace:v42 + v50 * v49];
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

  [(CRLCanvasEditorHelper *)v72 didRepositionLayouts:v67 additionalData:&v84];
  [v70 closeGroup];
}

- (void)distributeDrawablesEvenly
{
  v3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v4 = [v3 hasSelectedInfosInMultipleContainers];

  v5 = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
  v129 = self;
  [(CRLCanvasEditorHelper *)self p_boundingBoxForLayouts:v5 inRootSpace:v4];
  v10 = sub_100120414(v6, v7, v8, v9);
  v12 = v11;
  x = CGPointZero.x;
  y = CGPointZero.y;
  v15 = [v5 count];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v16 = v5;
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
        if (v4)
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
  v38 = [(CRLCanvasEditorHelper *)v129 interactiveCanvasController];
  v39 = [v38 commandController];

  v40 = +[NSBundle mainBundle];
  v41 = [v40 localizedStringForKey:@"Distribute Evenly" value:0 table:@"UndoStrings"];

  if ((v35 == 0.0 || fabs(v35) < 0.00999999978) && (v37 == 1.0 || fabs(v37 + -1.0) < 0.00999999978))
  {
    [v39 openGroup];
    [v39 setCurrentGroupActionString:v41];
    v121 = v129;
    v122 = 4;
LABEL_55:
    [(CRLCanvasEditorHelper *)v121 distributeDrawablesByEdge:v122];
    [v39 closeGroup];
    goto LABEL_56;
  }

  if ((v35 == 1.0 || fabs(v35 + -1.0) < 0.00999999978) && (v37 == 0.0 || fabs(v37) < 0.00999999978))
  {
    [v39 openGroup];
    [v39 setCurrentGroupActionString:v41];
    v121 = v129;
    v122 = 1;
    goto LABEL_55;
  }

  v42 = [CRLCanvasCommandSelectionBehavior alloc];
  v43 = [(CRLCanvasEditorHelper *)v129 canvasEditor];
  v44 = [(CRLCanvasCommandSelectionBehavior *)v42 initWithCanvasEditor:v43 type:2];

  v125 = v44;
  [v39 openGroupWithSelectionBehavior:v44];
  v126 = v41;
  [v39 setCurrentGroupActionString:v41];
  v142 = 0;
  [(CRLCanvasEditorHelper *)v129 willRepositionLayouts:v16 additionalData:&v142];
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
        if (v4)
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

  v63 = [v45 allObjects];
  v64 = [v63 sortedArrayUsingComparator:&stru_101850E48];

  v65 = [v64 count];
  v66 = [v64 objectAtIndex:0];
  v67 = [v64 lastObject];
  v68 = [v66 first];
  v69 = v68;
  if (v4)
  {
    [v68 frameInRoot];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v78 = [v67 first];
    [v78 frameInRoot];
  }

  else
  {
    [v68 frame];
    v71 = v83;
    v73 = v84;
    v75 = v85;
    v77 = v86;

    v78 = [v67 first];
    [v78 frame];
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

        v106 = [*(*(&v134 + 1) + 8 * k) first];
        [(CRLCanvasEditorHelper *)v129 p_offsetToMoveCenterOfLayout:v106 toPoint:v4 inRootSpace:v98, v100];
        v107 = [NSValue valueWithCGPoint:?];
        [v91 setObject:v107 forKey:v106];

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

        v114 = [*(*(&v130 + 1) + 8 * m) first];
        v115 = [v91 objectForKeyedSubscript:v114];
        [v115 CGPointValue];
        v117 = v116;
        v119 = v118;

        v120 = [v114 newCommandToMoveByOffset:v91 whenDistributingLayoutsByOffsets:{v117, v119}];
        if (v120)
        {
          [v39 enqueueCommand:v120];
        }
      }

      v111 = [v109 countByEnumeratingWithState:&v130 objects:v147 count:16];
    }

    while (v111);
  }

  [(CRLCanvasEditorHelper *)v129 didRepositionLayouts:obj additionalData:&v142];
  [v39 closeGroup];

  v16 = v127;
  v41 = v126;
LABEL_56:
}

- (CGRect)p_boundingBoxForLayouts:(id)a3 inRootSpace:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        if (v4)
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
      v11 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
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

- (CGPoint)p_offsetToMoveCenterOfLayout:(id)a3 toPoint:(CGPoint)a4 inRootSpace:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = v8;
  if (v5)
  {
    [v8 alignmentFrameInRoot];
  }

  else
  {
    [v8 alignmentFrame];
  }

  v14 = sub_100120414(v10, v11, v12, v13);
  v15 = sub_10011F31C(x, y, v14);
  tx = v15;
  ty = v16;
  if (v5)
  {
    memset(&v25, 0, sizeof(v25));
    CGAffineTransformMakeTranslation(&v24, v15, v16);
    v19 = [v9 parent];
    v20 = v19;
    if (v19)
    {
      [v19 transformInRoot];
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

- (CGPoint)p_offsetToMoveLayout:(id)a3 edge:(int)a4 toOffset:(double)a5 inRootSpace:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  v9 = a3;
  v10 = v9;
  if (v6)
  {
    [v9 alignmentFrameInRoot];
  }

  else
  {
    [v9 alignmentFrame];
  }

  v15 = a5 - sub_10011EC1C(v8, v11, v12, v13, v14);
  v16 = [CRLSwappableAxesGeometry geometryWithXAxisAlongEdge:v8];
  [v16 pointX:{v15, 0.0}];
  tx = v17;
  [v16 pointY:{v15, 0.0}];
  ty = v19;
  if (v6)
  {
    memset(&v27, 0, sizeof(v27));
    CGAffineTransformMakeTranslation(&v26, tx, v19);
    v21 = [v10 parent];
    v22 = v21;
    if (v21)
    {
      [v21 transformInRoot];
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
  v2 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v3 = [v2 interactiveCanvasController];
  v4 = [v3 layerHost];
  v5 = [v4 asUIKitHost];

  LOBYTE(v2) = [v5 allowsCanvasScrollingFromKeyboard];
  return v2;
}

- (CGPoint)contentOffsetForDocumentNavigationType:(unint64_t)a3
{
  v4 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [v4 visibleBoundsRectUsingSizeOfEnclosingScrollView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 viewScale];
  v14 = v13;
  [v4 contentOffset];
  v16 = v15;
  v18 = v17;
  if (a3 > 2)
  {
    switch(a3)
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

  switch(a3)
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

- (void)p_scrollCanvasForScrollType:(unint64_t)a3
{
  v10 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [(CRLCanvasEditorHelper *)self contentOffsetForDocumentNavigationType:a3];
  v6 = v5;
  v8 = v7;
  [v10 viewScale];
  [v10 clampedUnscaledContentOffset:v6 forViewScale:{v8, v9}];
  [v10 setContentOffset:1 scrollOptions:?];
}

- (void)scrollCanvasUp:(id)a3
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:0];
  }
}

- (void)scrollCanvasDown:(id)a3
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:1];
  }
}

- (void)scrollCanvasLeft:(id)a3
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:2];
  }
}

- (void)scrollCanvasRight:(id)a3
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:3];
  }
}

- (void)scrollCanvasPageDown:(id)a3
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:5];
  }
}

- (void)scrollCanvasPageUp:(id)a3
{
  if ([(CRLCanvasEditorHelper *)self p_allowsCanvasScrollingFromKeyboard])
  {

    [(CRLCanvasEditorHelper *)self p_scrollCanvasForScrollType:4];
  }
}

- (void)zoomIn:(id)a3
{
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = [v6 layerHost];
  v4 = [v3 asiOSCVC];

  v5 = [[_TtC8Freeform16CRLiOSZoomHelper alloc] initWithInteractiveCanvasController:v6 zoomTrackerDelegate:v4];
  [(CRLiOSZoomHelper *)v5 incrementZoomLevel];
}

- (void)zoomOut:(id)a3
{
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v3 = [v6 layerHost];
  v4 = [v3 asiOSCVC];

  v5 = [[_TtC8Freeform16CRLiOSZoomHelper alloc] initWithInteractiveCanvasController:v6 zoomTrackerDelegate:v4];
  [(CRLiOSZoomHelper *)v5 decrementZoomLevel];
}

- (void)arrowKeyReceivedInDirection:(unint64_t)a3 withModifierKeys:(id)a4
{
  v32 = a4;
  v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v7 = [v6 editingDisabled];

  if ((v7 & 1) == 0)
  {
    v8 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v9 = [v8 layerHost];
    v10 = [v9 asiOSCVC];
    [v10 hideEditMenu];

    v11 = [v32 rawValue];
    v12 = +[_TtC8Freeform27CRLTextInputModifierKeyMask none];
    v13 = [v12 rawValue];

    if (v11 == v13)
    {
      [(CRLCanvasEditorHelper *)self moveSelections:a3];
      goto LABEL_38;
    }

    v14 = [v32 rawValue];
    v15 = +[_TtC8Freeform27CRLTextInputModifierKeyMask shift];
    v16 = [v15 rawValue];

    if (v14 == v16)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v17 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v17;
          v19 = 0.0;
          v25 = -10.0;
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_38;
          }

          v17 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v17;
          v19 = 0.0;
          v25 = 10.0;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v17 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v17;
          v19 = -10.0;
        }

        else
        {
          if (a3 != 2)
          {
            goto LABEL_38;
          }

          v17 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v17;
          v19 = 10.0;
        }

        v25 = 0.0;
      }

      [v17 moveSelectionByDelta:{v19, v25}];
      goto LABEL_37;
    }

    v20 = [v32 rawValue];
    v21 = +[_TtC8Freeform27CRLTextInputModifierKeyMask option];
    v22 = [v21 rawValue];

    if (v20 == v22)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v23;
          v24 = 0.0;
          v31 = -1.0;
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_38;
          }

          v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v23;
          v24 = 0.0;
          v31 = 1.0;
        }

        goto LABEL_36;
      }

      if (a3 == 1)
      {
        v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = v23;
        v24 = -1.0;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_38;
        }

        v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = v23;
        v24 = 1.0;
      }
    }

    else
    {
      v26 = [v32 rawValue];
      v27 = +[_TtC8Freeform27CRLTextInputModifierKeyMask option];
      v28 = [v27 rawValue];
      v29 = +[_TtC8Freeform27CRLTextInputModifierKeyMask shift];
      v30 = [v29 rawValue] | v28;

      if (v26 != v30)
      {
        goto LABEL_38;
      }

      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v23;
          v24 = 0.0;
          v31 = -10.0;
        }

        else
        {
          if (a3 != 4)
          {
            goto LABEL_38;
          }

          v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
          v18 = v23;
          v24 = 0.0;
          v31 = 10.0;
        }

        goto LABEL_36;
      }

      if (a3 == 1)
      {
        v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = v23;
        v24 = -10.0;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_38;
        }

        v23 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
        v18 = v23;
        v24 = 10.0;
      }
    }

    v31 = 0.0;
LABEL_36:
    [v23 duplicateSelectionMovingByDelta:{v24, v31}];
LABEL_37:
  }

LABEL_38:
}

- (void)moveSelections:(unint64_t)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v3 = -1.0;
    }

    else
    {
      if (a3 != 4)
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
    if (a3 == 1)
    {
      v4 = -1.0;
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v4 = 1.0;
    }
  }

  v5 = [(CRLCanvasEditorHelper *)self keyboardMovementManipulator];
  [v5 moveSelectionByDelta:{v4, v3}];
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v12 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v11 = [v12 layerHost];
  [v11 presentMediaCompatibilityAlertWithReasons:a3 forMediaType:a4 forSingleMediaObject:v6 completionHandler:v10];
}

- (id)repToHighlightForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v9 = [v8 hitRep:{x, y}];

  v10 = [v9 repForSelecting];
  if (v10 && [(CRLCanvasEditorHelper *)self wantsToHighlightRep:v10 forDragOperationWithDragInfo:v7 atPoint:0 allowNonPlaceholderReplacement:x, y])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4
{
  if (!self->mDragAndDropHighlightDecorator)
  {
    v5 = [CRLDragAndDropCanvasHighlightDecorator alloc];
    v6 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v7 = [(CRLDragAndDropCanvasHighlightDecorator *)v5 initWithInteractiveCanvasController:v6];
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

- (BOOL)wantsToHighlightRep:(id)a3 forDragOperationWithDragInfo:(id)a4 atPoint:(CGPoint)a5 allowNonPlaceholderReplacement:(BOOL)a6
{
  v8 = a3;
  v9 = a4;
  if (v8 && ([v8 isLocked] & 1) == 0 && (objc_msgSend(v8, "isInDynamicOperation") & 1) == 0 && objc_msgSend(v9, "numberOfDraggingItems") == 1)
  {
    v10 = [v9 promisedUTIs];
    v11 = [v9 itemSource];
    if ([v11 hasNativeBoardItems] && (objc_msgSend(v11, "hasSingleNativeImageBoardItem") & 1) == 0 && !objc_msgSend(v11, "hasSingleNativeMovieBoardItem"))
    {
      v24 = 0;
LABEL_26:

      goto LABEL_13;
    }

    v12 = objc_opt_class();
    v13 = sub_100014370(v12, v8);
    v14 = objc_opt_class();
    v15 = sub_100014370(v14, v8);
    v16 = objc_opt_class();
    v17 = sub_100014370(v16, v8);
    v18 = objc_opt_class();
    v19 = sub_100014370(v18, v8);
    v30 = v19;
    v31 = v13;
    if (!v13)
    {
      v20 = v19;
      if (v15 && [v15 canBeUsedForImageMask])
      {
        v21 = v11;
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

    v21 = v11;
    v22 = v15;
    +[CRLBoardItemImporter supportedImageFileUTTypes];
    v27 = v26 = v10;
    +[CRLIngestionTypes supportedMovieUTTypes];
    v29 = v28 = v17;
    v23 = [v27 arrayByAddingObjectsFromArray:v29];

    v17 = v28;
    v10 = v26;
LABEL_16:
    if (v23)
    {
      v15 = v22;
      v11 = v21;
      v20 = v30;
      if (!v30 || a6 || [v30 shouldAllowReplacementFromDrop])
      {
        v24 = [v10 crl_conformsToAnyUTType:{v23, v30}];
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
      v11 = v21;
      v20 = v30;
      v13 = v31;
    }

    goto LABEL_25;
  }

  v24 = 0;
LABEL_13:

  return v24;
}

- (BOOL)insertBoardItemsFromDragAndDrop:(id)a3 atPoint:(CGPoint)a4 onRep:(id)a5 insertionContext:(id)a6 alreadyPositionedInputInfos:(BOOL)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = v14;
  v17 = v15;
  v18 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v19 = [v18 commandController];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"Insert" value:0 table:@"UndoStrings"];

  v22 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  [v22 endEditing];

  [v19 openGroup];
  [v19 enableProgressiveEnqueuingInCurrentGroup];
  v23 = [v13 count];
  v24 = 0;
  if (!v16 || v23 != 1)
  {
    goto LABEL_51;
  }

  v25 = [v16 info];
  if (!v25)
  {
    v24 = 0;
    goto LABEL_51;
  }

  v26 = v25;
  v124 = a7;
  v27 = [v16 isLocked];

  if ((v27 & 1) == 0)
  {
    v123 = v21;
    v116 = v17;
    v28 = [v13 lastObject];
    v29 = objc_opt_class();
    v118 = v16;
    v30 = [v16 info];
    v31 = sub_100014370(v29, v30);

    v32 = objc_opt_class();
    v33 = sub_100014370(v32, v28);
    v34 = objc_opt_class();
    v121 = sub_100014370(v34, v28);
    v35 = objc_opt_class();
    v120 = v28;
    v36 = sub_100014370(v35, v28);
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
      v47 = [v39 maskInfo];

      if (!v47)
      {
        v48 = [_TtC8Freeform17CRLCommandSetMask alloc];
        v49 = [v39 defaultMaskInfo];
        v50 = [(CRLCommandSetMask *)v48 initWithImageItem:v39 maskInfo:v49];

        [v19 enqueueCommand:v50];
      }

      v51 = [_TtC8Freeform22CRLCommandReplaceImage alloc];
      v52 = [v37 imageAssetPayload];
      v53 = [v37 thumbnailAssetPayload];
      v54 = [(CRLCommandReplaceImage *)v51 initWithImageItem:v39 imageData:v52 thumbnailData:v53];

      [v19 enqueueCommand:v54];
      v55 = +[NSBundle mainBundle];
      v56 = [v55 localizedStringForKey:@"Replace with Image" value:0 table:@"UndoStrings"];

      v24 = 0;
      v57 = 1;
      v123 = v56;
      a7 = v124;
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
      a7 = v124;
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
        v59 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
        v60 = [v59 repForInfo:v122];
        v61 = sub_100014370(v58, v60);

        if (v61 && [v61 canBeUsedForImageMask])
        {
          v62 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:0 required:0 fromDragToInsertController:0 insertFloating:0x7FFFFFFFFFFFFFFFLL targetZOrder:x, y];
          v109 = [(CRLCanvasEditorHelper *)self canvasEditor];
          v63 = [v61 info];
          v64 = [v109 selectionPathWithInfo:v63];
          v65 = [(CRLCanvasEditorHelper *)self canvasEditor];
          v66 = [v65 editorController];
          [v66 setSelectionPath:v64];

          v67 = [(CRLCanvasEditorHelper *)self canvasEditor];
          v110 = v62;
          [v67 prepareGeometryForInsertingBoardItems:v13 withInsertionContext:v62];

          v68 = [CRLCanvasCommandSelectionBehavior alloc];
          v69 = [(CRLCanvasEditorHelper *)self canvasEditor];
          v70 = [NSSet setWithObject:v120];
          v71 = [(CRLCanvasCommandSelectionBehavior *)v68 initWithCanvasEditor:v69 type:3 constructedInfos:v70];

          v72 = [NSArray arrayWithObject:v120];
          v73 = [(CRLCanvasEditorHelper *)self commandForInsertingBoardItemsIntoTopLevelContainer:v72 below:v119];

          v107 = v73;
          v108 = v71;
          [v19 enqueueCommand:v73 withSelectionBehavior:v71];
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

                [v19 enqueueCommand:*(*(&v125 + 1) + 8 * i)];
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
          a7 = v124;
        }

        else
        {
          v79 = v61;
          v57 = 0;
          v24 = 0;
          a7 = v124;
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
    v84 = [(CRLCanvasEditorHelper *)self canvasEditor];
    v85 = v36;
    v86 = v84;
    v87 = [NSSet setWithObject:v85];
    v88 = [(CRLCanvasCommandSelectionBehavior *)v83 initWithCanvasEditor:v86 type:3 constructedInfos:v87];

    v111 = v88;
    [v19 openGroupWithSelectionBehavior:v88];
    [(CRLCanvasEditorHelper *)self replaceBoardItem:v119 withBoardItem:v120];
    [v19 closeGroup];
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

          [v19 enqueueCommand:*(*(&v129 + 1) + 8 * j)];
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
        a7 = v124;
        v46 = v115;
        goto LABEL_48;
      }

      v96 = objc_opt_class();
      v94 = sub_100014370(v96, v117);
      v97 = [v94 isAudioOnly];
      v98 = +[NSBundle mainBundle];
      v99 = v98;
      v44 = 0;
      if (v97)
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

    a7 = v124;
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
  a7 = v124;
LABEL_51:
  if (!a7)
  {
    v101 = [(CRLCanvasEditorHelper *)self canvasEditor];
    [v101 prepareGeometryForInsertingBoardItems:v13 withInsertionContext:v17];
  }

  v102 = [(CRLCanvasEditorHelper *)self canvasEditor];
  [v102 insertBoardItems:v13 withInsertionContext:v17 postProcessBlock:0];

LABEL_54:
  [v19 setCurrentGroupActionString:v21];
  [v19 closeGroup];
  if (v24)
  {
    v103 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    [v103 layoutIfNeeded];

    v104 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v105 = [v104 repForInfo:v24];

    [v105 editMaskWithHUD:1];
  }

  return 1;
}

- (void)addContextualMenuItemsToArray:(id)a3
{
  v7 = a3;
  if ([(CRLCanvasEditorHelper *)self canPerformMaskWithShapeWithSender:0])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Mask with Shape" value:0 table:0];

    v6 = [[UIMenuItem alloc] initWithTitle:v5 action:"maskWithShape:"];
    [v7 addObject:v6];
  }
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
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
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v27 + 1) + 8 * i);
              v21 = [v20 title];
              if ([v21 length])
              {
                v22 = [v20 state];

                if (v22 != 1)
                {
                  continue;
                }

                v21 = [v20 title];
                [v7 addObject:v21];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (!v17)
            {
              v11 = v24;
              v10 = v25;
              goto LABEL_22;
            }
          }
        }

        v15 = [v13 title];
        if ([v15 length])
        {
          v23 = [v13 state];

          if (v23 != 1)
          {
            goto LABEL_23;
          }

          v15 = [v13 title];
          [v7 addObject:v15];
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

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v4 = a3;
  v5 = [v4 count];
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
  v142 = v4;
  v139 = v5;
  [v4 insertObject:v15 atIndex:v5];

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

  v35 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v36 = [v35 freehandDrawingToolkit];
  LODWORD(v15) = [v36 isInDrawingMode];

  v37 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v38 = [v37 editorController];
  v39 = [v38 mostSpecificCurrentEditorOfClass:objc_opt_class()];

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

  v45 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v46 = [v45 editorController];
  v47 = [v46 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  v141 = v47;
  if (v47)
  {
    v48 = [v47 makeSelectionSpecificMenuElements];
    v49 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v50 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
    v51 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
    if ([v48 count])
    {
      v52 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v48];
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
  v54 = [v49[62] mainBundle];
  v55 = [v54 localizedStringForKey:@"Copy Style" value:0 table:0];
  v56 = [v50[90] imageNamed:@"sf_tb_style_copy"];
  v140 = [v53 commandWithTitle:v55 image:v56 action:"copyStyle:" propertyList:0];

  v57 = v51[64];
  v58 = [v49[62] mainBundle];
  v59 = [v58 localizedStringForKey:@"Paste Style" value:0 table:0];
  v60 = [v50[90] imageNamed:@"sf_tb_style_paste"];
  v138 = [v57 commandWithTitle:v59 image:v60 action:"pasteStyle:" propertyList:0];

  v153[0] = v140;
  v153[1] = v138;
  v61 = [NSArray arrayWithObjects:v153 count:2];
  v62 = [UIMenu menuWithTitle:&stru_1018BCA28 image:0 identifier:0 options:1 children:v61];

  v63 = v51[64];
  v64 = [v49[62] mainBundle];
  v65 = [v64 localizedStringForKey:@"Save as Insert Style" value:0 table:0];
  v66 = [v63 commandWithTitle:v65 image:0 action:"saveDefaultInsertionPreset:" propertyList:0];

  v67 = [v49[62] mainBundle];
  v68 = [v67 localizedStringForKey:@"Style" value:0 table:0];
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

  v83 = [v141 aspectRatioLockControlState];
  [v82 setState:{objc_msgSend(v83, "stateValue")}];
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
    v101 = [v141 boardItems];
    v102 = [v101 count];

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

  v122 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v123 = [v122 freehandDrawingToolkit];
  v124 = [v123 isInDrawingMode];

  if (v124)
  {
    v125 = +[NSBundle mainBundle];
    v126 = [v125 localizedStringForKey:@"Select All" value:0 table:0];
    v127 = [UIImage systemImageNamed:@"square.dashed"];
    v128 = [UICommand commandWithTitle:v126 image:v127 action:"selectAll:" propertyList:0];

    [v142 insertObject:v128 atIndex:v121++];
  }

  v129 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if ([v129 documentIsSharedReadOnly])
  {
    goto LABEL_31;
  }

  v130 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if (![_TtC8Freeform29CRLGenerativePlaygroundHelper iccHasGenerativePlaygroundInputSelection:v130])
  {

LABEL_31:
    goto LABEL_32;
  }

  v131 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v132 = [_TtC8Freeform29CRLGenerativePlaygroundHelper shouldShowGP:v131];

  if (v132)
  {
    v133 = +[NSBundle mainBundle];
    v134 = [v133 localizedStringForKey:@"Add to Playground" value:0 table:0];
    v135 = [UIImage systemImageNamed:@"apple.image.playground"];
    v129 = [UICommand commandWithTitle:v134 image:v135 action:"presentGenerativePlaygroundForCurrentSelection:" propertyList:0];

    v136 = [v142 indexOfObjectPassingTest:&stru_101850E88];
    if (v136 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v137 = v121;
    }

    else
    {
      v137 = v136 + 1;
    }

    [v142 insertObject:v129 atIndex:v137];
    goto LABEL_31;
  }

LABEL_32:
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  v76 = [v5 count];
  v6 = [(CRLCanvasEditorHelper *)self layoutsForAlignAndDistribute];
  v7 = [v6 count];

  v8 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformUngroupActionWithSender:@"CRLMiniFormatter"];
  v9 = [(CRLCanvasEditorHelper *)self canvasEditorCanPerformGroupActionWithSender:@"CRLMiniFormatter"];
  v10 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v75 = [v10 infosForCurrentSelectionPath];

  p_superclass = &OBJC_METACLASS___CRLPulseAnimationController.superclass;
  v77 = v5;
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
          v5 = v77;
        }

        else
        {
          v23 = v76;
          v5 = v77;
          if (v74 == 1)
          {
            v33 = +[NSBundle mainBundle];
            v34 = [v33 localizedStringForKey:@"Ungroup selected objects" value:0 table:0];
            [v18 setToolTip:v34];

            v5 = v77;
          }
        }

        goto LABEL_29;
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v24 = v75;
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
            v5 = v77;
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
    v5 = v77;
    p_superclass = (&OBJC_METACLASS___CRLPulseAnimationController + 8);
LABEL_29:
    [v5 addObject:v18];
    v76 = v23 + 1;
  }

  if ([(CRLCanvasEditorHelper *)self canvasEditorCanPerformDuplicateAction:"duplicate:" withSender:@"CRLMiniFormatter"]== 1)
  {
    v35 = v5;
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
    if ([v75 count] == 1)
    {
      v68 = [v75 anyObject];
      v69 = [v68 isMemberOfClass:objc_opt_class()];

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

- (void)contextMenuDidHideForContextMenuController:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditorHelper *)self contextMenuController];

  if (v5 == v4)
  {
    [(CRLCanvasEditorHelper *)self setContextMenuController:0];

    [(CRLCanvasEditorHelper *)self setCustomPasteMenuDisplayed:0];
  }
}

- (id)shapeInfoToBeginEditing
{
  v3 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v5 = [v3 selectionModelTranslator];
  v6 = [(CRLCanvasEditorHelper *)self canvasEditor];
  v7 = [v4 textInputEditor];
  if (v7 == v6)
  {
    v9 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
    v10 = [v9 editorController];
    v11 = [v10 selectionPath];
    v12 = [v5 boardItemsForSelectionPath:v11];

    if ([v12 count] == 1)
    {
      v13 = [v12 crl_onlyObject];
      if ([v13 locked])
      {
        v8 = 0;
      }

      else
      {
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v13);
        if (v15)
        {
          v16 = objc_opt_class();
          v17 = [v3 repForInfo:v15];
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

- (void)beginEditingOnKeyInputWithString:(id)a3
{
  v10 = a3;
  v4 = objc_opt_class();
  v5 = [(CRLCanvasEditorHelper *)self shapeInfoToBeginEditing];
  v6 = sub_100014370(v4, v5);

  if (v6)
  {
    v7 = [v6 textStorage];
    v8 = [v7 range];
    [(CRLCanvasEditorHelper *)self p_beginEditingTextShape:v6 replacementRange:v8 withText:v9, v10];
  }
}

- (void)p_beginEditingTextShape:(id)a3 replacementRange:(_NSRange)a4 withText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [(CRLCanvasEditorHelper *)self interactiveCanvasController];
  if ([_TtC8Freeform11CRLWPEditor canEditTextIn:v9 using:v11])
  {
    v12 = [v11 selectionModelTranslator];
    v13 = [v9 textStorage];
    v14 = [v12 selectionPathForRange:location onStorage:{length, v13}];

    v15 = [v11 editorController];
    [v15 setSelectionPath:v14];

    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_1002A4F20;
    v25 = sub_1002A4F30;
    v26 = 0;
    v16 = [v11 editorController];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1002AA978;
    v20[3] = &unk_101840680;
    v20[4] = &v21;
    [v16 enumerateEditorsOnStackUsingBlock:v20];

    v17 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:location, length];
    v18 = [v22[5] textInputReceiver];
    v19 = [[_TtC8Freeform15CRLWPTextString alloc] initWithString:v10];
    [v18 replace:v17 with:v19];

    _Block_object_dispose(&v21, 8);
  }
}

- (void)updateTableAnchorHintWhenGrouping:(id)a3 groupLayout:(id)a4
{
  type metadata accessor for CRLBoardItem(0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_100FFEE40(v6, v7);
}

- (BOOL)shouldReleaseChildItemsFromTableWhenUngrouping:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_101000620(v4);

  return self & 1;
}

- (id)commandToAnchorChildItemWhenUngrouping:(id)a3 childItem:(id)a4 childItemGeometry:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_101000B8C(v8, v9, v10);

  return v12;
}

- (void)donateBoardItemsInsertion:(id)a3
{
  type metadata accessor for CRLBoardItem(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_101001434(v4);
}

@end