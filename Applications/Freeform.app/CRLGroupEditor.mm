@interface CRLGroupEditor
- (BOOL)canPasteWithPasteboard:(id)pasteboard;
- (BOOL)canPasteWithPasteboard:(id)pasteboard sender:(id)sender;
- (BOOL)p_canDuplicateWithSender:(id)sender;
- (BOOL)p_currentlyEditingInGroup;
- (BOOL)p_shouldAllowKeyCommands;
- (NSSet)groupItems;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (id)pasteNativeInfosFromPasteboard:(id)pasteboard;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)source;
- (void)duplicate:(id)duplicate;
- (void)insertNewline:(id)newline;
- (void)p_pasteBoardItems:(id)items inGroup:(id)group atIndex:(unint64_t)index forceMatchStyle:(BOOL)style isCrossDocument:(BOOL)document;
- (void)paste:(id)paste;
- (void)pasteAsPlainText:(id)text;
- (void)pasteValues:(id)values;
- (void)pasteWithPasteboard:(id)pasteboard atIndex:(unint64_t)index forceMatchStyle:(BOOL)style bakeFormulas:(BOOL)formulas completionHandler:(id)handler;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
@end

@implementation CRLGroupEditor

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  selectionCopy = selection;
  stackCopy = stack;
  pathCopy = path;
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, selectionCopy);
  if (v12)
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    canvasEditorHelper = [canvasEditor canvasEditorHelper];
    boardItems = [v12 boardItems];
    v17 = [canvasEditorHelper editorClassForInfos:boardItems];

    if (v17)
    {
      if ([(objc_class *)v17 isSubclassOfClass:objc_opt_class()])
      {
        v18 = [v17 alloc];
        interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v20 = [v18 initWithInteractiveCanvasController:interactiveCanvasController2];

        boardItems2 = [v12 boardItems];
        [v20 setBoardItems:boardItems2];

        goto LABEL_16;
      }

      v22 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101396544();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101396558(selectionCopy, v22, v23);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101396614();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v24);
      }

      v25 = [NSString stringWithUTF8String:"[CRLGroupEditor nextEditorForSelection:withNewEditorStack:selectionPath:]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:46 isFatal:0 description:"Unknown editor class for selection %@", selectionCopy];
    }

    v20 = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CRLGroupEditor;
    v20 = [(CRLBoardItemEditor *)&v28 nextEditorForSelection:selectionCopy withNewEditorStack:stackCopy selectionPath:pathCopy];
  }

LABEL_16:

  return v20;
}

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  selectionCopy = selection;
  v16.receiver = self;
  v16.super_class = CRLGroupEditor;
  toSelectionCopy = toSelection;
  [(CRLBoardItemEditor *)&v16 selectionDidChangeFromSelection:selectionCopy toSelection:toSelectionCopy withFlags:flags];
  objc_opt_class();
  LOBYTE(flags) = objc_opt_isKindOfClass();

  if (flags & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [(CRLGroupEditor *)self groupItems:v16.receiver];
    anyObject = [v10 anyObject];

    v12 = objc_opt_class();
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v14 = [interactiveCanvasController repForInfo:anyObject];
    v15 = sub_100014370(v12, v14);

    [v15 invalidateKnobs];
  }
}

- (NSSet)groupItems
{
  v3 = objc_opt_class();

  return [(CRLBoardItemEditor *)self boardItemsOfClass:v3];
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  p_currentlyEditingInGroup = [(CRLGroupEditor *)self p_currentlyEditingInGroup];
  v8 = [NSSet crl_setWithSelectors:"group:", 0];
  v9 = objc_opt_class();
  editorController = [(CRLBoardItemEditor *)self editorController];
  v11 = [editorController selectionForEditor:self];
  v12 = sub_100014370(v9, v11);

  if (v12)
  {
    if ([v12 isCrossContainerSelection])
    {
      v13 = NSStringFromSelector(action);
      v14 = [v8 containsObject:v13];

      if (v14)
      {
        v15 = -1;
        goto LABEL_28;
      }
    }
  }

  if ("insertNewline:" == action)
  {
    if (p_currentlyEditingInGroup)
    {
      goto LABEL_23;
    }

    boardItems = [(CRLBoardItemEditor *)self boardItems];
    if ([boardItems count] == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }
  }

  else
  {
    if ("paste:" != action && "pasteAsPlainText:" != action && "pasteValues:" != action)
    {
      if ((("duplicate:" == action) & p_currentlyEditingInGroup) == 1 && [(CRLGroupEditor *)self canPasteIntoCurrentlySelectedGroups])
      {
        if ([(CRLGroupEditor *)self p_canDuplicateWithSender:senderCopy])
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        goto LABEL_28;
      }

LABEL_23:
      v24.receiver = self;
      v24.super_class = CRLGroupEditor;
      v15 = [(CRLBoardItemEditor *)&v24 canPerformEditorAction:action withSender:senderCopy];
      goto LABEL_28;
    }

    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    pasteboardController = [canvasEditor pasteboardController];

    v20 = +[CRLPasteboard generalPasteboard];
    v21 = [pasteboardController ingestibleItemSourceForPasteboard:v20];

    v22 = [(CRLGroupEditor *)self editorResponseForCanPasteContentsOfItemSource:v21];
    if (v22 != 1)
    {
      v15 = v22;

      if (v15)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ([(CRLGroupEditor *)self p_shouldAllowKeyCommands])
    {
      v15 = 1;
    }

    else if ([CRLCanvasEditor physicalKeyboardIsSender:senderCopy])
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }
  }

LABEL_28:

  return v15;
}

- (BOOL)canPasteWithPasteboard:(id)pasteboard sender:(id)sender
{
  pasteboardCopy = pasteboard;
  senderCopy = sender;
  if ([(CRLGroupEditor *)self p_shouldAllowKeyCommands]|| ![CRLCanvasEditor physicalKeyboardIsSender:senderCopy])
  {
    v8 = [(CRLGroupEditor *)self canPasteWithPasteboard:pasteboardCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_currentlyEditingInGroup
{
  editorController = [(CRLBoardItemEditor *)self editorController];
  v4 = [editorController selectionForEditor:self];

  objc_opt_class();
  LOBYTE(editorController) = objc_opt_isKindOfClass();

  return editorController & 1;
}

- (void)insertNewline:(id)newline
{
  groupItems = [(CRLGroupEditor *)self groupItems];
  anyObject = [groupItems anyObject];

  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];

  childItems = [anyObject childItems];
  v8 = +[CRLCanvasEditor spatialInfoComparator];
  v9 = [childItems sortedArrayUsingComparator:v8];
  firstObject = [v9 firstObject];
  v17 = sub_1003035DC(firstObject, 1, v11, v12, v13, v14, v15, v16, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  if (v17)
  {
    v18 = [NSSet setWithObject:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = [canvasEditor selectionPathWithInfos:v18];
  editorController = [(CRLBoardItemEditor *)self editorController];
  [editorController setSelectionPath:v19];
}

- (BOOL)p_shouldAllowKeyCommands
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  shouldAllowKeyCommands = [interactiveCanvasController shouldAllowKeyCommands];

  return shouldAllowKeyCommands;
}

- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)source
{
  sourceCopy = source;
  if ([(CRLGroupEditor *)self p_currentlyEditingInGroup]&& [(CRLGroupEditor *)self canPasteIntoCurrentlySelectedGroups])
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
    editorController = [(CRLBoardItemEditor *)self editorController];
    selectionPath = [editorController selectionPath];
    v9 = [selectionModelTranslator containerToInsertIntoForSelectionPath:selectionPath];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([sourceCopy canProduceBoardItems])
      {
        v10 = 1;
      }

      else
      {
        v10 = -1;
      }
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

  return v10;
}

- (BOOL)p_canDuplicateWithSender:(id)sender
{
  senderCopy = sender;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];

  canvasEditorHelper = [canvasEditor canvasEditorHelper];
  v8 = [canvasEditorHelper canvasEditorCanPerformDuplicateAction:"duplicate:" withSender:senderCopy];

  return v8 != 0;
}

- (BOOL)canPasteWithPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  pasteboardController = [canvasEditor pasteboardController];

  v8 = [pasteboardController ingestibleItemSourceForPasteboard:pasteboardCopy];

  LOBYTE(self) = [(CRLGroupEditor *)self editorResponseForCanPasteContentsOfItemSource:v8]== 1;
  return self;
}

- (void)paste:(id)paste
{
  v4 = +[CRLPasteboard generalPasteboard];
  [(CRLGroupEditor *)self pasteWithPasteboard:v4 completionHandler:&stru_1018704C0];

  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  [canvasEditor hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)pasteAsPlainText:(id)text
{
  v4 = +[CRLPasteboard generalPasteboard];
  [(CRLGroupEditor *)self pasteWithPasteboard:v4 atIndex:0x7FFFFFFFFFFFFFFFLL forceMatchStyle:1 bakeFormulas:0 completionHandler:&stru_1018704E0];
}

- (void)pasteValues:(id)values
{
  v4 = +[CRLPasteboard generalPasteboard];
  [(CRLGroupEditor *)self pasteWithPasteboard:v4 atIndex:0x7FFFFFFFFFFFFFFFLL forceMatchStyle:1 bakeFormulas:1 completionHandler:&stru_101870500];
}

- (void)pasteWithPasteboard:(id)pasteboard atIndex:(unint64_t)index forceMatchStyle:(BOOL)style bakeFormulas:(BOOL)formulas completionHandler:(id)handler
{
  pasteboardCopy = pasteboard;
  handlerCopy = handler;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100582AAC;
  v17[3] = &unk_101870590;
  v17[4] = self;
  v18 = pasteboardCopy;
  styleCopy = style;
  v19 = handlerCopy;
  indexCopy = index;
  v15 = handlerCopy;
  v16 = pasteboardCopy;
  [editingCoordinator canPerformUserActionUsingBlock:v17];
}

- (void)p_pasteBoardItems:(id)items inGroup:(id)group atIndex:(unint64_t)index forceMatchStyle:(BOOL)style isCrossDocument:(BOOL)document
{
  documentCopy = document;
  itemsCopy = items;
  groupCopy = group;
  v13 = +[CRLInsertionContext nonInteractiveInsertionContext];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController2 canvasEditor];

  canvasEditorHelper = [canvasEditor canvasEditorHelper];
  v19 = [canvasEditorHelper canInsertBoardItems:itemsCopy intoGroup:groupCopy];

  if (v19)
  {
    indexCopy = index;
    canvasEditorHelper2 = [canvasEditor canvasEditorHelper];
    editorController = [(CRLBoardItemEditor *)self editorController];
    selectionPath = [editorController selectionPath];
    v35 = 0;
    v23 = [canvasEditorHelper2 commandForReplacingImagePlaceholderInSelection:selectionPath withBoardItems:itemsCopy isCrossDocument:documentCopy withSender:0 outSelectionBehavior:&v35];
    v24 = v35;

    if (v23)
    {
      [commandController enqueueCommand:v23 withSelectionBehavior:v24];
    }

    else if (groupCopy)
    {
      if (indexCopy == 0x7FFFFFFFFFFFFFFFLL || ([groupCopy childInfos], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v27 = indexCopy, v26 < indexCopy))
      {
        childInfos = [groupCopy childInfos];
        v29 = [childInfos count];

        v27 = v29;
      }

      v30 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:groupCopy boardItems:itemsCopy index:v27];
      v31 = [CRLCanvasCommandSelectionBehavior alloc];
      v32 = [NSSet setWithArray:itemsCopy];
      v33 = [(CRLCanvasCommandSelectionBehavior *)v31 initWithCanvasEditor:canvasEditor type:0 constructedInfos:v32];

      [commandController enqueueCommand:v30 withSelectionBehavior:v33];
    }

    else
    {
      [canvasEditor insertBoardItems:itemsCopy withInsertionContext:v13 postProcessBlock:&stru_1018705B0];
    }
  }

  else
  {
    [canvasEditor prepareGeometryForInsertingBoardItems:itemsCopy withInsertionContext:v13];
    [canvasEditor insertBoardItems:itemsCopy withInsertionContext:v13 postProcessBlock:&stru_1018705D0];
  }
}

- (id)pasteNativeInfosFromPasteboard:(id)pasteboard
{
  pasteboardCopy = pasteboard;
  v5 = +[NSMutableArray array];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  editorController = [(CRLBoardItemEditor *)self editorController];
  selectionPath = [editorController selectionPath];
  v10 = [selectionModelTranslator containerToInsertIntoForSelectionPath:selectionPath];

  v11 = objc_opt_class();
  v12 = sub_100014370(v11, v10);
  v13 = v12;
  if (v12)
  {
    selfCopy = self;
    v39 = v12;
    v40 = v10;
    canvasEditor = [interactiveCanvasController canvasEditor];
    pasteboardController = [canvasEditor pasteboardController];

    v38 = pasteboardController;
    v41 = pasteboardCopy;
    [pasteboardController providersForBoardItemsFromPasteboard:pasteboardCopy];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = v45 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      do
      {
        v20 = 0;
        do
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v42 + 1) + 8 * v20);
          editingCoordinator = [interactiveCanvasController editingCoordinator];
          boardItemFactory = [editingCoordinator boardItemFactory];
          v24 = [v21 newBoardItemWithFactory:boardItemFactory bakedSize:0];

          if (v24)
          {
            [v5 addObject:v24];
          }

          else
          {
            v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101396728();
            }

            v26 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v47 = v25;
              v48 = 2082;
              v49 = "[CRLGroupEditor pasteNativeInfosFromPasteboard:]";
              v50 = 2082;
              v51 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m";
              v52 = 1024;
              v53 = 362;
              v54 = 2082;
              v55 = "boardItem";
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101396750();
            }

            v27 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v30 = v27;
              v31 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v47 = v25;
              v48 = 2114;
              v49 = v31;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v28 = [NSString stringWithUTF8String:"[CRLGroupEditor pasteNativeInfosFromPasteboard:]"];
            v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m"];
            [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:362 isFatal:0 description:"invalid nil value for '%{public}s'", "boardItem"];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v18);
    }

    if ([v5 count])
    {
      canvasEditor2 = [interactiveCanvasController canvasEditor];
      canvasEditorHelper = [canvasEditor2 canvasEditorHelper];
      pasteboardCopy = v41;
      v13 = v39;
      [canvasEditorHelper prepareGeometryForPastingBoardItems:v5 fromPasteboard:v41 intoContainer:v39 useOriginalPositions:1];

      [(CRLGroupEditor *)selfCopy p_pasteBoardItems:v5 inGroup:v39 atIndex:0x7FFFFFFFFFFFFFFFLL forceMatchStyle:0 isCrossDocument:0];
      v10 = v40;
    }

    else
    {
      v10 = v40;
      pasteboardCopy = v41;
      v13 = v39;
    }

    v35 = v38;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396778();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139678C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139683C();
    }

    v34 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v34);
    }

    v35 = [NSString stringWithUTF8String:"[CRLGroupEditor pasteNativeInfosFromPasteboard:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLGroupEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v35 file:v16 lineNumber:356 isFatal:0 description:"invalid nil value for '%{public}s'", "groupToInsertInto"];
  }

  return v5;
}

- (void)duplicate:(id)duplicate
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100583D54;
  v6[3] = &unk_10183D270;
  v6[4] = self;
  [editingCoordinator canPerformUserActionUsingBlock:v6];
}

@end