@interface CRLFreehandDrawingFloodFillHelper
+ (id)fillablePathFromPaths:(id)a3 atFillPoint:(CGPoint)a4 withConnectionThreshold:(double)a5 pathsUsedForFilling:(id *)a6;
+ (id)p_bezierPathWithSectionOfBezierPath:(id)a3 centeredAtPercentAlongPath:(double)a4 withMaximumLength:(double)a5;
+ (id)p_bitmapFillablePathFromPaths:(id)a3 atFillPoint:(CGPoint)a4 allowOverflowingPath:(BOOL)a5;
+ (id)p_connectionPathsForFillableAreas:(id)a3 withConnectionThreshold:(double)a4;
+ (id)p_flattenedPathForPath:(id)a3;
@end

@implementation CRLFreehandDrawingFloodFillHelper

+ (id)fillablePathFromPaths:(id)a3 atFillPoint:(CGPoint)a4 withConnectionThreshold:(double)a5 pathsUsedForFilling:(id *)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  v12 = [v11 crl_arrayOfObjectsPassingTest:&stru_10186DB60];

  if (![v12 count])
  {
    goto LABEL_30;
  }

  v13 = [a1 p_bitmapFillablePathFromPaths:v12 atFillPoint:1 allowOverflowingPath:{x, y}];
  v14 = v13;
  if (!v13 || ![v13 containsElementsOtherThanMoveAndClose])
  {

LABEL_30:
    v49 = 0;
    goto LABEL_31;
  }

  [v14 bounds];
  v90 = CGRectInset(v89, -20.0, -20.0);
  v15 = v90.origin.x;
  v16 = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  v19 = [[CRLBezierHitTester alloc] initWithBucketSize:10.0];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v20 = v12;
  v21 = [v20 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (v21)
  {
    v22 = *v76;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v76 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v75 + 1) + 8 * i);
        [v24 bounds];
        v95.origin.x = v25;
        v95.origin.y = v26;
        v95.size.width = v27;
        v95.size.height = v28;
        v91.origin.x = v15;
        v91.origin.y = v16;
        v91.size.width = width;
        v91.size.height = height;
        if (CGRectIntersectsRect(v91, v95))
        {
          [(CRLBezierHitTester *)v19 addPath:v24 filled:0];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v75 objects:v86 count:16];
    }

    while (v21);
  }

  v68 = [(CRLBezierHitTester *)v19 pathsCrossingPath:v14 withSearchThreshold:20.0];
  v29 = [v68 allObjects];
  v70 = [a1 p_connectionPathsForFillableAreas:v29 withConnectionThreshold:a5];

  v30 = [v68 allObjects];
  v69 = [v30 arrayByAddingObjectsFromArray:v70];

  v31 = [a1 p_bitmapFillablePathFromPaths:v69 atFillPoint:0 allowOverflowingPath:{x, y}];
  v32 = v31;
  if (v31 && [v31 containsElementsOtherThanMoveAndClose])
  {
    v66 = v32;
    [v32 bounds];
    v93 = CGRectInset(v92, -20.0, -20.0);
    v33 = v93.origin.x;
    v34 = v93.origin.y;
    v35 = v93.size.width;
    v36 = v93.size.height;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v37 = v70;
    v38 = [v37 countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v38)
    {
      v39 = *v72;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v72 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v71 + 1) + 8 * j);
          [v41 bounds];
          v96.origin.x = v42;
          v96.origin.y = v43;
          v96.size.width = v44;
          v96.size.height = v45;
          v94.origin.x = v33;
          v94.origin.y = v34;
          v94.size.width = v35;
          v94.size.height = v36;
          if (CGRectIntersectsRect(v94, v96))
          {
            [(CRLBezierHitTester *)v19 addPath:v41 filled:0];
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v71 objects:v85 count:16];
      }

      while (v38);
    }

    v32 = v66;
    v46 = [(CRLBezierHitTester *)v19 pathsCrossingPath:v66 withSearchThreshold:20.0];
    v67 = v46;
    if (a6)
    {
      *a6 = [v46 allObjects];
      v46 = v67;
    }

    v65 = [v46 allObjects];
    v47 = [CRLBezierPathBooleanOperationHelper pathByFloodFillingPaths:x atFillPoint:y];
    v48 = v47;
    if (v47 && ([v47 containsElementsOtherThanMoveAndClose] & 1) != 0)
    {
      v49 = v48;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138FF64();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138FF8C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10139001C();
      }

      v51 = off_1019EDA68;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v52 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingFloodFillHelper fillablePathFromPaths:atFillPoint:withConnectionThreshold:pathsUsedForFilling:]");
      v53 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingFloodFillHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v52 file:v53 lineNumber:115 isFatal:0 description:"Failed to flood fill paths with Clipper. Falling back to a smoothed bitmap path."];

      if (qword_101AD5CF0 != -1)
      {
        sub_101390044();
      }

      if (os_log_type_enabled(off_1019F0F78, OS_LOG_TYPE_DEBUG))
      {
        v54 = [v20 crl_arrayByMappingObjectsUsingBlock:&stru_10186DC00];
        if (qword_101AD5CF0 != -1)
        {
          sub_10139006C();
        }

        v55 = off_1019F0F78;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          v88.x = x;
          v88.y = y;
          v63 = NSStringFromCGPoint(v88);
          *buf = 134218498;
          v80 = a5;
          v81 = 2112;
          v82 = v63;
          v83 = 2112;
          v84 = v54;
          _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Flood fill failure:\nthreshold=%f\nfillPoint=%@\npaths=\n%@\n", buf, 0x20u);
        }
      }

      v49 = [CRLBezierPath smoothBezierPath:v66 withThreshold:2.0];

      v64 = [v49 bezierPathByOffsettingPath:objc_msgSend(v49 joinStyle:{"lineJoinStyle"), 0.25}];
      v56 = [v64 bezierPathByRemovingRedundantElements];
      v57 = v56;
      if (v56 && (v58 = v56, v59 = [v56 containsElementsOtherThanMoveAndClose], v57 = v58, v59))
      {
        v60 = v49;
        v49 = v58;
      }

      else
      {
        v58 = v57;
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101390094();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013900BC();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10139014C();
        }

        v61 = off_1019EDA68;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v60 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingFloodFillHelper fillablePathFromPaths:atFillPoint:withConnectionThreshold:pathsUsedForFilling:]");
        v62 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingFloodFillHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v60 file:v62 lineNumber:134 isFatal:0 description:"Failed to re-outset the path to return. Returning the slightly inset version."];
      }
    }
  }

  else
  {
    v49 = 0;
  }

  if (v49 && ([v49 containsElementsOtherThanMoveAndClose] & 1) == 0)
  {

    goto LABEL_30;
  }

LABEL_31:

  return v49;
}

+ (id)p_connectionPathsForFillableAreas:(id)a3 withConnectionThreshold:(double)a4
{
  v5 = a3;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100540708;
  v20[3] = &unk_10186DC80;
  v20[4] = a1;
  v6 = [v5 crl_arrayByTransformingWithBlock:v20];

  v7 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isCompound])
        {
          v13 = [v12 arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved:1];
          [v7 addObjectsFromArray:v13];
        }

        else
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = v7;
  operator new();
}

+ (id)p_flattenedPathForPath:(id)a3
{
  v3 = a3;
  if ([v3 isFlat])
  {
    v4 = v3;
  }

  else
  {
    v4 = +[CRLBezierPath bezierPath];
    [v3 copyPathAttributesTo:v4];
    v5 = [v3 elementCount];
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v11 = xmmword_1014629F0;
        v12 = xmmword_1014629F0;
        *v13 = xmmword_1014629F0;
        *&v13[16] = xmmword_1014629F0;
        v7 = [v3 elementAtIndex:i allPoints:&v11];
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v8 = sub_100410534(&v11);
            v10[0] = _NSConcreteStackBlock;
            v10[1] = 3221225472;
            v10[2] = sub_1005414A0;
            v10[3] = &unk_10186DD68;
            v10[4] = v4;
            [CRLBezierPath subdivideBezierWithFlatness:v10 startPoint:v8 controlPoint1:v11 controlPoint2:v12 endPoint:*v13 addLineBlock:*&v13[8], *&v13[24]];
          }

          else if (v7 == 3)
          {
            [v4 closePath];
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            [v4 lineToPoint:v12];
          }
        }

        else
        {
          [v4 moveToPoint:v11];
        }
      }
    }
  }

  return v4;
}

+ (id)p_bezierPathWithSectionOfBezierPath:(id)a3 centeredAtPercentAlongPath:(double)a4 withMaximumLength:(double)a5
{
  v7 = a3;
  [v7 length];
  if (v8 == 0.0)
  {
    v9 = +[CRLBezierPath bezierPath];
  }

  else
  {
    v10 = a5 / v8 * 0.5;
    v16 = 0.0;
    v11 = [v7 elementPercentage:&v16 forOverallPercentage:{fmax(a4 - v10, 0.0)}];
    v15 = 0.0;
    v12 = [v7 elementPercentage:&v15 forOverallPercentage:{fmin(v10 + a4, 1.0)}];
    v9 = [v7 copyFromSegment:v11 t:v12 toSegment:v16 t:v15];
  }

  v13 = v9;

  return v13;
}

+ (id)p_bitmapFillablePathFromPaths:(id)a3 atFillPoint:(CGPoint)a4 allowOverflowingPath:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  v9 = CGRectNull.origin.x;
  v10 = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (v14)
  {
    v15 = *v88;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v88 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v87 + 1) + 8 * i) controlPointBounds];
        v105.origin.x = v17;
        v105.origin.y = v18;
        v105.size.width = v19;
        v105.size.height = v20;
        v100.origin.x = v9;
        v100.origin.y = v10;
        v100.size.width = width;
        v100.size.height = height;
        v101 = CGRectUnion(v100, v105);
        v9 = v101.origin.x;
        v10 = v101.origin.y;
        width = v101.size.width;
        height = v101.size.height;
      }

      v14 = [v13 countByEnumeratingWithState:&v87 objects:v92 count:16];
    }

    while (v14);
  }

  v80 = a5;

  v102.origin.x = v9;
  v102.origin.y = v10;
  v102.size.width = width;
  v102.size.height = height;
  v103 = CGRectInset(v102, -5.0, -5.0);
  sub_10012211C(v103.size.width);
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v21, v22);
  v27 = 0;
  if (v25 != 0.0 && v26 != 0.0)
  {
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = sub_10011F340(v25, v26, 2.0);
    v33 = sub_100121ED4(v31, v32, 4194304.0);
    v34 = sub_10012211C(v33);
    v36 = v35;
    memset(&v86, 0, sizeof(v86));
    v37 = v34 / v30;
    CGAffineTransformMakeScale(&v86, v37, v37);
    v85 = v86;
    CGAffineTransformTranslate(transform, &v85, -v28, -v29);
    v86 = *transform;
    v38 = sub_10050DF80(10, v34, v36);
    if (!v38)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101390174();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10139019C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101390240();
      }

      v39 = off_1019EDA68;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v40 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingFloodFillHelper p_bitmapFillablePathFromPaths:atFillPoint:allowOverflowingPath:]");
      v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingFloodFillHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v40 file:v41 lineNumber:463 isFatal:0 description:"invalid nil value for '%{public}s'", "pathContext"];
    }

    CGContextSaveGState(v38);
    *transform = v86;
    CGContextConcatCTM(v38, transform);
    CGContextSetLineWidth(v38, 1.0 / v37);
    CGContextSetGrayStrokeColor(v38, 0.0, 1.0);
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v42 = v13;
    v43 = [v42 countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v43)
    {
      v44 = *v82;
      do
      {
        for (j = 0; j != v43; j = j + 1)
        {
          if (*v82 != v44)
          {
            objc_enumerationMutation(v42);
          }

          CGContextAddPath(v38, [*(*(&v81 + 1) + 8 * j) CGPath]);
        }

        v43 = [v42 countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v43);
    }

    CGContextStrokePath(v38);
    CGContextRestoreGState(v38);
    Image = CGBitmapContextCreateImage(v38);
    if (!Image)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101390268();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101390290();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101390334();
      }

      v47 = off_1019EDA68;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v48 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingFloodFillHelper p_bitmapFillablePathFromPaths:atFillPoint:allowOverflowingPath:]");
      v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingFloodFillHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:480 isFatal:0 description:"invalid nil value for '%{public}s'", "pathImage"];
    }

    CGContextRelease(v38);
    v50 = [CRLInstantAlphaHelper newInstantAlphaImageWithCGImage:Image ofSize:v34, v36];
    CGImageRelease(Image);
    if (v50)
    {
      v51 = v86.tx + y * v86.c + v86.a * x;
      v52 = v86.ty + y * v86.d + v86.b * x;
      v104.origin.x = sub_10011ECB4();
      v53 = v104.origin.y;
      v54 = v104.size.width;
      v55 = v104.size.height;
      v79 = v104.origin.x;
      v99.x = v51;
      v99.y = v52;
      if (!CGRectContainsPoint(v104, v99))
      {
LABEL_44:
        v27 = 0;
LABEL_76:

        goto LABEL_77;
      }

      v56 = v51;
      v57 = v52;
      v58 = v50;
      v59 = v58;
      if (v51 < 0 || v57 < 0 || (v60 = v58[1], v60 <= v56) || v58[2] <= v57)
      {
        v65 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10139035C();
        }

        v66 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v77 = v59[1];
          v78 = v59[2];
          *transform = 67110914;
          *&transform[4] = v65;
          *&transform[8] = 2082;
          *&transform[10] = "CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)";
          *&transform[18] = 2082;
          *&transform[20] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h";
          *&transform[28] = 1024;
          *&transform[30] = 36;
          *&transform[34] = 2048;
          *&transform[36] = v51;
          *&transform[44] = 2048;
          *&transform[46] = v52;
          v94 = 2048;
          v95 = v77;
          v96 = 2048;
          v97 = v78;
          _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", transform, 0x4Au);
          if (qword_101AD5A10 != -1)
          {
            sub_101390384();
          }
        }

        v67 = off_1019EDA68;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v68 = [NSString stringWithUTF8String:"CRLInstantAlphaPixel getPixel(CRLInstantAlphaImage *__strong, NSInteger, NSInteger)"];
        v69 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInstantAlphaImage.h"];
        [CRLAssertionHandler handleFailureInFunction:v68 file:v69 lineNumber:36 isFatal:0 description:"bad request for get pixel in IA: (%li, %li) for image of size (%li, %li)", v51, v52, v59[1], v59[2]];
      }

      else
      {
        v61 = *(v58[3] + 4 * v60 * v57 + 4 * v56);

        if (v61)
        {
          goto LABEL_44;
        }
      }

      v63 = [[CRLInstantAlphaBinaryBitmap alloc] initWithWidth:v34 height:v36];
      v64 = [CRLInstantAlphaHelper newMaskSeedFillWithPoint:v59 inImage:0 tolerance:v63 oldFill:v51, v52];
      if (!v64)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013903AC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013903D4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101390478();
        }

        v70 = off_1019EDA68;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v71 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingFloodFillHelper p_bitmapFillablePathFromPaths:atFillPoint:allowOverflowingPath:]");
        v72 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingFloodFillHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v71 file:v72 lineNumber:503 isFatal:0 description:"invalid nil value for '%{public}s'", "binaryBitmap"];
      }

      v73 = [CRLBezierPath tracedPathForInstantAlphaBinaryBitmap:v64 pointSpacing:1.0];
      v74 = [CRLBezierPath bezierPathWithRect:v79, v53, v54, v55];
      v75 = [v74 subtractBezierPath:v73];

      v27 = v75;
      if (v80 || ![v75 containsPoint:{v37 * 5.0 * 0.5, v37 * 5.0 * 0.5}])
      {
        v85 = v86;
        CGAffineTransformInvert(transform, &v85);
        [v75 transformUsingAffineTransform:transform];
        goto LABEL_75;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013904A0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013904C8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101390558();
      }

      v62 = off_1019EDA68;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v63 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingFloodFillHelper p_bitmapFillablePathFromPaths:atFillPoint:allowOverflowingPath:]");
      v64 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingFloodFillHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v63 file:v64 lineNumber:489 isFatal:0 description:"iaImage should not be nil"];
    }

    v27 = 0;
LABEL_75:

    goto LABEL_76;
  }

LABEL_77:

  return v27;
}

@end