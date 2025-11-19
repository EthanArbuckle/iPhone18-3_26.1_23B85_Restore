@interface CRLStyledEditor
- (BOOL)p_anyItemHasStroke;
- (BOOL)p_canCopyStyle;
- (BOOL)p_canPasteStyle;
- (CRLColor)strokeColor;
- (CRLStroke)stroke;
- (NSString)currentGroupActionStringForStrokeSetting;
- (NSString)strokeColorPickerTitle;
- (_TtC8Freeform13CRLStyledItem)anyStyledItem;
- (double)strokeWidth;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)applyStroke:(id)a3;
- (void)applyStrokeColor:(id)a3;
- (void)applyStrokePattern:(id)a3;
- (void)applyStrokeWidth:(double)a3;
- (void)beginChangingStrokeWidth:(double)a3;
- (void)copyStyle:(id)a3;
- (void)didChangeStrokeWidth:(double)a3;
- (void)endChangingStrokeWidth:(double)a3;
- (void)p_enqueueCommandsToAdjustCustomMagnetsForInfo:(id)a3;
- (void)pasteStyle:(id)a3;
- (void)takePatternFromStroke:(id)a3 withDefaultStroke:(id)a4;
@end

@implementation CRLStyledEditor

- (_TtC8Freeform13CRLStyledItem)anyStyledItem
{
  v2 = [(CRLStyledEditor *)self styledItems];
  v3 = [v2 anyObject];

  return v3;
}

- (BOOL)p_canPasteStyle
{
  v3 = [(CRLBoardItemEditor *)self editorController];
  v4 = [v3 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (v4 == self)
  {
    v6 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v7 = [v6 canvasEditor];
    v8 = [v7 pasteboardController];

    v9 = [(CRLStyledEditor *)self styledItems];
    v10 = +[CRLPasteboard stylePasteboard];
    v11 = [v8 containsStylesRelevantTo:v9 on:v10];

    if (v11)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [(CRLStyledEditor *)self styledItems];
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v21 + 1) + 8 * i) parentInfo];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v19 = 0;
              goto LABEL_15;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v19 = 1;
LABEL_15:
    }

    else
    {
      v19 = 1;
    }

    v5 = v11 & v19;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)p_canCopyStyle
{
  v3 = [(CRLBoardItemEditor *)self editorController];
  v4 = [v3 mostSpecificCurrentEditorOfClass:objc_opt_class()];

  if (v4 == self && (-[CRLStyledEditor styledItems](self, "styledItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 == 1))
  {
    v7 = [(CRLStyledEditor *)self styledItems];
    v8 = [v7 anyObject];

    if (v8)
    {
      v9 = [v8 canCopyStyle];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v10 = "applyStroke:" == a3 || "takePatternFromStroke:withDefaultStroke:" == a3 || "applyStrokeColor:" == a3 || "applyStrokeWidth:" == a3 || "applyStrokePattern:" == a3;
  if (v10 || "copyStyle:" == a3 && [(CRLStyledEditor *)self p_canCopyStyle]|| sel_isEqual(a3, "pasteStyle:") && [(CRLStyledEditor *)self p_canPasteStyle])
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CRLStyledEditor;
    v11 = [(CRLBoardItemEditor *)&v13 canPerformEditorAction:a3 withSender:v6];
  }

  return v11;
}

- (void)copyStyle:(id)a3
{
  v4 = +[CRLPasteboard stylePasteboard];
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 canvasEditor];
  v7 = [v6 pasteboardController];

  v8 = [(CRLStyledEditor *)self styledItems];
  v9 = [v8 count];

  if (v9 != 1)
  {
    v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131AFDC();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131AFF0(v10, v11);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131B09C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v12, v10);
    }

    v13 = [NSString stringWithUTF8String:"[CRLStyledEditor copyStyle:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:160 isFatal:0 description:"Should only copy style with a single object selected"];
  }

  v15 = [(CRLStyledEditor *)self styledItems];
  v16 = [v15 anyObject];

  [v7 copyStyleFromItem:v16 to:v4];
  v17 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v18 = [v17 canvasEditor];
  [v18 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (void)pasteStyle:(id)a3
{
  v20 = +[CRLPasteboard stylePasteboard];
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v5 = [v4 canvasEditor];
  v6 = [v5 pasteboardController];

  v7 = [(CRLStyledEditor *)self styledItems];
  v8 = [v6 commandsToPasteStyleTo:v7 from:v20];

  if ([v8 count])
  {
    v9 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v10 = [v9 commandController];

    v11 = [CRLCanvasCommandSelectionBehavior alloc];
    v12 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v13 = [v12 canvasEditor];
    v14 = [(CRLCanvasCommandSelectionBehavior *)v11 initWithCanvasEditor:v13];

    [v10 openGroupWithSelectionBehavior:v14];
    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Paste Style" value:0 table:@"UndoStrings"];
    [v10 setCurrentGroupActionString:v16];

    v17 = [[_TtC8Freeform15CRLCommandGroup alloc] initWithCommands:v8];
    [v10 enqueueCommand:v17];

    [v10 closeGroup];
  }

  v18 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v19 = [v18 canvasEditor];
  [v19 hideLassoSelectionEditMenuInDrawingModeIfLassoToolIsSelected];
}

- (CRLStroke)stroke
{
  v2 = [(CRLStyledEditor *)self anyStyledItem];
  v3 = [v2 stroke];

  return v3;
}

- (CRLColor)strokeColor
{
  v2 = [(CRLStyledEditor *)self stroke];
  v3 = [v2 color];

  return v3;
}

- (double)strokeWidth
{
  v2 = [(CRLStyledEditor *)self stroke];
  [v2 width];
  v4 = v3;

  return v4;
}

- (NSString)strokeColorPickerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Border Color" value:0 table:0];

  return v3;
}

- (NSString)currentGroupActionStringForStrokeSetting
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Border Setting" value:0 table:@"UndoStrings"];

  return v3;
}

- (void)applyStroke:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v8 = [v5 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  v24 = v9;
  [v6 openGroupWithSelectionBehavior:v9];
  [v6 enableProgressiveEnqueuingInCurrentGroup];
  v10 = [(CRLStyledEditor *)self currentGroupActionStringForStrokeSetting];
  [v6 setCurrentGroupActionString:v10];

  v11 = [(CRLStyledEditor *)self styledItems];
  v12 = [v11 allObjects];

  [v6 openGroup];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[_TtC8Freeform19CRLCommandSetStroke alloc] initWithStyledItem:*(*(&v29 + 1) + 8 * v17) stroke:v4];
        [v6 enqueueCommand:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v15);
  }

  [v6 closeGroup];
  [v6 openGroup];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = v13;
  v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v26;
    do
    {
      v23 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(CRLStyledEditor *)self p_enqueueCommandsToAdjustCustomMagnetsForInfo:*(*(&v25 + 1) + 8 * v23)];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v21);
  }

  [v6 closeGroup];
  [v6 closeGroup];
}

- (void)applyStrokeColor:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v28 = v5;
  v8 = [v5 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  v27 = v9;
  [v6 openGroupWithSelectionBehavior:v9];
  v10 = [(CRLStyledEditor *)self currentGroupActionStringForStrokeSetting];
  v30 = v6;
  [v6 setCurrentGroupActionString:v10];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = self;
  obj = [(CRLStyledEditor *)self styledItems];
  v11 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        v16 = [v15 stroke];
        v17 = v16;
        if (v16 && ![v16 isNullStroke])
        {
          v19 = [v17 mutableCopy];
          [v19 setColor:v4];
          if (v19)
          {
LABEL_9:
            v20 = [[_TtC8Freeform19CRLCommandSetStroke alloc] initWithStyledItem:v15 stroke:v19];
            [v30 enqueueCommand:v20];
            goto LABEL_20;
          }
        }

        else
        {
          [(CRLStyledEditor *)v31 defaultStrokeWidth];
          v18 = [CRLStroke strokeWithColor:v4 width:?];
          v19 = [v18 mutableCopy];

          if (v19)
          {
            goto LABEL_9;
          }
        }

        v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131B0C4();
        }

        v22 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110146;
          v37 = v21;
          v38 = 2082;
          v39 = "[CRLStyledEditor applyStrokeColor:]";
          v40 = 2082;
          v41 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m";
          v42 = 1024;
          v43 = 274;
          v44 = 2082;
          v45 = "newStroke";
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131B0EC();
        }

        v23 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v25 = v23;
          v26 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v37 = v21;
          v38 = 2114;
          v39 = v26;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v20 = [NSString stringWithUTF8String:"[CRLStyledEditor applyStrokeColor:]"];
        v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m"];
        [CRLAssertionHandler handleFailureInFunction:v20 file:v24 lineNumber:274 isFatal:0 description:"invalid nil value for '%{public}s'", "newStroke"];

LABEL_20:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v12);
  }

  [v30 closeGroup];
}

- (void)applyStrokeWidth:(double)a3
{
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v37 = v5;
  v8 = [v5 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  v36 = v9;
  [v6 openGroupWithSelectionBehavior:v9];
  [v6 enableProgressiveEnqueuingInCurrentGroup];
  v10 = [(CRLStyledEditor *)self currentGroupActionStringForStrokeSetting];
  [v6 setCurrentGroupActionString:v10];

  v11 = [(CRLStyledEditor *)self styledItems];
  v12 = [v11 allObjects];

  v38 = v6;
  [v6 openGroup];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = [v18 stroke];
        v20 = v19;
        if (v19 && ![v19 isNullStroke])
        {
          v23 = [v20 mutableCopy];
          [v23 setWidth:a3];
          if (v23)
          {
LABEL_9:
            v24 = [[_TtC8Freeform19CRLCommandSetStroke alloc] initWithStyledItem:v18 stroke:v23];
            [v38 enqueueCommand:v24];
            goto LABEL_20;
          }
        }

        else
        {
          v21 = [(CRLStyledEditor *)self defaultStrokeColor];
          v22 = [CRLStroke strokeWithColor:v21 width:a3];
          v23 = [v22 mutableCopy];

          if (v23)
          {
            goto LABEL_9;
          }
        }

        v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131B114();
        }

        v26 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110146;
          v49 = v25;
          v50 = 2082;
          v51 = "[CRLStyledEditor applyStrokeWidth:]";
          v52 = 2082;
          v53 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m";
          v54 = 1024;
          v55 = 307;
          v56 = 2082;
          v57 = "newStroke";
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131B13C();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v29 = v27;
          v30 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v49 = v25;
          v50 = 2114;
          v51 = v30;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v24 = [NSString stringWithUTF8String:"[CRLStyledEditor applyStrokeWidth:]"];
        v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m"];
        [CRLAssertionHandler handleFailureInFunction:v24 file:v28 lineNumber:307 isFatal:0 description:"invalid nil value for '%{public}s'", "newStroke"];

LABEL_20:
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v15);
  }

  [v38 closeGroup];
  [v38 openGroup];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = v13;
  v32 = [v31 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(CRLStyledEditor *)self p_enqueueCommandsToAdjustCustomMagnetsForInfo:*(*(&v39 + 1) + 8 * i)];
      }

      v33 = [v31 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v33);
  }

  [v38 closeGroup];
  [v38 closeGroup];
}

- (void)p_enqueueCommandsToAdjustCustomMagnetsForInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 layoutForInfo:v4];
  v7 = v6;
  if (v6)
  {
    [v6 adjustCustomMagnetPositions];
    v8 = [v7 commandsForAdjustingMagnetsFromClineLayouts];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          v14 = [v5 commandController];
          [v14 enqueueCommand:v13];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)beginChangingStrokeWidth:(double)a3
{
  v4 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  self->mIsChangingStrokeWidth = 1;
  [v4 beginDynamicOperation];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(CRLStyledEditor *)self styledItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 layoutForInfo:*(*(&v11 + 1) + 8 * v9)];
        [v10 dynamicStrokeWidthChangeDidBegin];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didChangeStrokeWidth:(double)a3
{
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CRLStyledEditor *)self styledItems];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 layoutForInfo:*(*(&v12 + 1) + 8 * v10)];
        [v11 dynamicStrokeWidthUpdateToValue:a3];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)endChangingStrokeWidth:(double)a3
{
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CRLStyledEditor *)self styledItems];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 layoutForInfo:*(*(&v12 + 1) + 8 * v10)];
        [v11 dynamicStrokeWidthChangeDidEnd];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v5 willEndDynamicOperation];
  [v5 endDynamicOperation];
  self->mIsChangingStrokeWidth = 0;
  [(CRLStyledEditor *)self applyStrokeWidth:a3];
}

- (void)takePatternFromStroke:(id)a3 withDefaultStroke:(id)a4
{
  v6 = a3;
  v26 = a4;
  v7 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v8 = [v7 commandController];
  v9 = [CRLCanvasCommandSelectionBehavior alloc];
  v24 = v7;
  v10 = [v7 canvasEditor];
  v11 = [(CRLCanvasCommandSelectionBehavior *)v9 initWithCanvasEditor:v10 type:2];

  [v8 openGroupWithSelectionBehavior:v11];
  v12 = [(CRLStyledEditor *)self currentGroupActionStringForStrokeSetting];
  [v8 setCurrentGroupActionString:v12];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(CRLStyledEditor *)self styledItems];
  v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v17 stroke];
        v19 = [v6 mutableCopy];
        if (v18 && ([v18 isNullStroke] & 1) == 0)
        {
          v20 = v19;
          v21 = v18;
        }

        else
        {
          v20 = v19;
          v21 = v26;
        }

        [v20 setPropertiesFromStroke:v21];
        v22 = [v6 pattern];
        [v19 setPattern:v22];

        [v19 setCap:{objc_msgSend(v6, "cap")}];
        v23 = [[_TtC8Freeform19CRLCommandSetStroke alloc] initWithStyledItem:v17 stroke:v19];
        [v8 enqueueCommand:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  [v8 closeGroup];
}

- (void)applyStrokePattern:(id)a3
{
  v4 = a3;
  v5 = [(CRLBoardItemEditor *)self interactiveCanvasController];
  v6 = [v5 commandController];
  v7 = [CRLCanvasCommandSelectionBehavior alloc];
  v28 = v5;
  v8 = [v5 canvasEditor];
  v9 = [(CRLCanvasCommandSelectionBehavior *)v7 initWithCanvasEditor:v8 type:2];

  v27 = v9;
  [v6 openGroupWithSelectionBehavior:v9];
  v10 = [(CRLStyledEditor *)self currentGroupActionStringForStrokeSetting];
  v30 = v6;
  [v6 setCurrentGroupActionString:v10];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(CRLStyledEditor *)self styledItems];
  v11 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        v16 = [v15 stroke];
        v17 = v16;
        if (v16 && ![v16 isNullStroke])
        {
          v19 = [v17 mutableCopy];
        }

        else
        {
          v18 = objc_alloc_init(CRLStroke);
          v19 = [(CRLStroke *)v18 mutableCopy];
        }

        [v19 setPattern:v4];
        if (v19)
        {
          v20 = [[_TtC8Freeform19CRLCommandSetStroke alloc] initWithStyledItem:v15 stroke:v19];
          [v30 enqueueCommand:v20];
        }

        else
        {
          v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10131B164();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v36 = v21;
            v37 = 2082;
            v38 = "[CRLStyledEditor applyStrokePattern:]";
            v39 = 2082;
            v40 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m";
            v41 = 1024;
            v42 = 438;
            v43 = 2082;
            v44 = "newStroke";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10131B18C();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v25 = v23;
            v26 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v36 = v21;
            v37 = 2114;
            v38 = v26;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v20 = [NSString stringWithUTF8String:"[CRLStyledEditor applyStrokePattern:]"];
          v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLStyledEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v20 file:v24 lineNumber:438 isFatal:0 description:"invalid nil value for '%{public}s'", "newStroke"];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v12);
  }

  [v30 closeGroup];
}

- (BOOL)p_anyItemHasStroke
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(CRLStyledEditor *)self styledItems];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) stroke];
        v7 = v6;
        if (v6 && ![v6 isNullStroke])
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

@end