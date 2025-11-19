@interface VOTBrailleGestureDataRepository
- (BOOL)_allDotsAreOnScreen:(id)a3 withDrift:(CGPoint)a4;
- (BOOL)_isTypingModeSingleHandVariant;
- (BOOL)_shouldReverseDots;
- (BOOL)saveDrift;
- (CGPoint)_averageLeftDrift;
- (CGPoint)_averageRecentDriftFromDrifts:(id)a3;
- (CGPoint)_averageRightDrift;
- (CGPoint)_driftByAddingDisplacementOfPointValue:(id)a3 fromPointValue:(id)a4 toDrift:(CGPoint)a5;
- (CGPoint)_driftOfHalfPattern:(id)a3 relativeToDotPositions:(id)a4;
- (VOTBrailleGestureDataRepository)initWithTypingMode:(int64_t)a3 keyboardSize:(CGSize)a4 shouldUseEightDotBraille:(BOOL)a5;
- (id)_adjustPointValue:(id)a3 withDrift:(CGPoint)a4;
- (id)_arrayOfDictionariesFromPointValues:(id)a3;
- (id)_calibratedDotPositionsFilePath;
- (id)_filenameSuffix;
- (id)_gestureDataDirectory;
- (id)_loadDataFromFile:(id)a3;
- (id)_mutableArrayOfPointValuesFromDictionaries:(id)a3;
- (id)_mutableArrayOfZeroPointValues:(unint64_t)a3;
- (id)_recordedDriftsFilePath;
- (id)dotNumberPositions;
- (id)halfPatternsForNumberOfDots:(unint64_t)a3 side:(unint64_t)a4;
- (unint64_t)_totalNumberOfDots;
- (void)_addInstanceOfDrift:(CGPoint)a3 toArray:(id)a4 forPattern:(id)a5;
- (void)_appendDots:(id)a3 toPositionsArray:(id)a4 withDrift:(CGPoint)a5;
- (void)_deleteCalibratedData;
- (void)_generateInitialData;
- (void)_generateScreenAwayInitialData;
- (void)_generateSingleHandInitialData;
- (void)_generateStylusInitialData:(BOOL)a3;
- (void)_generateTableTopInitialData;
- (void)_getEightDotTableTopMiddleLeftDot:(CGPoint *)a3 middleRightDot:(CGPoint *)a4 bottomLeftDot:(CGPoint *)a5 bottomRightDot:(CGPoint *)a6 angleFromXAxisToLineOfHand:(double)a7 topLeftDot:(CGPoint)a8;
- (void)_getMiddleDotsForSixDotTableTopInitialDataForLeft:(CGPoint *)a3 right:(CGPoint *)a4 angleFromXAxisToLineOfHand:(double)a5 topLeftDot:(CGPoint)a6;
- (void)_loadAllDataFromFiles;
- (void)_orderedLeftDots:(id *)a3 rightDots:(id *)a4;
- (void)_removeInstanceOfDriftFromArray:(id)a3;
- (void)_repairFileProtectionClassOnPathIfNecessary:(id)a3;
- (void)_resetLearnedData;
- (void)calibrateWithDotNumberPositions:(id)a3;
- (void)removeDriftAddedByPattern:(id)a3;
- (void)updateDriftWithPattern:(id)a3;
@end

@implementation VOTBrailleGestureDataRepository

- (VOTBrailleGestureDataRepository)initWithTypingMode:(int64_t)a3 keyboardSize:(CGSize)a4 shouldUseEightDotBraille:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v12.receiver = self;
  v12.super_class = VOTBrailleGestureDataRepository;
  v9 = [(VOTBrailleGestureDataRepository *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_typingMode = a3;
    v9->_keyboardSize.width = width;
    v9->_keyboardSize.height = height;
    v9->_shouldUseEightDotBraille = a5;
    [(VOTBrailleGestureDataRepository *)v9 _loadAllDataFromFiles];
  }

  return v10;
}

- (id)halfPatternsForNumberOfDots:(unint64_t)a3 side:(unint64_t)a4
{
  v29 = +[NSMutableArray array];
  v7 = exp2(([(VOTBrailleGestureDataRepository *)self _totalNumberOfDots]>> 1));
  if (v7 > 0.0)
  {
    v8 = v7;
    v9 = 0;
    v30 = self;
    v22 = a3;
    while ((v9 & 1) + ((v9 & 2) >> 1) + ((v9 & 4) >> 2) + ((v9 & 8) >> 3) != a3)
    {
LABEL_23:
      if (v8 <= ++v9)
      {
        goto LABEL_24;
      }
    }

    if (a4)
    {
      v31 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
      [(VOTBrailleGestureDataRepository *)self _averageRightDrift];
    }

    else
    {
      v31 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
      [(VOTBrailleGestureDataRepository *)self _averageLeftDrift];
    }

    v12 = v10;
    v13 = v11;
    if (v9)
    {
      v26 = [v31 topDot];
      v14 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:v12 withDrift:v13];
      v23 = v14;
      if ((v9 & 2) != 0)
      {
LABEL_9:
        v27 = [v31 middleDot];
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
      v28 = [v31 bottomDot];
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
      [v31 fourthDot];
      v18 = v17 = a4;
      v19 = [(VOTBrailleGestureDataRepository *)v30 _adjustPointValue:v18 withDrift:v12, v13];
      v20 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v14 middleDot:v15 bottomDot:v16 fourthDot:v19];

      a4 = v17;
      a3 = v22;
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
      self = v30;
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

- (void)updateDriftWithPattern:(id)a3
{
  v4 = a3;
  v5 = [v4 leftDots];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 leftDots];
    v8 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
    [(VOTBrailleGestureDataRepository *)self _driftOfHalfPattern:v7 relativeToDotPositions:v8];
    v10 = v9;
    v12 = v11;

    v13 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    v14 = [v4 leftDots];
    [(VOTBrailleGestureDataRepository *)self _addInstanceOfDrift:v13 toArray:v14 forPattern:v10, v12];

    v15 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v35.x = v10;
      v35.y = v12;
      v16 = NSStringFromPoint(v35);
      v17 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
      v31 = 138543618;
      v32 = v16;
      v33 = 2114;
      v34 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Added left drift %{public}@.  Recorded drifts are now %{public}@", &v31, 0x16u);
    }
  }

  v18 = [v4 rightDots];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [v4 rightDots];
    v21 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
    [(VOTBrailleGestureDataRepository *)self _driftOfHalfPattern:v20 relativeToDotPositions:v21];
    v23 = v22;
    v25 = v24;

    v26 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    v27 = [v4 rightDots];
    [(VOTBrailleGestureDataRepository *)self _addInstanceOfDrift:v26 toArray:v27 forPattern:v23, v25];

    v28 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v36.x = v23;
      v36.y = v25;
      v29 = NSStringFromPoint(v36);
      v30 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
      v31 = 138543618;
      v32 = v29;
      v33 = 2114;
      v34 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Added right drift %{public}@.  Recorded drifts are now %{public}@", &v31, 0x16u);
    }
  }
}

- (void)removeDriftAddedByPattern:(id)a3
{
  v4 = a3;
  v5 = [v4 leftDots];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    [(VOTBrailleGestureDataRepository *)self _removeInstanceOfDriftFromArray:v7];

    v8 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed left drift.  Recorded drifts are now %{public}@", &v15, 0xCu);
    }
  }

  v10 = [v4 rightDots];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    [(VOTBrailleGestureDataRepository *)self _removeInstanceOfDriftFromArray:v12];

    v13 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removed right drift.  Recorded drifts are now %{public}@", &v15, 0xCu);
    }
  }
}

- (BOOL)saveDrift
{
  v3 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
  v4 = [v3 count];

  if (v4 >= 6)
  {
    v5 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    v6 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
    [v5 removeObjectsInRange:{0, objc_msgSend(v6, "count") - 5}];
  }

  v7 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
  v8 = [v7 count];

  if (v8 >= 6)
  {
    v9 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    v10 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
    [v9 removeObjectsInRange:{0, objc_msgSend(v10, "count") - 5}];
  }

  v20[0] = @"Left";
  v11 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
  v12 = [(VOTBrailleGestureDataRepository *)self _arrayOfDictionariesFromPointValues:v11];
  v20[1] = @"Right";
  v21[0] = v12;
  v13 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
  v14 = [(VOTBrailleGestureDataRepository *)self _arrayOfDictionariesFromPointValues:v13];
  v21[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  v16 = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
  v17 = [v15 writeToFile:v16 atomically:1];
  if (v17)
  {
    [(VOTBrailleGestureDataRepository *)self _repairFileProtectionClassOnPathIfNecessary:v16];
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

- (void)_orderedLeftDots:(id *)a3 rightDots:(id *)a4
{
  v7 = [(VOTBrailleGestureDataRepository *)self _shouldReverseDots];
  if (a3)
  {
    v8 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
    *a3 = [v8 dotArrayReversed:v7];
  }

  if (a4)
  {
    v9 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
    *a4 = [v9 dotArrayReversed:v7];
  }
}

- (void)_appendDots:(id)a3 toPositionsArray:(id)a4 withDrift:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = [(VOTBrailleGestureDataRepository *)self _adjustPointValue:*(*(&v16 + 1) + 8 * v14) withDrift:x, y];
        [v10 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (BOOL)_allDotsAreOnScreen:(id)a3 withDrift:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
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
  v10 = v7;
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

- (void)calibrateWithDotNumberPositions:(id)a3
{
  v4 = a3;
  v5 = [(VOTBrailleGestureDataRepository *)self _isTypingModeInputColumnsVariant];
  v6 = [v4 count];
  v7 = [(VOTBrailleGestureDataRepository *)self _totalNumberOfDots];
  if (v5)
  {
    if (v6 != (v7 >> 1))
    {
      _AXAssert();
    }

    if (self->_shouldUseEightDotBraille)
    {
      v8 = [v4 objectAtIndexedSubscript:3];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 objectAtIndexedSubscript:0];
    v10 = [v4 objectAtIndexedSubscript:1];
    v11 = [v4 objectAtIndexedSubscript:2];
    v12 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v9 middleDot:v10 bottomDot:v11 fourthDot:v8];
    [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v12];
  }

  else
  {
    if (v6 != v7)
    {
      _AXAssert();
    }

    if (self->_shouldUseEightDotBraille)
    {
      v8 = [v4 objectAtIndexedSubscript:6];
    }

    else
    {
      v8 = 0;
    }

    if (self->_shouldUseEightDotBraille)
    {
      v9 = [v4 objectAtIndexedSubscript:7];
    }

    else
    {
      v9 = 0;
    }

    v13 = [v4 objectAtIndexedSubscript:0];
    v14 = [v4 objectAtIndexedSubscript:1];
    v15 = [v4 objectAtIndexedSubscript:2];
    v16 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v13 middleDot:v14 bottomDot:v15 fourthDot:v8];
    [(VOTBrailleGestureDataRepository *)self setLeftDotPositions:v16];

    v10 = [v4 objectAtIndexedSubscript:3];
    v11 = [v4 objectAtIndexedSubscript:4];
    v12 = [v4 objectAtIndexedSubscript:5];
    v17 = [VOTBrailleGestureHalfPattern halfPatternWithTopDot:v10 middleDot:v11 bottomDot:v12 fourthDot:v9];
    [(VOTBrailleGestureDataRepository *)self setRightDotPositions:v17];
  }

  v18 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  v19 = [v18 dictionaryRepresentation];

  v20 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  v21 = [v20 dictionaryRepresentation];

  v25[0] = @"Left";
  v25[1] = @"Right";
  v26[0] = v19;
  v26[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v23 = [(VOTBrailleGestureDataRepository *)self _calibratedDotPositionsFilePath];
  if ([v22 writeToFile:v23 atomically:1])
  {
    [(VOTBrailleGestureDataRepository *)self _repairFileProtectionClassOnPathIfNecessary:v23];
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

- (CGPoint)_driftByAddingDisplacementOfPointValue:(id)a3 fromPointValue:(id)a4 toDrift:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    _AXAssert();
  }

  [v9 ax_CGPointValue];
  if (v8)
  {
    v12 = v10;
    v13 = v11;
    [v8 ax_CGPointValue];
    x = x + v14 - v12;
    y = y + v15 - v13;
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)_driftOfHalfPattern:(id)a3 relativeToDotPositions:(id)a4
{
  v6 = a3;
  v7 = a4;
  y = CGPointZero.y;
  v9 = [v6 topDot];
  v10 = [v7 topDot];
  [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:v9 fromPointValue:v10 toDrift:CGPointZero.x, y];
  v12 = v11;
  v14 = v13;

  v15 = [v6 middleDot];
  v16 = [v7 middleDot];
  [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:v15 fromPointValue:v16 toDrift:v12, v14];
  v18 = v17;
  v20 = v19;

  v21 = [v6 bottomDot];
  v22 = [v7 bottomDot];
  [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:v21 fromPointValue:v22 toDrift:v18, v20];
  v24 = v23;
  v26 = v25;

  if (self->_shouldUseEightDotBraille)
  {
    v27 = [v6 fourthDot];
    v28 = [v7 fourthDot];
    [(VOTBrailleGestureDataRepository *)self _driftByAddingDisplacementOfPointValue:v27 fromPointValue:v28 toDrift:v24, v26];
    v24 = v29;
    v26 = v30;
  }

  v31 = [v6 count];
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

- (void)_addInstanceOfDrift:(CGPoint)a3 toArray:(id)a4 forPattern:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    _AXAssert();
  }

  v11 = [NSValue ax_valueWithCGPoint:x, y];
  [v9 addObject:v11];

  [(VOTBrailleGestureDataRepository *)self _averageRecentDriftFromDrifts:v9];
  v13 = v12;
  v15 = v14;
  v16 = [v10 dotArrayReversed:{-[VOTBrailleGestureDataRepository _shouldReverseDots](self, "_shouldReverseDots")}];
  if (![(VOTBrailleGestureDataRepository *)self _allDotsAreOnScreen:v16 withDrift:v13, v15])
  {
    v17 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10012EBD8(v17, x, y);
    }

    [v9 removeLastObject];
  }
}

- (void)_removeInstanceOfDriftFromArray:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    _AXAssert();
  }

  if ([v3 count] < 6)
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
    [v3 removeLastObject];
  }
}

- (CGPoint)_averageRecentDriftFromDrifts:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4 <= 4)
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
    _AXAssert();
  }

  else
  {
    v5 = [v3 subarrayWithRange:{v4 - 5, 5}];
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
  v3 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
  [(VOTBrailleGestureDataRepository *)self _averageRecentDriftFromDrifts:v3];
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
  v3 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
  [(VOTBrailleGestureDataRepository *)self _averageRecentDriftFromDrifts:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)_adjustPointValue:(id)a3 withDrift:(CGPoint)a4
{
  if (a3)
  {
    y = a4.y;
    x = a4.x;
    [a3 ax_CGPointValue];
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
  v4 = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting recorded drifts", buf, 2u);
    }

    v7 = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
    v11 = 0;
    v8 = [v3 removeItemAtPath:v7 error:&v11];
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
  v4 = [(VOTBrailleGestureDataRepository *)self _calibratedDotPositionsFilePath];
  if ([v3 fileExistsAtPath:v4])
  {
    v5 = VOTLogBrailleGestures();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting calibrated dot positions", buf, 2u);
    }

    v9 = 0;
    v6 = [v3 removeItemAtPath:v4 error:&v9];
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
  v4 = [v3 lastObject];

  v14 = NSFileProtectionKey;
  v15 = NSFileProtectionNone;
  v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v6 = [v4 stringByAppendingPathComponent:@"Accessibility"];
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
    v4 = [(VOTBrailleGestureDataRepository *)self _gestureDataDirectory];
    v5 = [(VOTBrailleGestureDataRepository *)self _filenameSuffix];
    v6 = [NSString stringWithFormat:@"CalibratedDotPositions.%@", v5];
    v7 = [v4 stringByAppendingPathComponent:v6];
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
    v4 = [(VOTBrailleGestureDataRepository *)self _gestureDataDirectory];
    v5 = [(VOTBrailleGestureDataRepository *)self _filenameSuffix];
    v6 = [NSString stringWithFormat:@"RecordedDrifts.%@", v5];
    v7 = [v4 stringByAppendingPathComponent:v6];
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

- (void)_getEightDotTableTopMiddleLeftDot:(CGPoint *)a3 middleRightDot:(CGPoint *)a4 bottomLeftDot:(CGPoint *)a5 bottomRightDot:(CGPoint *)a6 angleFromXAxisToLineOfHand:(double)a7 topLeftDot:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  v16 = acos(0.958333333);
  v17 = __sincos_stret(v16 + a7);
  v18 = x + v17.__cosval * -120.0;
  v19 = y + v17.__sinval * -120.0;
  width = self->_keyboardSize.width;
  v21 = __sincos_stret(a7);
  if (a3)
  {
    a3->x = v18;
    a3->y = v19;
  }

  if (a4)
  {
    a4->x = width - v18;
    a4->y = v19;
  }

  v22 = v18 + v21.__cosval * -120.0;
  v23 = v19 + v21.__sinval * -120.0;
  if (a5)
  {
    a5->x = v22;
    a5->y = v23;
  }

  if (a6)
  {
    a6->x = width - v22;
    a6->y = v23;
  }
}

- (void)_getMiddleDotsForSixDotTableTopInitialDataForLeft:(CGPoint *)a3 right:(CGPoint *)a4 angleFromXAxisToLineOfHand:(double)a5 topLeftDot:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v12 = acos(0.958333333);
  v13 = __sincos_stret(v12 + a5);
  v14 = x + v13.__cosval * -120.0;
  v15 = y + v13.__sinval * -120.0;
  width = self->_keyboardSize.width;
  if (a3)
  {
    a3->x = v14;
    a3->y = v15;
  }

  if (a4)
  {
    a4->x = width - v14;
    a4->y = v15;
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

- (void)_generateStylusInitialData:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    v17 = v16;
  }

  else
  {
    v17 = v12;
  }

  if (v3)
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

- (id)_mutableArrayOfZeroPointValues:(unint64_t)a3
{
  v4 = [NSMutableArray arrayWithCapacity:?];
  if (a3)
  {
    y = CGPointZero.y;
    do
    {
      v6 = [NSValue ax_valueWithCGPoint:CGPointZero.x, y];
      [v4 addObject:v6];

      --a3;
    }

    while (a3);
  }

  return v4;
}

- (id)_mutableArrayOfPointValuesFromDictionaries:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (id)_arrayOfDictionariesFromPointValues:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (void)_repairFileProtectionClassOnPathIfNecessary:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v15 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v15];
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
    v11 = [v4 setAttributes:v10 ofItemAtPath:v3 error:&v14];
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

- (id)_loadDataFromFile:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = [NSDictionary dictionaryWithContentsOfFile:v3];
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
  v3 = [(VOTBrailleGestureDataRepository *)self _calibratedDotPositionsFilePath];
  v4 = [(VOTBrailleGestureDataRepository *)self _loadDataFromFile:v3];

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

  v10 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  v11 = [v10 topDot];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  v14 = [v13 middleDot];
  if (!v14)
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

  v15 = v14;
  v16 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  v17 = [v16 bottomDot];
  if (!v17)
  {
LABEL_16:

    goto LABEL_17;
  }

  v18 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  v19 = [v18 topDot];
  if (!v19)
  {
LABEL_15:

    goto LABEL_16;
  }

  v49 = v19;
  v20 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  v21 = [v20 middleDot];
  if (!v21)
  {

    goto LABEL_15;
  }

  v47 = v20;
  v48 = v21;
  v46 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
  v22 = [v46 bottomDot];
  if (v22)
  {
    if (self->_shouldUseEightDotBraille)
    {
      v45 = v22;
      v44 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
      v23 = [v44 fourthDot];
      if (v23)
      {
        if (self->_shouldUseEightDotBraille)
        {
          v43 = v23;
          v42 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];
          v24 = [v42 fourthDot];
          v25 = v24 == 0;

          v23 = v43;
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

      v22 = v45;
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
  v28 = [(VOTBrailleGestureDataRepository *)self leftDotPositions];
  if (!v28)
  {
    goto LABEL_29;
  }

  v29 = v28;
  if ([(VOTBrailleGestureDataRepository *)self _isTypingModeInputColumnsVariant])
  {

    goto LABEL_30;
  }

  v30 = [(VOTBrailleGestureDataRepository *)self rightDotPositions];

  if (!v30)
  {
LABEL_29:
    _AXAssert();
  }

LABEL_30:
  v31 = [(VOTBrailleGestureDataRepository *)self _recordedDriftsFilePath];
  v32 = [(VOTBrailleGestureDataRepository *)self _loadDataFromFile:v31];

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
      v38 = [(VOTBrailleGestureDataRepository *)self leftDrifts];
      v39 = [(VOTBrailleGestureDataRepository *)self rightDrifts];
      *buf = 138543618;
      v51 = v38;
      v52 = 2114;
      v53 = v39;
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