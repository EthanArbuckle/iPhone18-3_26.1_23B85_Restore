@interface CRLCanvasCommandSelectionBehavior
- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)a3 type:(int64_t)a4 constructedInfos:(id)a5;
- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)a3 type:(int64_t)a4 selectionPath:(id)a5 selectionFlags:(unint64_t)a6 commitSelectionFlags:(unint64_t)a7 forwardSelectionFlags:(unint64_t)a8 reverseSelectionFlags:(unint64_t)a9;
@end

@implementation CRLCanvasCommandSelectionBehavior

- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)a3 type:(int64_t)a4 selectionPath:(id)a5 selectionFlags:(unint64_t)a6 commitSelectionFlags:(unint64_t)a7 forwardSelectionFlags:(unint64_t)a8 reverseSelectionFlags:(unint64_t)a9
{
  v14 = a9;
  v15 = a3;
  v16 = a5;
  if (!v15)
  {
    LODWORD(v35) = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101312A68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101312A7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101312B2C();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLCanvasCommandSelectionBehavior initWithCanvasEditor:type:selectionPath:selectionFlags:commitSelectionFlags:forwardSelectionFlags:reverseSelectionFlags:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCanvasCommandSelectionBehavior.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:26 isFatal:0 description:"invalid nil value for '%{public}s'", "editor", v35];
  }

  if ((a4 - 2) < 2)
  {
    v22 = [v15 interactiveCanvasController];
    v23 = [v22 editorController];
    v20 = [v23 selectionPath];

    goto LABEL_22;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      v20 = [v15 selectionPathWithInfos:0];
      v21 = self;
LABEL_24:
      a7 |= 0x46uLL;
      a8 |= a7;
LABEL_25:
      v31 = v16;
      v16 = v20;
      goto LABEL_32;
    }

    v20 = 0;
LABEL_22:
    v21 = self;
    if (a4 != 3 && a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v37 = a6;
  v24 = [v16 mostSpecificSelectionOfClass:objc_opt_class()];
  v36 = v24;
  if (!v24)
  {
    v29 = 0;
LABEL_28:
    v30 = 1;
    goto LABEL_29;
  }

  v25 = [v24 infosOfClass:objc_opt_class()];
  v26 = [v25 anyObject];

  v27 = objc_opt_class();
  v28 = [v26 parentInfo];
  v29 = sub_100014370(v27, v28);

  if (([v29 isSelectable] & 1) == 0)
  {

    v29 = 0;
  }

  if (!v29)
  {
    v24 = 0;
    goto LABEL_28;
  }

  v24 = [NSSet setWithObject:v29];
  v30 = 0;
LABEL_29:
  v31 = [v15 selectionPathWithInfos:v24];
  if ((v30 & 1) == 0)
  {
  }

  v14 = a9 | 4;
  a6 = v37;
  v21 = self;
LABEL_32:
  if (a4 == 3)
  {
    v32 = a8;
  }

  else
  {
    v32 = 0;
  }

  v33 = [(CRLCommandSelectionBehavior *)v21 initWithForwardSelectionPath:v31 reverseSelectionPath:v16 selectionFlags:a6 commitSelectionFlags:a7 forwardSelectionFlags:a8 reverseSelectionFlags:v32 | v14];

  return v33;
}

- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)a3 type:(int64_t)a4 constructedInfos:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9 && [v9 count])
  {
    if (a4 && a4 != 3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101312B54();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101312B68();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101312C08();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLCanvasCommandSelectionBehavior initWithCanvasEditor:type:constructedInfos:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCanvasCommandSelectionBehavior.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:95 isFatal:0 description:"Constructed infos should not be provided for this selection type"];
    }

    v14 = [v8 interactiveCanvasController];
    v15 = [v14 editorController];
    v16 = [v15 selectionPath];

    v17 = [v8 canvasEditorHelper];
    v18 = [v17 selectionPathForInsertingBoardItems:v10 byReplacingInfosInSelectionPath:v16 preservingMultipleContainers:a4 == 3];
  }

  else
  {
    v19 = [v8 interactiveCanvasController];
    v20 = [v19 editorController];
    v18 = [v20 selectionPath];
  }

  v21 = [(CRLCanvasCommandSelectionBehavior *)self initWithCanvasEditor:v8 type:a4 selectionPath:v18];

  return v21;
}

@end