@interface ForceTouchViewController
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)checkForNextTargetWithTestCoordinateGridIndex:(id)index;
- (void)cleanUp;
- (void)continueButtonAction;
- (void)dealloc;
- (void)endTestWithStatusCode:(id)code;
- (void)noInputTimedOut;
- (void)partialInputTimedOut;
- (void)playCheckAnimationAtPoint:(CGPoint)point;
- (void)presentRingWithTestCoordinateGridIndex:(unsigned int)index;
- (void)retryButtonAction;
- (void)setupHIDForceTouchRecognizer;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)shuffleCoordinates;
- (void)start;
- (void)updateViewConstraints;
@end

@implementation ForceTouchViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  responderCopy = responder;
  [(ForceTouchViewController *)self setInputs:inputsCopy];
  self->_shouldIgnoreForceEvents = 0;
  inputs = [(ForceTouchViewController *)self inputs];
  [inputs startingCircleRatio];
  v9 = v8;

  inputs2 = [(ForceTouchViewController *)self inputs];
  *&v11 = fminf(v9, 1.0);
  [inputs2 setStartingCircleRatio:v11];

  inputs3 = [(ForceTouchViewController *)self inputs];
  [inputs3 endingCircleRatio];
  v14 = v13;

  inputs4 = [(ForceTouchViewController *)self inputs];
  *&v16 = fminf(v14, 1.0);
  [inputs4 setEndingCircleRatio:v16];

  inputs5 = [(ForceTouchViewController *)self inputs];
  if ([inputs5 gridColumns] <= 0)
  {

    goto LABEL_15;
  }

  inputs6 = [(ForceTouchViewController *)self inputs];
  gridRows = [inputs6 gridRows];

  if (gridRows <= 0)
  {
LABEL_15:
    [(ForceTouchViewController *)self endTestWithStatusCode:&off_10000C950];
    goto LABEL_16;
  }

  v20 = objc_alloc_init(NSMutableArray);
  testCoordinates = self->_testCoordinates;
  self->_testCoordinates = v20;

  v22 = objc_alloc_init(NSMutableArray);
  testCoordinatesColor = self->_testCoordinatesColor;
  self->_testCoordinatesColor = v22;

  view = [(ForceTouchViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v29 = v28;
  v31 = v30;

  inputs7 = [(ForceTouchViewController *)self inputs];
  gridColumns = [inputs7 gridColumns];

  inputs8 = [(ForceTouchViewController *)self inputs];
  gridRows2 = [inputs8 gridRows];

  inputs9 = [(ForceTouchViewController *)self inputs];
  LODWORD(screen) = [inputs9 gridRows];

  if (screen >= 1)
  {
    v37 = 0;
    v38 = v29 / gridColumns;
    v39 = v31 / gridRows2;
    v40 = 0.5;
    do
    {
      inputs10 = [(ForceTouchViewController *)self inputs];
      gridColumns2 = [inputs10 gridColumns];

      if (gridColumns2 >= 1)
      {
        v43 = 0;
        do
        {
          v44 = self->_testCoordinates;
          v45 = [NSValue valueWithCGPoint:v38 * 0.5 + v43 * v38, v39 * 0.5 + v37 * v39];
          [(NSMutableArray *)v44 addObject:v45];

          v46 = self->_testCoordinatesColor;
          v47 = objc_opt_new();
          [(NSMutableArray *)v46 addObject:v47];

          inputs11 = [(ForceTouchViewController *)self inputs];
          ++v43;
          LODWORD(v47) = [inputs11 gridColumns];
        }

        while (v43 < v47);
      }

      inputs12 = [(ForceTouchViewController *)self inputs];
      ++v37;
      gridRows3 = [inputs12 gridRows];
    }

    while (v37 < gridRows3);
  }

  inputs13 = [(ForceTouchViewController *)self inputs];
  testCoordinateColorsParameter = [inputs13 testCoordinateColorsParameter];

  if (!testCoordinateColorsParameter)
  {
    self->_testCoordinatesCount = [(NSMutableArray *)self->_testCoordinates count];
    v60 = objc_alloc_init(NSMutableArray);
    while (1)
    {
      inputs14 = [(ForceTouchViewController *)self inputs];
      gridRows4 = [inputs14 gridRows];
      inputs15 = [(ForceTouchViewController *)self inputs];
      v64 = [inputs15 gridColumns] * gridRows4;

      if (testCoordinateColorsParameter >= v64)
      {
        break;
      }

      v65 = [NSNumber numberWithInt:testCoordinateColorsParameter];
      [v60 addObject:v65];

      testCoordinateColorsParameter = (testCoordinateColorsParameter + 1);
    }

    v66 = [v60 copy];
    gridIndexes = self->_gridIndexes;
    self->_gridIndexes = v66;

LABEL_21:
    inputs16 = [(ForceTouchViewController *)self inputs];
    randomizeCoordinates = [inputs16 randomizeCoordinates];

    if (randomizeCoordinates)
    {
      [(ForceTouchViewController *)self shuffleCoordinates];
    }

    v70 = objc_alloc_init(NSMutableArray);
    gridStatus = self->_gridStatus;
    self->_gridStatus = v70;

    for (i = 0; ; ++i)
    {
      inputs17 = [(ForceTouchViewController *)self inputs];
      gridRows5 = [inputs17 gridRows];
      inputs18 = [(ForceTouchViewController *)self inputs];
      LOBYTE(gridRows5) = i < ([inputs18 gridColumns] * gridRows5);

      if ((gridRows5 & 1) == 0)
      {
        break;
      }

      [(NSMutableArray *)self->_gridStatus addObject:&off_10000C9B0];
    }

    self->_pressureIndex = 0;
    self->_pressureRatio = 0.0;
    self->_testCoordinatesIndex = 0;
    self->_pressureTargetMissed = 0;
    self->_touchEventRecognized = 0;
    self->_timerInvalidated = 0;
    self->_pressureReachedAfterTimeout = 0;
    self->_noInputTimerFired = 0;
    self->_timeoutTimerFireDelayed = 0;
    v76 = objc_alloc_init(NSMutableArray);
    allResults = self->_allResults;
    self->_allResults = v76;

    v78 = objc_alloc_init(NSMutableArray);
    undetectedPressurePoints = self->_undetectedPressurePoints;
    self->_undetectedPressurePoints = v78;

    v80 = objc_alloc_init(NSMutableArray);
    detectedPressurePoints = self->_detectedPressurePoints;
    self->_detectedPressurePoints = v80;

    [(ForceTouchViewController *)self setupHIDForceTouchRecognizer];
    v82 = +[DSTestAutomation sharedInstance];
    testAutomationEnabled = [v82 testAutomationEnabled];

    if (testAutomationEnabled)
    {
      v122[0] = @"startingCircleRatio";
      inputs19 = [(ForceTouchViewController *)self inputs];
      [inputs19 startingCircleRatio];
      v104 = [NSNumber numberWithFloat:?];
      v123[0] = v104;
      v122[1] = @"endingCircleRatio";
      inputs20 = [(ForceTouchViewController *)self inputs];
      [inputs20 endingCircleRatio];
      v102 = [NSNumber numberWithFloat:?];
      v123[1] = v102;
      v122[2] = @"gridRows";
      inputs21 = [(ForceTouchViewController *)self inputs];
      v100 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [inputs21 gridRows]);
      v123[2] = v100;
      v122[3] = @"gridColumns";
      inputs22 = [(ForceTouchViewController *)self inputs];
      v98 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [inputs22 gridColumns]);
      v123[3] = v98;
      v122[4] = @"pressurePoints";
      inputs23 = [(ForceTouchViewController *)self inputs];
      pressurePoints = [inputs23 pressurePoints];
      v123[4] = pressurePoints;
      v122[5] = @"forceTouchSensitivityText";
      inputs24 = [(ForceTouchViewController *)self inputs];
      forceTouchSensitivityText = [inputs24 forceTouchSensitivityText];
      v123[5] = forceTouchSensitivityText;
      v122[6] = @"randomizeCoordinates";
      inputs25 = [(ForceTouchViewController *)self inputs];
      v84 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs25 randomizeCoordinates]);
      v123[6] = v84;
      v122[7] = @"hapticFeedback";
      inputs26 = [(ForceTouchViewController *)self inputs];
      v86 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [inputs26 hapticFeedback]);
      v123[7] = v86;
      v122[8] = @"gridIndexes";
      gridIndexes = [(ForceTouchViewController *)self gridIndexes];
      v123[8] = gridIndexes;
      v122[9] = @"noInputTimeout";
      inputs27 = [(ForceTouchViewController *)self inputs];
      [inputs27 noInputTimeout];
      v89 = [NSNumber numberWithDouble:?];
      v123[9] = v89;
      v122[10] = @"partialInputTimeout";
      inputs28 = [(ForceTouchViewController *)self inputs];
      [inputs28 partialInputTimeout];
      v91 = [NSNumber numberWithDouble:?];
      v123[10] = v91;
      v92 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:11];
      [DSTestAutomation postConfiguration:v92];
    }

    goto LABEL_16;
  }

  inputs29 = [(ForceTouchViewController *)self inputs];
  testCoordinateColorsParameter2 = [inputs29 testCoordinateColorsParameter];
  self->_testCoordinatesCount = [testCoordinateColorsParameter2 count];

  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = 1;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x2020000000;
  v117 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = sub_100002E08;
  v114 = sub_100002E18;
  v115 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  inputs30 = [(ForceTouchViewController *)self inputs];
  testCoordinateColorsParameter3 = [inputs30 testCoordinateColorsParameter];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_100002E20;
  v107[3] = &unk_10000C398;
  objc_copyWeak(&v108, &location);
  v107[4] = v116;
  v107[5] = &v118;
  v107[6] = &v110;
  [testCoordinateColorsParameter3 enumerateObjectsUsingBlock:v107];

  v57 = *(v119 + 24);
  if (v57)
  {
    v58 = [v111[5] copy];
    v59 = self->_gridIndexes;
    self->_gridIndexes = v58;
  }

  objc_destroyWeak(&v108);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(v116, 8);
  _Block_object_dispose(&v118, 8);
  if (v57)
  {
    goto LABEL_21;
  }

LABEL_16:
}

- (void)noInputTimedOut
{
  [(ForceTouchViewController *)self setNoInputTimerFired:1];
  gridIndexes = [(ForceTouchViewController *)self gridIndexes];
  v4 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  intValue = [v4 intValue];

  forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
  [forceTouchRingView setTimedOut:1];

  forceTouchRingView2 = [(ForceTouchViewController *)self forceTouchRingView];
  [(ForceTouchViewController *)self pressureRatio];
  [forceTouchRingView2 updateCircleWithPressureRatio:?];

  testCoordinates = [(ForceTouchViewController *)self testCoordinates];
  v8 = [testCoordinates objectAtIndexedSubscript:intValue];
  [v8 CGPointValue];
  [(ForceTouchViewController *)self playCheckAnimationAtPoint:?];
}

- (void)partialInputTimedOut
{
  if ([(ForceTouchViewController *)self touchEventRecognized])
  {

    [(ForceTouchViewController *)self setTimeoutTimerFireDelayed:1];
  }

  else
  {
    gridIndexes = [(ForceTouchViewController *)self gridIndexes];
    v4 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
    intValue = [v4 intValue];

    if (![(ForceTouchViewController *)self pressureReachedAfterTimeout])
    {
      [(ForceTouchViewController *)self setPressureReachedAfterTimeout:0];
      forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
      [forceTouchRingView setTimedOut:1];

      forceTouchRingView2 = [(ForceTouchViewController *)self forceTouchRingView];
      [(ForceTouchViewController *)self pressureRatio];
      [forceTouchRingView2 updateCircleWithPressureRatio:?];
    }

    forceTouchStarted = [(ForceTouchViewController *)self forceTouchStarted];
    if (forceTouchStarted)
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSince1970];
      v11 = [NSNumber numberWithUnsignedLongLong:(v10 * 1000.0)];
      [(ForceTouchViewController *)self setForceTouchEnded:v11];
    }

    else
    {
      [(ForceTouchViewController *)self setForceTouchEnded:0];
    }

    undetectedPressurePoints = [(ForceTouchViewController *)self undetectedPressurePoints];
    inputs = [(ForceTouchViewController *)self inputs];
    pressurePoints = [inputs pressurePoints];
    v15 = [pressurePoints objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
    [undetectedPressurePoints addObject:v15];

    testCoordinates = [(ForceTouchViewController *)self testCoordinates];
    v16 = [testCoordinates objectAtIndexedSubscript:intValue];
    [v16 CGPointValue];
    [(ForceTouchViewController *)self playCheckAnimationAtPoint:?];
  }
}

- (void)checkForNextTargetWithTestCoordinateGridIndex:(id)index
{
  indexCopy = index;
  check = [(ForceTouchViewController *)self check];
  [check removeFromSuperlayer];

  unsignedIntValue = [indexCopy unsignedIntValue];
  pressureIndex = [(ForceTouchViewController *)self pressureIndex];
  inputs = [(ForceTouchViewController *)self inputs];
  pressurePoints = [inputs pressurePoints];
  v10 = [pressurePoints count] - 1;

  if (pressureIndex < v10)
  {
    testCoordinatesColor = [(ForceTouchViewController *)self testCoordinatesColor];
    v12 = unsignedIntValue;
    v13 = [testCoordinatesColor objectAtIndexedSubscript:unsignedIntValue];

    forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView setTimedOut:0];

    starting = [v13 starting];
    forceTouchRingView2 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView2 setRingStartingColor:starting];

    success = [v13 success];
    forceTouchRingView3 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView3 setRingSuccessColor:success];

    failed = [v13 failed];
    forceTouchRingView4 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView4 setRingFailedColor:failed];

    inputs2 = [(ForceTouchViewController *)self inputs];
    forceTouchSensitivityText = [inputs2 forceTouchSensitivityText];
    statusLabel = [(ForceTouchViewController *)self statusLabel];
    [statusLabel setText:forceTouchSensitivityText];

    [(ForceTouchViewController *)self setNoInputTimerFired:0];
    [(ForceTouchViewController *)self setTimerInvalidated:0];
    [(ForceTouchViewController *)self setPressureRatio:0.0];
    [(ForceTouchViewController *)self setPressureIndex:[(ForceTouchViewController *)self pressureIndex]+ 1];
    gridStatus = [(ForceTouchViewController *)self gridStatus];
    [gridStatus setObject:&off_10000C9B0 atIndexedSubscript:v12];

    v25 = +[DSTestAutomation sharedInstance];
    LODWORD(gridStatus) = [v25 testAutomationEnabled];

    if (gridStatus)
    {
      v104[0] = @"x";
      forceTouchRingView5 = [(ForceTouchViewController *)self forceTouchRingView];
      [forceTouchRingView5 ringCenter];
      v96 = [NSNumber numberWithDouble:?];
      v105[0] = v96;
      v104[1] = @"y";
      forceTouchRingView6 = [(ForceTouchViewController *)self forceTouchRingView];
      [forceTouchRingView6 ringCenter];
      v27 = [NSNumber numberWithDouble:v26];
      v105[1] = v27;
      v104[2] = @"radius";
      view = [(ForceTouchViewController *)self view];
      [view frame];
      v30 = v29 * 0.5;
      inputs3 = [(ForceTouchViewController *)self inputs];
      v32 = v30 / [inputs3 gridColumns];
      inputs4 = [(ForceTouchViewController *)self inputs];
      [inputs4 startingCircleRatio];
      v35 = v34;

      inputs5 = [(ForceTouchViewController *)self inputs];
      [inputs5 endingCircleRatio];
      v38 = v37;

      if (v35 >= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = v35;
      }

      v40 = [NSNumber numberWithDouble:v32 * v39];
      v105[2] = v40;
      v104[3] = @"pressure";
      inputs6 = [(ForceTouchViewController *)self inputs];
      pressurePoints2 = [inputs6 pressurePoints];
      v43 = [pressurePoints2 objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
      v105[3] = v43;
      v44 = v105;
      v45 = v104;
LABEL_21:
      v88 = [NSDictionary dictionaryWithObjects:v44 forKeys:v45 count:4];
      [DSTestAutomation postInteractiveTestEvent:@"ForceTouchTargetAppeared" info:v88];

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  undetectedPressurePoints = [(ForceTouchViewController *)self undetectedPressurePoints];
  v47 = [undetectedPressurePoints count];

  if (v47)
  {
    [(ForceTouchViewController *)self setPressureTargetMissed:1];
    inputs7 = [(ForceTouchViewController *)self inputs];
    v49 = unsignedIntValue % [inputs7 gridColumns];

    inputs8 = [(ForceTouchViewController *)self inputs];
    v51 = unsignedIntValue / [inputs8 gridColumns];

    allResults = [(ForceTouchViewController *)self allResults];
    v102[0] = @"x";
    v97 = [NSNumber numberWithUnsignedInt:v49];
    v103[0] = v97;
    v102[1] = @"y";
    v95 = [NSNumber numberWithUnsignedInt:v51];
    v103[1] = v95;
    v102[2] = @"maximumPressure";
    [(ForceTouchViewController *)self maximumPressure];
    v52 = [NSNumber numberWithFloat:?];
    v103[2] = v52;
    v102[3] = @"forceTouchStarted";
    forceTouchStarted = [(ForceTouchViewController *)self forceTouchStarted];
    if (forceTouchStarted)
    {
      [(ForceTouchViewController *)self forceTouchStarted];
    }

    else
    {
      +[NSNull null];
    }
    v54 = ;
    v103[3] = v54;
    v102[4] = @"forceTouchEnded";
    forceTouchEnded = [(ForceTouchViewController *)self forceTouchEnded];
    if (forceTouchEnded)
    {
      [(ForceTouchViewController *)self forceTouchEnded];
    }

    else
    {
      +[NSNull null];
    }
    v56 = ;
    v103[4] = v56;
    v102[5] = @"undetectedPressurePoints";
    undetectedPressurePoints2 = [(ForceTouchViewController *)self undetectedPressurePoints];
    v103[5] = undetectedPressurePoints2;
    v102[6] = @"detectedPressurePoints";
    detectedPressurePoints = [(ForceTouchViewController *)self detectedPressurePoints];
    v103[6] = detectedPressurePoints;
    v59 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:7];
    [allResults addObject:v59];
  }

  testCoordinatesIndex = [(ForceTouchViewController *)self testCoordinatesIndex];
  if ([(ForceTouchViewController *)self testCoordinatesCount]- 1 > testCoordinatesIndex)
  {
    forceTouchRingView7 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView7 setTimedOut:0];

    inputs9 = [(ForceTouchViewController *)self inputs];
    forceTouchSensitivityText2 = [inputs9 forceTouchSensitivityText];
    statusLabel2 = [(ForceTouchViewController *)self statusLabel];
    [statusLabel2 setText:forceTouchSensitivityText2];

    undetectedPressurePoints3 = [(ForceTouchViewController *)self undetectedPressurePoints];
    [undetectedPressurePoints3 removeAllObjects];

    detectedPressurePoints2 = [(ForceTouchViewController *)self detectedPressurePoints];
    [detectedPressurePoints2 removeAllObjects];

    [(ForceTouchViewController *)self setForceTouchStarted:0];
    [(ForceTouchViewController *)self setForceTouchEnded:0];
    [(ForceTouchViewController *)self setNoInputTimerFired:0];
    [(ForceTouchViewController *)self setTimerInvalidated:0];
    [(ForceTouchViewController *)self setPressureRatio:0.0];
    [(ForceTouchViewController *)self setPressureIndex:0];
    [(ForceTouchViewController *)self setTestCoordinatesIndex:[(ForceTouchViewController *)self testCoordinatesIndex]+ 1];
    testCoordinatesColor2 = [(ForceTouchViewController *)self testCoordinatesColor];
    gridIndexes = [(ForceTouchViewController *)self gridIndexes];
    v69 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
    v13 = [testCoordinatesColor2 objectAtIndexedSubscript:{objc_msgSend(v69, "intValue")}];

    starting2 = [v13 starting];
    forceTouchRingView8 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView8 setRingStartingColor:starting2];

    success2 = [v13 success];
    forceTouchRingView9 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView9 setRingSuccessColor:success2];

    failed2 = [v13 failed];
    forceTouchRingView10 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView10 setRingFailedColor:failed2];

    v76 = +[DSTestAutomation sharedInstance];
    LODWORD(forceTouchRingView10) = [v76 testAutomationEnabled];

    if (forceTouchRingView10)
    {
      v100[0] = @"x";
      forceTouchRingView5 = [(ForceTouchViewController *)self forceTouchRingView];
      [forceTouchRingView5 ringCenter];
      v96 = [NSNumber numberWithDouble:?];
      v101[0] = v96;
      v100[1] = @"y";
      forceTouchRingView6 = [(ForceTouchViewController *)self forceTouchRingView];
      [forceTouchRingView6 ringCenter];
      v27 = [NSNumber numberWithDouble:v77];
      v101[1] = v27;
      v100[2] = @"radius";
      view = [(ForceTouchViewController *)self view];
      [view frame];
      v79 = v78 * 0.5;
      inputs3 = [(ForceTouchViewController *)self inputs];
      v80 = v79 / [inputs3 gridColumns];
      inputs10 = [(ForceTouchViewController *)self inputs];
      [inputs10 startingCircleRatio];
      v83 = v82;

      inputs11 = [(ForceTouchViewController *)self inputs];
      [inputs11 endingCircleRatio];
      v86 = v85;

      if (v83 >= v86)
      {
        v87 = v86;
      }

      else
      {
        v87 = v83;
      }

      v40 = [NSNumber numberWithDouble:v80 * v87];
      v101[2] = v40;
      v100[3] = @"pressure";
      inputs6 = [(ForceTouchViewController *)self inputs];
      pressurePoints2 = [inputs6 pressurePoints];
      v43 = [pressurePoints2 objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
      v101[3] = v43;
      v44 = v101;
      v45 = v100;
      goto LABEL_21;
    }

LABEL_22:
    inputs12 = [(ForceTouchViewController *)self inputs];
    [inputs12 noInputTimeout];
    v90 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
    [(ForceTouchViewController *)self setTimeoutTimer:v90];

    gridIndexes2 = [(ForceTouchViewController *)self gridIndexes];
    v92 = [gridIndexes2 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
    -[ForceTouchViewController presentRingWithTestCoordinateGridIndex:](self, "presentRingWithTestCoordinateGridIndex:", [v92 intValue]);

    return;
  }

  if ([(ForceTouchViewController *)self pressureTargetMissed])
  {
    v93 = &off_10000C9C8;
  }

  else
  {
    v93 = &off_10000C9E0;
  }

  [(ForceTouchViewController *)self endTestWithStatusCode:v93];
}

- (void)playCheckAnimationAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  inputs = [(ForceTouchViewController *)self inputs];
  [inputs startingCircleRatio];
  v8 = (1.0 / v7);

  view = [(ForceTouchViewController *)self view];
  layer = [view layer];

  v10 = +[UIBezierPath bezierPath];
  [v10 moveToPoint:{x + -21.0 / v8, y + (4 / v8)}];
  [v10 addLineToPoint:{x + -8.0 / v8, y + (16 / v8)}];
  [v10 addLineToPoint:{x + 24.5 / v8, y - (15 / v8)}];
  v11 = objc_alloc_init(CAShapeLayer);
  [(ForceTouchViewController *)self setCheck:v11];

  view2 = [(ForceTouchViewController *)self view];
  [view2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  check = [(ForceTouchViewController *)self check];
  [check setFrame:{v14, v16, v18, v20}];

  cGPath = [v10 CGPath];
  check2 = [(ForceTouchViewController *)self check];
  [check2 setPath:cGPath];

  v24 = +[UIColor whiteColor];
  cGColor = [v24 CGColor];
  check3 = [(ForceTouchViewController *)self check];
  [check3 setStrokeColor:cGColor];

  v27 = +[UIColor clearColor];
  cGColor2 = [v27 CGColor];
  check4 = [(ForceTouchViewController *)self check];
  [check4 setFillColor:cGColor2];

  check5 = [(ForceTouchViewController *)self check];
  [check5 setLineWidth:5.0];

  check6 = [(ForceTouchViewController *)self check];
  [check6 setStrokeStart:0.0];

  check7 = [(ForceTouchViewController *)self check];
  [check7 setStrokeEnd:0.0];

  check8 = [(ForceTouchViewController *)self check];
  [check8 setLineCap:kCALineCapRound];

  check9 = [(ForceTouchViewController *)self check];
  [check9 setLineJoin:kCALineJoinRound];

  check10 = [(ForceTouchViewController *)self check];
  [layer addSublayer:check10];

  check11 = [(ForceTouchViewController *)self check];
  [check11 setStrokeEnd:1.0];

  v37 = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
  [v37 setDuration:0.375];
  [v37 setFillMode:kCAFillModeBoth];
  [v37 setBeginTime:CACurrentMediaTime() + 0.150000006];
  [v37 setFromValue:&off_10000C900];
  [v37 setToValue:&off_10000C910];
  [v37 setDelegate:self];
  v38 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v37 setTimingFunction:v38];

  LODWORD(v39) = 1.0;
  [v37 setRepeatCount:v39];
  check12 = [(ForceTouchViewController *)self check];
  [check12 addAnimation:v37 forKey:@"strokeEndAnimation"];
}

- (void)retryButtonAction
{
  inputs = [(ForceTouchViewController *)self inputs];
  [inputs noInputTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(ForceTouchViewController *)self setTimeoutTimer:v4];

  forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
  [forceTouchRingView setTimedOut:0];

  gridIndexes = [(ForceTouchViewController *)self gridIndexes];
  v6 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  -[ForceTouchViewController presentRingWithTestCoordinateGridIndex:](self, "presentRingWithTestCoordinateGridIndex:", [v6 intValue]);
}

- (void)continueButtonAction
{
  forceTouchStarted = [(ForceTouchViewController *)self forceTouchStarted];
  if (forceTouchStarted)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSince1970];
    v6 = [NSNumber numberWithUnsignedLongLong:(v5 * 1000.0)];
    [(ForceTouchViewController *)self setForceTouchEnded:v6];
  }

  else
  {
    [(ForceTouchViewController *)self setForceTouchEnded:0];
  }

  for (i = [(ForceTouchViewController *)self pressureIndex]; ; ++i)
  {
    inputs = [(ForceTouchViewController *)self inputs];
    pressurePoints = [inputs pressurePoints];
    v10 = [pressurePoints count];

    if (i >= v10)
    {
      break;
    }

    undetectedPressurePoints = [(ForceTouchViewController *)self undetectedPressurePoints];
    inputs2 = [(ForceTouchViewController *)self inputs];
    pressurePoints2 = [inputs2 pressurePoints];
    v14 = [pressurePoints2 objectAtIndexedSubscript:i];
    [undetectedPressurePoints addObject:v14];
  }

  inputs3 = [(ForceTouchViewController *)self inputs];
  pressurePoints3 = [inputs3 pressurePoints];
  -[ForceTouchViewController setPressureIndex:](self, "setPressureIndex:", [pressurePoints3 count]);

  gridIndexes = [(ForceTouchViewController *)self gridIndexes];
  v17 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  [(ForceTouchViewController *)self checkForNextTargetWithTestCoordinateGridIndex:v17];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    if ([(ForceTouchViewController *)self noInputTimerFired])
    {
      [(ForceTouchViewController *)self setNoInputTimerFired:0];
      check = [(ForceTouchViewController *)self check];
      [check removeFromSuperlayer];

      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"NO_INPUT_DETECTED" value:&stru_10000C828 table:0];
      v8 = [UIAlertController alertControllerWithTitle:0 message:v7 preferredStyle:1];

      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"RETRY" value:&stru_10000C828 table:0];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10000494C;
      v18[3] = &unk_10000C3C0;
      v18[4] = self;
      v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v18];
      [v8 addAction:v11];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"CONTINUE" value:&stru_10000C828 table:0];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100004954;
      v17[3] = &unk_10000C3C0;
      v17[4] = self;
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v17];
      [v8 addAction:v14];

      [(ForceTouchViewController *)self presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      gridIndexes = [(ForceTouchViewController *)self gridIndexes];
      v15 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
      [(ForceTouchViewController *)self performSelector:"checkForNextTargetWithTestCoordinateGridIndex:" withObject:v15 afterDelay:0.5];
    }
  }
}

- (void)start
{
  [(ForceTouchViewController *)self setupView];
  v3 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v3 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    v29[0] = @"x";
    forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView ringCenter];
    v27 = [NSNumber numberWithDouble:?];
    v30[0] = v27;
    v29[1] = @"y";
    forceTouchRingView2 = [(ForceTouchViewController *)self forceTouchRingView];
    [forceTouchRingView2 ringCenter];
    v7 = [NSNumber numberWithDouble:v6];
    v30[1] = v7;
    v29[2] = @"radius";
    view = [(ForceTouchViewController *)self view];
    [view frame];
    v10 = v9 * 0.5;
    inputs = [(ForceTouchViewController *)self inputs];
    v12 = v10 / [inputs gridColumns];
    inputs2 = [(ForceTouchViewController *)self inputs];
    [inputs2 startingCircleRatio];
    v15 = v14;

    inputs3 = [(ForceTouchViewController *)self inputs];
    [inputs3 endingCircleRatio];
    v18 = v17;

    if (v15 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    v20 = [NSNumber numberWithDouble:v12 * v19];
    v30[2] = v20;
    v29[3] = @"pressure";
    inputs4 = [(ForceTouchViewController *)self inputs];
    pressurePoints = [inputs4 pressurePoints];
    v23 = [pressurePoints objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
    v30[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    [DSTestAutomation postInteractiveTestEvent:@"ForceTouchTargetAppeared" info:v24];
  }

  inputs5 = [(ForceTouchViewController *)self inputs];
  [inputs5 noInputTimeout];
  v26 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(ForceTouchViewController *)self setTimeoutTimer:v26];
}

- (void)dealloc
{
  if (self->_builtInDevice)
  {
    MTUnregisterPathCallbackWithRefcon();
    builtInDevice = self->_builtInDevice;
    if (MTDeviceIsRunning())
    {
      v4 = self->_builtInDevice;
      MTDeviceStop();
    }

    CFRelease(self->_builtInDevice);
  }

  v5.receiver = self;
  v5.super_class = ForceTouchViewController;
  [(ForceTouchViewController *)&v5 dealloc];
}

- (void)shuffleCoordinates
{
  gridIndexes = [(ForceTouchViewController *)self gridIndexes];
  v4 = [gridIndexes count];

  gridIndexes2 = [(ForceTouchViewController *)self gridIndexes];
  v8 = [gridIndexes2 mutableCopy];

  if (v4)
  {
    v6 = 0;
    do
    {
      [v8 exchangeObjectAtIndex:v6 withObjectAtIndex:v6 + arc4random_uniform(v4)];
      ++v6;
      --v4;
    }

    while (v4);
  }

  v7 = [v8 copy];
  [(ForceTouchViewController *)self setGridIndexes:v7];
}

- (void)setupHIDForceTouchRecognizer
{
  List = MTDeviceCreateList();
  if ([List count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [List objectAtIndex:v4];
      ParserType = MTDeviceGetParserType();
      IsBuiltIn = MTDeviceIsBuiltIn();
      MTDeviceGetDeviceID();
      MTDeviceGetSensorSurfaceDimensions();
      MTDeviceGetTransportMethod();
      if (ParserType <= 0x3E7)
      {
        if (IsBuiltIn)
        {
          MTRegisterPathCallbackWithRefcon();
          if (!MTDeviceStart())
          {
            MultitouchRunLoopSource = MTDeviceCreateMultitouchRunLoopSource();
            if (MultitouchRunLoopSource)
            {
              break;
            }
          }
        }
      }

      if ([List count] <= ++v4)
      {
        goto LABEL_8;
      }
    }

    v9 = MultitouchRunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v9, kCFRunLoopCommonModes);
    CFRelease(v9);
    self->_builtInDevice = v5;
    CFRetain(v5);
  }

LABEL_8:
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  view = [(ForceTouchViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [UILabel alloc];
  view2 = [(ForceTouchViewController *)self view];
  [view2 frame];
  v7 = [v5 initWithFrame:?];
  [(ForceTouchViewController *)self setStatusLabel:v7];

  statusLabel = [(ForceTouchViewController *)self statusLabel];
  [statusLabel setOpaque:0];

  statusLabel2 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel2 setContentMode:7];

  statusLabel3 = [(ForceTouchViewController *)self statusLabel];
  LODWORD(v11) = 1132134400;
  [statusLabel3 setContentHuggingPriority:0 forAxis:v11];

  statusLabel4 = [(ForceTouchViewController *)self statusLabel];
  LODWORD(v13) = 1132134400;
  [statusLabel4 setContentHuggingPriority:1 forAxis:v13];

  statusLabel5 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel5 setTextAlignment:1];

  statusLabel6 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel6 setLineBreakMode:4];

  statusLabel7 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel7 setNumberOfLines:1];

  v17 = [UIFont systemFontOfSize:20.0];
  statusLabel8 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel8 setFont:v17];

  v19 = +[UIColor blackColor];
  statusLabel9 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel9 setTextColor:v19];

  inputs = [(ForceTouchViewController *)self inputs];
  forceTouchSensitivityText = [inputs forceTouchSensitivityText];
  statusLabel10 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel10 setText:forceTouchSensitivityText];

  statusLabel11 = [(ForceTouchViewController *)self statusLabel];
  [statusLabel11 setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(ForceTouchViewController *)self view];
  [view3 setNeedsUpdateConstraints];

  view4 = [(ForceTouchViewController *)self view];
  statusLabel12 = [(ForceTouchViewController *)self statusLabel];
  [view4 addSubview:statusLabel12];

  gridIndexes = [(ForceTouchViewController *)self gridIndexes];
  v29 = [gridIndexes objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  LODWORD(statusLabel10) = [v29 intValue];

  testCoordinatesColor = [(ForceTouchViewController *)self testCoordinatesColor];
  v70 = [testCoordinatesColor objectAtIndexedSubscript:statusLabel10];

  v31 = [ForceTouchRingView alloc];
  view5 = [(ForceTouchViewController *)self view];
  window = [view5 window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v64 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  testCoordinates = [(ForceTouchViewController *)self testCoordinates];
  v39 = [testCoordinates objectAtIndexedSubscript:statusLabel10];
  [v39 CGPointValue];
  v41 = v40;
  v43 = v42;
  view6 = [(ForceTouchViewController *)self view];
  [view6 frame];
  v46 = v45 * 0.5;
  inputs2 = [(ForceTouchViewController *)self inputs];
  v48 = v46 / [inputs2 gridColumns];
  inputs3 = [(ForceTouchViewController *)self inputs];
  [inputs3 startingCircleRatio];
  v51 = v50;
  inputs4 = [(ForceTouchViewController *)self inputs];
  [inputs4 endingCircleRatio];
  LODWORD(v46) = v53;
  starting = [v70 starting];
  success = [v70 success];
  failed = [v70 failed];
  LODWORD(v63) = LODWORD(v46);
  *&v57 = v48;
  LODWORD(v58) = v51;
  v59 = [(ForceTouchRingView *)v31 initWithFrame:starting ringCenter:success startingCircleRadius:failed startingCircleRatio:v64 endingCircleRatio:v34 ringStartingColor:v36 ringSuccessColor:v38 ringFailedColor:v41, v43, v57, v58, v63];
  [(ForceTouchViewController *)self setForceTouchRingView:v59];

  forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
  [forceTouchRingView setTimedOut:0];

  view7 = [(ForceTouchViewController *)self view];
  forceTouchRingView2 = [(ForceTouchViewController *)self forceTouchRingView];
  [view7 addSubview:forceTouchRingView2];
}

- (void)updateViewConstraints
{
  v14.receiver = self;
  v14.super_class = ForceTouchViewController;
  [(ForceTouchViewController *)&v14 updateViewConstraints];
  view = [(ForceTouchViewController *)self view];
  view2 = [(ForceTouchViewController *)self view];
  statusLabel = [(ForceTouchViewController *)self statusLabel];
  v6 = [NSLayoutConstraint constraintWithItem:view2 attribute:9 relatedBy:0 toItem:statusLabel attribute:9 multiplier:1.0 constant:0.0];
  [view addConstraint:v6];

  view3 = [(ForceTouchViewController *)self view];
  statusLabel2 = [(ForceTouchViewController *)self statusLabel];
  view4 = [(ForceTouchViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  view5 = [(ForceTouchViewController *)self view];
  [view5 frame];
  v13 = [NSLayoutConstraint constraintWithItem:statusLabel2 attribute:4 relatedBy:0 toItem:safeAreaLayoutGuide attribute:4 multiplier:1.0 constant:floor(v12 * 0.34)];
  [view3 addConstraint:v13];
}

- (void)presentRingWithTestCoordinateGridIndex:(unsigned int)index
{
  testCoordinates = [(ForceTouchViewController *)self testCoordinates];
  v6 = [testCoordinates objectAtIndexedSubscript:index];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;
  forceTouchRingView = [(ForceTouchViewController *)self forceTouchRingView];
  [forceTouchRingView setRingCenter:{v8, v10}];

  forceTouchRingView2 = [(ForceTouchViewController *)self forceTouchRingView];
  [(ForceTouchViewController *)self pressureRatio];
  [forceTouchRingView2 updateCircleWithPressureRatio:?];
}

- (void)cleanUp
{
  timeoutTimer = [(ForceTouchViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(ForceTouchViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(ForceTouchViewController *)self setTimeoutTimer:0];
  }
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  [(ForceTouchViewController *)self cleanUp];
  result = [(ForceTouchViewController *)self result];
  [result setStatusCode:codeCopy];

  result2 = [(ForceTouchViewController *)self result];
  statusCode = [result2 statusCode];
  if ([statusCode isEqualToNumber:&off_10000CA58])
  {

LABEL_4:
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000661C(v11);
    }

    result3 = [(ForceTouchViewController *)self result];
    [result3 setData:&__NSDictionary0__struct];

    [(ForceTouchViewController *)self setFinished:1];
    return;
  }

  result4 = [(ForceTouchViewController *)self result];
  statusCode2 = [result4 statusCode];
  v10 = [statusCode2 isEqualToNumber:&off_10000CA70];

  if (v10)
  {
    goto LABEL_4;
  }

  allResults = [(ForceTouchViewController *)self allResults];

  if (allResults)
  {
    v17 = @"failedPresses";
    allResults2 = [(ForceTouchViewController *)self allResults];
    v18 = allResults2;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    result5 = [(ForceTouchViewController *)self result];
    [result5 setData:v15];
  }

  else
  {
    allResults2 = [(ForceTouchViewController *)self result];
    [allResults2 setData:&__NSDictionary0__struct];
  }

  [(ForceTouchViewController *)self performSelector:"finishTest" withObject:0 afterDelay:1.0];
}

@end