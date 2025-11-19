@interface CRLWPShapeEditor
- (BOOL)p_canSaveDefaultInsertionPreset;
- (BOOL)p_shapesAreDifferent;
- (BOOL)shouldAddAutosizeTextMenuItem;
- (CRLPlatformControlState)shrinkToFitControlState;
- (NSArray)wpEditors;
- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)saveDefaultInsertionPreset:(id)a3;
- (void)toggleItalics:(id)a3;
- (void)toggleShrinkToFit:(id)a3;
- (void)updateStateForCommand:(id)a3;
@end

@implementation CRLWPShapeEditor

- (id)nextEditorForSelection:(id)a3 withNewEditorStack:(id)a4 selectionPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v24 = [v11 selectionModelTranslator];

    v12 = [v24 infosForSelectionPath:v10];
    v13 = objc_opt_class();
    v14 = [v12 crl_onlyObject];
    v15 = sub_100013F00(v13, v14);

    v16 = objc_opt_class();
    v17 = [v15 parentInfo];
    v18 = sub_100013F00(v16, v17);

    v19 = [_TtC8Freeform11CRLWPEditor alloc];
    v20 = [(CRLBoardItemEditor *)self editingCoordinator];
    v21 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v22 = [(CRLWPEditor *)v19 initWithEditingCoordinator:v20 enclosingShape:v18 icc:v21];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = CRLWPShapeEditor;
    v22 = [(CRLShapeEditor *)&v25 nextEditorForSelection:v8 withNewEditorStack:v9 selectionPath:v10];
  }

  return v22;
}

- (NSArray)wpEditors
{
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        if (v11)
        {
          v12 = [_TtC8Freeform11CRLWPEditor alloc];
          v13 = [(CRLBoardItemEditor *)self editingCoordinator];
          v14 = [(CRLBoardItemEditor *)self interactiveCanvasController];
          v15 = [(CRLWPEditor *)v12 initWithEditingCoordinator:v13 enclosingShape:v11 icc:v14];

          if (v15)
          {
            v16 = [(CRLWPEditor *)v15 storage];
            v17 = [_TtC8Freeform12CRLTextRange textRangeForAllOf:v16];
            v18 = [(CRLWPEditor *)v15 textSelectionDelegate];
            [v18 setSelectedTextRange:v17];

            [v20 addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v20;
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("saveDefaultInsertionPreset:" == a3)
  {
    v10 = [(CRLWPShapeEditor *)self p_canSaveDefaultInsertionPreset];
    goto LABEL_32;
  }

  if ("alignTop:" == a3 || "alignBottom:" == a3 || "alignMiddle:" == a3 || "alignJustify:" == a3)
  {
    v10 = [(CRLShapeEditor *)self anyInfoSupportsVerticalAlignment];
    goto LABEL_32;
  }

  if ("toggleBoldface:" == a3 || "toggleUnderline:" == a3 || "toggleItalics:" == a3 || "toggleStrikethrough:" == a3 || "alignLeft:" == a3 || "alignRight:" == a3 || "alignCenter:" == a3 || "alignJustified:" == a3 || "decreaseFontSizeByOne:" == a3 || "increaseFontSizeByOne:" == a3 || "decreaseSize:" == a3 || "increaseSize:" == a3)
  {
    v10 = [(CRLShapeEditor *)self anyInfoSupportsTextInspection];
LABEL_32:
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    goto LABEL_35;
  }

  if ("toggleShrinkToFit:" == a3 && [(CRLShapeEditor *)self anyInfoSupportsTextInspection]&& [(CRLWPShapeEditor *)self shouldAddAutosizeTextMenuItem])
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CRLWPShapeEditor;
    v11 = [(CRLShapeEditor *)&v13 canPerformEditorAction:a3 withSender:v6];
  }

LABEL_35:

  return v11;
}

- (BOOL)p_shapesAreDifferent
{
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = objc_opt_self();
  v4 = [(CRLBoardItemEditor *)self sortedBoardItemsOfClass:v3];

  obj = v4;
  v29 = [v4 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v29)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v28 = *v31;
    while (2)
    {
      v9 = 0;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * v9);
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v13);
        if (!v15)
        {
          v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101391AA0();
          }

          v17 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v35 = v16;
            v36 = 2082;
            v37 = "[CRLWPShapeEditor p_shapesAreDifferent]";
            v38 = 2082;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeEditor.m";
            v40 = 1024;
            v41 = 93;
            v42 = 2082;
            v43 = "shapeItem";
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101391AC8();
          }

          v18 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v23 = v18;
            v24 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v35 = v16;
            v36 = 2114;
            v37 = v24;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v19 = [NSString stringWithUTF8String:"[CRLWPShapeEditor p_shapesAreDifferent]"];
          v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeEditor.m"];
          [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:93 isFatal:0 description:"invalid nil value for '%{public}s'", "shapeItem"];
        }

        v21 = [NSSet setWithObject:v15];
        v8 = [CRLShapeEditor infosAreLines:v21];
        v7 = [CRLShapeEditor infosAreStickyNotes:v21];
        v22 = [v15 isAutogrowingTextBox];
        v6 = v22;
        if (v5 & 1) != 0 && (((v12 ^ v8) & 1) != 0 || ((v11 ^ v7) & 1) != 0 || ((v10 ^ v22)))
        {

          v25 = 1;
          goto LABEL_24;
        }

        v9 = v9 + 1;
        v5 = 1;
        v10 = v6;
        v11 = v7;
        v12 = v8;
      }

      while (v29 != v9);
      v29 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (void)addMiniFormatterElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v38.receiver = self;
  v38.super_class = CRLWPShapeEditor;
  [(CRLShapeEditor *)&v38 addMiniFormatterElementsToArray:v7 atPoint:x, y];
  v8 = [(CRLBoardItemEditor *)self boardItems];
  if ([v8 count] >= 2)
  {
    v9 = [(CRLWPShapeEditor *)self p_shapesAreDifferent];

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v10 = [(CRLBoardItemEditor *)self boardItems];
  if ([CRLShapeEditor infosAreStickyNotes:v10])
  {
LABEL_13:

    goto LABEL_14;
  }

  v11 = [(CRLBoardItemEditor *)self boardItems];
  v12 = [CRLShapeEditor infosAreLines:v11];

  if ((v12 & 1) == 0)
  {
    v13 = objc_opt_class();
    v14 = [(CRLBoardItemEditor *)self boardItems];
    v15 = [v14 anyObject];
    v10 = sub_100013F00(v13, v15);

    v16 = [v10 isAutogrowingTextBox];
    v17 = v16;
    if (v16)
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"Set Text Color" value:0 table:0];
      v20 = [CRLImage crl_quickInspectorImageNamed:@"circle.fill"];
      v21 = [CRLQuickInspectorElement elementWithName:v19 image:v20 type:2 options:0x80000];

      [v21 setTag:4];
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"Choose a text color" value:0 table:0];
      [v21 setToolTip:v23];

      [v7 addObject:v21];
      v24 = 0x20000;
    }

    else
    {
      v24 = 16;
    }

    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"Modify Text" value:0 table:0];
    v27 = [CRLImage crl_quickInspectorImageNamed:@"textformat"];
    v28 = [CRLQuickInspectorElement elementWithName:v26 image:v27 type:2 options:v24];

    [v28 setTag:3];
    v29 = +[NSBundle mainBundle];
    v30 = v29;
    if (v17)
    {
      v31 = [v29 localizedStringForKey:@"Format text value:change alignment table:{or choose a list style", 0, 0}];
      [v28 setToolTip:v31];

      [v7 addObject:v28];
      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"Set Font Size" value:0 table:0];
      v34 = [CRLQuickInspectorElement elementWithName:v33 image:0 type:2 options:0x100000];

      [v34 setTag:5];
      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:@"Choose a font size" value:0 table:0];
      [v34 setToolTip:v36];

      [v7 addObject:v34];
    }

    else
    {
      v37 = [v29 localizedStringForKey:@"Format text" value:0 table:0];
      [v28 setToolTip:v37];

      [v7 addObject:v28];
    }

    goto LABEL_13;
  }

LABEL_14:
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
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101391AF0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101391B04(v6, v7);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101391BB0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v8, v6);
    }

    v9 = [NSString stringWithUTF8String:"[CRLWPShapeEditor saveDefaultInsertionPreset:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLWPShapeEditor.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:166 isFatal:0 description:"Only should save default style with a single object selected!"];
  }

  v11 = objc_opt_class();
  v12 = [(CRLBoardItemEditor *)self boardItems];
  v13 = [v12 anyObject];
  v14 = sub_100013F00(v11, v13);

  if (v14)
  {
    if ([v14 isAutogrowingTextBox])
    {
      v15 = 1;
    }

    else if ([v14 pathIsOpen])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v16 = [[_TtC8Freeform40CRLCommandSetDefaultShapeInsertionPreset alloc] initWithShapeItem:v14 shapeType:v15];
    v17 = [(CRLBoardItemEditor *)self interactiveCanvasController];
    v18 = [v17 commandController];
    [v18 enqueueCommand:v16];
  }
}

- (void)toggleItalics:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  v5 = swift_unknownObjectRelease();
  CRLWPShapeEditor.toggleItalics(_:)(v5);

  sub_100005070(&v6);
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  CRLWPShapeEditor.addContextualMenuElements(to:at:)(v5);
}

- (void)updateStateForCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  CRLWPShapeEditor.updateStateForCommand(_:)(v4);
}

- (BOOL)shouldAddAutosizeTextMenuItem
{
  v2 = self;
  v3 = sub_1012EC910();

  return v3 & 1;
}

- (void)toggleShrinkToFit:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  swift_getKeyPath();
  sub_1012E8D64();
  v7 = v6;

  if (v7 == 2)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = sub_100AD5FEC(0x657A69736F747541, 0xED00007478655420, 0, 0);
    sub_1012E8F08((v7 & 1) == 0, KeyPath, v9, v10);
  }

  sub_10000CAAC(v11, &unk_1019F4D00);
}

- (CRLPlatformControlState)shrinkToFitControlState
{
  v2 = self;
  v3 = sub_1012ECEC4();

  return v3;
}

@end