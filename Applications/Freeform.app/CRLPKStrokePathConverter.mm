@interface CRLPKStrokePathConverter
+ (id)pathFromPKStrokePath:(id)path pencilKitStrokePathData:(id *)data;
+ (id)strokePathDataFromPKStroke:(id)stroke startingAtIndex:(unint64_t)index endingAtIndex:(unint64_t)atIndex;
+ (id)strokePathsFromBezierPath:(id)path baseWidth:(double)width strokePathCompactData:(id)data inkType:(id)type isFountainPenInkV2:(BOOL)v2;
+ (unint64_t)countOfBSplineControlPointsForBezierPath:(id)path;
@end

@implementation CRLPKStrokePathConverter

+ (id)strokePathDataFromPKStroke:(id)stroke startingAtIndex:(unint64_t)index endingAtIndex:(unint64_t)atIndex
{
  strokeCopy = stroke;
  path = [strokeCopy path];
  v8 = [path count];
  if (v8 < index)
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

  if (v8 < atIndex)
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

  atIndexCopy = (v8 - 1);
  if ((v8 - 1) >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = (v8 - 1);
  }

  if (atIndexCopy >= atIndex)
  {
    atIndexCopy = atIndex;
  }

  v61 = atIndexCopy;
  v17 = atIndexCopy - indexCopy;
  v18 = [CRLPKStrokePathCompactData alloc];
  randomSeed = [strokeCopy randomSeed];
  creationDate = [path creationDate];
  v57 = v17;
  v21 = [(CRLPKStrokePathCompactData *)v18 initWithCapacity:v17 + 1 randomSeed:randomSeed creationDate:creationDate];

  v58 = strokeCopy;
  _flags = [strokeCopy _flags];
  [(CRLPKStrokePathCompactData *)v21 setShouldSolveMath:(_flags >> 41) & 1];
  v23 = (_flags >> 40) & 1;
  v24 = v21;
  [(CRLPKStrokePathCompactData *)v21 setIsSynthesizedStroke:v23];
  v25 = 0;
  v60 = v21;
  do
  {
    if (indexCopy <= atIndex)
    {
      v26 = 0;
      while (1)
      {
        v27 = [path pointAtIndex:indexCopy + v26];
        if (v25 <= 4)
        {
          if (v25 <= 1)
          {
            if (v25)
            {
              azimuthData = [(CRLPKStrokePathCompactData *)v24 azimuthData];
              [v27 azimuth];
              sub_1001210C4(v34);
            }

            else
            {
              azimuthData = [(CRLPKStrokePathCompactData *)v24 altitudeData];
              [v27 altitude];
            }

            goto LABEL_49;
          }

          if (v25 == 2)
          {
            azimuthData = [(CRLPKStrokePathCompactData *)v24 opacityData];
            [v27 opacity];
            goto LABEL_49;
          }

          if (v25 == 3)
          {
            azimuthData = [(CRLPKStrokePathCompactData *)v24 forceData];
            [v27 force];
LABEL_49:
            v32 = v29;
            sizeXData = 0;
            goto LABEL_53;
          }

          sizeXData = [(CRLPKStrokePathCompactData *)v24 sizeXData];
          [v27 size];
          goto LABEL_51;
        }

        if (v25 > 6)
        {
          break;
        }

        if (v25 != 5)
        {
          sizeXData = [(CRLPKStrokePathCompactData *)v24 timeOffsetData];
          [v27 timeOffset];
LABEL_51:
          v32 = v33;
          goto LABEL_52;
        }

        sizeXData = [(CRLPKStrokePathCompactData *)v24 sizeYData];
        [v27 size];
        v32 = v31;
LABEL_52:
        azimuthData = 0;
LABEL_53:
        if (!(azimuthData | sizeXData))
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

        if (azimuthData && sizeXData)
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

          v37 = path;
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

          path = v37;
          v24 = v60;
        }

        else if (!azimuthData)
        {
          if (sizeXData)
          {
            v46 = v32 * dbl_101462D50[v25];
            *(sizeXData + v26) = v46;
          }

          goto LABEL_76;
        }

        *(azimuthData + 2 * v26) = (v32 * dbl_101462D50[v25]);
LABEL_76:

        ++v26;
        if (indexCopy + v26 > v61)
        {
          goto LABEL_28;
        }
      }

      if (v25 != 7)
      {
        if (v25 == 8)
        {
          azimuthData = [(CRLPKStrokePathCompactData *)v24 edgeWidthData];
          [v27 _edgeWidth];
        }

        else
        {
          azimuthData = [(CRLPKStrokePathCompactData *)v24 thresholdData];
          [v27 threshold];
        }

        goto LABEL_49;
      }

      sizeXData = [(CRLPKStrokePathCompactData *)v24 radius2Data];
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
  _renderGroupID = [v58 _renderGroupID];
  [(CRLPKStrokePathCompactData *)v24 setRenderGroupID:_renderGroupID];

  [v58 _anchorPointForTexture];
  [(CRLPKStrokePathCompactData *)v24 setAnchorPointForTexture:?];
  [v58 crl_particleOffset];
  [(CRLPKStrokePathCompactData *)v24 setParticleOffset:?];
  [v58 crl_secondaryParticleOffset];
  [(CRLPKStrokePathCompactData *)v24 setSecondaryParticleOffset:?];

  return v24;
}

+ (id)strokePathsFromBezierPath:(id)path baseWidth:(double)width strokePathCompactData:(id)data inkType:(id)type isFountainPenInkV2:(BOOL)v2
{
  pathCopy = path;
  dataCopy = data;
  typeCopy = type;
  v14 = +[NSMutableArray array];
  if (typeCopy)
  {
    v15 = typeCopy;
  }

  else
  {
    v15 = PKInkTypeMonoline;
  }

  v16 = v15;
  v47 = 0uLL;
  v48 = 0;
  sub_1001C9848(pathCopy, &v47);
  v17 = v48;
  if (v48)
  {
    if (dataCopy)
    {
      if (v2)
      {
        v18 = 0;
      }

      else
      {
        v18 = [(NSString *)typeCopy isEqualToString:PKInkTypeFountainPen];
      }

      v45 = v47;
      v46 = v48;
      v20 = sub_1001C95C0(dataCopy, &v45, v18);
    }

    else
    {
      v41 = v48;
      v42 = typeCopy;
      v40 = pathCopy;
      v22 = +[NSMutableArray array];
      v23 = *(&v47 + 1);
      if (*(&v47 + 1))
      {
        v24 = fmax(width * 0.5, 1.0);
        v43 = fmax(width * 0.5 + 2.0, 1.0);
        v25 = dbl_101462D20[v24 < 2.0];
        v26 = dbl_101462D30[v24 < 2.0];
        v44 = (width + 1.0) * 0.85;
        v27 = qword_101462D40[v24 < 2.0];
        if (v24 < 2.0)
        {
          width = 0.0;
        }

        v28 = v41 + 1;
        do
        {
          v30 = *(v28 - 1);
          v29 = *v28;
          v31 = v16;
          if ([(NSString *)v31 isEqualToString:PKInkTypePencil])
          {
            v32 = [[PKStrokePoint alloc] initWithLocation:v30 timeOffset:v29 size:0.0 opacity:v24 force:v24 azimuth:v25 altitude:0.0 edgeWidth:v26 radius2:{v27, *&width, 0}];
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

      dataCopy = 0;
      pathCopy = v40;
      v17 = v41;
      typeCopy = v42;
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

+ (id)pathFromPKStrokePath:(id)path pencilKitStrokePathData:(id *)data
{
  pathCopy = path;
  v6 = [PKInk alloc];
  v7 = +[UIColor blackColor];
  v8 = [v6 initWithInkType:PKInkTypePen color:v7];

  v9 = [PKStroke alloc];
  v10 = *&CGAffineTransformIdentity.c;
  v14[0] = *&CGAffineTransformIdentity.a;
  v14[1] = v10;
  v14[2] = *&CGAffineTransformIdentity.tx;
  v11 = [v9 initWithInk:v8 strokePath:pathCopy transform:v14 mask:0];

  v12 = [CRLPKStrokeConverter pathFromPKStroke:v11 pencilKitStrokePathData:data];

  return v12;
}

+ (unint64_t)countOfBSplineControlPointsForBezierPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_1001C9848(path, &v5);
  v3 = v6;
  if (v7)
  {
    free(v7);
  }

  return v3;
}

@end