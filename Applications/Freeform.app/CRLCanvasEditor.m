@interface CRLCanvasEditor
+ (BOOL)physicalKeyboardIsSender:(id)a3;
- (BOOL)canGroupWithSender:(id)a3;
- (BOOL)canPasteWithPasteboard:(id)a3 sender:(id)a4;
- (BOOL)canPasteWithSender:(id)a3;
- (BOOL)canSelectAllWithSender:(id)a3;
- (BOOL)canUngroupWithSender:(id)a3;
- (BOOL)canvasEditorCanCopyWithSender:(id)a3;
- (BOOL)canvasEditorCanCutWithSender:(id)a3;
- (BOOL)canvasEditorCanDeleteWithSender:(id)a3;
- (BOOL)canvasEditorCanDeselectAllWithSender:(id)a3;
- (BOOL)canvasEditorCanOptionDragDuplicateWithSender:(id)a3;
- (BOOL)canvasEditorCanPasteWithSender:(id)a3;
- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)insertBoardItemsFromDragAndDrop:(id)a3 atPoint:(CGPoint)a4 onRep:(id)a5 insertionContext:(id)a6 alreadyPositionedInputInfos:(BOOL)a7;
- (BOOL)isLayoutSelectable:(id)a3;
- (BOOL)shouldBeginTextInputWith:(id)a3;
- (BOOL)shouldPreventQuickSelect;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5;
- (BOOL)wantsToHighlightRep:(id)a3 forDragOperationWithDragInfo:(id)a4 atPoint:(CGPoint)a5 allowNonPlaceholderReplacement:(BOOL)a6;
- (CGPath)newDragAndDropHighlightPathWithInset:(double)a3;
- (CGRect)p_boundingRectForPastingBoardItems:(id)a3;
- (CGSize)sizeForInsertingMediaOfSize:(CGSize)a3;
- (CRLArrangeInspectorDelegate)arrangeInspectorDelegate;
- (CRLCanvasEditor)initWithInteractiveCanvasController:(id)a3;
- (CRLCanvasSelection)canvasSelection;
- (CRLEditorController)editorController;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLPasteboardController)pasteboardController;
- (NSArray)infosToConnect;
- (NSSet)infosForSelectAllInRoot;
- (_TtC8Freeform21CRLConnectionLineItem)connectionLineItemToUseForConnecting;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)commandForInsertingBoardItems:(id)a3 below:(id)a4 withOffset:(unint64_t)a5;
- (id)createArrangeInspectorDelegate;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (id)p_commandForPastingProvidedBoardItems:(id)a3 withPasteboard:(id)a4 sender:(id)a5 hasValidGeometries:(BOOL)a6 allowPositionChange:(BOOL)a7;
- (id)p_filterNonDisplayedInfos:(id)a3;
- (id)p_nextInfoInTabSequence:(int64_t)a3;
- (id)p_pasteNativeBoardItemsFromProviders:(id)a3 withPasteboard:(id)a4 selectionPath:(id)a5 sender:(id)a6 hasValidGeometries:(BOOL)a7 allowImageReplacement:(BOOL)a8;
- (id)p_selectableInfosInInfos:(id)a3;
- (id)p_spatiallySortedSelectableBoardItems;
- (id)pasteNativeInfosFromPasteboard:(id)a3 allowImageReplacement:(BOOL)a4;
- (id)permittedActionsForReasons:(unint64_t)a3;
- (id)repToHighlightForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (id)selectionBehaviorForInsertingBoardItems:(id)a3;
- (id)selectionPathWithInfo:(id)a3;
- (id)selectionPathWithInfos:(id)a3;
- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addContextualMenuItemsToArray:(id)a3;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)alignDrawablesByBottomEdge:(id)a3;
- (void)alignDrawablesByHorizontalCenter:(id)a3;
- (void)alignDrawablesByLeftEdge:(id)a3;
- (void)alignDrawablesByRightEdge:(id)a3;
- (void)alignDrawablesByTopEdge:(id)a3;
- (void)alignDrawablesByVerticalCenter:(id)a3;
- (void)arrowKeyReceivedInDirection:(unint64_t)a3 withModifierKeys:(id)a4;
- (void)beginEditingWith:(id)a3;
- (void)bringForward:(id)a3;
- (void)bringToFront:(id)a3;
- (void)canvasInfosDidChange;
- (void)connectWithConnectionLine:(id)a3;
- (void)copy:(id)a3;
- (void)copyBoardItems:(id)a3 toPasteboard:(id)a4 asPDF:(BOOL)a5 nativeOnly:(BOOL)a6;
- (void)copyToPasteboard:(id)a3 asPDF:(BOOL)a4 nativeOnly:(BOOL)a5 withSender:(id)a6;
- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)cut:(id)a3;
- (void)delete:(id)a3;
- (void)deselectAll:(id)a3;
- (void)distributeDrawablesEvenly:(id)a3;
- (void)distributeDrawablesHorizontally:(id)a3;
- (void)distributeDrawablesVertically:(id)a3;
- (void)duplicate:(id)a3;
- (void)endEditing;
- (void)enterQuickSelectMode:(id)a3;
- (void)group:(id)a3;
- (void)hideDragAndDropUI;
- (void)hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected;
- (void)insertBacktab:(id)a3;
- (void)insertBoardItems:(id)a3 withInsertionContext:(id)a4 postProcessBlock:(id)a5;
- (void)insertNewline:(id)a3;
- (void)insertTab:(id)a3;
- (void)insertText:(id)a3 replacementRange:(_NSRange)a4;
- (void)lock:(id)a3;
- (void)mask:(id)a3;
- (void)maskWithSelection:(id)a3;
- (void)maskWithShape:(id)a3;
- (void)maskWithShapeType:(id)a3;
- (void)maskWithShapeTypeInPropertyList:(id)a3;
- (void)p_insertBoardItems:(id)a3 withInsertionContext:(id)a4 containerForInsertion:(id)a5;
- (void)p_pasteImportableBoardItemProviders:(id)a3 withPasteboard:(id)a4 selectionPath:(id)a5 sender:(id)a6;
- (void)paste:(id)a3;
- (void)pasteAsPlainText:(id)a3;
- (void)pasteValues:(id)a3;
- (void)pasteWithPasteboard:(id)a3 selectionPath:(id)a4 forceMatchStyle:(BOOL)a5 sender:(id)a6;
- (void)pasteWithPasteboard:(id)a3 sender:(id)a4;
- (void)prepareGeometryForInsertingBoardItems:(id)a3 withInsertionContext:(id)a4 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a5 hasValidGeometries:(BOOL)a6;
- (void)presentAlignmentTools:(id)a3;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6;
- (void)repWasCreated:(id)a3;
- (void)scrollCanvasDown:(id)a3;
- (void)scrollCanvasLeft:(id)a3;
- (void)scrollCanvasPageDown:(id)a3;
- (void)scrollCanvasPageUp:(id)a3;
- (void)scrollCanvasRight:(id)a3;
- (void)scrollCanvasUp:(id)a3;
- (void)scrollToBeginningOfDocument:(id)a3;
- (void)scrollToEndOfDocument:(id)a3;
- (void)selectAll:(id)a3;
- (void)selectParent:(id)a3;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)sendBackward:(id)a3;
- (void)sendToBack:(id)a3;
- (void)setEditorController:(id)a3;
- (void)tabKeyPressed;
- (void)teardown;
- (void)ungroup:(id)a3;
- (void)unlock:(id)a3;
- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4;
- (void)zoomIn:(id)a3;
- (void)zoomOut:(id)a3;
- (void)zoomToFitAllContent:(id)a3;
- (void)zoomToSelection:(id)a3;
@end

@implementation CRLCanvasEditor

- (BOOL)shouldBeginTextInputWith:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v4 = [v3 shapeInfoToBeginEditing];
  v5 = v4 != 0;

  return v5;
}

- (void)arrowKeyReceivedInDirection:(unint64_t)a3 withModifierKeys:(id)a4
{
  v6 = a4;
  v7 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v7 arrowKeyReceivedInDirection:a3 withModifierKeys:v6];
}

- (void)tabKeyPressed
{
  if ([(CRLCanvasEditor *)self canPerformEditorAction:"insertTab:" withSender:0]== 1)
  {

    [(CRLCanvasEditor *)self insertTab:0];
  }

  else
  {

    [(CRLCanvasEditor *)self beginEditingWith:@"\t"];
  }
}

- (void)beginEditingWith:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 beginEditingOnKeyInputWithString:v4];
}

- (void)endEditing
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183FEA0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 67110146;
    v20 = v2;
    v21 = 2082;
    v22 = "[CRLCanvasEditor endEditing]";
    v23 = 2082;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m";
    v25 = 1024;
    v26 = 152;
    v27 = 2114;
    v28 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183FEC0);
  }

  v7 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v20 = v2;
    v21 = 2114;
    v22 = v9;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v10 = [NSString stringWithUTF8String:"[CRLCanvasEditor endEditing]"];
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:152 isFatal:0 description:"Abstract method not overridden by %{public}@", v13];

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v15, "[CRLCanvasEditor endEditing]"];
  v17 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v16 userInfo:0];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)setEditorController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v6 = [v5 editorController];

    if (v6 != v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131DA88();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131DA9C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131DB24();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLCanvasEditor setEditorController:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:156 isFatal:0 description:"Unexpected editor controller!"];
    }
  }
}

- (void)delete:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 delete:v4];
}

- (void)cut:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 cut:v4];
}

- (void)lock:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 lock:v4];
}

- (void)unlock:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 unlock:v4];
}

- (void)deselectAll:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 deselectAll:v4];
}

- (BOOL)isLayoutSelectable:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [v5 isLayoutSelectable:v4];

  return v6;
}

- (void)duplicate:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 duplicate:v4];
}

- (void)addContextualMenuItemsToArray:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 addContextualMenuItemsToArray:v4];
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v8 addContextualMenuElementsToArray:v7 atPoint:{x, y}];
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = +[NSMutableArray array];
  [(CRLCanvasEditor *)self addContextualMenuElementsToArray:v8 atPoint:x, y];
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

- (BOOL)shouldPreventQuickSelect
{
  v2 = [(CRLCanvasEditor *)self editingCoordinator];
  v3 = [v2 followCoordinator];
  v4 = [v3 isFollowing];

  return v4;
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v8 addMiniFormatterElementsToArray:v7 atPoint:{x, y}];
}

- (void)maskWithSelection:(id)a3
{
  v6 = a3;
  v4 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v5 = [v4 canPerformMaskWithShapeWithSender:v6];

  if (v5)
  {
    [(CRLCanvasEditor *)self maskWithShape:v6];
  }

  else
  {
    [(CRLCanvasEditor *)self mask:v6];
  }
}

- (void)mask:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 mask];
}

- (void)maskWithShape:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 maskWithShape];
}

- (void)maskWithShapeType:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
    [v5 maskWithShapeType:{objc_msgSend(v4, "tag")}];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131DB4C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131DB60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131DBE8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvasEditor maskWithShapeType:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, v8, 290, 0, "Callers to -[CRLCanvasEditor maskWithShape:] must have a -[tag] method to specify the shape type to use for the image mask.");
  }
}

- (void)maskWithShapeTypeInPropertyList:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v12 = sub_100014370(v5, v4);

  v6 = [v12 propertyList];

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v12 propertyList];
    v9 = sub_100014370(v7, v8);
    v10 = [v9 intValue];

    v11 = [(CRLCanvasEditor *)self canvasEditorHelper];
    [v11 maskWithShapeType:v10];
  }
}

- (void)enterQuickSelectMode:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 enterQuickSelectMode:v4];
}

- (void)presentAlignmentTools:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 presentAlignmentTools:v4];
}

- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v9 = [v8 dragOperationForDragInfo:v7 atUnscaledPoint:{x, y}];

  return v9;
}

- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(a3) = [v10 handleDragOperation:a3 withDragInfo:v9 atUnscaledPoint:{x, y}];

  return a3;
}

- (id)repToHighlightForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v9 = [v8 repToHighlightForDragInfo:v7 atUnscaledPoint:{x, y}];

  return v9;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)a3 dragInfo:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v8 updateDragAndDropUIForPoint:v7 dragInfo:{x, y}];
}

- (void)hideDragAndDropUI
{
  v2 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v2 hideDragAndDropUI];
}

- (BOOL)wantsToHighlightRep:(id)a3 forDragOperationWithDragInfo:(id)a4 atPoint:(CGPoint)a5 allowNonPlaceholderReplacement:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v12 = a3;
  v13 = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(v6) = [v13 wantsToHighlightRep:v12 forDragOperationWithDragInfo:v11 atPoint:v6 allowNonPlaceholderReplacement:{x, y}];

  return v6;
}

- (BOOL)insertBoardItemsFromDragAndDrop:(id)a3 atPoint:(CGPoint)a4 onRep:(id)a5 insertionContext:(id)a6 alreadyPositionedInputInfos:(BOOL)a7
{
  v7 = a7;
  y = a4.y;
  x = a4.x;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(v7) = [v16 insertBoardItemsFromDragAndDrop:v15 atPoint:v14 onRep:v13 insertionContext:v7 alreadyPositionedInputInfos:{x, y}];

  return v7;
}

- (CGPath)newDragAndDropHighlightPathWithInset:(double)a3
{
  v4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [v4 visibleBoundsRect];
  v16 = CGRectInset(v15, a3, a3);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;

  return CGPathCreateWithRect(*&v9, 0);
}

- (void)alignDrawablesByLeftEdge:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 alignDrawablesByEdge:0];
}

- (void)alignDrawablesByRightEdge:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 alignDrawablesByEdge:2];
}

- (void)alignDrawablesByVerticalCenter:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 alignDrawablesByEdge:1];
}

- (void)alignDrawablesByTopEdge:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 alignDrawablesByEdge:3];
}

- (void)alignDrawablesByBottomEdge:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 alignDrawablesByEdge:5];
}

- (void)alignDrawablesByHorizontalCenter:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 alignDrawablesByEdge:4];
}

- (void)distributeDrawablesHorizontally:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 distributeDrawablesByEdge:1];
}

- (void)distributeDrawablesVertically:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 distributeDrawablesByEdge:4];
}

- (void)distributeDrawablesEvenly:(id)a3
{
  v3 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v3 distributeDrawablesEvenly];
}

- (void)bringToFront:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 bringToFront:v4];
}

- (void)bringForward:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 bringForward:v4];
}

- (void)sendBackward:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 sendBackward:v4];
}

- (void)sendToBack:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 sendToBack:v4];
}

- (void)selectParent:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 selectParent:v4];
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)a3 forMediaType:(int64_t)a4 forSingleMediaObject:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v11 presentMediaCompatibilityAlertWithReasons:a3 forMediaType:a4 forSingleMediaObject:v6 completionHandler:v10];
}

- (CRLCanvasEditor)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLCanvasEditor;
  v5 = [(CRLCanvasEditor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mInteractiveCanvasController, v4);
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "canvasEditorHelperClass"))];
    mCanvasEditorHelper = v6->mCanvasEditorHelper;
    v6->mCanvasEditorHelper = v7;

    v6->mResignFirstResponderWhenKeyboardHides = 1;
  }

  return v6;
}

- (void)teardown
{
  v3 = [(CRLCanvasEditor *)self pasteboardController];
  [v3 fulfillPasteboardPromises];

  [(CRLCanvasEditorHelper *)self->mCanvasEditorHelper teardown];

  objc_storeWeak(&self->mInteractiveCanvasController, 0);
}

- (CRLEditorController)editorController
{
  v2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v3 = [v2 editorController];

  return v3;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);

  return WeakRetained;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  v2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v3 = [v2 editingCoordinator];

  return v3;
}

- (CRLCanvasSelection)canvasSelection
{
  v3 = [(CRLCanvasEditor *)self editorController];
  v4 = [v3 currentEditors];
  v5 = [v4 containsObject:self];

  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [(CRLCanvasEditor *)self editorController];
    v8 = [v7 selectionForEditor:self];
    v9 = sub_100014370(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)selectionPathWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [v5 selectionPathWithInfo:v4];

  return v6;
}

- (id)selectionPathWithInfos:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [v5 selectionPathWithInfos:v4];

  return v6;
}

- (void)canvasInfosDidChange
{
  v3 = [(CRLCanvasEditor *)self editorController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100145608;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [v3 performBlockAfterSettingSelection:v4];
}

- (void)repWasCreated:(id)a3
{
  v3 = a3;
  if ([v3 isSelectedIgnoringLocking])
  {
    [v3 becameSelected];
  }
}

- (id)p_filterNonDisplayedInfos:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [NSSet alloc];
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
  v8 = [WeakRetained infosToDisplay];
  v9 = [v6 initWithArray:v8];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v11)
  {

LABEL_14:
    v19 = v10;
    goto LABEL_15;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v23;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v23 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v22 + 1) + 8 * i);
      v17 = sub_100125F34(v16);
      v18 = [v9 containsObject:{v17, v22}];

      if (v18)
      {
        [v5 addObject:v16];
      }

      else
      {
        v13 = 1;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v12);

  v19 = v5;
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v20 = v19;

  return v19;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v12 = [v11 nextEditorForSelection:v10 withNewEditorStack:v9 selectionPath:v8];

  return v12;
}

- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7
{
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131DC10();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131DC24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131DCAC();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCanvasEditor selectionWillChangeFromSelection:toSelection:withFlags:inSelectionPath:withNewEditors:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:611 isFatal:0 description:"Canvas editor expects canvas selection!"];
  }

  return 0;
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v5 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131DCD4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131DCE8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131DD70();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasEditor selectionDidChangeFromSelection:toSelection:withFlags:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:618 isFatal:0 description:"Canvas editor expects canvas selection!"];
  }
}

- (void)hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected
{
  v10 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v2 = [v10 layerHost];
  v3 = [v2 asiOSCVC];

  v4 = [v3 delegate];
  v5 = [v4 currentDocumentMode];

  v6 = objc_opt_class();
  v7 = sub_100014370(v6, v5);
  v8 = [v10 freehandDrawingToolkit];
  v9 = [v8 isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (v9)
  {
    [v7 hideEditMenuForLassoSelection];
  }
}

- (CRLPasteboardController)pasteboardController
{
  pasteboardController = self->_pasteboardController;
  if (!pasteboardController)
  {
    v4 = [CRLPasteboardController alloc];
    v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v6 = [v5 editingCoordinator];
    v7 = [(CRLPasteboardController *)v4 initWithDelegate:v6];
    v8 = self->_pasteboardController;
    self->_pasteboardController = v7;

    pasteboardController = self->_pasteboardController;
  }

  return pasteboardController;
}

- (id)permittedActionsForReasons:(unint64_t)a3
{
  v4 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v5 = [v4 permittedActionsForReasons:a3];

  v6 = [NSSet crl_setWithSelectors:"copy:", 0];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  return v7;
}

+ (BOOL)physicalKeyboardIsSender:(id)a3
{
  v4 = a3;
  LOBYTE(a1) = [objc_msgSend(a1 "canvasEditorHelperClass")];

  return a1;
}

- (BOOL)canPasteWithPasteboard:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLCanvasEditor *)self pasteboardController];
  v9 = [v8 ingestibleItemSourceForPasteboard:v7];

  v10 = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(self) = [v10 canPasteWithItemSource:v9 sender:v6];

  return self;
}

- (void)pasteWithPasteboard:(id)a3 sender:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CRLCanvasEditor *)self editorController];
  v8 = [v9 selectionPath];
  [(CRLCanvasEditor *)self pasteWithPasteboard:v7 selectionPath:v8 forceMatchStyle:0 sender:v6];
}

- (BOOL)canvasEditorCanDeleteWithSender:(id)a3
{
  v4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditor *)self editorController];
  v7 = [v6 selectionPath];
  v8 = [v5 unlockedBoardItemsForSelectionPath:v7];

  LOBYTE(v6) = [v8 count] != 0;
  return v6;
}

- (BOOL)canvasEditorCanCopyWithSender:(id)a3
{
  v4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditor *)self editorController];
  v7 = [v6 selectionPath];
  v8 = [v5 boardItemsForSelectionPath:v7];

  if ([v8 count])
  {
    v9 = +[NSMutableSet set];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (([v15 shouldBeIgnoredWhenCopying] & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [v9 count] != 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)canvasEditorCanCutWithSender:(id)a3
{
  v4 = a3;
  if ([(CRLCanvasEditor *)self canvasEditorCanDeleteWithSender:v4])
  {
    v5 = [(CRLCanvasEditor *)self canvasEditorCanCopyWithSender:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPasteWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [v5 canPasteWithItemSource:0 sender:v4];

  return v6;
}

- (BOOL)canvasEditorCanPasteWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [v5 canPasteWithItemSource:0 sender:v4];

  return v6;
}

- (BOOL)canvasEditorCanOptionDragDuplicateWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isInDrawingMode];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CRLCanvasEditor *)self canvasEditorCanCopyWithSender:v4];
  }

  return v8;
}

- (BOOL)canSelectAllWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isLassoSelectionForMixedTypeEnabledInDrawingMode];

  v8 = [v5 freehandDrawingToolkit];
  v9 = [v8 isInDrawingMode];

  if (!v9 || (v7 & 1) != 0)
  {
    v18 = [v5 selectionModelTranslator];
    v19 = [(CRLCanvasEditor *)self editorController];
    v20 = [v19 selectionPath];
    v15 = [v18 boardItemsForSelectionPath:v20];

    v32 = 0u;
    v33 = 0u;
    v17 = [v15 count] == 0;
    v34 = 0u;
    v35 = 0u;
    v21 = [(CRLCanvasEditor *)self infosForSelectAllInRoot];
    v14 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v30 = v15;
      v31 = v4;
      v22 = *v33;
      v23 = &selRef_isEnumeratingForUserSearch;
      while (2)
      {
        v24 = 0;
        v25 = v23;
        do
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector() & 1) != 0 && ([v26 isSelectable])
          {
            v14 = 1;
            goto LABEL_15;
          }

          ++v24;
        }

        while (v14 != v24);
        v14 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
        v23 = v25;
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_15:
      v15 = v30;
      v4 = v31;
    }
  }

  else
  {
    v10 = [v5 layoutController];
    v11 = [v10 rootLayout];
    v12 = [v11 children];
    v13 = [CRLFreehandDrawingLayout freehandDrawingLayoutsToInteractWithFromLayouts:v12];
    v14 = [v13 count] != 0;

    v15 = [v5 editorController];
    v16 = [v15 mostSpecificCurrentEditorOfClass:objc_opt_class()];
    v17 = v16 == 0;
  }

  v27 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v28 = [v27 allowSelectAllForSender:v4 hasNothingVisiblySelected:v17 hasAtLeastOneThingToSelect:v14];

  return v28;
}

- (BOOL)canvasEditorCanDeselectAllWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 selectionModelTranslator];
  v7 = [(CRLCanvasEditor *)self editorController];
  v8 = [v7 selectionPath];
  v9 = [v6 boardItemsForSelectionPath:v8];

  if ([v9 count])
  {
    v10 = 1;
  }

  else
  {
    v10 = [objc_opt_class() physicalKeyboardIsSender:v4];
  }

  return v10;
}

- (BOOL)canGroupWithSender:(id)a3
{
  v4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v5 = [v4 selectionModelTranslator];
  v6 = [(CRLCanvasEditor *)self editorController];
  v7 = [v6 selectionPath];
  v8 = [v5 boardItemsForSelectionPath:v7];

  v9 = [(CRLCanvasEditor *)self interactiveCanvasController];
  LOBYTE(v5) = [v9 hasSelectedInfosInMultipleContainers];

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v11);
          }

          if ([(CRLCanvasEditor *)self canGroupBoardItem:*(*(&v18 + 1) + 8 * i), v18])
          {
            v10 = 1;
            if (v14)
            {
              goto LABEL_15;
            }

            v14 = 1;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
      v10 = v14 > 1;
    }

    else
    {
      v10 = 0;
    }

LABEL_15:
  }

  return v10;
}

- (BOOL)canUngroupWithSender:(id)a3
{
  v4 = [(CRLCanvasEditor *)self editorController];
  v5 = [v4 selectionPath];
  v6 = [v5 mostSpecificSelectionOfClass:objc_opt_class()];

  v7 = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(v4) = [v7 canUngroupWithSelection:v6];

  return v4;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v8 = [v7 layerHost];
  v9 = [v8 asiOSCVC];

  v10 = objc_opt_class();
  v11 = [v9 presentedViewController];
  v12 = sub_100014370(v10, v11);
  if (v12)
  {

LABEL_4:
    v16 = -1;
    goto LABEL_5;
  }

  v13 = objc_opt_class();
  v14 = [v9 presentedViewController];
  v15 = sub_100014370(v13, v14);

  if (v15)
  {
    goto LABEL_4;
  }

  v29[0] = "deleteBackward:";
  v29[1] = "deleteForward:";
  v29[2] = "deleteToBeginningOfLine:";
  v29[3] = "deleteToEndOfLine:";
  v29[4] = "deleteWordBackward:";
  v29[5] = "deleteWordForward:";
  v29[6] = "insertTab:";
  v29[7] = "insertBacktab:";
  v29[8] = "scrollToBeginningOfDocument:";
  v29[9] = "scrollToEndOfDocument:";
  v18 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v16 = [v18 canPerformEditorAction:a3 withSender:v6];

  if (!v16)
  {
    v19 = 0;
    v16 = 1;
    while (!sel_isEqual(a3, v29[v19]))
    {
      if (++v19 == 10)
      {
        v16 = 0;
        break;
      }
    }

    v20 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v21 = v20;
    if ("select:" == a3)
    {
      v16 = -1;
    }

    else if ("zoomToFitAllContent:" == a3)
    {
      v26 = [v20 board];
      v27 = [v26 rootContainer];
      v28 = [v27 childItems];
      if ([v28 count])
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }
    }

    else if ("zoomToSelection:" == a3)
    {
      if ([v20 canZoomToCurrentSelection])
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }
    }

    else if ("saveSelectedBoardItemsAsStencil:" == a3)
    {
      v22 = [v20 selectionModelTranslator];
      v23 = [(CRLCanvasEditor *)self editorController];
      v24 = [v23 selectionPath];
      v25 = [v22 boardItemsForSelectionPath:v24];
      if ([v25 count])
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }
    }
  }

LABEL_5:

  return v16;
}

- (void)copyToPasteboard:(id)a3 asPDF:(BOOL)a4 nativeOnly:(BOOL)a5 withSender:(id)a6
{
  v6 = a5;
  v7 = a4;
  v15 = a3;
  if ([(CRLCanvasEditor *)self canvasEditorCanCopyWithSender:0])
  {
    v9 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v10 = [v9 selectionModelTranslator];
    v11 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v12 = [v11 editorController];
    v13 = [v12 selectionPath];
    v14 = [v10 unlockedBoardItemsForSelectionPath:v13];

    [(CRLCanvasEditor *)self copyBoardItems:v14 toPasteboard:v15 asPDF:v7 nativeOnly:v6];
  }
}

- (void)copyBoardItems:(id)a3 toPasteboard:(id)a4 asPDF:(BOOL)a5 nativeOnly:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v12 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        if (([v18 shouldBeIgnoredWhenCopying] & 1) == 0)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = v12;
  v20 = [v11 topLevelZOrderedSiblingsOfInfos:v19];
  v21 = [v20 crl_arrayWithObjectsInSet:v19];

  if (v21 && [v21 count])
  {
    v22 = [(CRLCanvasEditor *)self pasteboardController];
    v23 = [v22 newCopyAssistantWithPasteboard:v10];
    [v22 copyBoardItems:v21 toPasteboard:v10 asPDF:0 writeAssistant:v23 nativeOnly:v6 icc:v11];
  }
}

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = +[CRLPasteboard generalPasteboard];
  [(CRLCanvasEditor *)self copyToPasteboard:v5 nativeOnly:0 withSender:v4];

  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v7 canvasEditor];
  [v6 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)prepareGeometryForInsertingBoardItems:(id)a3 withInsertionContext:(id)a4 ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)a5 hasValidGeometries:(BOOL)a6
{
  v6 = a6;
  v55 = a5;
  v9 = a3;
  v56 = a4;
  v54 = v6;
  if (!v6)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v65;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v65 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          v15 = objc_opt_class();
          v21 = sub_1003038E0(v14, v15, 1, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLFittingOnInsertion);
          if (v21)
          {
            v22 = [(CRLCanvasEditor *)self interactiveCanvasController];
            v23 = [v22 board];
            [v21 scaleDownSizeToFitWithinSize:v23 board:{600.0, 600.0}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v11);
    }
  }

  v24 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [v24 visibleUnscaledRect];
  v29 = sub_100120414(v25, v26, v27, v28);
  v31 = v30;

  v32 = v56;
  if ([v56 hasPreferredCenter])
  {
    [v56 preferredCenter];
    v29 = v33;
    v31 = v34;
  }

  v35 = [objc_alloc(-[CRLCanvasEditor boardItemPositionerClass](self "boardItemPositionerClass"))];
  [v35 positionBoardItems:v9 ignoreCanvasBackgroundAlignmentProvidedSnapping:v55];
  v36 = objc_opt_class();
  v37 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v38 = [v37 topLevelContainerInfoForEditing];
  v39 = sub_100014370(v36, v38);

  if (v39)
  {
    v40 = [(CRLCanvasEditor *)self canvasEditorHelper];
    v41 = [v40 canInsertBoardItems:v9 intoGroup:v39];

    if (v41)
    {
      memset(&v63, 0, sizeof(v63));
      v42 = [(CRLCanvasEditor *)self interactiveCanvasController];
      v43 = [v42 topLevelContainerRepForEditing];
      v44 = [v43 layout];
      v45 = v44;
      if (v44)
      {
        [v44 transformInRoot];
      }

      else
      {
        memset(&v63, 0, sizeof(v63));
      }

      v61 = v63;
      CGAffineTransformInvert(&v62, &v61);
      v63 = v62;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v46 = v9;
      v47 = [v46 countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v58;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v58 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v57 + 1) + 8 * j);
            v52 = [v51 geometry];
            v62 = v63;
            v53 = [v52 geometryByAppendingTransform:&v62];
            [v51 setGeometry:v53];
          }

          v48 = [v46 countByEnumeratingWithState:&v57 objects:v68 count:16];
        }

        while (v48);
      }

      v32 = v56;
    }
  }
}

- (CGSize)sizeForInsertingMediaOfSize:(CGSize)a3
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)selectionBehaviorForInsertingBoardItems:(id)a3
{
  v4 = a3;
  v5 = [CRLCanvasCommandSelectionBehavior alloc];
  v6 = [NSSet setWithArray:v4];

  v7 = [(CRLCanvasCommandSelectionBehavior *)v5 initWithCanvasEditor:self type:0 constructedInfos:v6];

  return v7;
}

- (void)insertBoardItems:(id)a3 withInsertionContext:(id)a4 postProcessBlock:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v11 = [v10 commandController];
  v12 = [v10 containerForTopLevelInsertion];
  if ([v8 shouldEndEditing])
  {
    [v10 endEditing];
  }

  if ([v8 shouldEndEditing])
  {
    v13 = [(CRLCanvasEditor *)self selectionBehaviorForInsertingBoardItems:v17];
  }

  else
  {
    v13 = 0;
  }

  [v11 openGroupWithSelectionBehavior:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Insert" value:0 table:@"UndoStrings"];
  [v11 setCurrentGroupActionString:v15];

  [(CRLCanvasEditor *)self p_insertBoardItems:v17 withInsertionContext:v8 containerForInsertion:v12];
  if (v9)
  {
    v9[2](v9);
  }

  [v11 closeGroup];
  v16 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v16 donateBoardItemsInsertion:v17];

  sub_1005B8914(self, v17);
}

- (void)p_insertBoardItems:(id)a3 withInsertionContext:(id)a4 containerForInsertion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v12 = [v11 commandController];
  v31 = v11;
  if (([v12 isGroupOpen] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131DD98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131DDAC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131DE34();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLCanvasEditor p_insertBoardItems:withInsertionContext:containerForInsertion:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1126 isFatal:0 description:"Expected a command group to be open."];
  }

  v16 = objc_opt_class();
  v17 = [v11 topLevelContainerInfoForEditing];
  v18 = sub_100014370(v16, v17);

  v30 = v18;
  if (v18)
  {
    v19 = [(CRLCanvasEditor *)self canvasEditorHelper];
    v20 = [v19 canInsertBoardItems:v8 intoGroup:v18];

    if (v20)
    {
      v21 = v18;

      v10 = v21;
    }
  }

  v22 = v9;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v8;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v32 = v22;
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      v27 = 0;
      v28 = v22;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v10 boardItem:*(*(&v33 + 1) + 8 * v27)];
        [v12 enqueueCommand:v29];
        v22 = [v28 insertionContextFromInsertionContextWithNextZOrder];

        v27 = v27 + 1;
        v28 = v22;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }
}

- (void)pasteWithPasteboard:(id)a3 selectionPath:(id)a4 forceMatchStyle:(BOOL)a5 sender:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CRLCanvasEditor *)self pasteboardController];
  v23 = 0;
  if ([v13 hasNativeTypesOnPasteboard:v10])
  {
    v14 = [v13 providersForNativeBoardItemsAndTextFromPasteboard:v10 validGeometries:&v23];
    v15 = v14;
    if (v14 && [v14 count])
    {
      v16 = [(CRLCanvasEditor *)self p_pasteNativeBoardItemsFromProviders:v15 withPasteboard:v10 selectionPath:v11 sender:v12 hasValidGeometries:v23 allowImageReplacement:1];
    }

    v17 = 0;
    goto LABEL_28;
  }

  v18 = [v13 preferredImportableDataTypeOnPasteboard:v10 detectImportableURLsInText:!v7];
  v17 = 0;
  if (v18 > 2)
  {
    if (v18 != 3)
    {
      v15 = 0;
      if (v18 != 4)
      {
        goto LABEL_28;
      }

      v19 = [v13 providersForBoardItemsFromImportedTextFromPasteboard:v10];
      goto LABEL_24;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131DE5C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131DE70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131DEF8();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLCanvasEditor pasteWithPasteboard:selectionPath:forceMatchStyle:sender:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:1170 isFatal:0 description:"Should not be given file promises in normal paste logic! App being copied from is misbehaving."];
  }

  else
  {
    if (v18 == 1)
    {
      v19 = [v13 providersForBoardItemsFromImportedRichTextFromPasteboard:v10];
      goto LABEL_24;
    }

    v15 = 0;
    if (v18 != 2)
    {
      goto LABEL_28;
    }
  }

  v19 = [v13 providersForBoardItemsImportedFromPasteboard:v10];
LABEL_24:
  v17 = v19;
  if (v19 && [v19 count])
  {
    [(CRLCanvasEditor *)self p_pasteImportableBoardItemProviders:v17 withPasteboard:v10 selectionPath:v11 sender:v12];
  }

  v15 = 0;
LABEL_28:
}

- (id)p_pasteNativeBoardItemsFromProviders:(id)a3 withPasteboard:(id)a4 selectionPath:(id)a5 sender:(id)a6 hasValidGeometries:(BOOL)a7 allowImageReplacement:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v17;
  v44 = v16;
  if (v8)
  {
    v19 = [(CRLCanvasEditor *)self canvasEditorHelper];
    v49 = 0;
    v20 = [v19 commandForReplacingImagePlaceholderInSelection:v16 withBoardItems:v14 isCrossDocument:0 withSender:v18 outSelectionBehavior:&v49];
    v21 = v49;

    if (v20)
    {
      v22 = 0;
      if (!v21)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }

    v39 = v9;
    v40 = v21;
    v41 = v18;
    v42 = v15;
  }

  else
  {
    v39 = v9;
    v41 = v17;
    v42 = v15;
    v40 = 0;
  }

  v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v14, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v43 = v14;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v46;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v45 + 1) + 8 * i);
        v30 = [(CRLCanvasEditor *)self interactiveCanvasController];
        v31 = [v30 editingCoordinator];
        v32 = [v31 boardItemFactory];
        v33 = [v29 newBoardItemWithFactory:v32 bakedSize:0];

        if (v33)
        {
          [v23 addObject:v33];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v26);
  }

  v18 = v41;
  v15 = v42;
  v20 = [(CRLCanvasEditor *)self p_commandForPastingProvidedBoardItems:v23 withPasteboard:v42 sender:v41 hasValidGeometries:v39 allowPositionChange:1];
  if (v20)
  {
    v22 = v23;
    v14 = v43;
    v21 = v40;
    if (!v40)
    {
LABEL_18:
      v34 = [CRLCanvasCommandSelectionBehavior alloc];
      if (v22)
      {
        v35 = v22;
      }

      else
      {
        v35 = &__NSArray0__struct;
      }

      v36 = [NSSet setWithArray:v35];
      v21 = [(CRLCanvasCommandSelectionBehavior *)v34 initWithCanvasEditor:self type:0 constructedInfos:v36];
    }

LABEL_22:
    v23 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v37 = [v23 commandController];
    [v37 enqueueCommand:v20 withSelectionBehavior:v21];

    goto LABEL_24;
  }

  v22 = 0;
  v14 = v43;
  v21 = v40;
LABEL_24:

  return v22;
}

- (void)p_pasteImportableBoardItemProviders:(id)a3 withPasteboard:(id)a4 selectionPath:(id)a5 sender:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [[CRLPasteboardMultipleImportableBoardItemProvider alloc] initWithImportableBoardItemProviders:v13];

  [(CRLPasteboardMultipleImportableBoardItemProvider *)v14 setAlertPresenter:self];
  v15 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v16 = [v15 editingCoordinator];
  [v16 suspendCollaborationWithReason:@"CRLCanvasEditorPastingImportableBoardItems"];

  v17 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Pasting…" value:0 table:0];

  v20 = [v17 layerHost];
  v21 = [(CRLPasteboardMultipleImportableBoardItemProvider *)v14 progress];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001484CC;
  v36[3] = &unk_10183AB38;
  v22 = v14;
  v37 = v22;
  v23 = [v20 beginModalOperationWithPresentedLocalizedMessage:v19 progress:v21 cancelHandler:v36];

  v24 = [v17 editingCoordinator];
  v25 = [v24 boardItemFactory];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001484D4;
  v30[3] = &unk_101840068;
  v30[4] = v17;
  v30[5] = v23;
  v31 = v22;
  v32 = self;
  v33 = v11;
  v34 = v12;
  v35 = v10;
  v26 = v10;
  v27 = v12;
  v28 = v11;
  v29 = v22;
  [(CRLPasteboardMultipleImportableBoardItemProvider *)v29 provideBoardItemsWithFactory:v25 completionHandler:v30];
}

- (id)pasteNativeInfosFromPasteboard:(id)a3 allowImageReplacement:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v8 = [(CRLCanvasEditor *)self pasteboardController];
  if ([v8 hasNativeTypesOnPasteboard:v6])
  {
    v15 = 0;
    v9 = [v8 providersForNativeBoardItemsAndTextFromPasteboard:v6 validGeometries:&v15];
    v10 = v9;
    if (v9 && [v9 count])
    {
      v11 = [v7 editorController];
      v12 = [v11 selectionPath];
      v13 = [(CRLCanvasEditor *)self p_pasteNativeBoardItemsFromProviders:v10 withPasteboard:v6 selectionPath:v12 sender:0 hasValidGeometries:v15 allowImageReplacement:v4];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)commandForInsertingBoardItems:(id)a3 below:(id)a4 withOffset:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v8 parentContainerItem];
  v11 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v12 = v11;
  if (v10)
  {
    [v11 commandToInsertBoardItems:v9 intoContainer:v10 belowBoardItem:v8 withOffset:a5];
  }

  else
  {
    [v11 commandForInsertingBoardItemsIntoTopLevelContainer:v9 below:v8 withOffset:a5];
  }
  v13 = ;

  return v13;
}

- (void)paste:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 paste:v4];

  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v7 canvasEditor];
  [v6 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)pasteAsPlainText:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 pasteAsPlainText:v4];
}

- (void)pasteValues:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 pasteValues:v4];
}

- (CGRect)p_boundingRectForPastingBoardItems:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = &unk_1016A8115;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v22 = size;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100148CB8;
  v14[3] = &unk_1018400D0;
  v5 = v3;
  v15 = v5;
  v16 = &v17;
  [CRLCanvasLayoutController temporaryLayoutControllerForInfos:v5 useInBlock:v14];
  v6 = v18[4];
  v7 = v18[5];
  v8 = v18[6];
  v9 = v18[7];

  _Block_object_dispose(&v17, 8);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)p_commandForPastingProvidedBoardItems:(id)a3 withPasteboard:(id)a4 sender:(id)a5 hasValidGeometries:(BOOL)a6 allowPositionChange:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (![v12 count])
  {
    v32 = 0;
    goto LABEL_28;
  }

  v15 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [v15 visibleUnscaledRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(CRLCanvasEditor *)self p_boundingRectForPastingBoardItems:v12];
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (v8 && v7)
  {
    if (sub_10011EF14(v17, v19, v21, v23, v24, v25, v26, v27))
    {
      goto LABEL_14;
    }
  }

  else if (!v7)
  {
    goto LABEL_14;
  }

  v33 = [v15 layerHost];
  v34 = [v33 asiOSCVC];
  [v34 lastTapPoint];
  v36 = v35;
  v38 = v37;

  v39 = CGPointZero.x == v36 && CGPointZero.y == v38;
  if (!v39 && ![objc_opt_class() physicalKeyboardIsSender:v14])
  {
    goto LABEL_15;
  }

  [v15 visibleUnscaledRect];
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
LABEL_14:
  v36 = sub_100120414(v28, v29, v30, v31);
  v38 = v44;
LABEL_15:
  v45 = [objc_alloc(-[CRLCanvasEditor boardItemPositionerClass](self "boardItemPositionerClass"))];
  [v45 setShouldPreserveRelativePositions:1];
  v46 = [v13 name];
  v47 = [v46 isEqualToString:@"com.apple.freeform.Canvas.CRLCanvasRepNoPositionOffsetPasteboardName"];

  if (v47)
  {

    v45 = 0;
  }

  v32 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  if ([v12 count])
  {
    v48 = +[NSSet set];
    v49 = [(CRLCanvasEditor *)self editingCoordinator];
    v50 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:v12 infosToRemove:v48 editingCoordinator:v49 withIcc:v15];
    [(CRLCommandGroup *)v32 addCommands:v50];
  }

  v51 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v52 = [v51 containerForTopLevelInsertion];

  [v45 positionBoardItems:v12];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v53 = v12;
  v54 = [v53 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v54)
  {
    v55 = v54;
    v61 = v15;
    v62 = v14;
    v56 = *v64;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v52 boardItem:*(*(&v63 + 1) + 8 * i)];
        [(CRLCommandGroup *)v32 addCommand:v58];
      }

      v55 = [v53 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v55);

    v53 = +[NSBundle mainBundle];
    v59 = [v53 localizedStringForKey:@"Paste" value:0 table:0];
    [(CRLCommandGroup *)v32 setActionString:v59];

    v14 = v62;
    v15 = v61;
  }

LABEL_28:

  return v32;
}

- (NSSet)infosForSelectAllInRoot
{
  v2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v3 = [v2 infosToDisplay];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)selectAll:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 topLevelContainerRepForEditing];

  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v8 = [v7 freehandDrawingToolkit];
  v9 = [v8 isInDrawingMode];

  if (v9)
  {
    v59 = v4;
    v10 = +[NSSet set];
    v11 = [(CRLCanvasEditor *)self selectionPathWithInfos:v10];
    v12 = [(CRLCanvasEditor *)self editorController];
    [v12 setSelectionPath:v11];

    v13 = +[NSMutableSet set];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v14 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v15 = [v14 layoutController];
    v16 = [v15 rootLayout];
    v17 = [v16 children];
    v18 = [CRLFreehandDrawingLayout freehandDrawingLayoutsToInteractWithFromLayouts:v17];

    v19 = [v18 countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v65;
      do
      {
        v22 = 0;
        do
        {
          if (*v65 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v64 + 1) + 8 * v22) children];
          v24 = [v23 crl_arrayByTransformingWithBlock:&stru_101840110];
          [v13 addObjectsFromArray:v24];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v20);
    }

    v25 = +[NSMutableSet set];
    v26 = [v13 allObjects];
    [v25 addObjectsFromArray:v26];

    v27 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v28 = [v27 freehandDrawingToolkit];
    v29 = [v28 isLassoAbleToSelectMixedType];

    if (v29)
    {
      if (v6)
      {
        v30 = objc_opt_class();
        v31 = [v6 containerInfo];
        v32 = [v31 childInfos];
        v33 = sub_100014370(v30, v32);
        v34 = v33;
        v35 = &__NSArray0__struct;
        if (v33)
        {
          v35 = v33;
        }

        v36 = v35;
      }

      else
      {
        v31 = [(CRLCanvasEditor *)self infosForSelectAllInRoot];
        v36 = [v31 allObjects];
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v40 = v36;
      v41 = [v40 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v61;
        do
        {
          v44 = 0;
          do
          {
            if (*v61 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v60 + 1) + 8 * v44);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v25 addObject:v45];
            }

            v44 = v44 + 1;
          }

          while (v42 != v44);
          v42 = [v40 countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v42);
      }
    }

    v39 = [v25 copy];

    v4 = v59;
  }

  else if (v6)
  {
    v37 = [v6 containerInfo];
    v38 = [v37 childInfos];
    v39 = [NSSet setWithArray:v38];
  }

  else
  {
    v39 = [(CRLCanvasEditor *)self infosForSelectAllInRoot];
  }

  v46 = [(CRLCanvasEditor *)self p_selectableInfosInInfos:v39];
  v47 = [NSSet setWithArray:v46];

  v48 = [(CRLCanvasEditor *)self selectionPathWithInfos:v47];
  v49 = [(CRLCanvasEditor *)self editorController];
  [v49 setSelectionPath:v48];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v51 = [v50 layerHost];
    v52 = [v51 asiOSCVC];
    v53 = [v52 isCurrentlyInQuickSelectMode];

    if ((v53 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
      v55 = [WeakRetained layerHost];
      v56 = [v55 miniFormatterPresenter];
      v57 = [(CRLCanvasEditor *)self editorController];
      v58 = [v57 selectionPath];
      [v56 presentMiniFormatterForSelectionPath:v58];
    }
  }

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:1])
  {
    [(CRLCanvasEditor *)self hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (void)group:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 group:v4];
}

- (void)ungroup:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 ungroup:v4];
}

- (NSArray)infosToConnect
{
  v2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  if ([v2 isDraggingToInsertBoardItems])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 editorController];
    v5 = [v4 selectionPath];
    v3 = [CRLConnectionLineRep infosToConnectFromSelectionPath:v5 withInteractiveCanvasController:v2];
  }

  return v3;
}

- (void)connectWithConnectionLine:(id)a3
{
  v4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v5 = [v4 editingCoordinator];
  v6 = [v5 boardItemFactory];

  v7 = [(CRLCanvasEditor *)self connectionLineItemToUseForConnecting];
  if (v7)
  {
    v8 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v9 = [v8 editingCoordinator];
    v10 = [v9 boardItemFactory];
    v11 = [v10 makeDuplicateOfBoardItem:v7];
  }

  else
  {
    v11 = [v6 makeShapeItemWithShapeType:19];
  }

  v12 = [(CRLCanvasEditor *)self infosToConnect];
  v13 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v14 = [v13 commandController];
  v15 = [v6 blockToRunCommandToPostProcessWithNewBoardItem:v11 shapeType:2 infosToConnect:v12 commandController:v14];

  v16 = +[CRLInsertionContext nonInteractiveInsertionContext];
  v21 = v11;
  v17 = [NSArray arrayWithObjects:&v21 count:1];
  [(CRLCanvasEditor *)self prepareGeometryForInsertingBoardItems:v17 withInsertionContext:v16];

  v20 = v11;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [(CRLCanvasEditor *)self insertBoardItems:v18 withInsertionContext:v16 postProcessBlock:v15];

  v19 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [v19 donateTipEventObjectsConnectedWithConnectionLine];
}

- (_TtC8Freeform21CRLConnectionLineItem)connectionLineItemToUseForConnecting
{
  v3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v4 = [v3 board];
  v5 = [v4 rootContainer];

  v6 = [v5 childItems];
  v7 = [v6 count];

  if ((v7 - 1) < 0)
  {
LABEL_7:
    v9 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v15 = [v9 highestZOrderConnectionLineLayoutAcrossBoard];
    v6 = [v15 connectionLineInfo];
  }

  else
  {
    while (1)
    {
      --v7;
      v8 = [v5 childItems];
      v9 = [v8 objectAtIndexedSubscript:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_opt_class();
        v11 = sub_100013F00(v10, v9);
        v12 = [(CRLCanvasEditor *)self infosToConnect];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100149FFC;
        v17[3] = &unk_101840138;
        v13 = v11;
        v18 = v13;
        v19 = self;
        v14 = [v12 crl_containsObjectPassingTest:v17];

        if (v14)
        {
          v6 = v13;
        }

        if (v14)
        {
          break;
        }
      }

      if (v7 <= 0)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

- (id)p_nextInfoInTabSequence:(int64_t)a3
{
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 selectionModelTranslator];
  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v8 = [v7 editorController];
  v9 = [v8 selectionPath];
  v10 = [v6 boardItemsForSelectionPath:v9];

  v11 = [v10 count];
  v12 = [(CRLCanvasEditor *)self p_spatiallySortedSelectableBoardItems];
  v13 = [v12 mutableCopy];

  if (![v13 count])
  {
    v40 = 0;
    goto LABEL_52;
  }

  if (v11)
  {
    goto LABEL_3;
  }

  if (a3 == 1)
  {
    v41 = [v13 lastObject];
    goto LABEL_51;
  }

  if (a3)
  {
LABEL_3:
    v55 = a3;
    v14 = [v13 count];
    if ((v14 - 1) >= 2)
    {
      v15 = (v14 - 2);
      do
      {
        v16 = [v13 objectAtIndexedSubscript:v15 + 1];
        v17 = [v16 geometry];

        v18 = [v13 objectAtIndexedSubscript:v15];
        v19 = [v18 geometry];

        [v19 size];
        v21 = v20;
        v22 = [(CRLCanvasEditor *)self interactiveCanvasController];
        v23 = [v22 canvas];
        v24 = [v23 isAnchoredAtRight];

        if (v24)
        {
          [v17 transformedBounds];
          MaxX = CGRectGetMaxX(v62);
          [v17 transformedBounds];
          MinY = CGRectGetMinY(v63);
          [v19 transformedBounds];
          v27 = CGRectGetMaxX(v64);
          [v19 transformedBounds];
          v28 = CGRectGetMinY(v65);
          if (MaxX > v27)
          {
            goto LABEL_9;
          }
        }

        else
        {
          [v17 position];
          v30 = v29;
          MinY = v31;
          [v19 position];
          v33 = v32;
          v28 = v34;
          if (v30 < v33)
          {
LABEL_9:
            if (v28 >= MinY - v21 * 0.33 && v28 < v21 * 0.33 + MinY)
            {
              [v13 exchangeObjectAtIndex:v15 + 1 withObjectAtIndex:v15];
            }
          }
        }
      }

      while (v15-- > 1);
    }

    if (v11 == 1)
    {
      v37 = [v10 anyObject];
      v38 = [v13 indexOfObject:v37];

      v39 = v55;
    }

    else
    {
      v42 = +[NSMutableIndexSet indexSet];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v43 = v10;
      v44 = [v43 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v57;
        do
        {
          for (i = 0; i != v45; i = i + 1)
          {
            if (*v57 != v46)
            {
              objc_enumerationMutation(v43);
            }

            [v42 addIndex:{objc_msgSend(v13, "indexOfObject:", *(*(&v56 + 1) + 8 * i))}];
          }

          v45 = [v43 countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v45);
      }

      v39 = v55;
      if (v55 == 1)
      {
        v48 = [v42 firstIndex];
      }

      else
      {
        v48 = [v42 lastIndex];
      }

      v38 = v48;
    }

    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131DF70();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131DF98();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131E020();
      }

      v49 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v49);
      }

      v50 = [NSString stringWithUTF8String:"[CRLCanvasEditor p_nextInfoInTabSequence:]"];
      v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:1690 isFatal:0 description:"couldn't find selected info in all drawables!"];

      if (v55 == 1)
      {
LABEL_43:
        v52 = v38 - 1;
LABEL_49:
        v53 = v52 % [v13 count];
        goto LABEL_50;
      }
    }

    else
    {
      if (v39 == 1 && !v38)
      {
        v53 = [v13 count] - 1;
LABEL_50:
        v41 = [v13 objectAtIndex:v53];
        goto LABEL_51;
      }

      if (v39 == 1)
      {
        goto LABEL_43;
      }
    }

    v52 = v38 + 1;
    goto LABEL_49;
  }

  v41 = [v13 firstObject];
LABEL_51:
  v40 = v41;
LABEL_52:

  return v40;
}

- (id)p_spatiallySortedSelectableBoardItems
{
  v3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v4 = [v3 topLevelContainerRepForEditing];

  if (v4)
  {
    v5 = [v4 containerInfo];
    v6 = [v5 childInfos];
LABEL_13:
    v9 = v6;
    goto LABEL_14;
  }

  v7 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v8 = [v7 hasSelectedInfosInMultipleContainers];

  if (!v8)
  {
    v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v6 = [v5 infosToDisplay];
    goto LABEL_13;
  }

  v9 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v5 = [v10 containersForSelection];

  v11 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = [*(*(&v23 + 1) + 8 * i) childInfos];
        [v9 addObjectsFromArray:v15];
      }

      v12 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

LABEL_14:

  v16 = [(CRLCanvasEditor *)self p_selectableInfosInInfos:v9];
  v17 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v18 = [v17 canvas];
  v19 = [v18 isAnchoredAtRight];

  if (v19)
  {
    v20 = &stru_1018401D8;
  }

  else
  {
    v20 = &stru_1018401B8;
  }

  v21 = [v16 sortedArrayUsingComparator:v20];

  return v21;
}

- (id)p_selectableInfosInInfos:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 repForInfo:{v12, v16}];
        v14 = [v13 repForSelecting];

        if (v14 == v13)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v5;
}

- (void)insertTab:(id)a3
{
  v4 = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isInDrawingMode];

  if (!v7 || (v4 & 1) == 0)
  {
    v10 = [(CRLCanvasEditor *)self p_nextInfoInTabSequence:0];
    v8 = [(CRLCanvasEditor *)self selectionPathWithInfo:v10];
    v9 = [(CRLCanvasEditor *)self editorController];
    [v9 setSelectionPath:v8];
  }
}

- (void)insertBacktab:(id)a3
{
  v4 = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  v5 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v6 = [v5 freehandDrawingToolkit];
  v7 = [v6 isInDrawingMode];

  if (!v7 || (v4 & 1) == 0)
  {
    v10 = [(CRLCanvasEditor *)self p_nextInfoInTabSequence:1];
    v8 = [(CRLCanvasEditor *)self selectionPathWithInfo:v10];
    v9 = [(CRLCanvasEditor *)self editorController];
    [v9 setSelectionPath:v8];
  }
}

- (void)insertText:(id)a3 replacementRange:(_NSRange)a4
{
  v5 = a3;
  v6 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v6 beginEditingOnKeyInputWithString:v5];
}

- (void)insertNewline:(id)a3
{
  v4 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v3 = +[NSString string];
  [v4 beginEditingOnKeyInputWithString:v3];
}

- (id)createArrangeInspectorDelegate
{
  v2 = [[CRLDrawableZOrderArranger alloc] initWithCanvasEditor:self];

  return v2;
}

- (CRLArrangeInspectorDelegate)arrangeInspectorDelegate
{
  mZOrderArranger = self->mZOrderArranger;
  if (!mZOrderArranger)
  {
    v4 = [(CRLCanvasEditor *)self createArrangeInspectorDelegate];
    v5 = self->mZOrderArranger;
    self->mZOrderArranger = v4;

    mZOrderArranger = self->mZOrderArranger;
  }

  return mZOrderArranger;
}

- (void)scrollToBeginningOfDocument:(id)a3
{
  v10 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v3 = [v10 layerHost];
  v4 = [v3 canvasLayer];
  [v4 contentInset];
  v6 = v5;

  [v10 contentOffset];
  v8 = v7;
  [v10 viewScale];
  [v10 setContentOffset:1 scrollOptions:{v8, v6 / v9}];
}

- (void)scrollToEndOfDocument:(id)a3
{
  v14 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v3 = [v14 canvasView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v14 contentOffset];
  v13 = v12;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [v14 setContentOffset:1 scrollOptions:{v13, CGRectGetMaxY(v16)}];
}

- (void)zoomIn:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v7 = v5;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = self;
  }

  [v5 zoomIn:v6];
}

- (void)zoomOut:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  v7 = v5;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = self;
  }

  [v5 zoomOut:v6];
}

- (void)zoomToFitAllContent:(id)a3
{
  v3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [v3 zoomToFitAllContent];
}

- (void)zoomToSelection:(id)a3
{
  v3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [v3 zoomToCurrentSelection];
}

- (void)scrollCanvasPageUp:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 scrollCanvasPageUp:v4];
}

- (void)scrollCanvasPageDown:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 scrollCanvasPageDown:v4];
}

- (void)scrollCanvasUp:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 scrollCanvasUp:v4];
}

- (void)scrollCanvasDown:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 scrollCanvasDown:v4];
}

- (void)scrollCanvasLeft:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 scrollCanvasLeft:v4];
}

- (void)scrollCanvasRight:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasEditor *)self canvasEditorHelper];
  [v5 scrollCanvasRight:v4];
}

@end