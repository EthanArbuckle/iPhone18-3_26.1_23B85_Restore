@interface CRLCounterRotateLayout
- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable;
- (BOOL)supportsFlipping;
- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform;
- (CGRect)boundsForStandardKnobs;
- (CGSize)minimumSize;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)childInfosForChildLayouts;
- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)transform;
- (id)descendentWrappables;
- (id)reliedOnLayouts;
- (id)visibleGeometries;
- (void)takeFreeTransformFromTracker:(id)tracker;
- (void)takeSizeFromTracker:(id)tracker;
@end

@implementation CRLCounterRotateLayout

- (id)childInfosForChildLayouts
{
  v8.receiver = self;
  v8.super_class = CRLCounterRotateLayout;
  childInfosForChildLayouts = [(CRLCanvasLayout *)&v8 childInfosForChildLayouts];
  containerInfo = [(CRLCounterRotateLayout *)self containerInfo];
  childInfos = [containerInfo childInfos];

  if ([childInfos count])
  {
    v6 = [childInfos arrayByAddingObjectsFromArray:childInfosForChildLayouts];

    childInfosForChildLayouts = v6;
  }

  return childInfosForChildLayouts;
}

- (id)reliedOnLayouts
{
  children = [(CRLCanvasAbstractLayout *)self children];
  v3 = [NSSet setWithArray:children];

  return v3;
}

- (id)commandToClampModelToLayoutSizeWithAdditionalTransform:(CGAffineTransform *)transform
{
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  v9 = *&transform->c;
  v12[0] = *&transform->a;
  v12[1] = v9;
  v12[2] = *&transform->tx;
  v10 = [firstObject commandToClampModelToLayoutSizeWithAdditionalTransform:v12];

  return v10;
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  v4 = +[NSMutableArray array];
  v5 = objc_opt_class();
  parent = [(CRLCanvasAbstractLayout *)self parent];
  v7 = sub_100013F00(v5, parent);

  if (v7)
  {
    [v4 addObject:v7];
  }

  return v4;
}

- (CGRect)baseFrameForFrameForCullingWithAdditionalTransform:(CGAffineTransform *)transform
{
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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
  v10 = *&transform->c;
  *&t2.a = *&transform->a;
  *&t2.c = v10;
  *&t2.tx = *&transform->tx;
  CGAffineTransformConcat(&v25, &t1, &t2);
  [firstObject baseFrameForFrameForCullingWithAdditionalTransform:&v25];
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
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (firstObject)
  {
    [firstObject boundsForStandardKnobs];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [firstObject transform];
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
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  [firstObject minimumSize];
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
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  supportsFlipping = [firstObject supportsFlipping];

  return supportsFlipping;
}

- (id)visibleGeometries
{
  v3 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  geometry = [(CRLCanvasAbstractLayout *)self geometry];
  v5 = geometry;
  if (geometry)
  {
    [geometry transform];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
  }

  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  visibleGeometries = [firstObject visibleGeometries];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [visibleGeometries countByEnumeratingWithState:&v20 objects:v27 count:16];
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
          objc_enumerationMutation(visibleGeometries);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v19[0] = v24;
        v19[1] = v25;
        v19[2] = v26;
        v17 = [v16 geometryByTransformingBy:v19];
        [v3 addObject:v17];
      }

      v13 = [visibleGeometries countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v13);
  }

  return v3;
}

- (id)descendentWrappables
{
  v3 = [[NSMutableArray alloc] initWithCapacity:1];
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappable])
  {
    [v3 addObject:firstObject];
  }

  else if ([firstObject conformsToProtocol:&OBJC_PROTOCOL___CRLCanvasWrappableParent])
  {
    descendentWrappables = [firstObject descendentWrappables];
    [v3 addObjectsFromArray:descendentWrappables];
  }

  return v3;
}

- (BOOL)descendentWrappablesContainsWrappable:(id)wrappable
{
  wrappableCopy = wrappable;
  parent = [wrappableCopy parent];

  if (parent == self)
  {
    v16 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = sub_100014370(v6, wrappableCopy);
    v8 = [(CRLCanvasAbstractLayout *)self childLayoutContainingPossibleDescendentLayout:v7];
    v15 = sub_1003035DC(v8, 1, v9, v10, v11, v12, v13, v14, &OBJC_PROTOCOL___CRLCanvasWrappableParent);

    if (v15)
    {
      v16 = [v15 descendentWrappablesContainsWrappable:wrappableCopy];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)takeSizeFromTracker:(id)tracker
{
  trackerCopy = tracker;
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  [firstObject takeSizeFromTracker:trackerCopy];
}

- (void)takeFreeTransformFromTracker:(id)tracker
{
  trackerCopy = tracker;
  children = [(CRLCanvasAbstractLayout *)self children];
  firstObject = [children firstObject];

  if (!firstObject)
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

  [firstObject takeFreeTransformFromTracker:trackerCopy];
}

@end