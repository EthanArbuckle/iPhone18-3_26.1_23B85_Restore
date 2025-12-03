@interface CRLPKStrokeConverter
+ (id)pathFromPKStroke:(id)stroke pencilKitStrokePathData:(id *)data;
+ (id)pathFromPKStroke:(id)stroke startingAtPointIndex:(unint64_t)index endingAtPointIndex:(unint64_t)pointIndex pencilKitStrokePathData:(id *)data;
+ (id)pencilKitStrokesFromPath:(id)path inkStroke:(id)stroke strokePathCompactData:(id)data maskPath:(id)maskPath snappedShapeType:(int64_t)type;
@end

@implementation CRLPKStrokeConverter

+ (id)pencilKitStrokesFromPath:(id)path inkStroke:(id)stroke strokePathCompactData:(id)data maskPath:(id)maskPath snappedShapeType:(int64_t)type
{
  pathCopy = path;
  strokeCopy = stroke;
  dataCopy = data;
  maskPathCopy = maskPath;
  v57 = +[NSMutableArray array];
  color = [strokeCopy color];
  uIColor = [color UIColor];

  [strokeCopy width];
  v17 = v16;
  inkType = [strokeCopy inkType];
  [CRLPencilKitInkStroke unadjustedStrokeWidthFromAdjustedWidth:inkType forInkType:v17];
  [PKInkingTool _weightForWidth:inkType type:?];
  v50 = uIColor;
  v19 = [PKInk inkWithIdentifier:inkType color:uIColor weight:?];
  _sixChannelVersion = [v19 _sixChannelVersion];

  memset(&v64, 0, sizeof(v64));
  if (dataCopy)
  {
    [dataCopy renderScaleX];
    v21 = v20;
    [dataCopy renderScaleY];
    CGAffineTransformMakeScale(&v64, v21, v22);
  }

  else
  {
    v23 = *&CGAffineTransformIdentity.c;
    *&v64.a = *&CGAffineTransformIdentity.a;
    *&v64.c = v23;
    *&v64.tx = *&CGAffineTransformIdentity.tx;
  }

  v53 = pathCopy;
  v24 = [pathCopy copy];
  v62 = v64;
  CGAffineTransformInvert(&v63, &v62);
  [v24 transformUsingAffineTransform:&v63];
  v48 = v24;
  v25 = +[CRLPKStrokePathConverter strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:](CRLPKStrokePathConverter, "strokePathsFromBezierPath:baseWidth:strokePathCompactData:inkType:isFountainPenInkV2:", v24, dataCopy, inkType, [strokeCopy isFountainPenInkV2], v17);
  v51 = maskPathCopy;
  v52 = strokeCopy;
  v49 = inkType;
  if (maskPathCopy && (+[CRLBezierPath bezierPathWithCGPath:](CRLBezierPath, "bezierPathWithCGPath:", [maskPathCopy CGPath]), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
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
        randomSeed = [dataCopy randomSeed];
        v63 = v64;
        v36 = [v34 initWithInk:_sixChannelVersion strokePath:v33 transform:&v63 mask:v28 randomSeed:randomSeed];
        v37 = [v36 _flags] & 0xFFFFFCFFFFFFFFFFLL;
        if ([dataCopy shouldSolveMath])
        {
          v38 = 0x20000000000;
        }

        else
        {
          v38 = 0;
        }

        if ([dataCopy isSynthesizedStroke])
        {
          v39 = 0x10000000000;
        }

        else
        {
          v39 = 0;
        }

        [v36 _setFlags:v38 | v39 | v37];
        renderGroupID = [dataCopy renderGroupID];
        [v36 _setRenderGroupID:renderGroupID];

        [v36 _setShapeType:{+[CRLFreehandDrawingShapeTypeHelper PKShapeTypeFromFreehandDrawingShapeType:](_TtC8Freeform33CRLFreehandDrawingShapeTypeHelper, "PKShapeTypeFromFreehandDrawingShapeType:", type)}];
        [dataCopy anchorPointForTexture];
        v41 = [v36 copyWithNewAnchorPointForTexture:?];

        [dataCopy particleOffset];
        v43 = v42;
        [dataCopy secondaryParticleOffset];
        v45 = [v41 crl_copyWithNewParticleOffset:v43 secondaryParticleOffset:v44];

        [v57 addObject:v45];
      }

      v30 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v30);
  }

  return v57;
}

+ (id)pathFromPKStroke:(id)stroke startingAtPointIndex:(unint64_t)index endingAtPointIndex:(unint64_t)pointIndex pencilKitStrokePathData:(id *)data
{
  strokeCopy = stroke;
  path = [strokeCopy path];
  v11 = [path count];

  if (v11 < index)
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

  if (v11 < pointIndex)
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

  if ((v11 - 1) < index)
  {
    index = (v11 - 1);
  }

  if ((v11 - 1) < pointIndex)
  {
    pointIndex = (v11 - 1);
  }

  path2 = [strokeCopy path];
  v19 = [path2 count];

  if (v19 <= 1)
  {
    path3 = [strokeCopy path];
    v21 = [path3 count];

    if (v21)
    {
      path4 = [strokeCopy path];
      v23 = [path4 objectAtIndexedSubscript:0];
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
    path5 = [strokeCopy path];
    creationDate = [path5 creationDate];
    v50 = [v46 initWithControlPoints:v47 creationDate:creationDate];

    v51 = [PKStroke alloc];
    v52 = [strokeCopy ink];
    if (strokeCopy)
    {
      [strokeCopy transform];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
    }

    mask = [strokeCopy mask];
    v54 = [v51 initWithInk:v52 strokePath:v50 transform:&v66 mask:mask randomSeed:{objc_msgSend(strokeCopy, "randomSeed")}];

    pointIndex = 1;
    strokeCopy = v54;
  }

  if (data)
  {
    *data = [CRLPKStrokePathConverter strokePathDataFromPKStroke:strokeCopy startingAtIndex:index endingAtIndex:pointIndex];
  }

  mask2 = [strokeCopy mask];

  if (mask2)
  {
    v56 = [PKStroke alloc];
    v57 = [strokeCopy ink];
    path6 = [strokeCopy path];
    if (strokeCopy)
    {
      [strokeCopy transform];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
    }

    v63 = [v56 initWithInk:v57 strokePath:path6 transform:&v66 mask:0 randomSeed:{objc_msgSend(strokeCopy, "randomSeed")}];

    v62 = v63;
  }

  else
  {
    if (!index)
    {
      path7 = [strokeCopy path];
      v60 = [path7 count] - 1;

      if (pointIndex == v60)
      {
        _newPathRepresentation = [strokeCopy _newPathRepresentation];
        goto LABEL_53;
      }
    }

    v62 = [strokeCopy _substrokeWithRange:{index, pointIndex - index + 1}];
    v63 = v62;
  }

  _newPathRepresentation = [v62 _newPathRepresentation];

LABEL_53:
  v64 = [CRLBezierPath bezierPathWithCGPath:_newPathRepresentation];
  if (strokeCopy)
  {
    [strokeCopy transform];
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
  }

  [v64 transformUsingAffineTransform:&v66];
  if (_newPathRepresentation)
  {
    CFRelease(_newPathRepresentation);
  }

  return v64;
}

+ (id)pathFromPKStroke:(id)stroke pencilKitStrokePathData:(id *)data
{
  strokeCopy = stroke;
  path = [strokeCopy path];
  v7 = +[CRLPKStrokeConverter pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:](CRLPKStrokeConverter, "pathFromPKStroke:startingAtPointIndex:endingAtPointIndex:pencilKitStrokePathData:", strokeCopy, 0, [path count] - 1, data);

  return v7;
}

@end