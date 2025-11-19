@interface CRLWPDragAndDropHelper
- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5;
- (BOOL)p_allowedToHandleDragInfo:(id)a3;
- (BOOL)p_importingDrawablesOrMoviesFromDragInfo:(id)a3;
- (BOOL)p_insertPanelIsDragSourceFromDragInfo:(id)a3;
- (BOOL)p_wantsToPreventDragOperationForDragInfo:(id)a3 atPoint:(CGPoint)a4;
- (CGPoint)adjustedUnscaledPoint:(CGPoint)a3;
- (CGPoint)dragAndDropNaturalPoint;
- (CRLWPDragAndDropHelper)initWithOwningRep:(id)a3;
- (CRLWPDragAndDropHelperOwning)owningRep;
- (id)p_sourceTextEditorForDragInfo:(id)a3;
- (id)sourceSelectionForDragInfo:(id)a3;
- (id)sourceSelectionPathForDragInfo:(id)a3;
- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4;
- (unint64_t)p_resolveDragOperationFromMask:(unint64_t)a3;
- (unint64_t)sourceChangeCountForDragInfo:(id)a3;
@end

@implementation CRLWPDragAndDropHelper

- (CRLWPDragAndDropHelper)initWithOwningRep:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLWPDragAndDropHelper;
  v5 = [(CRLWPDragAndDropHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owningRep, v4);
    v6->_dragAndDropNaturalPoint = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v6;
}

- (unint64_t)dragOperationForDragInfo:(id)a3 atUnscaledPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 dragOperationMask];
  [(CRLWPDragAndDropHelper *)self adjustedUnscaledPoint:x, y];
  v10 = v9;
  v12 = v11;
  v13 = [(CRLWPDragAndDropHelper *)self owningRep];
  [v13 convertNaturalPointFromUnscaledCanvas:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = 0;
  if (![(CRLWPDragAndDropHelper *)self p_allowedToHandleDragInfo:v7]|| !v8)
  {
    goto LABEL_61;
  }

  v19 = [(CRLWPDragAndDropHelper *)self p_itemSourceForDragInfo:v7];
  v20 = objc_opt_class();
  v21 = [v7 inProcessDraggingSources];
  v22 = [v21 firstObject];
  v23 = sub_100014370(v20, v22);

  v24 = [(CRLWPDragAndDropHelper *)self owningRep];
  v25 = [v24 storage];
  v26 = [v23 storage];
  v27 = v26;
  v72 = v8;
  if (v25 == v26)
  {
    v70 = v23;
    v29 = v19;
    v30 = [(CRLWPDragAndDropHelper *)self owningRep];
    v31 = [v30 storage];
    v32 = [v31 changeCount];
    v33 = [(CRLWPDragAndDropHelper *)self sourceChangeCountForDragInfo:v7];

    if (v32 == v33)
    {
      v28 = [(CRLWPDragAndDropHelper *)self sourceSelectionForDragInfo:v7];
    }

    else
    {
      v28 = 0;
    }

    v19 = v29;
    v23 = v70;
    v8 = v72;
  }

  else
  {

    v28 = 0;
  }

  v34 = v28;
  if ([(CRLWPDragAndDropHelper *)self p_insertPanelIsDragSourceFromDragInfo:v7])
  {
    v35 = 0;
    goto LABEL_45;
  }

  v71 = v19;
  v36 = [v23 storage];
  v37 = [(CRLWPDragAndDropHelper *)self owningRep];
  v38 = [v37 storage];
  v39 = v38;
  if (v36 != v38 || !v34)
  {

    goto LABEL_16;
  }

  v40 = [(CRLWPDragAndDropHelper *)self owningRep];
  v41 = [v40 isDragPoint:v34 inSelection:1 includeEndpoints:{v15, v17}];

  if ((v41 & 1) == 0)
  {
LABEL_16:
    v42 = [v23 storage];
    v43 = [(CRLWPDragAndDropHelper *)self owningRep];
    v44 = [v43 storage];
    v45 = v44;
    if (v42 == v44 && v34)
    {
      v46 = [(CRLWPDragAndDropHelper *)self owningRep];
      v47 = [v46 isDragPoint:v34 inSelection:0 includeEndpoints:{v15, v17}];

      if (v47)
      {
LABEL_19:
        v35 = 0;
        goto LABEL_20;
      }
    }

    else
    {

      if (v42 == v45)
      {
        goto LABEL_19;
      }
    }

    v48 = [(CRLWPDragAndDropHelper *)self owningRep];
    v49 = [v48 storageForDragDropOperation];

    v8 = v72;
    if (v49)
    {
      v50 = [(CRLWPDragAndDropHelper *)self owningRep];
      v51 = [v50 storage];

      if (v51 == v49)
      {
        v55 = [(CRLWPDragAndDropHelper *)self owningRep];
        v54 = [v55 selectionForDragAndDropNaturalPoint:{v15, v17}];
      }

      else
      {
        v52 = [v49 range];
        v54 = [CRLWPSelection selectionWithRange:v52, v53];
      }

      v56 = [(CRLWPDragAndDropHelper *)self owningRep];
      v57 = [v56 textEditorForDropIntoStorage:v49];

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

      v61 = [v7 platformDraggingInfo];
      v62 = [v57 canPasteWithItemSource:v71 selection:v54 sender:v61];

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

      v8 = v72;
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
  v8 = v72;
LABEL_45:

  if (v35)
  {
    if ([(CRLWPDragAndDropHelper *)self p_wantsToPreventDragOperationForDragInfo:v7 atPoint:v15, v17])
    {
      v18 = 64;
    }

    else
    {
      v18 = v35;
    }

    if ((v18 & 0xFFFFFFFFFFFFFFBFLL) != 0 && (v18 & v8) == 0)
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
        v84 = v8;
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
      [CRLAssertionHandler handleFailureInFunction:v67 file:v68 lineNumber:179 isFatal:0 description:"Drag operation %zi not supported by the sender with mask %zi.", v18, v8];
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_61:

  return v18;
}

- (BOOL)handleDragOperation:(unint64_t)a3 withDragInfo:(id)a4 atUnscaledPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  [(CRLWPDragAndDropHelper *)self adjustedUnscaledPoint:x, y];
  v10 = v9;
  v12 = v11;
  v13 = [(CRLWPDragAndDropHelper *)self owningRep];
  [v13 convertNaturalPointFromUnscaledCanvas:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = [(CRLWPDragAndDropHelper *)self owningRep];
  v19 = [v18 interactiveCanvasController];

  v20 = [v19 editorController];
  v21 = [v20 selectionPath];

  v122 = [(CRLWPDragAndDropHelper *)self p_itemSourceForDragInfo:v8];
  v22 = [(CRLWPDragAndDropHelper *)self owningRep];
  v23 = [v22 textEditor];

  if (v23)
  {
    v24 = [(CRLWPDragAndDropHelper *)self owningRep];
    v25 = [v24 textEditor];
  }

  else
  {
    v25 = [(CRLWPDragAndDropHelper *)self p_sourceTextEditorForDragInfo:v8];
  }

  v123 = v8;
  if (v25)
  {
    v26 = [(CRLWPDragAndDropHelper *)self sourceSelectionForDragInfo:v8];
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

  if ([(CRLWPDragAndDropHelper *)self dragIsStorageLocal]&& [(CRLWPDragAndDropHelper *)self p_wantsToPreventDragOperationForDragInfo:v8 atPoint:v15, v17])
  {
    v34 = 0;
    v35 = v122;
  }

  else
  {
    v36 = [(CRLWPDragAndDropHelper *)self owningRep];
    v37 = [v36 storageForDragDropOperation];

    v38 = [(CRLWPDragAndDropHelper *)self owningRep];
    v39 = [v38 storage];

    if (v39 == v37)
    {
      v42 = [(CRLWPDragAndDropHelper *)self owningRep];
      v121 = [v42 selectionForDragAndDropNaturalPoint:{v15, v17}];
    }

    else
    {
      v40 = [v37 range];
      v121 = [CRLWPSelection selectionWithRange:v40, v41];
    }

    v43 = [(CRLWPDragAndDropHelper *)self owningRep];
    v44 = [v43 textEditorForDropIntoStorage:v37];

    v120 = v21;
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

      v21 = v120;
    }

    v48 = [v25 interactiveCanvasController];

    v118 = v25;
    v119 = v37;
    if (v25 && v48 == v19 && -[CRLWPDragAndDropHelper p_resolveDragOperationFromMask:](self, "p_resolveDragOperationFromMask:", [v8 dragOperationMask]) == 2)
    {
      v49 = [v8 platformDraggingInfo];
      v50 = [v49 items];

      v113 = v50;
      v51 = [v50 firstObject];
      v52 = objc_opt_class();
      v112 = v51;
      v53 = [v51 localObject];
      v54 = sub_100014370(v52, v53);

      v116 = [v54 reverseSelectionPath];
      v55 = [(CRLWPDragAndDropHelper *)self owningRep];
      v56 = [v55 commandController];
      [v56 openGroup];

      v57 = [(CRLWPDragAndDropHelper *)self owningRep];
      v58 = [v57 commandController];
      [v58 enableProgressiveEnqueuingInCurrentGroup];

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

      v63 = [v26 range];
      v64 = [v121 range];
      v111 = v65;
      v114 = v64;
      if (-[CRLWPDragAndDropHelper dragIsStorageLocal](self, "dragIsStorageLocal") && ([v26 containsCharacterAtIndex:v64 withOptions:3] & 1) != 0)
      {
        v66 = v120;
      }

      else
      {
        v81 = [v25 storage];
        v109 = [v81 length];

        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_1001616D4;
        v127[3] = &unk_10183AE28;
        v82 = v25;
        v128 = v82;
        v129 = v54;
        v83 = objc_retainBlock(v127);
        (v83[2])();
        v84 = [v82 storage];

        if (v37 == v84)
        {
          if (v63 < v114)
          {
            v85 = [v82 storage];
            v86 = [v85 length];

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

      v88 = [(CRLWPDragAndDropHelper *)self owningRep];
      v89 = [v88 textEditor];
      v110 = 2 * (v25 == v89);

      if (([v66 isEqual:v116] & 1) == 0)
      {
        v90 = [v25 storage];

        if (v37 != v90)
        {
          v91 = [(CRLWPDragAndDropHelper *)self owningRep];
          v92 = [v91 interactiveCanvasController];
          v93 = [v92 editorController];
          [v93 setSelectionPath:v120];
        }
      }

      v94 = [v25 storage];

      v95 = [v19 selectionModelTranslator];
      if (v37 == v94)
      {
        v101 = [v95 selectionPathForRange:objc_msgSend(v121 onStorage:"range") headCursorAffinity:0 tailCursorAffinity:{v37, 1, 2}];

        v99 = v63;
      }

      else
      {
        v96 = [(CRLWPDragAndDropHelper *)self dragIsStorageLocal];
        if (v96)
        {
          v97 = v114;
        }

        else
        {
          v97 = v63;
        }

        if (v96)
        {
          v98 = v111;
        }

        else
        {
          v98 = 0;
        }

        [v25 storage];
        v100 = v99 = v63;
        v101 = [v95 selectionPathForRange:v97 onStorage:{v98, v100}];
      }

      v102 = [v19 selectionModelTranslator];
      v103 = [v25 storage];
      [v102 selectionPathForRange:v99 onStorage:0 headCursorAffinity:v103 tailCursorAffinity:{1, 2}];
      v104 = v115 = v19;

      v105 = [[CRLCommandSelectionBehavior alloc] initWithCommitSelectionPath:v101 forwardSelectionPath:v101 reverseSelectionPath:v104 usePersistableCommitSelectionPath:1];
      v126[0] = _NSConcreteStackBlock;
      v126[1] = 3221225472;
      v126[2] = sub_10016179C;
      v126[3] = &unk_10183AE28;
      v126[4] = self;
      v126[5] = v105;
      v106 = objc_retainBlock(v126);
      v107 = [v123 platformDraggingInfo];
      v79 = v117;
      v80 = v121;
      [v117 pasteWithItemSource:v122 selection:v121 sender:v107 selectRange:v110 dragBlock:v106];

      v35 = v122;
      v8 = v123;

      v19 = v115;
      v21 = v120;
    }

    else
    {
      v67 = v26;
      v68 = v19;
      v69 = [(CRLWPDragAndDropHelper *)self owningRep];
      v70 = [v69 textEditor];
      v71 = v70 != 0;

      if (!v70)
      {
        v72 = [v68 editorController];
        v73 = [v72 selectionPath];

        v74 = [[CRLCommandSelectionBehavior alloc] initWithForwardSelectionPath:v73 reverseSelectionPath:v73];
        v75 = [(CRLWPDragAndDropHelper *)self owningRep];
        v76 = [v75 commandController];
        [v76 openGroupWithSelectionBehavior:v74];

        v21 = v120;
        v8 = v123;
      }

      v77 = v70 != 0;
      v78 = [v8 platformDraggingInfo];
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_100161800;
      v124[3] = &unk_10183C3C8;
      v125 = v71;
      v124[4] = self;
      v79 = v117;
      v80 = v121;
      v35 = v122;
      [v117 pasteWithItemSource:v122 selection:v121 sender:v78 selectRange:v77 dragBlock:v124];

      v19 = v68;
      v26 = v67;
    }

    v34 = 1;
    v25 = v118;
  }

  return v34;
}

- (unint64_t)sourceChangeCountForDragInfo:(id)a3
{
  v3 = [a3 platformDraggingInfo];
  v4 = [v3 items];
  v5 = [v4 firstObject];
  v6 = objc_opt_class();
  v7 = [v5 localObject];
  v8 = sub_100014370(v6, v7);

  v9 = [v8 changeCount];
  return v9;
}

- (id)sourceSelectionForDragInfo:(id)a3
{
  v3 = [(CRLWPDragAndDropHelper *)self sourceSelectionPathForDragInfo:a3];
  v4 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];

  return v4;
}

- (id)sourceSelectionPathForDragInfo:(id)a3
{
  v3 = [a3 platformDraggingInfo];
  v4 = [v3 items];
  v5 = [v4 firstObject];
  v6 = objc_opt_class();
  v7 = [v5 localObject];
  v8 = sub_100014370(v6, v7);

  v9 = [v8 sourceSelectionPath];

  return v9;
}

- (CGPoint)adjustedUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLWPDragAndDropHelper *)self owningRep];
  v6 = [v5 interactiveCanvasController];
  [v6 viewScale];
  v8 = y + -27.0 / v7;

  v9 = x;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)p_allowedToHandleDragInfo:(id)a3
{
  v4 = a3;
  if ([(CRLWPDragAndDropHelper *)self p_insertPanelIsDragSourceFromDragInfo:v4])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(CRLWPDragAndDropHelper *)self p_importingDrawablesOrMoviesFromDragInfo:v4];
  }

  return v5;
}

- (BOOL)p_insertPanelIsDragSourceFromDragInfo:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 inProcessDraggingSources];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (unint64_t)p_resolveDragOperationFromMask:(unint64_t)a3
{
  if ((a3 & 2) != 0)
  {
    return 2;
  }

  else
  {
    return a3 & 1;
  }
}

- (BOOL)p_wantsToPreventDragOperationForDragInfo:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (![(CRLWPDragAndDropHelper *)self p_allowedToHandleDragInfo:v7])
  {
    goto LABEL_11;
  }

  v8 = [(CRLWPDragAndDropHelper *)self owningRep];
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  do
  {
    v10 |= [v9 isLocked];
    v11 = [v9 parentRep];

    v9 = v11;
  }

  while (v11);
  if ((v10 & 1) == 0)
  {
LABEL_15:
    if ([(CRLWPDragAndDropHelper *)self dragIsStorageLocal])
    {
      v13 = [(CRLWPDragAndDropHelper *)self owningRep];
      v14 = [v13 storage];
      v15 = [v14 changeCount];
      v16 = [(CRLWPDragAndDropHelper *)self sourceChangeCountForDragInfo:v7];

      if (v15 == v16)
      {
        v17 = [(CRLWPDragAndDropHelper *)self sourceSelectionForDragInfo:v7];
        if (v17)
        {
          v18 = v17;
          v19 = [(CRLWPDragAndDropHelper *)self owningRep];
          v12 = [v19 isDragPoint:v18 inSelection:0 includeEndpoints:{x, y}];

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

- (BOOL)p_importingDrawablesOrMoviesFromDragInfo:(id)a3
{
  v3 = [a3 itemSource];
  v4 = [v3 preferredImportableDataTypeDetectingImportableURLsInText:0];
  LOBYTE(v5) = 0;
  if (([v3 hasNativeBoardItems] & 1) == 0)
  {
    v5 = ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2) & ~[v3 hasNativeText];
  }

  return v5;
}

- (id)p_sourceTextEditorForDragInfo:(id)a3
{
  v4 = [a3 platformDraggingInfo];
  v5 = [v4 items];

  v6 = [v5 firstObject];
  v7 = objc_opt_class();
  v8 = [v6 localObject];
  v9 = sub_100014370(v7, v8);

  if (!v9)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v34 = [v9 editorController];
  v10 = [v9 sourceSelectionPath];
  if (!v10)
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

  v14 = [(CRLWPDragAndDropHelper *)self owningRep];
  v15 = [v14 interactiveCanvasController];

  v16 = [v15 infosForSelectionPath:v10];
  if ([v16 count] != 1)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v17 = objc_opt_class();
  v18 = [v16 anyObject];
  v19 = sub_100014370(v17, v18);

  v20 = 0;
  if (!v10 || !v19)
  {
    goto LABEL_21;
  }

  v21 = [(CRLWPDragAndDropHelper *)self owningRep];
  v22 = [v21 storage];
  v23 = v22;
  if (v19 == v22)
  {
    v33 = [v9 changeCount];
    v31 = [(CRLWPDragAndDropHelper *)self owningRep];
    v25 = [v31 storage];
    v32 = [v25 changeCount];

    if (v33 == v32)
    {
      v26 = [v9 sourceSelectionPath];
      [v34 setSelectionPath:v26];

      v27 = [v34 selectionPath];
      v28 = [v9 sourceSelectionPath];
      v29 = [v27 isEqual:v28];

      if (v29)
      {
        v30 = objc_opt_class();
        v21 = [v34 textInputEditor];
        v20 = sub_100013F00(v30, v21);
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