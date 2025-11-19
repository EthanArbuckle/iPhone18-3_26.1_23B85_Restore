@interface CRLConnectionLineAdjustmentHelper
+ (id)commandForUpdatingMagnetAfterUngroupingForCline:(id)a3 withPosition:(id)a4 forMagnet:(BOOL)a5 withIcc:(id)a6;
+ (id)commandsForAdjustingConnectionLines:(id)a3 infosToRemove:(id)a4 editingCoordinator:(id)a5 withIcc:(id)a6;
+ (id)infosForAdjustingConnectionLinesAfterRemove:(id)a3;
+ (id)p_commandsForUpdateConnectionLineInfoGeometry:(id)a3 withBoardItemOwner:(id)a4 withNewPathSource:(id *)a5;
+ (id)p_getMagnetUnscaledPositionValueForMagnet:(id)a3 withConnectedItem:(id)a4 withIcc:(id)a5;
+ (id)p_getUpdatedMagnetForClineItem:(id)a3 forHeadMagnet:(BOOL)a4 withOriginalLayout:(id)a5 withIcc:(id)a6 newConnectedInfo:(id *)a7;
+ (unint64_t)p_getUpdatedMagnetTypeWithPosition:(CGPoint)a3 inLayout:(id)a4;
+ (void)getMagnetUnscaledPositionsFromInfos:(id)a3 withAffectedInfos:(id)a4 withClineHeadMagnets:(id *)a5 withClineTailMagnets:(id *)a6 withIcc:(id)a7;
+ (void)p_computeLayoutInfoGeometry:(id *)a3 andPathSource:(id *)a4 forConnectionLine:(id)a5 withBoardItemOwner:(id)a6;
+ (void)transferLaidOutInfoGeometryAndPathSourceFrom:(id)a3 to:(id)a4 withBoardItemOwner:(id)a5;
@end

@implementation CRLConnectionLineAdjustmentHelper

+ (id)infosForAdjustingConnectionLinesAfterRemove:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = [v9 parentInfo];
        v12 = sub_100014370(v10, v11);

        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101356BD8();
          }

          v14 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v40 = v13;
            v41 = 2082;
            v42 = "+[CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:]";
            v43 = 2082;
            v44 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineAdjustmentHelper.m";
            v45 = 1024;
            v46 = 24;
            v47 = 2082;
            v48 = "currentParent";
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101356C00();
          }

          v15 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v18 = v15;
            v19 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v40 = v13;
            v41 = 2114;
            v42 = v19;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLConnectionLineAdjustmentHelper infosForAdjustingConnectionLinesAfterRemove:]");
          v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineAdjustmentHelper.m"];
          [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:24 isFatal:0 description:"invalid nil value for '%{public}s'", "currentParent"];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v6);
  }

  v20 = +[NSMutableSet set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v4;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v30 + 1) + 8 * i) childInfos];
        [v20 addObjectsFromArray:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v23);
  }

  v27 = [v20 crl_setBySubtractingSet:obj];

  return v27;
}

+ (id)commandsForAdjustingConnectionLines:(id)a3 infosToRemove:(id)a4 editingCoordinator:(id)a5 withIcc:(id)a6
{
  v9 = a3;
  v70 = a4;
  v10 = a5;
  v67 = a6;
  v79 = +[NSMutableArray array];
  v66 = v10;
  v11 = [v10 mainBoard];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v95;
    v68 = v11;
    v69 = *v95;
    do
    {
      v15 = 0;
      v71 = v13;
      do
      {
        if (*v95 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v94 + 1) + 8 * v15);
        if ([v16 isMemberOfClass:objc_opt_class()])
        {
          v17 = v16;
          v18 = [v17 getConnectedFromWithBoardItemOwner:v11];
          v19 = [v17 getConnectedToWithBoardItemOwner:v11];
          if (v18 | v19)
          {
            v93 = 0;
            v20 = [a1 p_commandsForUpdateConnectionLineInfoGeometry:v17 withBoardItemOwner:v11 withNewPathSource:&v93];
            v21 = v93;
            v76 = v20;
            [v79 addObjectsFromArray:v20];
            v22 = objc_opt_class();
            v72 = v21;
            v23 = sub_100014370(v22, v21);
            v24 = v19;
            v25 = [v17 connectionLinePathSource];
            v26 = [v25 headMagnet];
            if (!v26)
            {
              goto LABEL_11;
            }

            v27 = v26;
            v28 = [v70 containsObject:v24];

            if (v28)
            {

              v25 = [v67 layoutForInfo:v24];
              v92 = 0;
              v29 = [a1 p_getUpdatedMagnetForClineItem:v17 forHeadMagnet:1 withOriginalLayout:v25 withIcc:v67 newConnectedInfo:&v92];
              v24 = v92;
              [v23 setHeadMagnet:v29];

LABEL_11:
            }

            v30 = v18;
            if (v18)
            {
              v31 = v30;
              v32 = [v17 connectionLinePathSource];
              v33 = [v32 tailMagnet];
              if (!v33)
              {
                goto LABEL_16;
              }

              v34 = v33;
              v35 = [v70 containsObject:v31];

              if (v35)
              {

                v32 = [v67 layoutForInfo:v31];
                v91 = 0;
                v36 = [a1 p_getUpdatedMagnetForClineItem:v17 forHeadMagnet:0 withOriginalLayout:v32 withIcc:v67 newConnectedInfo:&v91];
                v31 = v91;
                [v23 setTailMagnet:v36];

LABEL_16:
              }
            }

            else
            {
              v31 = 0;
            }

            v37 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v17 connectedItem:v24 chirality:1 pathSource:v23];
            [v79 addObject:v37];
            v38 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v17 connectedItem:v31 chirality:0 pathSource:v23];
            [v79 addObject:v38];

            v11 = v68;
            v14 = v69;
            v13 = v71;
          }
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
    }

    while (v13);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v39 = v70;
  v40 = [v39 countByEnumeratingWithState:&v87 objects:v99 count:16];
  v77 = v39;
  if (v40)
  {
    v41 = v40;
    v42 = *v88;
    v73 = *v88;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v88 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v87 + 1) + 8 * i);
        if ([v44 isMemberOfClass:objc_opt_class()])
        {
          v45 = v44;
          v46 = [v45 getConnectedFromWithBoardItemOwner:v11];
          v47 = [v45 getConnectedToWithBoardItemOwner:v11];
          if (v46 | v47)
          {
            v86 = 0;
            v48 = [a1 p_commandsForUpdateConnectionLineInfoGeometry:v45 withBoardItemOwner:v11 withNewPathSource:&v86];
            v49 = v86;
            [v79 addObjectsFromArray:v48];
            v50 = objc_opt_class();
            v51 = sub_100014370(v50, v49);
            if (!v46 || ([v39 containsObject:v46] & 1) == 0)
            {
              [v51 setTailMagnet:0];
              v52 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v45 connectedItem:0 chirality:0 pathSource:v51];
              [v79 addObject:v52];

              v39 = v77;
            }

            if (!v47 || ([v39 containsObject:v47] & 1) == 0)
            {
              [v51 setHeadMagnet:0];
              v53 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v45 connectedItem:0 chirality:1 pathSource:v51];
              [v79 addObject:v53];

              v39 = v77;
            }

            v42 = v73;
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v87 objects:v99 count:16];
    }

    while (v41);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obja = obj;
  v54 = [obja countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v83;
    do
    {
      for (j = 0; j != v55; j = j + 1)
      {
        if (*v83 != v56)
        {
          objc_enumerationMutation(obja);
        }

        v58 = *(*(&v82 + 1) + 8 * j);
        if ([v58 isMemberOfClass:objc_opt_class()])
        {
          v59 = v58;
          v80 = 0;
          v81 = 0;
          [a1 p_computeLayoutInfoGeometry:&v81 andPathSource:&v80 forConnectionLine:v59 withBoardItemOwner:v11];
          v60 = v81;
          v61 = v80;
          v62 = [v59 getConnectedFromWithBoardItemOwner:v11];
          v63 = [v59 getConnectedToWithBoardItemOwner:v11];
          if ((!v62 || [v39 containsObject:v62]) && (!v63 || objc_msgSend(v39, "containsObject:", v63)))
          {
            v64 = [v59 commandToAnchorToTableWith:v60];
            if (v64)
            {
              [v79 addObject:v64];
            }

            v39 = v77;
          }
        }
      }

      v55 = [obja countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v55);
  }

  return v79;
}

+ (id)p_getUpdatedMagnetForClineItem:(id)a3 forHeadMagnet:(BOOL)a4 withOriginalLayout:(id)a5 withIcc:(id)a6 newConnectedInfo:(id *)a7
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101356C28();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101356C3C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101356CEC();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v14);
    }

    v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLConnectionLineAdjustmentHelper p_getUpdatedMagnetForClineItem:forHeadMagnet:withOriginalLayout:withIcc:newConnectedInfo:]");
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLConnectionLineAdjustmentHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:152 isFatal:0 description:"invalid nil value for '%{public}s'", "originalLayout"];
  }

  v17 = [v11 connectionLinePathSource];
  v18 = v17;
  if (v10)
  {
    [v17 headMagnet];
  }

  else
  {
    [v17 tailMagnet];
  }
  v19 = ;
  [v19 magnetNormalizedPosition];
  v41 = v21;
  v42 = v20;

  v22 = [v12 pureGeometry];
  v23 = v22;
  if (v22)
  {
    [v22 fullTransform];
    v24 = v47;
    v25 = v48;
    v26 = v49;
  }

  else
  {
    v26 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  v43 = vaddq_f64(v26, vmlaq_n_f64(vmulq_n_f64(v25, v41), v24, v42));

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100340258;
  v44[3] = &unk_1018572B8;
  v27 = v12;
  v45 = v27;
  v28 = v11;
  v46 = v28;
  v29 = [v13 hitRep:v44 passingTest:?];
  v30 = [v29 repForSelecting];
  v31 = [v30 layout];

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = [v31 info];
    v34 = sub_100014370(v32, v33);

    [v18 getNewNormalizedPositionForMagnet:v10 withPreviousLayout:v27 onNewLayout:v31];
    v37 = -[CRLConnectionLineMagnet initWithType:normalizedPosition:]([CRLConnectionLineMagnet alloc], "initWithType:normalizedPosition:", [a1 p_getUpdatedMagnetTypeWithPosition:v31 inLayout:*&v43], v35, v36);
  }

  else
  {
    v34 = 0;
    v37 = 0;
  }

  v38 = v34;
  *a7 = v34;

  return v37;
}

+ (unint64_t)p_getUpdatedMagnetTypeWithPosition:(CGPoint)a3 inLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = 2;
  v8 = 7;
  do
  {
    [a4 getCardinalPositionFromType:v7];
    if (sub_100120090(v9, v10, x, y) < 10.0)
    {
      v8 = v7;
    }

    ++v7;
  }

  while (v7 != 6);
  return v8;
}

+ (id)p_commandsForUpdateConnectionLineInfoGeometry:(id)a3 withBoardItemOwner:(id)a4 withNewPathSource:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[NSMutableArray array];
  v17 = 0;
  v18 = 0;
  [a1 p_computeLayoutInfoGeometry:&v18 andPathSource:&v17 forConnectionLine:v9 withBoardItemOwner:v8];

  v11 = v18;
  v12 = v17;
  v13 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v9 geometry:v11];
  [v10 addObject:v13];
  v14 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:v9 pathSource:v12];

  [v10 addObject:v14];
  v15 = v12;

  *a5 = v12;

  return v10;
}

+ (void)transferLaidOutInfoGeometryAndPathSourceFrom:(id)a3 to:(id)a4 withBoardItemOwner:(id)a5
{
  v11 = 0;
  v12 = 0;
  v8 = a4;
  [a1 p_computeLayoutInfoGeometry:&v12 andPathSource:&v11 forConnectionLine:a3 withBoardItemOwner:a5];
  v9 = v12;
  v10 = v11;
  [v8 setGeometry:v9];
  [v8 setPathSource:v10];
}

+ (void)p_computeLayoutInfoGeometry:(id *)a3 andPathSource:(id *)a4 forConnectionLine:(id)a5 withBoardItemOwner:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [v9 getConnectedFromWithBoardItemOwner:v10];
  v12 = [v9 getConnectedToWithBoardItemOwner:v10];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100340884;
  v40 = sub_100340894;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100340884;
  v34 = sub_100340894;
  v35 = 0;
  if (v11 | v12)
  {
    v25 = a4;
    v17 = [NSMutableArray arrayWithObject:v9];
    v16 = v17;
    if (v11)
    {
      [v17 addObject:v11];
    }

    if (v12)
    {
      [v16 addObject:v12];
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10034089C;
    v26[3] = &unk_101857320;
    v18 = v9;
    v27 = v18;
    v28 = &v36;
    v29 = &v30;
    [CRLCanvasLayoutController temporaryLayoutControllerForInfos:v16 useInBlock:v26];
    v19 = objc_opt_class();
    v20 = sub_100014370(v19, v31[5]);
    v21 = [v18 connectionLinePathSource];
    v22 = [v21 headMagnet];
    [v20 setHeadMagnet:v22];

    v23 = [v18 connectionLinePathSource];
    v24 = [v23 tailMagnet];
    [v20 setTailMagnet:v24];

    a4 = v25;
  }

  else
  {
    v13 = [v9 geometry];
    v14 = v37[5];
    v37[5] = v13;

    v15 = [v9 pathSource];
    v16 = v31[5];
    v31[5] = v15;
  }

  if (a3)
  {
    *a3 = v37[5];
  }

  if (a4)
  {
    *a4 = v31[5];
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
}

+ (id)commandForUpdatingMagnetAfterUngroupingForCline:(id)a3 withPosition:(id)a4 forMagnet:(BOOL)a5 withIcc:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_opt_class();
  v14 = [v10 layoutForInfo:v9];
  v15 = sub_100014370(v13, v14);

  if (v7)
  {
    v16 = 11;
  }

  else
  {
    v16 = 10;
  }

  [v11 CGPointValue];
  v43 = v18;
  v44 = v17;

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100340E40;
  v48[3] = &unk_101857348;
  v19 = v15;
  v49 = v19;
  v50 = v16;
  v20 = [v10 hitRep:v48 passingTest:{v44, v43}];

  if (v20)
  {
    v21 = [v20 repForSelecting];
    if (v21)
    {
      v22 = v21;
      v23 = [v20 repForSelecting];
      v24 = [v23 layout];

      if (v24)
      {
        v25 = [v20 repForSelecting];
        v26 = [v25 layout];

        if (v26)
        {
          [v26 pureTransformInRoot];
        }

        else
        {
          memset(&v46, 0, sizeof(v46));
        }

        CGAffineTransformInvert(&v47, &v46);
        v45 = vaddq_f64(*&v47.tx, vmlaq_n_f64(vmulq_n_f64(*&v47.c, v43), *&v47.a, v44));
        v27 = [v26 pureGeometry];
        [v27 size];
        v28 = sub_10011ECB4();
        v31 = sub_100121720(v45.f64[0], v45.f64[1], v28, v29, v30);
        v33 = v32;

        v34 = [v9 connectionLinePathSource];
        v35 = [v34 copy];

        v36 = [[CRLConnectionLineMagnet alloc] initWithType:7 normalizedPosition:v31, v33];
        if (v7)
        {
          [v35 setHeadMagnet:v36];
          v37 = 1;
        }

        else
        {
          [v35 setTailMagnet:v36];
          v37 = 0;
        }

        v38 = objc_opt_class();
        v39 = [v26 info];
        v40 = sub_100014370(v38, v39);

        v41 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:v9 connectedItem:v40 chirality:v37 pathSource:v35];
        [v12 addObject:v41];
      }
    }
  }

  return v12;
}

+ (void)getMagnetUnscaledPositionsFromInfos:(id)a3 withAffectedInfos:(id)a4 withClineHeadMagnets:(id *)a5 withClineTailMagnets:(id *)a6 withIcc:(id)a7
{
  v40 = a5;
  v9 = a3;
  v10 = a4;
  obj = v9;
  v45 = a7;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    v42 = *v47;
    do
    {
      v14 = 0;
      v43 = v12;
      do
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v46 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_opt_class();
          v17 = sub_100014370(v16, v15);
          v18 = [v17 connectionLinePathSource];
          v19 = [v10 containsObject:v17];
          v20 = [v45 editingCoordinator];
          v21 = [v20 mainBoard];
          v22 = [v17 getConnectedToWithBoardItemOwner:v21];

          v23 = [v10 containsObject:v22];
          v24 = [v45 editingCoordinator];
          v25 = [v24 mainBoard];
          v26 = [v17 getConnectedFromWithBoardItemOwner:v25];

          v27 = [v10 containsObject:v26];
          v28 = v27;
          if (v19)
          {
            if (v22)
            {
              v29 = v23;
            }

            else
            {
              v29 = 1;
            }

            if (((v29 | v27) & 1) != 0 || !v26)
            {
              goto LABEL_19;
            }
          }

          else if (v23 & v27)
          {
LABEL_19:

            v13 = v42;
            v12 = v43;
            goto LABEL_20;
          }

          v30 = [v18 headMagnet];
          v31 = (v30 != 0) & v23;

          if (v31 == 1)
          {
            v32 = *v40;
            v33 = [v18 headMagnet];
            v34 = [CRLConnectionLineAdjustmentHelper p_getMagnetUnscaledPositionValueForMagnet:v33 withConnectedItem:v22 withIcc:v45];
            [v32 setObject:v34 forKey:v17];
          }

          v35 = [v18 tailMagnet];
          v36 = (v35 != 0) & v28;

          if (v36 == 1)
          {
            v37 = *a6;
            v38 = [v18 tailMagnet];
            v39 = [CRLConnectionLineAdjustmentHelper p_getMagnetUnscaledPositionValueForMagnet:v38 withConnectedItem:v26 withIcc:v45];
            [v37 setObject:v39 forKey:v17];
          }

          goto LABEL_19;
        }

LABEL_20:
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v12);
  }
}

+ (id)p_getMagnetUnscaledPositionValueForMagnet:(id)a3 withConnectedItem:(id)a4 withIcc:(id)a5
{
  v7 = a3;
  v8 = [a5 layoutForInfo:a4];
  [v7 magnetNormalizedPosition];
  v18 = v10;
  v19 = v9;

  v11 = [v8 pureGeometry];
  v12 = v11;
  if (v11)
  {
    [v11 fullTransform];
    v13 = v21;
    v14 = v22;
    v15 = v23;
  }

  else
  {
    v15 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v20 = vaddq_f64(v15, vmlaq_n_f64(vmulq_n_f64(v14, *&v18), v13, *&v19));

  v16 = [NSValue valueWithCGPoint:*&v20];

  return v16;
}

@end