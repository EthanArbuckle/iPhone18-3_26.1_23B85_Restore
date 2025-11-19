@interface AXGestureRecorderFingerPathCollection
- (AXGestureRecorderFingerPathCollection)init;
- (AXGestureRecorderFingerPathCollection)initWithMaximumFingerPathsCount:(unint64_t)a3;
- (AXGestureRecorderFingerPathCollectionDelegate)delegate;
- (CGPoint)_interfaceOrientedScreenPointForPoint:(CGPoint)a3 view:(id)a4;
- (NSMutableArray)referenceTimesArray;
- (double)timestampAtIndex:(unint64_t)a3;
- (id)_bezierPathToAppendForTouchLocation:(CGPoint)a3 unnamedValue:(double)a4 optionalPreviousTouchLocation:(id)a5 optionalPreviousForce:(id)a6;
- (id)_nonRealTimeFingerPathToAppendForIndex:(unint64_t)a3 upToPositionForTimestampAtIndex:(unint64_t)a4;
- (id)_realTimeFingerPathToAppendForIndex:(unint64_t)a3 upToPositionForTimestampAtIndex:(unint64_t)a4;
- (id)fingerPathAtIndex:(unint64_t)a3;
- (id)fingerPathToAppendForIndex:(unint64_t)a3 forTimestampAtIndex:(unint64_t)a4;
- (id)propertyListRepresentationWithName:(id)a3;
- (unint64_t)fingerPathsCount;
- (unint64_t)timestampsCount;
- (void)_addPointsToReplayableGesture:(id)a3 forces:(id)a4 time:(double)a5;
- (void)_didInsertFingerPathAtIndex:(unint64_t)a3;
- (void)_didUpdateFingerPathAtIndex:(unint64_t)a3;
- (void)appendFingerPathsFromFingerPathCollection:(id)a3;
- (void)appendPointsForTouches:(id)a3 referenceView:(id)a4 time:(double)a5;
- (void)dealloc;
- (void)handleLiftForTouches:(id)a3 referenceView:(id)a4 time:(double)a5;
- (void)reset;
@end

@implementation AXGestureRecorderFingerPathCollection

- (AXGestureRecorderFingerPathCollection)init
{
  v4.receiver = self;
  v4.super_class = AXGestureRecorderFingerPathCollection;
  v2 = [(AXGestureRecorderFingerPathCollection *)&v4 init];
  if (v2)
  {
  }

  return 0;
}

- (AXGestureRecorderFingerPathCollection)initWithMaximumFingerPathsCount:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = AXGestureRecorderFingerPathCollection;
  v4 = [(AXGestureRecorderFingerPathCollection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXGestureRecorderFingerPathCollection *)v4 setMaximumFingerPathsCount:a3];
    [(AXGestureRecorderFingerPathCollection *)v5 _referenceTimesArrayIndexNeedsRefresh];
  }

  return v5;
}

- (void)dealloc
{
  [(AXGestureRecorderFingerPathCollection *)self reset];
  v3.receiver = self;
  v3.super_class = AXGestureRecorderFingerPathCollection;
  [(AXGestureRecorderFingerPathCollection *)&v3 dealloc];
}

- (unint64_t)fingerPathsCount
{
  v2 = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)timestampsCount
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(AXGestureRecorderFingerPathCollection *)self shouldRecordRealTimeGesture])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v12 + 1) + 8 * i) count];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  else
  {
    v9 = [(AXGestureRecorderFingerPathCollection *)self referenceTimesArray];
    v10 = [v9 count];

    return v10;
  }
}

- (NSMutableArray)referenceTimesArray
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(AXGestureRecorderFingerPathCollection *)self shouldRecordRealTimeGesture])
  {
    _AXAssert();
  }

  v3 = [(AXGestureRecorderFingerPathCollection *)self referenceTimesArrayIndex];
  v4 = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
  v5 = [v4 count];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v5;
    v20 = v4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v22;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      v3 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v12 = 0;
        v13 = v9;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = [*(*(&v21 + 1) + 8 * v12) count];
          if (v11 == 0x7FFFFFFFFFFFFFFFLL || v14 > v11)
          {
            v11 = v14;
            v3 = v13;
          }

          ++v13;
          ++v12;
        }

        while (v8 != v12);
        v9 += v8;
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    else
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(AXGestureRecorderFingerPathCollection *)self setReferenceTimesArrayIndex:v3];
    v5 = v19;
    v4 = v20;
  }

  v17 = 0;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 < v5)
  {
    v17 = [v4 objectAtIndex:v3];
  }

  return v17;
}

- (id)fingerPathAtIndex:(unint64_t)a3
{
  v4 = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)fingerPathToAppendForIndex:(unint64_t)a3 forTimestampAtIndex:(unint64_t)a4
{
  if ([(AXGestureRecorderFingerPathCollection *)self shouldRecordRealTimeGesture])
  {
    [(AXGestureRecorderFingerPathCollection *)self _realTimeFingerPathToAppendForIndex:a3 upToPositionForTimestampAtIndex:a4];
  }

  else
  {
    [(AXGestureRecorderFingerPathCollection *)self _nonRealTimeFingerPathToAppendForIndex:a3 upToPositionForTimestampAtIndex:a4];
  }
  v7 = ;

  return v7;
}

- (id)_nonRealTimeFingerPathToAppendForIndex:(unint64_t)a3 upToPositionForTimestampAtIndex:(unint64_t)a4
{
  v4 = a4;
  if ([(AXGestureRecorderFingerPathCollection *)self timestampsCount]<= a4)
  {
    v11 = 0;
  }

  else
  {
    v7 = [(AXGestureRecorderFingerPathCollection *)self pointsArrays];
    v8 = [v7 objectAtIndex:a3];

    v9 = [(AXGestureRecorderFingerPathCollection *)self forcesArrays];
    v10 = [v9 objectAtIndex:a3];

    if ([v8 count] <= v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC728] bezierPath];
      if ([v8 count] > v4)
      {
        v12 = [v8 objectAtIndexedSubscript:v4];
        [v12 CGPointValue];
        v14 = v13;
        v16 = v15;

        v17 = [v10 objectAtIndexedSubscript:v4];
        [v17 doubleValue];
        v19 = v18;

        if (v4)
        {
          v20 = v4 - 1;
          v4 = [v8 objectAtIndexedSubscript:v4 - 1];
          v21 = [v10 objectAtIndexedSubscript:v20];
        }

        else
        {
          v21 = 0;
        }

        v22 = [(AXGestureRecorderFingerPathCollection *)self _bezierPathToAppendForTouchLocation:v4 unnamedValue:v21 optionalPreviousTouchLocation:v14 optionalPreviousForce:v16, v19];
        [v11 appendBezierPath:v22];
      }
    }
  }

  return v11;
}

- (id)_realTimeFingerPathToAppendForIndex:(unint64_t)a3 upToPositionForTimestampAtIndex:(unint64_t)a4
{
  v4 = a4;
  if ([(AXGestureRecorderFingerPathCollection *)self timestampsCount]<= a4)
  {
    v10 = 0;
    goto LABEL_26;
  }

  [(AXGestureRecorderFingerPathCollection *)self timestampAtIndex:v4];
  v8 = v7;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  v9 = [(AXGestureRecorderFingerPathCollection *)self touchPathIndicesToFingerPathIndices];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __109__AXGestureRecorderFingerPathCollection__realTimeFingerPathToAppendForIndex_upToPositionForTimestampAtIndex___block_invoke;
  v46[3] = &unk_1E812E430;
  v46[4] = &v47;
  v46[5] = a3;
  [v9 enumerateKeysAndObjectsUsingBlock:v46];

  v10 = [MEMORY[0x1E69DC728] bezierPath];
  v11 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  v12 = [v11 numberOfEvents];

  if (v12 > v4)
  {
    while (1)
    {
      v13 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
      [v13 timeAtEventIndex:v4];
      v15 = v14;

      if (v15 >= v8 || v4 >= v12)
      {
        break;
      }

      ++v4;
    }

    if (v4 >= v12)
    {
      v44 = v8;
      _AXAssert();
    }

    v17 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [v17 timeAtEventIndex:v4];
    v19 = v18;

    if (v19 != v8)
    {
      v45 = v8;
      _AXAssert();
    }

    if (v4 >= v12)
    {
      goto LABEL_25;
    }

    v20 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [v20 timeAtEventIndex:v4];
    v22 = v21;

    if (v22 != v8 || v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    v23 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v24 = [v23 fingerIdentifiersAtEventIndex:v4];

    if (![v24 containsObject:v48[5]])
    {
      goto LABEL_24;
    }

    v25 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [v25 pointForFingerIdentifier:v48[5] atEventIndex:v4];
    v27 = v26;
    v29 = v28;

    v30 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [v30 forceForFingerIdentifier:v48[5] atEventIndex:v4];
    v32 = v31;

    if (v4)
    {
      v33 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
      v34 = v4 - 1;
      v35 = [v33 fingerIdentifiersAtEventIndex:v4 - 1];
      v36 = [v35 containsObject:v48[5]];

      if (v36)
      {
        v37 = MEMORY[0x1E696B098];
        v38 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
        [v38 pointForFingerIdentifier:v48[5] atEventIndex:v34];
        v4 = [v37 valueWithCGPoint:?];

        v39 = MEMORY[0x1E696AD98];
        v40 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
        [v40 forceForFingerIdentifier:v48[5] atEventIndex:v34];
        v41 = [v39 numberWithDouble:?];

LABEL_23:
        v42 = [(AXGestureRecorderFingerPathCollection *)self _bezierPathToAppendForTouchLocation:v4 unnamedValue:v41 optionalPreviousTouchLocation:v27 optionalPreviousForce:v29, v32, *&v45];
        [v10 appendBezierPath:v42];

LABEL_24:
        goto LABEL_25;
      }

      v4 = 0;
    }

    v41 = 0;
    goto LABEL_23;
  }

  _AXAssert();
LABEL_25:
  _Block_object_dispose(&v47, 8);

LABEL_26:

  return v10;
}

void __109__AXGestureRecorderFingerPathCollection__realTimeFingerPathToAppendForIndex_upToPositionForTimestampAtIndex___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 unsignedIntegerValue] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (double)timestampAtIndex:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(AXGestureRecorderFingerPathCollection *)self shouldRecordRealTimeGesture])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v7 = 0.0;
    if (v6)
    {
      v8 = v6;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (a3 < [v11 count])
          {
            v12 = v11;
            goto LABEL_13;
          }

          a3 -= [v11 count];
        }

        v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v12 = [(AXGestureRecorderFingerPathCollection *)self referenceTimesArray];
    v5 = v12;
LABEL_13:
    v13 = [v12 objectAtIndexedSubscript:a3];
    [v13 doubleValue];
    v7 = v14;
  }

  return v7;
}

- (id)propertyListRepresentationWithName:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v35 = a3;
  v4 = objc_opt_new();
  v34 = self;
  [(AXGestureRecorderFingerPathCollection *)self pointsArrays];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v5 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = objc_opt_new();
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v38;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v38 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v37 + 1) + 8 * j) CGPointValue];
              v16 = NSStringFromCGPoint(v49);
              [v10 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v13);
        }

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v6);
  }

  v17 = [v4 count];
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = v17;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    v22 = [v4 objectAtIndex:v21];
    v23 = [v22 objectAtIndex:0];
    CGPointFromString(v23);

    v24 = v21 + 1;
    if (v21 + 1 < v18)
    {
      v25 = v21 + 1;
      do
      {
        v26 = [v4 objectAtIndex:v25];
        v27 = [v26 objectAtIndex:0];
        CGPointFromString(v27);

        AX_CGPointGetDistanceToPoint();
        if (v28 < 15.0 && [v22 count] <= 2 && objc_msgSend(v26, "count") >= 9)
        {
          if (!v19)
          {
            v19 = [v4 mutableCopy];
          }

          [v19 removeObjectAtIndex:v21 - v20++];
        }

        ++v25;
      }

      while (v18 != v25);
    }

    ++v21;
  }

  while (v24 != v18);
  if (!v19)
  {
LABEL_28:
    v19 = v4;
  }

  v29 = MEMORY[0x1E695DF20];
  v30 = [(AXGestureRecorderFingerPathCollection *)v34 forcesArrays];
  v31 = [(AXGestureRecorderFingerPathCollection *)v34 timesArrays];
  v32 = [v29 dictionaryWithObjectsAndKeys:{v35, @"Name", v19, @"Points", v30, @"Forces", v31, @"Times", 0}];

  return v32;
}

- (CGPoint)_interfaceOrientedScreenPointForPoint:(CGPoint)a3 view:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = [v6 window];
  [v6 convertPoint:0 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  [v7 convertPoint:0 toWindow:{v9, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)_bezierPathToAppendForTouchLocation:(CGPoint)a3 unnamedValue:(double)a4 optionalPreviousTouchLocation:(id)a5 optionalPreviousForce:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E69DC728] bezierPath];
  [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
  v15 = v14;
  v16 = a4 / 2000.0;
  [(AXGestureRecorderFingerPathCollection *)self maximumFingerLineWidth];
  v18 = v17;
  [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
  v20 = (v15 + v16 * (v18 - v19)) * 0.5;
  v21 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:v20 clockwise:{0.0, 6.28318531}];
  [v13 appendPath:v21];
  if (v11)
  {
    [v11 CGPointValue];
    v24 = v23;
    if (v23 != x || v22 != y)
    {
      v39 = v22;
      [v12 doubleValue];
      v26 = v25;
      [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
      v28 = v27;
      v29 = v26 / 2000.0;
      [(AXGestureRecorderFingerPathCollection *)self maximumFingerLineWidth];
      v31 = v30;
      [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
      v33 = (v28 + v29 * (v31 - v32)) * 0.5;
      v34 = [MEMORY[0x1E69DC728] bezierPath];
      v38 = atan2(y - v39, x - v24);
      v35 = __sincos_stret(v38 + -1.57079633);
      [v34 moveToPoint:{v24 + v33 * v35.__cosval, v39 + v33 * v35.__sinval}];
      [v34 addLineToPoint:{x + v20 * v35.__cosval, y + v20 * v35.__sinval}];
      v36 = __sincos_stret(v38 + 1.57079633);
      [v34 addLineToPoint:{x + v20 * v36.__cosval, y + v20 * v36.__sinval}];
      [v34 addLineToPoint:{v24 + v33 * v36.__cosval, v39 + v33 * v36.__sinval}];
      [v34 closePath];
      [v13 appendPath:v34];
    }
  }

  return v13;
}

- (void)appendPointsForTouches:(id)a3 referenceView:(id)a4 time:(double)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v56 = a4;
  v63 = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
  v9 = [v63 count];
  v64 = self;
  if (v9 > [(AXGestureRecorderFingerPathCollection *)self maximumFingerPathsCount])
  {
    goto LABEL_27;
  }

  context = objc_autoreleasePoolPush();
  v10 = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
  v11 = [v10 count];
  v12 = v11;
  if (!v10)
  {
    v10 = objc_opt_new();
    [(AXGestureRecorderFingerPathCollection *)v64 setTimesArrays:v10];
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_6:
    v13 = objc_opt_new();
    [v10 addObject:v13];
    goto LABEL_7;
  }

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_4:
  v13 = [v10 lastObject];
LABEL_7:
  v45 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a5];
  [v13 addObject:?];
  v59 = [(AXGestureRecorderFingerPathCollection *)v64 pointsArrays];
  v58 = [(AXGestureRecorderFingerPathCollection *)v64 forcesArrays];
  v60 = [(AXGestureRecorderFingerPathCollection *)v64 touchPathIndicesToFingerPathIndices];
  if (v9)
  {
    v51 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v9}];
  }

  else
  {
    v51 = 0;
  }

  v47 = v10;
  v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v8;
  v57 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  v49 = v8;
  v46 = v13;
  if (v57)
  {
    v52 = v9;
    v53 = *v69;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        v16 = [v15 _pathIndex];
        v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
        v17 = [v60 objectForKey:?];
        [v15 locationInView:v56];
        v19 = v18;
        v21 = v20;
        v22 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
        [v15 _pressure];
        v24 = v23;
        v25 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v26 = v24;
        v27 = [v25 initWithFloat:v26];
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
        [v55 setObject:v27 forKeyedSubscript:v28];

        v29 = MEMORY[0x1E696B098];
        [(AXGestureRecorderFingerPathCollection *)v64 _interfaceOrientedScreenPointForPoint:v56 view:v19, v21];
        v30 = [v29 valueWithCGPoint:?];
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16];
        [v54 setObject:v30 forKeyedSubscript:v31];

        if (v17)
        {
          v61 = v17;
          v32 = [v17 unsignedIntegerValue];
          v33 = [v59 objectAtIndex:v32];
          v34 = [v58 objectAtIndex:v32];
          v35 = [v34 lastObject];
          v36 = [v33 lastObject];
          v37 = [v63 objectAtIndex:v32];
          v38 = [(AXGestureRecorderFingerPathCollection *)v64 _bezierPathToAppendForTouchLocation:v36 unnamedValue:v35 optionalPreviousTouchLocation:v19 optionalPreviousForce:v21, v24];
          [v37 appendBezierPath:v38];
          [v33 addObject:v22];
          [v34 addObject:v27];
          [v51 removeIndex:v32];
          [(AXGestureRecorderFingerPathCollection *)v64 _didUpdateFingerPathAtIndex:v32];

          v39 = v62;
          v40 = v22;
        }

        else
        {
          v40 = v22;
          if (!v63)
          {
            v63 = objc_opt_new();
            [(AXGestureRecorderFingerPathCollection *)v64 setFingerPaths:?];
          }

          v41 = [(AXGestureRecorderFingerPathCollection *)v64 _bezierPathToAppendForTouchLocation:0 unnamedValue:0 optionalPreviousTouchLocation:v19 optionalPreviousForce:v21, v24];
          [v63 addObject:v41];
          v42 = v58;
          v39 = v62;
          if (!v59)
          {
            v59 = objc_opt_new();
            [(AXGestureRecorderFingerPathCollection *)v64 setPointsArrays:?];
            v42 = objc_opt_new();

            [(AXGestureRecorderFingerPathCollection *)v64 setForcesArrays:v42];
          }

          v34 = objc_opt_new();
          [v34 addObject:v40];
          [v59 addObject:v34];
          v35 = objc_opt_new();
          [v35 addObject:v27];
          v58 = v42;
          [v42 addObject:v35];
          if (!v60)
          {
            v60 = objc_opt_new();
            [(AXGestureRecorderFingerPathCollection *)v64 setTouchPathIndicesToFingerPathIndices:?];
          }

          v61 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v52];
          [v60 setObject:? forKey:?];
          [(AXGestureRecorderFingerPathCollection *)v64 _didInsertFingerPathAtIndex:v52++];
          v33 = v41;
        }
      }

      v57 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v57);
  }

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __83__AXGestureRecorderFingerPathCollection_appendPointsForTouches_referenceView_time___block_invoke;
  v65[3] = &unk_1E812E458;
  v66 = v59;
  v67 = v58;
  v43 = v58;
  v44 = v59;
  [v51 enumerateIndexesUsingBlock:v65];
  [(AXGestureRecorderFingerPathCollection *)v64 _addPointsToReplayableGesture:v54 forces:v55 time:a5];
  [(AXGestureRecorderFingerPathCollection *)v64 _referenceTimesArrayIndexNeedsRefresh];

  objc_autoreleasePoolPop(context);
  v8 = v49;
LABEL_27:
}

void __83__AXGestureRecorderFingerPathCollection_appendPointsForTouches_referenceView_time___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [v7 lastObject];
  [v7 addObject:v4];
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [v5 lastObject];
  [v5 addObject:v6];
}

- (void)handleLiftForTouches:(id)a3 referenceView:(id)a4 time:(double)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  v9 = [v8 numberOfEvents];

  if (v9)
  {
    v41 = self;
    v10 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v40 = [v10 numberOfEvents] - 1;

    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v7, "count")}];
    v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v7, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = v7;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v48;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v18, "_pathIndex", v37)}];
          [v11 addObject:v19];

          [v18 _pressure];
          *&v20 = v20;
          v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
          [v12 addObject:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v15);
    }

    v22 = [(AXGestureRecorderFingerPathCollection *)v41 replayableGesture];
    v23 = [v22 fingerIdentifiersAtEventIndex:v40];

    v39 = [MEMORY[0x1E695DF90] dictionary];
    v38 = [MEMORY[0x1E695DF90] dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v43 + 1) + 8 * j);
          if (([v11 containsObject:{v28, v37}] & 1) == 0)
          {
            v29 = MEMORY[0x1E696B098];
            v30 = [(AXGestureRecorderFingerPathCollection *)v41 replayableGesture];
            [v30 pointForFingerIdentifier:v28 atEventIndex:v40];
            v31 = [v29 valueWithCGPoint:?];
            [v39 setObject:v31 forKeyedSubscript:v28];

            v32 = MEMORY[0x1E696AD98];
            v33 = [(AXGestureRecorderFingerPathCollection *)v41 replayableGesture];
            [v33 forceForFingerIdentifier:v28 atEventIndex:v40];
            *&v34 = v34;
            v35 = [v32 numberWithFloat:v34];
            [v38 setObject:v35 forKeyedSubscript:v28];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v25);
    }

    v36 = [(AXGestureRecorderFingerPathCollection *)v41 replayableGesture];
    [v36 addPointsByFingerIdentifier:v39 forces:v38 atTime:a5];

    v7 = v37;
  }
}

- (void)appendFingerPathsFromFingerPathCollection:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
    v43 = [v5 count];

    v6 = [v4 fingerPaths];
    if (v6)
    {
      v7 = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
      v8 = v7;
      if (v7)
      {
        [v7 addObjectsFromArray:v6];
      }

      else
      {
        v9 = [v6 mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setFingerPaths:v9];
      }
    }

    v10 = [v4 pointsArrays];
    if (v10)
    {
      v11 = [(AXGestureRecorderFingerPathCollection *)self pointsArrays];
      v12 = v11;
      if (v11)
      {
        [v11 addObjectsFromArray:v10];
      }

      else
      {
        v13 = [v10 mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setPointsArrays:v13];
      }
    }

    v14 = [v4 forcesArrays];
    if (v14)
    {
      v15 = [(AXGestureRecorderFingerPathCollection *)self forcesArrays];
      v16 = v15;
      if (v15)
      {
        [v15 addObjectsFromArray:v14];
      }

      else
      {
        v17 = [v14 mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setForcesArrays:v17];
      }
    }

    v18 = [v4 timesArrays];
    if (v18)
    {
      v19 = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
      v20 = v19;
      if (v19)
      {
        [v19 addObjectsFromArray:v18];
      }

      else
      {
        v21 = [v18 mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setTimesArrays:v21];
      }
    }

    v22 = [(AXGestureRecorderFingerPathCollection *)self touchPathIndicesToFingerPathIndices];

    if (v22)
    {
      v38 = v18;
      v39 = v14;
      v40 = v10;
      v41 = v6;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v23 = v4;
      obj = [v4 touchPathIndicesToFingerPathIndices];
      v24 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v45;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v44 + 1) + 8 * i);
            v29 = MEMORY[0x1E696AD98];
            v30 = [v23 touchPathIndicesToFingerPathIndices];
            v31 = [v30 objectForKeyedSubscript:v28];
            v32 = [v29 numberWithUnsignedInteger:{objc_msgSend(v31, "unsignedIntegerValue") + v43}];
            v33 = [(AXGestureRecorderFingerPathCollection *)self touchPathIndicesToFingerPathIndices];
            [v33 setObject:v32 forKeyedSubscript:v28];
          }

          v25 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v25);
      }

      v4 = v23;
      v10 = v40;
      v6 = v41;
      v18 = v38;
      v14 = v39;
    }

    else
    {
      v34 = [v4 touchPathIndicesToFingerPathIndices];
      [(AXGestureRecorderFingerPathCollection *)self setTouchPathIndicesToFingerPathIndices:v34];
    }

    v35 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];

    if (v35)
    {
      v36 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
      v37 = [v4 replayableGesture];
      [v36 addPointsFromReplayableGesture:v37];
    }

    else
    {
      v36 = [v4 replayableGesture];
      [(AXGestureRecorderFingerPathCollection *)self setReplayableGesture:v36];
    }

    [(AXGestureRecorderFingerPathCollection *)self _referenceTimesArrayIndexNeedsRefresh];
  }
}

- (void)reset
{
  [(AXGestureRecorderFingerPathCollection *)self setFingerPaths:0];
  [(AXGestureRecorderFingerPathCollection *)self setPointsArrays:0];
  [(AXGestureRecorderFingerPathCollection *)self setTouchPathIndicesToFingerPathIndices:0];
  [(AXGestureRecorderFingerPathCollection *)self setForcesArrays:0];
  [(AXGestureRecorderFingerPathCollection *)self setTimesArrays:0];
  [(AXGestureRecorderFingerPathCollection *)self setReplayableGesture:0];

  [(AXGestureRecorderFingerPathCollection *)self _referenceTimesArrayIndexNeedsRefresh];
}

- (void)_addPointsToReplayableGesture:(id)a3 forces:(id)a4 time:(double)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v31 = a4;
  v9 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6989880]);
    [(AXGestureRecorderFingerPathCollection *)self setReplayableGesture:v10];
  }

  v11 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  v12 = [v11 numberOfEvents];

  if (v12)
  {
    v13 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v14 = [v13 numberOfEvents] - 1;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v16 = [v15 fingerIdentifiersAtEventIndex:v14];

    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [v8 objectForKeyedSubscript:v21];

          if (!v22)
          {
            v23 = MEMORY[0x1E696B098];
            v24 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
            [v24 pointForFingerIdentifier:v21 atEventIndex:v14];
            v25 = [v23 valueWithCGPoint:?];
            [v8 setObject:v25 forKeyedSubscript:v21];

            v26 = MEMORY[0x1E696AD98];
            v27 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
            [v27 forceForFingerIdentifier:v21 atEventIndex:v14];
            *&v28 = v28;
            v29 = [v26 numberWithFloat:v28];
            [v31 setObject:v29 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }
  }

  v30 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  [v30 addPointsByFingerIdentifier:v8 forces:v31 atTime:a5];
}

- (void)_didInsertFingerPathAtIndex:(unint64_t)a3
{
  v5 = [(AXGestureRecorderFingerPathCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 gestureRecorderFingerPathCollection:self didInsertFingerPathAtIndex:a3];
  }
}

- (void)_didUpdateFingerPathAtIndex:(unint64_t)a3
{
  v5 = [(AXGestureRecorderFingerPathCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 gestureRecorderFingerPathCollection:self didUpdateFingerPathAtIndex:a3];
  }
}

- (AXGestureRecorderFingerPathCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end