@interface CRLConnectionLineEditor
- (BOOL)canHandleInsertAndConnectBoardItem:(id)item;
- (BOOL)currentSelectionIsValidForInsertAndConnectBoardItem;
- (BOOL)p_canSaveDefaultInsertionPreset;
- (CGPoint)p_unscaledOffsetWhenInsertItem:(id)item atEnd:(id)end;
- (double)p_outsetOnLeft:(BOOL)left;
- (id)anyConnectionLine;
- (id)connectionLines;
- (id)p_insertionContextForInsertAndConnectBoardItem:(id)item;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (unint64_t)p_getMagnetTypeOppositeFromType:(unint64_t)type;
- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)beginChangingConnectionOutset;
- (void)endChangingConnectionOutset;
- (void)insertAndConnectBoardItem:(id)item postProcessBlock:(id)block;
- (void)p_didChangeConnectionOutset:(double)outset onLeft:(BOOL)left;
- (void)p_setDynamicOutsetFrom:(id)from;
- (void)saveDefaultInsertionPreset:(id)preset;
- (void)setConnectionLineType:(int64_t)type;
- (void)toggleLineType:(id)type;
@end

@implementation CRLConnectionLineEditor

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("toggleLineType:" == action || "setConnectionLineType:" == action)
  {
    v8 = 1;
  }

  else if ("saveDefaultInsertionPreset:" == action)
  {
    if ([(CRLConnectionLineEditor *)self p_canSaveDefaultInsertionPreset])
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
    v10.receiver = self;
    v10.super_class = CRLConnectionLineEditor;
    v8 = [(CRLShapeEditor *)&v10 canPerformEditorAction:action withSender:senderCopy];
  }

  return v8;
}

- (void)toggleLineType:(id)type
{
  editingCoordinator = [(CRLBoardItemEditor *)self editingCoordinator];
  commandController = [editingCoordinator commandController];

  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:canvasEditor];

  [commandController openGroupWithSelectionBehavior:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  layouts = [(CRLBoardItemEditor *)self layouts];
  v11 = [layouts countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(layouts);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          commandToToggleConnectionType = [v15 commandToToggleConnectionType];
          [commandController enqueueCommand:commandToToggleConnectionType];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [layouts countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [commandController closeGroup];
}

- (void)setConnectionLineType:(int64_t)type
{
  editingCoordinator = [(CRLBoardItemEditor *)self editingCoordinator];
  commandController = [editingCoordinator commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v10 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:canvasEditor];

  [commandController openGroupWithSelectionBehavior:v10];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  layouts = [(CRLBoardItemEditor *)self layouts];
  v12 = [layouts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(layouts);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 commandForSettingConnectionType:type];
          [commandController enqueueCommand:v17];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [layouts countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [commandController closeGroup];
}

- (id)anyConnectionLine
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  layouts = [(CRLBoardItemEditor *)self layouts];
  v3 = [layouts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {
LABEL_9:

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v8, v9);
    abort();
  }

  v4 = v3;
  v5 = *v13;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v13 != v5)
    {
      objc_enumerationMutation(layouts);
    }

    v7 = *(*(&v12 + 1) + 8 * v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v4 == ++v6)
    {
      v4 = [layouts countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  v10 = v7;

  return v7;
}

- (id)connectionLines
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layouts = [(CRLBoardItemEditor *)self layouts];
  v5 = [layouts countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(layouts);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [layouts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (double)p_outsetOnLeft:(BOOL)left
{
  leftCopy = left;
  v5 = objc_opt_class();
  layouts = [(CRLBoardItemEditor *)self layouts];
  anyObject = [layouts anyObject];
  v8 = sub_100014370(v5, anyObject);

  [(CRLConnectionLineEditor *)self p_setDynamicOutsetFrom:v8];
  dynamicOutsetType = [v8 dynamicOutsetType];
  if (leftCopy)
  {
    if (dynamicOutsetType == 1 || [v8 dynamicOutsetType] != 2)
    {
      goto LABEL_4;
    }

LABEL_6:
    [v8 outsetTo];
    goto LABEL_7;
  }

  if (dynamicOutsetType == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  [v8 outsetFrom];
LABEL_7:
  v11 = v10;

  return v11;
}

- (void)beginChangingConnectionOutset
{
  if ((BYTE3(self->super.mNextPathEditor) & 1) == 0)
  {
    BYTE3(self->super.mNextPathEditor) = 1;
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    [interactiveCanvasController beginDynamicOperation];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    boardItems = [(CRLBoardItemEditor *)self boardItems];
    v5 = [boardItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(boardItems);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = objc_opt_class();
          v11 = [interactiveCanvasController layoutForInfo:v9];
          v12 = sub_100014370(v10, v11);

          [v12 beginDynamicOutsetChange];
        }

        v6 = [boardItems countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)p_didChangeConnectionOutset:(double)outset onLeft:(BOOL)left
{
  if (BYTE3(self->super.mNextPathEditor) == 1)
  {
    leftCopy = left;
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    boardItems = [(CRLBoardItemEditor *)self boardItems];
    v9 = [boardItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = v9;
    v11 = *v20;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(boardItems);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = [interactiveCanvasController layoutForInfo:v13];
        v16 = sub_100014370(v14, v15);

        if (v16)
        {
          if (![v16 dynamicOutsetType])
          {
            [(CRLConnectionLineEditor *)selfCopy p_setDynamicOutsetFrom:v16];
          }

          dynamicOutsetType = [v16 dynamicOutsetType];
          if (leftCopy)
          {
            if (dynamicOutsetType == 1 || [v16 dynamicOutsetType] != 2)
            {
LABEL_13:
              [v16 setDynamicOutsetFrom:outset];
LABEL_16:
              [v16 invalidatePath];
              goto LABEL_17;
            }
          }

          else if (dynamicOutsetType != 1)
          {
            goto LABEL_13;
          }

          [v16 setDynamicOutsetTo:outset];
          goto LABEL_16;
        }

LABEL_17:
      }

      v10 = [boardItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v10)
      {
LABEL_19:

        return;
      }
    }
  }
}

- (void)p_setDynamicOutsetFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isTailEndOnLeft])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [fromCopy setDynamicOutsetType:v3];
}

- (void)endChangingConnectionOutset
{
  if (BYTE3(self->super.mNextPathEditor) == 1)
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    boardItems = [(CRLBoardItemEditor *)self boardItems];
    v5 = [boardItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(boardItems);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = objc_opt_class();
          v11 = [interactiveCanvasController layoutForInfo:v9];
          v12 = sub_100014370(v10, v11);

          [v12 endDynamicOutsetChange];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [boardItems countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [interactiveCanvasController willEndDynamicOperation];
    [interactiveCanvasController endDynamicOperation];
    BYTE3(self->super.mNextPathEditor) = 0;
  }
}

- (void)addMiniFormatterElementsToArray:(id)array atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v13.receiver = self;
  v13.super_class = CRLConnectionLineEditor;
  arrayCopy = array;
  [(CRLShapeEditor *)&v13 addMiniFormatterElementsToArray:arrayCopy atPoint:x, y];
  v7 = [NSBundle mainBundle:v13.receiver];
  v8 = [v7 localizedStringForKey:@"Set Connection Line Style" value:0 table:0];
  v9 = [CRLImage crl_quickInspectorImageNamed:@"app.connected.to.app.below.fill"];
  v10 = [CRLQuickInspectorElement elementWithName:v8 image:v9 type:2 options:64];

  [v10 setTag:7];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Choose a connection style" value:0 table:0];
  [v10 setToolTip:v12];

  [arrayCopy insertObject:v10 atIndex:{objc_msgSend(arrayCopy, "count")}];
}

- (id)p_insertionContextForInsertAndConnectBoardItem:(id)item
{
  itemCopy = item;
  connectionLines = [(CRLConnectionLineEditor *)self connectionLines];
  if ([connectionLines count] == 1)
  {
    firstObject = [connectionLines firstObject];
    v7 = firstObject;
    if (!firstObject || ([firstObject connectedFrom], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, objc_msgSend(v7, "connectedTo"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = 0;
LABEL_6:

      goto LABEL_8;
    }

    connectionLineInfo = [v7 connectionLineInfo];
    if (connectionLineInfo)
    {
      v14 = objc_opt_class();
      interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v16 = [interactiveCanvasController repForInfo:connectionLineInfo];
      v17 = sub_100013F00(v14, v16);

      if (!v17)
      {
        v11 = 0;
LABEL_38:

        goto LABEL_6;
      }

      v18 = [v17 knobForTag:11];
      v19 = v18;
      if (v18)
      {
        [v18 position];
        [v7 convertNaturalPointToUnscaledCanvas:?];
        v21 = v20;
        v23 = v22;
        if (itemCopy)
        {
          [(CRLConnectionLineEditor *)self p_unscaledOffsetWhenInsertItem:itemCopy atEnd:v7];
          v20 = sub_10011F334(v21, v23, v24);
        }

        v11 = [CRLInsertionContext dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:0 targetZOrder:v20];
        goto LABEL_37;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013726A4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013726B8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137274C();
      }

      v26 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v26);
      }

      v27 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor p_insertionContextForInsertAndConnectBoardItem:]"];
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:270 isFatal:0 description:"invalid nil value for '%{public}s'", "lineHeadKnob"];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101372774();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101372788();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10137281C();
      }

      v25 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v25);
      }

      v17 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor p_insertionContextForInsertAndConnectBoardItem:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v19 lineNumber:259 isFatal:0 description:"invalid nil value for '%{public}s'", "connectionLineItem"];
    }

    v11 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (CGPoint)p_unscaledOffsetWhenInsertItem:(id)item atEnd:(id)end
{
  endCopy = end;
  itemCopy = item;
  connectedFrom = [endCopy connectedFrom];
  geometry = [connectedFrom geometry];
  [geometry size];
  v11 = v10;
  v13 = v12;

  if (v11 >= v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  geometry2 = [itemCopy geometry];

  [geometry2 size];
  v17 = v16;
  v19 = v18;

  if (v17 >= v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = v14 + v20;
  v22 = objc_opt_class();
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  info = [endCopy info];
  v25 = [interactiveCanvasController repForInfo:info];
  v26 = sub_100013F00(v22, v25);

  v27 = [v26 knobForTag:11];
  [v27 position];
  [endCopy convertNaturalPointToUnscaledCanvas:?];
  v29 = v28;
  v31 = v30;
  v32 = [v26 knobForTag:10];
  [v32 position];
  [endCopy convertNaturalPointToUnscaledCanvas:?];
  v34 = v33;

  v35 = sub_10011F31C(v29, v31, v34);
  v37 = sub_10011F2FC(v35, v36);
  v39 = sub_10011F340(v37, v38, v21);
  v41 = v40;

  v42 = v39;
  v43 = v41;
  result.y = v43;
  result.x = v42;
  return result;
}

- (BOOL)currentSelectionIsValidForInsertAndConnectBoardItem
{
  v2 = [(CRLConnectionLineEditor *)self p_insertionContextForInsertAndConnectBoardItem:0];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canHandleInsertAndConnectBoardItem:(id)item
{
  itemCopy = item;
  v5 = [(CRLConnectionLineEditor *)self p_insertionContextForInsertAndConnectBoardItem:itemCopy];
  if (v5)
  {
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    canvasEditor = [interactiveCanvasController canvasEditor];
    v11 = itemCopy;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [canvasEditor canHandleInsertionOfBoardItems:v8 insertionContext:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)insertAndConnectBoardItem:(id)item postProcessBlock:(id)block
{
  itemCopy = item;
  blockCopy = block;
  interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v64 = blockCopy;
  if (!interactiveCanvasController)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372844();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372858();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013728EC();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:331 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];

    blockCopy = v64;
  }

  canvasEditor = [interactiveCanvasController canvasEditor];
  if (!canvasEditor)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372914();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137293C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013729D0();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:334 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasEditor"];
  }

  anyConnectionLine = [(CRLConnectionLineEditor *)self anyConnectionLine];
  if (!anyConnectionLine)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013729F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372A20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101372AB4();
    }

    v16 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v16);
    }

    v17 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:337 isFatal:0 description:"invalid nil value for '%{public}s'", "connectionLineLayout"];
  }

  connectedTo = [anyConnectionLine connectedTo];

  if (connectedTo)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372ADC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372B04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101372B98();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:338 isFatal:0 description:"Connection line already has something connected to its to-end."];
  }

  connectionLineInfo = [anyConnectionLine connectionLineInfo];
  if (connectionLineInfo)
  {
    commandController = [interactiveCanvasController commandController];
    [commandController openGroup];

    commandController2 = [interactiveCanvasController commandController];
    [commandController2 enableProgressiveEnqueuingInCurrentGroup];

    v26 = [(CRLConnectionLineEditor *)self p_insertionContextForInsertAndConnectBoardItem:itemCopy];
    if (!v26)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101372BC0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101372BE8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101372C7C();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v27);
      }

      v28 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:353 isFatal:0 description:"invalid nil value for '%{public}s'", "insertionContext"];
    }

    v66 = itemCopy;
    v30 = [NSArray arrayWithObjects:&v66 count:1];
    [canvasEditor prepareGeometryForInsertingBoardItems:v30 withInsertionContext:v26 ignoreCanvasBackgroundAlignmentProvidedSnapping:1];

    v65 = itemCopy;
    v31 = [NSArray arrayWithObjects:&v65 count:1];
    [canvasEditor insertBoardItems:v31 withInsertionContext:v26 postProcessBlock:0];

    connectionLinePathSource = [connectionLineInfo connectionLinePathSource];
    v33 = [connectionLinePathSource copy];

    v34 = [[CRLConnectionLineMagnet alloc] initWithType:1 normalizedPosition:0.5, 0.5];
    [v33 setHeadMagnet:v34];

    v35 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:connectionLineInfo connectedItem:itemCopy chirality:1 pathSource:v33];
    commandController3 = [interactiveCanvasController commandController];
    [commandController3 enqueueCommand:v35];

    [interactiveCanvasController layoutIfNeeded];
    [anyConnectionLine headPoint];
    [anyConnectionLine convertNaturalPointToUnscaledCanvas:?];
    v38 = v37;
    [anyConnectionLine unclippedHeadPoint];
    [anyConnectionLine convertNaturalPointToUnscaledCanvas:?];
    v41 = sub_10011F31C(v39, v40, v38);
    [(CRLConnectionLineEditor *)self p_unscaledOffsetWhenInsertItem:itemCopy atEnd:anyConnectionLine];
    v44 = sub_10011F340(v42, v43, -1.0);
    v46 = sub_10011F334(v44, v45, v41);
    v48 = v47;
    v49 = [interactiveCanvasController layoutForInfo:itemCopy];
    [v49 centerForConnecting];
    v51 = sub_10011F334(v46, v48, v50);
    v53 = v52;

    v54 = [CRLCanvasInfoGeometry alloc];
    geometry = [itemCopy geometry];
    [geometry size];
    v58 = [(CRLCanvasInfoGeometry *)v54 initWithCenter:v51 size:v53, v56, v57];

    v59 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:itemCopy geometry:v58];
    commandController4 = [interactiveCanvasController commandController];
    [commandController4 enqueueCommand:v59];

    if (v64)
    {
      v64[2]();
    }

    commandController5 = [interactiveCanvasController commandController];
    [commandController5 closeGroup];

    blockCopy = v64;
    [interactiveCanvasController layoutIfNeeded];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372CA4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372CCC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101372D60();
    }

    v62 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v62);
    }

    v26 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor insertAndConnectBoardItem:postProcessBlock:]"];
    v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v33 lineNumber:341 isFatal:0 description:"invalid nil value for '%{public}s'", "connectionLineItem"];
  }
}

- (unint64_t)p_getMagnetTypeOppositeFromType:(unint64_t)type
{
  if (type - 2 > 3)
  {
    return 1;
  }

  else
  {
    return qword_101465AE8[type - 2];
  }
}

- (BOOL)p_canSaveDefaultInsertionPreset
{
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v3 = [boardItems count] == 1;

  return v3;
}

- (void)saveDefaultInsertionPreset:(id)preset
{
  boardItems = [(CRLBoardItemEditor *)self boardItems];
  v5 = [boardItems count];

  if (v5 != 1)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101372D88();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101372D9C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101372E30();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLConnectionLineEditor saveDefaultInsertionPreset:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:423 isFatal:0 description:"Only should save default style with a single object selected!"];
  }

  v9 = objc_opt_class();
  boardItems2 = [(CRLBoardItemEditor *)self boardItems];
  anyObject = [boardItems2 anyObject];
  v12 = sub_100013F00(v9, anyObject);

  if (v12)
  {
    v13 = objc_opt_class();
    interactiveCanvasController = [(CRLBoardItemEditor *)self interactiveCanvasController];
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    boardItemFactory = [editingCoordinator boardItemFactory];
    v17 = [boardItemFactory makeShapeItemWithShapeType:1];
    v18 = sub_100013F00(v13, v17);

    if (v18)
    {
      stroke = [v12 stroke];
      [v18 setStroke:stroke];

      fill = [v12 fill];
      [v18 setFill:fill];

      shadow = [v12 shadow];
      [v18 setShadow:shadow];

      v22 = [[_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset alloc] initWithShapeItem:v18 shapeType:2];
      interactiveCanvasController2 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      commandController = [interactiveCanvasController2 commandController];
      [commandController enqueueCommand:v22];
    }
  }
}

@end