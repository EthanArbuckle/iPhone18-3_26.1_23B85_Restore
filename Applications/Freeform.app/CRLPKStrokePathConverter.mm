@interface CRLPKStrokePathConverter
+ (id)pathFromPKStrokePath:(id)a3 pencilKitStrokePathData:(id *)a4;
+ (id)strokePathDataFromPKStroke:(id)a3 startingAtIndex:(unint64_t)a4 endingAtIndex:(unint64_t)a5;
+ (id)strokePathsFromBezierPath:(id)a3 baseWidth:(double)a4 strokePathCompactData:(id)a5 inkType:(id)a6 isFountainPenInkV2:(BOOL)a7;
+ (unint64_t)countOfBSplineControlPointsForBezierPath:(id)a3;
@end

@implementation CRLPKStrokePathConverter

+ (id)strokePathDataFromPKStroke:(id)a3 startingAtIndex:(unint64_t)a4 endingAtIndex:(unint64_t)a5
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [v7 count];
  if (v8 < a4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D4F8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D50C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D594();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokePathConverter strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:404 isFatal:0 description:"Out-of-bounds startingAtIndex parameter."];
  }

  if (v8 < a5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D5BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D5E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D66C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokePathConverter strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:405 isFatal:0 description:"Out-of-bounds endAtIndex parameter."];
  }

  v15 = (v8 - 1);
  if ((v8 - 1) >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = (v8 - 1);
  }

  if (v15 >= a5)
  {
    v15 = a5;
  }

  v61 = v15;
  v17 = v15 - v16;
  v18 = [CRLPKStrokePathCompactData alloc];
  v19 = [v6 randomSeed];
  v20 = [v7 creationDate];
  v57 = v17;
  v21 = [(CRLPKStrokePathCompactData *)v18 initWithCapacity:v17 + 1 randomSeed:v19 creationDate:v20];

  v58 = v6;
  v22 = [v6 _flags];
  [(CRLPKStrokePathCompactData *)v21 setShouldSolveMath:(v22 >> 41) & 1];
  v23 = (v22 >> 40) & 1;
  v24 = v21;
  [(CRLPKStrokePathCompactData *)v21 setIsSynthesizedStroke:v23];
  v25 = 0;
  v60 = v21;
  do
  {
    if (v16 <= a5)
    {
      v26 = 0;
      while (1)
      {
        v27 = [v7 pointAtIndex:v16 + v26];
        if (v25 <= 4)
        {
          if (v25 <= 1)
          {
            if (v25)
            {
              v28 = [(CRLPKStrokePathCompactData *)v24 azimuthData];
              [v27 azimuth];
              sub_1001210C4(v34);
            }

            else
            {
              v28 = [(CRLPKStrokePathCompactData *)v24 altitudeData];
              [v27 altitude];
            }

            goto LABEL_49;
          }

          if (v25 == 2)
          {
            v28 = [(CRLPKStrokePathCompactData *)v24 opacityData];
            [v27 opacity];
            goto LABEL_49;
          }

          if (v25 == 3)
          {
            v28 = [(CRLPKStrokePathCompactData *)v24 forceData];
            [v27 force];
LABEL_49:
            v32 = v29;
            v30 = 0;
            goto LABEL_53;
          }

          v30 = [(CRLPKStrokePathCompactData *)v24 sizeXData];
          [v27 size];
          goto LABEL_51;
        }

        if (v25 > 6)
        {
          break;
        }

        if (v25 != 5)
        {
          v30 = [(CRLPKStrokePathCompactData *)v24 timeOffsetData];
          [v27 timeOffset];
LABEL_51:
          v32 = v33;
          goto LABEL_52;
        }

        v30 = [(CRLPKStrokePathCompactData *)v24 sizeYData];
        [v27 size];
        v32 = v31;
LABEL_52:
        v28 = 0;
LABEL_53:
        if (!(v28 | v30))
        {
          v41 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132D694();
          }

          v42 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *&buf[4] = v41;
            *&buf[8] = 2082;
            *&buf[10] = "+[CRLPKStrokePathConverter strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:]";
            *&buf[18] = 2082;
            *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
            *&buf[28] = 1024;
            *&buf[30] = 487;
            _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected a uint16 value or a float value.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132D6BC();
          }

          v43 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v47 = v43;
            v48 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v41;
            *&buf[8] = 2114;
            *&buf[10] = v48;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v44 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokePathConverter strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:]");
          v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:487 isFatal:0 description:"Expected a uint16 value or a float value."];

          v24 = v60;
          goto LABEL_76;
        }

        if (v28 && v30)
        {
          v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10132D6E4();
          }

          v36 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *&buf[4] = v35;
            *&buf[8] = 2082;
            *&buf[10] = "+[CRLPKStrokePathConverter strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:]";
            *&buf[18] = 2082;
            *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
            *&buf[28] = 1024;
            *&buf[30] = 488;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected a uint16 value or a float value but not both.", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10132D70C();
          }

          v37 = v7;
          v38 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v49 = v38;
            v50 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *&buf[4] = v35;
            *&buf[8] = 2114;
            *&buf[10] = v50;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v39 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokePathConverter strokePathDataFromPKStroke:startingAtIndex:endingAtIndex:]");
          v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
          [CRLAssertionHandler handleFailureInFunction:v39 file:v40 lineNumber:488 isFatal:0 description:"Expected a uint16 value or a float value but not both."];

          v7 = v37;
          v24 = v60;
        }

        else if (!v28)
        {
          if (v30)
          {
            v46 = v32 * dbl_101462D50[v25];
            *(v30 + v26) = v46;
          }

          goto LABEL_76;
        }

        *(v28 + 2 * v26) = (v32 * dbl_101462D50[v25]);
LABEL_76:

        ++v26;
        if (v16 + v26 > v61)
        {
          goto LABEL_28;
        }
      }

      if (v25 != 7)
      {
        if (v25 == 8)
        {
          v28 = [(CRLPKStrokePathCompactData *)v24 edgeWidthData];
          [v27 _edgeWidth];
        }

        else
        {
          v28 = [(CRLPKStrokePathCompactData *)v24 thresholdData];
          [v27 threshold];
        }

        goto LABEL_49;
      }

      v30 = [(CRLPKStrokePathCompactData *)v24 radius2Data];
      [v27 _radius2];
      goto LABEL_51;
    }

LABEL_28:
    ++v25;
  }

  while (v25 != 10);
  [(CRLPKStrokePathCompactData *)v24 setPointCount:v57 + 1];
  if (v58)
  {
    [v58 transform];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v51 = sub_100139A14(buf);
  v53 = v52;
  *&v51 = v51;
  [(CRLPKStrokePathCompactData *)v24 setRenderScaleX:v51];
  *&v54 = v53;
  [(CRLPKStrokePathCompactData *)v24 setRenderScaleY:v54];
  v55 = [v58 _renderGroupID];
  [(CRLPKStrokePathCompactData *)v24 setRenderGroupID:v55];

  [v58 _anchorPointForTexture];
  [(CRLPKStrokePathCompactData *)v24 setAnchorPointForTexture:?];
  [v58 crl_particleOffset];
  [(CRLPKStrokePathCompactData *)v24 setParticleOffset:?];
  [v58 crl_secondaryParticleOffset];
  [(CRLPKStrokePathCompactData *)v24 setSecondaryParticleOffset:?];

  return v24;
}

+ (id)strokePathsFromBezierPath:(id)a3 baseWidth:(double)a4 strokePathCompactData:(id)a5 inkType:(id)a6 isFountainPenInkV2:(BOOL)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = +[NSMutableArray array];
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = PKInkTypeMonoline;
  }

  v16 = v15;
  v47 = 0uLL;
  v48 = 0;
  sub_1001C9848(v11, &v47);
  v17 = v48;
  if (v48)
  {
    if (v12)
    {
      if (a7)
      {
        v18 = 0;
      }

      else
      {
        v18 = [(NSString *)v13 isEqualToString:PKInkTypeFountainPen];
      }

      v45 = v47;
      v46 = v48;
      v20 = sub_1001C95C0(v12, &v45, v18);
    }

    else
    {
      v41 = v48;
      v42 = v13;
      v40 = v11;
      v22 = +[NSMutableArray array];
      v23 = *(&v47 + 1);
      if (*(&v47 + 1))
      {
        v24 = fmax(a4 * 0.5, 1.0);
        v43 = fmax(a4 * 0.5 + 2.0, 1.0);
        v25 = dbl_101462D20[v24 < 2.0];
        v26 = dbl_101462D30[v24 < 2.0];
        v44 = (a4 + 1.0) * 0.85;
        v27 = qword_101462D40[v24 < 2.0];
        if (v24 < 2.0)
        {
          a4 = 0.0;
        }

        v28 = v41 + 1;
        do
        {
          v30 = *(v28 - 1);
          v29 = *v28;
          v31 = v16;
          if ([(NSString *)v31 isEqualToString:PKInkTypePencil])
          {
            v32 = [[PKStrokePoint alloc] initWithLocation:v30 timeOffset:v29 size:0.0 opacity:v24 force:v24 azimuth:v25 altitude:0.0 edgeWidth:v26 radius2:{v27, *&a4, 0}];
          }

          else if ([(NSString *)v31 isEqualToString:PKInkTypeWatercolor])
          {
            v32 = [[PKStrokePoint alloc] initWithLocation:v30 timeOffset:v29 size:0.0 opacity:v24 force:v24 azimuth:0.18 altitude:1.0 edgeWidth:3.14159265 radius2:{0x3FF921FB54442D18, 0, *&v44}];
          }

          else if ([(NSString *)v31 isEqualToString:PKInkTypePen]|| [(NSString *)v31 isEqualToString:PKInkTypeMonoline])
          {
            v32 = [[PKStrokePoint alloc] initWithLocation:v30 timeOffset:v29 size:0.0 opacity:v43 force:v43 azimuth:1.0 altitude:{1.0, 3.14159265, 0x3FF921FB54442D18}];
          }

          else
          {
            v32 = [[PKStrokePoint alloc] initWithLocation:v30 timeOffset:v29 size:0.0 opacity:v24 force:v24 azimuth:1.0 altitude:{1.0, 3.14159265, 0x3FF921FB54442D18}];
          }

          v33 = v32;

          [v22 addObject:v33];
          v28 += 2;
          --v23;
        }

        while (v23);
      }

      v34 = [PKStrokePath alloc];
      v35 = +[NSDate date];
      v20 = [v34 initWithControlPoints:v22 creationDate:v35];

      v12 = 0;
      v11 = v40;
      v17 = v41;
      v13 = v42;
    }

    free(v17);
    if (v20)
    {
      [v14 addObject:v20];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10132D824();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132D838();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10132D8E8();
      }

      v36 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v36);
      }

      v37 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokePathConverter strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:]");
      v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:733 isFatal:0 description:"invalid nil value for '%{public}s'", "newStrokePath"];
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D910();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D924();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D9AC();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    v20 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokePathConverter strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:]");
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:710 isFatal:0 description:"Unexpectedly failed to generate B-Spline control points."];
  }

  return v14;
}

+ (id)pathFromPKStrokePath:(id)a3 pencilKitStrokePathData:(id *)a4
{
  v5 = a3;
  v6 = [PKInk alloc];
  v7 = +[UIColor blackColor];
  v8 = [v6 initWithInkType:PKInkTypePen color:v7];

  v9 = [PKStroke alloc];
  v10 = *&CGAffineTransformIdentity.c;
  v14[0] = *&CGAffineTransformIdentity.a;
  v14[1] = v10;
  v14[2] = *&CGAffineTransformIdentity.tx;
  v11 = [v9 initWithInk:v8 strokePath:v5 transform:v14 mask:0];

  v12 = [CRLPKStrokeConverter pathFromPKStroke:v11 pencilKitStrokePathData:a4];

  return v12;
}

+ (unint64_t)countOfBSplineControlPointsForBezierPath:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_1001C9848(a3, &v5);
  v3 = v6;
  if (v7)
  {
    free(v7);
  }

  return v3;
}

@end