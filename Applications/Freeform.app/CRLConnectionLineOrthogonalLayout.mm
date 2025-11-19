@interface CRLConnectionLineOrthogonalLayout
- (BOOL)p_connectionLineComingFromSideOfOriginObject:(id)a3;
- (BOOL)p_tailComingFromNorth;
- (BOOL)p_tailComingFromSouth;
- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)a6 :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:;
- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (CGPoint)outsetFromMagnetPosition:(CGPoint)a3 withRect:(CGRect)a4 controlPoint:(CGPoint)a5 distance:(double)a6;
- (CGPoint)p_getControlKnobPositionToMakeSingleCornerIfPossible:(CGPoint)a3 pointA:(CGPoint)a4 pointB:(CGPoint)a5;
- (CGPoint)p_getControlKnobPositionToSnapToAnyExistingSetControlKnobs:(CGPoint)a3 pointA:(CGPoint)a4 pointB:(CGPoint)a5;
- (CGPoint)p_getExistingUserSetControlPointToMatch;
- (CGPoint)p_getLineEndPointAdjustedToCardinalForClineLayout:(id)a3 withHead:(CGPoint)a4 withTail:(CGPoint)a5 forLineEnd:(unint64_t)a6;
- (CGPoint)p_getOverriddenControlPointWithPointA:(CGPoint)a3 pointB:(CGPoint)a4;
- (CGRect)orthoRectOfLayout:(id)a3 outset:(double)a4;
- (CRLConnectionLineOrthogonalLayout)initWithInfo:(id)a3;
- (double)p_getAdjustedShapeOutset;
- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3] clipPath:(BOOL)a6;
- (id)getClippedHeadPortion;
- (id)getClippedTailPortion;
- (void)addEndpointSnapsToXs:(void *)a3 andYs:(void *)a4;
- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4;
- (void)setUserDidSetControlPoint:(BOOL)a3;
@end

@implementation CRLConnectionLineOrthogonalLayout

- (CRLConnectionLineOrthogonalLayout)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLConnectionLineOrthogonalLayout;
  result = [(CRLConnectionLineAbstractLayout *)&v4 initWithInfo:a3];
  if (result)
  {
    *(&result->super.mTailMagnetCanvasPosition + 3) = xmmword_1014629F0;
    *(&result->mSnappedUserSetControlPoint + 3) = xmmword_1014629F0;
    *(&result->mOverriddenControlPoint + 3) = xmmword_1014629F0;
    *(&result->mLastPtA + 3) = xmmword_1014629F0;
  }

  return result;
}

- (void)setUserDidSetControlPoint:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CRLConnectionLineOrthogonalLayout;
  [(CRLConnectionLineAbstractLayout *)&v4 setUserDidSetControlPoint:a3];
  *(&self->super.mTailMagnetCanvasPosition + 3) = xmmword_1014629F0;
}

- (id)getClippedHeadPortion
{
  v3 = [(CRLConnectionLineAbstractLayout *)self connectedTo];

  if (!v3)
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

  v9 = [(CRLCanvasLayout *)self pureGeometry];
  [v9 size];
  if (v10 == 0.0 || fabs(v10) < 0.00999999978)
  {
    v11 = [(CRLCanvasLayout *)self pureGeometry];
    [v11 size];
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
  v14 = [(CRLCanvasLayout *)self pureGeometry];
  v15 = v14;
  if (v14)
  {
    [v14 transform];
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
  }

  v16 = [(CRLCanvasAbstractLayout *)self parent];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [(CRLCanvasAbstractLayout *)self parent];
    v19 = [v18 geometryInParent];
    v20 = v19;
    if (v19)
    {
      [v19 transform];
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
  v29 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  [v29 getCardinalPositionWithParentTransformFromType:1];
  v21 = [CRLBezierPath bezierPathWithStart:*&v28 + v25 * *&v27 + *&v26 * v23 end:*(&v28 + 1) + v25 * *(&v27 + 1) + *(&v26 + 1) * v23, v30, v31];

LABEL_28:

  return v21;
}

- (id)getClippedTailPortion
{
  v3 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];

  if (!v3)
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

  v9 = [(CRLCanvasLayout *)self pureGeometry];
  [v9 size];
  if (v10 == 0.0 || fabs(v10) < 0.00999999978)
  {
    v11 = [(CRLCanvasLayout *)self pureGeometry];
    [v11 size];
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
  v14 = [(CRLCanvasLayout *)self pureGeometry];
  v15 = v14;
  if (v14)
  {
    [v14 transform];
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
  }

  v16 = [(CRLCanvasAbstractLayout *)self parent];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [(CRLCanvasAbstractLayout *)self parent];
    v19 = [v18 geometryInParent];
    v20 = v19;
    if (v19)
    {
      [v19 transform];
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
  v29 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v29 getCardinalPositionWithParentTransformFromType:1];
  v21 = [CRLBezierPath bezierPathWithStart:*&v28 + v25 * *&v27 + *&v26 * v23 end:*(&v28 + 1) + v25 * *(&v27 + 1) + *(&v26 + 1) * v23, v30, v31];

LABEL_28:

  return v21;
}

- (CGRect)orthoRectOfLayout:(id)a3 outset:(double)a4
{
  v6 = a3;
  v7 = [v6 centerForConnecting];
  v9 = v8;
  v11 = v10;
  v45 = 0;
  v46 = &v45;
  v47 = 0x5012000000;
  v48 = sub_10030D2A8;
  v49 = nullsub_44;
  v50 = &unk_1016A8115;
  v56 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v7, v12);
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v54 = v16;
  [v6 boundsForStandardKnobs];
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
  v41 = a4 + 10.0 + v19;
  v35 = self;
  v20 = v6;
  v21 = 0;
  v42 = a4;
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

- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3] clipPath:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  for (i = 0; i != 6; i += 2)
  {
    v12 = sub_10011F340(a5[i / 2].x, a5[i / 2].y, 10.0);
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
  if (v9)
  {
    [(CRLConnectionLineAbstractLayout *)self outsetFrom];
    [(CRLConnectionLineOrthogonalLayout *)self orthoRectOfLayout:v9 outset:?];
    [v9 centerForConnecting];
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

  if (v10)
  {
    [(CRLConnectionLineAbstractLayout *)self outsetTo];
    [(CRLConnectionLineOrthogonalLayout *)self orthoRectOfLayout:v10 outset:?];
    [v10 centerForConnecting];
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
  if (!v9)
  {
    v74 = 0;
    v72 = 0;
    if (v10)
    {
      goto LABEL_33;
    }

LABEL_35:
    v85 = 0;
    v83 = 0.0;
    goto LABEL_36;
  }

  v64 = [v9 pureGeometry];
  [v64 frame];
  [(CRLConnectionLineOrthogonalLayout *)self outsetFromMagnetPosition:v19 withRect:v20 controlPoint:v65 distance:v66, v67, v68, v62, v63, v61];
  sub_1002BC97C(v69, v70, 10.0);
  v72 = v71;
  v74 = v73;

  if (!v10)
  {
    goto LABEL_35;
  }

LABEL_33:
  v75 = [v10 pureGeometry];
  [v75 frame];
  [(CRLConnectionLineOrthogonalLayout *)self outsetFromMagnetPosition:v15 withRect:v16 controlPoint:v76 distance:v77, v78, v79, v62, v63, v61];
  sub_1002BC97C(v80, v81, 10.0);
  v83 = v82;
  v85 = v84;

LABEL_36:
  x = a5->x;
  y = a5->y;
  v88 = a5[1].x;
  v89 = a5[1].y;
  if (sub_100120090(a5->x, y, v88, v89) >= 10.0 && (v90 = a5[2].x, v91 = a5[2].y, sub_100120090(v90, v91, v88, v89) >= 10.0))
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
    [v92 moveToPoint:{a5->x, a5->y}];
    [v92 lineToPoint:{a5->x, a5[1].y}];
    [v92 lineToPoint:{a5[1].x, a5[1].y}];
    [v92 lineToPoint:{a5[1].x, a5->y}];
    [v92 lineToPoint:{a5[2].x, a5[2].y}];
  }

  else
  {
    v92 = +[CRLBezierPath bezierPath];
    [v92 moveToPoint:{a5->x, a5->y}];
    [v92 lineToPoint:{a5[2].x, a5[2].y}];
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
    v4 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    v5 = [(CRLConnectionLineAbstractLayout *)self tailMagnetType];
    if (!v5)
    {
      v6 = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];

      if (v6)
      {
        v7 = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];

        v5 = [(CRLConnectionLineAbstractLayout *)self tailNearestMagnetTypeForRouting];
        v4 = v7;
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    v9 = [(CRLConnectionLineAbstractLayout *)self headMagnetType];
    if (!v9)
    {
      v9 = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];

      if (v9)
      {
        v10 = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];

        v9 = [(CRLConnectionLineAbstractLayout *)self headNearestMagnetTypeForRouting];
        v8 = v10;
      }
    }

    if (!v4)
    {
      goto LABEL_23;
    }

    if (!v8)
    {
      goto LABEL_23;
    }

    [v4 transform];
    if (sub_1001399C0(v17) != 0.0)
    {
      goto LABEL_23;
    }

    [v8 transform];
    if (sub_1001399C0(v17) != 0.0)
    {
      goto LABEL_23;
    }

    if (v9 == 3 && v5 == 5)
    {
      [v4 cardinalWestPosition];
      v12 = v11;
      [v8 cardinalEastPosition];
    }

    else
    {
      v14 = 20.0;
      if (v9 != 5 || v5 != 3)
      {
        goto LABEL_20;
      }

      [v8 cardinalWestPosition];
      v12 = v15;
      [v4 cardinalEastPosition];
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

- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = objc_opt_class();
  v13 = *(&self->super.super.mCachedEditableBezierPathSource + 3);
  v14 = v13;
  if (!v13)
  {
    v6 = [(CRLShapeLayout *)self shapeInfo];
    v14 = [v6 pathSource];
  }

  v15 = sub_100014370(v12, v14);
  if (!v13)
  {
  }

  v16 = *(&self->super.super.mCachedPathSource + 3);
  if (v16)
  {
    v17 = v16;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
  }

  else
  {
    v18 = [(CRLCanvasLayout *)self info];
    v17 = [v18 geometry];

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  [v17 transform];
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

- (CGPoint)p_getOverriddenControlPointWithPointA:(CGPoint)a3 pointB:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = sub_100120ABC(a3.x, a3.y, a4.x, a4.y, 0.5);
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
  v13 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  [v13 frame];
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
    v30 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [v30 frame];
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

- (CGPoint)p_getControlKnobPositionToMakeSingleCornerIfPossible:(CGPoint)a3 pointA:(CGPoint)a4 pointB:(CGPoint)a5
{
  y = a4.y;
  x = a4.x;
  v7 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(CRLConnectionLineAbstractLayout *)self tailMagnetType];
  v126 = x;
  if (!v16)
  {
    v17 = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];

    if (!v17)
    {
      goto LABEL_5;
    }

    v18 = [(CRLConnectionLineAbstractLayout *)self tailNearestLayoutForRouting];
    [v18 frame];
    v9 = v19;
    v11 = v20;
    v13 = v21;
    v15 = v22;

    v16 = [(CRLConnectionLineAbstractLayout *)self tailNearestMagnetTypeForRouting];
  }

  v17 = v16;
LABEL_5:
  v23 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  [v23 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [(CRLConnectionLineAbstractLayout *)self headMagnetType];
  if (v32)
  {
    v33 = v32;
    v127 = 0;
    v34 = v17 != 0;
  }

  else
  {
    v33 = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];

    if (v33)
    {
      v23 = [(CRLConnectionLineAbstractLayout *)self headNearestLayoutForRouting];
      [v23 frame];
      v25 = v40;
      v27 = v41;
      v29 = v42;
      v31 = v43;

      v33 = [(CRLConnectionLineAbstractLayout *)self headNearestMagnetTypeForRouting];
    }

    v127 = v33 == 0;
    v34 = v17 != 0;
    if (!v33 && v17)
    {
      v33 = 0;
      v37 = 0;
      v39 = v17 == 1;
      v34 = 1;
      v127 = 1;
      v36 = 1;
      goto LABEL_29;
    }
  }

  if (v33)
  {
    v35 = v17 == 0;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  v37 = v33 == 1;
  if (v33 != 1 || v17 != 1)
  {
    if (v17 == 1)
    {
      v39 = 1;
      if (v33 > 3)
      {
        if (v33 == 4)
        {
          v37 = 0;
          v123 = 0;
          v36 = v31 + v27 < v11;
          goto LABEL_16;
        }

        if (v33 == 5)
        {
          if (v25 > v9 + v13)
          {
            v37 = 0;
            v123 = 0;
            v36 = 1;
            v33 = 5;
            goto LABEL_16;
          }

          goto LABEL_67;
        }
      }

      else
      {
        if (v33 == 2)
        {
          v37 = 0;
          v123 = 0;
          v36 = v27 > v11 + v15;
          goto LABEL_16;
        }

        if (v33 == 3)
        {
          if (v29 + v25 < v9)
          {
            v37 = 0;
            v123 = 0;
            v36 = 1;
            v33 = 3;
            goto LABEL_16;
          }

LABEL_67:
          v123 = 0;
          v36 = v27 > v11 + v15 && v33 == 2;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_29:
    v44 = (v17 & 0xFFFFFFFFFFFFFFFELL) == 4 || (v17 & 0xFFFFFFFFFFFFFFFELL) == 2;
    if (v44 && v37)
    {
      if (v17 == 5 && v9 > v29 + v25 || v17 == 3 && v9 + v13 < v25)
      {
        v37 = 1;
LABEL_40:
        v36 = 1;
        goto LABEL_88;
      }

      v36 = v11 > v31 + v27 && v17 == 2;
      if (v17 == 4)
      {
        v36 = v11 + v15 < v27;
        v38 = v126;
        v123 = 0;
        if (!v39)
        {
          v125 = v11 + v15 < v27;
          v48 = 0;
          v36 = 0;
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

    if (v33 == 0 || !v34)
    {
      goto LABEL_88;
    }

    v36 = 0;
    if (v33 > 3)
    {
      if (v33 == 4)
      {
        if ((v17 == 5 || v17 == 3) && v31 + v27 < v11)
        {
          goto LABEL_40;
        }

        v36 = 0;
        v123 = 0;
        v45 = 0;
        v33 = 4;
      }

      else
      {
        if (v33 != 5)
        {
          goto LABEL_88;
        }

        if (v17 != 4 && v17 != 2)
        {
          v36 = 0;
          goto LABEL_88;
        }

        v123 = 0;
        v45 = 0;
        v36 = v25 > v9 + v13;
        v33 = 5;
      }
    }

    else if (v33 == 2)
    {
      if ((v17 == 5 || v17 == 3) && v27 > v11 + v15)
      {
        goto LABEL_40;
      }

      v36 = 0;
      v123 = 0;
      v45 = 0;
      v33 = 2;
    }

    else
    {
      if (v33 != 3)
      {
        goto LABEL_88;
      }

      if ((v17 == 4 || v17 == 2) && v29 + v25 < v9)
      {
        goto LABEL_40;
      }

      v36 = 0;
      v123 = 0;
      v45 = 0;
      v33 = 3;
    }

    v38 = v126;
    if (!v39)
    {
      goto LABEL_96;
    }

    goto LABEL_89;
  }

  v36 = 1;
  v33 = 1;
  v37 = 1;
  v123 = 1;
LABEL_16:
  v38 = v126;
LABEL_89:
  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v50 = v49;
  v52 = v51;
  v23 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v23 cardinalNorthPosition];
  if (!sub_10011ED38(v50, v52, v53, v54))
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v56 = v55;
    v58 = v57;
    v59 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [v59 cardinalSouthPosition];
    v125 = v36;
    LODWORD(v45) = v127 & sub_10011ED38(v56, v58, v60, v61);
    if (v45 & 1) != 0 || ((v37 ^ 1))
    {
      LOBYTE(v37) = v45 & v37;

      goto LABEL_109;
    }

    v119 = v59;
    v48 = 1;
    v36 = 1;
    goto LABEL_97;
  }

  v45 = 1;
  if (v127)
  {
    v125 = v36;
    goto LABEL_109;
  }

  v127 = 0;
LABEL_96:
  v125 = v36;
  v48 = 0;
  v62 = v37;
  v36 = v45;
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
  v67 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v67 cardinalNorthPosition];
  if (sub_10011ED38(v64, v66, v68, v69))
  {
    LOBYTE(v45) = v17 == 0;
    goto LABEL_101;
  }

  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v71 = v70;
  v73 = v72;
  v74 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v74 cardinalSouthPosition];
  if (sub_10011ED38(v71, v73, v75, v76))
  {
    LOBYTE(v45) = v17 == 0;

LABEL_101:
    if (v48)
    {
LABEL_102:

      if ((v36 & 1) == 0)
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
  if ((v36 & 1) == 0)
  {
    v78 = 0;
    goto LABEL_116;
  }

LABEL_109:

  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v80 = v79;
  v82 = v81;
  v23 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v23 cardinalEastPosition];
  if (!sub_10011ED38(v80, v82, v83, v84))
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v87 = v86;
    v89 = v88;
    v36 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [v36 cardinalWestPosition];
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
    v111 = a3.x;
    v112 = a3.y;
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
    v96 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [v96 cardinalEastPosition];
    if (sub_10011ED38(v93, v95, v97, v98))
    {
      v85 = v17 == 0;
    }

    else
    {
      [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
      v100 = v99;
      v102 = v101;
      v103 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
      [v103 cardinalWestPosition];
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

      v85 = v17 == 0;
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
    v106 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    [v106 centerForConnecting];
    if (v38 == v107 || vabdd_f64(v38, v107) < 0.00999999978)
    {
    }

    else
    {
      v108 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
      [v108 centerForConnecting];
      v110 = v109;

      if (a5.x != v110)
      {
        v111 = v38;
        v112 = a5.y;
        if (vabdd_f64(a5.x, v110) < 0.00999999978)
        {
          goto LABEL_164;
        }

        v113 = [(CRLConnectionLineAbstractLayout *)self connectedFrom:v38];
        [v113 centerForConnecting];
        if (y == v114 || vabdd_f64(y, v114) < 0.00999999978)
        {

          v111 = a5.x;
          v112 = y;
          goto LABEL_164;
        }

        v115 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
        [v115 centerForConnecting];
        v117 = v116;

        if (a5.y != v117)
        {
          v111 = a3.x;
          v112 = a3.y;
          v118 = a5.x;
          if (vabdd_f64(a5.y, v117) >= 0.00999999978)
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
        v111 = a5.x;
        goto LABEL_164;
      }
    }

LABEL_154:
    v111 = v38;
    v112 = a5.y;
    goto LABEL_164;
  }

  if (v17 == 2 || v17 == 4 || (v45 & 1) != 0)
  {
    goto LABEL_154;
  }

  if (v17 == 3)
  {
    goto LABEL_157;
  }

  v112 = y;
  v118 = a5.x;
  if (v17 == 5 || v85)
  {
    v111 = a5.x;
    goto LABEL_164;
  }

  if (v33 > 3)
  {
    if (v33 != 5)
    {
      v111 = a3.x;
      v112 = a3.y;
      if (v33 != 4)
      {
        goto LABEL_164;
      }

      goto LABEL_144;
    }

    goto LABEL_154;
  }

  v111 = a5.x;
  if (v33 != 2)
  {
    v111 = a3.x;
    v112 = a3.y;
    if (v33 == 3)
    {
      goto LABEL_154;
    }
  }

LABEL_164:
  result.y = v112;
  result.x = v111;
  return result;
}

- (CGPoint)p_getControlKnobPositionToSnapToAnyExistingSetControlKnobs:(CGPoint)a3 pointA:(CGPoint)a4 pointB:(CGPoint)a5
{
  y = a5.y;
  v6 = a3.y;
  x = a3.x;
  v9 = sub_100120ABC(a4.x, a4.y, a5.x, a5.y, 0.5);
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
  v5 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  v6 = [v5 connectedLayouts];

  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v6);
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
              v14 = [(CRLConnectionLineAbstractLayout *)v11 connectionLineInfo];
              v15 = [v14 connectionLinePathSource];

              [v15 getControlKnobPosition:12];
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

      v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
  v7 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v7 cardinalNorthPosition];
  v10 = sub_10011ED38(v4, v6, v8, v9);

  return v10;
}

- (BOOL)p_tailComingFromSouth
{
  [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:*(&self->mLastPtA.x + 3) forLineEnd:*(&self->mLastPtA.y + 3), *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
  v4 = v3;
  v6 = v5;
  v7 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  [v7 cardinalSouthPosition];
  v10 = sub_10011ED38(v4, v6, v8, v9);

  return v10;
}

- (BOOL)p_connectionLineComingFromSideOfOriginObject:(id)a3
{
  v4 = a3;
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

  v9 = [(CRLConnectionLineAbstractLayout *)self headMagnetType];
  v11 = *(&self->mLastPtA.x + 3);
  v10 = *(&self->mLastPtA.y + 3);
  if (v9 == 1)
  {
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:v11 forLineEnd:v10, *(&self->mOverriddenControlPoint.x + 3), *(&self->mOverriddenControlPoint.y + 3)];
    v11 = v12;
    v10 = v13;
  }

  if ([v4 tailMagnetType] == 1)
  {
    [v4 headMagnetCanvasPosition];
    v15 = v14;
    v17 = v16;
    [v4 tailMagnetCanvasPosition];
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:10 withTail:v15 forLineEnd:v17, v18, v19];
  }

  else
  {
    [v4 tailMagnetCanvasPosition];
  }

  v22 = v20;
  v23 = v21;
  if ([v4 headMagnetType] == 1)
  {
    [v4 headMagnetCanvasPosition];
    v25 = v24;
    v27 = v26;
    [v4 tailMagnetCanvasPosition];
    [(CRLConnectionLineOrthogonalLayout *)self p_getLineEndPointAdjustedToCardinalForClineLayout:self withHead:11 withTail:v25 forLineEnd:v27, v28, v29];
  }

  else
  {
    [v4 headMagnetCanvasPosition];
  }

  v32 = v30;
  v33 = v31;
  v34 = [v4 connectedTo];
  v35 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
  if (v34 == v35 && sub_100120090(v32, v33, v11, v10) < 5.0)
  {
    v36 = 1;
  }

  else
  {
    v37 = [v4 connectedFrom];
    v38 = [(CRLConnectionLineAbstractLayout *)self connectedTo];
    if (v37 == v38 && sub_100120090(v22, v23, v11, v10) < 5.0)
    {
      v36 = 1;
    }

    else
    {
      v39 = [v4 connectedTo];
      v40 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
      if (v39 == v40 && sub_100120090(v32, v33, v6, v8) < 5.0)
      {
        v36 = 1;
      }

      else
      {
        v41 = [v4 connectedFrom];
        v42 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
        v36 = v41 == v42 && sub_100120090(v22, v23, v6, v8) < 5.0;
      }
    }
  }

  return v36;
}

- (CGPoint)p_getLineEndPointAdjustedToCardinalForClineLayout:(id)a3 withHead:(CGPoint)a4 withTail:(CGPoint)a5 forLineEnd:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v11 = a3;
  v12 = v11;
  if (a6 == 11)
  {
    x = v10;
    v13 = v9;
  }

  else
  {
    v13 = y;
  }

  if (v9 > y && a6 == 11)
  {
    v16 = [v11 connectedTo];
    [v16 cardinalNorthPosition];
    goto LABEL_17;
  }

  if (y > v9 && a6 == 10)
  {
    v16 = [v11 connectedFrom];
    [v16 cardinalNorthPosition];
    goto LABEL_17;
  }

  if (y > v9 && a6 == 11)
  {
    v16 = [v11 connectedTo];
    [v16 cardinalSouthPosition];
LABEL_17:
    x = v17;
    v13 = v18;

    goto LABEL_18;
  }

  if (v9 > y && a6 == 10)
  {
    v16 = [v11 connectedFrom];
    [v16 cardinalSouthPosition];
    goto LABEL_17;
  }

LABEL_18:

  v19 = x;
  v20 = v13;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)axisSnapPoint:(CGPoint)result toXs:()vector<double toYs:(std:()vector<double :(std:(double)a6 :allocator<double>> *)a5 allocator<double>> *)a4 withThreshold:
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
  if (v20 < a6)
  {
    result.x = v21;
  }

  v22 = -v15;
  if (v15 >= 0.0)
  {
    v22 = v15;
  }

  v23 = result.y - v15;
  if (v22 < a6)
  {
    result.y = v23;
  }

  return result;
}

- (void)addEndpointSnapsToXs:(void *)a3 andYs:(void *)a4
{
  v7 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  if (v7)
  {
    v8 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    v9 = [v8 parent];
    v10 = [(CRLCanvasAbstractLayout *)self parent];
    if (v9 == v10)
    {
      v11 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
  if (v12)
  {
    v13 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    v14 = [v13 parent];
    v15 = [(CRLCanvasAbstractLayout *)self parent];
    if (v14 == v15)
    {
      v16 = [(CRLConnectionLineAbstractLayout *)self connectedFrom];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
  v18 = v17;
  if (v11)
  {
    [v11 centerForConnecting];
    v45.f64[0] = v19;
    v45.f64[1] = v20;
    if (v16)
    {
LABEL_15:
      [v16 centerForConnecting];
      v44.f64[0] = v21;
      v44.f64[1] = v22;
      goto LABEL_24;
    }
  }

  else
  {
    [v17 getControlKnobPosition:10];
    v37 = v24;
    v39 = v23;
    v25 = [(CRLCanvasLayout *)self pureGeometry];
    v26 = v25;
    if (v25)
    {
      [v25 transform];
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

    if (v16)
    {
      goto LABEL_15;
    }
  }

  [v18 getControlKnobPosition:11];
  v38 = v31;
  v40 = v30;
  v32 = [(CRLCanvasLayout *)self pureGeometry];
  v33 = v32;
  if (v32)
  {
    [v32 transform];
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
  sub_10030DE08(a3, &v45);
  sub_10030DE08(a4, &v45.f64[1]);
  sub_10030DE08(a3, &v44);
  sub_10030DE08(a4, &v44.f64[1]);
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v5 = [(CRLConnectionLineAbstractLayout *)self connectedPathSource];
  [v5 getControlKnobPosition:a3];
  v7 = v6;
  v23.f64[0] = v8;
  if (a3 == 12)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    [(CRLConnectionLineOrthogonalLayout *)self addEndpointSnapsToXs:&v38 andYs:&v35];
    memset(&v34, 0, sizeof(v34));
    v9 = [(CRLCanvasLayout *)self pureGeometry];
    v10 = v9;
    if (v9)
    {
      [v9 transform];
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

- (void)dynamicallyMovedSmartShapeKnobTo:(CGPoint)a3 withTracker:(id)a4
{
  y = a3.y;
  x = a3.x;
  v53 = a4;
  v5 = [v53 knob];
  v6 = [v5 tag];

  if (v6 == 12)
  {
    v7 = [(CRLCanvasLayout *)self originalGeometry];
    v8 = v7;
    if (v7)
    {
      [v7 transform];
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
    v16 = [(CRLCanvasAbstractLayout *)self parent];
    v17 = [v16 children];

    v18 = [v17 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v18)
    {
      v19 = *v64;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v64 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v63 + 1) + 8 * i);
          if (v21 != self)
          {
            v22 = objc_opt_class();
            v23 = sub_100014370(v22, v21);
            v24 = v23;
            if (v23)
            {
              v25 = [v23 path];
              memset(&v73, 0, sizeof(v73));
              v26 = [v24 pureGeometry];
              v27 = v26;
              if (v26)
              {
                [v26 transform];
              }

              else
              {
                memset(&v73, 0, sizeof(v73));
              }

              [v25 elementAtIndex:0 associatedPoints:&v55];
              *&v55.a = vaddq_f64(*&v73.tx, vmlaq_n_f64(vmulq_n_f64(*&v73.c, v55.b), *&v73.a, v55.a));
              v28 = [v25 elementCount];
              if (v28 >= 2)
              {
                for (j = 1; v28 != j; ++j)
                {
                  [v25 elementAtIndex:j associatedPoints:&v62];
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

        v18 = [v17 countByEnumeratingWithState:&v63 objects:v74 count:16];
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
    v35 = [v53 icc];
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

    v40 = [(CRLCanvasLayout *)self originalGeometry];
    v41 = v40;
    if (v40)
    {
      [v40 transform];
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
  [(CRLConnectionLineAbstractLayout *)&v54 dynamicallyMovedSmartShapeKnobTo:v53 withTracker:*&v15, *&v44];
}

- (CGPoint)outsetFromMagnetPosition:(CGPoint)a3 withRect:(CGRect)a4 controlPoint:(CGPoint)a5 distance:(double)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v8 = a4.origin.y;
  v9 = a4.origin.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = sub_100120414(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
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
    if (y <= v8 - a6 || y > v10 + 2.0)
    {
      v10 = v8 - a6;
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
      if (y >= v24 + a6 || y < v10 + -2.0)
      {
        v10 = v24 + a6;
      }

      else
      {
        v10 = y;
      }
    }

    else if (sub_10011FA28(v34, v33, v21, v22, v9, v8, v9, v24))
    {
      if (x <= v9 - a6 || x > v11 + 2.0)
      {
        v11 = v9 - a6;
      }

      else
      {
        v11 = x;
      }
    }

    else if (x >= v32 + a6 || x < v11 + -2.0)
    {
      v11 = v32 + a6;
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