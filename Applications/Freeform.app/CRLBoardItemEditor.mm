@interface CRLBoardItemEditor
- (BOOL)anyLayoutHasUnlockedAspectRatio;
- (BOOL)currentSelectionContainsInfo:(id)info;
- (BOOL)handleSpacebar;
- (BOOL)hasPreviewableInfos;
- (BOOL)hasSinglePreviewableInfo;
- (BOOL)isSingleBoardItemSelected;
- (BOOL)p_canEditAccessibilityDescription;
- (BOOL)p_canToggleAspectRatioLock;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors;
- (CRLBoardItemEditor)initWithInteractiveCanvasController:(id)controller;
- (CRLEditorController)editorController;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (NSSet)layouts;
- (NSSet)selectedLayoutsSupportingRotation;
- (_TtC8Freeform12CRLBoardItem)anyBoardItem;
- (_TtC8Freeform21CRLEditingCoordinator)editingCoordinator;
- (id)aspectRatioLockControlState;
- (id)boardItemsOfClass:(Class)class;
- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path;
- (id)p_sortedBoardItemsOfClass:(Class)class;
- (id)placeholderString:(id)string;
- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors;
- (id)sortedBoardItemsOfClass:(Class)class;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (void)accessibilityDescriptionEditor:(id)editor didEndEditingWithReason:(int64_t)reason;
- (void)addContextualMenuItemsToArray:(id)array;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point;
- (void)didBecomeCurrentEditorForEditorController:(id)controller;
- (void)editAccessibilityDescription:(id)description;
- (void)enterPreviewMode;
- (void)launchEditAccessibilityDescriptionWithBoardItem:(id)item;
- (void)openItemURL:(id)l;
- (void)p_flipInOrientation:(int)orientation;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)setAccessibilityDescription:(id)description;
- (void)setBoardItems:(id)items;
- (void)setEditorController:(id)controller;
- (void)toggleAspectRatioLock:(id)lock;
- (void)updateStateForCommand:(id)command;
- (void)willResignCurrentEditor;
@end

@implementation CRLBoardItemEditor

- (CRLBoardItemEditor)initWithInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = CRLBoardItemEditor;
  v5 = [(CRLBoardItemEditor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_interactiveCanvasController, controllerCopy);
  }

  return v6;
}

- (void)setBoardItems:(id)items
{
  objc_storeStrong(&self->_boardItems, items);
  itemsCopy = items;
  cachedSortedBoardItemsByClassName = self->_cachedSortedBoardItemsByClassName;
  self->_cachedSortedBoardItemsByClassName = 0;
}

- (id)boardItemsOfClass:(Class)class
{
  boardItems = self->_boardItems;
  if (boardItems)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004E4DD8;
    v6[3] = &unk_101869980;
    v6[4] = class;
    v4 = [(NSSet *)boardItems objectsPassingTest:v6];
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (id)sortedBoardItemsOfClass:(Class)class
{
  if (!self->_cachedSortedBoardItemsByClassName)
  {
    v5 = +[NSMutableDictionary dictionary];
    cachedSortedBoardItemsByClassName = self->_cachedSortedBoardItemsByClassName;
    self->_cachedSortedBoardItemsByClassName = v5;
  }

  v7 = NSStringFromClass(class);
  v8 = [(NSMutableDictionary *)self->_cachedSortedBoardItemsByClassName objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = [(CRLBoardItemEditor *)self p_sortedBoardItemsOfClass:class];
    [(NSMutableDictionary *)self->_cachedSortedBoardItemsByClassName setObject:v8 forKeyedSubscript:v7];
  }

  return v8;
}

- (id)p_sortedBoardItemsOfClass:(Class)class
{
  v3 = [(CRLBoardItemEditor *)self boardItemsOfClass:class];
  allObjects = [v3 allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&stru_1018699C0];

  return v5;
}

- (_TtC8Freeform12CRLBoardItem)anyBoardItem
{
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (BOOL)currentSelectionContainsInfo:(id)info
{
  infoCopy = info;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v6 = [boardItems containsObject:infoCopy];

  return v6;
}

- (BOOL)isSingleBoardItemSelected
{
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v3 = [boardItems count] == 1;

  return v3;
}

- (NSSet)layouts
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  layoutController = [interactiveCanvasController layoutController];
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v6 = [layoutController layoutsForInfos:boardItems];

  return v6;
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("flipHorizontally:" != action && "flipVertically:" != action)
  {
    if ("toggleAspectRatioLock:" == action)
    {
      p_canToggleAspectRatioLock = [(CRLBoardItemEditor *)self p_canToggleAspectRatioLock];
    }

    else if ("showPreview:" == action)
    {
      p_canToggleAspectRatioLock = [(CRLBoardItemEditor *)self canShowPreview];
    }

    else
    {
      if ("editAccessibilityDescription:" != action && "setAccessibilityDescription:" != action)
      {
        if ("openItemURL:" == action)
        {
          boardItems = [(CRLBoardItemEditor *)self boardItems];
          if ([_TtC8Freeform12CRLURLEditor canOpenItemURLFor:boardItems])
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

      p_canToggleAspectRatioLock = [(CRLBoardItemEditor *)self p_canEditAccessibilityDescription];
    }

    if (p_canToggleAspectRatioLock)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    goto LABEL_32;
  }

  boardItems2 = [(CRLBoardItemEditor *)self boardItems];
  v9 = [boardItems2 count];

  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    layouts = [(CRLBoardItemEditor *)self layouts];
    v11 = [layouts countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(layouts);
          }

          v15 = *(*(&v24 + 1) + 8 * v14);
          v16 = objc_opt_class();
          info = [v15 info];
          v18 = sub_100014370(v16, info);

          if ([v15 supportsFlipping] && (objc_msgSend(v18, "locked") & 1) == 0)
          {

            v19 = 1;
            goto LABEL_32;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [layouts countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController editingCoordinator];

  return editingCoordinator;
}

- (void)didBecomeCurrentEditorForEditorController:(id)controller
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC setContextMenuMightBeDisplayed:0];
}

- (CRLEditorController)editorController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
  editorController = [WeakRetained editorController];

  return editorController;
}

- (void)setEditorController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);
    editorController = [WeakRetained editorController];

    if (editorController != controllerCopy)
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

- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
  v7 = objc_opt_class();
  v8 = sub_100014370(v7, selectionCopy);

  boardItems = [v8 boardItems];
  if (v8)
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    canvasEditorHelper = [canvasEditor canvasEditorHelper];
    v13 = -[CRLBoardItemEditor isMemberOfClass:](self, "isMemberOfClass:", [canvasEditorHelper editorClassForInfos:boardItems]);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)nextEditorForSelection:(id)selection withNewEditorStack:(id)stack selectionPath:(id)path
{
  selectionCopy = selection;
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
      sub_101385A54(selectionCopy, v7, v8);
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
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:192 isFatal:0 description:"There is a more specific selection on top of a plain board item editor! %@", selectionCopy];
  }

  return 0;
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

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  toSelectionCopy = toSelection;
  v7 = objc_opt_class();
  v37 = toSelectionCopy;
  v8 = sub_100014370(v7, toSelectionCopy);
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

  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  v34 = asiOSCVC;
  [asiOSCVC setContextMenuMightBeDisplayed:0];
  selfCopy = self;
  interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  editingCoordinator = [interactiveCanvasController2 editingCoordinator];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = v8;
  boardItems = [v8 boardItems];
  v18 = [boardItems countByEnumeratingWithState:&v38 objects:v50 count:16];
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
          objc_enumerationMutation(boardItems);
        }

        v22 = *(*(&v38 + 1) + 8 * v21);
        mainBoard = [editingCoordinator mainBoard];
        v24 = [v22 id];
        v25 = [mainBoard containsObject:v24];

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
      v19 = [boardItems countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v19);
  }

  boardItems2 = [v35 boardItems];
  [(CRLBoardItemEditor *)selfCopy setBoardItems:boardItems2];
}

- (NSSet)selectedLayoutsSupportingRotation
{
  layouts = [(CRLBoardItemEditor *)self layouts];
  v3 = [layouts objectsPassingTest:&stru_101869B40];

  return v3;
}

- (BOOL)p_canToggleAspectRatioLock
{
  layouts = [(CRLBoardItemEditor *)self layouts];
  v10 = 0u;
  v11 = 0u;
  v3 = [layouts count] != 0;
  v12 = 0u;
  v13 = 0u;
  v4 = layouts;
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

- (void)toggleAspectRatioLock:(id)lock
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];
  layouts = [(CRLBoardItemEditor *)self layouts];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:canvasEditor type:2];

  [commandController openGroupWithSelectionBehavior:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = layouts;
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
        [commandController enqueueCommand:v17];
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
    [commandController setCurrentGroupActionString:v18];

LABEL_12:
  }

  [commandController closeGroup];
}

- (void)willResignCurrentEditor
{
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];

  [asiOSCVC setContextMenuMightBeDisplayed:0];
  LODWORD(layerHost) = [CRLFeatureFlagsHelper isOSFeatureEnabled:1];
  v4 = objc_opt_class();
  delegate = [asiOSCVC delegate];
  currentDocumentMode = [delegate currentDocumentMode];
  v7 = sub_100014370(v4, currentDocumentMode);

  if (layerHost && v7)
  {
    [v7 hideEditMenuForLassoSelection];
  }

  v8 = objc_opt_class();
  presentedViewController = [asiOSCVC presentedViewController];
  v10 = sub_100014370(v8, presentedViewController);

  if (v10)
  {
    v11 = objc_opt_class();
    topViewController = [v10 topViewController];
    v13 = sub_100014370(v11, topViewController);

    if (v13)
    {
      [v13 setIsCancelled:1];
    }
  }
}

- (void)openItemURL:(id)l
{
  v4 = objc_opt_class();
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  anyObject = [boardItems anyObject];
  v8 = sub_100014370(v4, anyObject);

  v7 = v8;
  if (v8)
  {
    [_TtC8Freeform12CRLURLEditor openItemURLFor:v8];
    v7 = v8;
  }
}

- (BOOL)p_canEditAccessibilityDescription
{
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v4 = [boardItems count];

  if (v4 != 1)
  {
    return 0;
  }

  boardItems2 = [(CRLBoardItemEditor *)self boardItems];
  allObjects = [boardItems2 allObjects];
  firstObject = [allObjects firstObject];

  LOBYTE(boardItems2) = [firstObject canEditAccessibilityDescription];
  return boardItems2;
}

- (void)editAccessibilityDescription:(id)description
{
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  anyObject = [boardItems anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = dispatch_time(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004E6944;
    v7[3] = &unk_10183AE28;
    v7[4] = self;
    v8 = anyObject;
    dispatch_after(v6, &_dispatch_main_q, v7);
  }

  else
  {
    [(CRLBoardItemEditor *)self launchEditAccessibilityDescriptionWithBoardItem:anyObject];
  }
}

- (void)setAccessibilityDescription:(id)description
{
  descriptionCopy = description;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v5 = [boardItems count];

  if (v5 == 1)
  {
    anyBoardItem = [(CRLBoardItemEditor *)self anyBoardItem];
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    commandController = [interactiveCanvasController commandController];

    if (anyBoardItem)
    {
      board = [commandController board];
      v10 = [anyBoardItem id];
      v11 = [board getBoardItemForUUID:v10];

      if (v11)
      {
        accessibilityDescription = [anyBoardItem accessibilityDescription];
        v13 = [descriptionCopy isEqualToString:accessibilityDescription];

        if ((v13 & 1) == 0)
        {
          [commandController openGroup];
          v14 = [[_TtC8Freeform37CRLCommandSetAccessibilityDescription alloc] initWithBoardItem:anyBoardItem accessibilityDescription:descriptionCopy];
          [commandController enqueueCommand:v14];
          v15 = +[NSBundle mainBundle];
          v16 = [v15 localizedStringForKey:@"Add Accessibility Description" value:0 table:0];
          [commandController setCurrentGroupActionString:v16];

          [commandController closeGroup];
        }
      }
    }
  }
}

- (void)p_flipInOrientation:(int)orientation
{
  v3 = *&orientation;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  commandController = [interactiveCanvasController commandController];

  [commandController openGroup];
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
  [commandController setCurrentGroupActionString:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v11 = [boardItems countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(boardItems);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
        v17 = [interactiveCanvasController2 layoutForInfo:v15];

        if ([v17 supportsFlipping])
        {
          v18 = [v17 commandToFlipWithOrientation:v3];
          [commandController enqueueCommand:v18];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [boardItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [commandController closeGroup];
}

- (void)crlaxAddContextualMenuOptionsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  arrayCopy = array;
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
          title2 = v11;
          v13 = [title2 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(title2);
              }

              v16 = *(*(&v23 + 1) + 8 * j);
              title = [v16 title];
              if ([title length])
              {
                v18 = [v16 state] == 1;

                if (!v18)
                {
                  continue;
                }

                title = [v16 title];
                [arrayCopy addObject:title];
              }
            }

            v13 = [title2 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (!v13)
            {
LABEL_22:

              goto LABEL_23;
            }
          }
        }

        title2 = [v10 title];
        if (![title2 length])
        {
          goto LABEL_22;
        }

        v19 = [v10 state] == 1;

        if (v19)
        {
          title2 = [v10 title];
          [arrayCopy addObject:title2];
          goto LABEL_22;
        }

LABEL_23:
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  arrayCopy = array;
  v5 = [arrayCopy count];
  if ([(CRLBoardItemEditor *)self p_canEditAccessibilityDescription])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Description" value:0 table:0];
    v8 = [CRLImage crl_quickInspectorImageNamed:@"figure.walk.circle"];
    v9 = [CRLQuickInspectorElement elementWithName:v7 image:v8 type:1 options:0x40000 action:"editAccessibilityDescription:" parent:0 children:0];

    [arrayCopy insertObject:v9 atIndex:v5];
  }
}

- (void)addContextualMenuItemsToArray:(id)array
{
  arrayCopy = array;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  documentIsSharedReadOnly = [interactiveCanvasController documentIsSharedReadOnly];

  if (documentIsSharedReadOnly)
  {
    v6 = [UIMenuItem alloc];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Preview" value:0 table:0];
    v9 = [v6 initWithTitle:v8 action:"showPreview:"];
    [arrayCopy addObject:v9];
  }
}

- (void)updateStateForCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == "toggleAspectRatioLock:")
  {
    aspectRatioLockControlState = [(CRLBoardItemEditor *)self aspectRatioLockControlState];
    [commandCopy setState:{objc_msgSend(aspectRatioLockControlState, "stateValue")}];
  }
}

- (id)aspectRatioLockControlState
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  layouts = [(CRLBoardItemEditor *)self layouts];
  v3 = [layouts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(layouts);
        }

        resizeMayChangeAspectRatio = [*(*(&v13 + 1) + 8 * i) resizeMayChangeAspectRatio];
        v5 |= resizeMayChangeAspectRatio ^ 1;
        v6 |= resizeMayChangeAspectRatio;
        if (v5 & 1) != 0 && (v6)
        {

          v10 = 2;
          goto LABEL_15;
        }
      }

      v4 = [layouts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  selfCopy = self;
  sub_1006D0FA0();
}

- (BOOL)hasSinglePreviewableInfo
{
  selfCopy = self;
  v3 = sub_1006D1130();

  return v3 & 1;
}

- (BOOL)hasPreviewableInfos
{
  selfCopy = self;
  sub_1006D1218();
  v4 = v3;

  return v4 & 1;
}

- (void)accessibilityDescriptionEditor:(id)editor didEndEditingWithReason:(int64_t)reason
{
  if (!reason)
  {
    swift_unknownObjectRetain();
    selfCopy = self;
    accessibilityDescriptionToSubmit = [editor accessibilityDescriptionToSubmit];
    if (!accessibilityDescriptionToSubmit)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();

      accessibilityDescriptionToSubmit = v9;
    }

    v10 = accessibilityDescriptionToSubmit;
    [(CRLBoardItemEditor *)selfCopy setAccessibilityDescription:?];
    swift_unknownObjectRelease();
  }
}

- (void)launchEditAccessibilityDescriptionWithBoardItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1006D1618(item);
}

- (id)placeholderString:(id)string
{
  stringCopy = string;
  selfCopy = self;
  sub_1006D2114(stringCopy);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (BOOL)handleSpacebar
{
  selfCopy = self;
  if ([(CRLBoardItemEditor *)selfCopy canShowPreview])
  {
    [(CRLBoardItemEditor *)selfCopy showPreview:selfCopy];
  }

  canShowPreview = [(CRLBoardItemEditor *)selfCopy canShowPreview];

  return canShowPreview;
}

@end