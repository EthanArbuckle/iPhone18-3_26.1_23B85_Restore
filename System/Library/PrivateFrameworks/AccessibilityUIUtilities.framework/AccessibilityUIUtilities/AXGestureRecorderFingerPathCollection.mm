@interface AXGestureRecorderFingerPathCollection
- (AXGestureRecorderFingerPathCollection)init;
- (AXGestureRecorderFingerPathCollection)initWithMaximumFingerPathsCount:(unint64_t)count;
- (AXGestureRecorderFingerPathCollectionDelegate)delegate;
- (CGPoint)_interfaceOrientedScreenPointForPoint:(CGPoint)point view:(id)view;
- (NSMutableArray)referenceTimesArray;
- (double)timestampAtIndex:(unint64_t)index;
- (id)_bezierPathToAppendForTouchLocation:(CGPoint)location unnamedValue:(double)value optionalPreviousTouchLocation:(id)touchLocation optionalPreviousForce:(id)force;
- (id)_nonRealTimeFingerPathToAppendForIndex:(unint64_t)index upToPositionForTimestampAtIndex:(unint64_t)atIndex;
- (id)_realTimeFingerPathToAppendForIndex:(unint64_t)index upToPositionForTimestampAtIndex:(unint64_t)atIndex;
- (id)fingerPathAtIndex:(unint64_t)index;
- (id)fingerPathToAppendForIndex:(unint64_t)index forTimestampAtIndex:(unint64_t)atIndex;
- (id)propertyListRepresentationWithName:(id)name;
- (unint64_t)fingerPathsCount;
- (unint64_t)timestampsCount;
- (void)_addPointsToReplayableGesture:(id)gesture forces:(id)forces time:(double)time;
- (void)_didInsertFingerPathAtIndex:(unint64_t)index;
- (void)_didUpdateFingerPathAtIndex:(unint64_t)index;
- (void)appendFingerPathsFromFingerPathCollection:(id)collection;
- (void)appendPointsForTouches:(id)touches referenceView:(id)view time:(double)time;
- (void)dealloc;
- (void)handleLiftForTouches:(id)touches referenceView:(id)view time:(double)time;
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

- (AXGestureRecorderFingerPathCollection)initWithMaximumFingerPathsCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = AXGestureRecorderFingerPathCollection;
  v4 = [(AXGestureRecorderFingerPathCollection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AXGestureRecorderFingerPathCollection *)v4 setMaximumFingerPathsCount:count];
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
  fingerPaths = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
  v3 = [fingerPaths count];

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
    timesArrays = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
    v4 = [timesArrays countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(timesArrays);
          }

          v6 += [*(*(&v12 + 1) + 8 * i) count];
        }

        v5 = [timesArrays countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    referenceTimesArray = [(AXGestureRecorderFingerPathCollection *)self referenceTimesArray];
    v10 = [referenceTimesArray count];

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

  referenceTimesArrayIndex = [(AXGestureRecorderFingerPathCollection *)self referenceTimesArrayIndex];
  timesArrays = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
  v5 = [timesArrays count];
  if (referenceTimesArrayIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v5;
    v20 = timesArrays;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = timesArrays;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v22;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      referenceTimesArrayIndex = 0x7FFFFFFFFFFFFFFFLL;
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
            referenceTimesArrayIndex = v13;
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
      referenceTimesArrayIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(AXGestureRecorderFingerPathCollection *)self setReferenceTimesArrayIndex:referenceTimesArrayIndex];
    v5 = v19;
    timesArrays = v20;
  }

  v17 = 0;
  if (referenceTimesArrayIndex != 0x7FFFFFFFFFFFFFFFLL && referenceTimesArrayIndex < v5)
  {
    v17 = [timesArrays objectAtIndex:referenceTimesArrayIndex];
  }

  return v17;
}

- (id)fingerPathAtIndex:(unint64_t)index
{
  fingerPaths = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
  v5 = [fingerPaths objectAtIndex:index];

  return v5;
}

- (id)fingerPathToAppendForIndex:(unint64_t)index forTimestampAtIndex:(unint64_t)atIndex
{
  if ([(AXGestureRecorderFingerPathCollection *)self shouldRecordRealTimeGesture])
  {
    [(AXGestureRecorderFingerPathCollection *)self _realTimeFingerPathToAppendForIndex:index upToPositionForTimestampAtIndex:atIndex];
  }

  else
  {
    [(AXGestureRecorderFingerPathCollection *)self _nonRealTimeFingerPathToAppendForIndex:index upToPositionForTimestampAtIndex:atIndex];
  }
  v7 = ;

  return v7;
}

- (id)_nonRealTimeFingerPathToAppendForIndex:(unint64_t)index upToPositionForTimestampAtIndex:(unint64_t)atIndex
{
  atIndexCopy = atIndex;
  if ([(AXGestureRecorderFingerPathCollection *)self timestampsCount]<= atIndex)
  {
    bezierPath = 0;
  }

  else
  {
    pointsArrays = [(AXGestureRecorderFingerPathCollection *)self pointsArrays];
    v8 = [pointsArrays objectAtIndex:index];

    forcesArrays = [(AXGestureRecorderFingerPathCollection *)self forcesArrays];
    v10 = [forcesArrays objectAtIndex:index];

    if ([v8 count] <= atIndexCopy)
    {
      bezierPath = 0;
    }

    else
    {
      bezierPath = [MEMORY[0x1E69DC728] bezierPath];
      if ([v8 count] > atIndexCopy)
      {
        v12 = [v8 objectAtIndexedSubscript:atIndexCopy];
        [v12 CGPointValue];
        v14 = v13;
        v16 = v15;

        v17 = [v10 objectAtIndexedSubscript:atIndexCopy];
        [v17 doubleValue];
        v19 = v18;

        if (atIndexCopy)
        {
          v20 = atIndexCopy - 1;
          atIndexCopy = [v8 objectAtIndexedSubscript:atIndexCopy - 1];
          v21 = [v10 objectAtIndexedSubscript:v20];
        }

        else
        {
          v21 = 0;
        }

        v22 = [(AXGestureRecorderFingerPathCollection *)self _bezierPathToAppendForTouchLocation:atIndexCopy unnamedValue:v21 optionalPreviousTouchLocation:v14 optionalPreviousForce:v16, v19];
        [bezierPath appendBezierPath:v22];
      }
    }
  }

  return bezierPath;
}

- (id)_realTimeFingerPathToAppendForIndex:(unint64_t)index upToPositionForTimestampAtIndex:(unint64_t)atIndex
{
  atIndexCopy = atIndex;
  if ([(AXGestureRecorderFingerPathCollection *)self timestampsCount]<= atIndex)
  {
    bezierPath = 0;
    goto LABEL_26;
  }

  [(AXGestureRecorderFingerPathCollection *)self timestampAtIndex:atIndexCopy];
  v8 = v7;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  touchPathIndicesToFingerPathIndices = [(AXGestureRecorderFingerPathCollection *)self touchPathIndicesToFingerPathIndices];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __109__AXGestureRecorderFingerPathCollection__realTimeFingerPathToAppendForIndex_upToPositionForTimestampAtIndex___block_invoke;
  v46[3] = &unk_1E812E430;
  v46[4] = &v47;
  v46[5] = index;
  [touchPathIndicesToFingerPathIndices enumerateKeysAndObjectsUsingBlock:v46];

  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  replayableGesture = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  numberOfEvents = [replayableGesture numberOfEvents];

  if (numberOfEvents > atIndexCopy)
  {
    while (1)
    {
      replayableGesture2 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
      [replayableGesture2 timeAtEventIndex:atIndexCopy];
      v15 = v14;

      if (v15 >= v8 || atIndexCopy >= numberOfEvents)
      {
        break;
      }

      ++atIndexCopy;
    }

    if (atIndexCopy >= numberOfEvents)
    {
      v44 = v8;
      _AXAssert();
    }

    replayableGesture3 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [replayableGesture3 timeAtEventIndex:atIndexCopy];
    v19 = v18;

    if (v19 != v8)
    {
      v45 = v8;
      _AXAssert();
    }

    if (atIndexCopy >= numberOfEvents)
    {
      goto LABEL_25;
    }

    replayableGesture4 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [replayableGesture4 timeAtEventIndex:atIndexCopy];
    v22 = v21;

    if (v22 != v8 || atIndexCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_25;
    }

    replayableGesture5 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v24 = [replayableGesture5 fingerIdentifiersAtEventIndex:atIndexCopy];

    if (![v24 containsObject:v48[5]])
    {
      goto LABEL_24;
    }

    replayableGesture6 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [replayableGesture6 pointForFingerIdentifier:v48[5] atEventIndex:atIndexCopy];
    v27 = v26;
    v29 = v28;

    replayableGesture7 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    [replayableGesture7 forceForFingerIdentifier:v48[5] atEventIndex:atIndexCopy];
    v32 = v31;

    if (atIndexCopy)
    {
      replayableGesture8 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
      v34 = atIndexCopy - 1;
      v35 = [replayableGesture8 fingerIdentifiersAtEventIndex:atIndexCopy - 1];
      v36 = [v35 containsObject:v48[5]];

      if (v36)
      {
        v37 = MEMORY[0x1E696B098];
        replayableGesture9 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
        [replayableGesture9 pointForFingerIdentifier:v48[5] atEventIndex:v34];
        atIndexCopy = [v37 valueWithCGPoint:?];

        v39 = MEMORY[0x1E696AD98];
        replayableGesture10 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
        [replayableGesture10 forceForFingerIdentifier:v48[5] atEventIndex:v34];
        v41 = [v39 numberWithDouble:?];

LABEL_23:
        v42 = [(AXGestureRecorderFingerPathCollection *)self _bezierPathToAppendForTouchLocation:atIndexCopy unnamedValue:v41 optionalPreviousTouchLocation:v27 optionalPreviousForce:v29, v32, *&v45];
        [bezierPath appendBezierPath:v42];

LABEL_24:
        goto LABEL_25;
      }

      atIndexCopy = 0;
    }

    v41 = 0;
    goto LABEL_23;
  }

  _AXAssert();
LABEL_25:
  _Block_object_dispose(&v47, 8);

LABEL_26:

  return bezierPath;
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

- (double)timestampAtIndex:(unint64_t)index
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(AXGestureRecorderFingerPathCollection *)self shouldRecordRealTimeGesture])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    timesArrays = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
    v6 = [timesArrays countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(timesArrays);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (index < [v11 count])
          {
            referenceTimesArray = v11;
            goto LABEL_13;
          }

          index -= [v11 count];
        }

        v8 = [timesArrays countByEnumeratingWithState:&v16 objects:v20 count:16];
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
    referenceTimesArray = [(AXGestureRecorderFingerPathCollection *)self referenceTimesArray];
    timesArrays = referenceTimesArray;
LABEL_13:
    v13 = [referenceTimesArray objectAtIndexedSubscript:index];
    [v13 doubleValue];
    v7 = v14;
  }

  return v7;
}

- (id)propertyListRepresentationWithName:(id)name
{
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = objc_opt_new();
  selfCopy = self;
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
  forcesArrays = [(AXGestureRecorderFingerPathCollection *)selfCopy forcesArrays];
  timesArrays = [(AXGestureRecorderFingerPathCollection *)selfCopy timesArrays];
  v32 = [v29 dictionaryWithObjectsAndKeys:{nameCopy, @"Name", v19, @"Points", forcesArrays, @"Forces", timesArrays, @"Times", 0}];

  return v32;
}

- (CGPoint)_interfaceOrientedScreenPointForPoint:(CGPoint)point view:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  window = [viewCopy window];
  [viewCopy convertPoint:0 toView:{x, y}];
  v9 = v8;
  v11 = v10;

  [window convertPoint:0 toWindow:{v9, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)_bezierPathToAppendForTouchLocation:(CGPoint)location unnamedValue:(double)value optionalPreviousTouchLocation:(id)touchLocation optionalPreviousForce:(id)force
{
  y = location.y;
  x = location.x;
  touchLocationCopy = touchLocation;
  forceCopy = force;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
  v15 = v14;
  v16 = value / 2000.0;
  [(AXGestureRecorderFingerPathCollection *)self maximumFingerLineWidth];
  v18 = v17;
  [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
  v20 = (v15 + v16 * (v18 - v19)) * 0.5;
  v21 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:x startAngle:y endAngle:v20 clockwise:{0.0, 6.28318531}];
  [bezierPath appendPath:v21];
  if (touchLocationCopy)
  {
    [touchLocationCopy CGPointValue];
    v24 = v23;
    if (v23 != x || v22 != y)
    {
      v39 = v22;
      [forceCopy doubleValue];
      v26 = v25;
      [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
      v28 = v27;
      v29 = v26 / 2000.0;
      [(AXGestureRecorderFingerPathCollection *)self maximumFingerLineWidth];
      v31 = v30;
      [(AXGestureRecorderFingerPathCollection *)self minimumFingerLineWidth];
      v33 = (v28 + v29 * (v31 - v32)) * 0.5;
      bezierPath2 = [MEMORY[0x1E69DC728] bezierPath];
      v38 = atan2(y - v39, x - v24);
      v35 = __sincos_stret(v38 + -1.57079633);
      [bezierPath2 moveToPoint:{v24 + v33 * v35.__cosval, v39 + v33 * v35.__sinval}];
      [bezierPath2 addLineToPoint:{x + v20 * v35.__cosval, y + v20 * v35.__sinval}];
      v36 = __sincos_stret(v38 + 1.57079633);
      [bezierPath2 addLineToPoint:{x + v20 * v36.__cosval, y + v20 * v36.__sinval}];
      [bezierPath2 addLineToPoint:{v24 + v33 * v36.__cosval, v39 + v33 * v36.__sinval}];
      [bezierPath2 closePath];
      [bezierPath appendPath:bezierPath2];
    }
  }

  return bezierPath;
}

- (void)appendPointsForTouches:(id)touches referenceView:(id)view time:(double)time
{
  v73 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  viewCopy = view;
  fingerPaths = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
  v9 = [fingerPaths count];
  selfCopy = self;
  if (v9 > [(AXGestureRecorderFingerPathCollection *)self maximumFingerPathsCount])
  {
    goto LABEL_27;
  }

  context = objc_autoreleasePoolPush();
  timesArrays = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
  v11 = [timesArrays count];
  v12 = v11;
  if (!timesArrays)
  {
    timesArrays = objc_opt_new();
    [(AXGestureRecorderFingerPathCollection *)selfCopy setTimesArrays:timesArrays];
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_6:
    lastObject = objc_opt_new();
    [timesArrays addObject:lastObject];
    goto LABEL_7;
  }

  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_4:
  lastObject = [timesArrays lastObject];
LABEL_7:
  v45 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:time];
  [lastObject addObject:?];
  pointsArrays = [(AXGestureRecorderFingerPathCollection *)selfCopy pointsArrays];
  forcesArrays = [(AXGestureRecorderFingerPathCollection *)selfCopy forcesArrays];
  touchPathIndicesToFingerPathIndices = [(AXGestureRecorderFingerPathCollection *)selfCopy touchPathIndicesToFingerPathIndices];
  if (v9)
  {
    v51 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, v9}];
  }

  else
  {
    v51 = 0;
  }

  v47 = timesArrays;
  v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = touchesCopy;
  v57 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  v49 = touchesCopy;
  v46 = lastObject;
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
        _pathIndex = [v15 _pathIndex];
        v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_pathIndex];
        v17 = [touchPathIndicesToFingerPathIndices objectForKey:?];
        [v15 locationInView:viewCopy];
        v19 = v18;
        v21 = v20;
        v22 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
        [v15 _pressure];
        v24 = v23;
        v25 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v26 = v24;
        v27 = [v25 initWithFloat:v26];
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_pathIndex];
        [v55 setObject:v27 forKeyedSubscript:v28];

        v29 = MEMORY[0x1E696B098];
        [(AXGestureRecorderFingerPathCollection *)selfCopy _interfaceOrientedScreenPointForPoint:viewCopy view:v19, v21];
        v30 = [v29 valueWithCGPoint:?];
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:_pathIndex];
        [v54 setObject:v30 forKeyedSubscript:v31];

        if (v17)
        {
          v61 = v17;
          unsignedIntegerValue = [v17 unsignedIntegerValue];
          v33 = [pointsArrays objectAtIndex:unsignedIntegerValue];
          v34 = [forcesArrays objectAtIndex:unsignedIntegerValue];
          lastObject2 = [v34 lastObject];
          lastObject3 = [v33 lastObject];
          v37 = [fingerPaths objectAtIndex:unsignedIntegerValue];
          v38 = [(AXGestureRecorderFingerPathCollection *)selfCopy _bezierPathToAppendForTouchLocation:lastObject3 unnamedValue:lastObject2 optionalPreviousTouchLocation:v19 optionalPreviousForce:v21, v24];
          [v37 appendBezierPath:v38];
          [v33 addObject:v22];
          [v34 addObject:v27];
          [v51 removeIndex:unsignedIntegerValue];
          [(AXGestureRecorderFingerPathCollection *)selfCopy _didUpdateFingerPathAtIndex:unsignedIntegerValue];

          v39 = v62;
          v40 = v22;
        }

        else
        {
          v40 = v22;
          if (!fingerPaths)
          {
            fingerPaths = objc_opt_new();
            [(AXGestureRecorderFingerPathCollection *)selfCopy setFingerPaths:?];
          }

          v41 = [(AXGestureRecorderFingerPathCollection *)selfCopy _bezierPathToAppendForTouchLocation:0 unnamedValue:0 optionalPreviousTouchLocation:v19 optionalPreviousForce:v21, v24];
          [fingerPaths addObject:v41];
          v42 = forcesArrays;
          v39 = v62;
          if (!pointsArrays)
          {
            pointsArrays = objc_opt_new();
            [(AXGestureRecorderFingerPathCollection *)selfCopy setPointsArrays:?];
            v42 = objc_opt_new();

            [(AXGestureRecorderFingerPathCollection *)selfCopy setForcesArrays:v42];
          }

          v34 = objc_opt_new();
          [v34 addObject:v40];
          [pointsArrays addObject:v34];
          lastObject2 = objc_opt_new();
          [lastObject2 addObject:v27];
          forcesArrays = v42;
          [v42 addObject:lastObject2];
          if (!touchPathIndicesToFingerPathIndices)
          {
            touchPathIndicesToFingerPathIndices = objc_opt_new();
            [(AXGestureRecorderFingerPathCollection *)selfCopy setTouchPathIndicesToFingerPathIndices:?];
          }

          v61 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v52];
          [touchPathIndicesToFingerPathIndices setObject:? forKey:?];
          [(AXGestureRecorderFingerPathCollection *)selfCopy _didInsertFingerPathAtIndex:v52++];
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
  v66 = pointsArrays;
  v67 = forcesArrays;
  v43 = forcesArrays;
  v44 = pointsArrays;
  [v51 enumerateIndexesUsingBlock:v65];
  [(AXGestureRecorderFingerPathCollection *)selfCopy _addPointsToReplayableGesture:v54 forces:v55 time:time];
  [(AXGestureRecorderFingerPathCollection *)selfCopy _referenceTimesArrayIndexNeedsRefresh];

  objc_autoreleasePoolPop(context);
  touchesCopy = v49;
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

- (void)handleLiftForTouches:(id)touches referenceView:(id)view time:(double)time
{
  v53 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  replayableGesture = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  numberOfEvents = [replayableGesture numberOfEvents];

  if (numberOfEvents)
  {
    selfCopy = self;
    replayableGesture2 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v40 = [replayableGesture2 numberOfEvents] - 1;

    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(touchesCopy, "count")}];
    v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(touchesCopy, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v37 = touchesCopy;
    v13 = touchesCopy;
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

    replayableGesture3 = [(AXGestureRecorderFingerPathCollection *)selfCopy replayableGesture];
    v23 = [replayableGesture3 fingerIdentifiersAtEventIndex:v40];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
            replayableGesture4 = [(AXGestureRecorderFingerPathCollection *)selfCopy replayableGesture];
            [replayableGesture4 pointForFingerIdentifier:v28 atEventIndex:v40];
            v31 = [v29 valueWithCGPoint:?];
            [dictionary setObject:v31 forKeyedSubscript:v28];

            v32 = MEMORY[0x1E696AD98];
            replayableGesture5 = [(AXGestureRecorderFingerPathCollection *)selfCopy replayableGesture];
            [replayableGesture5 forceForFingerIdentifier:v28 atEventIndex:v40];
            *&v34 = v34;
            v35 = [v32 numberWithFloat:v34];
            [dictionary2 setObject:v35 forKeyedSubscript:v28];
          }
        }

        v25 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v25);
    }

    replayableGesture6 = [(AXGestureRecorderFingerPathCollection *)selfCopy replayableGesture];
    [replayableGesture6 addPointsByFingerIdentifier:dictionary forces:dictionary2 atTime:time];

    touchesCopy = v37;
  }
}

- (void)appendFingerPathsFromFingerPathCollection:(id)collection
{
  v49 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (collectionCopy)
  {
    fingerPaths = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
    v43 = [fingerPaths count];

    fingerPaths2 = [collectionCopy fingerPaths];
    if (fingerPaths2)
    {
      fingerPaths3 = [(AXGestureRecorderFingerPathCollection *)self fingerPaths];
      v8 = fingerPaths3;
      if (fingerPaths3)
      {
        [fingerPaths3 addObjectsFromArray:fingerPaths2];
      }

      else
      {
        v9 = [fingerPaths2 mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setFingerPaths:v9];
      }
    }

    pointsArrays = [collectionCopy pointsArrays];
    if (pointsArrays)
    {
      pointsArrays2 = [(AXGestureRecorderFingerPathCollection *)self pointsArrays];
      v12 = pointsArrays2;
      if (pointsArrays2)
      {
        [pointsArrays2 addObjectsFromArray:pointsArrays];
      }

      else
      {
        v13 = [pointsArrays mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setPointsArrays:v13];
      }
    }

    forcesArrays = [collectionCopy forcesArrays];
    if (forcesArrays)
    {
      forcesArrays2 = [(AXGestureRecorderFingerPathCollection *)self forcesArrays];
      v16 = forcesArrays2;
      if (forcesArrays2)
      {
        [forcesArrays2 addObjectsFromArray:forcesArrays];
      }

      else
      {
        v17 = [forcesArrays mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setForcesArrays:v17];
      }
    }

    timesArrays = [collectionCopy timesArrays];
    if (timesArrays)
    {
      timesArrays2 = [(AXGestureRecorderFingerPathCollection *)self timesArrays];
      v20 = timesArrays2;
      if (timesArrays2)
      {
        [timesArrays2 addObjectsFromArray:timesArrays];
      }

      else
      {
        v21 = [timesArrays mutableCopy];
        [(AXGestureRecorderFingerPathCollection *)self setTimesArrays:v21];
      }
    }

    touchPathIndicesToFingerPathIndices = [(AXGestureRecorderFingerPathCollection *)self touchPathIndicesToFingerPathIndices];

    if (touchPathIndicesToFingerPathIndices)
    {
      v38 = timesArrays;
      v39 = forcesArrays;
      v40 = pointsArrays;
      v41 = fingerPaths2;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v23 = collectionCopy;
      obj = [collectionCopy touchPathIndicesToFingerPathIndices];
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
            touchPathIndicesToFingerPathIndices2 = [v23 touchPathIndicesToFingerPathIndices];
            v31 = [touchPathIndicesToFingerPathIndices2 objectForKeyedSubscript:v28];
            v32 = [v29 numberWithUnsignedInteger:{objc_msgSend(v31, "unsignedIntegerValue") + v43}];
            touchPathIndicesToFingerPathIndices3 = [(AXGestureRecorderFingerPathCollection *)self touchPathIndicesToFingerPathIndices];
            [touchPathIndicesToFingerPathIndices3 setObject:v32 forKeyedSubscript:v28];
          }

          v25 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v25);
      }

      collectionCopy = v23;
      pointsArrays = v40;
      fingerPaths2 = v41;
      timesArrays = v38;
      forcesArrays = v39;
    }

    else
    {
      touchPathIndicesToFingerPathIndices4 = [collectionCopy touchPathIndicesToFingerPathIndices];
      [(AXGestureRecorderFingerPathCollection *)self setTouchPathIndicesToFingerPathIndices:touchPathIndicesToFingerPathIndices4];
    }

    replayableGesture = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];

    if (replayableGesture)
    {
      replayableGesture2 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
      replayableGesture3 = [collectionCopy replayableGesture];
      [replayableGesture2 addPointsFromReplayableGesture:replayableGesture3];
    }

    else
    {
      replayableGesture2 = [collectionCopy replayableGesture];
      [(AXGestureRecorderFingerPathCollection *)self setReplayableGesture:replayableGesture2];
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

- (void)_addPointsToReplayableGesture:(id)gesture forces:(id)forces time:(double)time
{
  v37 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  forcesCopy = forces;
  replayableGesture = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];

  if (!replayableGesture)
  {
    v10 = objc_alloc_init(MEMORY[0x1E6989880]);
    [(AXGestureRecorderFingerPathCollection *)self setReplayableGesture:v10];
  }

  replayableGesture2 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  numberOfEvents = [replayableGesture2 numberOfEvents];

  if (numberOfEvents)
  {
    replayableGesture3 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v14 = [replayableGesture3 numberOfEvents] - 1;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    replayableGesture4 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
    v16 = [replayableGesture4 fingerIdentifiersAtEventIndex:v14];

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
          v22 = [gestureCopy objectForKeyedSubscript:v21];

          if (!v22)
          {
            v23 = MEMORY[0x1E696B098];
            replayableGesture5 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
            [replayableGesture5 pointForFingerIdentifier:v21 atEventIndex:v14];
            v25 = [v23 valueWithCGPoint:?];
            [gestureCopy setObject:v25 forKeyedSubscript:v21];

            v26 = MEMORY[0x1E696AD98];
            replayableGesture6 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
            [replayableGesture6 forceForFingerIdentifier:v21 atEventIndex:v14];
            *&v28 = v28;
            v29 = [v26 numberWithFloat:v28];
            [forcesCopy setObject:v29 forKeyedSubscript:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }
  }

  replayableGesture7 = [(AXGestureRecorderFingerPathCollection *)self replayableGesture];
  [replayableGesture7 addPointsByFingerIdentifier:gestureCopy forces:forcesCopy atTime:time];
}

- (void)_didInsertFingerPathAtIndex:(unint64_t)index
{
  delegate = [(AXGestureRecorderFingerPathCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate gestureRecorderFingerPathCollection:self didInsertFingerPathAtIndex:index];
  }
}

- (void)_didUpdateFingerPathAtIndex:(unint64_t)index
{
  delegate = [(AXGestureRecorderFingerPathCollection *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate gestureRecorderFingerPathCollection:self didUpdateFingerPathAtIndex:index];
  }
}

- (AXGestureRecorderFingerPathCollectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end