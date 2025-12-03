@interface CRLCanvasCommandSelectionBehavior
- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)editor type:(int64_t)type constructedInfos:(id)infos;
- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)editor type:(int64_t)type selectionPath:(id)path selectionFlags:(unint64_t)flags commitSelectionFlags:(unint64_t)selectionFlags forwardSelectionFlags:(unint64_t)forwardSelectionFlags reverseSelectionFlags:(unint64_t)reverseSelectionFlags;
@end

@implementation CRLCanvasCommandSelectionBehavior

- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)editor type:(int64_t)type selectionPath:(id)path selectionFlags:(unint64_t)flags commitSelectionFlags:(unint64_t)selectionFlags forwardSelectionFlags:(unint64_t)forwardSelectionFlags reverseSelectionFlags:(unint64_t)reverseSelectionFlags
{
  reverseSelectionFlagsCopy = reverseSelectionFlags;
  editorCopy = editor;
  pathCopy = path;
  if (!editorCopy)
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

  if ((type - 2) < 2)
  {
    interactiveCanvasController = [editorCopy interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];

    goto LABEL_22;
  }

  if (type != 1)
  {
    if (!type)
    {
      selectionPath = [editorCopy selectionPathWithInfos:0];
      selfCopy3 = self;
LABEL_24:
      selectionFlags |= 0x46uLL;
      forwardSelectionFlags |= selectionFlags;
LABEL_25:
      v31 = pathCopy;
      pathCopy = selectionPath;
      goto LABEL_32;
    }

    selectionPath = 0;
LABEL_22:
    selfCopy3 = self;
    if (type != 3 && type)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  flagsCopy = flags;
  v24 = [pathCopy mostSpecificSelectionOfClass:objc_opt_class()];
  v36 = v24;
  if (!v24)
  {
    v29 = 0;
LABEL_28:
    v30 = 1;
    goto LABEL_29;
  }

  v25 = [v24 infosOfClass:objc_opt_class()];
  anyObject = [v25 anyObject];

  v27 = objc_opt_class();
  parentInfo = [anyObject parentInfo];
  v29 = sub_100014370(v27, parentInfo);

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
  v31 = [editorCopy selectionPathWithInfos:v24];
  if ((v30 & 1) == 0)
  {
  }

  reverseSelectionFlagsCopy = reverseSelectionFlags | 4;
  flags = flagsCopy;
  selfCopy3 = self;
LABEL_32:
  if (type == 3)
  {
    forwardSelectionFlagsCopy = forwardSelectionFlags;
  }

  else
  {
    forwardSelectionFlagsCopy = 0;
  }

  reverseSelectionFlagsCopy = [(CRLCommandSelectionBehavior *)selfCopy3 initWithForwardSelectionPath:v31 reverseSelectionPath:pathCopy selectionFlags:flags commitSelectionFlags:selectionFlags forwardSelectionFlags:forwardSelectionFlags reverseSelectionFlags:forwardSelectionFlagsCopy | reverseSelectionFlagsCopy];

  return reverseSelectionFlagsCopy;
}

- (CRLCanvasCommandSelectionBehavior)initWithCanvasEditor:(id)editor type:(int64_t)type constructedInfos:(id)infos
{
  editorCopy = editor;
  infosCopy = infos;
  v10 = infosCopy;
  if (infosCopy && [infosCopy count])
  {
    if (type && type != 3)
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

    interactiveCanvasController = [editorCopy interactiveCanvasController];
    editorController = [interactiveCanvasController editorController];
    selectionPath = [editorController selectionPath];

    canvasEditorHelper = [editorCopy canvasEditorHelper];
    selectionPath2 = [canvasEditorHelper selectionPathForInsertingBoardItems:v10 byReplacingInfosInSelectionPath:selectionPath preservingMultipleContainers:type == 3];
  }

  else
  {
    interactiveCanvasController2 = [editorCopy interactiveCanvasController];
    editorController2 = [interactiveCanvasController2 editorController];
    selectionPath2 = [editorController2 selectionPath];
  }

  v21 = [(CRLCanvasCommandSelectionBehavior *)self initWithCanvasEditor:editorCopy type:type selectionPath:selectionPath2];

  return v21;
}

@end