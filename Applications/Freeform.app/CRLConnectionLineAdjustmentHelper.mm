@interface CRLConnectionLineAdjustmentHelper
+ (id)commandForUpdatingMagnetAfterUngroupingForCline:(id)cline withPosition:(id)position forMagnet:(BOOL)magnet withIcc:(id)icc;
+ (id)commandsForAdjustingConnectionLines:(id)lines infosToRemove:(id)remove editingCoordinator:(id)coordinator withIcc:(id)icc;
+ (id)infosForAdjustingConnectionLinesAfterRemove:(id)remove;
+ (id)p_commandsForUpdateConnectionLineInfoGeometry:(id)geometry withBoardItemOwner:(id)owner withNewPathSource:(id *)source;
+ (id)p_getMagnetUnscaledPositionValueForMagnet:(id)magnet withConnectedItem:(id)item withIcc:(id)icc;
+ (id)p_getUpdatedMagnetForClineItem:(id)item forHeadMagnet:(BOOL)magnet withOriginalLayout:(id)layout withIcc:(id)icc newConnectedInfo:(id *)info;
+ (unint64_t)p_getUpdatedMagnetTypeWithPosition:(CGPoint)position inLayout:(id)layout;
+ (void)getMagnetUnscaledPositionsFromInfos:(id)infos withAffectedInfos:(id)affectedInfos withClineHeadMagnets:(id *)magnets withClineTailMagnets:(id *)tailMagnets withIcc:(id)icc;
+ (void)p_computeLayoutInfoGeometry:(id *)geometry andPathSource:(id *)source forConnectionLine:(id)line withBoardItemOwner:(id)owner;
+ (void)transferLaidOutInfoGeometryAndPathSourceFrom:(id)from to:(id)to withBoardItemOwner:(id)owner;
@end

@implementation CRLConnectionLineAdjustmentHelper

+ (id)infosForAdjustingConnectionLinesAfterRemove:(id)remove
{
  removeCopy = remove;
  v4 = +[NSMutableSet set];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = removeCopy;
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
        parentInfo = [v9 parentInfo];
        v12 = sub_100014370(v10, parentInfo);

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

        childInfos = [*(*(&v30 + 1) + 8 * i) childInfos];
        [v20 addObjectsFromArray:childInfos];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v23);
  }

  v27 = [v20 crl_setBySubtractingSet:obj];

  return v27;
}

+ (id)commandsForAdjustingConnectionLines:(id)lines infosToRemove:(id)remove editingCoordinator:(id)coordinator withIcc:(id)icc
{
  linesCopy = lines;
  removeCopy = remove;
  coordinatorCopy = coordinator;
  iccCopy = icc;
  v79 = +[NSMutableArray array];
  v66 = coordinatorCopy;
  mainBoard = [coordinatorCopy mainBoard];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = linesCopy;
  v12 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v95;
    v68 = mainBoard;
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
          v18 = [v17 getConnectedFromWithBoardItemOwner:mainBoard];
          v19 = [v17 getConnectedToWithBoardItemOwner:mainBoard];
          if (v18 | v19)
          {
            v93 = 0;
            v20 = [self p_commandsForUpdateConnectionLineInfoGeometry:v17 withBoardItemOwner:mainBoard withNewPathSource:&v93];
            v21 = v93;
            v76 = v20;
            [v79 addObjectsFromArray:v20];
            v22 = objc_opt_class();
            v72 = v21;
            v23 = sub_100014370(v22, v21);
            v24 = v19;
            connectionLinePathSource = [v17 connectionLinePathSource];
            headMagnet = [connectionLinePathSource headMagnet];
            if (!headMagnet)
            {
              goto LABEL_11;
            }

            v27 = headMagnet;
            v28 = [removeCopy containsObject:v24];

            if (v28)
            {

              connectionLinePathSource = [iccCopy layoutForInfo:v24];
              v92 = 0;
              v29 = [self p_getUpdatedMagnetForClineItem:v17 forHeadMagnet:1 withOriginalLayout:connectionLinePathSource withIcc:iccCopy newConnectedInfo:&v92];
              v24 = v92;
              [v23 setHeadMagnet:v29];

LABEL_11:
            }

            v30 = v18;
            if (v18)
            {
              v31 = v30;
              connectionLinePathSource2 = [v17 connectionLinePathSource];
              tailMagnet = [connectionLinePathSource2 tailMagnet];
              if (!tailMagnet)
              {
                goto LABEL_16;
              }

              v34 = tailMagnet;
              v35 = [removeCopy containsObject:v31];

              if (v35)
              {

                connectionLinePathSource2 = [iccCopy layoutForInfo:v31];
                v91 = 0;
                v36 = [self p_getUpdatedMagnetForClineItem:v17 forHeadMagnet:0 withOriginalLayout:connectionLinePathSource2 withIcc:iccCopy newConnectedInfo:&v91];
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

            mainBoard = v68;
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
  v39 = removeCopy;
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
          v46 = [v45 getConnectedFromWithBoardItemOwner:mainBoard];
          v47 = [v45 getConnectedToWithBoardItemOwner:mainBoard];
          if (v46 | v47)
          {
            v86 = 0;
            v48 = [self p_commandsForUpdateConnectionLineInfoGeometry:v45 withBoardItemOwner:mainBoard withNewPathSource:&v86];
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
          [self p_computeLayoutInfoGeometry:&v81 andPathSource:&v80 forConnectionLine:v59 withBoardItemOwner:mainBoard];
          v60 = v81;
          v61 = v80;
          v62 = [v59 getConnectedFromWithBoardItemOwner:mainBoard];
          v63 = [v59 getConnectedToWithBoardItemOwner:mainBoard];
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

+ (id)p_getUpdatedMagnetForClineItem:(id)item forHeadMagnet:(BOOL)magnet withOriginalLayout:(id)layout withIcc:(id)icc newConnectedInfo:(id *)info
{
  magnetCopy = magnet;
  itemCopy = item;
  layoutCopy = layout;
  iccCopy = icc;
  if (!layoutCopy)
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

  connectionLinePathSource = [itemCopy connectionLinePathSource];
  v18 = connectionLinePathSource;
  if (magnetCopy)
  {
    [connectionLinePathSource headMagnet];
  }

  else
  {
    [connectionLinePathSource tailMagnet];
  }
  v19 = ;
  [v19 magnetNormalizedPosition];
  v41 = v21;
  v42 = v20;

  pureGeometry = [layoutCopy pureGeometry];
  v23 = pureGeometry;
  if (pureGeometry)
  {
    [pureGeometry fullTransform];
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
  v27 = layoutCopy;
  v45 = v27;
  v28 = itemCopy;
  v46 = v28;
  v29 = [iccCopy hitRep:v44 passingTest:?];
  repForSelecting = [v29 repForSelecting];
  layout = [repForSelecting layout];

  if (layout)
  {
    v32 = objc_opt_class();
    info = [layout info];
    v34 = sub_100014370(v32, info);

    [v18 getNewNormalizedPositionForMagnet:magnetCopy withPreviousLayout:v27 onNewLayout:layout];
    v37 = -[CRLConnectionLineMagnet initWithType:normalizedPosition:]([CRLConnectionLineMagnet alloc], "initWithType:normalizedPosition:", [self p_getUpdatedMagnetTypeWithPosition:layout inLayout:*&v43], v35, v36);
  }

  else
  {
    v34 = 0;
    v37 = 0;
  }

  v38 = v34;
  *info = v34;

  return v37;
}

+ (unint64_t)p_getUpdatedMagnetTypeWithPosition:(CGPoint)position inLayout:(id)layout
{
  y = position.y;
  x = position.x;
  v7 = 2;
  v8 = 7;
  do
  {
    [layout getCardinalPositionFromType:v7];
    if (sub_100120090(v9, v10, x, y) < 10.0)
    {
      v8 = v7;
    }

    ++v7;
  }

  while (v7 != 6);
  return v8;
}

+ (id)p_commandsForUpdateConnectionLineInfoGeometry:(id)geometry withBoardItemOwner:(id)owner withNewPathSource:(id *)source
{
  ownerCopy = owner;
  geometryCopy = geometry;
  v10 = +[NSMutableArray array];
  v17 = 0;
  v18 = 0;
  [self p_computeLayoutInfoGeometry:&v18 andPathSource:&v17 forConnectionLine:geometryCopy withBoardItemOwner:ownerCopy];

  v11 = v18;
  v12 = v17;
  v13 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:geometryCopy geometry:v11];
  [v10 addObject:v13];
  v14 = [[_TtC8Freeform23CRLCommandSetPathSource alloc] initWithShapeItem:geometryCopy pathSource:v12];

  [v10 addObject:v14];
  v15 = v12;

  *source = v12;

  return v10;
}

+ (void)transferLaidOutInfoGeometryAndPathSourceFrom:(id)from to:(id)to withBoardItemOwner:(id)owner
{
  v11 = 0;
  v12 = 0;
  toCopy = to;
  [self p_computeLayoutInfoGeometry:&v12 andPathSource:&v11 forConnectionLine:from withBoardItemOwner:owner];
  v9 = v12;
  v10 = v11;
  [toCopy setGeometry:v9];
  [toCopy setPathSource:v10];
}

+ (void)p_computeLayoutInfoGeometry:(id *)geometry andPathSource:(id *)source forConnectionLine:(id)line withBoardItemOwner:(id)owner
{
  lineCopy = line;
  ownerCopy = owner;
  v11 = [lineCopy getConnectedFromWithBoardItemOwner:ownerCopy];
  v12 = [lineCopy getConnectedToWithBoardItemOwner:ownerCopy];
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
    sourceCopy = source;
    v17 = [NSMutableArray arrayWithObject:lineCopy];
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
    v18 = lineCopy;
    v27 = v18;
    v28 = &v36;
    v29 = &v30;
    [CRLCanvasLayoutController temporaryLayoutControllerForInfos:v16 useInBlock:v26];
    v19 = objc_opt_class();
    v20 = sub_100014370(v19, v31[5]);
    connectionLinePathSource = [v18 connectionLinePathSource];
    headMagnet = [connectionLinePathSource headMagnet];
    [v20 setHeadMagnet:headMagnet];

    connectionLinePathSource2 = [v18 connectionLinePathSource];
    tailMagnet = [connectionLinePathSource2 tailMagnet];
    [v20 setTailMagnet:tailMagnet];

    source = sourceCopy;
  }

  else
  {
    geometry = [lineCopy geometry];
    v14 = v37[5];
    v37[5] = geometry;

    pathSource = [lineCopy pathSource];
    v16 = v31[5];
    v31[5] = pathSource;
  }

  if (geometry)
  {
    *geometry = v37[5];
  }

  if (source)
  {
    *source = v31[5];
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
}

+ (id)commandForUpdatingMagnetAfterUngroupingForCline:(id)cline withPosition:(id)position forMagnet:(BOOL)magnet withIcc:(id)icc
{
  magnetCopy = magnet;
  clineCopy = cline;
  iccCopy = icc;
  positionCopy = position;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_opt_class();
  v14 = [iccCopy layoutForInfo:clineCopy];
  v15 = sub_100014370(v13, v14);

  if (magnetCopy)
  {
    v16 = 11;
  }

  else
  {
    v16 = 10;
  }

  [positionCopy CGPointValue];
  v43 = v18;
  v44 = v17;

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100340E40;
  v48[3] = &unk_101857348;
  v19 = v15;
  v49 = v19;
  v50 = v16;
  v20 = [iccCopy hitRep:v48 passingTest:{v44, v43}];

  if (v20)
  {
    repForSelecting = [v20 repForSelecting];
    if (repForSelecting)
    {
      v22 = repForSelecting;
      repForSelecting2 = [v20 repForSelecting];
      layout = [repForSelecting2 layout];

      if (layout)
      {
        repForSelecting3 = [v20 repForSelecting];
        layout2 = [repForSelecting3 layout];

        if (layout2)
        {
          [layout2 pureTransformInRoot];
        }

        else
        {
          memset(&v46, 0, sizeof(v46));
        }

        CGAffineTransformInvert(&v47, &v46);
        v45 = vaddq_f64(*&v47.tx, vmlaq_n_f64(vmulq_n_f64(*&v47.c, v43), *&v47.a, v44));
        pureGeometry = [layout2 pureGeometry];
        [pureGeometry size];
        v28 = sub_10011ECB4();
        v31 = sub_100121720(v45.f64[0], v45.f64[1], v28, v29, v30);
        v33 = v32;

        connectionLinePathSource = [clineCopy connectionLinePathSource];
        v35 = [connectionLinePathSource copy];

        v36 = [[CRLConnectionLineMagnet alloc] initWithType:7 normalizedPosition:v31, v33];
        if (magnetCopy)
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
        info = [layout2 info];
        v40 = sub_100014370(v38, info);

        v41 = [[_TtC8Freeform37CRLCommandSetConnectionLineConnection alloc] initWithConnectionLine:clineCopy connectedItem:v40 chirality:v37 pathSource:v35];
        [v12 addObject:v41];
      }
    }
  }

  return v12;
}

+ (void)getMagnetUnscaledPositionsFromInfos:(id)infos withAffectedInfos:(id)affectedInfos withClineHeadMagnets:(id *)magnets withClineTailMagnets:(id *)tailMagnets withIcc:(id)icc
{
  magnetsCopy = magnets;
  infosCopy = infos;
  affectedInfosCopy = affectedInfos;
  obj = infosCopy;
  iccCopy = icc;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = [infosCopy countByEnumeratingWithState:&v46 objects:v50 count:16];
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
          connectionLinePathSource = [v17 connectionLinePathSource];
          v19 = [affectedInfosCopy containsObject:v17];
          editingCoordinator = [iccCopy editingCoordinator];
          mainBoard = [editingCoordinator mainBoard];
          v22 = [v17 getConnectedToWithBoardItemOwner:mainBoard];

          v23 = [affectedInfosCopy containsObject:v22];
          editingCoordinator2 = [iccCopy editingCoordinator];
          mainBoard2 = [editingCoordinator2 mainBoard];
          v26 = [v17 getConnectedFromWithBoardItemOwner:mainBoard2];

          v27 = [affectedInfosCopy containsObject:v26];
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

          headMagnet = [connectionLinePathSource headMagnet];
          v31 = (headMagnet != 0) & v23;

          if (v31 == 1)
          {
            v32 = *magnetsCopy;
            headMagnet2 = [connectionLinePathSource headMagnet];
            v34 = [CRLConnectionLineAdjustmentHelper p_getMagnetUnscaledPositionValueForMagnet:headMagnet2 withConnectedItem:v22 withIcc:iccCopy];
            [v32 setObject:v34 forKey:v17];
          }

          tailMagnet = [connectionLinePathSource tailMagnet];
          v36 = (tailMagnet != 0) & v28;

          if (v36 == 1)
          {
            v37 = *tailMagnets;
            tailMagnet2 = [connectionLinePathSource tailMagnet];
            v39 = [CRLConnectionLineAdjustmentHelper p_getMagnetUnscaledPositionValueForMagnet:tailMagnet2 withConnectedItem:v26 withIcc:iccCopy];
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

+ (id)p_getMagnetUnscaledPositionValueForMagnet:(id)magnet withConnectedItem:(id)item withIcc:(id)icc
{
  magnetCopy = magnet;
  v8 = [icc layoutForInfo:item];
  [magnetCopy magnetNormalizedPosition];
  v18 = v10;
  v19 = v9;

  pureGeometry = [v8 pureGeometry];
  v12 = pureGeometry;
  if (pureGeometry)
  {
    [pureGeometry fullTransform];
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