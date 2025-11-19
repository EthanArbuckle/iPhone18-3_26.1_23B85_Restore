@interface CRLConnectionLineEditor
- (BOOL)canHandleInsertAndConnectBoardItem:(id)a3;
- (BOOL)currentSelectionIsValidForInsertAndConnectBoardItem;
- (BOOL)p_canSaveDefaultInsertionPreset;
- (CGPoint)p_unscaledOffsetWhenInsertItem:(id)a3 atEnd:(id)a4;
- (double)p_outsetOnLeft:(BOOL)a3;
- (id)anyConnectionLine;
- (id)connectionLines;
- (id)p_insertionContextForInsertAndConnectBoardItem:(id)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (unint64_t)p_getMagnetTypeOppositeFromType:(unint64_t)a3;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)beginChangingConnectionOutset;
- (void)endChangingConnectionOutset;
- (void)insertAndConnectBoardItem:(id)a3 postProcessBlock:(id)a4;
- (void)p_didChangeConnectionOutset:(double)a3 onLeft:(BOOL)a4;
- (void)p_setDynamicOutsetFrom:(id)a3;
- (void)saveDefaultInsertionPreset:(id)a3;
- (void)setConnectionLineType:(int64_t)a3;
- (void)toggleLineType:(id)a3;
@end

@implementation CRLConnectionLineEditor

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("toggleLineType:" == a3 || "setConnectionLineType:" == a3)
  {
    v8 = 1;
  }

  else if ("saveDefaultInsertionPreset:" == a3)
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
    v8 = [(CRLShapeEditor *)&v10 canPerformEditorAction:a3 withSender:v6];
  }

  return v8;
}

- (void)toggleLineType:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self editingCoordinator];
  v5 = [v4 commandController];

  v6 = [CRLCanvasCommandSelectionBehavior alloc];
  v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v8 = [v7 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v6 initWithCanvasEditor:v8];

  [v5 openGroupWithSelectionBehavior:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(CRLBoardItemEditor *)self layouts];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 commandToToggleConnectionType];
          [v5 enqueueCommand:v16];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v5 closeGroup];
}

- (void)setConnectionLineType:(int64_t)a3
{
  v5 = [(CRLBoardItemEditor *)self editingCoordinator];
  v6 = [v5 commandController];

  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v9 = [v8 canvasEditor];
  v10 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v9];

  [v6 openGroupWithSelectionBehavior:v10];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(CRLBoardItemEditor *)self layouts];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 commandForSettingConnectionType:a3];
          [v6 enqueueCommand:v17];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [v6 closeGroup];
}

- (id)anyConnectionLine
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(CRLBoardItemEditor *)self layouts];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      objc_enumerationMutation(v2);
    }

    v7 = *(*(&v12 + 1) + 8 * v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(CRLBoardItemEditor *)self layouts];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (double)p_outsetOnLeft:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(CRLBoardItemEditor *)self layouts];
  v7 = [v6 anyObject];
  v8 = sub_100014370(v5, v7);

  [(CRLConnectionLineEditor *)self p_setDynamicOutsetFrom:v8];
  v9 = [v8 dynamicOutsetType];
  if (v3)
  {
    if (v9 == 1 || [v8 dynamicOutsetType] != 2)
    {
      goto LABEL_4;
    }

LABEL_6:
    [v8 outsetTo];
    goto LABEL_7;
  }

  if (v9 == 1)
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
    v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    [v3 beginDynamicOperation];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(CRLBoardItemEditor *)self boardItems];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = objc_opt_class();
          v11 = [v3 layoutForInfo:v9];
          v12 = sub_100014370(v10, v11);

          [v12 beginDynamicOutsetChange];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

- (void)p_didChangeConnectionOutset:(double)a3 onLeft:(BOOL)a4
{
  if (BYTE3(self->super.mNextPathEditor) == 1)
  {
    v4 = a4;
    v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    v8 = [(CRLBoardItemEditor *)self boardItems];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_opt_class();
        v15 = [v7 layoutForInfo:v13];
        v16 = sub_100014370(v14, v15);

        if (v16)
        {
          if (![v16 dynamicOutsetType])
          {
            [(CRLConnectionLineEditor *)v18 p_setDynamicOutsetFrom:v16];
          }

          v17 = [v16 dynamicOutsetType];
          if (v4)
          {
            if (v17 == 1 || [v16 dynamicOutsetType] != 2)
            {
LABEL_13:
              [v16 setDynamicOutsetFrom:a3];
LABEL_16:
              [v16 invalidatePath];
              goto LABEL_17;
            }
          }

          else if (v17 != 1)
          {
            goto LABEL_13;
          }

          [v16 setDynamicOutsetTo:a3];
          goto LABEL_16;
        }

LABEL_17:
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v10)
      {
LABEL_19:

        return;
      }
    }
  }
}

- (void)p_setDynamicOutsetFrom:(id)a3
{
  v4 = a3;
  if ([v4 isTailEndOnLeft])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [v4 setDynamicOutsetType:v3];
}

- (void)endChangingConnectionOutset
{
  if (BYTE3(self->super.mNextPathEditor) == 1)
  {
    v3 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(CRLBoardItemEditor *)self boardItems];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = objc_opt_class();
          v11 = [v3 layoutForInfo:v9];
          v12 = sub_100014370(v10, v11);

          [v12 endDynamicOutsetChange];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [v3 willEndDynamicOperation];
    [v3 endDynamicOperation];
    BYTE3(self->super.mNextPathEditor) = 0;
  }
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v13.receiver = self;
  v13.super_class = CRLConnectionLineEditor;
  v6 = a3;
  [(CRLShapeEditor *)&v13 addMiniFormatterElementsToArray:v6 atPoint:x, y];
  v7 = [NSBundle mainBundle:v13.receiver];
  v8 = [v7 localizedStringForKey:@"Set Connection Line Style" value:0 table:0];
  v9 = [CRLImage crl_quickInspectorImageNamed:@"app.connected.to.app.below.fill"];
  v10 = [CRLQuickInspectorElement elementWithName:v8 image:v9 type:2 options:64];

  [v10 setTag:7];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Choose a connection style" value:0 table:0];
  [v10 setToolTip:v12];

  [v6 insertObject:v10 atIndex:{objc_msgSend(v6, "count")}];
}

- (id)p_insertionContextForInsertAndConnectBoardItem:(id)a3
{
  v4 = a3;
  v5 = [(CRLConnectionLineEditor *)self connectionLines];
  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = v6;
    if (!v6 || ([v6 connectedFrom], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (v9 = v8, objc_msgSend(v7, "connectedTo"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = 0;
LABEL_6:

      goto LABEL_8;
    }

    v13 = [v7 connectionLineInfo];
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v16 = [v15 repForInfo:v13];
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
        if (v4)
        {
          [(CRLConnectionLineEditor *)self p_unscaledOffsetWhenInsertItem:v4 atEnd:v7];
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

- (CGPoint)p_unscaledOffsetWhenInsertItem:(id)a3 atEnd:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 connectedFrom];
  v9 = [v8 geometry];
  [v9 size];
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

  v15 = [v7 geometry];

  [v15 size];
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
  v23 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v24 = [v6 info];
  v25 = [v23 repForInfo:v24];
  v26 = sub_100013F00(v22, v25);

  v27 = [v26 knobForTag:11];
  [v27 position];
  [v6 convertNaturalPointToUnscaledCanvas:?];
  v29 = v28;
  v31 = v30;
  v32 = [v26 knobForTag:10];
  [v32 position];
  [v6 convertNaturalPointToUnscaledCanvas:?];
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

- (BOOL)canHandleInsertAndConnectBoardItem:(id)a3
{
  v4 = a3;
  v5 = [(CRLConnectionLineEditor *)self p_insertionContextForInsertAndConnectBoardItem:v4];
  if (v5)
  {
    v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v7 = [v6 canvasEditor];
    v11 = v4;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    v9 = [v7 canHandleInsertionOfBoardItems:v8 insertionContext:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)insertAndConnectBoardItem:(id)a3 postProcessBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v64 = v7;
  if (!v8)
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

    v7 = v64;
  }

  v63 = [v8 canvasEditor];
  if (!v63)
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

  v15 = [(CRLConnectionLineEditor *)self anyConnectionLine];
  if (!v15)
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

  v19 = [v15 connectedTo];

  if (v19)
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

  v23 = [v15 connectionLineInfo];
  if (v23)
  {
    v24 = [v8 commandController];
    [v24 openGroup];

    v25 = [v8 commandController];
    [v25 enableProgressiveEnqueuingInCurrentGroup];

    v26 = [(CRLConnectionLineEditor *)self p_insertionContextForInsertAndConnectBoardItem:v6];
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

    v66 = v6;
    v30 = [NSArray arrayWithObjects:&v66 count:1];
    [v63 prepareGeometryForInsertingBoardItems:v30 withInsertionContext:v26 ignoreCanvasBackgroundAlignmentProvidedSnapping:1];

    v65 = v6;
    v31 = [NSArray arrayWithObjects:&v65 count:1];
    [v63 insertBoardItems:v31 withInsertionContext:v26 postProcessBlock:0];

    v32 = [v23 connectionLinePathSource];
    v33 = [v32 copy];

    v34 = [[CRLConnectionLineMagnet alloc] initWithType:1 normalizedPosition:0.5, 0.5];
    [v33 setHeadMagnet:v34];

    v35 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v23 connectedItem:v6 chirality:1 pathSource:v33];
    v36 = [v8 commandController];
    [v36 enqueueCommand:v35];

    [v8 layoutIfNeeded];
    [v15 headPoint];
    [v15 convertNaturalPointToUnscaledCanvas:?];
    v38 = v37;
    [v15 unclippedHeadPoint];
    [v15 convertNaturalPointToUnscaledCanvas:?];
    v41 = sub_10011F31C(v39, v40, v38);
    [(CRLConnectionLineEditor *)self p_unscaledOffsetWhenInsertItem:v6 atEnd:v15];
    v44 = sub_10011F340(v42, v43, -1.0);
    v46 = sub_10011F334(v44, v45, v41);
    v48 = v47;
    v49 = [v8 layoutForInfo:v6];
    [v49 centerForConnecting];
    v51 = sub_10011F334(v46, v48, v50);
    v53 = v52;

    v54 = [CRLCanvasInfoGeometry alloc];
    v55 = [v6 geometry];
    [v55 size];
    v58 = [(CRLCanvasInfoGeometry *)v54 initWithCenter:v51 size:v53, v56, v57];

    v59 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v6 geometry:v58];
    v60 = [v8 commandController];
    [v60 enqueueCommand:v59];

    if (v64)
    {
      v64[2]();
    }

    v61 = [v8 commandController];
    [v61 closeGroup];

    v7 = v64;
    [v8 layoutIfNeeded];
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

- (unint64_t)p_getMagnetTypeOppositeFromType:(unint64_t)a3
{
  if (a3 - 2 > 3)
  {
    return 1;
  }

  else
  {
    return qword_101465AE8[a3 - 2];
  }
}

- (BOOL)p_canSaveDefaultInsertionPreset
{
  v2 = [(CRLBoardItemEditor *)self boardItems];
  v3 = [v2 count] == 1;

  return v3;
}

- (void)saveDefaultInsertionPreset:(id)a3
{
  v4 = [(CRLBoardItemEditor *)self boardItems];
  v5 = [v4 count];

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
  v10 = [(CRLBoardItemEditor *)self boardItems];
  v11 = [v10 anyObject];
  v12 = sub_100013F00(v9, v11);

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v15 = [v14 editingCoordinator];
    v16 = [v15 boardItemFactory];
    v17 = [v16 makeShapeItemWithShapeType:1];
    v18 = sub_100013F00(v13, v17);

    if (v18)
    {
      v19 = [v12 stroke];
      [v18 setStroke:v19];

      v20 = [v12 fill];
      [v18 setFill:v20];

      v21 = [v12 shadow];
      [v18 setShadow:v21];

      v22 = [[_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset alloc] initWithShapeItem:v18 shapeType:2];
      v23 = [(CRLBoardItemEditor *)self interactiveCanvasController];
      v24 = [v23 commandController];
      [v24 enqueueCommand:v22];
    }
  }
}

@end