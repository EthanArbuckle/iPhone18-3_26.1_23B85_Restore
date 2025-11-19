@interface CRLMultiRepRotateTracker
- (BOOL)isEnqueueingCommandsInRealTime;
- (CGPoint)unscaledCenterForRotation;
- (CGRect)p_unscaledBoundingRectForReps:(id)a3;
- (CRLMultiRepRotateTracker)initWithReps:(id)a3;
- (NSSet)repsBeingRotated;
- (double)currentTotalAngleOfRotationInRadians;
- (id)p_trackersForReps:(id)a3;
- (void)addRotateDelta:(double)a3;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)commitChangesForReps:(id)a3;
- (void)setScaledHUDPosition:(CGPoint)a3;
- (void)setUnscaledCenterForRotation:(CGPoint)a3;
@end

@implementation CRLMultiRepRotateTracker

- (CRLMultiRepRotateTracker)initWithReps:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLMultiRepRotateTracker;
  v5 = [(CRLMultiRepRotateTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(CRLMultiRepRotateTracker *)v5 p_trackersForReps:v4];
    trackers = v6->_trackers;
    v6->_trackers = v7;
  }

  return v6;
}

- (NSSet)repsBeingRotated
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_trackers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) rep];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGPoint)unscaledCenterForRotation
{
  if (![(NSArray *)self->_trackers count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135FAF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135FB08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135FB9C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMultiRepRotateTracker unscaledCenterForRotation]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMultiRepRotateTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:45 isFatal:0 description:"Must have at least one tracker to ask for its center of rotation"];
  }

  v6 = [(NSArray *)self->_trackers firstObject];
  [v6 unscaledCenterForRotation];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setUnscaledCenterForRotation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_trackers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setUnscaledCenterForRotation:{x, y, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (double)currentTotalAngleOfRotationInRadians
{
  if (![(NSArray *)self->_trackers count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135FBC4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135FBD8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135FC6C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMultiRepRotateTracker currentTotalAngleOfRotationInRadians]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLMultiRepRotateTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:58 isFatal:0 description:"Must have at least one tracker to ask for its total angle of rotation"];
  }

  v6 = [(NSArray *)self->_trackers firstObject];
  [v6 currentTotalAngleOfRotationInRadians];
  v8 = v7;

  return v8;
}

- (id)p_trackersForReps:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  [(CRLMultiRepRotateTracker *)self p_unscaledBoundingRectForReps:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100120414(v7, v9, v11, v13);
    v19 = v18;
    v20 = *v29;
    v21 = 1;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        v24 = [CRLCanvasRepRotateTracker alloc];
        v25 = [(CRLCanvasRepRotateTracker *)v24 initWithRep:v23, v28];
        [(CRLCanvasRepRotateTracker *)v25 setUnscaledCenterForRotation:v17, v19];
        [(CRLCanvasRepRotateTracker *)v25 setShouldShowGuides:v21 & 1];
        [(CRLCanvasRepRotateTracker *)v25 setSnapThreshold:0.0];
        [(CRLCanvasRepRotateTracker *)v25 setShouldShowHUD:0];
        [v5 addObject:v25];

        v21 = 0;
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v21 = 0;
    }

    while (v16);
  }

  v26 = [v5 copy];

  return v26;
}

- (CGRect)p_unscaledBoundingRectForReps:(id)a3
{
  v3 = a3;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        [v12 boundsForStandardKnobs];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v39.origin.x = x;
        v39.origin.y = y;
        v39.size.width = width;
        v39.size.height = height;
        IsNull = CGRectIsNull(v39);
        [v12 convertNaturalRectToUnscaledCanvas:{v14, v16, v18, v20}];
        v26 = v22;
        v27 = v23;
        v28 = v24;
        v29 = v25;
        if (!IsNull)
        {
          v40.origin.x = x;
          v40.origin.y = y;
          v40.size.width = width;
          v40.size.height = height;
          *&v22 = CGRectUnion(v40, *&v26);
        }

        x = v22;
        y = v23;
        width = v24;
        height = v25;
      }

      v9 = [v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)addRotateDelta:(double)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_trackers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) addRotateDelta:{a3, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setScaledHUDPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(NSArray *)self->_trackers firstObject];
  [v5 setScaledHUDPosition:{x, y}];
}

- (BOOL)isEnqueueingCommandsInRealTime
{
  v3 = [(NSArray *)self->_trackers firstObject];
  v4 = [v3 rep];
  v5 = [v4 interactiveCanvasController];
  v6 = [v5 shouldSupportedDynamicOperationsEnqueueCommandsInRealTime];

  if (!v6)
  {
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_trackers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) rep];
        v13 = [v12 allowsSupportedDynamicOperationsToBeRealTime];

        if (!v13)
        {
          v14 = 0;
          goto LABEL_13;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_trackers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 rep];
        v10 = [NSSet setWithObject:v9];
        [v8 changeDynamicLayoutsForReps:v10];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)commitChangesForReps:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_trackers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 rep];
        v10 = [NSSet setWithObject:v9];
        [v8 commitChangesForReps:v10];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end