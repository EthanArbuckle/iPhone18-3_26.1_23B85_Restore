@interface CRLBezierPathBooleanOperationHelper
+ (BOOL)hasAnyCrossingBetweenPath:(id)path andPath:(id)andPath;
+ (BOOL)hasAtLeastTwoVisuallyDistinctSubregionsInPath:(id)path;
+ (id)linePathWithLinePath:(id)path intersectedWithFilledPath:(id)filledPath;
+ (id)linePathWithLinePath:(id)path intersectedWithFilledPath:(id)filledPath outMapToInputPaths:(id *)paths;
+ (id)linePathWithLinePath:(id)path subtractingFilledPath:(id)filledPath;
+ (id)linePathWithLinePath:(id)path subtractingFilledPath:(id)filledPath outMapToInputPaths:(id *)paths;
+ (id)pathByFloodFillingPaths:(id)paths atFillPoint:(CGPoint)point;
+ (id)pathByNormalizingPath:(id)path;
+ (id)pathByPerformingBooleanOperation:(unint64_t)operation onPaths:(id)paths;
+ (id)pathByPerformingBooleanOperation:(unint64_t)operation onPaths:(id)paths outMapToInputPaths:(id *)inputPaths;
+ (id)pathsBySeparatingVisuallyDistinctSubregionsOfPath:(id)path;
@end

@implementation CRLBezierPathBooleanOperationHelper

+ (id)pathByNormalizingPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    if ([pathCopy containsElementsOtherThanMoveAndClose])
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      [v4 controlPointBounds];
      sub_100411A38(&v12, v5);
      memset(v11, 0, sizeof(v11));
      v15 = v12;
      v16 = v13;
      v17 = v14;
      sub_100411BA0(v11, v4, &v15, 1, 0);
      v15 = v12;
      v16 = v13;
      v17 = v14;
      sub_100412640();
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136EC0C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136EC20();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136ECBC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByNormalizingPath:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:817 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPath"];
  }

  v9 = +[CRLBezierPath bezierPath];
  [v4 copyPathAttributesTo:v9];

  return v9;
}

+ (id)pathByPerformingBooleanOperation:(unint64_t)operation onPaths:(id)paths
{
  v4 = [self pathByPerformingBooleanOperation:operation onPaths:paths outMapToInputPaths:0];

  return v4;
}

+ (id)pathByPerformingBooleanOperation:(unint64_t)operation onPaths:(id)paths outMapToInputPaths:(id *)inputPaths
{
  pathsCopy = paths;
  v9 = pathsCopy;
  if (inputPaths)
  {
    v10 = objc_alloc_init(CRLBezierPathBooleanOperationInputPathMap);
    *inputPaths = v10;
    v11 = v10;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_9:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136EEEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136EF00();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136EF9C();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:onPaths:outMapToInputPaths:]");
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:868 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPaths"];

    goto LABEL_18;
  }

  v11 = 0;
  if (!pathsCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (![v9 count])
  {
LABEL_18:
    v12 = +[CRLBezierPath bezierPath];
    goto LABEL_67;
  }

  if (operation >= 4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136ED34();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136ED48();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136EDE4();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:onPaths:outMapToInputPaths:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:883 isFatal:0 description:"Unsupported BOOLean operation type: %zu", operation];

    v12 = +[CRLBezierPath bezierPath];
    v20 = [v9 objectAtIndexedSubscript:0];
    [v20 copyPathAttributesTo:v12];
  }

  else
  {
    if (operation == 3 && [v9 count] >= 3)
    {
      v12 = +[CRLBezierPath bezierPath];
      v13 = [v9 objectAtIndexedSubscript:0];
      [v13 copyPathAttributesTo:v12];

      goto LABEL_67;
    }

    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v25 = v9;
    v26 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v26)
    {
      v27 = *v51;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v50 + 1) + 8 * i);
          if (([v29 isEmpty] & 1) == 0)
          {
            [v29 controlPointBounds];
            v62.origin.x = v30;
            v62.origin.y = v31;
            v62.size.width = v32;
            v62.size.height = v33;
            v59.origin.x = x;
            v59.origin.y = y;
            v59.size.width = width;
            v59.size.height = height;
            v60 = CGRectUnion(v59, v62);
            x = v60.origin.x;
            y = v60.origin.y;
            width = v60.size.width;
            height = v60.size.height;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v26);
    }

    if ([v25 count] == 1 || (v61.origin.x = x, v61.origin.y = y, v61.size.width = width, v61.size.height = height, CGRectIsNull(v61)))
    {
      if (operation - 2 < 2 || !operation)
      {
        v35 = [v25 objectAtIndexedSubscript:0];
        v12 = [self pathByNormalizingPath:v35];

        goto LABEL_67;
      }

      if (operation == 1)
      {
        v12 = +[CRLBezierPath bezierPath];
        v34 = [v25 objectAtIndexedSubscript:0];
        [v34 copyPathAttributesTo:v12];

        goto LABEL_67;
      }
    }

    v36 = +[NSMutableArray array];
    for (j = 0; j < [v25 count]; ++j)
    {
      v38 = [v25 objectAtIndexedSubscript:j];
      if (operation == 1 || j <= 1)
      {
        v39 = +[NSMutableArray array];
        [v36 addObject:v39];
      }

      lastObject = [v36 lastObject];
      [lastObject addObject:v38];
    }

    if (operation - 1 > 2)
    {
      v41 = 2;
    }

    else
    {
      v41 = dword_101465AB0[operation - 1];
    }

    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v42 = sub_100411A38(&v54, x);
    if (v11 && [v36 count] >= 3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136EE0C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136EE34();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136EEC4();
      }

      v43 = off_1019EDA68;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v44 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByPerformingBooleanOperation:onPaths:outMapToInputPaths:]");
      v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v44 file:v45 lineNumber:952 isFatal:0 description:"Unable to generate an accurate input path map when performing multiple BOOLean operations. Skipping populating it."];

      v11 = 0;
    }

    v46 = [v36 objectAtIndexedSubscript:{0, v42}];
    v12 = [v46 objectAtIndexedSubscript:0];

    if ([v36 count] > 1)
    {
      v47 = [v36 objectAtIndexedSubscript:1];
      v49[0] = v54;
      v49[1] = v55;
      v49[2] = v56;
      sub_100413A20(v12, 1, v47, v41, v49, v11);
    }
  }

LABEL_67:

  return v12;
}

+ (id)linePathWithLinePath:(id)path subtractingFilledPath:(id)filledPath
{
  v4 = [self linePathWithLinePath:path subtractingFilledPath:filledPath outMapToInputPaths:0];

  return v4;
}

+ (id)linePathWithLinePath:(id)path subtractingFilledPath:(id)filledPath outMapToInputPaths:(id *)paths
{
  pathCopy = path;
  filledPathCopy = filledPath;
  if (paths)
  {
    v9 = objc_alloc_init(CRLBezierPathBooleanOperationInputPathMap);
    *paths = v9;
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100414AE4(3, pathCopy, filledPathCopy, v10);

  return v11;
}

+ (id)linePathWithLinePath:(id)path intersectedWithFilledPath:(id)filledPath
{
  v4 = [self linePathWithLinePath:path intersectedWithFilledPath:filledPath outMapToInputPaths:0];

  return v4;
}

+ (id)linePathWithLinePath:(id)path intersectedWithFilledPath:(id)filledPath outMapToInputPaths:(id *)paths
{
  pathCopy = path;
  filledPathCopy = filledPath;
  if (paths)
  {
    v9 = objc_alloc_init(CRLBezierPathBooleanOperationInputPathMap);
    *paths = v9;
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100414AE4(1, pathCopy, filledPathCopy, v10);

  return v11;
}

+ (BOOL)hasAnyCrossingBetweenPath:(id)path andPath:(id)andPath
{
  pathCopy = path;
  andPathCopy = andPath;
  v7 = pathCopy;
  v8 = andPathCopy;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v58[0] = v7;
      v58[1] = v8;
      v10 = [NSArray arrayWithObjects:v58 count:2];
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v32 objects:v57 count:16];
      if (v16)
      {
        v17 = *v33;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v32 + 1) + 8 * i);
            if (([v19 isEmpty] & 1) == 0)
            {
              [v19 controlPointBounds];
              v63.origin.x = v20;
              v63.origin.y = v21;
              v63.size.width = v22;
              v63.size.height = v23;
              v59.origin.x = x;
              v59.origin.y = y;
              v59.size.width = width;
              v59.size.height = height;
              v60 = CGRectUnion(v59, v63);
              x = v60.origin.x;
              y = v60.origin.y;
              width = v60.size.width;
              height = v60.size.height;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v32 objects:v57 count:16];
        }

        while (v16);
      }

      v61.origin.x = x;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      if (!CGRectIsNull(v61))
      {
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        *&v24 = CGRectInset(v62, -3.0, -3.0);
        memset(v31, 0, sizeof(v31));
        sub_100411A38(v31, v24);
        v37 = 0;
        v38 = 2;
        v39 = 0;
        v40 = 0;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        memset(v50, 0, 29);
        v50[29] = 1;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        v56 = 0;
        v36 = &off_1018610B8;
        operator new();
      }

LABEL_28:

      goto LABEL_29;
    }

LABEL_21:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F39C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F3C4();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v15 = [NSString stringWithUTF8String:"BOOL _hasAnyIntersectionBetweenPaths(CRLBezierPath *const  _Nonnull __strong, CRLBezierPath *const  _Nonnull __strong)"];
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v29 lineNumber:1431 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPath2"];

    goto LABEL_28;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10136F2B8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10136F2CC();
  }

  v25 = off_1019EDA68;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    +[CRLAssertionHandler packedBacktraceString];
    objc_claimAutoreleasedReturnValue();
    sub_10130E89C();
  }

  v26 = [NSString stringWithUTF8String:"BOOL _hasAnyIntersectionBetweenPaths(CRLBezierPath *const  _Nonnull __strong, CRLBezierPath *const  _Nonnull __strong)"];
  v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
  [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:1430 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPath1"];

  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_29:

  return 0;
}

+ (BOOL)hasAtLeastTwoVisuallyDistinctSubregionsInPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = sub_100415E80(pathCopy, 2uLL);
    if ([v5 count] >= 3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136F494();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10136F4A8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10136F538();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper hasAtLeastTwoVisuallyDistinctSubregionsInPath:]");
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1018 isFatal:0 description:"We asked to stop after finding 2 paths."];
    }

    v9 = [v5 count] > 1;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F560();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F574();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136F610();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper hasAtLeastTwoVisuallyDistinctSubregionsInPath:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v11 lineNumber:1011 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPath"];

    v9 = 0;
  }

  return v9;
}

+ (id)pathsBySeparatingVisuallyDistinctSubregionsOfPath:(id)path
{
  pathCopy = path;
  v4 = pathCopy;
  if (pathCopy)
  {
    v5 = sub_100415E80(pathCopy, 0);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F718();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F72C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136F7C4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathsBySeparatingVisuallyDistinctSubregionsOfPath:]");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1024 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPath"];

    v5 = &__NSArray0__struct;
  }

  return v5;
}

+ (id)pathByFloodFillingPaths:(id)paths atFillPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathsCopy = paths;
  v30 = pathsCopy;
  if (!pathsCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F998();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F9AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136FA48();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v32 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByFloodFillingPaths:atFillPoint:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v32 file:v6 lineNumber:1035 isFatal:0 description:"invalid nil value for '%{public}s'", "inputPaths"];
    goto LABEL_22;
  }

  if ([pathsCopy count])
  {
    if (!sub_1001208AC(x, y))
    {
      v10 = v30;
      v11 = CGRectNull.origin.x;
      v12 = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = v10;
      v16 = [v15 countByEnumeratingWithState:&v37 objects:v64 count:16];
      if (v16)
      {
        v17 = *v38;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v37 + 1) + 8 * i);
            if (([v19 isEmpty] & 1) == 0)
            {
              [v19 controlPointBounds];
              v70.origin.x = v20;
              v70.origin.y = v21;
              v70.size.width = v22;
              v70.size.height = v23;
              v66.origin.x = v11;
              v66.origin.y = v12;
              v66.size.width = width;
              v66.size.height = height;
              v67 = CGRectUnion(v66, v70);
              v11 = v67.origin.x;
              v12 = v67.origin.y;
              width = v67.size.width;
              height = v67.size.height;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v37 objects:v64 count:16];
        }

        while (v16);
      }

      v68.origin.x = v11;
      v68.origin.y = v12;
      v68.size.width = width;
      v68.size.height = height;
      if (!CGRectIsNull(v68))
      {
        v69.origin.x = v11;
        v69.origin.y = v12;
        v69.size.width = width;
        v69.size.height = height;
        *&v24 = CGRectInset(v69, -3.0, -3.0);
        [CRLBezierPath bezierPathWithRect:?];
        v35 = 0u;
        v36 = 0u;
        v28 = v34 = 0u;
        sub_100411A38(&v34, v24);
        v44[5] = 0;
        v45 = 2;
        v46 = 0;
        v47 = 0;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        memset(v57, 0, 29);
        v57[29] = 1;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v61[3] = 0;
        v63 = 0;
        v44[4] = &off_1018610B8;
        v62 = 1;
        v44[0] = off_101861508;
        v44[1] = sub_1004127F4;
        v44[3] = v44;
        sub_100418B10(v61, v44);
        sub_10041F170(v44);
        memset(v33, 0, sizeof(v33));
        v41 = v34;
        v42 = v35;
        v43 = v36;
        sub_100411BA0(v33, v28, &v41, 1, 0);
        v41 = v34;
        v42 = v35;
        v43 = v36;
        sub_100412640();
      }

      v32 = &__NSArray0__struct;

      if ([&__NSArray0__struct count] >= 2)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10136F7EC();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10136F814();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10136F8A4();
        }

        v25 = off_1019EDA68;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[CRLAssertionHandler packedBacktraceString];
          objc_claimAutoreleasedReturnValue();
          sub_10130E89C();
        }

        v26 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByFloodFillingPaths:atFillPoint:]");
        v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
        [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:1049 isFatal:0 description:"Should never get more than one path back with a non-null fill point."];
      }

      if ([&__NSArray0__struct count])
      {
        v8 = [&__NSArray0__struct objectAtIndexedSubscript:0];
        goto LABEL_24;
      }

LABEL_23:
      v8 = 0;
LABEL_24:

      goto LABEL_26;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136F8CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136F8E0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10136F970();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v32 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLBezierPathBooleanOperationHelper pathByFloodFillingPaths:atFillPoint:]");
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLBezierPathBooleanOperationHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v32 file:v6 lineNumber:1044 isFatal:0 description:"Unable to fill path at null point."];
LABEL_22:

    goto LABEL_23;
  }

  v8 = 0;
LABEL_26:

  return v8;
}

@end