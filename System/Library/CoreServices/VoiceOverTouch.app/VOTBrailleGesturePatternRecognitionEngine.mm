@interface VOTBrailleGesturePatternRecognitionEngine
- (BOOL)_bothObjectsAreNilOrBothAreNonNil:(id)a3 object:(id)a4;
- (BOOL)_halfPattern:(id)a3 hasSameDotsAsHalfPattern:(id)a4;
- (CGPoint)_averageOfOldPoint:(CGPoint)a3 newPoint:(CGPoint)a4 dataCount:(unint64_t)a5;
- (VOTBrailleGesturePatternRecognitionEngine)init;
- (VOTBrailleGesturePatternRecognitionEngineDelegate)delegate;
- (double)_totalDistanceBetweenCorrespondingPointsInTouches:(id)a3 andTouches:(id)a4;
- (id)_averagePointValueWithDataCount:(unint64_t)a3 currentPointValue:(id)a4 newPointValue:(id)a5;
- (id)_closestHalfPatternForOrderedTouches:(id)a3 possibleMatches:(id)a4 side:(unint64_t)a5;
- (id)_halfPatternFromOrderedTouches:(id)a3 correspondingHalfPattern:(id)a4;
- (id)_halfPatternFromTouches:(id)a3 side:(unint64_t)a4;
- (id)_orderedTouchesFromHalfPattern:(id)a3;
- (id)_sortTouches:(id)a3 fromTopToBottomForSide:(unint64_t)a4;
- (id)printBrailleForTouchPoints:(id)a3 shouldLearn:(BOOL)a4 error:(id *)a5;
- (unsigned)printBrailleCharacterFromBraillePattern:(id)a3;
- (void)_populateLeftTouchPoints:(id)a3 rightTouchPoints:(id)a4 fromTouchPoints:(id)a5;
- (void)calibrateWithTouchPoints:(id)a3;
- (void)setTypingMode:(int64_t)a3 keyboardSize:(CGSize)a4 shouldUseEightDotBraille:(BOOL)a5 shouldReverseDots:(BOOL)a6;
- (void)unlearnLastGesture;
@end

@implementation VOTBrailleGesturePatternRecognitionEngine

- (VOTBrailleGesturePatternRecognitionEngine)init
{
  v12.receiver = self;
  v12.super_class = VOTBrailleGesturePatternRecognitionEngine;
  v2 = [(VOTBrailleGesturePatternRecognitionEngine *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_typingMode = 1;
    *&v2->_shouldUseEightDotBraille = 0;
    v4 = [VOTBrailleGestureDataRepository alloc];
    v5 = [(VOTBrailleGestureDataRepository *)v4 initWithTypingMode:v3->_typingMode keyboardSize:0 shouldUseEightDotBraille:xmmword_1001FF150];
    repository = v3->_repository;
    v3->_repository = v5;

    v7 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromCGSize(xmmword_1001FF150);
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "initializing gesture repo with: %@", buf, 0xCu);
    }

    v9 = objc_alloc_init(NSMutableArray);
    lastBrailleGestures = v3->_lastBrailleGestures;
    v3->_lastBrailleGestures = v9;
  }

  return v3;
}

- (id)printBrailleForTouchPoints:(id)a3 shouldLearn:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  [(VOTBrailleGesturePatternRecognitionEngine *)self _populateLeftTouchPoints:v9 rightTouchPoints:v10 fromTouchPoints:v8];

  if (self->_shouldUseEightDotBraille)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  if ([v9 count] <= v11 && objc_msgSend(v10, "count") <= v11)
  {
    v13 = [(VOTBrailleGesturePatternRecognitionEngine *)self _halfPatternFromTouches:v9 side:0];
    v14 = [(VOTBrailleGesturePatternRecognitionEngine *)self _halfPatternFromTouches:v10 side:1];
    v15 = [[VOTBrailleGesturePattern alloc] initWithLeftDots:v13 rightDots:v14];
    if (v6)
    {
      [(VOTBrailleGestureDataRepository *)self->_repository updateDriftWithPattern:v15];
      [(NSMutableArray *)self->_lastBrailleGestures addObject:v15];
    }

    v12 = [NSString stringWithFormat:@"%C", [(VOTBrailleGesturePatternRecognitionEngine *)self printBrailleCharacterFromBraillePattern:v15]];
  }

  else if (a5)
  {
    [NSError errorWithDomain:@"VOTBrailleGestureErrorDomain" code:1 userInfo:0];
    *a5 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)unlearnLastGesture
{
  if ([(NSMutableArray *)self->_lastBrailleGestures count])
  {
    repository = self->_repository;
    v4 = [(NSMutableArray *)self->_lastBrailleGestures lastObject];
    [(VOTBrailleGestureDataRepository *)repository removeDriftAddedByPattern:v4];

    lastBrailleGestures = self->_lastBrailleGestures;

    [(NSMutableArray *)lastBrailleGestures removeLastObject];
  }
}

- (void)setTypingMode:(int64_t)a3 keyboardSize:(CGSize)a4 shouldUseEightDotBraille:(BOOL)a5 shouldReverseDots:(BOOL)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  if (self->_typingMode != a3 || (self->_keyboardSize.width == a4.width ? (v12 = self->_keyboardSize.height == a4.height) : (v12 = 0), !v12 || self->_shouldUseEightDotBraille != a5 || self->_shouldReverseDots != a6))
  {
    [(VOTBrailleGesturePatternRecognitionEngine *)self resetLastGestures];
    [(VOTBrailleGestureDataRepository *)self->_repository saveDrift];
    self->_typingMode = a3;
    self->_keyboardSize.width = width;
    self->_keyboardSize.height = height;
    self->_shouldUseEightDotBraille = v7;
    self->_shouldReverseDots = a6;
    v13 = [[VOTBrailleGestureDataRepository alloc] initWithTypingMode:self->_typingMode keyboardSize:v7 shouldUseEightDotBraille:width, height];
    repository = self->_repository;
    self->_repository = v13;

    _objc_release_x1(v13, repository);
  }
}

- (void)calibrateWithTouchPoints:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  [(VOTBrailleGesturePatternRecognitionEngine *)self _populateLeftTouchPoints:v5 rightTouchPoints:v6 fromTouchPoints:v4];

  v7 = [(VOTBrailleGesturePatternRecognitionEngine *)self _sortTouches:v5 fromTopToBottomForSide:0];
  v8 = [(VOTBrailleGesturePatternRecognitionEngine *)self _sortTouches:v6 fromTopToBottomForSide:1];
  typingMode = self->_typingMode;
  if (self->_shouldUseEightDotBraille)
  {
    if (typingMode == 5 || typingMode == 2)
    {
      if ([v7 count] != 4 || objc_msgSend(v8, "count"))
      {
        v23 = v7;
        v24 = v8;
LABEL_21:
        _AXAssert();
        v14 = 0;
        goto LABEL_22;
      }

      v19 = [v7 objectAtIndexedSubscript:0];
      v32[0] = v19;
      v20 = [v7 objectAtIndexedSubscript:1];
      v32[1] = v20;
      v21 = [v7 objectAtIndexedSubscript:2];
      v32[2] = v21;
      v22 = [v7 objectAtIndexedSubscript:3];
      v32[3] = v22;
      v14 = [NSArray arrayWithObjects:v32 count:4];

      goto LABEL_25;
    }

    if ([v7 count] != 4 || objc_msgSend(v8, "count") != 4)
    {
      v23 = v7;
      v24 = v8;
      goto LABEL_21;
    }

    v28 = [v7 objectAtIndexedSubscript:0];
    v31[0] = v28;
    v27 = [v7 objectAtIndexedSubscript:1];
    v31[1] = v27;
    v26 = [v7 objectAtIndexedSubscript:2];
    v31[2] = v26;
    v25 = [v8 objectAtIndexedSubscript:0];
    v31[3] = v25;
    v10 = [v8 objectAtIndexedSubscript:1];
    v31[4] = v10;
    v11 = [v8 objectAtIndexedSubscript:2];
    v31[5] = v11;
    v12 = [v7 objectAtIndexedSubscript:3];
    v31[6] = v12;
    v13 = [v8 objectAtIndexedSubscript:3];
    v31[7] = v13;
    v14 = [NSArray arrayWithObjects:v31 count:8];
  }

  else
  {
    if (typingMode == 5 || typingMode == 2)
    {
      if ([v7 count] != 3 || objc_msgSend(v8, "count"))
      {
        v23 = v7;
        v24 = v8;
        goto LABEL_21;
      }

      v19 = [v7 objectAtIndexedSubscript:0];
      v30[0] = v19;
      v20 = [v7 objectAtIndexedSubscript:1];
      v30[1] = v20;
      v21 = [v7 objectAtIndexedSubscript:2];
      v30[2] = v21;
      v14 = [NSArray arrayWithObjects:v30 count:3];
LABEL_25:

      goto LABEL_22;
    }

    if ([v7 count] != 3 || objc_msgSend(v8, "count") != 3)
    {
      v23 = v7;
      v24 = v8;
      goto LABEL_21;
    }

    v28 = [v7 objectAtIndexedSubscript:0];
    v29[0] = v28;
    v27 = [v7 objectAtIndexedSubscript:1];
    v29[1] = v27;
    v15 = [v7 objectAtIndexedSubscript:2];
    v29[2] = v15;
    v16 = [v8 objectAtIndexedSubscript:0];
    v29[3] = v16;
    v17 = [v8 objectAtIndexedSubscript:1];
    v29[4] = v17;
    v18 = [v8 objectAtIndexedSubscript:2];
    v29[5] = v18;
    v14 = [NSArray arrayWithObjects:v29 count:6];
  }

LABEL_22:
  [(VOTBrailleGestureDataRepository *)self->_repository calibrateWithDotNumberPositions:v14, v23, v24];
}

- (void)_populateLeftTouchPoints:(id)a3 rightTouchPoints:(id)a4 fromTouchPoints:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  width = self->_keyboardSize.width;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = width * 0.5;
    v15 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        [v17 ax_CGPointValue];
        typingMode = self->_typingMode;
        if (typingMode == 4)
        {
          v20 = v9;
        }

        else
        {
          v20 = v8;
        }

        if (typingMode == 1)
        {
          v20 = v9;
        }

        if (typingMode == 4)
        {
          v21 = v8;
        }

        else
        {
          v21 = v9;
        }

        if (typingMode == 1)
        {
          v21 = v8;
        }

        if (v18 < v14)
        {
          v20 = v21;
        }

        if (typingMode == 2 || typingMode == 5)
        {
          v23 = v8;
        }

        else
        {
          v23 = v20;
        }

        [v23 addObject:v17];
      }

      v13 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

- (unsigned)printBrailleCharacterFromBraillePattern:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleGesturePatternRecognitionEngine *)self shouldUseEightDotBraille];
  v6 = [(VOTBrailleGesturePatternRecognitionEngine *)self shouldReverseDots];
  v7 = [v4 leftDots];
  v8 = [v7 topDot];

  v9 = [v4 leftDots];
  v10 = [v9 middleDot];

  if (v5)
  {
    if (v6)
    {
      v11 = 10304;
    }

    else
    {
      v11 = 10241;
    }

    if (v6)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v13 = 4;
    }

    if (v6)
    {
      v14 = 1;
    }

    else
    {
      v14 = 64;
    }

    if (v6)
    {
      v15 = 128;
    }

    else
    {
      v15 = 8;
    }

    if (v6)
    {
      v16 = 32;
    }

    else
    {
      v16 = 16;
    }

    if (v6)
    {
      v17 = 16;
    }

    else
    {
      v17 = 32;
    }

    if (!v8)
    {
      v11 = 10240;
    }

    if (v10)
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | v11;
    v20 = [v4 leftDots];
    v21 = [v20 bottomDot];

    if (!v21)
    {
      v13 = 0;
    }

    v22 = [v4 leftDots];
    v23 = [v22 fourthDot];

    if (v23)
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    v25 = v19 + v13 + v24;
    v26 = [v4 rightDots];
    v27 = [v26 topDot];

    if (v27)
    {
      v28 = v15;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v4 rightDots];
    v30 = [v29 middleDot];

    if (v30)
    {
      v31 = v16;
    }

    else
    {
      v31 = 0;
    }

    v32 = v28 + v31;
    v33 = [v4 rightDots];
    v34 = [v33 bottomDot];

    if (v34)
    {
      v35 = v17;
    }

    else
    {
      v35 = 0;
    }

    v36 = v25 + v32 + v35;
    v37 = [v4 rightDots];

    v38 = [v37 fourthDot];

    if (v38)
    {
      if (v6)
      {
        v39 = 8;
      }

      else
      {
        v39 = 128;
      }

      v36 += v39;
    }
  }

  else
  {
    if (v6)
    {
      v40 = 10244;
    }

    else
    {
      v40 = 10241;
    }

    if (v6)
    {
      v41 = 1;
    }

    else
    {
      v41 = 4;
    }

    if (v6)
    {
      v42 = 32;
    }

    else
    {
      v42 = 8;
    }

    if (!v8)
    {
      v40 = 10240;
    }

    if (v10)
    {
      v43 = v40 | 2;
    }

    else
    {
      v43 = v40;
    }

    v44 = [v4 leftDots];
    v45 = [v44 bottomDot];

    if (!v45)
    {
      v41 = 0;
    }

    v46 = [v4 rightDots];
    v47 = [v46 topDot];

    if (v47)
    {
      v48 = v42;
    }

    else
    {
      v48 = 0;
    }

    v49 = v41 + v48 + v43;
    v50 = [v4 rightDots];
    v51 = [v50 middleDot];

    if (v51)
    {
      v36 = v49 + 16;
    }

    else
    {
      v36 = v49;
    }

    v52 = [v4 rightDots];

    v53 = [v52 bottomDot];

    if (v6)
    {
      v54 = 8;
    }

    else
    {
      v54 = 32;
    }

    v55 = v36 + v54;
    if (v53)
    {
      return v55;
    }
  }

  return v36;
}

- (id)_halfPatternFromTouches:(id)a3 side:(unint64_t)a4
{
  v6 = [(VOTBrailleGesturePatternRecognitionEngine *)self _sortTouches:a3 fromTopToBottomForSide:?];
  v7 = -[VOTBrailleGestureDataRepository halfPatternsForNumberOfDots:side:](self->_repository, "halfPatternsForNumberOfDots:side:", [v6 count], a4);
  if ([v7 count] == 1)
  {
    [v7 firstObject];
  }

  else
  {
    [(VOTBrailleGesturePatternRecognitionEngine *)self _closestHalfPatternForOrderedTouches:v6 possibleMatches:v7 side:a4];
  }
  v8 = ;
  v9 = [(VOTBrailleGesturePatternRecognitionEngine *)self _halfPatternFromOrderedTouches:v6 correspondingHalfPattern:v8];

  return v9;
}

- (id)_closestHalfPatternForOrderedTouches:(id)a3 possibleMatches:(id)a4 side:(unint64_t)a5
{
  v7 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a4;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v26;
    v13 = 1.79769313e308;
    *&v9 = 138544130;
    v23 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [(VOTBrailleGesturePatternRecognitionEngine *)self _orderedTouchesFromHalfPattern:v15, v23];
        [(VOTBrailleGesturePatternRecognitionEngine *)self _totalDistanceBetweenCorrespondingPointsInTouches:v7 andTouches:v16];
        v18 = v17;

        v19 = VOTLogBrailleGestures();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(VOTBrailleGesturePatternRecognitionEngine *)self _orderedTouchesFromHalfPattern:v15];
          *buf = v23;
          v30 = v7;
          v31 = 2114;
          v32 = v15;
          v33 = 2114;
          v34 = v20;
          v35 = 2048;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Distance between %{public}@ and %{public}@ (with ordered touches %{public}@) was %f.", buf, 0x2Au);
        }

        if (v18 < v13)
        {
          v21 = v15;

          v13 = v18;
          v11 = v21;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_halfPatternFromOrderedTouches:(id)a3 correspondingHalfPattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(VOTBrailleGestureHalfPattern);
  v8 = [v6 topDot];

  if (v8)
  {
    v9 = [v5 objectAtIndexedSubscript:0];
    [(VOTBrailleGestureHalfPattern *)v7 setTopDot:v9];

    v8 = 1;
  }

  v10 = [v6 middleDot];

  if (v10)
  {
    v11 = v8 + 1;
    v12 = [v5 objectAtIndexedSubscript:v8];
    [(VOTBrailleGestureHalfPattern *)v7 setMiddleDot:v12];

    v8 = v11;
  }

  v13 = [v6 bottomDot];

  if (v13)
  {
    v14 = v8 + 1;
    v15 = [v5 objectAtIndexedSubscript:v8];
    [(VOTBrailleGestureHalfPattern *)v7 setBottomDot:v15];

    v8 = v14;
  }

  v16 = [v6 fourthDot];

  if (v16)
  {
    v17 = [v5 objectAtIndexedSubscript:v8];
    [(VOTBrailleGestureHalfPattern *)v7 setFourthDot:v17];
  }

  return v7;
}

- (double)_totalDistanceBetweenCorrespondingPointsInTouches:(id)a3 andTouches:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v8];
      [v10 CGPointValue];
      v12 = v11;
      v14 = v13;
      v15 = [v7 objectAtIndexedSubscript:v8];
      [v15 CGPointValue];
      [(VOTBrailleGesturePatternRecognitionEngine *)self _distanceBetweenPoint:v12 andPoint:v14, v16, v17];
      v9 = v9 + v18;

      ++v8;
    }

    while ([v6 count] > v8);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)_orderedTouchesFromHalfPattern:(id)a3
{
  v3 = a3;
  v4 = [NSMutableArray arrayWithCapacity:3];
  v5 = [v3 topDot];

  if (v5)
  {
    v6 = [v3 topDot];
    [v4 addObject:v6];
  }

  v7 = [v3 middleDot];

  if (v7)
  {
    v8 = [v3 middleDot];
    [v4 addObject:v8];
  }

  v9 = [v3 bottomDot];

  if (v9)
  {
    v10 = [v3 bottomDot];
    [v4 addObject:v10];
  }

  v11 = [v3 fourthDot];

  if (v11)
  {
    v12 = [v3 fourthDot];
    [v4 addObject:v12];
  }

  return v4;
}

- (id)_sortTouches:(id)a3 fromTopToBottomForSide:(unint64_t)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2038;
  v6[3] = &unk_1001CAEA8;
  v6[4] = self;
  v6[5] = a4;
  v4 = [a3 sortedArrayUsingComparator:v6];

  return v4;
}

- (BOOL)_halfPattern:(id)a3 hasSameDotsAsHalfPattern:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 topDot];
  v9 = [v7 topDot];
  if ([(VOTBrailleGesturePatternRecognitionEngine *)self _bothObjectsAreNilOrBothAreNonNil:v8 object:v9])
  {
    v10 = [v6 middleDot];
    v11 = [v7 middleDot];
    if ([(VOTBrailleGesturePatternRecognitionEngine *)self _bothObjectsAreNilOrBothAreNonNil:v10 object:v11])
    {
      v12 = [v6 bottomDot];
      v13 = [v7 bottomDot];
      v14 = [(VOTBrailleGesturePatternRecognitionEngine *)self _bothObjectsAreNilOrBothAreNonNil:v12 object:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_bothObjectsAreNilOrBothAreNonNil:(id)a3 object:(id)a4
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return !(a3 | a4) || v5;
}

- (id)_averagePointValueWithDataCount:(unint64_t)a3 currentPointValue:(id)a4 newPointValue:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a4)
  {
    [a4 ax_CGPointValue];
    v11 = v10;
    v13 = v12;
    [v9 ax_CGPointValue];
    [(VOTBrailleGesturePatternRecognitionEngine *)self _averageOfOldPoint:a3 newPoint:v11 dataCount:v13, v14, v15];
    v16 = [NSValue ax_valueWithCGPoint:?];
  }

  else
  {
    v16 = v8;
  }

  v17 = v16;

  return v17;
}

- (CGPoint)_averageOfOldPoint:(CGPoint)a3 newPoint:(CGPoint)a4 dataCount:(unint64_t)a5
{
  y = a4.y;
  v7 = a3.y;
  [(VOTBrailleGesturePatternRecognitionEngine *)self _averageOfOldFloat:a3.x newFloat:a4.x dataCount:?];
  v10 = v9;
  [(VOTBrailleGesturePatternRecognitionEngine *)self _averageOfOldFloat:a5 newFloat:v7 dataCount:y];
  v12 = v11;
  v13 = v10;
  result.y = v12;
  result.x = v13;
  return result;
}

- (VOTBrailleGesturePatternRecognitionEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end