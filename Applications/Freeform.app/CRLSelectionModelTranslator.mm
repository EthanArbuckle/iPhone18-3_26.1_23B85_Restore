@interface CRLSelectionModelTranslator
- (BOOL)isSelectionPathUserSelectable:(id)a3 isInCollaborationMode:(BOOL)a4;
- (id)boardItemsForSelectionPath:(id)a3;
- (id)containerToInsertIntoForSelectionPath:(id)a3;
- (id)infoForSelectionPath:(id)a3;
- (id)infosForSelectionPath:(id)a3;
- (id)selectionPathForInfos:(id)a3;
- (id)selectionPathForNothingSelectedInsideGroup:(id)a3;
- (id)selectionPathForRange:(_NSRange)a3 onStorage:(id)a4;
- (id)selectionPathForRange:(_NSRange)a3 onStorage:(id)a4 headCursorAffinity:(unint64_t)a5 tailCursorAffinity:(unint64_t)a6;
- (id)selectionPathForSelection:(id)a3 onStorage:(id)a4;
- (id)selectionPathForTextRange:(id)a3 onStorage:(id)a4;
- (id)selectionPathRemovingCrossContainerSelectionsForSelectionPath:(id)a3;
- (id)unlockedBoardItemsForSelectionPath:(id)a3;
- (id)unsafePossiblyUnselectableSelectionPathForInfos:(id)a3;
- (id)visualSelectionPathForRange:(_NSRange)a3 onStorage:(id)a4;
- (id)visualSelectionPathForTextRange:(id)a3 onStorage:(id)a4;
@end

@implementation CRLSelectionModelTranslator

- (id)infoForSelectionPath:(id)a3
{
  v3 = [(CRLSelectionModelTranslator *)self infosForSelectionPath:a3];
  if ([v3 count] == 1)
  {
    v4 = [v3 anyObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)infosForSelectionPath:(id)a3
{
  v3 = a3;
  v4 = +[NSSet set];
  v5 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 boardItems];

    if ([v6 itemCount] == 1)
    {
      v8 = [v6 boardItems];
      v9 = [v8 anyObject];

      if ([v9 conformsToProtocol:&OBJC_PROTOCOL___CRLContainerInfo])
      {
        v10 = [v9 infoForSelectionPath:v3];
        if (v10)
        {
          v11 = [NSSet setWithObject:v10];

          v7 = v11;
        }
      }
    }

    v4 = v7;
  }

  return v4;
}

- (id)unsafePossiblyUnselectableSelectionPathForInfos:(id)a3
{
  v4 = a3;
  v5 = +[NSThread currentThread];
  v6 = [v5 threadDictionary];
  [v6 setObject:&__kCFBooleanTrue forKey:@"CRLSelectionModelTranslatorThreadShouldSuppressSelectableAssert"];

  v7 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v4];

  v8 = +[NSThread currentThread];
  v9 = [v8 threadDictionary];
  [v9 removeObjectForKey:@"CRLSelectionModelTranslatorThreadShouldSuppressSelectableAssert"];

  return v7;
}

- (id)selectionPathForInfos:(id)a3
{
  v3 = a3;
  v4 = +[NSThread currentThread];
  v5 = [v4 threadDictionary];
  v6 = [v5 objectForKey:@"CRLSelectionModelTranslatorThreadShouldSuppressSelectableAssert"];

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v142 objects:v159 count:16];
  v129 = v7;
  if (v8)
  {
    v15 = v8;
    v16 = *v143;
    do
    {
      v17 = 0;
      do
      {
        if (*v143 != v16)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v142 + 1) + 8 * v17);
        v19 = sub_1003035DC(v18, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLCanvasElementInfo);
        v20 = v19;
        if (!v19)
        {
          v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136C920();
          }

          v27 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v150 = v26;
            v151 = 2082;
            v152 = "[CRLSelectionModelTranslator selectionPathForInfos:]";
            v153 = 2082;
            v154 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m";
            v155 = 1024;
            v156 = 65;
            v157 = 2112;
            v158 = v18;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot make a selection path with an object that is not a <CRLCanvasElementInfo> (%@)", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10136C948();
          }

          v28 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v29 = v28;
            v30 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v150 = v26;
            v151 = 2114;
            v152 = v30;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v24 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
          [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:65 isFatal:0 description:"Cannot make a selection path with an object that is not a <CRLCanvasElementInfo> (%@)", v18];
          goto LABEL_27;
        }

        if (!v6 && ([v19 isSelectable] & 1) == 0)
        {
          v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136C8D0();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v150 = v21;
            v151 = 2082;
            v152 = "[CRLSelectionModelTranslator selectionPathForInfos:]";
            v153 = 2082;
            v154 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m";
            v155 = 1024;
            v156 = 67;
            v157 = 2112;
            v158 = v18;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Only selectable infos should be used to make a selection path (%@)", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10136C8F8();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v31 = v23;
            v32 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v150 = v21;
            v151 = 2114;
            v152 = v32;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v24 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
          [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:67 isFatal:0 description:"Only selectable infos should be used to make a selection path (%@)", v18];
LABEL_27:

          v7 = v129;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v7 countByEnumeratingWithState:&v142 objects:v159 count:16];
    }

    while (v15);
  }

  v33 = objc_alloc_init(_TtC8Freeform17CRLBoardSelection);
  v34 = objc_alloc_init(CRLCanvasSelection);
  v35 = [NSMutableArray arrayWithObjects:v33, v34, 0];
  if ([v7 count])
  {
    v123 = v33;
    v124 = v35;
    v122 = v34;
    v127 = +[NSMutableSet set];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v7;
    v36 = [obj countByEnumeratingWithState:&v138 objects:v148 count:16];
    if (v36)
    {
      v43 = v36;
      v125 = 0;
      v44 = 0;
      v45 = *v139;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v139 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v47 = sub_1003035DC(*(*(&v138 + 1) + 8 * i), 1, v37, v38, v39, v40, v41, v42, &OBJC_PROTOCOL___CRLCanvasElementInfo);
          if (v47)
          {
            v48 = objc_opt_class();
            v49 = [v47 parentInfo];
            v50 = sub_100014370(v48, v49);

            if (v50)
            {
              if (v44)
              {
                v51 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                v52 = v44;
                if (qword_101AD5A10 != -1)
                {
                  sub_10136C970();
                }

                v53 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v150 = v51;
                  v151 = 2082;
                  v152 = "[CRLSelectionModelTranslator selectionPathForInfos:]";
                  v153 = 2082;
                  v154 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m";
                  v155 = 1024;
                  v156 = 82;
                  _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not select infos both in a group and in a table.", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10136C998();
                }

                v54 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  v78 = v54;
                  v79 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  v150 = v51;
                  v151 = 2114;
                  v152 = v79;
                  _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v55 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
                v56 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
                [CRLAssertionHandler handleFailureInFunction:v55 file:v56 lineNumber:82 isFatal:0 description:"Should not select infos both in a group and in a table."];

                v44 = v52;
              }

              [v127 addObject:v50];
            }

            else
            {
              v57 = [v47 parentInfo];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v126 = v44;
                if ([v127 count])
                {
                  v59 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                  if (qword_101AD5A10 != -1)
                  {
                    sub_10136CA10();
                  }

                  v60 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109890;
                    v150 = v59;
                    v151 = 2082;
                    v152 = "[CRLSelectionModelTranslator selectionPathForInfos:]";
                    v153 = 2082;
                    v154 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m";
                    v155 = 1024;
                    v156 = 86;
                    _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not select infos both in a group and in a table.", buf, 0x22u);
                  }

                  if (qword_101AD5A10 != -1)
                  {
                    sub_10136CA38();
                  }

                  v61 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    v80 = v61;
                    v81 = +[CRLAssertionHandler packedBacktraceString];
                    *buf = 67109378;
                    v150 = v59;
                    v151 = 2114;
                    v152 = v81;
                    _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                  }

                  v62 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
                  v63 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
                  [CRLAssertionHandler handleFailureInFunction:v62 file:v63 lineNumber:86 isFatal:0 description:"Should not select infos both in a group and in a table."];
                }

                v64 = objc_opt_class();
                v65 = [v47 parentInfo];
                v66 = sub_100013F00(v64, v65);

                v44 = v126;
                if (v126)
                {
                  if (v126 != v66)
                  {
                    v67 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                    if (qword_101AD5A10 != -1)
                    {
                      sub_10136CA60();
                    }

                    v68 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109890;
                      v150 = v67;
                      v151 = 2082;
                      v152 = "[CRLSelectionModelTranslator selectionPathForInfos:]";
                      v153 = 2082;
                      v154 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m";
                      v155 = 1024;
                      v156 = 94;
                      _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not select infos in multiple tables.", buf, 0x22u);
                    }

                    if (qword_101AD5A10 != -1)
                    {
                      sub_10136CA88();
                    }

                    v69 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      v84 = v69;
                      v85 = +[CRLAssertionHandler packedBacktraceString];
                      *buf = 67109378;
                      v150 = v67;
                      v151 = 2114;
                      v152 = v85;
                      _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                    }

                    v70 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
                    v71 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
                    [CRLAssertionHandler handleFailureInFunction:v70 file:v71 lineNumber:94 isFatal:0 description:"Should not select infos in multiple tables."];

                    v44 = v126;
                  }
                }

                else
                {
                  v44 = v66;
                  v125 = 1;
                }
              }

              else if (v44)
              {
                v72 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                v73 = v44;
                if (qword_101AD5A10 != -1)
                {
                  sub_10136C9C0();
                }

                v74 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v150 = v72;
                  v151 = 2082;
                  v152 = "[CRLSelectionModelTranslator selectionPathForInfos:]";
                  v153 = 2082;
                  v154 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m";
                  v155 = 1024;
                  v156 = 96;
                  _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not select infos both in and out of a table", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_10136C9E8();
                }

                v75 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  v82 = v75;
                  v83 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  v150 = v72;
                  v151 = 2114;
                  v152 = v83;
                  _os_log_error_impl(&_mh_execute_header, v82, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v76 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
                v77 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
                [CRLAssertionHandler handleFailureInFunction:v76 file:v77 lineNumber:96 isFatal:0 description:"Should not select infos both in and out of a table"];

                v125 = 1;
                v44 = v73;
              }

              else
              {
                v125 = 1;
              }
            }
          }
        }

        v43 = [obj countByEnumeratingWithState:&v138 objects:v148 count:16];
      }

      while (v43);
    }

    else
    {
      v125 = 0;
      v44 = 0;
    }

    if ([v127 count] > 1 || ((objc_msgSend(v127, "count") == 1) & v125) == 1)
    {
      v86 = v44;
      v87 = [[_TtC8Freeform17CRLGroupSelection alloc] initWithContainerGroups:v127 hasSelectedItemsInNonGroupContainer:v125 & 1];
      [v124 addObject:v87];
      v88 = +[NSMutableSet set];
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v89 = obj;
      v90 = [v89 countByEnumeratingWithState:&v134 objects:v147 count:16];
      v7 = v129;
      if (v90)
      {
        v91 = v90;
        v92 = *v135;
        do
        {
          for (j = 0; j != v91; j = j + 1)
          {
            if (*v135 != v92)
            {
              objc_enumerationMutation(v89);
            }

            v94 = *(*(&v134 + 1) + 8 * j);
            v95 = objc_opt_class();
            v96 = sub_100014370(v95, v94);
            v97 = v96;
            if (v96)
            {
              v98 = [v96 allNestedChildrenItemsIncludingGroups];
              [v88 addObjectsFromArray:v98];
            }
          }

          v91 = [v89 countByEnumeratingWithState:&v134 objects:v147 count:16];
        }

        while (v91);
      }

      if ([v88 intersectsSet:v89])
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10136CAB0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136CAD8();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10136CB68();
        }

        v99 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v99);
        }

        v100 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForInfos:]"];
        v101 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
        [CRLAssertionHandler handleFailureInFunction:v100 file:v101 lineNumber:115 isFatal:0 description:"Cannot select a parent and child simultaneously!"];
      }
    }

    else
    {
      v7 = v129;
      if ([v127 count] == 1)
      {
        v86 = v44;
        v114 = [v127 anyObject];
        if (v114)
        {
          v115 = v114;
          do
          {
            v116 = [[_TtC8Freeform17CRLGroupSelection alloc] initWithGroupItem:v115];
            [v124 insertObject:v116 atIndex:2];
            v117 = objc_opt_class();
            v118 = [v115 parentInfo];
            v119 = sub_100014370(v117, v118);

            v115 = v119;
          }

          while (v119);
        }

        goto LABEL_112;
      }

      v86 = v44;
      if (!v44)
      {
LABEL_112:
        v102 = +[NSMutableSet set];
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v103 = obj;
        v104 = [v103 countByEnumeratingWithState:&v130 objects:v146 count:16];
        if (v104)
        {
          v105 = v104;
          v106 = *v131;
          do
          {
            for (k = 0; k != v105; k = k + 1)
            {
              if (*v131 != v106)
              {
                objc_enumerationMutation(v103);
              }

              v108 = *(*(&v130 + 1) + 8 * k);
              v109 = objc_opt_class();
              v110 = sub_100013F00(v109, v108);
              [v102 crl_addNonNilObject:v110];
            }

            v105 = [v103 countByEnumeratingWithState:&v130 objects:v146 count:16];
          }

          while (v105);
        }

        v111 = [[_TtC8Freeform21CRLBoardItemSelection alloc] initWithBoardItems:v102];
        v35 = v124;
        [v124 addObject:v111];

        v34 = v122;
        v33 = v123;
        goto LABEL_120;
      }

      v120 = [_TtC8Freeform21CRLBoardItemSelection alloc];
      v121 = [NSSet setWithObject:v44];
      v87 = [(CRLBoardItemSelection *)v120 initWithBoardItems:v121];

      [v124 addObject:v87];
    }

    goto LABEL_112;
  }

LABEL_120:
  v112 = [CRLSelectionPath selectionPathWithSelectionArray:v35];

  return v112;
}

- (id)selectionPathForTextRange:(id)a3 onStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 parentInfo];
  v10 = sub_100014370(v8, v9);

  if (v10)
  {
    v11 = [NSSet setWithObject:v10];
    v12 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v11];

    v13 = [CRLWPSelection alloc];
    v14 = [v6 nsRange];
    LOBYTE(v22) = 1;
    v16 = -[CRLWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:storage:](v13, "initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:storage:", 0, v14, v15, 0, [v6 caretAffinity], 0x7FFFFFFFFFFFFFFFLL, 0, v22, v7);
    v17 = [v12 selectionPathWithAppendedSelection:v16];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136CB90();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136CBA4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136CC40();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v18);
    }

    v19 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForTextRange:onStorage:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
    [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:144 isFatal:0 description:"invalid nil value for '%{public}s'", "parentInfo"];

    v17 = 0;
  }

  return v17;
}

- (id)selectionPathForRange:(_NSRange)a3 onStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [_TtC8Freeform12CRLTextRange textRangeWith:location, length];
  v9 = [(CRLSelectionModelTranslator *)self selectionPathForTextRange:v8 onStorage:v7];

  return v9;
}

- (id)visualSelectionPathForTextRange:(id)a3 onStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 parentInfo];
  v10 = sub_100014370(v8, v9);

  if (v10)
  {
    v11 = [NSSet setWithObject:v10];
    v12 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v11];

    v13 = [CRLWPSelection alloc];
    v14 = [v6 nsRange];
    v16 = v15;
    v17 = [v6 caretAffinity];
    LOBYTE(v24) = [v6 insertionEdge] == 0;
    v18 = [(CRLWPSelection *)v13 initWithType:7 range:v14 styleInsertionBehavior:v16 caretAffinity:0 smartFieldRange:v17 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v24, v7];
    v19 = [v12 selectionPathWithAppendedSelection:v18];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136CC68();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136CC7C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136CD18();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v20);
    }

    v21 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator visualSelectionPathForTextRange:onStorage:]"];
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:162 isFatal:0 description:"invalid nil value for '%{public}s'", "parentInfo"];

    v19 = 0;
  }

  return v19;
}

- (id)visualSelectionPathForRange:(_NSRange)a3 onStorage:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [_TtC8Freeform12CRLTextRange textRangeWith:location, length];
  v9 = [(CRLSelectionModelTranslator *)self visualSelectionPathForTextRange:v8 onStorage:v7];

  return v9;
}

- (id)selectionPathForRange:(_NSRange)a3 onStorage:(id)a4 headCursorAffinity:(unint64_t)a5 tailCursorAffinity:(unint64_t)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a4;
  v12 = objc_opt_class();
  v13 = [v11 parentInfo];
  v14 = sub_100014370(v12, v13);

  if (v14)
  {
    v15 = [NSSet setWithObject:v14];
    v16 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v15];

    v17 = [CRLWPSelection selectionWithRange:location type:length leadingEdge:0 storage:1, v11];
    [v17 setHeadCursorAffinity:a5];
    [v17 setTailCursorAffinity:a6];
    v18 = [v16 selectionPathWithAppendedSelection:v17];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136CD40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136CD54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136CDF0();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForRange:onStorage:headCursorAffinity:tailCursorAffinity:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:180 isFatal:0 description:"invalid nil value for '%{public}s'", "parentInfo"];

    v18 = 0;
  }

  return v18;
}

- (id)selectionPathForSelection:(id)a3 onStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 parentInfo];

  v10 = sub_100014370(v8, v9);

  if (v10)
  {
    v11 = [NSSet setWithObject:v10];
    v12 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v11];

    v13 = [v12 selectionPathWithAppendedSelection:v6];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136CE18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136CE2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136CEC8();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForSelection:onStorage:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:196 isFatal:0 description:"invalid nil value for '%{public}s'", "parentInfo"];

    v13 = 0;
  }

  return v13;
}

- (id)selectionPathForNothingSelectedInsideGroup:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObject:v4];
  v6 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v5];

  v7 = objc_opt_class();
  v8 = [v6 mostSpecificSelectionOfClass:0];
  v9 = sub_100014370(v7, v8);

  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136CEF0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136CF04();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136CF94();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLSelectionModelTranslator selectionPathForNothingSelectedInsideGroup:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLSelectionModelTranslator.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:212 isFatal:0 description:"We expect this selection to be a plain board item selection, not one for editing in a group."];
  }

  v13 = [[_TtC8Freeform17CRLGroupSelection alloc] initWithGroupItem:v4];

  v14 = [v6 selectionPathReplacingMostSpecificLocationOfSelection:v9 withSelection:v13];

  return v14;
}

- (id)boardItemsForSelectionPath:(id)a3
{
  v3 = a3;
  v4 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = [v4 boardItems];
  }

  else
  {
    v5 = +[NSSet set];
  }

  v6 = v5;

  return v6;
}

- (id)unlockedBoardItemsForSelectionPath:(id)a3
{
  v3 = [(CRLSelectionModelTranslator *)self boardItemsForSelectionPath:a3];
  v4 = [v3 objectsPassingTest:&stru_1018602A0];

  return v4;
}

- (id)containerToInsertIntoForSelectionPath:(id)a3
{
  v3 = a3;
  v4 = [v3 mostSpecificSelectionOfClass:objc_opt_class()];
  v5 = v4;
  if (v4 && ([v4 hasSelectedItemsInNonGroupContainer] & 1) == 0)
  {
    v32 = v3;
    v7 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v8 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [v5 containerGroups];
    v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v35)
    {
      v9 = *v42;
      v10 = 1;
      v33 = *v42;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v11;
        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = [v7[423] array];
        [v13 addObject:v12];
        v14 = [v12 parentInfo];
        do
        {
          v15 = objc_opt_class();
          v21 = sub_1003038E0(v14, v15, 1, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLContainerInfo);
          [v13 crl_addNonNilObject:v21];
          v22 = [v14 parentInfo];

          v14 = v22;
        }

        while (v22);
        if (v10)
        {
          [v8 addObjectsFromArray:v13];
        }

        else
        {
          v23 = [NSSet setWithArray:v13];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v24 = [v8 copy];
          v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v38;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v38 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v37 + 1) + 8 * i);
                if (([v23 containsObject:v29] & 1) == 0)
                {
                  [v8 removeObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v26);
          }

          v7 = &_s10Foundation9IndexPathVSHAAMc_ptr;
          v9 = v33;
        }

        v30 = [v8 count];

        if (!v30)
        {
          break;
        }

        v10 = 0;
        v11 = v36 + 1;
        if ((v36 + 1) == v35)
        {
          v10 = 0;
          v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v35)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if ([v8 count])
    {
      v6 = [v8 firstObject];
    }

    else
    {
      v6 = 0;
    }

    v3 = v32;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)selectionPathRemovingCrossContainerSelectionsForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [(CRLSelectionModelTranslator *)self infosForSelectionPath:v4];
  v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v7 = +[NSMutableSet set];
  v8 = [v4 mostSpecificSelectionOfClass:objc_opt_class()];
  v9 = v8;
  if (!v8 || ([v8 isCrossContainerSelection] & 1) == 0)
  {
    v20 = v4;
    goto LABEL_54;
  }

  v64 = v9;
  v65 = self;
  if ([v9 hasSelectedItemsInNonGroupContainer])
  {
    v10 = v7;
    v59 = v5;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = [v5 allObjects];
    v12 = [v11 countByEnumeratingWithState:&v79 objects:v86 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v80;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v80 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v79 + 1) + 8 * i);
          v17 = objc_opt_class();
          v18 = [v16 parentInfo];
          v19 = sub_100014370(v17, v18);

          if (v19)
          {
            [v10 crl_addNonNilObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v79 objects:v86 count:16];
      }

      while (v13);
    }

    v5 = v59;
    v7 = v10;
    v6 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  }

  else
  {
    v21 = [v5 allObjects];
    [v7 addObjectsFromArray:v21];
  }

  v22 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v7];
  v23 = [(CRLSelectionModelTranslator *)self containerToInsertIntoForSelectionPath:v22];
  v24 = [v6[427] set];
  if (!v23 || ([v23 isSelectable] & 1) == 0)
  {
    v62 = v22;
    v63 = v7;
    v25 = [v6[427] set];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v46 = v5;
    v47 = [v46 countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v76;
      do
      {
        for (j = 0; j != v48; j = j + 1)
        {
          if (*v76 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = sub_100125F34(*(*(&v75 + 1) + 8 * j));
          [v25 crl_addNonNilObject:v51];
        }

        v48 = [v46 countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v48);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v52 = [v23 childInfos];
    v53 = [v52 countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v72;
      do
      {
        for (k = 0; k != v54; k = k + 1)
        {
          if (*v72 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v71 + 1) + 8 * k);
          if ([v25 containsObject:v57])
          {
            [v24 addObject:v57];
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v71 objects:v84 count:16];
      }

      while (v54);
    }

LABEL_52:
    v22 = v62;
    v7 = v63;
    self = v65;
    goto LABEL_53;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v25 = v5;
  v26 = [v25 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v26)
  {
    v27 = v26;
    v62 = v22;
    v63 = v7;
    v60 = v5;
    v61 = v4;
    v66 = *v68;
    do
    {
      for (m = 0; m != v27; m = m + 1)
      {
        if (*v68 != v66)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v67 + 1) + 8 * m);
        v30 = [v29 parentInfo];
        v31 = objc_opt_class();
        v37 = sub_1003038E0(v30, v31, 1, v32, v33, v34, v35, v36, &OBJC_PROTOCOL___CRLCanvasElementInfo);

        while (v37 != v23)
        {
          if ([v37 isSelectable])
          {
            v38 = v37;

            v39 = [v38 parentInfo];
            v40 = objc_opt_class();
            v37 = sub_1003038E0(v39, v40, 1, v41, v42, v43, v44, v45, &OBJC_PROTOCOL___CRLCanvasElementInfo);

            v29 = v38;
          }

          if (!v37 || v37 == v23 || ([v37 isSelectable] & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v37 = v37;

        v29 = v37;
LABEL_32:
        [v24 crl_addNonNilObject:v29];
      }

      v27 = [v25 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v27);
    v5 = v60;
    v4 = v61;
    goto LABEL_52;
  }

LABEL_53:

  v20 = [(CRLSelectionModelTranslator *)self selectionPathForInfos:v24];

  v9 = v64;
LABEL_54:

  return v20;
}

- (BOOL)isSelectionPathUserSelectable:(id)a3 isInCollaborationMode:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 mostSpecificSelectionOfClass:objc_opt_class()];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [v6 containerGroups];
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v42 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if ([*(*(&v41 + 1) + 8 * v11) isEffectivelyEmpty])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = 0;
    v13 = 0;
    if (v6)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_9:

    if (v6)
    {

      goto LABEL_24;
    }

    v12 = 1;
  }

  [(CRLSelectionModelTranslator *)self boardItemsForSelectionPath:v5];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v14 = v40 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v37 + 1) + 8 * i);
        v20 = objc_opt_class();
        v21 = sub_100014370(v20, v19);
        v22 = v21;
        if (v21 && ([v21 isEffectivelyEmpty] & 1) != 0)
        {
          v13 = 0;
          v6 = v14;
          goto LABEL_40;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ((v12 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_42;
  }

LABEL_24:
  v23 = [(CRLSelectionModelTranslator *)self infosForSelectionPath:v5];
  v14 = [v5 mostSpecificSelectionOfClass:0];
  objc_opt_class();
  v24 = (objc_opt_isKindOfClass() & 1) == 0 && [v23 count] == 1;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = v23;
  v25 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    while (2)
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v33 + 1) + 8 * j);
        v30 = sub_100125F34(v29);
        v31 = v29 != v30 || v24;

        if (v31 && (sub_10012602C(v29) & 1) != 0)
        {
          v13 = 0;
          goto LABEL_39;
        }
      }

      v26 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_39:
  v6 = v22;
LABEL_40:

LABEL_41:
LABEL_42:

  return v13;
}

@end