@interface CRLBoardItemEditor
- (BOOL)anyLayoutHasUnlockedAspectRatio;
- (BOOL)currentSelectionContainsInfo:(id)a3;
- (BOOL)handleSpacebar;
- (BOOL)hasPreviewableInfos;
- (BOOL)hasSinglePreviewableInfo;
- (BOOL)isSingleBoardItemSelected;
- (BOOL)p_canEditAccessibilityDescription;
- (BOOL)p_canToggleAspectRatioLock;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5;
- (CRLBoardItemEditor)initWithInteractiveCanvasController:(id)a3;
- (CRLEditorController)editorController;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (NSSet)layouts;
- (NSSet)selectedLayoutsSupportingRotation;
- (_TtC8Freeform12CRLBoardItem)anyBoardItem;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)aspectRatioLockControlState;
- (id)boardItemsOfClass:(Class)a3;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (id)p_sortedBoardItemsOfClass:(Class)a3;
- (id)placeholderString:(id)a3;
- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7;
- (id)sortedBoardItemsOfClass:(Class)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)accessibilityDescriptionEditor:(id)a3 didEndEditingWithReason:(int64_t)a4;
- (void)addContextualMenuItemsToArray:(id)a3;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)didBecomeCurrentEditorForEditorController:(id)a3;
- (void)editAccessibilityDescription:(id)a3;
- (void)enterPreviewMode;
- (void)launchEditAccessibilityDescriptionWithBoardItem:(id)a3;
- (void)openItemURL:(id)a3;
- (void)p_flipInOrientation:(int)a3;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)setAccessibilityDescription:(id)a3;
- (void)setBoardItems:(id)a3;
- (void)setEditorController:(id)a3;
- (void)toggleAspectRatioLock:(id)a3;
- (void)updateStateForCommand:(id)a3;
- (void)willResignCurrentEditor;
@end

@implementation CRLBoardItemEditor

- (CRLBoardItemEditor)initWithInteractiveCanvasController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLBoardItemEditor;
  v5 = [(CRLBoardItemEditor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, v4);
  }

  return v6;
}

- (void)setBoardItems:(id)a3
{
  objc_storeStrong(&self->_boardItems, a3);
  v6 = a3;
  cachedSortedBoardItemsByClassName = self->_cachedSortedBoardItemsByClassName;
  self->_cachedSortedBoardItemsByClassName = 0;
}

- (id)boardItemsOfClass:(Class)a3
{
  boardItems = self->_boardItems;
  if (boardItems)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004E4DD8;
    v6[3] = &unk_101869980;
    v6[4] = a3;
    v4 = [(NSSet *)boardItems objectsPassingTest:v6];
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (id)sortedBoardItemsOfClass:(Class)a3
{
  if (!self->_cachedSortedBoardItemsByClassName)
  {
    v5 = +[NSMutableDictionary dictionary];
    cachedSortedBoardItemsByClassName = self->_cachedSortedBoardItemsByClassName;
    self->_cachedSortedBoardItemsByClassName = v5;
  }

  v7 = NSStringFromClass(a3);
  v8 = [(NSMutableDictionary *)self->_cachedSortedBoardItemsByClassName objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(CRLBoardItemEditor *)self p_sortedBoardItemsOfClass:a3];
    [(NSMutableDictionary *)self->_cachedSortedBoardItemsByClassName setObject:v8 forKeyedSubscript:v7];
  }

  return v8;
}

- (id)p_sortedBoardItemsOfClass:(Class)a3
{
  v3 = [(CRLBoardItemEditor *)self boardItemsOfClass:a3];
  v4 = [v3 allObjects];
  v5 = [v4 sortedArrayUsingComparator:&stru_1018699C0];

  return v5;
}

- (_TtC8Freeform12CRLBoardItem)anyBoardItem
{
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)currentSelectionContainsInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isSingleBoardItemSelected
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 count] == 1;

  return v3;
}

- (NSSet)layouts
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 layoutController];
  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v4 layoutsForInfos:v5];

  return v6;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("flipHorizontally:" != a3 && "flipVertically:" != a3)
  {
    if ("toggleAspectRatioLock:" == a3)
    {
      v21 = [(CRLBoardItemEditor *)self p_canToggleAspectRatioLock];
    }

    else if ("showPreview:" == a3)
    {
      v21 = [(CRLBoardItemEditor *)self canShowPreview];
    }

    else
    {
      if ("editAccessibilityDescription:" != a3 && "setAccessibilityDescription:" != a3)
      {
        if ("openItemURL:" == a3)
        {
          v23 = [(CRLBoardItemEditor *)self boardItems];
          if ([_TtC8Freeform12CRLURLEditor canOpenItemURLFor:v23])
          {
            v19 = 1;
          }

          else
          {
            v19 = -1;
          }
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_32;
      }

      v21 = [(CRLBoardItemEditor *)self p_canEditAccessibilityDescription];
    }

    if (v21)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    goto LABEL_32;
  }

  v8 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [v8 count];

  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(CRLBoardItemEditor *)self layouts];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          v16 = objc_opt_class();
          v17 = [v15 info];
          v18 = sub_100014370(v16, v17);

          if ([v15 supportsFlipping] && (objc_msgSend(v18, "locked") & 1) == 0)
          {

            v19 = 1;
            goto LABEL_32;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v19 = -1;
LABEL_32:

  return v19;
}

- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v2 editingCoordinator];

  return v3;
}

- (void)didBecomeCurrentEditorForEditorController:(id)a3
{
  v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v4 = [v3 layerHost];
  v5 = [v4 asiOSCVC];

  [v5 setContextMenuMightBeDisplayed:0];
}

- (CRLEditorController)editorController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  v3 = [WeakRetained editorController];

  return v3;
}

- (void)setEditorController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    v6 = [WeakRetained editorController];

    if (v6 != v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101385970();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101385984();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101385A18();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLBoardItemEditor setEditorController:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:164 isFatal:0 description:"Unexpected editor controller!"];
    }
  }
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = sub_100014370(v7, v6);

  v9 = [v8 boardItems];
  if (v8)
  {
    v10 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v11 = [v10 canvasEditor];
    v12 = [v11 canvasEditorHelper];
    v13 = -[CRLBoardItemEditor isMemberOfClass:](self, "isMemberOfClass:", [v12 editorClassForInfos:v9]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v6 = a3;
  if ([(CRLBoardItemEditor *)self isMemberOfClass:objc_opt_class()])
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101385A40();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385A54(v6, v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385B10();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLBoardItemEditor nextEditorForSelection:withNewEditorStack:selectionPath:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:192 isFatal:0 description:"There is a more specific selection on top of a plain board item editor! %@", v6];
  }

  return 0;
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
      sub_101385B38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385B4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385BE0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLBoardItemEditor selectionWillChangeFromSelection:toSelection:withFlags:inSelectionPath:withNewEditors:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:198 isFatal:0 description:"Board item editor expects a board item selection!"];
  }

  return 0;
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v6 = a4;
  v7 = objc_opt_class();
  v37 = v6;
  v8 = sub_100014370(v7, v6);
  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101385C08();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101385C1C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101385CCC();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLBoardItemEditor selectionDidChangeFromSelection:toSelection:withFlags:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:204 isFatal:0 description:"invalid nil value for '%{public}s'", "boardItemSelection"];
  }

  v12 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v13 = [v12 layerHost];
  v14 = [v13 asiOSCVC];

  v34 = v14;
  [v14 setContextMenuMightBeDisplayed:0];
  v36 = self;
  v15 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v16 = [v15 editingCoordinator];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = v8;
  v17 = [v8 boardItems];
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      v21 = 0;
      do
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v38 + 1) + 8 * v21);
        v23 = [v16 mainBoard];
        v24 = [v22 id];
        v25 = [v23 containsObject:v24];

        if ((v25 & 1) == 0)
        {
          v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101385CF4();
          }

          v27 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v43 = v26;
            v44 = 2082;
            v45 = "[CRLBoardItemEditor selectionDidChangeFromSelection:toSelection:withFlags:]";
            v46 = 2082;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m";
            v48 = 1024;
            v49 = 226;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Selecting an object that isn't in the document!", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101385D1C();
          }

          v28 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v31 = v28;
            v32 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v43 = v26;
            v44 = 2114;
            v45 = v32;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v29 = [NSString stringWithUTF8String:"[CRLBoardItemEditor selectionDidChangeFromSelection:toSelection:withFlags:]"];
          v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLBoardItemEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:226 isFatal:0 description:"Selecting an object that isn't in the document!"];
        }

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v19);
  }

  v33 = [v35 boardItems];
  [(CRLBoardItemEditor *)v36 setBoardItems:v33];
}

- (NSSet)selectedLayoutsSupportingRotation
{
  v2 = [(CRLBoardItemEditor *)self layouts];
  v3 = [v2 objectsPassingTest:&stru_101869B40];

  return v3;
}

- (BOOL)p_canToggleAspectRatioLock
{
  v2 = [(CRLBoardItemEditor *)self layouts];
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 count] != 0;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v10 + 1) + 8 * i) canAspectRatioLockBeChangedByUser])
        {
          v3 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)anyLayoutHasUnlockedAspectRatio
{
  [(CRLBoardItemEditor *)self layouts];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) resizeMayChangeAspectRatio])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)toggleAspectRatioLock:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 commandController];
  v6 = [(CRLBoardItemEditor *)self layouts];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [v4 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  [v5 openGroupWithSelectionBehavior:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v12 = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

  v13 = v11;
  v14 = 0;
  v15 = *v20;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = [*(*(&v19 + 1) + 8 * i) commandForSettingAspectRatioLocked:{-[CRLBoardItemEditor anyLayoutHasUnlockedAspectRatio](self, "anyLayoutHasUnlockedAspectRatio", v19)}];
      if (v17)
      {
        [v5 enqueueCommand:v17];
        v14 = 1;
      }
    }

    v13 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v13);

  if (v14)
  {
    v12 = +[NSBundle mainBundle];
    v18 = [v12 localizedStringForKey:@"Constrain Proportions Setting" value:0 table:0];
    [v5 setCurrentGroupActionString:v18];

LABEL_12:
  }

  [v5 closeGroup];
}

- (void)willResignCurrentEditor
{
  v2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v3 = [v2 layerHost];
  v14 = [v3 asiOSCVC];

  [v14 setContextMenuMightBeDisplayed:0];
  LODWORD(v3) = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  v4 = objc_opt_class();
  v5 = [v14 delegate];
  v6 = [v5 currentDocumentMode];
  v7 = sub_100014370(v4, v6);

  if (v3 && v7)
  {
    [v7 hideEditMenuForLassoSelection];
  }

  v8 = objc_opt_class();
  v9 = [v14 presentedViewController];
  v10 = sub_100014370(v8, v9);

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v10 topViewController];
    v13 = sub_100014370(v11, v12);

    if (v13)
    {
      [v13 setIsCancelled:1];
    }
  }
}

- (void)openItemURL:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v5 anyObject];
  v8 = sub_100014370(v4, v6);

  v7 = v8;
  if (v8)
  {
    [_TtC8Freeform12CRLURLEditor openItemURLFor:v8];
    v7 = v8;
  }
}

- (BOOL)p_canEditAccessibilityDescription
{
  v3 = [(CRLBoardItemEditor *)self boardItems];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(CRLBoardItemEditor *)self boardItems];
  v6 = [v5 allObjects];
  v7 = [v6 firstObject];

  LOBYTE(v5) = [v7 canEditAccessibilityDescription];
  return v5;
}

- (void)editAccessibilityDescription:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = dispatch_time(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004E6944;
    v7[3] = &unk_10183AE28;
    v7[4] = self;
    v8 = v5;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }

  else
  {
    [(CRLBoardItemEditor *)self launchEditAccessibilityDescriptionWithBoardItem:v5];
  }
}

- (void)setAccessibilityDescription:(id)a3
{
  v17 = a3;
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(CRLBoardItemEditor *)self anyBoardItem];
    v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v8 = [v7 commandController];

    if (v6)
    {
      v9 = [v8 board];
      v10 = [v6 id];
      v11 = [v9 getBoardItemForUUID:v10];

      if (v11)
      {
        v12 = [v6 accessibilityDescription];
        v13 = [v17 isEqualToString:v12];

        if ((v13 & 1) == 0)
        {
          [v8 openGroup];
          v14 = [[_TtC8Freeform37CRLCommandSetAccessibilityDescription alloc] initWithBoardItem:v6 accessibilityDescription:v17];
          [v8 enqueueCommand:v14];
          v15 = +[NSBundle mainBundle];
          v16 = [v15 localizedStringForKey:@"Add Accessibility Description" value:0 table:0];
          [v8 setCurrentGroupActionString:v16];

          [v8 closeGroup];
        }
      }
    }
  }
}

- (void)p_flipInOrientation:(int)a3
{
  v3 = *&a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];

  [v6 openGroup];
  if (!v3)
  {
    v7 = @"Flip Horizontally";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v7 = @"Flip Vertically";
LABEL_5:
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:v7 value:0 table:@"UndoStrings"];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  [v6 setCurrentGroupActionString:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        v16 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v17 = [v16 layoutForInfo:v15];

        if ([v17 supportsFlipping])
        {
          v18 = [v17 commandToFlipWithOrientation:v3];
          [v6 enqueueCommand:v18];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [v6 closeGroup];
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = +[NSMutableArray array];
  [(CRLBoardItemEditor *)self addContextualMenuElementsToArray:v8 atPoint:x, y];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 crlaxValueForKey:@"children"];
        if ([v11 count])
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (!v13)
          {
            goto LABEL_22;
          }

          v14 = *v24;
          while (1)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v23 + 1) + 8 * j);
              v17 = [v16 title];
              if ([v17 length])
              {
                v18 = [v16 state] == 1;

                if (!v18)
                {
                  continue;
                }

                v17 = [v16 title];
                [v7 addObject:v17];
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (!v13)
            {
LABEL_22:

              goto LABEL_23;
            }
          }
        }

        v12 = [v10 title];
        if (![v12 length])
        {
          goto LABEL_22;
        }

        v19 = [v10 state] == 1;

        if (v19)
        {
          v12 = [v10 title];
          [v7 addObject:v12];
          goto LABEL_22;
        }

LABEL_23:
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v10 = a3;
  v5 = [v10 count];
  if ([(CRLBoardItemEditor *)self p_canEditAccessibilityDescription])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Description" value:0 table:0];
    v8 = [CRLImage crl_quickInspectorImageNamed:@"figure.walk.circle"];
    v9 = [CRLQuickInspectorElement elementWithName:v7 image:v8 type:1 options:0x40000 action:"editAccessibilityDescription:" parent:0 children:0];

    [v10 insertObject:v9 atIndex:v5];
  }
}

- (void)addContextualMenuItemsToArray:(id)a3
{
  v10 = a3;
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 documentIsSharedReadOnly];

  if (v5)
  {
    v6 = [UIMenuItem alloc];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Preview" value:0 table:0];
    v9 = [v6 initWithTitle:v8 action:"showPreview:"];
    [v10 addObject:v9];
  }
}

- (void)updateStateForCommand:(id)a3
{
  v5 = a3;
  if ([v5 action] == "toggleAspectRatioLock:")
  {
    v4 = [(CRLBoardItemEditor *)self aspectRatioLockControlState];
    [v5 setState:{objc_msgSend(v4, "stateValue")}];
  }
}

- (id)aspectRatioLockControlState
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(CRLBoardItemEditor *)self layouts];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) resizeMayChangeAspectRatio];
        v5 |= v9 ^ 1;
        v6 |= v9;
        if (v5 & 1) != 0 && (v6)
        {

          v10 = 2;
          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v10 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_15:
  v11 = [CRLPlatformControlState stateWithValue:v10];

  return v11;
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

- (void)enterPreviewMode
{
  v2 = self;
  sub_1006D0FA0();
}

- (BOOL)hasSinglePreviewableInfo
{
  v2 = self;
  v3 = sub_1006D1130();

  return v3 & 1;
}

- (BOOL)hasPreviewableInfos
{
  v2 = self;
  sub_1006D1218();
  v4 = v3;

  return v4 & 1;
}

- (void)accessibilityDescriptionEditor:(id)a3 didEndEditingWithReason:(int64_t)a4
{
  if (!a4)
  {
    swift_unknownObjectRetain();
    v7 = self;
    v8 = [a3 accessibilityDescriptionToSubmit];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();

      v8 = v9;
    }

    v10 = v8;
    [(CRLBoardItemEditor *)v7 setAccessibilityDescription:?];
    swift_unknownObjectRelease();
  }
}

- (void)launchEditAccessibilityDescriptionWithBoardItem:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1006D1618(a3);
}

- (id)placeholderString:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006D2114(v4);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (BOOL)handleSpacebar
{
  v2 = self;
  if ([(CRLBoardItemEditor *)v2 canShowPreview])
  {
    [(CRLBoardItemEditor *)v2 showPreview:v2];
  }

  v3 = [(CRLBoardItemEditor *)v2 canShowPreview];

  return v3;
}

@end