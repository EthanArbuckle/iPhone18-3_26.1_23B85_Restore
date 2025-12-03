@interface CRLBezierPathSimplifier
+ (id)cleanPathForPath:(id)path;
+ (id)simplifiedPathWithRawPath:(id)path threshold:(double)threshold;
- (BOOL)findApproximationForPointsWithTailElementType:(int64_t)type;
- (CGPoint)controlPoint1;
- (CGPoint)controlPoint2;
- (CGPoint)startOfSubpath;
- (CRLBezierPathSimplifier)initWithPath:(id)path threshold:(double)threshold;
- (id).cxx_construct;
- (void)addPointsForElementOfType:(int64_t)type;
- (void)outputCurrentSolution;
- (void)resetSolution;
- (void)run;
- (void)setAssociatedPoints:(CRLPointVector3 *)points;
- (void)setPointsToSimplify:(void *)simplify;
@end

@implementation CRLBezierPathSimplifier

- (CRLBezierPathSimplifier)initWithPath:(id)path threshold:(double)threshold
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = CRLBezierPathSimplifier;
  v8 = [(CRLBezierPathSimplifier *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, path);
    v9->_threshold = threshold;
    v10 = objc_alloc_init(CRLBezierPath);
    simplifiedPath = v9->_simplifiedPath;
    v9->_simplifiedPath = v10;
  }

  return v9;
}

- (void)addPointsForElementOfType:(int64_t)type
{
  pointsToSimplify = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  v72 = *pointsToSimplify;
  v73 = pointsToSimplify[1];
  v6 = *([(CRLBezierPathSimplifier *)self pointsToSimplify]+ 1);
  v7 = *(v6 - 16);
  v8 = *(v6 - 8);
  if (type == 2)
  {
    v9 = 0;
    v10 = *(v6 - 8);
    v11 = *(v6 - 16);
    v12 = v10;
    v13 = v11;
    do
    {
      v14 = ([(CRLBezierPathSimplifier *)self associatedPoints]+ v9);
      v15 = v14[1];
      v11 = fmin(v11, *v14);
      v10 = fmin(v10, v15);
      v13 = fmax(v13, *v14);
      v12 = fmax(v12, v15);
      v9 += 16;
    }

    while (v9 != 48);
    if (!sub_10011ECC8(v11, v10, v13, v12))
    {
      associatedPoints = [(CRLBezierPathSimplifier *)self associatedPoints];
      y = associatedPoints->v[0].y;
      x = associatedPoints->v[0].x;
      associatedPoints2 = [(CRLBezierPathSimplifier *)self associatedPoints];
      v19 = associatedPoints2->v[1].x;
      v20 = associatedPoints2->v[1].y;
      associatedPoints3 = [(CRLBezierPathSimplifier *)self associatedPoints];
      v22 = associatedPoints3->v[2].x;
      v23 = associatedPoints3->v[2].y;
      [(CRLBezierPathSimplifier *)self threshold];
      v25 = v24;
      [(CRLBezierPathSimplifier *)self threshold];
      v70 = v26;
      pointsToSimplify2 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
      v77 = 0uLL;
      v78 = 0;
      v71 = +[CRLBezierPath bezierPath];
      [v71 moveToPoint:{v7, v8}];
      [v71 curveToPoint:v22 controlPoint1:v23 controlPoint2:{x, y, v19, v20}];
      v28 = v25;
      v29 = [v71 bezierPathByFlatteningPathWithFlatness:(v28 * 0.5)];
      elementCount = [v29 elementCount];
      if (elementCount)
      {
        v32 = 0;
        v33 = v70 * 4.0;
        v75 = CGPointZero;
        *&v31 = 67109378;
        v69 = v31;
        do
        {
          *__p = xmmword_1014629F0;
          v85 = xmmword_1014629F0;
          v86 = xmmword_1014629F0;
          v34 = [v29 elementAtIndex:v32 associatedPoints:{__p, v69}];
          if (v34 | v32)
          {
            if (!v32 || v34 != 1)
            {
              v43 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10132F69C();
              }

              v44 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109890;
                *&buf[4] = v43;
                *&buf[8] = 2082;
                *&buf[10] = "void CRLGetCGPointsOnFlattenedCubicBezierSegment(CGPoint, CGPoint, CGPoint, CGPoint, float, float, std::vector<CGPoint> &)";
                v80 = 2082;
                v81 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm";
                v82 = 1024;
                v83 = 59;
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Unexpected element/index combination in flattened path", buf, 0x22u);
                if (qword_101AD5A10 != -1)
                {
                  sub_10132F6C4();
                }
              }

              v45 = off_1019EDA68;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v48 = +[CRLAssertionHandler packedBacktraceString];
                *buf = v69;
                *&buf[4] = v43;
                *&buf[8] = 2114;
                *&buf[10] = v48;
                _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
              }

              v46 = [NSString stringWithUTF8String:"void CRLGetCGPointsOnFlattenedCubicBezierSegment(CGPoint, CGPoint, CGPoint, CGPoint, float, float, std::vector<CGPoint> &)"];
              v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
              [CRLAssertionHandler handleFailureInFunction:v46 file:v47 lineNumber:59 isFatal:0 description:"Unexpected element/index combination in flattened path"];

              goto LABEL_23;
            }

            *buf = *__p;
            v35 = *__p;
            if (sub_10011F068(v75.x, v75.y, *__p, *&__p[1]) > (v33 * v33))
            {
              v36 = v75.x;
              v37 = v75.y;
              v38 = *&v35;
              v39 = *(&v35 + 1);
              sub_1001DD4B0(&v77, v36, v37, v38, v39, v33);
              v41 = *(&v77 + 1);
              for (i = v77; i != v41; ++i)
              {
                v76 = vaddq_f64(vmulq_n_f64(v75, 1.0 - *i), vmulq_n_f64(*buf, *i));
                sub_1000DACAC(pointsToSimplify2, &v76);
              }
            }

            sub_1000DACAC(pointsToSimplify2, buf);
            v42 = *buf;
          }

          else
          {
            v42 = *__p;
          }

          v75 = v42;
LABEL_23:
          ++v32;
        }

        while (v32 != elementCount);
      }

      v51 = v77;
      if (v77)
      {
        *(&v77 + 1) = v77;
LABEL_46:
        operator delete(v51);
      }
    }
  }

  else
  {
    v77 = *[(CRLBezierPathSimplifier *)self associatedPoints];
    if (type != 1)
    {
      if (type == 3)
      {
        [(CRLBezierPathSimplifier *)self startOfSubpath];
        *&v77 = v49;
        *(&v77 + 1) = v50;
      }

      else
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132F5D8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10132F5EC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132F674();
        }

        v52 = off_1019EDA68;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v53 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier addPointsForElementOfType:]"];
        v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
        [CRLAssertionHandler handleFailureInFunction:v53 file:v54 lineNumber:314 isFatal:0 description:"Unexpected Bezier element type"];
      }
    }

    pointsToSimplify3 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
    v56 = v77;
    if (!sub_10011ECC8(*(pointsToSimplify3[1] - 16), *(pointsToSimplify3[1] - 8), *&v77, *(&v77 + 1)))
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v85 = 0;
      [(CRLBezierPathSimplifier *)self threshold];
      v57 = *(&v77 + 1);
      v58 = *&v77;
      v59 = v8;
      v60 = v7;
      v62 = v61;
      sub_1001DD4B0(__p, v60, v59, v58, v57, v62);
      v63 = __p[0];
      for (j = __p[1]; v63 != j; ++v63)
      {
        v65 = *v63;
        pointsToSimplify4 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
        v67 = 1.0 - v65;
        v76.f64[0] = v7 * v67 + *&v56 * v65;
        v76.f64[1] = v8 * v67 + *(&v56 + 1) * v65;
        sub_1000DACAC(pointsToSimplify4, &v76);
      }

      sub_1000DACAC([(CRLBezierPathSimplifier *)self pointsToSimplify], &v77);
      v51 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        goto LABEL_46;
      }
    }
  }

  pointsToSimplify5 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  [(CRLBezierPathSimplifier *)self setTailLength:((pointsToSimplify5[1] - *pointsToSimplify5) >> 4) - ((v73 - v72) >> 4)];
}

- (BOOL)findApproximationForPointsWithTailElementType:(int64_t)type
{
  pointsToSimplify = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  if (pointsToSimplify[1] - *pointsToSimplify <= 0x10uLL)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132F6EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132F700();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132F788();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier findApproximationForPointsWithTailElementType:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:330 isFatal:0 description:"At least 2 points expected"];
  }

  pointsToSimplify2 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  v11 = *pointsToSimplify2;
  v10 = pointsToSimplify2[1];
  if (((v10 - v11) >> 4) == [(CRLBezierPathSimplifier *)self tailLength]+ 1)
  {
    if (type == 2)
    {
      [(CRLBezierPathSimplifier *)self setSolutionElementType:2];
      associatedPoints = [(CRLBezierPathSimplifier *)self associatedPoints];
      [(CRLBezierPathSimplifier *)self setControlPoint1:associatedPoints->v[0].x, associatedPoints->v[0].y];
      associatedPoints2 = [(CRLBezierPathSimplifier *)self associatedPoints];
      [(CRLBezierPathSimplifier *)self setControlPoint2:associatedPoints2->v[1].x, associatedPoints2->v[1].y];
    }

    else
    {
      [(CRLBezierPathSimplifier *)self setSolutionElementType:1];
    }
  }

  else
  {
    v14 = [[CRLPointSequenceCubicBezierApproximator alloc] initWithDataPoints:&self->_pointsToSimplify];
    [(CRLPointSequenceCubicBezierApproximator *)v14 run];
    [(CRLPointSequenceCubicBezierApproximator *)v14 approximationError];
    v16 = v15;
    [(CRLBezierPathSimplifier *)self threshold];
    if (v16 > v17)
    {

      return 0;
    }

    [(CRLBezierPathSimplifier *)self setSolutionElementType:2];
    [(CRLPointSequenceCubicBezierApproximator *)v14 controlPoint1];
    [(CRLBezierPathSimplifier *)self setControlPoint1:?];
    [(CRLPointSequenceCubicBezierApproximator *)v14 controlPoint2];
    [(CRLBezierPathSimplifier *)self setControlPoint2:?];
  }

  [(CRLBezierPathSimplifier *)self setTailLength:0];
  return 1;
}

- (void)resetSolution
{
  [(CRLBezierPathSimplifier *)self setSolutionElementType:3];
  [(CRLBezierPathSimplifier *)self setControlPoint2:INFINITY, INFINITY];

  [(CRLBezierPathSimplifier *)self setControlPoint1:INFINITY, INFINITY];
}

- (void)outputCurrentSolution
{
  pointsToSimplify = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  v4 = pointsToSimplify[1] - *pointsToSimplify;
  if ([(CRLBezierPathSimplifier *)self tailLength]+ 2 > v4 >> 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132F7B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132F7C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132F84C();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v6 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier outputCurrentSolution]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:366 isFatal:0 description:"At least 2 points expected before the tail"];
  }

  v8 = *([(CRLBezierPathSimplifier *)self pointsToSimplify]+ 1);
  v9 = v8 - 16 * [(CRLBezierPathSimplifier *)self tailLength];
  v11 = *(v9 - 16);
  v10 = *(v9 - 8);
  if ([(CRLBezierPathSimplifier *)self solutionElementType]== 2)
  {
    [(CRLBezierPathSimplifier *)self controlPoint1];
    if (!sub_100120888(v12, v13) || ([(CRLBezierPathSimplifier *)self controlPoint2], !sub_100120888(v14, v15)))
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132F94C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132F974();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132F9FC();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v17 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier outputCurrentSolution]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:369 isFatal:0 description:"Undefined cubic control points"];
    }

    simplifiedPath = [(CRLBezierPathSimplifier *)self simplifiedPath];
    [(CRLBezierPathSimplifier *)self controlPoint1];
    v21 = v20;
    v23 = v22;
    [(CRLBezierPathSimplifier *)self controlPoint2];
    [simplifiedPath curveToPoint:v11 controlPoint1:v10 controlPoint2:{v21, v23, v24, v25}];
  }

  else if ([(CRLBezierPathSimplifier *)self solutionElementType]== 1)
  {
    simplifiedPath = [(CRLBezierPathSimplifier *)self simplifiedPath];
    [simplifiedPath lineToPoint:{v11, v10}];
  }

  else
  {
    v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132F874();
    }

    v27 = off_1019EDA68;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10132F89C([(CRLBezierPathSimplifier *)self solutionElementType], buf, v26, v27);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132F924();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    simplifiedPath = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier outputCurrentSolution]"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
    [CRLAssertionHandler handleFailureInFunction:simplifiedPath file:v29 lineNumber:374 isFatal:0 description:"Unexpected solution element type: %d", [(CRLBezierPathSimplifier *)self solutionElementType]];
  }

  pointsToSimplify2 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  v31 = *[(CRLBezierPathSimplifier *)self pointsToSimplify];
  v32 = *([(CRLBezierPathSimplifier *)self pointsToSimplify]+ 1);
  v33 = v32 - 16 * [(CRLBezierPathSimplifier *)self tailLength]- 16 - v31;
  if (v33)
  {
    v34 = &v31[v33];
    v35 = pointsToSimplify2[1];
    v36 = v35 - v34;
    if (v35 != v34)
    {
      memmove(v31, v34, v35 - v34);
    }

    pointsToSimplify2[1] = &v31[v36];
  }

  [(CRLBezierPathSimplifier *)self resetSolution];
}

- (void)run
{
  path = [(CRLBezierPathSimplifier *)self path];
  elementCount = [path elementCount];

  pointsToSimplify = [(CRLBezierPathSimplifier *)self pointsToSimplify];
  pointsToSimplify[1] = *pointsToSimplify;
  if (elementCount)
  {
    v7 = 0;
    *&v6 = 67109378;
    v43 = v6;
    while (1)
    {
      associatedPoints = [(CRLBezierPathSimplifier *)self associatedPoints];
      associatedPoints->v[2] = xmmword_1014629F0;
      associatedPoints2 = [(CRLBezierPathSimplifier *)self associatedPoints];
      associatedPoints2->v[1] = associatedPoints->v[2];
      *[(CRLBezierPathSimplifier *)self associatedPoints]= associatedPoints2->v[1];
      path2 = [(CRLBezierPathSimplifier *)self path];
      v11 = [path2 elementAtIndex:v7 associatedPoints:{-[CRLBezierPathSimplifier associatedPoints](self, "associatedPoints")}];

      v12 = v7 + 1;
      v13 = 1;
      if (elementCount - 1 != v7 && v11 != 3)
      {
        path3 = [(CRLBezierPathSimplifier *)self path];
        v15 = [path3 elementAtIndex:v7 + 1];

        v13 = v15 == 0;
      }

      pointsToSimplify2 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
      v17 = pointsToSimplify2[1];
      if (!v11)
      {
        if (v17 != *pointsToSimplify2)
        {
          v28 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132FAC4();
          }

          v29 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *&buf[4] = v28;
            *v45 = 2082;
            *&v45[2] = "[CRLBezierPathSimplifier run]";
            v46 = 2082;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm";
            v48 = 1024;
            v49 = 392;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Subpath should start with zero points", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132FAEC();
          }

          v30 = off_1019EDA68;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v41 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v43;
            *&buf[4] = v28;
            *v45 = 2114;
            *&v45[2] = v41;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v31 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier run]"];
          v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
          [CRLAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:392 isFatal:0 description:"Subpath should start with zero points"];
        }

        if (v13)
        {
          goto LABEL_50;
        }

        [(CRLBezierPathSimplifier *)self resetSolution];
        associatedPoints3 = [(CRLBezierPathSimplifier *)self associatedPoints];
        [(CRLBezierPathSimplifier *)self setStartOfSubpath:associatedPoints3->v[0].x, associatedPoints3->v[0].y];
        pointsToSimplify3 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
        [(CRLBezierPathSimplifier *)self startOfSubpath];
        *buf = v35;
        *v45 = v36;
        sub_1000DACAC(pointsToSimplify3, buf);
        simplifiedPath = [(CRLBezierPathSimplifier *)self simplifiedPath];
        [(CRLBezierPathSimplifier *)self startOfSubpath];
        [simplifiedPath moveToPoint:?];
        goto LABEL_49;
      }

      if (v17 == *pointsToSimplify2)
      {
        v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10132FA24();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          *&buf[4] = v18;
          *v45 = 2082;
          *&v45[2] = "[CRLBezierPathSimplifier run]";
          v46 = 2082;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm";
          v48 = 1024;
          v49 = 400;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Subpath should have been started", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132FA4C();
        }

        v20 = off_1019EDA68;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v40 = +[CRLAssertionHandler packedBacktraceString];
          *buf = v43;
          *&buf[4] = v18;
          *v45 = 2114;
          *&v45[2] = v40;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v21 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier run]"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
        [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:400 isFatal:0 description:"Subpath should have been started"];
      }

      [(CRLBezierPathSimplifier *)self addPointsForElementOfType:v11];
      if (![(CRLBezierPathSimplifier *)self tailLength])
      {
        break;
      }

      if (![(CRLBezierPathSimplifier *)self findApproximationForPointsWithTailElementType:v11])
      {
        [(CRLBezierPathSimplifier *)self outputCurrentSolution];
        if (![(CRLBezierPathSimplifier *)self findApproximationForPointsWithTailElementType:v11])
        {
          v23 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132FA74();
          }

          v24 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *&buf[4] = v23;
            *v45 = 2082;
            *&v45[2] = "[CRLBezierPathSimplifier run]";
            v46 = 2082;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm";
            v48 = 1024;
            v49 = 407;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d One element should always produce success", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132FA9C();
          }

          v25 = off_1019EDA68;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v42 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v43;
            *&buf[4] = v23;
            *v45 = 2114;
            *&v45[2] = v42;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v26 = [NSString stringWithUTF8String:"[CRLBezierPathSimplifier run]"];
          v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathSimplifier.mm"];
          [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:407 isFatal:0 description:"One element should always produce success"];
        }
      }

      if (v13)
      {
        goto LABEL_45;
      }

LABEL_47:
      if (v11 == 3)
      {
        simplifiedPath = [(CRLBezierPathSimplifier *)self simplifiedPath];
        [simplifiedPath closePath];
LABEL_49:
      }

LABEL_50:
      v7 = v12;
      if (elementCount == v12)
      {
        return;
      }
    }

    if (!v13)
    {
      goto LABEL_47;
    }

    pointsToSimplify4 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
    if (pointsToSimplify4[1] - *pointsToSimplify4 != 16)
    {
LABEL_45:
      [(CRLBezierPathSimplifier *)self outputCurrentSolution];
    }

    pointsToSimplify5 = [(CRLBezierPathSimplifier *)self pointsToSimplify];
    pointsToSimplify5[1] = *pointsToSimplify5;
    goto LABEL_47;
  }
}

+ (id)cleanPathForPath:(id)path
{
  pathCopy = path;
  v4 = objc_alloc_init(CRLBezierPath);
  x = CGPointZero.x;
  y = CGPointZero.y;
  elementCount = [pathCopy elementCount];
  if (elementCount >= 1)
  {
    v8 = 0;
    v21 = y;
    v22 = CGPointZero.x;
    do
    {
      v24 = CGPointZero;
      v25 = v24;
      v23 = v24;
      v9 = [pathCopy elementAtIndex:v8 associatedPoints:{&v23, *&v21, *&v22}];
      if (v9 <= 1)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            v11 = v23.y;
            v10 = v23.x;
            if (!sub_10011ECC8(x, y, v23.x, v23.y))
            {
              if (v8 + 1 >= elementCount || (v12 = [pathCopy elementAtIndex:?], v11 = v23.y, v10 = v23.x, v12 != 3) || !sub_10011ECC8(v23.x, v23.y, v22, v21))
              {
                [(CRLBezierPath *)v4 lineToPoint:v10, v11];
                y = v23.y;
                x = v23.x;
              }
            }
          }
        }

        else
        {
          [(CRLBezierPath *)v4 moveToPoint:v23];
          y = v23.y;
          v13 = v23;
          v21 = v13.y;
          *&x = *&v13;
          v22 = v23.x;
        }

        goto LABEL_21;
      }

      if (v9 != 2)
      {
        if (v9 == 3)
        {
          [(CRLBezierPath *)v4 closePath];
        }

        goto LABEL_21;
      }

      v14 = v23;
      if (sub_10011ECC8(x, y, v23.x, v23.y))
      {
        v16 = v24.y;
        v15 = v24.x;
        v17 = sub_10011ECC8(x, y, v24.x, v24.y);
        v19 = v25.y;
        v18 = v25.x;
        if (v17 && sub_10011ECC8(x, y, v25.x, v25.y))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = v25.y;
        v18 = v25.x;
        v16 = v24.y;
        v15 = v24.x;
      }

      [(CRLBezierPath *)v4 curveToPoint:v18 controlPoint1:v19 controlPoint2:v14, v15, v16];
      y = v25.y;
      x = v25.x;
LABEL_21:
      ++v8;
    }

    while (elementCount != v8);
  }

  return v4;
}

+ (id)simplifiedPathWithRawPath:(id)path threshold:(double)threshold
{
  v5 = [self cleanPathForPath:path];
  v6 = [[CRLBezierPathSimplifier alloc] initWithPath:v5 threshold:threshold];
  [(CRLBezierPathSimplifier *)v6 run];
  simplifiedPath = [(CRLBezierPathSimplifier *)v6 simplifiedPath];

  return simplifiedPath;
}

- (void)setPointsToSimplify:(void *)simplify
{
  p_pointsToSimplify = &self->_pointsToSimplify;
  if (p_pointsToSimplify != simplify)
  {
    sub_1000DB520(p_pointsToSimplify, *simplify, *(simplify + 1), (*(simplify + 1) - *simplify) >> 4);
  }
}

- (void)setAssociatedPoints:(CRLPointVector3 *)points
{
  v3 = points->v[0];
  v4 = points->v[1];
  self->_associatedPoints.v[2] = points->v[2];
  self->_associatedPoints.v[1] = v4;
  self->_associatedPoints.v[0] = v3;
}

- (CGPoint)startOfSubpath
{
  x = self->_startOfSubpath.x;
  y = self->_startOfSubpath.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)controlPoint1
{
  x = self->_controlPoint1.x;
  y = self->_controlPoint1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)controlPoint2
{
  x = self->_controlPoint2.x;
  y = self->_controlPoint2.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  v2 = CGPointZero;
  *(self + 152) = CGPointZero;
  *(self + 136) = v2;
  *(self + 120) = v2;
  return self;
}

@end