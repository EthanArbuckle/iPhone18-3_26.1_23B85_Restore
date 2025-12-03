@interface CRLCanvasEditor
+ (BOOL)physicalKeyboardIsSender:(id)sender;
- (BOOL)canGroupWithSender:(id)sender;
- (BOOL)canPasteWithPasteboard:(id)pasteboard sender:(id)sender;
- (BOOL)canPasteWithSender:(id)sender;
- (BOOL)canSelectAllWithSender:(id)sender;
- (BOOL)canUngroupWithSender:(id)sender;
- (BOOL)canvasEditorCanCopyWithSender:(id)sender;
- (BOOL)canvasEditorCanCutWithSender:(id)sender;
- (BOOL)canvasEditorCanDeleteWithSender:(id)sender;
- (BOOL)canvasEditorCanDeselectAllWithSender:(id)sender;
- (BOOL)canvasEditorCanOptionDragDuplicateWithSender:(id)sender;
- (BOOL)canvasEditorCanPasteWithSender:(id)sender;
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)insertBoardItemsFromDragAndDrop:(id)drop atPoint:(CGPoint)point onRep:(id)rep insertionContext:(id)context alreadyPositionedInputInfos:(BOOL)infos;
- (BOOL)isLayoutSelectable:(id)selectable;
- (BOOL)shouldBeginTextInputWith:(id)with;
- (BOOL)shouldPreventQuickSelect;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors;
- (BOOL)wantsToHighlightRep:(id)rep forDragOperationWithDragInfo:(id)info atPoint:(CGPoint)point allowNonPlaceholderReplacement:(BOOL)replacement;
- (CGPath)newDragAndDropHighlightPathWithInset:(double)inset;
- (CGRect)p_boundingRectForPastingBoardItems:(id)items;
- (CGSize)sizeForInsertingMediaOfSize:(CGSize)size;
- (CRLArrangeInspectorDelegate)arrangeInspectorDelegate;
- (CRLCanvasEditor)initWithInteractiveCanvasController:(id)controller;
- (CRLCanvasSelection)canvasSelection;
- (CRLEditorController)editorController;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLPasteboardController)pasteboardController;
- (NSArray)infosToConnect;
- (NSSet)infosForSelectAllInRoot;
- (_TtC8Freeform21CRLConnectionLineItem)connectionLineItemToUseForConnecting;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)commandForInsertingBoardItems:(id)items below:(id)below withOffset:(unint64_t)offset;
- (id)createArrangeInspectorDelegate;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (id)p_commandForPastingProvidedBoardItems:(id)items withPasteboard:(id)pasteboard sender:(id)sender hasValidGeometries:(BOOL)geometries allowPositionChange:(BOOL)change;
- (id)p_filterNonDisplayedInfos:(id)infos;
- (id)p_nextInfoInTabSequence:(int64_t)sequence;
- (id)p_pasteNativeBoardItemsFromProviders:(id)providers withPasteboard:(id)pasteboard selectionPath:(id)path sender:(id)sender hasValidGeometries:(BOOL)geometries allowImageReplacement:(BOOL)replacement;
- (id)p_selectableInfosInInfos:(id)infos;
- (id)p_spatiallySortedSelectableBoardItems;
- (id)pasteNativeInfosFromPasteboard:(id)pasteboard allowImageReplacement:(BOOL)replacement;
- (id)permittedActionsForReasons:(unint64_t)reasons;
- (id)repToHighlightForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (id)selectionBehaviorForInsertingBoardItems:(id)items;
- (id)selectionPathWithInfo:(id)info;
- (id)selectionPathWithInfos:(id)infos;
- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)addContextualMenuItemsToArray:(id)array;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)alignDrawablesByBottomEdge:(id)edge;
- (void)alignDrawablesByHorizontalCenter:(id)center;
- (void)alignDrawablesByLeftEdge:(id)edge;
- (void)alignDrawablesByRightEdge:(id)edge;
- (void)alignDrawablesByTopEdge:(id)edge;
- (void)alignDrawablesByVerticalCenter:(id)center;
- (void)arrowKeyReceivedInDirection:(unint64_t)direction withModifierKeys:(id)keys;
- (void)beginEditingWith:(id)with;
- (void)bringForward:(id)forward;
- (void)bringToFront:(id)front;
- (void)canvasInfosDidChange;
- (void)connectWithConnectionLine:(id)line;
- (void)copy:(id)copy;
- (void)copyBoardItems:(id)items toPasteboard:(id)pasteboard asPDF:(BOOL)f nativeOnly:(BOOL)only;
- (void)copyToPasteboard:(id)pasteboard asPDF:(BOOL)f nativeOnly:(BOOL)only withSender:(id)sender;
- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point;
- (void)cut:(id)cut;
- (void)delete:(id)delete;
- (void)deselectAll:(id)all;
- (void)distributeDrawablesEvenly:(id)evenly;
- (void)distributeDrawablesHorizontally:(id)horizontally;
- (void)distributeDrawablesVertically:(id)vertically;
- (void)duplicate:(id)duplicate;
- (void)endEditing;
- (void)enterQuickSelectMode:(id)mode;
- (void)group:(id)group;
- (void)hideDragAndDropUI;
- (void)hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected;
- (void)insertBacktab:(id)backtab;
- (void)insertBoardItems:(id)items withInsertionContext:(id)context postProcessBlock:(id)block;
- (void)insertNewline:(id)newline;
- (void)insertTab:(id)tab;
- (void)insertText:(id)text replacementRange:(_NSRange)range;
- (void)lock:(id)lock;
- (void)mask:(id)mask;
- (void)maskWithSelection:(id)selection;
- (void)maskWithShape:(id)shape;
- (void)maskWithShapeType:(id)type;
- (void)maskWithShapeTypeInPropertyList:(id)list;
- (void)p_insertBoardItems:(id)items withInsertionContext:(id)context containerForInsertion:(id)insertion;
- (void)p_pasteImportableBoardItemProviders:(id)providers withPasteboard:(id)pasteboard selectionPath:(id)path sender:(id)sender;
- (void)paste:(id)paste;
- (void)pasteAsPlainText:(id)text;
- (void)pasteValues:(id)values;
- (void)pasteWithPasteboard:(id)pasteboard selectionPath:(id)path forceMatchStyle:(BOOL)style sender:(id)sender;
- (void)pasteWithPasteboard:(id)pasteboard sender:(id)sender;
- (void)prepareGeometryForInsertingBoardItems:(id)items withInsertionContext:(id)context ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping hasValidGeometries:(BOOL)geometries;
- (void)presentAlignmentTools:(id)tools;
- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler;
- (void)repWasCreated:(id)created;
- (void)scrollCanvasDown:(id)down;
- (void)scrollCanvasLeft:(id)left;
- (void)scrollCanvasPageDown:(id)down;
- (void)scrollCanvasPageUp:(id)up;
- (void)scrollCanvasRight:(id)right;
- (void)scrollCanvasUp:(id)up;
- (void)scrollToBeginningOfDocument:(id)document;
- (void)scrollToEndOfDocument:(id)document;
- (void)selectAll:(id)all;
- (void)selectParent:(id)parent;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)sendBackward:(id)backward;
- (void)sendToBack:(id)back;
- (void)setEditorController:(id)controller;
- (void)tabKeyPressed;
- (void)teardown;
- (void)ungroup:(id)ungroup;
- (void)unlock:(id)unlock;
- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info;
- (void)zoomIn:(id)in;
- (void)zoomOut:(id)out;
- (void)zoomToFitAllContent:(id)content;
- (void)zoomToSelection:(id)selection;
@end

@implementation CRLCanvasEditor

- (BOOL)shouldBeginTextInputWith:(id)with
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  shapeInfoToBeginEditing = [canvasEditorHelper shapeInfoToBeginEditing];
  v5 = shapeInfoToBeginEditing != 0;

  return v5;
}

- (void)arrowKeyReceivedInDirection:(unint64_t)direction withModifierKeys:(id)keys
{
  keysCopy = keys;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper arrowKeyReceivedInDirection:direction withModifierKeys:keysCopy];
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

- (void)beginEditingWith:(id)with
{
  withCopy = with;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper beginEditingOnKeyInputWithString:withCopy];
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

- (void)setEditorController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];

    if (editorController != controllerCopy)
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

- (void)delete:(id)delete
{
  deleteCopy = delete;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper delete:deleteCopy];
}

- (void)cut:(id)cut
{
  cutCopy = cut;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper cut:cutCopy];
}

- (void)lock:(id)lock
{
  lockCopy = lock;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper lock:lockCopy];
}

- (void)unlock:(id)unlock
{
  unlockCopy = unlock;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper unlock:unlockCopy];
}

- (void)deselectAll:(id)all
{
  allCopy = all;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper deselectAll:allCopy];
}

- (BOOL)isLayoutSelectable:(id)selectable
{
  selectableCopy = selectable;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [canvasEditorHelper isLayoutSelectable:selectableCopy];

  return v6;
}

- (void)duplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper duplicate:duplicateCopy];
}

- (void)addContextualMenuItemsToArray:(id)array
{
  arrayCopy = array;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper addContextualMenuItemsToArray:arrayCopy];
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper addContextualMenuElementsToArray:arrayCopy atPoint:{x, y}];
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
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

- (BOOL)shouldPreventQuickSelect
{
  editingCoordinator = [(CRLCanvasEditor *)self editingCoordinator];
  followCoordinator = [editingCoordinator followCoordinator];
  isFollowing = [followCoordinator isFollowing];

  return isFollowing;
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper addMiniFormatterElementsToArray:arrayCopy atPoint:{x, y}];
}

- (void)maskWithSelection:(id)selection
{
  selectionCopy = selection;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v5 = [canvasEditorHelper canPerformMaskWithShapeWithSender:selectionCopy];

  if (v5)
  {
    [(CRLCanvasEditor *)self maskWithShape:selectionCopy];
  }

  else
  {
    [(CRLCanvasEditor *)self mask:selectionCopy];
  }
}

- (void)mask:(id)mask
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper mask];
}

- (void)maskWithShape:(id)shape
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper maskWithShape];
}

- (void)maskWithShapeType:(id)type
{
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
    [canvasEditorHelper maskWithShapeType:{objc_msgSend(typeCopy, "tag")}];
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

- (void)maskWithShapeTypeInPropertyList:(id)list
{
  listCopy = list;
  v5 = objc_opt_class();
  v12 = sub_100014370(v5, listCopy);

  propertyList = [v12 propertyList];

  if (propertyList)
  {
    v7 = objc_opt_class();
    propertyList2 = [v12 propertyList];
    v9 = sub_100014370(v7, propertyList2);
    intValue = [v9 intValue];

    canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
    [canvasEditorHelper maskWithShapeType:intValue];
  }
}

- (void)enterQuickSelectMode:(id)mode
{
  modeCopy = mode;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper enterQuickSelectMode:modeCopy];
}

- (void)presentAlignmentTools:(id)tools
{
  toolsCopy = tools;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper presentAlignmentTools:toolsCopy];
}

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v9 = [canvasEditorHelper dragOperationForDragInfo:infoCopy atUnscaledPoint:{x, y}];

  return v9;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(operation) = [canvasEditorHelper handleDragOperation:operation withDragInfo:infoCopy atUnscaledPoint:{x, y}];

  return operation;
}

- (id)repToHighlightForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v9 = [canvasEditorHelper repToHighlightForDragInfo:infoCopy atUnscaledPoint:{x, y}];

  return v9;
}

- (void)updateDragAndDropUIForPoint:(CGPoint)point dragInfo:(id)info
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper updateDragAndDropUIForPoint:infoCopy dragInfo:{x, y}];
}

- (void)hideDragAndDropUI
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper hideDragAndDropUI];
}

- (BOOL)wantsToHighlightRep:(id)rep forDragOperationWithDragInfo:(id)info atPoint:(CGPoint)point allowNonPlaceholderReplacement:(BOOL)replacement
{
  replacementCopy = replacement;
  y = point.y;
  x = point.x;
  infoCopy = info;
  repCopy = rep;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(replacementCopy) = [canvasEditorHelper wantsToHighlightRep:repCopy forDragOperationWithDragInfo:infoCopy atPoint:replacementCopy allowNonPlaceholderReplacement:{x, y}];

  return replacementCopy;
}

- (BOOL)insertBoardItemsFromDragAndDrop:(id)drop atPoint:(CGPoint)point onRep:(id)rep insertionContext:(id)context alreadyPositionedInputInfos:(BOOL)infos
{
  infosCopy = infos;
  y = point.y;
  x = point.x;
  contextCopy = context;
  repCopy = rep;
  dropCopy = drop;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(infosCopy) = [canvasEditorHelper insertBoardItemsFromDragAndDrop:dropCopy atPoint:repCopy onRep:contextCopy insertionContext:infosCopy alreadyPositionedInputInfos:{x, y}];

  return infosCopy;
}

- (CGPath)newDragAndDropHighlightPathWithInset:(double)inset
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  [interactiveCanvasController visibleBoundsRect];
  v16 = CGRectInset(v15, inset, inset);
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

- (void)alignDrawablesByLeftEdge:(id)edge
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:0];
}

- (void)alignDrawablesByRightEdge:(id)edge
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:2];
}

- (void)alignDrawablesByVerticalCenter:(id)center
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:1];
}

- (void)alignDrawablesByTopEdge:(id)edge
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:3];
}

- (void)alignDrawablesByBottomEdge:(id)edge
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:5];
}

- (void)alignDrawablesByHorizontalCenter:(id)center
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper alignDrawablesByEdge:4];
}

- (void)distributeDrawablesHorizontally:(id)horizontally
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper distributeDrawablesByEdge:1];
}

- (void)distributeDrawablesVertically:(id)vertically
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper distributeDrawablesByEdge:4];
}

- (void)distributeDrawablesEvenly:(id)evenly
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper distributeDrawablesEvenly];
}

- (void)bringToFront:(id)front
{
  frontCopy = front;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper bringToFront:frontCopy];
}

- (void)bringForward:(id)forward
{
  forwardCopy = forward;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper bringForward:forwardCopy];
}

- (void)sendBackward:(id)backward
{
  backwardCopy = backward;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper sendBackward:backwardCopy];
}

- (void)sendToBack:(id)back
{
  backCopy = back;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper sendToBack:backCopy];
}

- (void)selectParent:(id)parent
{
  parentCopy = parent;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper selectParent:parentCopy];
}

- (void)presentMediaCompatibilityAlertWithReasons:(int64_t)reasons forMediaType:(int64_t)type forSingleMediaObject:(BOOL)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper presentMediaCompatibilityAlertWithReasons:reasons forMediaType:type forSingleMediaObject:objectCopy completionHandler:handlerCopy];
}

- (CRLCanvasEditor)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = CRLCanvasEditor;
  v5 = [(CRLCanvasEditor *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mInteractiveCanvasController, controllerCopy);
    v7 = [objc_alloc(objc_msgSend(objc_opt_class() "canvasEditorHelperClass"))];
    mCanvasEditorHelper = v6->mCanvasEditorHelper;
    v6->mCanvasEditorHelper = v7;

    v6->mResignFirstResponderWhenKeyboardHides = 1;
  }

  return v6;
}

- (void)teardown
{
  pasteboardController = [(CRLCanvasEditor *)self pasteboardController];
  [pasteboardController fulfillPasteboardPromises];

  [(CRLCanvasEditorHelper *)self->mCanvasEditorHelper teardown];

  objc_storeWeak(&self->mInteractiveCanvasController, 0);
}

- (CRLEditorController)editorController
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];

  return editorController;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);

  return WeakRetained;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];

  return editingCoordinator;
}

- (CRLCanvasSelection)canvasSelection
{
  editorController = [(CRLCanvasEditor *)self editorController];
  currentEditors = [editorController currentEditors];
  v5 = [currentEditors containsObject:self];

  if (v5)
  {
    v6 = objc_opt_class();
    editorController2 = [(CRLCanvasEditor *)self editorController];
    v8 = [editorController2 selectionForEditor:self];
    v9 = sub_100014370(v6, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)selectionPathWithInfo:(id)info
{
  infoCopy = info;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [canvasEditorHelper selectionPathWithInfo:infoCopy];

  return v6;
}

- (id)selectionPathWithInfos:(id)infos
{
  infosCopy = infos;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [canvasEditorHelper selectionPathWithInfos:infosCopy];

  return v6;
}

- (void)canvasInfosDidChange
{
  editorController = [(CRLCanvasEditor *)self editorController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100145608;
  v4[3] = &unk_10183AB38;
  v4[4] = self;
  [editorController performBlockAfterSettingSelection:v4];
}

- (void)repWasCreated:(id)created
{
  createdCopy = created;
  if ([createdCopy isSelectedIgnoringLocking])
  {
    [createdCopy becameSelected];
  }
}

- (id)p_filterNonDisplayedInfos:(id)infos
{
  infosCopy = infos;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [NSSet alloc];
  WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
  infosToDisplay = [WeakRetained infosToDisplay];
  v9 = [v6 initWithArray:infosToDisplay];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = infosCopy;
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

- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  pathCopy = path;
  stackCopy = stack;
  selectionCopy = selection;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v12 = [canvasEditorHelper nextEditorForSelection:selectionCopy withNewEditorStack:stackCopy selectionPath:pathCopy];

  return v12;
}

- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors
{
  toSelectionCopy = toSelection;
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

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  toSelectionCopy = toSelection;
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
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];

  v6 = objc_opt_class();
  v7 = sub_100014370(v6, currentDocumentMode);
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

  if (isLassoSelectionForMixedTypeEnabledInDrawingMode)
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
    interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    v7 = [(CRLPasteboardController *)v4 initWithDelegate:editingCoordinator];
    v8 = self->_pasteboardController;
    self->_pasteboardController = v7;

    pasteboardController = self->_pasteboardController;
  }

  return pasteboardController;
}

- (id)permittedActionsForReasons:(unint64_t)reasons
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v5 = [canvasEditorHelper permittedActionsForReasons:reasons];

  v6 = [NSSet crl_setWithSelectors:"copy:", 0];
  v7 = [v5 setByAddingObjectsFromSet:v6];

  return v7;
}

+ (BOOL)physicalKeyboardIsSender:(id)sender
{
  senderCopy = sender;
  LOBYTE(self) = [objc_msgSend(self "canvasEditorHelperClass")];

  return self;
}

- (BOOL)canPasteWithPasteboard:(id)pasteboard sender:(id)sender
{
  senderCopy = sender;
  pasteboardCopy = pasteboard;
  pasteboardController = [(CRLCanvasEditor *)self pasteboardController];
  v9 = [pasteboardController ingestibleItemSourceForPasteboard:pasteboardCopy];

  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(self) = [canvasEditorHelper canPasteWithItemSource:v9 sender:senderCopy];

  return self;
}

- (void)pasteWithPasteboard:(id)pasteboard sender:(id)sender
{
  senderCopy = sender;
  pasteboardCopy = pasteboard;
  editorController = [(CRLCanvasEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  [(CRLCanvasEditor *)self pasteWithPasteboard:pasteboardCopy selectionPath:selectionPath forceMatchStyle:0 sender:senderCopy];
}

- (BOOL)canvasEditorCanDeleteWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [(CRLCanvasEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

  LOBYTE(editorController) = [v8 count] != 0;
  return editorController;
}

- (BOOL)canvasEditorCanCopyWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [(CRLCanvasEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

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

- (BOOL)canvasEditorCanCutWithSender:(id)sender
{
  senderCopy = sender;
  if ([(CRLCanvasEditor *)self canvasEditorCanDeleteWithSender:senderCopy])
  {
    v5 = [(CRLCanvasEditor *)self canvasEditorCanCopyWithSender:senderCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPasteWithSender:(id)sender
{
  senderCopy = sender;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [canvasEditorHelper canPasteWithItemSource:0 sender:senderCopy];

  return v6;
}

- (BOOL)canvasEditorCanPasteWithSender:(id)sender
{
  senderCopy = sender;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v6 = [canvasEditorHelper canPasteWithItemSource:0 sender:senderCopy];

  return v6;
}

- (BOOL)canvasEditorCanOptionDragDuplicateWithSender:(id)sender
{
  senderCopy = sender;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CRLCanvasEditor *)self canvasEditorCanCopyWithSender:senderCopy];
  }

  return v8;
}

- (BOOL)canSelectAllWithSender:(id)sender
{
  senderCopy = sender;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isLassoSelectionForMixedTypeEnabledInDrawingMode = [freehandDrawingToolkit isLassoSelectionForMixedTypeEnabledInDrawingMode];

  freehandDrawingToolkit2 = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit2 isInDrawingMode];

  if (!isInDrawingMode || (isLassoSelectionForMixedTypeEnabledInDrawingMode & 1) != 0)
  {
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    editorController = [(CRLCanvasEditor *)self editorController];
    selectionPath = [editorController selectionPath];
    editorController2 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

    v32 = 0u;
    v33 = 0u;
    v17 = [editorController2 count] == 0;
    v34 = 0u;
    v35 = 0u;
    infosForSelectAllInRoot = [(CRLCanvasEditor *)self infosForSelectAllInRoot];
    v14 = [infosForSelectAllInRoot countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v30 = editorController2;
      v31 = senderCopy;
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
            objc_enumerationMutation(infosForSelectAllInRoot);
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
        v14 = [infosForSelectAllInRoot countByEnumeratingWithState:&v32 objects:v36 count:16];
        v23 = v25;
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_15:
      editorController2 = v30;
      senderCopy = v31;
    }
  }

  else
  {
    layoutController = [interactiveCanvasController layoutController];
    rootLayout = [layoutController rootLayout];
    children = [rootLayout children];
    v13 = [CRLFreehandDrawingLayout freehandDrawingLayoutsToInteractWithFromLayouts:children];
    v14 = [v13 count] != 0;

    editorController2 = [interactiveCanvasController editorController];
    v16 = [editorController2 mostSpecificCurrentEditorOfClass:objc_opt_class()];
    v17 = v16 == 0;
  }

  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v28 = [canvasEditorHelper allowSelectAllForSender:senderCopy hasNothingVisiblySelected:v17 hasAtLeastOneThingToSelect:v14];

  return v28;
}

- (BOOL)canvasEditorCanDeselectAllWithSender:(id)sender
{
  senderCopy = sender;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [(CRLCanvasEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v9 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  if ([v9 count])
  {
    v10 = 1;
  }

  else
  {
    v10 = [objc_opt_class() physicalKeyboardIsSender:senderCopy];
  }

  return v10;
}

- (BOOL)canGroupWithSender:(id)sender
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [(CRLCanvasEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v8 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  LOBYTE(selectionModelTranslator) = [interactiveCanvasController2 hasSelectedInfosInMultipleContainers];

  if (selectionModelTranslator)
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

- (BOOL)canUngroupWithSender:(id)sender
{
  editorController = [(CRLCanvasEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v6 = [selectionPath mostSpecificSelectionOfClass:objc_opt_class()];

  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  LOBYTE(editorController) = [canvasEditorHelper canUngroupWithSelection:v6];

  return editorController;
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v10 = objc_opt_class();
  presentedViewController = [asiOSCVC presentedViewController];
  v12 = sub_100014370(v10, presentedViewController);
  if (v12)
  {

LABEL_4:
    v16 = -1;
    goto LABEL_5;
  }

  v13 = objc_opt_class();
  presentedViewController2 = [asiOSCVC presentedViewController];
  v15 = sub_100014370(v13, presentedViewController2);

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
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v16 = [canvasEditorHelper canPerformEditorAction:action withSender:senderCopy];

  if (!v16)
  {
    v19 = 0;
    v16 = 1;
    while (!sel_isEqual(action, v29[v19]))
    {
      if (++v19 == 10)
      {
        v16 = 0;
        break;
      }
    }

    interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
    v21 = interactiveCanvasController2;
    if ("select:" == action)
    {
      v16 = -1;
    }

    else if ("zoomToFitAllContent:" == action)
    {
      board = [interactiveCanvasController2 board];
      rootContainer = [board rootContainer];
      childItems = [rootContainer childItems];
      if ([childItems count])
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }
    }

    else if ("zoomToSelection:" == action)
    {
      if ([interactiveCanvasController2 canZoomToCurrentSelection])
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }
    }

    else if ("saveSelectedBoardItemsAsStencil:" == action)
    {
      selectionModelTranslator = [interactiveCanvasController2 selectionModelTranslator];
      editorController = [(CRLCanvasEditor *)self editorController];
      selectionPath = [editorController selectionPath];
      v25 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];
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

- (void)copyToPasteboard:(id)pasteboard asPDF:(BOOL)f nativeOnly:(BOOL)only withSender:(id)sender
{
  onlyCopy = only;
  fCopy = f;
  pasteboardCopy = pasteboard;
  if ([(CRLCanvasEditor *)self canvasEditorCanCopyWithSender:0])
  {
    interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
    editorController = [interactiveCanvasController2 editorController];
    selectionPath = [editorController selectionPath];
    v14 = [selectionModelTranslator unlockedBoardItemsForSelectionPath:selectionPath];

    [(CRLCanvasEditor *)self copyBoardItems:v14 toPasteboard:pasteboardCopy asPDF:fCopy nativeOnly:onlyCopy];
  }
}

- (void)copyBoardItems:(id)items toPasteboard:(id)pasteboard asPDF:(BOOL)f nativeOnly:(BOOL)only
{
  onlyCopy = only;
  itemsCopy = items;
  pasteboardCopy = pasteboard;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  v12 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = itemsCopy;
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
  v20 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v19];
  v21 = [v20 crl_arrayWithObjectsInSet:v19];

  if (v21 && [v21 count])
  {
    pasteboardController = [(CRLCanvasEditor *)self pasteboardController];
    v23 = [pasteboardController newCopyAssistantWithPasteboard:pasteboardCopy];
    [pasteboardController copyBoardItems:v21 toPasteboard:pasteboardCopy asPDF:0 writeAssistant:v23 nativeOnly:onlyCopy icc:interactiveCanvasController];
  }
}

- (void)copy:(id)copy
{
  copyCopy = copy;
  v5 = +[CRLPasteboard generalPasteboard];
  [(CRLCanvasEditor *)self copyToPasteboard:v5 nativeOnly:0 withSender:copyCopy];

  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  [canvasEditor hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)prepareGeometryForInsertingBoardItems:(id)items withInsertionContext:(id)context ignoreCanvasBackgroundAlignmentProvidedSnapping:(BOOL)snapping hasValidGeometries:(BOOL)geometries
{
  geometriesCopy = geometries;
  snappingCopy = snapping;
  itemsCopy = items;
  contextCopy = context;
  v54 = geometriesCopy;
  if (!geometriesCopy)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v10 = [itemsCopy countByEnumeratingWithState:&v64 objects:v69 count:16];
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
            objc_enumerationMutation(itemsCopy);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          v15 = objc_opt_class();
          v21 = sub_1003038E0(v14, v15, 1, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLFittingOnInsertion);
          if (v21)
          {
            interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
            board = [interactiveCanvasController board];
            [v21 scaleDownSizeToFitWithinSize:board board:{600.0, 600.0}];
          }
        }

        v11 = [itemsCopy countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v11);
    }
  }

  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [interactiveCanvasController2 visibleUnscaledRect];
  v29 = sub_100120414(v25, v26, v27, v28);
  v31 = v30;

  v32 = contextCopy;
  if ([contextCopy hasPreferredCenter])
  {
    [contextCopy preferredCenter];
    v29 = v33;
    v31 = v34;
  }

  v35 = [objc_alloc(-[CRLCanvasEditor boardItemPositionerClass](self "boardItemPositionerClass"))];
  [v35 positionBoardItems:itemsCopy ignoreCanvasBackgroundAlignmentProvidedSnapping:snappingCopy];
  v36 = objc_opt_class();
  interactiveCanvasController3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  topLevelContainerInfoForEditing = [interactiveCanvasController3 topLevelContainerInfoForEditing];
  v39 = sub_100014370(v36, topLevelContainerInfoForEditing);

  if (v39)
  {
    canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
    v41 = [canvasEditorHelper canInsertBoardItems:itemsCopy intoGroup:v39];

    if (v41)
    {
      memset(&v63, 0, sizeof(v63));
      interactiveCanvasController4 = [(CRLCanvasEditor *)self interactiveCanvasController];
      topLevelContainerRepForEditing = [interactiveCanvasController4 topLevelContainerRepForEditing];
      layout = [topLevelContainerRepForEditing layout];
      v45 = layout;
      if (layout)
      {
        [layout transformInRoot];
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
      v46 = itemsCopy;
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
            geometry = [v51 geometry];
            v62 = v63;
            v53 = [geometry geometryByAppendingTransform:&v62];
            [v51 setGeometry:v53];
          }

          v48 = [v46 countByEnumeratingWithState:&v57 objects:v68 count:16];
        }

        while (v48);
      }

      v32 = contextCopy;
    }
  }
}

- (CGSize)sizeForInsertingMediaOfSize:(CGSize)size
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)selectionBehaviorForInsertingBoardItems:(id)items
{
  itemsCopy = items;
  v5 = [CRLCanvasCommandSelectionBehavior alloc];
  v6 = [NSSet setWithArray:itemsCopy];

  v7 = [(CRLCanvasCommandSelectionBehavior *)v5 initWithCanvasEditor:self type:0 constructedInfos:v6];

  return v7;
}

- (void)insertBoardItems:(id)items withInsertionContext:(id)context postProcessBlock:(id)block
{
  itemsCopy = items;
  contextCopy = context;
  blockCopy = block;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  containerForTopLevelInsertion = [interactiveCanvasController containerForTopLevelInsertion];
  if ([contextCopy shouldEndEditing])
  {
    [interactiveCanvasController endEditing];
  }

  if ([contextCopy shouldEndEditing])
  {
    v13 = [(CRLCanvasEditor *)self selectionBehaviorForInsertingBoardItems:itemsCopy];
  }

  else
  {
    v13 = 0;
  }

  [commandController openGroupWithSelectionBehavior:v13];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"Insert" value:0 table:@"UndoStrings"];
  [commandController setCurrentGroupActionString:v15];

  [(CRLCanvasEditor *)self p_insertBoardItems:itemsCopy withInsertionContext:contextCopy containerForInsertion:containerForTopLevelInsertion];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  [commandController closeGroup];
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper donateBoardItemsInsertion:itemsCopy];

  sub_1005B8914(self, itemsCopy);
}

- (void)p_insertBoardItems:(id)items withInsertionContext:(id)context containerForInsertion:(id)insertion
{
  itemsCopy = items;
  contextCopy = context;
  insertionCopy = insertion;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  v31 = interactiveCanvasController;
  if (([commandController isGroupOpen] & 1) == 0)
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
  topLevelContainerInfoForEditing = [interactiveCanvasController topLevelContainerInfoForEditing];
  v18 = sub_100014370(v16, topLevelContainerInfoForEditing);

  v30 = v18;
  if (v18)
  {
    canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
    v20 = [canvasEditorHelper canInsertBoardItems:itemsCopy intoGroup:v18];

    if (v20)
    {
      v21 = v18;

      insertionCopy = v21;
    }
  }

  insertionContextFromInsertionContextWithNextZOrder = contextCopy;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = itemsCopy;
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v32 = insertionContextFromInsertionContextWithNextZOrder;
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      v27 = 0;
      v28 = insertionContextFromInsertionContextWithNextZOrder;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v29 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:insertionCopy boardItem:*(*(&v33 + 1) + 8 * v27)];
        [commandController enqueueCommand:v29];
        insertionContextFromInsertionContextWithNextZOrder = [v28 insertionContextFromInsertionContextWithNextZOrder];

        v27 = v27 + 1;
        v28 = insertionContextFromInsertionContextWithNextZOrder;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v25);
  }
}

- (void)pasteWithPasteboard:(id)pasteboard selectionPath:(id)path forceMatchStyle:(BOOL)style sender:(id)sender
{
  styleCopy = style;
  pasteboardCopy = pasteboard;
  pathCopy = path;
  senderCopy = sender;
  pasteboardController = [(CRLCanvasEditor *)self pasteboardController];
  v23 = 0;
  if ([pasteboardController hasNativeTypesOnPasteboard:pasteboardCopy])
  {
    v14 = [pasteboardController providersForNativeBoardItemsAndTextFromPasteboard:pasteboardCopy validGeometries:&v23];
    v15 = v14;
    if (v14 && [v14 count])
    {
      v16 = [(CRLCanvasEditor *)self p_pasteNativeBoardItemsFromProviders:v15 withPasteboard:pasteboardCopy selectionPath:pathCopy sender:senderCopy hasValidGeometries:v23 allowImageReplacement:1];
    }

    v17 = 0;
    goto LABEL_28;
  }

  v18 = [pasteboardController preferredImportableDataTypeOnPasteboard:pasteboardCopy detectImportableURLsInText:!styleCopy];
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

      v19 = [pasteboardController providersForBoardItemsFromImportedTextFromPasteboard:pasteboardCopy];
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
      v19 = [pasteboardController providersForBoardItemsFromImportedRichTextFromPasteboard:pasteboardCopy];
      goto LABEL_24;
    }

    v15 = 0;
    if (v18 != 2)
    {
      goto LABEL_28;
    }
  }

  v19 = [pasteboardController providersForBoardItemsImportedFromPasteboard:pasteboardCopy];
LABEL_24:
  v17 = v19;
  if (v19 && [v19 count])
  {
    [(CRLCanvasEditor *)self p_pasteImportableBoardItemProviders:v17 withPasteboard:pasteboardCopy selectionPath:pathCopy sender:senderCopy];
  }

  v15 = 0;
LABEL_28:
}

- (id)p_pasteNativeBoardItemsFromProviders:(id)providers withPasteboard:(id)pasteboard selectionPath:(id)path sender:(id)sender hasValidGeometries:(BOOL)geometries allowImageReplacement:(BOOL)replacement
{
  replacementCopy = replacement;
  geometriesCopy = geometries;
  providersCopy = providers;
  pasteboardCopy = pasteboard;
  pathCopy = path;
  senderCopy = sender;
  v18 = senderCopy;
  v44 = pathCopy;
  if (replacementCopy)
  {
    canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
    v49 = 0;
    v20 = [canvasEditorHelper commandForReplacingImagePlaceholderInSelection:pathCopy withBoardItems:providersCopy isCrossDocument:0 withSender:v18 outSelectionBehavior:&v49];
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

    v39 = geometriesCopy;
    v40 = v21;
    v41 = v18;
    v42 = pasteboardCopy;
  }

  else
  {
    v39 = geometriesCopy;
    v41 = senderCopy;
    v42 = pasteboardCopy;
    v40 = 0;
  }

  interactiveCanvasController2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v43 = providersCopy;
  v24 = providersCopy;
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
        interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
        editingCoordinator = [interactiveCanvasController editingCoordinator];
        boardItemFactory = [editingCoordinator boardItemFactory];
        v33 = [v29 newBoardItemWithFactory:boardItemFactory bakedSize:0];

        if (v33)
        {
          [interactiveCanvasController2 addObject:v33];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v26);
  }

  v18 = v41;
  pasteboardCopy = v42;
  v20 = [(CRLCanvasEditor *)self p_commandForPastingProvidedBoardItems:interactiveCanvasController2 withPasteboard:v42 sender:v41 hasValidGeometries:v39 allowPositionChange:1];
  if (v20)
  {
    v22 = interactiveCanvasController2;
    providersCopy = v43;
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
    interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
    commandController = [interactiveCanvasController2 commandController];
    [commandController enqueueCommand:v20 withSelectionBehavior:v21];

    goto LABEL_24;
  }

  v22 = 0;
  providersCopy = v43;
  v21 = v40;
LABEL_24:

  return v22;
}

- (void)p_pasteImportableBoardItemProviders:(id)providers withPasteboard:(id)pasteboard selectionPath:(id)path sender:(id)sender
{
  pasteboardCopy = pasteboard;
  pathCopy = path;
  senderCopy = sender;
  providersCopy = providers;
  v14 = [[CRLPasteboardMultipleImportableBoardItemProvider alloc] initWithImportableBoardItemProviders:providersCopy];

  [(CRLPasteboardMultipleImportableBoardItemProvider *)v14 setAlertPresenter:self];
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  [editingCoordinator suspendCollaborationWithReason:@"CRLCanvasEditorPastingImportableBoardItems"];

  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Pasting…" value:0 table:0];

  layerHost = [interactiveCanvasController2 layerHost];
  progress = [(CRLPasteboardMultipleImportableBoardItemProvider *)v14 progress];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1001484CC;
  v36[3] = &unk_10183AB38;
  v22 = v14;
  v37 = v22;
  v23 = [layerHost beginModalOperationWithPresentedLocalizedMessage:v19 progress:progress cancelHandler:v36];

  editingCoordinator2 = [interactiveCanvasController2 editingCoordinator];
  boardItemFactory = [editingCoordinator2 boardItemFactory];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001484D4;
  v30[3] = &unk_101840068;
  v30[4] = interactiveCanvasController2;
  v30[5] = v23;
  v31 = v22;
  selfCopy = self;
  v33 = pathCopy;
  v34 = senderCopy;
  v35 = pasteboardCopy;
  v26 = pasteboardCopy;
  v27 = senderCopy;
  v28 = pathCopy;
  v29 = v22;
  [(CRLPasteboardMultipleImportableBoardItemProvider *)v29 provideBoardItemsWithFactory:boardItemFactory completionHandler:v30];
}

- (id)pasteNativeInfosFromPasteboard:(id)pasteboard allowImageReplacement:(BOOL)replacement
{
  replacementCopy = replacement;
  pasteboardCopy = pasteboard;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  pasteboardController = [(CRLCanvasEditor *)self pasteboardController];
  if ([pasteboardController hasNativeTypesOnPasteboard:pasteboardCopy])
  {
    v15 = 0;
    v9 = [pasteboardController providersForNativeBoardItemsAndTextFromPasteboard:pasteboardCopy validGeometries:&v15];
    v10 = v9;
    if (v9 && [v9 count])
    {
      editorController = [interactiveCanvasController editorController];
      selectionPath = [editorController selectionPath];
      v13 = [(CRLCanvasEditor *)self p_pasteNativeBoardItemsFromProviders:v10 withPasteboard:pasteboardCopy selectionPath:selectionPath sender:0 hasValidGeometries:v15 allowImageReplacement:replacementCopy];
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

- (id)commandForInsertingBoardItems:(id)items below:(id)below withOffset:(unint64_t)offset
{
  belowCopy = below;
  itemsCopy = items;
  parentContainerItem = [belowCopy parentContainerItem];
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v12 = canvasEditorHelper;
  if (parentContainerItem)
  {
    [canvasEditorHelper commandToInsertBoardItems:itemsCopy intoContainer:parentContainerItem belowBoardItem:belowCopy withOffset:offset];
  }

  else
  {
    [canvasEditorHelper commandForInsertingBoardItemsIntoTopLevelContainer:itemsCopy below:belowCopy withOffset:offset];
  }
  v13 = ;

  return v13;
}

- (void)paste:(id)paste
{
  pasteCopy = paste;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper paste:pasteCopy];

  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  [canvasEditor hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)pasteAsPlainText:(id)text
{
  textCopy = text;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper pasteAsPlainText:textCopy];
}

- (void)pasteValues:(id)values
{
  valuesCopy = values;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper pasteValues:valuesCopy];
}

- (CGRect)p_boundingRectForPastingBoardItems:(id)items
{
  itemsCopy = items;
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
  v5 = itemsCopy;
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

- (id)p_commandForPastingProvidedBoardItems:(id)items withPasteboard:(id)pasteboard sender:(id)sender hasValidGeometries:(BOOL)geometries allowPositionChange:(BOOL)change
{
  changeCopy = change;
  geometriesCopy = geometries;
  itemsCopy = items;
  pasteboardCopy = pasteboard;
  senderCopy = sender;
  if (![itemsCopy count])
  {
    v32 = 0;
    goto LABEL_28;
  }

  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  [interactiveCanvasController visibleUnscaledRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(CRLCanvasEditor *)self p_boundingRectForPastingBoardItems:itemsCopy];
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (geometriesCopy && changeCopy)
  {
    if (sub_10011EF14(v17, v19, v21, v23, v24, v25, v26, v27))
    {
      goto LABEL_14;
    }
  }

  else if (!changeCopy)
  {
    goto LABEL_14;
  }

  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  [asiOSCVC lastTapPoint];
  v36 = v35;
  v38 = v37;

  v39 = CGPointZero.x == v36 && CGPointZero.y == v38;
  if (!v39 && ![objc_opt_class() physicalKeyboardIsSender:senderCopy])
  {
    goto LABEL_15;
  }

  [interactiveCanvasController visibleUnscaledRect];
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
  name = [pasteboardCopy name];
  v47 = [name isEqualToString:@"com.apple.freeform.Canvas.CRLCanvasRepNoPositionOffsetPasteboardName"];

  if (v47)
  {

    v45 = 0;
  }

  v32 = objc_alloc_init(_TtC8Freeform15CRLCommandGroup);
  if ([itemsCopy count])
  {
    v48 = +[NSSet set];
    editingCoordinator = [(CRLCanvasEditor *)self editingCoordinator];
    v50 = [CRLConnectionLineAdjustmentHelper commandsForAdjustingConnectionLines:itemsCopy infosToRemove:v48 editingCoordinator:editingCoordinator withIcc:interactiveCanvasController];
    [(CRLCommandGroup *)v32 addCommands:v50];
  }

  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  containerForTopLevelInsertion = [interactiveCanvasController2 containerForTopLevelInsertion];

  [v45 positionBoardItems:itemsCopy];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v53 = itemsCopy;
  v54 = [v53 countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v54)
  {
    v55 = v54;
    v61 = interactiveCanvasController;
    v62 = senderCopy;
    v56 = *v64;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v64 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:containerForTopLevelInsertion boardItem:*(*(&v63 + 1) + 8 * i)];
        [(CRLCommandGroup *)v32 addCommand:v58];
      }

      v55 = [v53 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v55);

    v53 = +[NSBundle mainBundle];
    v59 = [v53 localizedStringForKey:@"Paste" value:0 table:0];
    [(CRLCommandGroup *)v32 setActionString:v59];

    senderCopy = v62;
    interactiveCanvasController = v61;
  }

LABEL_28:

  return v32;
}

- (NSSet)infosForSelectAllInRoot
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  infosToDisplay = [interactiveCanvasController infosToDisplay];
  v4 = [NSSet setWithArray:infosToDisplay];

  return v4;
}

- (void)selectAll:(id)all
{
  allCopy = all;
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  topLevelContainerRepForEditing = [interactiveCanvasController topLevelContainerRepForEditing];

  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController2 freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (isInDrawingMode)
  {
    v59 = allCopy;
    v10 = +[NSSet set];
    v11 = [(CRLCanvasEditor *)self selectionPathWithInfos:v10];
    editorController = [(CRLCanvasEditor *)self editorController];
    [editorController setSelectionPath:v11];

    v13 = +[NSMutableSet set];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    interactiveCanvasController3 = [(CRLCanvasEditor *)self interactiveCanvasController];
    layoutController = [interactiveCanvasController3 layoutController];
    rootLayout = [layoutController rootLayout];
    children = [rootLayout children];
    v18 = [CRLFreehandDrawingLayout freehandDrawingLayoutsToInteractWithFromLayouts:children];

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

          children2 = [*(*(&v64 + 1) + 8 * v22) children];
          v24 = [children2 crl_arrayByTransformingWithBlock:&stru_101840110];
          [v13 addObjectsFromArray:v24];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v20);
    }

    v25 = +[NSMutableSet set];
    allObjects = [v13 allObjects];
    [v25 addObjectsFromArray:allObjects];

    interactiveCanvasController4 = [(CRLCanvasEditor *)self interactiveCanvasController];
    freehandDrawingToolkit2 = [interactiveCanvasController4 freehandDrawingToolkit];
    isLassoAbleToSelectMixedType = [freehandDrawingToolkit2 isLassoAbleToSelectMixedType];

    if (isLassoAbleToSelectMixedType)
    {
      if (topLevelContainerRepForEditing)
      {
        v30 = objc_opt_class();
        containerInfo = [topLevelContainerRepForEditing containerInfo];
        childInfos = [containerInfo childInfos];
        v33 = sub_100014370(v30, childInfos);
        v34 = v33;
        v35 = &__NSArray0__struct;
        if (v33)
        {
          v35 = v33;
        }

        allObjects2 = v35;
      }

      else
      {
        containerInfo = [(CRLCanvasEditor *)self infosForSelectAllInRoot];
        allObjects2 = [containerInfo allObjects];
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v40 = allObjects2;
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

    infosForSelectAllInRoot = [v25 copy];

    allCopy = v59;
  }

  else if (topLevelContainerRepForEditing)
  {
    containerInfo2 = [topLevelContainerRepForEditing containerInfo];
    childInfos2 = [containerInfo2 childInfos];
    infosForSelectAllInRoot = [NSSet setWithArray:childInfos2];
  }

  else
  {
    infosForSelectAllInRoot = [(CRLCanvasEditor *)self infosForSelectAllInRoot];
  }

  v46 = [(CRLCanvasEditor *)self p_selectableInfosInInfos:infosForSelectAllInRoot];
  v47 = [NSSet setWithArray:v46];

  v48 = [(CRLCanvasEditor *)self selectionPathWithInfos:v47];
  editorController2 = [(CRLCanvasEditor *)self editorController];
  [editorController2 setSelectionPath:v48];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    interactiveCanvasController5 = [(CRLCanvasEditor *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController5 layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    isCurrentlyInQuickSelectMode = [asiOSCVC isCurrentlyInQuickSelectMode];

    if ((isCurrentlyInQuickSelectMode & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->mInteractiveCanvasController);
      layerHost2 = [WeakRetained layerHost];
      miniFormatterPresenter = [layerHost2 miniFormatterPresenter];
      editorController3 = [(CRLCanvasEditor *)self editorController];
      selectionPath = [editorController3 selectionPath];
      [miniFormatterPresenter presentMiniFormatterForSelectionPath:selectionPath];
    }
  }

  if ([CRLFeatureFlagsHelper isOSFeatureEnabled:1])
  {
    [(CRLCanvasEditor *)self hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
  }
}

- (void)group:(id)group
{
  groupCopy = group;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper group:groupCopy];
}

- (void)ungroup:(id)ungroup
{
  ungroupCopy = ungroup;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper ungroup:ungroupCopy];
}

- (NSArray)infosToConnect
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  if ([interactiveCanvasController isDraggingToInsertBoardItems])
  {
    v3 = 0;
  }

  else
  {
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];
    v3 = [CRLConnectionLineRep infosToConnectFromSelectionPath:selectionPath withInteractiveCanvasController:interactiveCanvasController];
  }

  return v3;
}

- (void)connectWithConnectionLine:(id)line
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  boardItemFactory = [editingCoordinator boardItemFactory];

  connectionLineItemToUseForConnecting = [(CRLCanvasEditor *)self connectionLineItemToUseForConnecting];
  if (connectionLineItemToUseForConnecting)
  {
    interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
    editingCoordinator2 = [interactiveCanvasController2 editingCoordinator];
    boardItemFactory2 = [editingCoordinator2 boardItemFactory];
    v11 = [boardItemFactory2 makeDuplicateOfBoardItem:connectionLineItemToUseForConnecting];
  }

  else
  {
    v11 = [boardItemFactory makeShapeItemWithShapeType:19];
  }

  infosToConnect = [(CRLCanvasEditor *)self infosToConnect];
  interactiveCanvasController3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController3 commandController];
  v15 = [boardItemFactory blockToRunCommandToPostProcessWithNewBoardItem:v11 shapeType:2 infosToConnect:infosToConnect commandController:commandController];

  v16 = +[CRLInsertionContext nonInteractiveInsertionContext];
  v21 = v11;
  v17 = [NSArray arrayWithObjects:&v21 count:1];
  [(CRLCanvasEditor *)self prepareGeometryForInsertingBoardItems:v17 withInsertionContext:v16];

  v20 = v11;
  v18 = [NSArray arrayWithObjects:&v20 count:1];
  [(CRLCanvasEditor *)self insertBoardItems:v18 withInsertionContext:v16 postProcessBlock:v15];

  interactiveCanvasController4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  [interactiveCanvasController4 donateTipEventObjectsConnectedWithConnectionLine];
}

- (_TtC8Freeform21CRLConnectionLineItem)connectionLineItemToUseForConnecting
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  board = [interactiveCanvasController board];
  rootContainer = [board rootContainer];

  childItems = [rootContainer childItems];
  v7 = [childItems count];

  if ((v7 - 1) < 0)
  {
LABEL_7:
    interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
    highestZOrderConnectionLineLayoutAcrossBoard = [interactiveCanvasController2 highestZOrderConnectionLineLayoutAcrossBoard];
    childItems = [highestZOrderConnectionLineLayoutAcrossBoard connectionLineInfo];
  }

  else
  {
    while (1)
    {
      --v7;
      childItems2 = [rootContainer childItems];
      interactiveCanvasController2 = [childItems2 objectAtIndexedSubscript:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_opt_class();
        v11 = sub_100013F00(v10, interactiveCanvasController2);
        infosToConnect = [(CRLCanvasEditor *)self infosToConnect];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100149FFC;
        v17[3] = &unk_101840138;
        v13 = v11;
        v18 = v13;
        selfCopy = self;
        v14 = [infosToConnect crl_containsObjectPassingTest:v17];

        if (v14)
        {
          childItems = v13;
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

  return childItems;
}

- (id)p_nextInfoInTabSequence:(int64_t)sequence
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  editorController = [interactiveCanvasController2 editorController];
  selectionPath = [editorController selectionPath];
  v10 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  v11 = [v10 count];
  p_spatiallySortedSelectableBoardItems = [(CRLCanvasEditor *)self p_spatiallySortedSelectableBoardItems];
  v13 = [p_spatiallySortedSelectableBoardItems mutableCopy];

  if (![v13 count])
  {
    v40 = 0;
    goto LABEL_52;
  }

  if (v11)
  {
    goto LABEL_3;
  }

  if (sequence == 1)
  {
    lastObject = [v13 lastObject];
    goto LABEL_51;
  }

  if (sequence)
  {
LABEL_3:
    sequenceCopy = sequence;
    v14 = [v13 count];
    if ((v14 - 1) >= 2)
    {
      v15 = (v14 - 2);
      do
      {
        v16 = [v13 objectAtIndexedSubscript:v15 + 1];
        geometry = [v16 geometry];

        v18 = [v13 objectAtIndexedSubscript:v15];
        geometry2 = [v18 geometry];

        [geometry2 size];
        v21 = v20;
        interactiveCanvasController3 = [(CRLCanvasEditor *)self interactiveCanvasController];
        canvas = [interactiveCanvasController3 canvas];
        isAnchoredAtRight = [canvas isAnchoredAtRight];

        if (isAnchoredAtRight)
        {
          [geometry transformedBounds];
          MaxX = CGRectGetMaxX(v62);
          [geometry transformedBounds];
          MinY = CGRectGetMinY(v63);
          [geometry2 transformedBounds];
          v27 = CGRectGetMaxX(v64);
          [geometry2 transformedBounds];
          v28 = CGRectGetMinY(v65);
          if (MaxX > v27)
          {
            goto LABEL_9;
          }
        }

        else
        {
          [geometry position];
          v30 = v29;
          MinY = v31;
          [geometry2 position];
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
      anyObject = [v10 anyObject];
      v38 = [v13 indexOfObject:anyObject];

      v39 = sequenceCopy;
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

      v39 = sequenceCopy;
      if (sequenceCopy == 1)
      {
        firstIndex = [v42 firstIndex];
      }

      else
      {
        firstIndex = [v42 lastIndex];
      }

      v38 = firstIndex;
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

      if (sequenceCopy == 1)
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
        lastObject = [v13 objectAtIndex:v53];
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

  lastObject = [v13 firstObject];
LABEL_51:
  v40 = lastObject;
LABEL_52:

  return v40;
}

- (id)p_spatiallySortedSelectableBoardItems
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  topLevelContainerRepForEditing = [interactiveCanvasController topLevelContainerRepForEditing];

  if (topLevelContainerRepForEditing)
  {
    containerInfo = [topLevelContainerRepForEditing containerInfo];
    childInfos = [containerInfo childInfos];
LABEL_13:
    v9 = childInfos;
    goto LABEL_14;
  }

  interactiveCanvasController2 = [(CRLCanvasEditor *)self interactiveCanvasController];
  hasSelectedInfosInMultipleContainers = [interactiveCanvasController2 hasSelectedInfosInMultipleContainers];

  if (!hasSelectedInfosInMultipleContainers)
  {
    containerInfo = [(CRLCanvasEditor *)self interactiveCanvasController];
    childInfos = [containerInfo infosToDisplay];
    goto LABEL_13;
  }

  v9 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  interactiveCanvasController3 = [(CRLCanvasEditor *)self interactiveCanvasController];
  containerInfo = [interactiveCanvasController3 containersForSelection];

  v11 = [containerInfo countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(containerInfo);
        }

        childInfos2 = [*(*(&v23 + 1) + 8 * i) childInfos];
        [v9 addObjectsFromArray:childInfos2];
      }

      v12 = [containerInfo countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

LABEL_14:

  v16 = [(CRLCanvasEditor *)self p_selectableInfosInInfos:v9];
  interactiveCanvasController4 = [(CRLCanvasEditor *)self interactiveCanvasController];
  canvas = [interactiveCanvasController4 canvas];
  isAnchoredAtRight = [canvas isAnchoredAtRight];

  if (isAnchoredAtRight)
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

- (id)p_selectableInfosInInfos:(id)infos
{
  infosCopy = infos;
  v5 = +[NSMutableArray array];
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = infosCopy;
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
        v13 = [interactiveCanvasController repForInfo:{v12, v16}];
        repForSelecting = [v13 repForSelecting];

        if (repForSelecting == v13)
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

- (void)insertTab:(id)tab
{
  v4 = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (!isInDrawingMode || (v4 & 1) == 0)
  {
    v10 = [(CRLCanvasEditor *)self p_nextInfoInTabSequence:0];
    v8 = [(CRLCanvasEditor *)self selectionPathWithInfo:v10];
    editorController = [(CRLCanvasEditor *)self editorController];
    [editorController setSelectionPath:v8];
  }
}

- (void)insertBacktab:(id)backtab
{
  v4 = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  freehandDrawingToolkit = [interactiveCanvasController freehandDrawingToolkit];
  isInDrawingMode = [freehandDrawingToolkit isInDrawingMode];

  if (!isInDrawingMode || (v4 & 1) == 0)
  {
    v10 = [(CRLCanvasEditor *)self p_nextInfoInTabSequence:1];
    v8 = [(CRLCanvasEditor *)self selectionPathWithInfo:v10];
    editorController = [(CRLCanvasEditor *)self editorController];
    [editorController setSelectionPath:v8];
  }
}

- (void)insertText:(id)text replacementRange:(_NSRange)range
{
  textCopy = text;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper beginEditingOnKeyInputWithString:textCopy];
}

- (void)insertNewline:(id)newline
{
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v3 = +[NSString string];
  [canvasEditorHelper beginEditingOnKeyInputWithString:v3];
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
    createArrangeInspectorDelegate = [(CRLCanvasEditor *)self createArrangeInspectorDelegate];
    v5 = self->mZOrderArranger;
    self->mZOrderArranger = createArrangeInspectorDelegate;

    mZOrderArranger = self->mZOrderArranger;
  }

  return mZOrderArranger;
}

- (void)scrollToBeginningOfDocument:(id)document
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  canvasLayer = [layerHost canvasLayer];
  [canvasLayer contentInset];
  v6 = v5;

  [interactiveCanvasController contentOffset];
  v8 = v7;
  [interactiveCanvasController viewScale];
  [interactiveCanvasController setContentOffset:1 scrollOptions:{v8, v6 / v9}];
}

- (void)scrollToEndOfDocument:(id)document
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController canvasView];
  [canvasView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [interactiveCanvasController contentOffset];
  v13 = v12;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [interactiveCanvasController setContentOffset:1 scrollOptions:{v13, CGRectGetMaxY(v16)}];
}

- (void)zoomIn:(id)in
{
  inCopy = in;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v7 = canvasEditorHelper;
  if (inCopy)
  {
    selfCopy = inCopy;
  }

  else
  {
    selfCopy = self;
  }

  [canvasEditorHelper zoomIn:selfCopy];
}

- (void)zoomOut:(id)out
{
  outCopy = out;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  v7 = canvasEditorHelper;
  if (outCopy)
  {
    selfCopy = outCopy;
  }

  else
  {
    selfCopy = self;
  }

  [canvasEditorHelper zoomOut:selfCopy];
}

- (void)zoomToFitAllContent:(id)content
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  [interactiveCanvasController zoomToFitAllContent];
}

- (void)zoomToSelection:(id)selection
{
  interactiveCanvasController = [(CRLCanvasEditor *)self interactiveCanvasController];
  [interactiveCanvasController zoomToCurrentSelection];
}

- (void)scrollCanvasPageUp:(id)up
{
  upCopy = up;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper scrollCanvasPageUp:upCopy];
}

- (void)scrollCanvasPageDown:(id)down
{
  downCopy = down;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper scrollCanvasPageDown:downCopy];
}

- (void)scrollCanvasUp:(id)up
{
  upCopy = up;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper scrollCanvasUp:upCopy];
}

- (void)scrollCanvasDown:(id)down
{
  downCopy = down;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper scrollCanvasDown:downCopy];
}

- (void)scrollCanvasLeft:(id)left
{
  leftCopy = left;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper scrollCanvasLeft:leftCopy];
}

- (void)scrollCanvasRight:(id)right
{
  rightCopy = right;
  canvasEditorHelper = [(CRLCanvasEditor *)self canvasEditorHelper];
  [canvasEditorHelper scrollCanvasRight:rightCopy];
}

@end