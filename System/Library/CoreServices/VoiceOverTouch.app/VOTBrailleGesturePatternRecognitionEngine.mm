@interface VOTBrailleGesturePatternRecognitionEngine
- (BOOL)_bothObjectsAreNilOrBothAreNonNil:(id)nil object:(id)object;
- (BOOL)_halfPattern:(id)pattern hasSameDotsAsHalfPattern:(id)halfPattern;
- (CGPoint)_averageOfOldPoint:(CGPoint)point newPoint:(CGPoint)newPoint dataCount:(unint64_t)count;
- (VOTBrailleGesturePatternRecognitionEngine)init;
- (VOTBrailleGesturePatternRecognitionEngineDelegate)delegate;
- (double)_totalDistanceBetweenCorrespondingPointsInTouches:(id)touches andTouches:(id)andTouches;
- (id)_averagePointValueWithDataCount:(unint64_t)count currentPointValue:(id)value newPointValue:(id)pointValue;
- (id)_closestHalfPatternForOrderedTouches:(id)touches possibleMatches:(id)matches side:(unint64_t)side;
- (id)_halfPatternFromOrderedTouches:(id)touches correspondingHalfPattern:(id)pattern;
- (id)_halfPatternFromTouches:(id)touches side:(unint64_t)side;
- (id)_orderedTouchesFromHalfPattern:(id)pattern;
- (id)_sortTouches:(id)touches fromTopToBottomForSide:(unint64_t)side;
- (id)printBrailleForTouchPoints:(id)points shouldLearn:(BOOL)learn error:(id *)error;
- (unsigned)printBrailleCharacterFromBraillePattern:(id)pattern;
- (void)_populateLeftTouchPoints:(id)points rightTouchPoints:(id)touchPoints fromTouchPoints:(id)fromTouchPoints;
- (void)calibrateWithTouchPoints:(id)points;
- (void)setTypingMode:(int64_t)mode keyboardSize:(CGSize)size shouldUseEightDotBraille:(BOOL)braille shouldReverseDots:(BOOL)dots;
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

- (id)printBrailleForTouchPoints:(id)points shouldLearn:(BOOL)learn error:(id *)error
{
  learnCopy = learn;
  pointsCopy = points;
  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  [(VOTBrailleGesturePatternRecognitionEngine *)self _populateLeftTouchPoints:v9 rightTouchPoints:v10 fromTouchPoints:pointsCopy];

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
    if (learnCopy)
    {
      [(VOTBrailleGestureDataRepository *)self->_repository updateDriftWithPattern:v15];
      [(NSMutableArray *)self->_lastBrailleGestures addObject:v15];
    }

    v12 = [NSString stringWithFormat:@"%C", [(VOTBrailleGesturePatternRecognitionEngine *)self printBrailleCharacterFromBraillePattern:v15]];
  }

  else if (error)
  {
    [NSError errorWithDomain:@"VOTBrailleGestureErrorDomain" code:1 userInfo:0];
    *error = v12 = 0;
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
    lastObject = [(NSMutableArray *)self->_lastBrailleGestures lastObject];
    [(VOTBrailleGestureDataRepository *)repository removeDriftAddedByPattern:lastObject];

    lastBrailleGestures = self->_lastBrailleGestures;

    [(NSMutableArray *)lastBrailleGestures removeLastObject];
  }
}

- (void)setTypingMode:(int64_t)mode keyboardSize:(CGSize)size shouldUseEightDotBraille:(BOOL)braille shouldReverseDots:(BOOL)dots
{
  brailleCopy = braille;
  height = size.height;
  width = size.width;
  if (self->_typingMode != mode || (self->_keyboardSize.width == size.width ? (v12 = self->_keyboardSize.height == size.height) : (v12 = 0), !v12 || self->_shouldUseEightDotBraille != braille || self->_shouldReverseDots != dots))
  {
    [(VOTBrailleGesturePatternRecognitionEngine *)self resetLastGestures];
    [(VOTBrailleGestureDataRepository *)self->_repository saveDrift];
    self->_typingMode = mode;
    self->_keyboardSize.width = width;
    self->_keyboardSize.height = height;
    self->_shouldUseEightDotBraille = brailleCopy;
    self->_shouldReverseDots = dots;
    height = [[VOTBrailleGestureDataRepository alloc] initWithTypingMode:self->_typingMode keyboardSize:brailleCopy shouldUseEightDotBraille:width, height];
    repository = self->_repository;
    self->_repository = height;

    _objc_release_x1(height, repository);
  }
}

- (void)calibrateWithTouchPoints:(id)points
{
  pointsCopy = points;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  [(VOTBrailleGesturePatternRecognitionEngine *)self _populateLeftTouchPoints:v5 rightTouchPoints:v6 fromTouchPoints:pointsCopy];

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

- (void)_populateLeftTouchPoints:(id)points rightTouchPoints:(id)touchPoints fromTouchPoints:(id)fromTouchPoints
{
  pointsCopy = points;
  touchPointsCopy = touchPoints;
  fromTouchPointsCopy = fromTouchPoints;
  width = self->_keyboardSize.width;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [fromTouchPointsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(fromTouchPointsCopy);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        [v17 ax_CGPointValue];
        typingMode = self->_typingMode;
        if (typingMode == 4)
        {
          v20 = touchPointsCopy;
        }

        else
        {
          v20 = pointsCopy;
        }

        if (typingMode == 1)
        {
          v20 = touchPointsCopy;
        }

        if (typingMode == 4)
        {
          v21 = pointsCopy;
        }

        else
        {
          v21 = touchPointsCopy;
        }

        if (typingMode == 1)
        {
          v21 = pointsCopy;
        }

        if (v18 < v14)
        {
          v20 = v21;
        }

        if (typingMode == 2 || typingMode == 5)
        {
          v23 = pointsCopy;
        }

        else
        {
          v23 = v20;
        }

        [v23 addObject:v17];
      }

      v13 = [fromTouchPointsCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

- (unsigned)printBrailleCharacterFromBraillePattern:(id)pattern
{
  patternCopy = pattern;
  shouldUseEightDotBraille = [(VOTBrailleGesturePatternRecognitionEngine *)self shouldUseEightDotBraille];
  shouldReverseDots = [(VOTBrailleGesturePatternRecognitionEngine *)self shouldReverseDots];
  leftDots = [patternCopy leftDots];
  topDot = [leftDots topDot];

  leftDots2 = [patternCopy leftDots];
  middleDot = [leftDots2 middleDot];

  if (shouldUseEightDotBraille)
  {
    if (shouldReverseDots)
    {
      v11 = 10304;
    }

    else
    {
      v11 = 10241;
    }

    if (shouldReverseDots)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (shouldReverseDots)
    {
      v13 = 2;
    }

    else
    {
      v13 = 4;
    }

    if (shouldReverseDots)
    {
      v14 = 1;
    }

    else
    {
      v14 = 64;
    }

    if (shouldReverseDots)
    {
      v15 = 128;
    }

    else
    {
      v15 = 8;
    }

    if (shouldReverseDots)
    {
      v16 = 32;
    }

    else
    {
      v16 = 16;
    }

    if (shouldReverseDots)
    {
      v17 = 16;
    }

    else
    {
      v17 = 32;
    }

    if (!topDot)
    {
      v11 = 10240;
    }

    if (middleDot)
    {
      v18 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | v11;
    leftDots3 = [patternCopy leftDots];
    bottomDot = [leftDots3 bottomDot];

    if (!bottomDot)
    {
      v13 = 0;
    }

    leftDots4 = [patternCopy leftDots];
    fourthDot = [leftDots4 fourthDot];

    if (fourthDot)
    {
      v24 = v14;
    }

    else
    {
      v24 = 0;
    }

    v25 = v19 + v13 + v24;
    rightDots = [patternCopy rightDots];
    topDot2 = [rightDots topDot];

    if (topDot2)
    {
      v28 = v15;
    }

    else
    {
      v28 = 0;
    }

    rightDots2 = [patternCopy rightDots];
    middleDot2 = [rightDots2 middleDot];

    if (middleDot2)
    {
      v31 = v16;
    }

    else
    {
      v31 = 0;
    }

    v32 = v28 + v31;
    rightDots3 = [patternCopy rightDots];
    bottomDot2 = [rightDots3 bottomDot];

    if (bottomDot2)
    {
      v35 = v17;
    }

    else
    {
      v35 = 0;
    }

    v36 = v25 + v32 + v35;
    rightDots4 = [patternCopy rightDots];

    fourthDot2 = [rightDots4 fourthDot];

    if (fourthDot2)
    {
      if (shouldReverseDots)
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
    if (shouldReverseDots)
    {
      v40 = 10244;
    }

    else
    {
      v40 = 10241;
    }

    if (shouldReverseDots)
    {
      v41 = 1;
    }

    else
    {
      v41 = 4;
    }

    if (shouldReverseDots)
    {
      v42 = 32;
    }

    else
    {
      v42 = 8;
    }

    if (!topDot)
    {
      v40 = 10240;
    }

    if (middleDot)
    {
      v43 = v40 | 2;
    }

    else
    {
      v43 = v40;
    }

    leftDots5 = [patternCopy leftDots];
    bottomDot3 = [leftDots5 bottomDot];

    if (!bottomDot3)
    {
      v41 = 0;
    }

    rightDots5 = [patternCopy rightDots];
    topDot3 = [rightDots5 topDot];

    if (topDot3)
    {
      v48 = v42;
    }

    else
    {
      v48 = 0;
    }

    v49 = v41 + v48 + v43;
    rightDots6 = [patternCopy rightDots];
    middleDot3 = [rightDots6 middleDot];

    if (middleDot3)
    {
      v36 = v49 + 16;
    }

    else
    {
      v36 = v49;
    }

    rightDots7 = [patternCopy rightDots];

    bottomDot4 = [rightDots7 bottomDot];

    if (shouldReverseDots)
    {
      v54 = 8;
    }

    else
    {
      v54 = 32;
    }

    v55 = v36 + v54;
    if (bottomDot4)
    {
      return v55;
    }
  }

  return v36;
}

- (id)_halfPatternFromTouches:(id)touches side:(unint64_t)side
{
  v6 = [(VOTBrailleGesturePatternRecognitionEngine *)self _sortTouches:touches fromTopToBottomForSide:?];
  v7 = -[VOTBrailleGestureDataRepository halfPatternsForNumberOfDots:side:](self->_repository, "halfPatternsForNumberOfDots:side:", [v6 count], side);
  if ([v7 count] == 1)
  {
    [v7 firstObject];
  }

  else
  {
    [(VOTBrailleGesturePatternRecognitionEngine *)self _closestHalfPatternForOrderedTouches:v6 possibleMatches:v7 side:side];
  }
  v8 = ;
  v9 = [(VOTBrailleGesturePatternRecognitionEngine *)self _halfPatternFromOrderedTouches:v6 correspondingHalfPattern:v8];

  return v9;
}

- (id)_closestHalfPatternForOrderedTouches:(id)touches possibleMatches:(id)matches side:(unint64_t)side
{
  touchesCopy = touches;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = matches;
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
        [(VOTBrailleGesturePatternRecognitionEngine *)self _totalDistanceBetweenCorrespondingPointsInTouches:touchesCopy andTouches:v16];
        v18 = v17;

        v19 = VOTLogBrailleGestures();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [(VOTBrailleGesturePatternRecognitionEngine *)self _orderedTouchesFromHalfPattern:v15];
          *buf = v23;
          v30 = touchesCopy;
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

- (id)_halfPatternFromOrderedTouches:(id)touches correspondingHalfPattern:(id)pattern
{
  touchesCopy = touches;
  patternCopy = pattern;
  v7 = objc_alloc_init(VOTBrailleGestureHalfPattern);
  topDot = [patternCopy topDot];

  if (topDot)
  {
    v9 = [touchesCopy objectAtIndexedSubscript:0];
    [(VOTBrailleGestureHalfPattern *)v7 setTopDot:v9];

    topDot = 1;
  }

  middleDot = [patternCopy middleDot];

  if (middleDot)
  {
    v11 = topDot + 1;
    v12 = [touchesCopy objectAtIndexedSubscript:topDot];
    [(VOTBrailleGestureHalfPattern *)v7 setMiddleDot:v12];

    topDot = v11;
  }

  bottomDot = [patternCopy bottomDot];

  if (bottomDot)
  {
    v14 = topDot + 1;
    v15 = [touchesCopy objectAtIndexedSubscript:topDot];
    [(VOTBrailleGestureHalfPattern *)v7 setBottomDot:v15];

    topDot = v14;
  }

  fourthDot = [patternCopy fourthDot];

  if (fourthDot)
  {
    v17 = [touchesCopy objectAtIndexedSubscript:topDot];
    [(VOTBrailleGestureHalfPattern *)v7 setFourthDot:v17];
  }

  return v7;
}

- (double)_totalDistanceBetweenCorrespondingPointsInTouches:(id)touches andTouches:(id)andTouches
{
  touchesCopy = touches;
  andTouchesCopy = andTouches;
  if ([touchesCopy count])
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = [touchesCopy objectAtIndexedSubscript:v8];
      [v10 CGPointValue];
      v12 = v11;
      v14 = v13;
      v15 = [andTouchesCopy objectAtIndexedSubscript:v8];
      [v15 CGPointValue];
      [(VOTBrailleGesturePatternRecognitionEngine *)self _distanceBetweenPoint:v12 andPoint:v14, v16, v17];
      v9 = v9 + v18;

      ++v8;
    }

    while ([touchesCopy count] > v8);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)_orderedTouchesFromHalfPattern:(id)pattern
{
  patternCopy = pattern;
  v4 = [NSMutableArray arrayWithCapacity:3];
  topDot = [patternCopy topDot];

  if (topDot)
  {
    topDot2 = [patternCopy topDot];
    [v4 addObject:topDot2];
  }

  middleDot = [patternCopy middleDot];

  if (middleDot)
  {
    middleDot2 = [patternCopy middleDot];
    [v4 addObject:middleDot2];
  }

  bottomDot = [patternCopy bottomDot];

  if (bottomDot)
  {
    bottomDot2 = [patternCopy bottomDot];
    [v4 addObject:bottomDot2];
  }

  fourthDot = [patternCopy fourthDot];

  if (fourthDot)
  {
    fourthDot2 = [patternCopy fourthDot];
    [v4 addObject:fourthDot2];
  }

  return v4;
}

- (id)_sortTouches:(id)touches fromTopToBottomForSide:(unint64_t)side
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F2038;
  v6[3] = &unk_1001CAEA8;
  v6[4] = self;
  v6[5] = side;
  v4 = [touches sortedArrayUsingComparator:v6];

  return v4;
}

- (BOOL)_halfPattern:(id)pattern hasSameDotsAsHalfPattern:(id)halfPattern
{
  patternCopy = pattern;
  halfPatternCopy = halfPattern;
  topDot = [patternCopy topDot];
  topDot2 = [halfPatternCopy topDot];
  if ([(VOTBrailleGesturePatternRecognitionEngine *)self _bothObjectsAreNilOrBothAreNonNil:topDot object:topDot2])
  {
    middleDot = [patternCopy middleDot];
    middleDot2 = [halfPatternCopy middleDot];
    if ([(VOTBrailleGesturePatternRecognitionEngine *)self _bothObjectsAreNilOrBothAreNonNil:middleDot object:middleDot2])
    {
      bottomDot = [patternCopy bottomDot];
      bottomDot2 = [halfPatternCopy bottomDot];
      v14 = [(VOTBrailleGesturePatternRecognitionEngine *)self _bothObjectsAreNilOrBothAreNonNil:bottomDot object:bottomDot2];
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

- (BOOL)_bothObjectsAreNilOrBothAreNonNil:(id)nil object:(id)object
{
  if (nil)
  {
    v4 = object == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return !(nil | object) || v5;
}

- (id)_averagePointValueWithDataCount:(unint64_t)count currentPointValue:(id)value newPointValue:(id)pointValue
{
  pointValueCopy = pointValue;
  v9 = pointValueCopy;
  if (value)
  {
    [value ax_CGPointValue];
    v11 = v10;
    v13 = v12;
    [v9 ax_CGPointValue];
    [(VOTBrailleGesturePatternRecognitionEngine *)self _averageOfOldPoint:count newPoint:v11 dataCount:v13, v14, v15];
    v16 = [NSValue ax_valueWithCGPoint:?];
  }

  else
  {
    v16 = pointValueCopy;
  }

  v17 = v16;

  return v17;
}

- (CGPoint)_averageOfOldPoint:(CGPoint)point newPoint:(CGPoint)newPoint dataCount:(unint64_t)count
{
  y = newPoint.y;
  v7 = point.y;
  [(VOTBrailleGesturePatternRecognitionEngine *)self _averageOfOldFloat:point.x newFloat:newPoint.x dataCount:?];
  v10 = v9;
  [(VOTBrailleGesturePatternRecognitionEngine *)self _averageOfOldFloat:count newFloat:v7 dataCount:y];
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