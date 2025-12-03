@interface VOTBrailleGestureDataRepository
- (BOOL)_allDotsAreOnScreen:(id)screen withDrift:(CGPoint)drift;
- (BOOL)_isTypingModeSingleHandVariant;
- (BOOL)_shouldReverseDots;
- (BOOL)saveDrift;
- (CGPoint)_averageLeftDrift;
- (CGPoint)_averageRecentDriftFromDrifts:(id)drifts;
- (CGPoint)_averageRightDrift;
- (CGPoint)_driftByAddingDisplacementOfPointValue:(id)value fromPointValue:(id)pointValue toDrift:(CGPoint)drift;
- (CGPoint)_driftOfHalfPattern:(id)pattern relativeToDotPositions:(id)positions;
- (VOTBrailleGestureDataRepository)initWithTypingMode:(int64_t)mode keyboardSize:(CGSize)size shouldUseEightDotBraille:(BOOL)braille;
- (id)_adjustPointValue:(id)value withDrift:(CGPoint)drift;
- (id)_arrayOfDictionariesFromPointValues:(id)values;
- (id)_calibratedDotPositionsFilePath;
- (id)_filenameSuffix;
- (id)_gestureDataDirectory;
- (id)_loadDataFromFile:(id)file;
- (id)_mutableArrayOfPointValuesFromDictionaries:(id)dictionaries;
- (id)_mutableArrayOfZeroPointValues:(unint64_t)values;
- (id)_recordedDriftsFilePath;
- (id)dotNumberPositions;
- (id)halfPatternsForNumberOfDots:(unint64_t)dots side:(unint64_t)side;
- (unint64_t)_totalNumberOfDots;
- (void)_addInstanceOfDrift:(CGPoint)drift toArray:(id)array forPattern:(id)pattern;
- (void)_appendDots:(id)dots toPositionsArray:(id)array withDrift:(CGPoint)drift;
- (void)_deleteCalibratedData;
- (void)_generateInitialData;
- (void)_generateScreenAwayInitialData;
- (void)_generateSingleHandInitialData;
- (void)_generateStylusInitialData:(BOOL)data;
- (void)_generateTableTopInitialData;
- (void)_getEightDotTableTopMiddleLeftDot:(CGPoint *)dot middleRightDot:(CGPoint *)rightDot bottomLeftDot:(CGPoint *)leftDot bottomRightDot:(CGPoint *)bottomRightDot angleFromXAxisToLineOfHand:(double)hand topLeftDot:(CGPoint)topLeftDot;
- (void)_getMiddleDotsForSixDotTableTopInitialDataForLeft:(CGPoint *)left right:(CGPoint *)right angleFromXAxisToLineOfHand:(double)hand topLeftDot:(CGPoint)dot;
- (void)_loadAllDataFromFiles;
- (void)_orderedLeftDots:(id *)dots rightDots:(id *)rightDots;
- (void)_removeInstanceOfDriftFromArray:(id)array;
- (void)_repairFileProtectionClassOnPathIfNecessary:(id)necessary;
- (void)_resetLearnedData;
- (void)calibrateWithDotNumberPositions:(id)positions;
- (void)removeDriftAddedByPattern:(id)pattern;
- (void)updateDriftWithPattern:(id)pattern;
@end

@implementation VOTBrailleGestureDataRepository

- (VOTBrailleGestureDataRepository)initWithTypingMode:(int64_t)mode keyboardSize:(CGSize)size shouldUseEightDotBraille:(BOOL)braille
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = VOTBrailleGestureDataRepository;
  v9 = [(VOTBrailleGestureDataRepository *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_typingMode = mode;
    v9->_keyboardSize.width = width;
    v9->_keyboardSize.height = height;
    v9->_shouldUseEightDotBraille = braille;
    [(VOTBrailleGestureDataRepository *)v9 _loadAllDataFromFiles];
  }

  return v10;
}

- (id)halfPatternsForNumberOfDots:(unint64_t)dots side:(unint64_t)side
{
  v29 = +[NSMutableArray array];
  v7 = exp2(([(VOTBrailleGestureDataRepository *)self _totalNumberOfDots]>> 1));
  if (v7 > 0.0)
  {
    v8 = v7;
    v9 = 0;
    selfCopy = self;
    dotsCopy = dots;
    while ((v9 & 1) + ((v9 & 2) >> 1) + ((v9 & 4) >> 2) + ((v9 & 8) >> 3) != dots)
    {
LABEL_23:
      if (v8 <= ++v9)
      {
        goto LABEL_24;
      }
    }

    if (side)
    {
      rightDotPositions = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
      [(VOTBrailleGestureDataRepository *)self _averageRightDrift];
    }

    else
    {
      rightDotPositions = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
      [(VOTBrailleGestureDataRepository *)self _averageLeftDrift];
    }

    v12 = v10;
    v13 = v11;
    if (v9)
    {
      topDot = [rightDotPositions topDot];
      v14 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:v12 withDrift:v13];
      v23 = v14;
      if ((v9 & 2) != 0)
      {
LABEL_9:
        middleDot = [rightDotPositions middleDot];
        v15 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:v12 withDrift:v13];
        v24 = v15;
        if ((v9 & 4) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v14 = 0;
      if ((v9 & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    v15 = 0;
    if ((v9 & 4) != 0)
    {
LABEL_10:
      bottomDot = [rightDotPositions bottomDot];
      v16 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:v12 withDrift:v13];
      v25 = v16;
      if ((v9 & 8) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_15:
    v16 = 0;
    if ((v9 & 8) != 0)
    {
LABEL_11:
      [rightDotPositions fourthDot];
      v18 = v17 = side;
      v19 = [(VOTBrailleGestureDataRepository *)selfCopy _adjustPointValue:v18 withDrift:v12, v13];
      v20 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v14 middleDot:v15 bottomDot:v16 fourthDot:v19];

      side = v17;
      dots = dotsCopy;
      if ((v9 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_16:
    v20 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v14 middleDot:v15 bottomDot:v16 fourthDot:0];
    if ((v9 & 4) == 0)
    {
LABEL_18:
      self = selfCopy;
      if ((v9 & 2) != 0)
      {
      }

      if (v9)
      {
      }

      [v29 addObject:v20];

      goto LABEL_23;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_24:

  return v29;
}

- (void)updateDriftWithPattern:(id)pattern
{
  patternCopy = pattern;
  leftDots = [patternCopy leftDots];
  v6 = [leftDots count];

  if (v6)
  {
    leftDots2 = [patternCopy leftDots];
    leftDotPositions = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
    [(VOTBrailleGestureDataRepository *)self _driftOfHalfPattern:leftDots2 relativeToDotPositions:leftDotPositions];
    v10 = v9;
    v12 = v11;

    leftDrifts = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    leftDots3 = [patternCopy leftDots];
    [(VOTBrailleGestureDataRepository *)self _addInstanceOfDrift:leftDrifts toArray:leftDots3 forPattern:v10, v12];

    v15 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v35.x = v10;
      v35.y = v12;
      v16 = NSStringFromPoint(v35);
      leftDrifts2 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
      v31 = 138543618;
      v32 = v16;
      v33 = 2114;
      v34 = leftDrifts2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Added left drift %{public}@.  Recorded drifts are now %{public}@", &v31, 0x16u);
    }
  }

  rightDots = [patternCopy rightDots];
  v19 = [rightDots count];

  if (v19)
  {
    rightDots2 = [patternCopy rightDots];
    rightDotPositions = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
    [(VOTBrailleGestureDataRepository *)self _driftOfHalfPattern:rightDots2 relativeToDotPositions:rightDotPositions];
    v23 = v22;
    v25 = v24;

    rightDrifts = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    rightDots3 = [patternCopy rightDots];
    [(VOTBrailleGestureDataRepository *)self _addInstanceOfDrift:rightDrifts toArray:rightDots3 forPattern:v23, v25];

    v28 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v36.x = v23;
      v36.y = v25;
      v29 = NSStringFromPoint(v36);
      rightDrifts2 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
      v31 = 138543618;
      v32 = v29;
      v33 = 2114;
      v34 = rightDrifts2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Added right drift %{public}@.  Recorded drifts are now %{public}@", &v31, 0x16u);
    }
  }
}

- (void)removeDriftAddedByPattern:(id)pattern
{
  patternCopy = pattern;
  leftDots = [patternCopy leftDots];
  v6 = [leftDots count];

  if (v6)
  {
    leftDrifts = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    [(VOTBrailleGestureDataRepository *)self _removeInstanceOfDriftFromArray:leftDrifts];

    v8 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      leftDrifts2 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
      v15 = 138543362;
      v16 = leftDrifts2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed left drift.  Recorded drifts are now %{public}@", &v15, 0xCu);
    }
  }

  rightDots = [patternCopy rightDots];
  v11 = [rightDots count];

  if (v11)
  {
    rightDrifts = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    [(VOTBrailleGestureDataRepository *)self _removeInstanceOfDriftFromArray:rightDrifts];

    v13 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      rightDrifts2 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
      v15 = 138543362;
      v16 = rightDrifts2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removed right drift.  Recorded drifts are now %{public}@", &v15, 0xCu);
    }
  }
}

- (BOOL)saveDrift
{
  leftDrifts = [(VOTBrailleGestureDataRepository *)self leftDrifts];
  v4 = [leftDrifts count];

  if (v4 >= 6)
  {
    leftDrifts2 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    leftDrifts3 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    [leftDrifts2 removeObjectsInRange:{0, objc_msgSend(leftDrifts3, "count") - 5}];
  }

  rightDrifts = [(VOTBrailleGestureDataRepository *)self rightDrifts];
  v8 = [rightDrifts count];

  if (v8 >= 6)
  {
    rightDrifts2 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    rightDrifts3 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    [rightDrifts2 removeObjectsInRange:{0, objc_msgSend(rightDrifts3, "count") - 5}];
  }

  v20[0] = @"Left";
  leftDrifts4 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
  v12 = [(VOTBrailleGestureDataRepository *)self _arrayOfDictionariesFromPointValues:leftDrifts4];
  v20[1] = @"Right";
  v21[0] = v12;
  rightDrifts4 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
  v14 = [(VOTBrailleGestureDataRepository *)self _arrayOfDictionariesFromPointValues:rightDrifts4];
  v21[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  _recordedDriftsFilePath = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
  v17 = [v15 writeToFile:_recordedDriftsFilePath atomically:1];
  if (v17)
  {
    [(VOTBrailleGestureDataRepository *)self _repairFileProtectionClassOnPathIfNecessary:_recordedDriftsFilePath];
  }

  else
  {
    v18 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10012EB60();
    }
  }

  return v17;
}

- (id)dotNumberPositions
{
  v3 = +[NSMutableArray array];
  v7 = 0;
  v8 = 0;
  [(VOTBrailleGestureDataRepository *)self _orderedLeftDots:&v8 rightDots:&v7];
  v4 = v8;
  v5 = v7;
  [(VOTBrailleGestureDataRepository *)self _averageLeftDrift];
  [(VOTBrailleGestureDataRepository *)self _appendDots:v4 toPositionsArray:v3 withDrift:?];
  [(VOTBrailleGestureDataRepository *)self _averageRightDrift];
  [(VOTBrailleGestureDataRepository *)self _appendDots:v5 toPositionsArray:v3 withDrift:?];

  return v3;
}

- (void)_orderedLeftDots:(id *)dots rightDots:(id *)rightDots
{
  _shouldReverseDots = [(VOTBrailleGestureDataRepository *)self _shouldReverseDots];
  if (dots)
  {
    leftDotPositions = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
    *dots = [leftDotPositions dotArrayReversed:_shouldReverseDots];
  }

  if (rightDots)
  {
    rightDotPositions = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
    *rightDots = [rightDotPositions dotArrayReversed:_shouldReverseDots];
  }
}

- (void)_appendDots:(id)dots toPositionsArray:(id)array withDrift:(CGPoint)drift
{
  y = drift.y;
  x = drift.x;
  dotsCopy = dots;
  arrayCopy = array;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [dotsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(dotsCopy);
        }

        v15 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:*(*(&v16 + 1) + 8 * v14) withDrift:x, y];
        [arrayCopy addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [dotsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (BOOL)_allDotsAreOnScreen:(id)screen withDrift:(CGPoint)drift
{
  y = drift.y;
  x = drift.x;
  screenCopy = screen;
  v8 = *(&xmmword_1001FF150 + 1);
  v9 = *&xmmword_1001FF150;
  if ([(VOTBrailleGestureDataRepository *)self _isTypingModeSingleHandVariant])
  {
    v9 = *(&xmmword_1001FF150 + 1);
    v8 = *&xmmword_1001FF150;
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = screenCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:*(*(&v24 + 1) + 8 * i) withDrift:x, y, v24];
        [v15 ax_CGPointValue];
        v35.x = v16;
        v35.y = v17;
        v36.origin.x = 0.0;
        v36.origin.y = 0.0;
        v36.size.width = v8;
        v36.size.height = v9;
        v18 = CGRectContainsPoint(v36, v35);

        if (!v18)
        {
          v19 = 0;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_13:

  v20 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.width = v8;
    v37.size.height = v9;
    v21 = NSStringFromRect(v37);
    v22 = "NO";
    *buf = 138412802;
    v29 = v21;
    if (v19)
    {
      v22 = "YES";
    }

    v30 = 2080;
    v31 = v22;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "all dots within screen rect %@ -> %s %@", buf, 0x20u);
  }

  return v19;
}

- (void)calibrateWithDotNumberPositions:(id)positions
{
  positionsCopy = positions;
  _isTypingModeInputColumnsVariant = [(VOTBrailleGestureDataRepository *)self _isTypingModeInputColumnsVariant];
  v6 = [positionsCopy count];
  _totalNumberOfDots = [(VOTBrailleGestureDataRepository *)self _totalNumberOfDots];
  if (_isTypingModeInputColumnsVariant)
  {
    if (v6 != (_totalNumberOfDots >> 1))
    {
      _AXAssert();
    }

    if (self->_shouldUseEightDotBraille)
    {
      v8 = [positionsCopy objectAtIndexedSubscript:3];
    }

    else
    {
      v8 = 0;
    }

    v9 = [positionsCopy objectAtIndexedSubscript:0];
    v10 = [positionsCopy objectAtIndexedSubscript:1];
    v11 = [positionsCopy objectAtIndexedSubscript:2];
    v12 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v9 middleDot:v10 bottomDot:v11 fourthDot:v8];
    [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v12];
  }

  else
  {
    if (v6 != _totalNumberOfDots)
    {
      _AXAssert();
    }

    if (self->_shouldUseEightDotBraille)
    {
      v8 = [positionsCopy objectAtIndexedSubscript:6];
    }

    else
    {
      v8 = 0;
    }

    if (self->_shouldUseEightDotBraille)
    {
      v9 = [positionsCopy objectAtIndexedSubscript:7];
    }

    else
    {
      v9 = 0;
    }

    v13 = [positionsCopy objectAtIndexedSubscript:0];
    v14 = [positionsCopy objectAtIndexedSubscript:1];
    v15 = [positionsCopy objectAtIndexedSubscript:2];
    v16 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v13 middleDot:v14 bottomDot:v15 fourthDot:v8];
    [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v16];

    v10 = [positionsCopy objectAtIndexedSubscript:3];
    v11 = [positionsCopy objectAtIndexedSubscript:4];
    v12 = [positionsCopy objectAtIndexedSubscript:5];
    v17 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v10 middleDot:v11 bottomDot:v12 fourthDot:v9];
    [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v17];
  }

  leftDotPositions = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  dictionaryRepresentation = [leftDotPositions dictionaryRepresentation];

  rightDotPositions = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  dictionaryRepresentation2 = [rightDotPositions dictionaryRepresentation];

  v25[0] = @"Left";
  v25[1] = @"Right";
  v26[0] = dictionaryRepresentation;
  v26[1] = dictionaryRepresentation2;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  _calibratedDotPositionsFilePath = [(VOTBrailleGestureDataRepository *)self _calibratedDotPositionsFilePath];
  if ([v22 writeToFile:_calibratedDotPositionsFilePath atomically:1])
  {
    [(VOTBrailleGestureDataRepository *)self _repairFileProtectionClassOnPathIfNecessary:_calibratedDotPositionsFilePath];
    [(VOTBrailleGestureDataRepository *)self _resetLearnedData];
  }

  else
  {
    v24 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10012EB9C();
    }
  }
}

- (CGPoint)_driftByAddingDisplacementOfPointValue:(id)value fromPointValue:(id)pointValue toDrift:(CGPoint)drift
{
  y = drift.y;
  x = drift.x;
  valueCopy = value;
  pointValueCopy = pointValue;
  if (!pointValueCopy)
  {
    _AXAssert();
  }

  [pointValueCopy ax_CGPointValue];
  if (valueCopy)
  {
    v12 = v10;
    v13 = v11;
    [valueCopy ax_CGPointValue];
    x = x + v14 - v12;
    y = y + v15 - v13;
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_driftOfHalfPattern:(id)pattern relativeToDotPositions:(id)positions
{
  patternCopy = pattern;
  positionsCopy = positions;
  y = CGPointZero.y;
  topDot = [patternCopy topDot];
  topDot2 = [positionsCopy topDot];
  [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:topDot fromPointValue:topDot2 toDrift:CGPointZero.x, y];
  v12 = v11;
  v14 = v13;

  middleDot = [patternCopy middleDot];
  middleDot2 = [positionsCopy middleDot];
  [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:middleDot fromPointValue:middleDot2 toDrift:v12, v14];
  v18 = v17;
  v20 = v19;

  bottomDot = [patternCopy bottomDot];
  bottomDot2 = [positionsCopy bottomDot];
  [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:bottomDot fromPointValue:bottomDot2 toDrift:v18, v20];
  v24 = v23;
  v26 = v25;

  if (self->_shouldUseEightDotBraille)
  {
    fourthDot = [patternCopy fourthDot];
    fourthDot2 = [positionsCopy fourthDot];
    [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:fourthDot fromPointValue:fourthDot2 toDrift:v24, v26];
    v24 = v29;
    v26 = v30;
  }

  v31 = [patternCopy count];
  if (v31)
  {
    v24 = v24 / v31;
    v26 = v26 / v31;
  }

  else if (v24 != CGPointZero.x || v26 != y)
  {
    _AXAssert();
  }

  v33 = v24;
  v34 = v26;
  result.y = v34;
  result.x = v33;
  return result;
}

- (void)_addInstanceOfDrift:(CGPoint)drift toArray:(id)array forPattern:(id)pattern
{
  y = drift.y;
  x = drift.x;
  arrayCopy = array;
  patternCopy = pattern;
  if (!arrayCopy)
  {
    _AXAssert();
  }

  v11 = [NSValue ax_valueWithCGPoint:x, y];
  [arrayCopy addObject:v11];

  [(VOTBrailleGestureDataRepository *)self _averageRecentDriftFromDrifts:arrayCopy];
  v13 = v12;
  v15 = v14;
  v16 = [patternCopy dotArrayReversed:{-[VOTBrailleGestureDataRepository _shouldReverseDots](self, "_shouldReverseDots")}];
  if (![(VOTBrailleGestureDataRepository *)self _allDotsAreOnScreen:v16 withDrift:v13, v15])
  {
    v17 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10012EBD8(v17, x, y);
    }

    [arrayCopy removeLastObject];
  }
}

- (void)_removeInstanceOfDriftFromArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    _AXAssert();
  }

  if ([arrayCopy count] < 6)
  {
    v4 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Could not remove last instance of drift.  This is expected if we backspaced further than the text we had entered in this run.", v5, 2u);
    }
  }

  else
  {
    [arrayCopy removeLastObject];
  }
}

- (CGPoint)_averageRecentDriftFromDrifts:(id)drifts
{
  driftsCopy = drifts;
  v4 = [driftsCopy count];
  if (v4 <= 4)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    _AXAssert();
  }

  else
  {
    v5 = [driftsCopy subarrayWithRange:{v4 - 5, 5}];
    x = sub_10003D830(v5);
    y = v7;
  }

  v9 = x;
  v10 = y;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)_averageLeftDrift
{
  leftDrifts = [(VOTBrailleGestureDataRepository *)self leftDrifts];
  [(VOTBrailleGestureDataRepository *)self _averageRecentDriftFromDrifts:leftDrifts];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_averageRightDrift
{
  rightDrifts = [(VOTBrailleGestureDataRepository *)self rightDrifts];
  [(VOTBrailleGestureDataRepository *)self _averageRecentDriftFromDrifts:rightDrifts];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_adjustPointValue:(id)value withDrift:(CGPoint)drift
{
  if (value)
  {
    y = drift.y;
    x = drift.x;
    [value ax_CGPointValue];
    v9 = [NSValue ax_valueWithCGPoint:x + v7, y + v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)_totalNumberOfDots
{
  if (self->_shouldUseEightDotBraille)
  {
    return 8;
  }

  else
  {
    return 6;
  }
}

- (void)_resetLearnedData
{
  v3 = +[NSFileManager defaultManager];
  _recordedDriftsFilePath = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
  v5 = [v3 fileExistsAtPath:_recordedDriftsFilePath];

  if (v5)
  {
    v6 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting recorded drifts", buf, 2u);
    }

    _recordedDriftsFilePath2 = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
    v11 = 0;
    v8 = [v3 removeItemAtPath:_recordedDriftsFilePath2 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = VOTLogBrailleGestures();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10012EC6C();
      }
    }
  }

  [(VOTBrailleGestureDataRepository *)self _loadAllDataFromFiles];
}

- (void)_deleteCalibratedData
{
  v3 = +[NSFileManager defaultManager];
  _calibratedDotPositionsFilePath = [(VOTBrailleGestureDataRepository *)self _calibratedDotPositionsFilePath];
  if ([v3 fileExistsAtPath:_calibratedDotPositionsFilePath])
  {
    v5 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting calibrated dot positions", buf, 2u);
    }

    v9 = 0;
    v6 = [v3 removeItemAtPath:_calibratedDotPositionsFilePath error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = VOTLogBrailleGestures();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10012ECDC();
      }
    }
  }
}

- (id)_filenameSuffix
{
  v4 = self->_typingMode - 1;
  if (v4 > 4)
  {
    v5 = @"screenAway";
  }

  else
  {
    v5 = *(&off_1001CADE8 + v4);
  }

  if (self->_shouldUseEightDotBraille)
  {
    v6 = @"8dot";
  }

  else
  {
    v6 = @"6dot";
  }

  return [NSString stringWithFormat:@"%@_%dx%d_%@.plist", v5, self->_keyboardSize.width, self->_keyboardSize.height, v6, v2, v3];
}

- (id)_gestureDataDirectory
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  lastObject = [v3 lastObject];

  v14 = NSFileProtectionKey;
  v15 = NSFileProtectionNone;
  v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v6 = [lastObject stringByAppendingPathComponent:@"Accessibility"];
  v7 = [v6 stringByAppendingPathComponent:@"BrailleGestures"];
  v8 = +[NSFileManager defaultManager];
  v13 = 0;
  v9 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v5 error:&v13];
  v10 = v13;
  if ((v9 & 1) == 0)
  {
    v11 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10012ED4C();
    }
  }

  [(VOTBrailleGestureDataRepository *)self _repairFileProtectionClassOnPathIfNecessary:v6];
  [(VOTBrailleGestureDataRepository *)self _repairFileProtectionClassOnPathIfNecessary:v7];

  return v7;
}

- (id)_calibratedDotPositionsFilePath
{
  calibratedDotPositionsFilePath = self->_calibratedDotPositionsFilePath;
  if (!calibratedDotPositionsFilePath)
  {
    _gestureDataDirectory = [(VOTBrailleGestureDataRepository *)self _gestureDataDirectory];
    _filenameSuffix = [(VOTBrailleGestureDataRepository *)self _filenameSuffix];
    v6 = [NSString stringWithFormat:@"CalibratedDotPositions.%@", _filenameSuffix];
    v7 = [_gestureDataDirectory stringByAppendingPathComponent:v6];
    v8 = self->_calibratedDotPositionsFilePath;
    self->_calibratedDotPositionsFilePath = v7;

    calibratedDotPositionsFilePath = self->_calibratedDotPositionsFilePath;
  }

  return calibratedDotPositionsFilePath;
}

- (id)_recordedDriftsFilePath
{
  recordedDriftsFilePath = self->_recordedDriftsFilePath;
  if (!recordedDriftsFilePath)
  {
    _gestureDataDirectory = [(VOTBrailleGestureDataRepository *)self _gestureDataDirectory];
    _filenameSuffix = [(VOTBrailleGestureDataRepository *)self _filenameSuffix];
    v6 = [NSString stringWithFormat:@"RecordedDrifts.%@", _filenameSuffix];
    v7 = [_gestureDataDirectory stringByAppendingPathComponent:v6];
    v8 = self->_recordedDriftsFilePath;
    self->_recordedDriftsFilePath = v7;

    recordedDriftsFilePath = self->_recordedDriftsFilePath;
  }

  return recordedDriftsFilePath;
}

- (void)_generateTableTopInitialData
{
  shouldUseEightDotBraille = self->_shouldUseEightDotBraille;
  if (self->_shouldUseEightDotBraille)
  {
    v4 = 0.0872664626;
  }

  else
  {
    v4 = 0.34906585;
  }

  if (self->_shouldUseEightDotBraille)
  {
    v5 = 350.0;
  }

  else
  {
    v5 = 230.0;
  }

  width = self->_keyboardSize.width;
  v7 = (width + -100.0 + -120.0) * 0.5;
  v8 = cos(v4);
  if (v5 * v8 <= v7)
  {
    v9 = fmin(width + -100.0 + v5 * v8 * -2.0, 300.0);
  }

  else
  {
    v4 = acos(v7 / v5);
    v8 = cos(v4);
    v9 = 120.0;
  }

  v10 = v5 * sin(v4);
  v11 = v10 + (self->_keyboardSize.height - v10) * 0.5;
  v12 = (width - v9) * 0.5;
  v13 = width - v12;
  v14 = v12 - v5 * v8;
  v15 = v11 - v10;
  v16 = width - v14;
  v41 = 0.0;
  v42 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  if (shouldUseEightDotBraille)
  {
    v37 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    [(VOTBrailleGestureDataRepository *)self _getEightDotTableTopMiddleLeftDot:&v41 middleRightDot:&v39 bottomLeftDot:&v37 bottomRightDot:&v35 angleFromXAxisToLineOfHand:v4 topLeftDot:v12, v11];
    v17 = [NSValue ax_valueWithCGPoint:v12, v11];
    v18 = [NSValue ax_valueWithCGPoint:v41, v42];
    v19 = [NSValue ax_valueWithCGPoint:v37, v38];
    v20 = [NSValue ax_valueWithCGPoint:v14, v15];
    v21 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v17 middleDot:v18 bottomDot:v19 fourthDot:v20];
    [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v21];

    v22 = [NSValue ax_valueWithCGPoint:v13, v11];
    v23 = [NSValue ax_valueWithCGPoint:v39, v40];
    v24 = [NSValue ax_valueWithCGPoint:v35, v36];
    v25 = [NSValue ax_valueWithCGPoint:v16, v15];
    v26 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v22 middleDot:v23 bottomDot:v24 fourthDot:v25];
    [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v26];
  }

  else
  {
    [(VOTBrailleGestureDataRepository *)self _getMiddleDotsForSixDotTableTopInitialDataForLeft:&v41 right:&v39 angleFromXAxisToLineOfHand:v4 topLeftDot:v12, v11];
    v27 = [NSValue ax_valueWithCGPoint:v12, v11];
    v28 = [NSValue ax_valueWithCGPoint:v41, v42];
    v29 = [NSValue ax_valueWithCGPoint:v14, v15];
    v30 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v27 middleDot:v28 bottomDot:v29];
    [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v30];

    v31 = [NSValue ax_valueWithCGPoint:v13, v11];
    v32 = [NSValue ax_valueWithCGPoint:v39, v40];
    v33 = [NSValue ax_valueWithCGPoint:v16, v15];
    v34 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v31 middleDot:v32 bottomDot:v33];
    [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v34];
  }
}

- (void)_getEightDotTableTopMiddleLeftDot:(CGPoint *)dot middleRightDot:(CGPoint *)rightDot bottomLeftDot:(CGPoint *)leftDot bottomRightDot:(CGPoint *)bottomRightDot angleFromXAxisToLineOfHand:(double)hand topLeftDot:(CGPoint)topLeftDot
{
  y = topLeftDot.y;
  x = topLeftDot.x;
  v16 = acos(0.958333333);
  v17 = __sincos_stret(v16 + hand);
  v18 = x + v17.__cosval * -120.0;
  v19 = y + v17.__sinval * -120.0;
  width = self->_keyboardSize.width;
  v21 = __sincos_stret(hand);
  if (dot)
  {
    dot->x = v18;
    dot->y = v19;
  }

  if (rightDot)
  {
    rightDot->x = width - v18;
    rightDot->y = v19;
  }

  v22 = v18 + v21.__cosval * -120.0;
  v23 = v19 + v21.__sinval * -120.0;
  if (leftDot)
  {
    leftDot->x = v22;
    leftDot->y = v23;
  }

  if (bottomRightDot)
  {
    bottomRightDot->x = width - v22;
    bottomRightDot->y = v23;
  }
}

- (void)_getMiddleDotsForSixDotTableTopInitialDataForLeft:(CGPoint *)left right:(CGPoint *)right angleFromXAxisToLineOfHand:(double)hand topLeftDot:(CGPoint)dot
{
  y = dot.y;
  x = dot.x;
  v12 = acos(0.958333333);
  v13 = __sincos_stret(v12 + hand);
  v14 = x + v13.__cosval * -120.0;
  v15 = y + v13.__sinval * -120.0;
  width = self->_keyboardSize.width;
  if (left)
  {
    left->x = v14;
    left->y = v15;
  }

  if (right)
  {
    right->x = width - v14;
    right->y = v15;
  }
}

- (void)_generateScreenAwayInitialData
{
  v3 = 230.0;
  if (self->_shouldUseEightDotBraille)
  {
    v3 = 350.0;
  }

  v4 = 2.0;
  if (self->_shouldUseEightDotBraille)
  {
    v4 = 3.0;
  }

  height = self->_keyboardSize.height;
  if (height + -100.0 <= v3)
  {
    v3 = height + -100.0;
  }

  v6 = v3 / v4;
  v7 = (height - v3) * 0.5;
  v8 = self->_keyboardSize.width + -50.0;
  v9 = v3 / v4 + v7;
  v10 = v6 + v6 + v7;
  if (self->_shouldUseEightDotBraille)
  {
    v11 = v6 + v10;
    v21 = [NSValue ax_valueWithCGPoint:50.0, v6 + v10];
    v12 = [NSValue ax_valueWithCGPoint:v8, v11];
  }

  else
  {
    v21 = 0;
    v12 = 0;
  }

  v13 = [NSValue ax_valueWithCGPoint:v8, v7];
  v14 = [NSValue ax_valueWithCGPoint:v8, v9];
  v15 = [NSValue ax_valueWithCGPoint:v8, v10];
  v16 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v13 middleDot:v14 bottomDot:v15 fourthDot:v12];
  [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v16];

  v17 = [NSValue ax_valueWithCGPoint:50.0, v7];
  v18 = [NSValue ax_valueWithCGPoint:50.0, v9];
  v19 = [NSValue ax_valueWithCGPoint:50.0, v10];
  v20 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v17 middleDot:v18 bottomDot:v19 fourthDot:v21];
  [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v20];
}

- (void)_generateSingleHandInitialData
{
  width = self->_keyboardSize.width;
  v4 = 230.0;
  if (self->_shouldUseEightDotBraille)
  {
    v4 = 350.0;
  }

  v5 = 2.0;
  if (self->_shouldUseEightDotBraille)
  {
    v5 = 3.0;
  }

  if (width + -100.0 <= v4)
  {
    v4 = width + -100.0;
  }

  v6 = self->_keyboardSize.height * 0.5;
  v7 = (width - v4) * 0.5;
  v8 = v4 / v5 + v7;
  v9 = v4 / v5 + v8;
  if (self->_shouldUseEightDotBraille)
  {
    v19 = [NSValue ax_valueWithCGPoint:v4 / v5 + v9, v6];
    width = self->_keyboardSize.width;
  }

  else
  {
    v19 = 0;
  }

  v10 = [NSValue ax_valueWithCGPoint:width * 0.5, -1000.0];
  v11 = v10;
  if (self->_shouldUseEightDotBraille)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [NSValue ax_valueWithCGPoint:v7, v6];
  v15 = [NSValue ax_valueWithCGPoint:v8, v6];
  v16 = [NSValue ax_valueWithCGPoint:v9, v6];
  v17 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v14 middleDot:v15 bottomDot:v16 fourthDot:v19];
  [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v17];

  v18 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v11 middleDot:v11 bottomDot:v11 fourthDot:v13];

  [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v18];
}

- (void)_generateStylusInitialData:(BOOL)data
{
  dataCopy = data;
  v5 = self->_keyboardSize.width * 0.25;
  v6 = 6.0;
  if (self->_shouldUseEightDotBraille)
  {
    v6 = 8.0;
  }

  v7 = self->_keyboardSize.height / v6;
  if (self->_shouldUseEightDotBraille)
  {
    v19 = [NSValue ax_valueWithCGPoint:v5 * 3.0, v7 * 7.0];
  }

  else
  {
    v19 = 0;
  }

  if (self->_shouldUseEightDotBraille)
  {
    v8 = [NSValue ax_valueWithCGPoint:v5, v7 * 7.0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSValue ax_valueWithCGPoint:v5 * 3.0, v7];
  v10 = [NSValue ax_valueWithCGPoint:v5 * 3.0, v7 * 3.0];
  v11 = [NSValue ax_valueWithCGPoint:v5 * 3.0, v7 * 5.0];
  v12 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v9 middleDot:v10 bottomDot:v11 fourthDot:v19];

  v13 = [NSValue ax_valueWithCGPoint:v5, v7];
  v14 = [NSValue ax_valueWithCGPoint:v5, v7 * 3.0];
  v15 = [NSValue ax_valueWithCGPoint:v5, v7 * 5.0];
  v16 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v13 middleDot:v14 bottomDot:v15 fourthDot:v8];

  if (dataCopy)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (dataCopy)
  {
    v18 = v12;
  }

  else
  {
    v18 = v16;
  }

  [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v17];
  [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v18];
}

- (void)_generateInitialData
{
  if (self->_typingMode == 1)
  {

    [(VOTBrailleGestureDataRepository *)self _generateTableTopInitialData];
  }

  else if ([(VOTBrailleGestureDataRepository *)self _isTypingModeInputColumnsVariant])
  {

    [(VOTBrailleGestureDataRepository *)self _generateSingleHandInitialData];
  }

  else
  {
    typingMode = self->_typingMode;
    if (typingMode == 4 || typingMode == 3)
    {

      [(VOTBrailleGestureDataRepository *)self _generateStylusInitialData:?];
    }

    else
    {

      [(VOTBrailleGestureDataRepository *)self _generateScreenAwayInitialData];
    }
  }
}

- (id)_mutableArrayOfZeroPointValues:(unint64_t)values
{
  v4 = [NSMutableArray arrayWithCapacity:?];
  if (values)
  {
    y = CGPointZero.y;
    do
    {
      v6 = [NSValue ax_valueWithCGPoint:CGPointZero.x, y];
      [v4 addObject:v6];

      --values;
    }

    while (values);
  }

  return v4;
}

- (id)_mutableArrayOfPointValuesFromDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dictionariesCopy count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = sub_10003D658(*(*(&v12 + 1) + 8 * i));
        [v4 addObject:{v10, v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_arrayOfDictionariesFromPointValues:(id)values
{
  valuesCopy = values;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valuesCopy count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = valuesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = sub_10003D714(*(*(&v12 + 1) + 8 * i));
        [v4 addObject:{v10, v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_repairFileProtectionClassOnPathIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  v5 = [v4 attributesOfItemAtPath:necessaryCopy error:&v15];
  v6 = v15;
  if (!v5)
  {
    v13 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10012EEA0();
    }

    v12 = v6;
    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:NSFileProtectionKey];
  v8 = [v7 isEqualToString:NSFileProtectionNone];

  if ((v8 & 1) == 0)
  {
    v9 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012EDBC();
    }

    v16 = NSFileProtectionKey;
    v17 = NSFileProtectionNone;
    v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = v6;
    v11 = [v4 setAttributes:v10 ofItemAtPath:necessaryCopy error:&v14];
    v12 = v14;

    if (v11)
    {
      goto LABEL_12;
    }

    v13 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10012EE2C();
    }

LABEL_11:

LABEL_12:
    v6 = v12;
  }
}

- (id)_loadDataFromFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:fileCopy])
  {
    v5 = [NSDictionary dictionaryWithContentsOfFile:fileCopy];
    if (v5)
    {
      goto LABEL_7;
    }

    v6 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012EF14();
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_loadAllDataFromFiles
{
  _calibratedDotPositionsFilePath = [(VOTBrailleGestureDataRepository *)self _calibratedDotPositionsFilePath];
  v4 = [(VOTBrailleGestureDataRepository *)self _loadDataFromFile:_calibratedDotPositionsFilePath];

  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10012EF84();
  }

  v6 = [v4 objectForKeyedSubscript:@"Left"];
  v7 = [VOTBrailleGestureHalfPattern halfPatternWithDictionaryRepresentation:v6];
  [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v7];

  v8 = [v4 objectForKeyedSubscript:@"Right"];
  v9 = [VOTBrailleGestureHalfPattern halfPatternWithDictionaryRepresentation:v8];
  [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v9];

  leftDotPositions = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  topDot = [leftDotPositions topDot];
  if (!topDot)
  {
    goto LABEL_18;
  }

  v12 = topDot;
  leftDotPositions2 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  middleDot = [leftDotPositions2 middleDot];
  if (!middleDot)
  {
LABEL_17:

LABEL_18:
LABEL_19:
    v26 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10012EFC0(self, v26);
    }

    [(VOTBrailleGestureDataRepository *)self _deleteCalibratedData];
    goto LABEL_22;
  }

  v15 = middleDot;
  leftDotPositions3 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  bottomDot = [leftDotPositions3 bottomDot];
  if (!bottomDot)
  {
LABEL_16:

    goto LABEL_17;
  }

  rightDotPositions = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  topDot2 = [rightDotPositions topDot];
  if (!topDot2)
  {
LABEL_15:

    goto LABEL_16;
  }

  v49 = topDot2;
  rightDotPositions2 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  middleDot2 = [rightDotPositions2 middleDot];
  if (!middleDot2)
  {

    goto LABEL_15;
  }

  v47 = rightDotPositions2;
  v48 = middleDot2;
  rightDotPositions3 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  bottomDot2 = [rightDotPositions3 bottomDot];
  if (bottomDot2)
  {
    if (self->_shouldUseEightDotBraille)
    {
      v45 = bottomDot2;
      leftDotPositions4 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
      fourthDot = [leftDotPositions4 fourthDot];
      if (fourthDot)
      {
        if (self->_shouldUseEightDotBraille)
        {
          v43 = fourthDot;
          rightDotPositions4 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
          fourthDot2 = [rightDotPositions4 fourthDot];
          v25 = fourthDot2 == 0;

          fourthDot = v43;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 1;
      }

      bottomDot2 = v45;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_19;
  }

  self->_areDotNumberPositionsCalibrated = 1;
LABEL_22:
  if (self->_areDotNumberPositionsCalibrated)
  {
    goto LABEL_30;
  }

  v27 = VOTLogBrailleGestures();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    sub_10012F084();
  }

  [(VOTBrailleGestureDataRepository *)self _generateInitialData];
  leftDotPositions5 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  if (!leftDotPositions5)
  {
    goto LABEL_29;
  }

  v29 = leftDotPositions5;
  if ([(VOTBrailleGestureDataRepository *)self _isTypingModeInputColumnsVariant])
  {

    goto LABEL_30;
  }

  rightDotPositions5 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];

  if (!rightDotPositions5)
  {
LABEL_29:
    _AXAssert();
  }

LABEL_30:
  _recordedDriftsFilePath = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
  v32 = [(VOTBrailleGestureDataRepository *)self _loadDataFromFile:_recordedDriftsFilePath];

  if (v32)
  {
    v33 = [v32 objectForKeyedSubscript:@"Left"];
    v34 = [(VOTBrailleGestureDataRepository *)self _mutableArrayOfPointValuesFromDictionaries:v33];
    [(VOTBrailleGestureDataRepository *)self setLeftDrifts:v34];

    v35 = [v32 objectForKeyedSubscript:@"Right"];
    v36 = [(VOTBrailleGestureDataRepository *)self _mutableArrayOfPointValuesFromDictionaries:v35];
    [(VOTBrailleGestureDataRepository *)self setRightDrifts:v36];

    v37 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      leftDrifts = [(VOTBrailleGestureDataRepository *)self leftDrifts];
      rightDrifts = [(VOTBrailleGestureDataRepository *)self rightDrifts];
      *buf = 138543618;
      v51 = leftDrifts;
      v52 = 2114;
      v53 = rightDrifts;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Had recorded left drifts: %{public}@\nright drifts: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v40 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Had no stored drifts", buf, 2u);
    }

    v41 = [(VOTBrailleGestureDataRepository *)self _mutableArrayOfZeroPointValues:5];
    [(VOTBrailleGestureDataRepository *)self setLeftDrifts:v41];

    v37 = [(VOTBrailleGestureDataRepository *)self _mutableArrayOfZeroPointValues:5];
    [(VOTBrailleGestureDataRepository *)self setRightDrifts:v37];
  }
}

- (BOOL)_isTypingModeSingleHandVariant
{
  if ([(VOTBrailleGestureDataRepository *)self _isTypingModeInputColumnsVariant])
  {
    return 1;
  }

  return [(VOTBrailleGestureDataRepository *)self _isTypingModeStylusVariant];
}

- (BOOL)_shouldReverseDots
{
  if (self->_typingMode == 5)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    if ([v4 voiceOverTouchBrailleShouldReverseDots])
    {
      v2 = ![(VOTBrailleGestureDataRepository *)self _isTypingModeSingleHandVariant];
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

@end