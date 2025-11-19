@interface CRLGroupEditor
- (BOOL)canPasteWithPasteboard:(id)a3;
- (BOOL)canPasteWithPasteboard:(id)a3 sender:(id)a4;
- (BOOL)p_canDuplicateWithSender:(id)a3;
- (BOOL)p_currentlyEditingInGroup;
- (BOOL)p_shouldAllowKeyCommands;
- (NSSet)groupItems;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (id)pasteNativeInfosFromPasteboard:(id)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)a3;
- (void)duplicate:(id)a3;
- (void)insertNewline:(id)a3;
- (void)p_pasteBoardItems:(id)a3 inGroup:(id)a4 atIndex:(unint64_t)a5 forceMatchStyle:(BOOL)a6 isCrossDocument:(BOOL)a7;
- (void)paste:(id)a3;
- (void)pasteAsPlainText:(id)a3;
- (void)pasteValues:(id)a3;
- (void)pasteWithPasteboard:(id)a3 atIndex:(unint64_t)a4 forceMatchStyle:(BOOL)a5 bakeFormulas:(BOOL)a6 completionHandler:(id)a7;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
@end

@implementation CRLGroupEditor

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, v8);
  if (v12)
  {
    v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v14 = [v13 canvasEditor];
    v15 = [v14 canvasEditorHelper];
    v16 = [v12 boardItems];
    v17 = [v15 editorClassForInfos:v16];

    if (v17)
    {
      if ([(objc_class *)v17 isSubclassOfClass:objc_opt_class()])
      {
        v18 = [v17 alloc];
        v19 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v20 = [v18 initWithInteractiveCanvasController:v19];

        v21 = [v12 boardItems];
        [v20 setBoardItems:v21];

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
        sub_101396558(v8, v22, v23);
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
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:46 isFatal:0 description:"Unknown editor class for selection %@", v8];
    }

    v20 = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CRLGroupEditor;
    v20 = [(CRLBoardItemEditor *)&v28 nextEditorForSelection:v8 withNewEditorStack:v9 selectionPath:v10];
  }

LABEL_16:

  return v20;
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = CRLGroupEditor;
  v9 = a4;
  [(CRLBoardItemEditor *)&v16 selectionDidChangeFromSelection:v8 toSelection:v9 withFlags:a5];
  objc_opt_class();
  LOBYTE(a5) = objc_opt_isKindOfClass();

  if (a5 & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [(CRLGroupEditor *)self groupItems:v16.receiver];
    v11 = [v10 anyObject];

    v12 = objc_opt_class();
    v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v14 = [v13 repForInfo:v11];
    v15 = sub_100014370(v12, v14);

    [v15 invalidateKnobs];
  }
}

- (NSSet)groupItems
{
  v3 = objc_opt_class();

  return [(CRLBoardItemEditor *)self boardItemsOfClass:v3];
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(CRLGroupEditor *)self p_currentlyEditingInGroup];
  v8 = [NSSet crl_setWithSelectors:"group:", 0];
  v9 = objc_opt_class();
  v10 = [(CRLBoardItemEditor *)self editorController];
  v11 = [v10 selectionForEditor:self];
  v12 = sub_100014370(v9, v11);

  if (v12)
  {
    if ([v12 isCrossContainerSelection])
    {
      v13 = NSStringFromSelector(a3);
      v14 = [v8 containsObject:v13];

      if (v14)
      {
        v15 = -1;
        goto LABEL_28;
      }
    }
  }

  if ("insertNewline:" == a3)
  {
    if (v7)
    {
      goto LABEL_23;
    }

    v16 = [(CRLBoardItemEditor *)self boardItems];
    if ([v16 count] == 1)
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
    if ("paste:" != a3 && "pasteAsPlainText:" != a3 && "pasteValues:" != a3)
    {
      if ((("duplicate:" == a3) & v7) == 1 && [(CRLGroupEditor *)self canPasteIntoCurrentlySelectedGroups])
      {
        if ([(CRLGroupEditor *)self p_canDuplicateWithSender:v6])
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
      v15 = [(CRLBoardItemEditor *)&v24 canPerformEditorAction:a3 withSender:v6];
      goto LABEL_28;
    }

    v17 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v18 = [v17 canvasEditor];
    v19 = [v18 pasteboardController];

    v20 = +[CRLPasteboard generalPasteboard];
    v21 = [v19 ingestibleItemSourceForPasteboard:v20];

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

    else if ([CRLCanvasEditor physicalKeyboardIsSender:v6])
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

- (BOOL)canPasteWithPasteboard:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CRLGroupEditor *)self p_shouldAllowKeyCommands]|| ![CRLCanvasEditor physicalKeyboardIsSender:v7])
  {
    v8 = [(CRLGroupEditor *)self canPasteWithPasteboard:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_currentlyEditingInGroup
{
  v3 = [(CRLBoardItemEditor *)self editorController];
  v4 = [v3 selectionForEditor:self];

  objc_opt_class();
  LOBYTE(v3) = objc_opt_isKindOfClass();

  return v3 & 1;
}

- (void)insertNewline:(id)a3
{
  v4 = [(CRLGroupEditor *)self groupItems];
  v21 = [v4 anyObject];

  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 canvasEditor];

  v7 = [v21 childItems];
  v8 = +[CRLCanvasEditor spatialInfoComparator];
  v9 = [v7 sortedArrayUsingComparator:v8];
  v10 = [v9 firstObject];
  v17 = sub_1003035DC(v10, 1, v11, v12, v13, v14, v15, v16, &OBJC_PROTOCOL___CRLCanvasElementInfo);

  if (v17)
  {
    v18 = [NSSet setWithObject:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v6 selectionPathWithInfos:v18];
  v20 = [(CRLBoardItemEditor *)self editorController];
  [v20 setSelectionPath:v19];
}

- (BOOL)p_shouldAllowKeyCommands
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v2 shouldAllowKeyCommands];

  return v3;
}

- (int64_t)editorResponseForCanPasteContentsOfItemSource:(id)a3
{
  v4 = a3;
  if ([(CRLGroupEditor *)self p_currentlyEditingInGroup]&& [(CRLGroupEditor *)self canPasteIntoCurrentlySelectedGroups])
  {
    v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v6 = [v5 selectionModelTranslator];
    v7 = [(CRLBoardItemEditor *)self editorController];
    v8 = [v7 selectionPath];
    v9 = [v6 containerToInsertIntoForSelectionPath:v8];

    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v4 canProduceBoardItems])
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

- (BOOL)p_canDuplicateWithSender:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 canvasEditor];

  v7 = [v6 canvasEditorHelper];
  v8 = [v7 canvasEditorCanPerformDuplicateAction:"duplicate:" withSender:v4];

  return v8 != 0;
}

- (BOOL)canPasteWithPasteboard:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 canvasEditor];
  v7 = [v6 pasteboardController];

  v8 = [v7 ingestibleItemSourceForPasteboard:v4];

  LOBYTE(self) = [(CRLGroupEditor *)self editorResponseForCanPasteContentsOfItemSource:v8]== 1;
  return self;
}

- (void)paste:(id)a3
{
  v4 = +[CRLPasteboard generalPasteboard];
  [(CRLGroupEditor *)self pasteWithPasteboard:v4 completionHandler:&stru_1018704C0];

  v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v6 canvasEditor];
  [v5 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)pasteAsPlainText:(id)a3
{
  v4 = +[CRLPasteboard generalPasteboard];
  [(CRLGroupEditor *)self pasteWithPasteboard:v4 atIndex:0x7FFFFFFFFFFFFFFFLL forceMatchStyle:1 bakeFormulas:0 completionHandler:&stru_1018704E0];
}

- (void)pasteValues:(id)a3
{
  v4 = +[CRLPasteboard generalPasteboard];
  [(CRLGroupEditor *)self pasteWithPasteboard:v4 atIndex:0x7FFFFFFFFFFFFFFFLL forceMatchStyle:1 bakeFormulas:1 completionHandler:&stru_101870500];
}

- (void)pasteWithPasteboard:(id)a3 atIndex:(unint64_t)a4 forceMatchStyle:(BOOL)a5 bakeFormulas:(BOOL)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v14 = [v13 editingCoordinator];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100582AAC;
  v17[3] = &unk_101870590;
  v17[4] = self;
  v18 = v11;
  v21 = a5;
  v19 = v12;
  v20 = a4;
  v15 = v12;
  v16 = v11;
  [v14 canPerformUserActionUsingBlock:v17];
}

- (void)p_pasteBoardItems:(id)a3 inGroup:(id)a4 atIndex:(unint64_t)a5 forceMatchStyle:(BOOL)a6 isCrossDocument:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = +[CRLInsertionContext nonInteractiveInsertionContext];
  v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v15 = [v14 commandController];

  v16 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v17 = [v16 canvasEditor];

  v18 = [v17 canvasEditorHelper];
  v19 = [v18 canInsertBoardItems:v11 intoGroup:v12];

  if (v19)
  {
    v34 = a5;
    v20 = [v17 canvasEditorHelper];
    v21 = [(CRLBoardItemEditor *)self editorController];
    v22 = [v21 selectionPath];
    v35 = 0;
    v23 = [v20 commandForReplacingImagePlaceholderInSelection:v22 withBoardItems:v11 isCrossDocument:v7 withSender:0 outSelectionBehavior:&v35];
    v24 = v35;

    if (v23)
    {
      [v15 enqueueCommand:v23 withSelectionBehavior:v24];
    }

    else if (v12)
    {
      if (v34 == 0x7FFFFFFFFFFFFFFFLL || ([v12 childInfos], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v27 = v34, v26 < v34))
      {
        v28 = [v12 childInfos];
        v29 = [v28 count];

        v27 = v29;
      }

      v30 = [[_TtC8Freeform26CRLCommandInsertBoardItems alloc] initWithParentContainer:v12 boardItems:v11 index:v27];
      v31 = [CRLCanvasCommandSelectionBehavior alloc];
      v32 = [NSSet setWithArray:v11];
      v33 = [(CRLCanvasCommandSelectionBehavior *)v31 initWithCanvasEditor:v17 type:0 constructedInfos:v32];

      [v15 enqueueCommand:v30 withSelectionBehavior:v33];
    }

    else
    {
      [v17 insertBoardItems:v11 withInsertionContext:v13 postProcessBlock:&stru_1018705B0];
    }
  }

  else
  {
    [v17 prepareGeometryForInsertingBoardItems:v11 withInsertionContext:v13];
    [v17 insertBoardItems:v11 withInsertionContext:v13 postProcessBlock:&stru_1018705D0];
  }
}

- (id)pasteNativeInfosFromPasteboard:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v7 = [v6 selectionModelTranslator];
  v8 = [(CRLBoardItemEditor *)self editorController];
  v9 = [v8 selectionPath];
  v10 = [v7 containerToInsertIntoForSelectionPath:v9];

  v11 = objc_opt_class();
  v12 = sub_100014370(v11, v10);
  v13 = v12;
  if (v12)
  {
    v37 = self;
    v39 = v12;
    v40 = v10;
    v14 = [v6 canvasEditor];
    v15 = [v14 pasteboardController];

    v38 = v15;
    v41 = v4;
    [v15 providersForBoardItemsFromPasteboard:v4];
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
          v22 = [v6 editingCoordinator];
          v23 = [v22 boardItemFactory];
          v24 = [v21 newBoardItemWithFactory:v23 bakedSize:0];

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
      v32 = [v6 canvasEditor];
      v33 = [v32 canvasEditorHelper];
      v4 = v41;
      v13 = v39;
      [v33 prepareGeometryForPastingBoardItems:v5 fromPasteboard:v41 intoContainer:v39 useOriginalPositions:1];

      [(CRLGroupEditor *)v37 p_pasteBoardItems:v5 inGroup:v39 atIndex:0x7FFFFFFFFFFFFFFFLL forceMatchStyle:0 isCrossDocument:0];
      v10 = v40;
    }

    else
    {
      v10 = v40;
      v4 = v41;
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

- (void)duplicate:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 editingCoordinator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100583D54;
  v6[3] = &unk_10183D270;
  v6[4] = self;
  [v5 canPerformUserActionUsingBlock:v6];
}

@end