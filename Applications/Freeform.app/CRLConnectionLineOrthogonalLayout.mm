@interface CRLConnectionLineOrthogonalLayout
- (BOOL)p_connectionLineComingFromSideOfOriginObject:(id)object;
- (BOOL)p_tailComingFromNorth;
- (BOOL)p_tailComingFromSouth;
- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)std :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:;
- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB;
- (CGPoint)getControlKnobPosition:(unint64_t)position;
- (CGPoint)outsetFromMagnetPosition:(CGPoint)position withRect:(CGRect)rect controlPoint:(CGPoint)point distance:(double)distance;
- (CGPoint)p_getControlKnobPositionToMakeSingleCornerIfPossible:(CGPoint)possible pointA:(CGPoint)a pointB:(CGPoint)b;
- (CGPoint)p_getControlKnobPositionToSnapToAnyExistingSetControlKnobs:(CGPoint)knobs pointA:(CGPoint)a pointB:(CGPoint)b;
- (CGPoint)p_getExistingUserSetControlPointToMatch;
- (CGPoint)p_getLineEndPointAdjustedToCardinalForClineLayout:(id)layout withHead:(CGPoint)head withTail:(CGPoint)tail forLineEnd:(unint64_t)end;
- (CGPoint)p_getOverriddenControlPointWithPointA:(CGPoint)a pointB:(CGPoint)b;
- (CGRect)orthoRectOfLayout:(id)layout outset:(double)outset;
- (CRLConnectionLineOrthogonalLayout)initWithInfo:(id)info;
- (double)p_getAdjustedShapeOutset;
- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3] clipPath:(BOOL)path;
- (id)getClippedHeadPortion;
- (id)getClippedTailPortion;
- (void)addEndpointSnapsToXs:(void *)xs andYs:(void *)ys;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker;
- (void)setUserDidSetControlPoint:(BOOL)point;
@end

@implementation CRLConnectionLineOrthogonalLayout

- (CRLConnectionLineOrthogonalLayout)initWithInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = CRLConnectionLineOrthogonalLayout;
  result = [(CRLConnectionLineAbstractLayout *)&v4 initWithInfo:info];
  if (result)
  {
    *(&result->super.mTailMagnetCanvasPosition + 3) = xmmword_1014629F0;
    *(&result->mSnappedUserSetControlPoint + 3) = xmmword_1014629F0;
    *(&result->mOverriddenControlPoint + 3) = xmmword_1014629F0;
    *(&result->mLastPtA + 3) = xmmword_1014629F0;
  }

  return result;
}

- (void)setUserDidSetControlPoint:(BOOL)point
{
  v4.receiver = self;
  v4.super_class = CRLConnectionLineOrthogonalLayout;
  [(CRLConnectionLineAbstractLayout *)&v4 setUserDidSetControlPoint:point];
  *(&self->super.mTailMagnetCanvasPosition + 3) = xmmword_1014629F0;
}

- (id)getClippedHeadPortion
{
  connectedTo = [(CRLConnectionLineAbstractLayout *)self connectedTo];

  if (!connectedTo)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101352170();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101352184();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352234();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v6, v37, v4);
    }

    v7 = [NSString stringWithUTF8String:"[CRLConnectionLineOrthogonalLayout getClippedHeadPortion]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineOrthogonalLayout.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:179 isFatal:0 description:"invalid nil value for '%{public}s'", "self.connectedTo"];
  }

  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  [pureGeometry size];
  if (v10 == 0.0 || fabs(v10) < 0.00999999978)
  {
    pureGeometry2 = [(CRLCanvasLayout *)self pureGeometry];
    [pureGeometry2 size];
    v13 = fabs(v12) >= 0.00999999978 && v12 != 0.0;

    if (!v13)
    {
      v21 = 0;
      goto LABEL_28;
    }
  }

  else
  {
  }

  memset(&v36, 0, sizeof(v36));
  pureGeometry3 = [(CRLCanvasLayout *)self pureGeometry];
  v15 = pureGeometry3;
  if (pureGeometry3)
  {
    [pureGeometry3 transform];
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
  }

  parent = [(CRLCanvasAbstractLayout *)self parent];
  v17 = parent == 0;

  if (!v17)
  {
    parent2 = [(CRLCanvasAbstractLayout *)self parent];
    geometryInParent = [parent2 geometryInParent];
    v20 = geometryInParent;
    if (geometryInParent)
    {
      [geometryInParent transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    t2 = v36;
    CGAffineTransformConcat(&v35, &t1, &t2);
    v36 = v35;
  }

  [(CRLShapeLayout *)self headPoint];
  v23 = v22;
  v25 = v24;
  v26 = *&v36.a;
  v27 = *&v36.c;
  v28 = *&v36.tx;
  connectedTo2 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  [connectedTo2 getCardinalPositionWithParentTransformFromType:1];
  v21 = [CRLBezierPath bezierPathWithStart:*&v28 + v25 * *&v27 + *&v26 * v23 end:*(&v28 + 1) + v25 * *(&v27 + 1) + *(&v26 + 1) * v23, v30, v31];

LABEL_28:

  return v21;
}

- (id)getClippedTailPortion
{
  connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];

  if (!connectedFrom)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135225C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101352270();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101352320();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v6, v37, v4);
    }

    v7 = [NSString stringWithUTF8String:"[CRLConnectionLineOrthogonalLayout getClippedTailPortion]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLConnectionLineOrthogonalLayout.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:192 isFatal:0 description:"invalid nil value for '%{public}s'", "self.connectedFrom"];
  }

  pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
  [pureGeometry size];
  if (v10 == 0.0 || fabs(v10) < 0.00999999978)
  {
    pureGeometry2 = [(CRLCanvasLayout *)self pureGeometry];
    [pureGeometry2 size];
    v13 = fabs(v12) >= 0.00999999978 && v12 != 0.0;

    if (!v13)
    {
      v21 = 0;
      goto LABEL_28;
    }
  }

  else
  {
  }

  memset(&v36, 0, sizeof(v36));
  pureGeometry3 = [(CRLCanvasLayout *)self pureGeometry];
  v15 = pureGeometry3;
  if (pureGeometry3)
  {
    [pureGeometry3 transform];
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
  }

  parent = [(CRLCanvasAbstractLayout *)self parent];
  v17 = parent == 0;

  if (!v17)
  {
    parent2 = [(CRLCanvasAbstractLayout *)self parent];
    geometryInParent = [parent2 geometryInParent];
    v20 = geometryInParent;
    if (geometryInParent)
    {
      [geometryInParent transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    t2 = v36;
    CGAffineTransformConcat(&v35, &t1, &t2);
    v36 = v35;
  }

  [(CRLShapeLayout *)self tailPoint];
  v23 = v22;
  v25 = v24;
  v26 = *&v36.a;
  v27 = *&v36.c;
  v28 = *&v36.tx;
  connectedFrom2 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedFrom2 getCardinalPositionWithParentTransformFromType:1];
  v21 = [CRLBezierPath bezierPathWithStart:*&v28 + v25 * *&v27 + *&v26 * v23 end:*(&v28 + 1) + v25 * *(&v27 + 1) + *(&v26 + 1) * v23, v30, v31];

LABEL_28:

  return v21;
}

- (CGRect)orthoRectOfLayout:(id)layout outset:(double)outset
{
  layoutCopy = layout;
  centerForConnecting = [layoutCopy centerForConnecting];
  v9 = v8;
  v11 = v10;
  v45 = 0;
  v46 = &v45;
  v47 = 0x5012000000;
  v48 = sub_10030D2A8;
  v49 = nullsub_44;
  v50 = &unk_1016A8115;
  v56 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(centerForConnecting, v12);
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v54 = v16;
  [layoutCopy boundsForStandardKnobs];
  if (v17 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 1;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v33 = sub_10030D2B8;
  v34 = &unk_101855600;
  v39 = v9;
  v40 = v11;
  v41 = outset + 10.0 + v19;
  selfCopy = self;
  v20 = layoutCopy;
  v21 = 0;
  outsetCopy = outset;
  v36 = v20;
  v37 = v43;
  v38 = &v45;
  do
  {
    v22 = qword_101464BE0[v21];
    v55 = 0;
    (v33)(v32, v22, &v55);
    if (v55)
    {
      break;
    }
  }

  while (v21++ != 3);
  v24 = v46[6];
  v25 = v46[7];
  v26 = v46[8];
  v27 = v46[9];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(&v45, 8);

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (id)createConnectedPathFrom:(id)from to:(id)to withControlPoints:(CGPoint)points[3] clipPath:(BOOL)path
{
  fromCopy = from;
  toCopy = to;
  for (i = 0; i != 6; i += 2)
  {
    v12 = sub_10011F340(points[i / 2].x, points[i / 2].y, 10.0);
    v13 = &v138[i];
    *v13 = v12;
    *(v13 + 1) = v14;
  }

  if ([(CRLConnectionLineAbstractLayout *)self headMagnetType])
  {
    v98 = [(CRLConnectionLineAbstractLayout *)self headMagnetType]!= 1;
  }

  else
  {
    v98 = 0;
  }

  if ([(CRLConnectionLineAbstractLayout *)self tailMagnetType])
  {
    v99 = [(CRLConnectionLineAbstractLayout *)self tailMagnetType]!= 1;
  }

  else
  {
    v99 = 0;
  }

  v15 = *(&self->mLastPtA.x + 3);
  v16 = *(&self->mLastPtA.y + 3);
  if (sub_1001208AC(v15, v16))
  {
    [(CRLConnectionLineAbstractLayout *)self headMagnetCanvasPosition];
    v15 = v17;
    v16 = v18;
  }

  v19 = *(&self->mOverriddenControlPoint.x + 3);
  v20 = *(&self->mOverriddenControlPoint.y + 3);
  if (sub_1001208AC(v19, v20))
  {
    [(CRLConnectionLineAbstractLayout *)self tailMagnetCanvasPosition];
    v19 = v21;
    v20 = v22;
  }

  sub_1002BC97C(v15, v16, 10.0);
  v94 = v24;
  v95 = v23;
  sub_1002BC97C(v19, v20, 10.0);
  v96 = v26;
  v97 = v25;
  v136 = 0u;
  v137 = 0u;
  v27 = v138[0];
  sub_1002BC9A0(v138[0], v138[1], 0, 0, &v136);
  v134 = 0u;
  v135 = 0u;
  v28 = v141;
  sub_1002BC9A0(v141, v142, 0, 0, &v134);
  v125 = v136;
  v126 = v137;
  v29 = sub_1002BC970(v27);
  v31 = v30;
  v127 = v29;
  v128 = v30;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0;
  v116 = v134;
  v117 = v135;
  v32 = sub_1002BC970(v28);
  v34 = v33;
  v118 = v32;
  v119 = v33;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0;
  if (fromCopy)
  {
    [(CRLConnectionLineAbstractLayout *)self outsetFrom];
    [(CRLConnectionLineOrthogonalLayout *)self orthoRectOfLayout:fromCopy outset:?];
    [fromCopy centerForConnecting];
    sub_1002BC97C(v39, v40, 10.0);
    v29 = v41;
    v31 = v42;
    v127 = v41;
    v128 = v42;
    *&v100.a = v125;
    *&v100.c = v126;
    sub_10030D3EC(&v100, v41, v42, &v125);
    if (v126 >= 1 && *(&v126 + 1) >= 1)
    {
      *&v129 = 200;
    }
  }

  if (toCopy)
  {
    [(CRLConnectionLineAbstractLayout *)self outsetTo];
    [(CRLConnectionLineOrthogonalLayout *)self orthoRectOfLayout:toCopy outset:?];
    [toCopy centerForConnecting];
    sub_1002BC97C(v47, v48, 10.0);
    v32 = v49;
    v34 = v50;
    v118 = v49;
    v119 = v50;
    *&v100.a = v116;
    *&v100.c = v117;
    sub_10030D3EC(&v100, v49, v50, &v116);
    if (v117 >= 1 && *(&v117 + 1) >= 1)
    {
      *&v120 = 200;
    }
  }

  [(CRLConnectionLineAbstractLayout *)self i_setVisibleLine:1];
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  if (v99)
  {
    v100.a = *&v97;
    sub_10030DE08(&v113, &v100);
    v100.a = *&v96;
  }

  else
  {
    v100.a = v29;
    sub_10030DE08(&v113, &v100);
    v100.a = v31;
  }

  sub_10030DE08(&v110, &v100);
  if (v98)
  {
    v100.a = *&v95;
    sub_10030DE08(&v113, &v100);
    v100.a = *&v94;
  }

  else
  {
    v100.a = v32;
    sub_10030DE08(&v113, &v100);
    v100.a = v34;
  }

  sub_10030DE08(&v110, &v100);
  v51 = v139;
  v52 = v140;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  sub_100312EF0(&v107, v113, v114, (v114 - v113) >> 3);
  __p = 0;
  v105 = 0;
  v106 = 0;
  sub_100312EF0(&__p, v110, v111, (v111 - v110) >> 3);
  [(CRLConnectionLineOrthogonalLayout *)self axisSnapPoint:&v107 toXs:&__p toYs:v51 withThreshold:v52, 20.0];
  v54 = v53;
  v56 = v55;
  v139 = v53;
  v140 = v55;
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  v57 = sub_1002BC970(v54);
  v59 = v58;
  [(CRLConnectionLineOrthogonalLayout *)self p_getAdjustedShapeOutset];
  v61 = v60;
  v62 = v54 / 10.0;
  v63 = v56 / 10.0;
  if (!fromCopy)
  {
    v74 = 0;
    v72 = 0;
    if (toCopy)
    {
      goto LABEL_33;
    }

LABEL_35:
    v85 = 0;
    v83 = 0.0;
    goto LABEL_36;
  }

  pureGeometry = [fromCopy pureGeometry];
  [pureGeometry frame];
  [(CRLConnectionLineOrthogonalLayout *)self outsetFromMagnetPosition:v19 withRect:v20 controlPoint:v65 distance:v66, v67, v68, v62, v63, v61];
  sub_1002BC97C(v69, v70, 10.0);
  v72 = v71;
  v74 = v73;

  if (!toCopy)
  {
    goto LABEL_35;
  }

LABEL_33:
  pureGeometry2 = [toCopy pureGeometry];
  [pureGeometry2 frame];
  [(CRLConnectionLineOrthogonalLayout *)self outsetFromMagnetPosition:v15 withRect:v16 controlPoint:v76 distance:v77, v78, v79, v62, v63, v61];
  sub_1002BC97C(v80, v81, 10.0);
  v83 = v82;
  v85 = v84;

LABEL_36:
  x = points->x;
  y = points->y;
  v88 = points[1].x;
  v89 = points[1].y;
  if (sub_100120090(points->x, y, v88, v89) >= 10.0 && (v90 = points[2].x, v91 = points[2].y, sub_100120090(v90, v91, v88, v89) >= 10.0))
  {
    if (sub_100120090(x, y, v90, v91) >= 10.0)
    {
      LOBYTE(v100.a) = v98;
      BYTE1(v100.a) = v99;
      *(&v100.a + 2) = 0;
      HIWORD(v100.a) = 0;
      v100.b = v95;
      v100.c = v94;
      v100.d = v97;
      v100.tx = v96;
      v100.ty = v83;
      v101 = v85;
      v102 = v72;
      v103 = v74;
      sub_10030DEE8(&v125, v57, v59, &v116, &v100);
    }

    v92 = +[CRLBezierPath bezierPath];
    [v92 moveToPoint:{points->x, points->y}];
    [v92 lineToPoint:{points->x, points[1].y}];
    [v92 lineToPoint:{points[1].x, points[1].y}];
    [v92 lineToPoint:{points[1].x, points->y}];
    [v92 lineToPoint:{points[2].x, points[2].y}];
  }

  else
  {
    v92 = +[CRLBezierPath bezierPath];
    [v92 moveToPoint:{points->x, points->y}];
    [v92 lineToPoint:{points[2].x, points[2].y}];
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  return v92;
}

- (double)p_getAdjustedShapeOutset
{
  v3 = 20.0;
  if (![(CRLConnectionLineAbstractLayout *)self userDidSetControlPoint])
  {
    connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    tailMagnetType = [(CRLConnectionLineAbstractLayout *)self tailMagnetType];
    if (!tailMagnetType)
    {
      tailNearestLayoutForRouting = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];

      if (tailNearestLayoutForRouting)
      {
        tailNearestLayoutForRouting2 = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];

        tailMagnetType = [(CRLConnectionLineAbstractLayout *)self tailNearestMagnetTypeForRouting];
        connectedFrom = tailNearestLayoutForRouting2;
      }

      else
      {
        tailMagnetType = 0;
      }
    }

    connectedTo = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    headMagnetType = [(CRLConnectionLineAbstractLayout *)self headMagnetType];
    if (!headMagnetType)
    {
      headMagnetType = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];

      if (headMagnetType)
      {
        headNearestLayoutForRouting = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];

        headMagnetType = [(CRLConnectionLineAbstractLayout *)self headNearestMagnetTypeForRouting];
        connectedTo = headNearestLayoutForRouting;
      }
    }

    if (!connectedFrom)
    {
      goto LABEL_23;
    }

    if (!connectedTo)
    {
      goto LABEL_23;
    }

    [connectedFrom transform];
    if (sub_1001399C0(v17) != 0.0)
    {
      goto LABEL_23;
    }

    [connectedTo transform];
    if (sub_1001399C0(v17) != 0.0)
    {
      goto LABEL_23;
    }

    if (headMagnetType == 3 && tailMagnetType == 5)
    {
      [connectedFrom cardinalWestPosition];
      v12 = v11;
      [connectedTo cardinalEastPosition];
    }

    else
    {
      v14 = 20.0;
      if (headMagnetType != 5 || tailMagnetType != 3)
      {
        goto LABEL_20;
      }

      [connectedTo cardinalWestPosition];
      v12 = v15;
      [connectedFrom cardinalEastPosition];
    }

    v14 = v12 - v13;
LABEL_20:
    if (v14 <= 40.0)
    {
      v3 = 20.0;
    }

    else
    {
      v3 = v14;
    }

LABEL_23:
  }

  return v3;
}

- (CGPoint)controlPointForPointA:(CGPoint)a pointB:(CGPoint)b andOriginalA:(CGPoint)originalA originalB:(CGPoint)originalB
{
  y = b.y;
  x = b.x;
  v9 = a.y;
  v10 = a.x;
  v12 = objc_opt_class();
  v13 = *(&self->super.super.mCachedEditableBezierPathSource + 3);
  pathSource = v13;
  if (!v13)
  {
    shapeInfo = [(CRLShapeLayout *)self shapeInfo];
    pathSource = [shapeInfo pathSource];
  }

  v15 = sub_100014370(v12, pathSource);
  if (!v13)
  {
  }

  v16 = *(&self->super.super.mCachedPathSource + 3);
  if (v16)
  {
    geometry = v16;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
  }

  else
  {
    info = [(CRLCanvasLayout *)self info];
    geometry = [info geometry];

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    if (!geometry)
    {
      goto LABEL_9;
    }
  }

  [geometry transform];
LABEL_9:
  *(&self->mOverriddenControlPoint.x + 3) = v10;
  *(&self->mOverriddenControlPoint.y + 3) = v9;
  *(&self->mLastPtA.x + 3) = x;
  *(&self->mLastPtA.y + 3) = y;
  [(CRLConnectionLineOrthogonalLayout *)self p_getOverriddenControlPointWithPointA:v10 pointB:v9, x, y];
  v20 = v19;
  v27 = v21;
  *(&self->mSnappedUserSetControlPoint.x + 3) = v21;
  *(&self->mSnappedUserSetControlPoint.y + 3) = v19;
  if ([(CRLConnectionLineAbstractLayout *)self userDidSetControlPoint])
  {
    [v15 getControlKnobPosition:12];
    v24 = vaddq_f64(v31, vmlaq_n_f64(vmulq_n_f64(v30, v22), v29, v23));
    v20 = v24.f64[1];
  }

  else
  {
    v24.f64[0] = v27;
  }

  v28 = v24.f64[0];
  if (!sub_10011ED38(v24.f64[0], v20, *(&self->mLastPtB.x + 3), *(&self->mLastPtB.y + 3)))
  {
    [(CRLConnectionLineAbstractLayout *)self setControlKnobPositionChangedFromRouting:1];
    *(&self->mLastPtB.x + 3) = v28;
    *(&self->mLastPtB.y + 3) = v20;
  }

  v25 = v28;
  v26 = v20;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGPoint)p_getOverriddenControlPointWithPointA:(CGPoint)a pointB:(CGPoint)b
{
  y = b.y;
  x = b.x;
  v6 = a.y;
  v7 = a.x;
  v9 = sub_100120ABC(a.x, a.y, b.x, b.y, 0.5);
  v40 = v10;
  v41 = v9;
  [CRLConnectionLineOrthogonalLayout p_getControlKnobPositionToMakeSingleCornerIfPossible:"p_getControlKnobPositionToMakeSingleCornerIfPossible:pointA:pointB:" pointA:? pointB:?];
  v42 = v7;
  v43 = x;
  v44 = v6;
  v39 = y;
  [CRLConnectionLineOrthogonalLayout p_getControlKnobPositionToSnapToAnyExistingSetControlKnobs:"p_getControlKnobPositionToSnapToAnyExistingSetControlKnobs:pointA:pointB:" pointA:? pointB:?];
  v45 = v12;
  v46 = v11;
  connectedTo = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  [connectedTo frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_10011EC70(v46, v45, 50.0);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v48.origin.x = v15;
  v48.origin.y = v17;
  v48.size.width = v19;
  v48.size.height = v21;
  v50.origin.x = v22;
  v50.origin.y = v24;
  v50.size.width = v26;
  v50.size.height = v28;
  if (CGRectIntersectsRect(v48, v50))
  {
    v29 = 1;
  }

  else
  {
    connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [connectedFrom frame];
    v51.origin.x = v22;
    v51.origin.y = v24;
    v51.size.width = v26;
    v51.size.height = v28;
    v29 = CGRectIntersectsRect(v49, v51);
  }

  v31 = sub_10011ED38(v46, v45, v42, v44) || sub_10011ED38(v46, v45, v43, v39);
  if (sub_100120090(v41, v40, v42, v44) < 0.25)
  {
    goto LABEL_14;
  }

  v32 = sub_100120090(v41, v40, v43, v39);
  v33 = v32 >= 0.25;
  v34 = v46;
  if ((v29 || v31) && v33)
  {
    v35 = v40;
  }

  else
  {
    v35 = v45;
  }

  if ((v29 || v31) && v33)
  {
    v34 = v41;
  }

  if (v32 < 0.25)
  {
LABEL_14:
    v36 = vabdd_f64(v42, v43);
    v37 = vabdd_f64(v44, v44);
    v38 = v36 <= v37;
    if (v36 > v37)
    {
      v34 = v41;
    }

    else
    {
      v34 = v41 + -0.25;
    }

    if (v38)
    {
      v35 = v40;
    }

    else
    {
      v35 = v40 + -0.25;
    }
  }

  result.y = v35;
  result.x = v34;
  return result;
}

- (CGPoint)p_getControlKnobPositionToMakeSingleCornerIfPossible:(CGPoint)possible pointA:(CGPoint)a pointB:(CGPoint)b
{
  y = a.y;
  x = a.x;
  connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedFrom frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  tailMagnetType = [(CRLConnectionLineAbstractLayout *)self tailMagnetType];
  v126 = x;
  if (!tailMagnetType)
  {
    tailNearestLayoutForRouting = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];

    if (!tailNearestLayoutForRouting)
    {
      goto LABEL_5;
    }

    tailNearestLayoutForRouting2 = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];
    [tailNearestLayoutForRouting2 frame];
    v9 = v19;
    v11 = v20;
    v13 = v21;
    v15 = v22;

    tailMagnetType = [(CRLConnectionLineAbstractLayout *)self tailNearestMagnetTypeForRouting];
  }

  tailNearestLayoutForRouting = tailMagnetType;
LABEL_5:
  connectedTo = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  [connectedTo frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  headMagnetType = [(CRLConnectionLineAbstractLayout *)self headMagnetType];
  if (headMagnetType)
  {
    headNearestLayoutForRouting = headMagnetType;
    v127 = 0;
    v34 = tailNearestLayoutForRouting != 0;
  }

  else
  {
    headNearestLayoutForRouting = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];

    if (headNearestLayoutForRouting)
    {
      connectedTo = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];
      [connectedTo frame];
      v25 = v40;
      v27 = v41;
      v29 = v42;
      v31 = v43;

      headNearestLayoutForRouting = [(CRLConnectionLineAbstractLayout *)self headNearestMagnetTypeForRouting];
    }

    v127 = headNearestLayoutForRouting == 0;
    v34 = tailNearestLayoutForRouting != 0;
    if (!headNearestLayoutForRouting && tailNearestLayoutForRouting)
    {
      headNearestLayoutForRouting = 0;
      v37 = 0;
      v39 = tailNearestLayoutForRouting == 1;
      v34 = 1;
      v127 = 1;
      connectedFrom5 = 1;
      goto LABEL_29;
    }
  }

  if (headNearestLayoutForRouting)
  {
    v35 = tailNearestLayoutForRouting == 0;
  }

  else
  {
    v35 = 0;
  }

  connectedFrom5 = v35;
  v37 = headNearestLayoutForRouting == 1;
  if (headNearestLayoutForRouting != 1 || tailNearestLayoutForRouting != 1)
  {
    if (tailNearestLayoutForRouting == 1)
    {
      v39 = 1;
      if (headNearestLayoutForRouting > 3)
      {
        if (headNearestLayoutForRouting == 4)
        {
          v37 = 0;
          v123 = 0;
          connectedFrom5 = v31 + v27 < v11;
          goto LABEL_16;
        }

        if (headNearestLayoutForRouting == 5)
        {
          if (v25 > v9 + v13)
          {
            v37 = 0;
            v123 = 0;
            connectedFrom5 = 1;
            headNearestLayoutForRouting = 5;
            goto LABEL_16;
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (headNearestLayoutForRouting == 2)
        {
          v37 = 0;
          v123 = 0;
          connectedFrom5 = v27 > v11 + v15;
          goto LABEL_16;
        }

        if (headNearestLayoutForRouting == 3)
        {
          if (v29 + v25 < v9)
          {
            v37 = 0;
            v123 = 0;
            connectedFrom5 = 1;
            headNearestLayoutForRouting = 3;
            goto LABEL_16;
          }

LABEL_67:
          v123 = 0;
          connectedFrom5 = v27 > v11 + v15 && headNearestLayoutForRouting == 2;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_29:
    v44 = (tailNearestLayoutForRouting & 0xFFFFFFFFFFFFFFFELL) == 4 || (tailNearestLayoutForRouting & 0xFFFFFFFFFFFFFFFELL) == 2;
    if (v44 && v37)
    {
      if (tailNearestLayoutForRouting == 5 && v9 > v29 + v25 || tailNearestLayoutForRouting == 3 && v9 + v13 < v25)
      {
        v37 = 1;
LABEL_40:
        connectedFrom5 = 1;
        goto LABEL_88;
      }

      connectedFrom5 = v11 > v31 + v27 && tailNearestLayoutForRouting == 2;
      if (tailNearestLayoutForRouting == 4)
      {
        connectedFrom5 = v11 + v15 < v27;
        v38 = v126;
        v123 = 0;
        if (!v39)
        {
          v125 = v11 + v15 < v27;
          v48 = 0;
          connectedFrom5 = 0;
          goto LABEL_97;
        }

        v37 = 1;
        goto LABEL_89;
      }

      v37 = 1;
LABEL_88:
      v38 = v126;
      v123 = 0;
      v45 = 0;
      if (!v39)
      {
        goto LABEL_96;
      }

      goto LABEL_89;
    }

    if (headNearestLayoutForRouting == 0 || !v34)
    {
      goto LABEL_88;
    }

    connectedFrom5 = 0;
    if (headNearestLayoutForRouting > 3)
    {
      if (headNearestLayoutForRouting == 4)
      {
        if ((tailNearestLayoutForRouting == 5 || tailNearestLayoutForRouting == 3) && v31 + v27 < v11)
        {
          goto LABEL_40;
        }

        connectedFrom5 = 0;
        v123 = 0;
        v45 = 0;
        headNearestLayoutForRouting = 4;
      }

      else
      {
        if (headNearestLayoutForRouting != 5)
        {
          goto LABEL_88;
        }

        if (tailNearestLayoutForRouting != 4 && tailNearestLayoutForRouting != 2)
        {
          connectedFrom5 = 0;
          goto LABEL_88;
        }

        v123 = 0;
        v45 = 0;
        connectedFrom5 = v25 > v9 + v13;
        headNearestLayoutForRouting = 5;
      }
    }

    else if (headNearestLayoutForRouting == 2)
    {
      if ((tailNearestLayoutForRouting == 5 || tailNearestLayoutForRouting == 3) && v27 > v11 + v15)
      {
        goto LABEL_40;
      }

      connectedFrom5 = 0;
      v123 = 0;
      v45 = 0;
      headNearestLayoutForRouting = 2;
    }

    else
    {
      if (headNearestLayoutForRouting != 3)
      {
        goto LABEL_88;
      }

      if ((tailNearestLayoutForRouting == 4 || tailNearestLayoutForRouting == 2) && v29 + v25 < v9)
      {
        goto LABEL_40;
      }

      connectedFrom5 = 0;
      v123 = 0;
      v45 = 0;
      headNearestLayoutForRouting = 3;
    }

    v38 = v126;
    if (!v39)
    {
      goto LABEL_96;
    }

    goto LABEL_89;
  }

  connectedFrom5 = 1;
  headNearestLayoutForRouting = 1;
  v37 = 1;
  v123 = 1;
LABEL_16:
  v38 = v126;
LABEL_89:
  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v50 = v49;
  v52 = v51;
  connectedTo = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedTo cardinalNorthPosition];
  if (!sub_10011ED38(v50, v52, v53, v54))
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v56 = v55;
    v58 = v57;
    connectedFrom2 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [connectedFrom2 cardinalSouthPosition];
    v125 = connectedFrom5;
    LODWORD(v45) = v127 & sub_10011ED38(v56, v58, v60, v61);
    if (v45 & 1) != 0 || ((v37 ^ 1))
    {
      LOBYTE(v37) = v45 & v37;

      goto LABEL_109;
    }

    v119 = connectedFrom2;
    v48 = 1;
    connectedFrom5 = 1;
    goto LABEL_97;
  }

  v45 = 1;
  if (v127)
  {
    v125 = connectedFrom5;
    goto LABEL_109;
  }

  v127 = 0;
LABEL_96:
  v125 = connectedFrom5;
  v48 = 0;
  v62 = v37;
  connectedFrom5 = v45;
  LOBYTE(v37) = 0;
  LOBYTE(v45) = 0;
  if (!v62)
  {
    goto LABEL_108;
  }

LABEL_97:
  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3), v119];
  v64 = v63;
  v66 = v65;
  connectedFrom3 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedFrom3 cardinalNorthPosition];
  if (sub_10011ED38(v64, v66, v68, v69))
  {
    LOBYTE(v45) = tailNearestLayoutForRouting == 0;
    goto LABEL_101;
  }

  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v71 = v70;
  v73 = v72;
  connectedFrom4 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedFrom4 cardinalSouthPosition];
  if (sub_10011ED38(v71, v73, v75, v76))
  {
    LOBYTE(v45) = tailNearestLayoutForRouting == 0;

LABEL_101:
    if (v48)
    {
LABEL_102:

      if ((connectedFrom5 & 1) == 0)
      {
        v77 = 0;
        v78 = 0;
        goto LABEL_122;
      }

      LOBYTE(v37) = 1;
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  LOBYTE(v45) = 0;
  if (v48)
  {
    goto LABEL_102;
  }

LABEL_107:
  LOBYTE(v37) = 1;
LABEL_108:
  if ((connectedFrom5 & 1) == 0)
  {
    v78 = 0;
    goto LABEL_116;
  }

LABEL_109:

  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v80 = v79;
  v82 = v81;
  connectedTo = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedTo cardinalEastPosition];
  if (!sub_10011ED38(v80, v82, v83, v84))
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v87 = v86;
    v89 = v88;
    connectedFrom5 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [connectedFrom5 cardinalWestPosition];
    if ((v127 & sub_10011ED38(v87, v89, v90, v91)) == 1)
    {

      if (v125)
      {
        v85 = 1;
        goto LABEL_135;
      }
    }

    else
    {
      if (v37)
      {
        v77 = 1;
        v78 = 1;
        goto LABEL_122;
      }

      if (v125)
      {
        v85 = 0;
        goto LABEL_135;
      }
    }

LABEL_145:
    v111 = possible.x;
    v112 = possible.y;
    goto LABEL_164;
  }

  v78 = 1;
  v85 = 1;
  if (!v127)
  {
LABEL_116:
    v77 = 0;
    v85 = 0;
    if ((v37 & 1) == 0)
    {
      if (v78)
      {
        goto LABEL_118;
      }

      goto LABEL_128;
    }

LABEL_122:
    LODWORD(v119) = v77;
    v128 = v78;
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3), v119];
    v93 = v92;
    v95 = v94;
    connectedFrom6 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [connectedFrom6 cardinalEastPosition];
    if (sub_10011ED38(v93, v95, v97, v98))
    {
      v85 = tailNearestLayoutForRouting == 0;
    }

    else
    {
      [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
      v100 = v99;
      v102 = v101;
      connectedFrom7 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
      [connectedFrom7 cardinalWestPosition];
      if (!sub_10011ED38(v100, v102, v104, v105))
      {

        v85 = 0;
        if (v120)
        {
LABEL_127:

          if (v128)
          {
            goto LABEL_118;
          }

          goto LABEL_128;
        }

LABEL_131:
        if (v128)
        {
          goto LABEL_118;
        }

LABEL_128:
        if (!v125)
        {
          goto LABEL_145;
        }

        goto LABEL_135;
      }

      v85 = tailNearestLayoutForRouting == 0;
    }

    if (v120)
    {
      goto LABEL_127;
    }

    goto LABEL_131;
  }

LABEL_118:

  if (!v125)
  {
    goto LABEL_145;
  }

LABEL_135:
  if (v123)
  {
    connectedFrom8 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [connectedFrom8 centerForConnecting];
    if (v38 == v107 || vabdd_f64(v38, v107) < 0.00999999978)
    {
    }

    else
    {
      connectedTo2 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
      [connectedTo2 centerForConnecting];
      v110 = v109;

      if (b.x != v110)
      {
        v111 = v38;
        v112 = b.y;
        if (vabdd_f64(b.x, v110) < 0.00999999978)
        {
          goto LABEL_164;
        }

        v113 = [(CRLConnectionLineAbstractLayout *)self connectedFrom:v38];
        [v113 centerForConnecting];
        if (y == v114 || vabdd_f64(y, v114) < 0.00999999978)
        {

          v111 = b.x;
          v112 = y;
          goto LABEL_164;
        }

        connectedTo3 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
        [connectedTo3 centerForConnecting];
        v117 = v116;

        if (b.y != v117)
        {
          v111 = possible.x;
          v112 = possible.y;
          v118 = b.x;
          if (vabdd_f64(b.y, v117) >= 0.00999999978)
          {
            goto LABEL_164;
          }

LABEL_144:
          v111 = v118;
          v112 = y;
          goto LABEL_164;
        }

LABEL_157:
        v112 = y;
        v111 = b.x;
        goto LABEL_164;
      }
    }

LABEL_154:
    v111 = v38;
    v112 = b.y;
    goto LABEL_164;
  }

  if (tailNearestLayoutForRouting == 2 || tailNearestLayoutForRouting == 4 || (v45 & 1) != 0)
  {
    goto LABEL_154;
  }

  if (tailNearestLayoutForRouting == 3)
  {
    goto LABEL_157;
  }

  v112 = y;
  v118 = b.x;
  if (tailNearestLayoutForRouting == 5 || v85)
  {
    v111 = b.x;
    goto LABEL_164;
  }

  if (headNearestLayoutForRouting > 3)
  {
    if (headNearestLayoutForRouting != 5)
    {
      v111 = possible.x;
      v112 = possible.y;
      if (headNearestLayoutForRouting != 4)
      {
        goto LABEL_164;
      }

      goto LABEL_144;
    }

    goto LABEL_154;
  }

  v111 = b.x;
  if (headNearestLayoutForRouting != 2)
  {
    v111 = possible.x;
    v112 = possible.y;
    if (headNearestLayoutForRouting == 3)
    {
      goto LABEL_154;
    }
  }

LABEL_164:
  result.y = v112;
  result.x = v111;
  return result;
}

- (CGPoint)p_getControlKnobPositionToSnapToAnyExistingSetControlKnobs:(CGPoint)knobs pointA:(CGPoint)a pointB:(CGPoint)b
{
  y = b.y;
  v6 = knobs.y;
  x = knobs.x;
  v9 = sub_100120ABC(a.x, a.y, b.x, b.y, 0.5);
  [(CRLConnectionLineOrthogonalLayout *)self p_getExistingUserSetControlPointToMatch];
  v11 = v10;
  if (sub_1001208AC(v12, v10))
  {
    *(&self->super.mTailMagnetCanvasPosition + 3) = xmmword_1014629F0;
  }

  else if ([(CRLConnectionLineOrthogonalLayout *)self p_tailComingFromSouth]&& y > v11 || [(CRLConnectionLineOrthogonalLayout *)self p_tailComingFromNorth]&& y < v11)
  {
    *(&self->super.mTailMagnetCanvasPosition.x + 3) = v9;
    *(&self->super.mTailMagnetCanvasPosition.y + 3) = v11;
  }

  if (!sub_1001208AC(*(&self->super.mTailMagnetCanvasPosition.x + 3), *(&self->super.mTailMagnetCanvasPosition.y + 3)) && ![(CRLConnectionLineAbstractLayout *)self userDidSetControlPoint])
  {
    x = *(&self->super.mTailMagnetCanvasPosition.x + 3);
    v6 = *(&self->super.mTailMagnetCanvasPosition.y + 3);
  }

  v13 = x;
  v14 = v6;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)p_getExistingUserSetControlPointToMatch
{
  v3 = INFINITY;
  v4 = INFINITY;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  connectedLayouts = [connectedFrom connectedLayouts];

  v7 = [connectedLayouts countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = *v31;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(connectedLayouts);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        if (v11 != self)
        {
          v12 = objc_opt_self();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            if ([(CRLConnectionLineOrthogonalLayout *)self p_connectionLineComingFromSideOfOriginObject:v11])
            {
              connectionLineInfo = [(CRLConnectionLineAbstractLayout *)v11 connectionLineInfo];
              connectionLinePathSource = [connectionLineInfo connectionLinePathSource];

              [connectionLinePathSource getControlKnobPosition:12];
              v24 = v17;
              v25 = v16;
              if (v11)
              {
                [(CRLCanvasAbstractLayout *)v11 transform];
                v18 = v27;
                v19 = v28;
                v20 = v29;
              }

              else
              {
                v20 = 0uLL;
                v18 = 0uLL;
                v19 = 0uLL;
              }

              v26 = vaddq_f64(v20, vmlaq_n_f64(vmulq_n_f64(v19, v24), v18, v25));
              v21 = sub_100120090(v26.f64[0], v26.f64[1], *(&self->mLastPtA.x + 3), *(&self->mLastPtA.y + 3));
              if (v21 < v9)
              {
                v9 = v21;
                v3 = v26.f64[0];
                v4 = v26.f64[1];
              }
            }
          }
        }
      }

      v7 = [connectedLayouts countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v22 = v3;
  v23 = v4;
  result.y = v23;
  result.x = v22;
  return result;
}

- (BOOL)p_tailComingFromNorth
{
  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v4 = v3;
  v6 = v5;
  connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedFrom cardinalNorthPosition];
  v10 = sub_10011ED38(v4, v6, v8, v9);

  return v10;
}

- (BOOL)p_tailComingFromSouth
{
  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v4 = v3;
  v6 = v5;
  connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [connectedFrom cardinalSouthPosition];
  v10 = sub_10011ED38(v4, v6, v8, v9);

  return v10;
}

- (BOOL)p_connectionLineComingFromSideOfOriginObject:(id)object
{
  objectCopy = object;
  if ([(CRLConnectionLineAbstractLayout *)self tailMagnetType]== 1)
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *(&self->mOverriddenControlPoint.x + 3);
    v8 = *(&self->mOverriddenControlPoint.y + 3);
  }

  headMagnetType = [(CRLConnectionLineAbstractLayout *)self headMagnetType];
  v11 = *(&self->mLastPtA.x + 3);
  v10 = *(&self->mLastPtA.y + 3);
  if (headMagnetType == 1)
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:v11 forLineEnd:v10, *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v11 = v12;
    v10 = v13;
  }

  if ([objectCopy tailMagnetType] == 1)
  {
    [objectCopy headMagnetCanvasPosition];
    v15 = v14;
    v17 = v16;
    [objectCopy tailMagnetCanvasPosition];
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:v15 forLineEnd:v17, v18, v19];
  }

  else
  {
    [objectCopy tailMagnetCanvasPosition];
  }

  v22 = v20;
  v23 = v21;
  if ([objectCopy headMagnetType] == 1)
  {
    [objectCopy headMagnetCanvasPosition];
    v25 = v24;
    v27 = v26;
    [objectCopy tailMagnetCanvasPosition];
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:v25 forLineEnd:v27, v28, v29];
  }

  else
  {
    [objectCopy headMagnetCanvasPosition];
  }

  v32 = v30;
  v33 = v31;
  connectedTo = [objectCopy connectedTo];
  connectedTo2 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  if (connectedTo == connectedTo2 && sub_100120090(v32, v33, v11, v10) < 5.0)
  {
    v36 = 1;
  }

  else
  {
    connectedFrom = [objectCopy connectedFrom];
    connectedTo3 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    if (connectedFrom == connectedTo3 && sub_100120090(v22, v23, v11, v10) < 5.0)
    {
      v36 = 1;
    }

    else
    {
      connectedTo4 = [objectCopy connectedTo];
      connectedFrom2 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
      if (connectedTo4 == connectedFrom2 && sub_100120090(v32, v33, v6, v8) < 5.0)
      {
        v36 = 1;
      }

      else
      {
        connectedFrom3 = [objectCopy connectedFrom];
        connectedFrom4 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
        v36 = connectedFrom3 == connectedFrom4 && sub_100120090(v22, v23, v6, v8) < 5.0;
      }
    }
  }

  return v36;
}

- (CGPoint)p_getLineEndPointAdjustedToCardinalForClineLayout:(id)layout withHead:(CGPoint)head withTail:(CGPoint)tail forLineEnd:(unint64_t)end
{
  y = tail.y;
  x = tail.x;
  v9 = head.y;
  v10 = head.x;
  layoutCopy = layout;
  v12 = layoutCopy;
  if (end == 11)
  {
    x = v10;
    v13 = v9;
  }

  else
  {
    v13 = y;
  }

  if (v9 > y && end == 11)
  {
    connectedTo = [layoutCopy connectedTo];
    [connectedTo cardinalNorthPosition];
    goto LABEL_17;
  }

  if (y > v9 && end == 10)
  {
    connectedTo = [layoutCopy connectedFrom];
    [connectedTo cardinalNorthPosition];
    goto LABEL_17;
  }

  if (y > v9 && end == 11)
  {
    connectedTo = [layoutCopy connectedTo];
    [connectedTo cardinalSouthPosition];
LABEL_17:
    x = v17;
    v13 = v18;

    goto LABEL_18;
  }

  if (v9 > y && end == 10)
  {
    connectedTo = [layoutCopy connectedFrom];
    [connectedTo cardinalSouthPosition];
    goto LABEL_17;
  }

LABEL_18:

  v19 = x;
  v20 = v13;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)std :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:
{
  begin = a4->__begin_;
  end = a4->__end_;
  if (a4->__begin_ == end)
  {
    v8 = 1.79769313e308;
  }

  else
  {
    v8 = 1.79769313e308;
    do
    {
      v9 = *begin++;
      v10 = result.x - v9;
      v11 = -v8;
      if (v8 >= 0.0)
      {
        v11 = v8;
      }

      v12 = -v10;
      if (v10 >= 0.0)
      {
        v12 = v10;
      }

      if (v11 >= v12)
      {
        v8 = v10;
      }
    }

    while (begin != end);
  }

  v13 = a5->__begin_;
  v14 = a5->__end_;
  if (a5->__begin_ == v14)
  {
    v15 = 1.79769313e308;
  }

  else
  {
    v15 = 1.79769313e308;
    do
    {
      v16 = *v13++;
      v17 = result.y - v16;
      v18 = -v15;
      if (v15 >= 0.0)
      {
        v18 = v15;
      }

      v19 = -v17;
      if (v17 >= 0.0)
      {
        v19 = v17;
      }

      if (v18 >= v19)
      {
        v15 = v17;
      }
    }

    while (v13 != v14);
  }

  v20 = -v8;
  if (v8 >= 0.0)
  {
    v20 = v8;
  }

  v21 = result.x - v8;
  if (v20 < std)
  {
    result.x = v21;
  }

  v22 = -v15;
  if (v15 >= 0.0)
  {
    v22 = v15;
  }

  v23 = result.y - v15;
  if (v22 < std)
  {
    result.y = v23;
  }

  return result;
}

- (void)addEndpointSnapsToXs:(void *)xs andYs:(void *)ys
{
  connectedFrom = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  if (connectedFrom)
  {
    connectedFrom2 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    parent = [connectedFrom2 parent];
    parent2 = [(CRLCanvasAbstractLayout *)self parent];
    if (parent == parent2)
    {
      connectedFrom3 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    }

    else
    {
      connectedFrom3 = 0;
    }
  }

  else
  {
    connectedFrom3 = 0;
  }

  connectedFrom4 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  if (connectedFrom4)
  {
    connectedFrom5 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    parent3 = [connectedFrom5 parent];
    parent4 = [(CRLCanvasAbstractLayout *)self parent];
    if (parent3 == parent4)
    {
      connectedFrom6 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    }

    else
    {
      connectedFrom6 = 0;
    }
  }

  else
  {
    connectedFrom6 = 0;
  }

  connectedPathSource = [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
  v18 = connectedPathSource;
  if (connectedFrom3)
  {
    [connectedFrom3 centerForConnecting];
    v45.f64[0] = v19;
    v45.f64[1] = v20;
    if (connectedFrom6)
    {
LABEL_15:
      [connectedFrom6 centerForConnecting];
      v44.f64[0] = v21;
      v44.f64[1] = v22;
      goto LABEL_24;
    }
  }

  else
  {
    [connectedPathSource getControlKnobPosition:10];
    v37 = v24;
    v39 = v23;
    pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
    v26 = pureGeometry;
    if (pureGeometry)
    {
      [pureGeometry transform];
      v27 = v41;
      v28 = v42;
      v29 = v43;
    }

    else
    {
      v29 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
    }

    v45 = vaddq_f64(v29, vmlaq_n_f64(vmulq_n_f64(v28, v37), v27, v39));

    if (connectedFrom6)
    {
      goto LABEL_15;
    }
  }

  [v18 getControlKnobPosition:11];
  v38 = v31;
  v40 = v30;
  pureGeometry2 = [(CRLCanvasLayout *)self pureGeometry];
  v33 = pureGeometry2;
  if (pureGeometry2)
  {
    [pureGeometry2 transform];
    v34 = v41;
    v35 = v42;
    v36 = v43;
  }

  else
  {
    v36 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
  }

  v44 = vaddq_f64(v36, vmlaq_n_f64(vmulq_n_f64(v35, v38), v34, v40));

LABEL_24:
  sub_10030DE08(xs, &v45);
  sub_10030DE08(ys, &v45.f64[1]);
  sub_10030DE08(xs, &v44);
  sub_10030DE08(ys, &v44.f64[1]);
}

- (CGPoint)getControlKnobPosition:(unint64_t)position
{
  connectedPathSource = [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
  [connectedPathSource getControlKnobPosition:position];
  v7 = v6;
  v23.f64[0] = v8;
  if (position == 12)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    [(CRLConnectionLineOrthogonalLayout *)self addEndpointSnapsToXs:&v38 andYs:&v35];
    memset(&v34, 0, sizeof(v34));
    pureGeometry = [(CRLCanvasLayout *)self pureGeometry];
    v10 = pureGeometry;
    if (pureGeometry)
    {
      [pureGeometry transform];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    v11 = *&v34.a;
    v12 = *&v34.c;
    v13 = *&v34.tx;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    sub_100312EF0(&v31, v38, v39, (v39 - v38) >> 3);
    __p = 0;
    v29 = 0;
    v30 = 0;
    sub_100312EF0(&__p, v35, v36, (v36 - v35) >> 3);
    [(CRLConnectionLineOrthogonalLayout *)self axisSnapPoint:&v31 toXs:&__p toYs:*&v13 + v7 * *&v12 + *&v11 * v23.f64[0] withThreshold:*(&v13 + 1) + v7 * *(&v12 + 1) + *(&v11 + 1) * v23.f64[0], 2.0];
    v21 = v15;
    v24 = v14;
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    v26 = v34;
    CGAffineTransformInvert(&v27, &v26);
    v16 = vmlaq_n_f64(vmulq_n_f64(*&v27.c, v21), *&v27.a, v24);
    v17 = *&v27.tx;
    if (v35)
    {
      v36 = v35;
      v22 = *&v27.tx;
      v25 = v16;
      operator delete(v35);
      v17 = v22;
      v16 = v25;
    }

    v18 = vaddq_f64(v17, v16);
    v23 = v18;
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
      v18.f64[1] = v23.f64[1];
    }

    v7 = v18.f64[1];
  }

  v19 = v23.f64[0];
  v20 = v7;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)to withTracker:(id)tracker
{
  y = to.y;
  x = to.x;
  trackerCopy = tracker;
  knob = [trackerCopy knob];
  v6 = [knob tag];

  if (v6 == 12)
  {
    originalGeometry = [(CRLCanvasLayout *)self originalGeometry];
    v8 = originalGeometry;
    if (originalGeometry)
    {
      [originalGeometry transform];
      a = v73.a;
      b = v73.b;
      c = v73.c;
      d = v73.d;
      tx = v73.tx;
      ty = v73.ty;
    }

    else
    {
      ty = 0.0;
      d = 0.0;
      b = 0.0;
      tx = 0.0;
      c = 0.0;
      a = 0.0;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    [(CRLConnectionLineOrthogonalLayout *)self addEndpointSnapsToXs:&v70 andYs:&v67];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    parent = [(CRLCanvasAbstractLayout *)self parent];
    children = [parent children];

    v18 = [children countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v18)
    {
      v19 = *v64;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(children);
          }

          v21 = *(*(&v63 + 1) + 8 * i);
          if (v21 != self)
          {
            v22 = objc_opt_class();
            v23 = sub_100014370(v22, v21);
            v24 = v23;
            if (v23)
            {
              path = [v23 path];
              memset(&v73, 0, sizeof(v73));
              pureGeometry = [v24 pureGeometry];
              v27 = pureGeometry;
              if (pureGeometry)
              {
                [pureGeometry transform];
              }

              else
              {
                memset(&v73, 0, sizeof(v73));
              }

              [path elementAtIndex:0 associatedPoints:&v55];
              *&v55.a = vaddq_f64(*&v73.tx, vmlaq_n_f64(vmulq_n_f64(*&v73.c, v55.b), *&v73.a, v55.a));
              elementCount = [path elementCount];
              if (elementCount >= 2)
              {
                for (j = 1; elementCount != j; ++j)
                {
                  [path elementAtIndex:j associatedPoints:&v62];
                  v62 = vaddq_f64(*&v73.tx, vmlaq_n_f64(vmulq_n_f64(*&v73.c, v62.f64[1]), *&v73.a, v62.f64[0]));
                  v30 = fabs(sub_10011F31C(v62.f64[0], v62.f64[1], v55.a));
                  v32 = fabs(v31);
                  if (v30 >= 0.1 || v32 <= 0.1)
                  {
                    if (v30 <= 0.1 || v32 >= 0.1)
                    {
                      goto LABEL_25;
                    }

                    v34 = &v67;
                    p_b = &v55.b;
                  }

                  else
                  {
                    p_b = &v55;
                    v34 = &v70;
                  }

                  sub_10030DE08(v34, p_b);
LABEL_25:
                  *&v55.a = v62;
                }
              }
            }
          }
        }

        v18 = [children countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v18);
    }

    v59 = 0;
    v60 = 0;
    v61 = 0;
    sub_100312EF0(&v59, v70, v71, (v71 - v70) >> 3);
    __p = 0;
    v57 = 0;
    v58 = 0;
    sub_100312EF0(&__p, v67, v68, (v68 - v67) >> 3);
    v35 = [trackerCopy icc];
    [v35 viewScale];
    [(CRLConnectionLineOrthogonalLayout *)self axisSnapPoint:&v59 toXs:&__p toYs:tx + y * c + a * x withThreshold:ty + y * d + b * x, 7 / v36];
    v48 = v38;
    v52 = v37;

    if (__p)
    {
      v57 = __p;
      operator delete(__p);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    v39 = sub_100120090(*(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3), v52, v48) >= 10.0 && sub_100120090(*(&self->mLastPtA.x + 3), *(&self->mLastPtA.y + 3), v52, v48) >= 10.0;
    if (!(v39 | ![(CRLConnectionLineAbstractLayout *)self userDidSetControlPoint]))
    {
      v52 = *(&self->mSnappedUserSetControlPoint.x + 3);
      v48 = *(&self->mSnappedUserSetControlPoint.y + 3);
    }

    originalGeometry2 = [(CRLCanvasLayout *)self originalGeometry];
    v41 = originalGeometry2;
    if (originalGeometry2)
    {
      [originalGeometry2 transform];
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    CGAffineTransformInvert(&v73, &v55);
    v44 = *&v73.c;
    v45 = *&v73.a;
    v46 = *&v73.tx;

    v42 = vmulq_n_f64(v44, v48);
    if (v67)
    {
      v68 = v67;
      v49 = v42;
      operator delete(v67);
      v42 = v49;
    }

    v43 = vmlaq_n_f64(v42, v45, v52);
    if (v70)
    {
      v71 = v70;
      v50 = v43;
      operator delete(v70);
      v43 = v50;
    }

    v15 = vaddq_f64(v46, v43);
  }

  else
  {
    v15.f64[0] = x;
    v15.f64[1] = y;
  }

  v54.receiver = self;
  v54.super_class = CRLConnectionLineOrthogonalLayout;
  [(CRLConnectionLineAbstractLayout *)&v54 dynamicallyMovedSmartShapeKnobTo:trackerCopy withTracker:*&v15, *&v44];
}

- (CGPoint)outsetFromMagnetPosition:(CGPoint)position withRect:(CGRect)rect controlPoint:(CGPoint)point distance:(double)distance
{
  y = point.y;
  x = point.x;
  height = rect.size.height;
  width = rect.size.width;
  v8 = rect.origin.y;
  v9 = rect.origin.x;
  v10 = position.y;
  v11 = position.x;
  v12 = sub_100120414(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v14 = v13;
  v31 = height;
  v15 = sqrt(height * height + width * width) * 0.5 + 2.0;
  v16 = v10 - v13;
  *&v13 = v11 - v12;
  v17 = atan2f(v16, *&v13);
  sub_1001210C4(v17);
  v34 = v12;
  v19 = __sincos_stret(v18);
  v33 = v14;
  v20 = v19.__sinval * (v15 - vabdd_f64(v10, v14));
  v21 = v11 + v19.__cosval * (v15 - vabdd_f64(v11, v12));
  v22 = v10 + v20;
  if (sub_10011FA28(v11, v10, v21, v10 + v20, v9, v8, v9 + width, v8))
  {
    if (y <= v8 - distance || y > v10 + 2.0)
    {
      v10 = v8 - distance;
    }

    else
    {
      v10 = y;
    }
  }

  else
  {
    v24 = v8 + v31;
    v32 = v9 + width;
    if (sub_10011FA28(v34, v33, v21, v22, v9, v24, v9 + width, v24))
    {
      if (y >= v24 + distance || y < v10 + -2.0)
      {
        v10 = v24 + distance;
      }

      else
      {
        v10 = y;
      }
    }

    else if (sub_10011FA28(v34, v33, v21, v22, v9, v8, v9, v24))
    {
      if (x <= v9 - distance || x > v11 + 2.0)
      {
        v11 = v9 - distance;
      }

      else
      {
        v11 = x;
      }
    }

    else if (x >= v32 + distance || x < v11 + -2.0)
    {
      v11 = v32 + distance;
    }

    else
    {
      v11 = x;
    }
  }

  v28 = v11;
  v29 = v10;
  result.y = v29;
  result.x = v28;
  return result;
}

@end