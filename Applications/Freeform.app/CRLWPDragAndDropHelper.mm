@interface CRLWPDragAndDropHelper
- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (BOOL)p_allowedToHandleDragInfo:(id)info;
- (BOOL)p_importingDrawablesOrMoviesFromDragInfo:(id)info;
- (BOOL)p_insertPanelIsDragSourceFromDragInfo:(id)info;
- (BOOL)p_wantsToPreventDragOperationForDragInfo:(id)info atPoint:(CGPoint)point;
- (CGPoint)adjustedUnscaledPoint:(CGPoint)point;
- (CGPoint)dragAndDropNaturalPoint;
- (CRLWPDragAndDropHelper)initWithOwningRep:(id)rep;
- (CRLWPDragAndDropHelperOwning)owningRep;
- (id)p_sourceTextEditorForDragInfo:(id)info;
- (id)sourceSelectionForDragInfo:(id)info;
- (id)sourceSelectionPathForDragInfo:(id)info;
- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point;
- (unint64_t)p_resolveDragOperationFromMask:(unint64_t)mask;
- (unint64_t)sourceChangeCountForDragInfo:(id)info;
@end

@implementation CRLWPDragAndDropHelper

- (CRLWPDragAndDropHelper)initWithOwningRep:(id)rep
{
  repCopy = rep;
  v8.receiver = self;
  v8.super_class = CRLWPDragAndDropHelper;
  v5 = [(CRLWPDragAndDropHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningRep, repCopy);
    v6->_dragAndDropNaturalPoint = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v6;
}

- (unint64_t)dragOperationForDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  dragOperationMask = [infoCopy dragOperationMask];
  [(CRLWPDragAndDropHelper *)self adjustedUnscaledPoint:x, y];
  v10 = v9;
  v12 = v11;
  owningRep = [(CRLWPDragAndDropHelper *)self owningRep];
  [owningRep convertNaturalPointFromUnscaledCanvas:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = 0;
  if (![(CRLWPDragAndDropHelper *)self p_allowedToHandleDragInfo:infoCopy]|| !dragOperationMask)
  {
    goto LABEL_61;
  }

  v19 = [(CRLWPDragAndDropHelper *)self p_itemSourceForDragInfo:infoCopy];
  v20 = objc_opt_class();
  inProcessDraggingSources = [infoCopy inProcessDraggingSources];
  firstObject = [inProcessDraggingSources firstObject];
  v23 = sub_100014370(v20, firstObject);

  owningRep2 = [(CRLWPDragAndDropHelper *)self owningRep];
  storage = [owningRep2 storage];
  storage2 = [v23 storage];
  v27 = storage2;
  v72 = dragOperationMask;
  if (storage == storage2)
  {
    v70 = v23;
    v29 = v19;
    owningRep3 = [(CRLWPDragAndDropHelper *)self owningRep];
    storage3 = [owningRep3 storage];
    changeCount = [storage3 changeCount];
    v33 = [(CRLWPDragAndDropHelper *)self sourceChangeCountForDragInfo:infoCopy];

    if (changeCount == v33)
    {
      v28 = [(CRLWPDragAndDropHelper *)self sourceSelectionForDragInfo:infoCopy];
    }

    else
    {
      v28 = 0;
    }

    v19 = v29;
    v23 = v70;
    dragOperationMask = v72;
  }

  else
  {

    v28 = 0;
  }

  v34 = v28;
  if ([(CRLWPDragAndDropHelper *)self p_insertPanelIsDragSourceFromDragInfo:infoCopy])
  {
    v35 = 0;
    goto LABEL_45;
  }

  v71 = v19;
  storage4 = [v23 storage];
  owningRep4 = [(CRLWPDragAndDropHelper *)self owningRep];
  storage5 = [owningRep4 storage];
  v39 = storage5;
  if (storage4 != storage5 || !v34)
  {

    goto LABEL_16;
  }

  owningRep5 = [(CRLWPDragAndDropHelper *)self owningRep];
  v41 = [owningRep5 isDragPoint:v34 inSelection:1 includeEndpoints:{v15, v17}];

  if ((v41 & 1) == 0)
  {
LABEL_16:
    storage6 = [v23 storage];
    owningRep6 = [(CRLWPDragAndDropHelper *)self owningRep];
    storage7 = [owningRep6 storage];
    v45 = storage7;
    if (storage6 == storage7 && v34)
    {
      owningRep7 = [(CRLWPDragAndDropHelper *)self owningRep];
      v47 = [owningRep7 isDragPoint:v34 inSelection:0 includeEndpoints:{v15, v17}];

      if (v47)
      {
LABEL_19:
        v35 = 0;
        goto LABEL_20;
      }
    }

    else
    {

      if (storage6 == v45)
      {
        goto LABEL_19;
      }
    }

    owningRep8 = [(CRLWPDragAndDropHelper *)self owningRep];
    storageForDragDropOperation = [owningRep8 storageForDragDropOperation];

    dragOperationMask = v72;
    if (storageForDragDropOperation)
    {
      owningRep9 = [(CRLWPDragAndDropHelper *)self owningRep];
      storage8 = [owningRep9 storage];

      if (storage8 == storageForDragDropOperation)
      {
        owningRep10 = [(CRLWPDragAndDropHelper *)self owningRep];
        v54 = [owningRep10 selectionForDragAndDropNaturalPoint:{v15, v17}];
      }

      else
      {
        range = [storageForDragDropOperation range];
        v54 = [CRLWPSelection selectionWithRange:range, v53];
      }

      owningRep11 = [(CRLWPDragAndDropHelper *)self owningRep];
      v57 = [owningRep11 textEditorForDropIntoStorage:storageForDragDropOperation];

      if (!v57)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131FA30();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131FA44();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131FAD8();
        }

        v58 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v58);
        }

        v59 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper dragOperationForDragInfo:atUnscaledPoint:]"];
        v60 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
        [CRLAssertionHandler handleFailureInFunction:v59 file:v60 lineNumber:146 isFatal:0 description:"invalid nil value for '%{public}s'", "targetTextEditor"];
      }

      platformDraggingInfo = [infoCopy platformDraggingInfo];
      v62 = [v57 canPasteWithItemSource:v71 selection:v54 sender:platformDraggingInfo];

      if (v62)
      {
        if (v23)
        {
          v63 = v72;
        }

        else
        {
          v63 = v72 & 0xFFFFFFFFFFFFFFFDLL;
        }

        v35 = [(CRLWPDragAndDropHelper *)self p_resolveDragOperationFromMask:v63];
      }

      else
      {
        v35 = 0;
      }

      dragOperationMask = v72;
    }

    else
    {
      v35 = 0;
    }

    v19 = v71;

    goto LABEL_45;
  }

  v35 = 64;
LABEL_20:
  v19 = v71;
  dragOperationMask = v72;
LABEL_45:

  if (v35)
  {
    if ([(CRLWPDragAndDropHelper *)self p_wantsToPreventDragOperationForDragInfo:infoCopy atPoint:v15, v17])
    {
      v18 = 64;
    }

    else
    {
      v18 = v35;
    }

    if ((v18 & 0xFFFFFFFFFFFFFFBFLL) != 0 && (v18 & dragOperationMask) == 0)
    {
      v64 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131FB00();
      }

      v65 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v74 = v64;
        v75 = 2082;
        v76 = "[CRLWPDragAndDropHelper dragOperationForDragInfo:atUnscaledPoint:]";
        v77 = 2082;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m";
        v79 = 1024;
        v80 = 179;
        v81 = 2048;
        v82 = v18;
        v83 = 2048;
        v84 = dragOperationMask;
        _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Drag operation %zi not supported by the sender with mask %zi.", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131FB28();
      }

      v66 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v66);
      }

      v67 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper dragOperationForDragInfo:atUnscaledPoint:]"];
      v68 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v67 file:v68 lineNumber:179 isFatal:0 description:"Drag operation %zi not supported by the sender with mask %zi.", v18, dragOperationMask];
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_61:

  return v18;
}

- (BOOL)handleDragOperation:(unint64_t)operation withDragInfo:(id)info atUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  [(CRLWPDragAndDropHelper *)self adjustedUnscaledPoint:x, y];
  v10 = v9;
  v12 = v11;
  owningRep = [(CRLWPDragAndDropHelper *)self owningRep];
  [owningRep convertNaturalPointFromUnscaledCanvas:{v10, v12}];
  v15 = v14;
  v17 = v16;

  owningRep2 = [(CRLWPDragAndDropHelper *)self owningRep];
  interactiveCanvasController = [owningRep2 interactiveCanvasController];

  editorController = [interactiveCanvasController editorController];
  selectionPath = [editorController selectionPath];

  v122 = [(CRLWPDragAndDropHelper *)self p_itemSourceForDragInfo:infoCopy];
  owningRep3 = [(CRLWPDragAndDropHelper *)self owningRep];
  textEditor = [owningRep3 textEditor];

  if (textEditor)
  {
    owningRep4 = [(CRLWPDragAndDropHelper *)self owningRep];
    textEditor2 = [owningRep4 textEditor];
  }

  else
  {
    textEditor2 = [(CRLWPDragAndDropHelper *)self p_sourceTextEditorForDragInfo:infoCopy];
  }

  v123 = infoCopy;
  if (textEditor2)
  {
    v26 = [(CRLWPDragAndDropHelper *)self sourceSelectionForDragInfo:infoCopy];
    if (!v26)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131FB50();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131FB64();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131FBF8();
      }

      v27 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v27);
      }

      v28 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper handleDragOperation:withDragInfo:atUnscaledPoint:]"];
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:234 isFatal:0 description:"invalid nil value for '%{public}s'", "dragSelection"];

      v26 = 0;
    }

    if (([v26 isRange] & 1) == 0)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      v30 = v26;
      if (qword_101AD5A10 != -1)
      {
        sub_10131FC20();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131FC48();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131FCE8();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v31);
      }

      v32 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper handleDragOperation:withDragInfo:atUnscaledPoint:]"];
      v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v32 file:v33 lineNumber:235 isFatal:0 description:"Invalid drag selection"];

      v26 = v30;
    }
  }

  else
  {
    v26 = 0;
  }

  if ([(CRLWPDragAndDropHelper *)self dragIsStorageLocal]&& [(CRLWPDragAndDropHelper *)self p_wantsToPreventDragOperationForDragInfo:infoCopy atPoint:v15, v17])
  {
    v34 = 0;
    v35 = v122;
  }

  else
  {
    owningRep5 = [(CRLWPDragAndDropHelper *)self owningRep];
    storageForDragDropOperation = [owningRep5 storageForDragDropOperation];

    owningRep6 = [(CRLWPDragAndDropHelper *)self owningRep];
    storage = [owningRep6 storage];

    if (storage == storageForDragDropOperation)
    {
      owningRep7 = [(CRLWPDragAndDropHelper *)self owningRep];
      v121 = [owningRep7 selectionForDragAndDropNaturalPoint:{v15, v17}];
    }

    else
    {
      range = [storageForDragDropOperation range];
      v121 = [CRLWPSelection selectionWithRange:range, v41];
    }

    owningRep8 = [(CRLWPDragAndDropHelper *)self owningRep];
    v44 = [owningRep8 textEditorForDropIntoStorage:storageForDragDropOperation];

    v120 = selectionPath;
    v117 = v44;
    if (!v44)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131FD10();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10131FD38();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10131FDCC();
      }

      v45 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v45);
      }

      v46 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper handleDragOperation:withDragInfo:atUnscaledPoint:]"];
      v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
      [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:267 isFatal:0 description:"invalid nil value for '%{public}s'", "targetTextEditor"];

      selectionPath = v120;
    }

    interactiveCanvasController2 = [textEditor2 interactiveCanvasController];

    v118 = textEditor2;
    v119 = storageForDragDropOperation;
    if (textEditor2 && interactiveCanvasController2 == interactiveCanvasController && -[CRLWPDragAndDropHelper p_resolveDragOperationFromMask:](self, "p_resolveDragOperationFromMask:", [infoCopy dragOperationMask]) == 2)
    {
      platformDraggingInfo = [infoCopy platformDraggingInfo];
      items = [platformDraggingInfo items];

      v113 = items;
      firstObject = [items firstObject];
      v52 = objc_opt_class();
      v112 = firstObject;
      localObject = [firstObject localObject];
      v54 = sub_100014370(v52, localObject);

      reverseSelectionPath = [v54 reverseSelectionPath];
      owningRep9 = [(CRLWPDragAndDropHelper *)self owningRep];
      commandController = [owningRep9 commandController];
      [commandController openGroup];

      owningRep10 = [(CRLWPDragAndDropHelper *)self owningRep];
      commandController2 = [owningRep10 commandController];
      [commandController2 enableProgressiveEnqueuingInCurrentGroup];

      if (([v26 isRange] & 1) == 0)
      {
        v59 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10131FDF4();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10131FE1C(v26, v59);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10131FED4();
        }

        v60 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v60);
        }

        v61 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper handleDragOperation:withDragInfo:atUnscaledPoint:]"];
        v62 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
        [CRLAssertionHandler handleFailureInFunction:v61 file:v62 lineNumber:298 isFatal:0 description:"source selection %@ is not a range", v26];
      }

      range2 = [v26 range];
      range3 = [v121 range];
      v111 = v65;
      v114 = range3;
      if (-[CRLWPDragAndDropHelper dragIsStorageLocal](self, "dragIsStorageLocal") && ([v26 containsCharacterAtIndex:range3 withOptions:3] & 1) != 0)
      {
        v66 = v120;
      }

      else
      {
        storage2 = [textEditor2 storage];
        v109 = [storage2 length];

        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_1001616D4;
        v127[3] = &unk_10183AE28;
        v82 = textEditor2;
        v128 = v82;
        v129 = v54;
        v83 = objc_retainBlock(v127);
        (v83[2])();
        storage3 = [v82 storage];

        if (storageForDragDropOperation == storage3)
        {
          if (range2 < v114)
          {
            storage4 = [v82 storage];
            v86 = [storage4 length];

            v87 = [v121 copyWithNewRange:{&v86[v114 - v109], v111}];
            v121 = v87;
          }

          v66 = v120;
        }

        else
        {
          v66 = v120;
        }
      }

      owningRep11 = [(CRLWPDragAndDropHelper *)self owningRep];
      textEditor3 = [owningRep11 textEditor];
      v110 = 2 * (textEditor2 == textEditor3);

      if (([v66 isEqual:reverseSelectionPath] & 1) == 0)
      {
        storage5 = [textEditor2 storage];

        if (storageForDragDropOperation != storage5)
        {
          owningRep12 = [(CRLWPDragAndDropHelper *)self owningRep];
          interactiveCanvasController3 = [owningRep12 interactiveCanvasController];
          editorController2 = [interactiveCanvasController3 editorController];
          [editorController2 setSelectionPath:v120];
        }
      }

      storage6 = [textEditor2 storage];

      selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
      if (storageForDragDropOperation == storage6)
      {
        v101 = [selectionModelTranslator selectionPathForRange:objc_msgSend(v121 onStorage:"range") headCursorAffinity:0 tailCursorAffinity:{storageForDragDropOperation, 1, 2}];

        v99 = range2;
      }

      else
      {
        dragIsStorageLocal = [(CRLWPDragAndDropHelper *)self dragIsStorageLocal];
        if (dragIsStorageLocal)
        {
          v97 = v114;
        }

        else
        {
          v97 = range2;
        }

        if (dragIsStorageLocal)
        {
          v98 = v111;
        }

        else
        {
          v98 = 0;
        }

        [textEditor2 storage];
        v100 = v99 = range2;
        v101 = [selectionModelTranslator selectionPathForRange:v97 onStorage:{v98, v100}];
      }

      selectionModelTranslator2 = [interactiveCanvasController selectionModelTranslator];
      storage7 = [textEditor2 storage];
      [selectionModelTranslator2 selectionPathForRange:v99 onStorage:0 headCursorAffinity:storage7 tailCursorAffinity:{1, 2}];
      v104 = v115 = interactiveCanvasController;

      v105 = [[CRLCommandSelectionBehavior alloc] initWithCommitSelectionPath:v101 forwardSelectionPath:v101 reverseSelectionPath:v104 usePersistableCommitSelectionPath:1];
      v126[0] = _NSConcreteStackBlock;
      v126[1] = 3221225472;
      v126[2] = sub_10016179C;
      v126[3] = &unk_10183AE28;
      v126[4] = self;
      v126[5] = v105;
      v106 = objc_retainBlock(v126);
      platformDraggingInfo2 = [v123 platformDraggingInfo];
      v79 = v117;
      v80 = v121;
      [v117 pasteWithItemSource:v122 selection:v121 sender:platformDraggingInfo2 selectRange:v110 dragBlock:v106];

      v35 = v122;
      infoCopy = v123;

      interactiveCanvasController = v115;
      selectionPath = v120;
    }

    else
    {
      v67 = v26;
      v68 = interactiveCanvasController;
      owningRep13 = [(CRLWPDragAndDropHelper *)self owningRep];
      textEditor4 = [owningRep13 textEditor];
      v71 = textEditor4 != 0;

      if (!textEditor4)
      {
        editorController3 = [v68 editorController];
        selectionPath2 = [editorController3 selectionPath];

        v74 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:selectionPath2 reverseSelectionPath:selectionPath2];
        owningRep14 = [(CRLWPDragAndDropHelper *)self owningRep];
        commandController3 = [owningRep14 commandController];
        [commandController3 openGroupWithSelectionBehavior:v74];

        selectionPath = v120;
        infoCopy = v123;
      }

      v77 = textEditor4 != 0;
      platformDraggingInfo3 = [infoCopy platformDraggingInfo];
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_100161800;
      v124[3] = &unk_10183C3C8;
      v125 = v71;
      v124[4] = self;
      v79 = v117;
      v80 = v121;
      v35 = v122;
      [v117 pasteWithItemSource:v122 selection:v121 sender:platformDraggingInfo3 selectRange:v77 dragBlock:v124];

      interactiveCanvasController = v68;
      v26 = v67;
    }

    v34 = 1;
    textEditor2 = v118;
  }

  return v34;
}

- (unint64_t)sourceChangeCountForDragInfo:(id)info
{
  platformDraggingInfo = [info platformDraggingInfo];
  items = [platformDraggingInfo items];
  firstObject = [items firstObject];
  v6 = objc_opt_class();
  localObject = [firstObject localObject];
  v8 = sub_100014370(v6, localObject);

  changeCount = [v8 changeCount];
  return changeCount;
}

- (id)sourceSelectionForDragInfo:(id)info
{
  v3 = [(CRLWPDragAndDropHelper *)self sourceSelectionPathForDragInfo:info];
  v4 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];

  return v4;
}

- (id)sourceSelectionPathForDragInfo:(id)info
{
  platformDraggingInfo = [info platformDraggingInfo];
  items = [platformDraggingInfo items];
  firstObject = [items firstObject];
  v6 = objc_opt_class();
  localObject = [firstObject localObject];
  v8 = sub_100014370(v6, localObject);

  sourceSelectionPath = [v8 sourceSelectionPath];

  return sourceSelectionPath;
}

- (CGPoint)adjustedUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  owningRep = [(CRLWPDragAndDropHelper *)self owningRep];
  interactiveCanvasController = [owningRep interactiveCanvasController];
  [interactiveCanvasController viewScale];
  v8 = y + -27.0 / v7;

  v9 = x;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)p_allowedToHandleDragInfo:(id)info
{
  infoCopy = info;
  if ([(CRLWPDragAndDropHelper *)self p_insertPanelIsDragSourceFromDragInfo:infoCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(CRLWPDragAndDropHelper *)self p_importingDrawablesOrMoviesFromDragInfo:infoCopy];
  }

  return v5;
}

- (BOOL)p_insertPanelIsDragSourceFromDragInfo:(id)info
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inProcessDraggingSources = [info inProcessDraggingSources];
  v4 = [inProcessDraggingSources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(inProcessDraggingSources);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 objectForKey:@"TIAMediaBrowserCollectionViewDragSessionIdentifier"];

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v5 = [inProcessDraggingSources countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)p_resolveDragOperationFromMask:(unint64_t)mask
{
  if ((mask & 2) != 0)
  {
    return 2;
  }

  else
  {
    return mask & 1;
  }
}

- (BOOL)p_wantsToPreventDragOperationForDragInfo:(id)info atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  infoCopy = info;
  if (![(CRLWPDragAndDropHelper *)self p_allowedToHandleDragInfo:infoCopy])
  {
    goto LABEL_11;
  }

  owningRep = [(CRLWPDragAndDropHelper *)self owningRep];
  if (!owningRep)
  {
    goto LABEL_15;
  }

  v9 = owningRep;
  v10 = 0;
  do
  {
    v10 |= [v9 isLocked];
    parentRep = [v9 parentRep];

    v9 = parentRep;
  }

  while (parentRep);
  if ((v10 & 1) == 0)
  {
LABEL_15:
    if ([(CRLWPDragAndDropHelper *)self dragIsStorageLocal])
    {
      owningRep2 = [(CRLWPDragAndDropHelper *)self owningRep];
      storage = [owningRep2 storage];
      changeCount = [storage changeCount];
      v16 = [(CRLWPDragAndDropHelper *)self sourceChangeCountForDragInfo:infoCopy];

      if (changeCount == v16)
      {
        v17 = [(CRLWPDragAndDropHelper *)self sourceSelectionForDragInfo:infoCopy];
        if (v17)
        {
          v18 = v17;
          owningRep3 = [(CRLWPDragAndDropHelper *)self owningRep];
          v12 = [owningRep3 isDragPoint:v18 inSelection:0 includeEndpoints:{x, y}];

          goto LABEL_12;
        }
      }
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)p_importingDrawablesOrMoviesFromDragInfo:(id)info
{
  itemSource = [info itemSource];
  v4 = [itemSource preferredImportableDataTypeDetectingImportableURLsInText:0];
  LOBYTE(v5) = 0;
  if (([itemSource hasNativeBoardItems] & 1) == 0)
  {
    v5 = ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2) & ~[itemSource hasNativeText];
  }

  return v5;
}

- (id)p_sourceTextEditorForDragInfo:(id)info
{
  platformDraggingInfo = [info platformDraggingInfo];
  items = [platformDraggingInfo items];

  firstObject = [items firstObject];
  v7 = objc_opt_class();
  localObject = [firstObject localObject];
  v9 = sub_100014370(v7, localObject);

  if (!v9)
  {
    v20 = 0;
    goto LABEL_22;
  }

  editorController = [v9 editorController];
  sourceSelectionPath = [v9 sourceSelectionPath];
  if (!sourceSelectionPath)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131FEFC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131FF10();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131FFA4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLWPDragAndDropHelper p_sourceTextEditorForDragInfo:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPDragAndDropHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:706 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceSelectionPath"];
  }

  owningRep = [(CRLWPDragAndDropHelper *)self owningRep];
  interactiveCanvasController = [owningRep interactiveCanvasController];

  v16 = [interactiveCanvasController infosForSelectionPath:sourceSelectionPath];
  if ([v16 count] != 1)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v17 = objc_opt_class();
  anyObject = [v16 anyObject];
  v19 = sub_100014370(v17, anyObject);

  v20 = 0;
  if (!sourceSelectionPath || !v19)
  {
    goto LABEL_21;
  }

  owningRep2 = [(CRLWPDragAndDropHelper *)self owningRep];
  storage = [owningRep2 storage];
  v23 = storage;
  if (v19 == storage)
  {
    changeCount = [v9 changeCount];
    owningRep3 = [(CRLWPDragAndDropHelper *)self owningRep];
    storage2 = [owningRep3 storage];
    changeCount2 = [storage2 changeCount];

    if (changeCount == changeCount2)
    {
      sourceSelectionPath2 = [v9 sourceSelectionPath];
      [editorController setSelectionPath:sourceSelectionPath2];

      selectionPath = [editorController selectionPath];
      sourceSelectionPath3 = [v9 sourceSelectionPath];
      v29 = [selectionPath isEqual:sourceSelectionPath3];

      if (v29)
      {
        v30 = objc_opt_class();
        owningRep2 = [editorController textInputEditor];
        v20 = sub_100013F00(v30, owningRep2);
        goto LABEL_17;
      }
    }

LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v20 = 0;
LABEL_17:

LABEL_21:
LABEL_22:

  return v20;
}

- (CRLWPDragAndDropHelperOwning)owningRep
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRep);

  return WeakRetained;
}

- (CGPoint)dragAndDropNaturalPoint
{
  x = self->_dragAndDropNaturalPoint.x;
  y = self->_dragAndDropNaturalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end