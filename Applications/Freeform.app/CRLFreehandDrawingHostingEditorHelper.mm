@interface CRLFreehandDrawingHostingEditorHelper
+ (id)makeCopyOfSelectedDrawingItemsFromHostingEditor:(id)a3;
@end

@implementation CRLFreehandDrawingHostingEditorHelper

+ (id)makeCopyOfSelectedDrawingItemsFromHostingEditor:(id)a3
{
  v58 = a3;
  v60 = +[NSMutableArray array];
  v64 = [v58 interactiveCanvasController];
  v62 = [v64 canvasEditor];
  v3 = v64;
  if (!v64)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101367EA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367EB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367F64();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367F8C(v4);
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:19 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];

    v3 = 0;
  }

  v7 = [v3 editorController];
  v56 = [v7 selectionPath];

  v8 = [v64 selectionModelTranslator];
  v55 = [v8 boardItemsForSelectionPath:v56];

  v57 = [v58 drawingRepresetativeItemsFromBoardItems:v55];
  v9 = [v64 topLevelZOrderedSiblingsOfInfos:v57];
  v10 = [v9 crl_arrayWithObjectsInSet:v57];

  v67 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v11)
  {
    v12 = *v80;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v80 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v79 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = sub_100014370(v15, v14);
        if (v16)
        {
          [v67 addObject:v16];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v11);
  }

  if ([v67 count])
  {
    v17 = [v64 editingCoordinator];
    v69 = [v17 boardItemFactory];

    v54 = [v58 drawingItemsFromCurrentSelectionPath];
    v18 = [v64 topLevelZOrderedSiblingsOfInfos:v54];
    v19 = [v18 crl_arrayWithObjectsInSet:v54];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v59 = v19;
    v63 = [v59 countByEnumeratingWithState:&v75 objects:v94 count:16];
    if (v63)
    {
      v20 = 0;
      v61 = *v76;
      do
      {
        v65 = 0;
        do
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(v59);
          }

          v21 = *(*(&v75 + 1) + 8 * v65);
          *v83 = 0;
          *v84 = v83;
          *&v84[8] = 0x3032000000;
          *&v84[16] = sub_1003DB9AC;
          *&v84[24] = sub_1003DB9BC;
          *&v84[32] = 0;
          v22 = [v62 selectionPathWithInfo:v21];
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_1003DB9C4;
          v74[3] = &unk_101857988;
          v74[4] = v21;
          v74[5] = v83;
          [v64 forLayoutNearestVisibleRectForInfosForSelectionPath:v22 performBlock:v74];

          v68 = [v69 makeFreehandDrawingItemWithGeometry:*(*v84 + 40)];
          v23 = +[NSMutableArray array];
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v24 = v67;
          v25 = [v24 countByEnumeratingWithState:&v70 objects:v93 count:16];
          if (v25)
          {
            v26 = *v71;
            do
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v71 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v70 + 1) + 8 * j);
                v29 = [v28 parentInfo];
                v30 = v29 == v21;

                if (v30)
                {
                  v31 = objc_opt_class();
                  v32 = [v69 makeDuplicateOfBoardItem:v28];
                  v33 = sub_100013F00(v31, v32);

                  [v23 addObject:v33];
                  ++v20;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v70 objects:v93 count:16];
            }

            while (v25);
          }

          v34 = [v64 board];
          [v68 beforeInsertionAddNewItems:v23 board:v34 error:0];

          v35 = [v68 childItems];
          v36 = [v35 count] == 0;

          if (v36)
          {
            v37 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136803C();
            }

            v38 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v86 = v37;
              v87 = 2082;
              v88 = "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]";
              v89 = 2082;
              v90 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m";
              v91 = 1024;
              v92 = 75;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Every freehand info should have at least one child!", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101368064();
            }

            v39 = off_1019EDA68;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v44 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v86 = v37;
              v87 = 2114;
              v88 = v44;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v40 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]");
            v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
            [CRLAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:75 isFatal:0 description:"Every freehand info should have at least one child!"];
          }

          v42 = [v68 childItems];
          v43 = [v42 count] == 0;

          if (!v43)
          {
            [v60 addObject:v68];
          }

          _Block_object_dispose(v83, 8);
          v65 = v65 + 1;
        }

        while (v65 != v63);
        v63 = [v59 countByEnumeratingWithState:&v75 objects:v94 count:16];
      }

      while (v63);
    }

    else
    {
      v20 = 0;
    }

    if (v20 != [v67 count])
    {
      v45 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136808C();
      }

      v46 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v52 = v46;
        v53 = [v67 count];
        *v83 = 67110402;
        *&v83[4] = v45;
        *v84 = 2082;
        *&v84[2] = "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]";
        *&v84[10] = 2082;
        *&v84[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m";
        *&v84[20] = 1024;
        *&v84[22] = 81;
        *&v84[26] = 2048;
        *&v84[28] = v53;
        *&v84[36] = 2048;
        *&v84[38] = v20;
        _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected to handle %zi shapes but instead did %zi", v83, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013680B4();
      }

      v47 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013680DC(v47);
      }

      v48 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]");
      v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v48, v49, 81, 0, "Expected to handle %zi shapes but instead did %zi", [v67 count], v20);
    }
  }

  v50 = [v60 copy];

  return v50;
}

@end