@interface CRLCounterRotateLayout
- (BOOL)descendentWrappablesContainsWrappable:(id)a3;
- (BOOL)supportsFlipping;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3;
- (CGRect)boundsForStandardKnobs;
- (CGSize)minimumSize;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)childInfosForChildLayouts;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3;
- (id)descendentWrappables;
- (id)reliedOnLayouts;
- (id)visibleGeometries;
- (void)takeFreeTransformFromTracker:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
@end

@implementation CRLCounterRotateLayout

- (id)childInfosForChildLayouts
{
  v8.receiver = self;
  v8.super_class = CRLCounterRotateLayout;
  v3 = [(CRLCanvasLayout *)&v8 childInfosForChildLayouts];
  v4 = [(CRLCounterRotateLayout *)self containerInfo];
  v5 = [v4 childInfos];

  if ([v5 count])
  {
    v6 = [v5 arrayByAddingObjectsFromArray:v3];

    v3 = v6;
  }

  return v3;
}

- (id)reliedOnLayouts
{
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)a3
{
  v4 = [(CRLCanvasAbstractLayout *)self children];
  v5 = [v4 firstObject];

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BADC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BAF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135BB84();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout commandToClampModelToLayoutSizeWithAdditionalTransform:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:45 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  v9 = *&a3->c;
  v12[0] = *&a3->a;
  v12[1] = v9;
  v12[2] = *&a3->tx;
  v10 = [v5 commandToClampModelToLayoutSizeWithAdditionalTransform:v12];

  return v10;
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  v4 = +[NSMutableArray array];
  v5 = objc_opt_class();
  v6 = [(CRLCanvasAbstractLayout *)self parent];
  v7 = sub_100013F00(v5, v6);

  if (v7)
  {
    [v4 addObject:v7];
  }

  return v4;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)a3
{
  v5 = [(CRLCanvasAbstractLayout *)self children];
  v6 = [v5 firstObject];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BBAC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BBC0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135BC54();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout baseFrameForFrameForCullingWithAdditionalTransform:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:64 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  [(CRLCanvasAbstractLayout *)self transform];
  v10 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v10;
  *&t2.tx = *&a3->tx;
  CGAffineTransformConcat(&v25, &t1, &t2);
  [v6 baseFrameForFrameForCullingWithAdditionalTransform:&v25];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)boundsForStandardKnobs
{
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [v2 firstObject];

  if (v3)
  {
    [v3 boundsForStandardKnobs];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 transform];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BC7C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BC90();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135BD24();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout boundsForStandardKnobs]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];

    [0 boundsForStandardKnobs];
    v5 = v15;
    v7 = v16;
    v9 = v17;
    v11 = v18;
    memset(&v27, 0, sizeof(v27));
  }

  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  v29 = CGRectApplyAffineTransform(v28, &v27);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGSize)minimumSize
{
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [v2 firstObject];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BD4C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BD60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135BDF4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout minimumSize]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:77 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  [v3 minimumSize];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)supportsFlipping
{
  v2 = [(CRLCanvasAbstractLayout *)self children];
  v3 = [v2 firstObject];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BE1C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BE30();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135BEC4();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout supportsFlipping]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:83 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  v7 = [v3 supportsFlipping];

  return v7;
}

- (id)visibleGeometries
{
  v3 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v4 = [(CRLCanvasAbstractLayout *)self geometry];
  v5 = v4;
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  v6 = [(CRLCanvasAbstractLayout *)self children];
  v7 = [v6 firstObject];

  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BEEC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BF14();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135BFA8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout visibleGeometries]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:92 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  v11 = [v7 visibleGeometries];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v19[0] = v24;
        v19[1] = v25;
        v19[2] = v26;
        v17 = [v16 geometryByTransformingBy:v19];
        [v3 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v13);
  }

  return v3;
}

- (id)descendentWrappables
{
  v3 = [[NSMutableArray alloc] initWithCapacity:1];
  v4 = [(CRLCanvasAbstractLayout *)self children];
  v5 = [v4 firstObject];

  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135BFD0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135BFE4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C078();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout descendentWrappables]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:111 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappable])
  {
    [v3 addObject:v5];
  }

  else if ([v5 conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappableParent])
  {
    v9 = [v5 descendentWrappables];
    [v3 addObjectsFromArray:v9];
  }

  return v3;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)a3
{
  v4 = a3;
  v5 = [v4 parent];

  if (v5 == self)
  {
    v16 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, v4);
    v8 = [(CRLCanvasAbstractLayout *)self childLayoutContainingPossibleDescendentLayout:v7];
    v15 = sub_1003035DC(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLCanvasWrappableParent);

    if (v15)
    {
      v16 = [v15 descendentWrappablesContainsWrappable:v4];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)takeSizeFromTracker:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasAbstractLayout *)self children];
  v6 = [v5 firstObject];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C0A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C0B4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C148();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout takeSizeFromTracker:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:143 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  [v6 takeSizeFromTracker:v4];
}

- (void)takeFreeTransformFromTracker:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasAbstractLayout *)self children];
  v6 = [v5 firstObject];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135C170();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135C184();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135C218();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCounterRotateLayout takeFreeTransformFromTracker:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLCounterRotateLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:150 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayout"];
  }

  [v6 takeFreeTransformFromTracker:v4];
}

@end