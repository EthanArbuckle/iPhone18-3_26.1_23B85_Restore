@interface CRLPKStrokeConverter
+ (id)pathFromPKStroke:(id)a3 pencilKitStrokePathData:(id *)a4;
+ (id)pathFromPKStroke:(id)a3 startingAtPointIndex:(unint64_t)a4 endingAtPointIndex:(unint64_t)a5 pencilKitStrokePathData:(id *)a6;
+ (id)pencilKitStrokesFromPath:(id)a3 inkStroke:(id)a4 strokePathCompactData:(id)a5 maskPath:(id)a6 snappedShapeType:(int64_t)a7;
@end

@implementation CRLPKStrokeConverter

+ (id)pencilKitStrokesFromPath:(id)a3 inkStroke:(id)a4 strokePathCompactData:(id)a5 maskPath:(id)a6 snappedShapeType:(int64_t)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v57 = +[NSMutableArray array];
  v14 = [v11 color];
  v15 = [v14 UIColor];

  [v11 width];
  v17 = v16;
  v18 = [v11 inkType];
  [CRLPencilKitInkStroke unadjustedStrokeWidthFromAdjustedWidth:v18 forInkType:v17];
  [PKInkingTool _weightForWidth:v18 type:?];
  v50 = v15;
  v19 = [PKInk inkWithIdentifier:v18 color:v15 weight:?];
  v56 = [v19 _sixChannelVersion];

  memset(&v64, 0, sizeof(v64));
  if (v12)
  {
    [v12 renderScaleX];
    v21 = v20;
    [v12 renderScaleY];
    CGAffineTransformMakeScale(&v64, v21, v22);
  }

  else
  {
    v23 = *&CGAffineTransformIdentity.c;
    *&v64.a = *&CGAffineTransformIdentity.a;
    *&v64.c = v23;
    *&v64.tx = *&CGAffineTransformIdentity.tx;
  }

  v53 = v10;
  v24 = [v10 copy];
  v62 = v64;
  CGAffineTransformInvert(&v63, &v62);
  [v24 transformUsingAffineTransform:&v63];
  v48 = v24;
  v25 = +[CRLPKStrokePathConverter strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:](CRLPKStrokePathConverter, "strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:", v24, v12, v18, [v11 isFountainPenInkV2], v17);
  v51 = v13;
  v52 = v11;
  v49 = v18;
  if (v13 && (+[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [v13 CGPath]), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v26;
    v62 = v64;
    CGAffineTransformInvert(&v63, &v62);
    [v27 transformUsingAffineTransform:&v63];
    v47 = v27;
    v28 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v27 CGPath]);
  }

  else
  {
    v28 = 0;
    v47 = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v25;
  v29 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v59;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v59 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v58 + 1) + 8 * i);
        v34 = [PKStroke alloc];
        v35 = [v12 randomSeed];
        v63 = v64;
        v36 = [v34 initWithInk:v56 strokePath:v33 transform:&v63 mask:v28 randomSeed:v35];
        v37 = [v36 _flags] & 0xFFFFFCFFFFFFFFFFLL;
        if ([v12 shouldSolveMath])
        {
          v38 = 0x20000000000;
        }

        else
        {
          v38 = 0;
        }

        if ([v12 isSynthesizedStroke])
        {
          v39 = 0x10000000000;
        }

        else
        {
          v39 = 0;
        }

        [v36 _setFlags:v38 | v39 | v37];
        v40 = [v12 renderGroupID];
        [v36 _setRenderGroupID:v40];

        [v36 _setShapeType:{+[CRLFreehandDrawingShapeTypeHelper PKShapeTypeFromFreehandDrawingShapeType:](_TtC8Freeform33CRLFreehandDrawingShapeTypeHelper, "PKShapeTypeFromFreehandDrawingShapeType:", a7)}];
        [v12 anchorPointForTexture];
        v41 = [v36 copyWithNewAnchorPointForTexture:?];

        [v12 particleOffset];
        v43 = v42;
        [v12 secondaryParticleOffset];
        v45 = [v41 crl_copyWithNewParticleOffset:v43 secondaryParticleOffset:v44];

        [v57 addObject:v45];
      }

      v30 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v30);
  }

  return v57;
}

+ (id)pathFromPKStroke:(id)a3 startingAtPointIndex:(unint64_t)a4 endingAtPointIndex:(unint64_t)a5 pencilKitStrokePathData:(id *)a6
{
  v9 = a3;
  v10 = [v9 path];
  v11 = [v10 count];

  if (v11 < a4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133D744();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133D758();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133D7E0();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokeConverter pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokeConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:123 isFatal:0 description:"Out-of-bounds startingAtPointIndex parameter."];
  }

  if (v11 < a5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133D808();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133D830();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133D8B8();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v15);
    }

    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokeConverter pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:]");
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokeConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:124 isFatal:0 description:"Out-of-bounds endingAtPointIndex parameter."];
  }

  if ((v11 - 1) < a4)
  {
    a4 = (v11 - 1);
  }

  if ((v11 - 1) < a5)
  {
    a5 = (v11 - 1);
  }

  v18 = [v9 path];
  v19 = [v18 count];

  if (v19 <= 1)
  {
    v20 = [v9 path];
    v21 = [v20 count];

    if (v21)
    {
      v22 = [v9 path];
      v23 = [v22 objectAtIndexedSubscript:0];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133D8E0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133D908();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133D990();
      }

      v24 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v24);
      }

      v25 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPKStrokeConverter pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:]");
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokeConverter.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:133 isFatal:0 description:"Unable to convert a PKStroke with no points. Using fallback values."];

      v23 = [[PKStrokePoint alloc] initWithLocation:CGPointZero.x timeOffset:CGPointZero.y size:0.0 opacity:5.0 force:5.0 azimuth:1.0 altitude:{1.0, 0.0, 0}];
    }

    v27 = [PKStrokePoint alloc];
    [v23 location];
    v29 = v28 + 0.1;
    [v23 location];
    v31 = v30;
    [v23 timeOffset];
    v33 = v32 + 0.01;
    [v23 size];
    v35 = v34;
    v37 = v36;
    [v23 opacity];
    v39 = v38;
    [v23 force];
    v41 = v40;
    [v23 azimuth];
    v43 = v42;
    [v23 altitude];
    v45 = [v27 initWithLocation:v29 timeOffset:v31 size:v33 opacity:v35 force:v37 azimuth:v39 altitude:{v41, v43, v44}];
    v46 = [PKStrokePath alloc];
    v69[0] = v23;
    v69[1] = v45;
    v47 = [NSArray arrayWithObjects:v69 count:2];
    v48 = [v9 path];
    v49 = [v48 creationDate];
    v50 = [v46 initWithControlPoints:v47 creationDate:v49];

    v51 = [PKStroke alloc];
    v52 = [v9 ink];
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
    }

    v53 = [v9 mask];
    v54 = [v51 initWithInk:v52 strokePath:v50 transform:&v66 mask:v53 randomSeed:{objc_msgSend(v9, "randomSeed")}];

    a5 = 1;
    v9 = v54;
  }

  if (a6)
  {
    *a6 = [CRLPKStrokePathConverter strokePathDataFromPKStroke:v9 startingAtIndex:a4 endingAtIndex:a5];
  }

  v55 = [v9 mask];

  if (v55)
  {
    v56 = [PKStroke alloc];
    v57 = [v9 ink];
    v58 = [v9 path];
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
    }

    v63 = [v56 initWithInk:v57 strokePath:v58 transform:&v66 mask:0 randomSeed:{objc_msgSend(v9, "randomSeed")}];

    v62 = v63;
  }

  else
  {
    if (!a4)
    {
      v59 = [v9 path];
      v60 = [v59 count] - 1;

      if (a5 == v60)
      {
        v61 = [v9 _newPathRepresentation];
        goto LABEL_53;
      }
    }

    v62 = [v9 _substrokeWithRange:{a4, a5 - a4 + 1}];
    v63 = v62;
  }

  v61 = [v62 _newPathRepresentation];

LABEL_53:
  v64 = [CRLBezierPath bezierPathWithCGPath:v61];
  if (v9)
  {
    [v9 transform];
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
  }

  [v64 transformUsingAffineTransform:&v66];
  if (v61)
  {
    CFRelease(v61);
  }

  return v64;
}

+ (id)pathFromPKStroke:(id)a3 pencilKitStrokePathData:(id *)a4
{
  v5 = a3;
  v6 = [v5 path];
  v7 = +[CRLPKStrokeConverter pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:](CRLPKStrokeConverter, "pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:", v5, 0, [v6 count] - 1, a4);

  return v7;
}

@end