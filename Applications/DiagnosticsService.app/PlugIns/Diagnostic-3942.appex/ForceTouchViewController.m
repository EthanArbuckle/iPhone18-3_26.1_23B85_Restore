@interface ForceTouchViewController
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)checkForNextTargetWithTestCoordinateGridIndex:(id)a3;
- (void)cleanUp;
- (void)continueButtonAction;
- (void)dealloc;
- (void)endTestWithStatusCode:(id)a3;
- (void)noInputTimedOut;
- (void)partialInputTimedOut;
- (void)playCheckAnimationAtPoint:(CGPoint)a3;
- (void)presentRingWithTestCoordinateGridIndex:(unsigned int)a3;
- (void)retryButtonAction;
- (void)setupHIDForceTouchRecognizer;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)shuffleCoordinates;
- (void)start;
- (void)updateViewConstraints;
@end

@implementation ForceTouchViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v106 = a4;
  [(ForceTouchViewController *)self setInputs:v6];
  self->_shouldIgnoreForceEvents = 0;
  v7 = [(ForceTouchViewController *)self inputs];
  [v7 startingCircleRatio];
  v9 = v8;

  v10 = [(ForceTouchViewController *)self inputs];
  *&v11 = fminf(v9, 1.0);
  [v10 setStartingCircleRatio:v11];

  v12 = [(ForceTouchViewController *)self inputs];
  [v12 endingCircleRatio];
  v14 = v13;

  v15 = [(ForceTouchViewController *)self inputs];
  *&v16 = fminf(v14, 1.0);
  [v15 setEndingCircleRatio:v16];

  v17 = [(ForceTouchViewController *)self inputs];
  if ([v17 gridColumns] <= 0)
  {

    goto LABEL_15;
  }

  v18 = [(ForceTouchViewController *)self inputs];
  v19 = [v18 gridRows];

  if (v19 <= 0)
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

  v24 = [(ForceTouchViewController *)self view];
  v25 = [v24 window];
  v26 = [v25 windowScene];
  v27 = [v26 screen];
  [v27 bounds];
  v29 = v28;
  v31 = v30;

  v32 = [(ForceTouchViewController *)self inputs];
  v33 = [v32 gridColumns];

  v34 = [(ForceTouchViewController *)self inputs];
  v35 = [v34 gridRows];

  v36 = [(ForceTouchViewController *)self inputs];
  LODWORD(v27) = [v36 gridRows];

  if (v27 >= 1)
  {
    v37 = 0;
    v38 = v29 / v33;
    v39 = v31 / v35;
    v40 = 0.5;
    do
    {
      v41 = [(ForceTouchViewController *)self inputs];
      v42 = [v41 gridColumns];

      if (v42 >= 1)
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

          v48 = [(ForceTouchViewController *)self inputs];
          ++v43;
          LODWORD(v47) = [v48 gridColumns];
        }

        while (v43 < v47);
      }

      v49 = [(ForceTouchViewController *)self inputs];
      ++v37;
      v50 = [v49 gridRows];
    }

    while (v37 < v50);
  }

  v51 = [(ForceTouchViewController *)self inputs];
  v52 = [v51 testCoordinateColorsParameter];

  if (!v52)
  {
    self->_testCoordinatesCount = [(NSMutableArray *)self->_testCoordinates count];
    v60 = objc_alloc_init(NSMutableArray);
    while (1)
    {
      v61 = [(ForceTouchViewController *)self inputs];
      v62 = [v61 gridRows];
      v63 = [(ForceTouchViewController *)self inputs];
      v64 = [v63 gridColumns] * v62;

      if (v52 >= v64)
      {
        break;
      }

      v65 = [NSNumber numberWithInt:v52];
      [v60 addObject:v65];

      v52 = (v52 + 1);
    }

    v66 = [v60 copy];
    gridIndexes = self->_gridIndexes;
    self->_gridIndexes = v66;

LABEL_21:
    v68 = [(ForceTouchViewController *)self inputs];
    v69 = [v68 randomizeCoordinates];

    if (v69)
    {
      [(ForceTouchViewController *)self shuffleCoordinates];
    }

    v70 = objc_alloc_init(NSMutableArray);
    gridStatus = self->_gridStatus;
    self->_gridStatus = v70;

    for (i = 0; ; ++i)
    {
      v73 = [(ForceTouchViewController *)self inputs];
      v74 = [v73 gridRows];
      v75 = [(ForceTouchViewController *)self inputs];
      LOBYTE(v74) = i < ([v75 gridColumns] * v74);

      if ((v74 & 1) == 0)
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
    v83 = [v82 testAutomationEnabled];

    if (v83)
    {
      v122[0] = @"startingCircleRatio";
      v105 = [(ForceTouchViewController *)self inputs];
      [v105 startingCircleRatio];
      v104 = [NSNumber numberWithFloat:?];
      v123[0] = v104;
      v122[1] = @"endingCircleRatio";
      v103 = [(ForceTouchViewController *)self inputs];
      [v103 endingCircleRatio];
      v102 = [NSNumber numberWithFloat:?];
      v123[1] = v102;
      v122[2] = @"gridRows";
      v101 = [(ForceTouchViewController *)self inputs];
      v100 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v101 gridRows]);
      v123[2] = v100;
      v122[3] = @"gridColumns";
      v99 = [(ForceTouchViewController *)self inputs];
      v98 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v99 gridColumns]);
      v123[3] = v98;
      v122[4] = @"pressurePoints";
      v97 = [(ForceTouchViewController *)self inputs];
      v96 = [v97 pressurePoints];
      v123[4] = v96;
      v122[5] = @"forceTouchSensitivityText";
      v95 = [(ForceTouchViewController *)self inputs];
      v94 = [v95 forceTouchSensitivityText];
      v123[5] = v94;
      v122[6] = @"randomizeCoordinates";
      v93 = [(ForceTouchViewController *)self inputs];
      v84 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v93 randomizeCoordinates]);
      v123[6] = v84;
      v122[7] = @"hapticFeedback";
      v85 = [(ForceTouchViewController *)self inputs];
      v86 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v85 hapticFeedback]);
      v123[7] = v86;
      v122[8] = @"gridIndexes";
      v87 = [(ForceTouchViewController *)self gridIndexes];
      v123[8] = v87;
      v122[9] = @"noInputTimeout";
      v88 = [(ForceTouchViewController *)self inputs];
      [v88 noInputTimeout];
      v89 = [NSNumber numberWithDouble:?];
      v123[9] = v89;
      v122[10] = @"partialInputTimeout";
      v90 = [(ForceTouchViewController *)self inputs];
      [v90 partialInputTimeout];
      v91 = [NSNumber numberWithDouble:?];
      v123[10] = v91;
      v92 = [NSDictionary dictionaryWithObjects:v123 forKeys:v122 count:11];
      [DSTestAutomation postConfiguration:v92];
    }

    goto LABEL_16;
  }

  v53 = [(ForceTouchViewController *)self inputs];
  v54 = [v53 testCoordinateColorsParameter];
  self->_testCoordinatesCount = [v54 count];

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
  v55 = [(ForceTouchViewController *)self inputs];
  v56 = [v55 testCoordinateColorsParameter];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_100002E20;
  v107[3] = &unk_10000C398;
  objc_copyWeak(&v108, &location);
  v107[4] = v116;
  v107[5] = &v118;
  v107[6] = &v110;
  [v56 enumerateObjectsUsingBlock:v107];

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
  v3 = [(ForceTouchViewController *)self gridIndexes];
  v4 = [v3 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  v5 = [v4 intValue];

  v6 = [(ForceTouchViewController *)self forceTouchRingView];
  [v6 setTimedOut:1];

  v7 = [(ForceTouchViewController *)self forceTouchRingView];
  [(ForceTouchViewController *)self pressureRatio];
  [v7 updateCircleWithPressureRatio:?];

  v9 = [(ForceTouchViewController *)self testCoordinates];
  v8 = [v9 objectAtIndexedSubscript:v5];
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
    v3 = [(ForceTouchViewController *)self gridIndexes];
    v4 = [v3 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
    v5 = [v4 intValue];

    if (![(ForceTouchViewController *)self pressureReachedAfterTimeout])
    {
      [(ForceTouchViewController *)self setPressureReachedAfterTimeout:0];
      v6 = [(ForceTouchViewController *)self forceTouchRingView];
      [v6 setTimedOut:1];

      v7 = [(ForceTouchViewController *)self forceTouchRingView];
      [(ForceTouchViewController *)self pressureRatio];
      [v7 updateCircleWithPressureRatio:?];
    }

    v8 = [(ForceTouchViewController *)self forceTouchStarted];
    if (v8)
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

    v12 = [(ForceTouchViewController *)self undetectedPressurePoints];
    v13 = [(ForceTouchViewController *)self inputs];
    v14 = [v13 pressurePoints];
    v15 = [v14 objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
    [v12 addObject:v15];

    v17 = [(ForceTouchViewController *)self testCoordinates];
    v16 = [v17 objectAtIndexedSubscript:v5];
    [v16 CGPointValue];
    [(ForceTouchViewController *)self playCheckAnimationAtPoint:?];
  }
}

- (void)checkForNextTargetWithTestCoordinateGridIndex:(id)a3
{
  v4 = a3;
  v5 = [(ForceTouchViewController *)self check];
  [v5 removeFromSuperlayer];

  v6 = [v4 unsignedIntValue];
  v7 = [(ForceTouchViewController *)self pressureIndex];
  v8 = [(ForceTouchViewController *)self inputs];
  v9 = [v8 pressurePoints];
  v10 = [v9 count] - 1;

  if (v7 < v10)
  {
    v11 = [(ForceTouchViewController *)self testCoordinatesColor];
    v12 = v6;
    v13 = [v11 objectAtIndexedSubscript:v6];

    v14 = [(ForceTouchViewController *)self forceTouchRingView];
    [v14 setTimedOut:0];

    v15 = [v13 starting];
    v16 = [(ForceTouchViewController *)self forceTouchRingView];
    [v16 setRingStartingColor:v15];

    v17 = [v13 success];
    v18 = [(ForceTouchViewController *)self forceTouchRingView];
    [v18 setRingSuccessColor:v17];

    v19 = [v13 failed];
    v20 = [(ForceTouchViewController *)self forceTouchRingView];
    [v20 setRingFailedColor:v19];

    v21 = [(ForceTouchViewController *)self inputs];
    v22 = [v21 forceTouchSensitivityText];
    v23 = [(ForceTouchViewController *)self statusLabel];
    [v23 setText:v22];

    [(ForceTouchViewController *)self setNoInputTimerFired:0];
    [(ForceTouchViewController *)self setTimerInvalidated:0];
    [(ForceTouchViewController *)self setPressureRatio:0.0];
    [(ForceTouchViewController *)self setPressureIndex:[(ForceTouchViewController *)self pressureIndex]+ 1];
    v24 = [(ForceTouchViewController *)self gridStatus];
    [v24 setObject:&off_10000C9B0 atIndexedSubscript:v12];

    v25 = +[DSTestAutomation sharedInstance];
    LODWORD(v24) = [v25 testAutomationEnabled];

    if (v24)
    {
      v104[0] = @"x";
      v98 = [(ForceTouchViewController *)self forceTouchRingView];
      [v98 ringCenter];
      v96 = [NSNumber numberWithDouble:?];
      v105[0] = v96;
      v104[1] = @"y";
      v94 = [(ForceTouchViewController *)self forceTouchRingView];
      [v94 ringCenter];
      v27 = [NSNumber numberWithDouble:v26];
      v105[1] = v27;
      v104[2] = @"radius";
      v28 = [(ForceTouchViewController *)self view];
      [v28 frame];
      v30 = v29 * 0.5;
      v31 = [(ForceTouchViewController *)self inputs];
      v32 = v30 / [v31 gridColumns];
      v33 = [(ForceTouchViewController *)self inputs];
      [v33 startingCircleRatio];
      v35 = v34;

      v36 = [(ForceTouchViewController *)self inputs];
      [v36 endingCircleRatio];
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
      v41 = [(ForceTouchViewController *)self inputs];
      v42 = [v41 pressurePoints];
      v43 = [v42 objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
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

  v46 = [(ForceTouchViewController *)self undetectedPressurePoints];
  v47 = [v46 count];

  if (v47)
  {
    [(ForceTouchViewController *)self setPressureTargetMissed:1];
    v48 = [(ForceTouchViewController *)self inputs];
    v49 = v6 % [v48 gridColumns];

    v50 = [(ForceTouchViewController *)self inputs];
    v51 = v6 / [v50 gridColumns];

    v99 = [(ForceTouchViewController *)self allResults];
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
    v53 = [(ForceTouchViewController *)self forceTouchStarted];
    if (v53)
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
    v55 = [(ForceTouchViewController *)self forceTouchEnded];
    if (v55)
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
    v57 = [(ForceTouchViewController *)self undetectedPressurePoints];
    v103[5] = v57;
    v102[6] = @"detectedPressurePoints";
    v58 = [(ForceTouchViewController *)self detectedPressurePoints];
    v103[6] = v58;
    v59 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:7];
    [v99 addObject:v59];
  }

  v60 = [(ForceTouchViewController *)self testCoordinatesIndex];
  if ([(ForceTouchViewController *)self testCoordinatesCount]- 1 > v60)
  {
    v61 = [(ForceTouchViewController *)self forceTouchRingView];
    [v61 setTimedOut:0];

    v62 = [(ForceTouchViewController *)self inputs];
    v63 = [v62 forceTouchSensitivityText];
    v64 = [(ForceTouchViewController *)self statusLabel];
    [v64 setText:v63];

    v65 = [(ForceTouchViewController *)self undetectedPressurePoints];
    [v65 removeAllObjects];

    v66 = [(ForceTouchViewController *)self detectedPressurePoints];
    [v66 removeAllObjects];

    [(ForceTouchViewController *)self setForceTouchStarted:0];
    [(ForceTouchViewController *)self setForceTouchEnded:0];
    [(ForceTouchViewController *)self setNoInputTimerFired:0];
    [(ForceTouchViewController *)self setTimerInvalidated:0];
    [(ForceTouchViewController *)self setPressureRatio:0.0];
    [(ForceTouchViewController *)self setPressureIndex:0];
    [(ForceTouchViewController *)self setTestCoordinatesIndex:[(ForceTouchViewController *)self testCoordinatesIndex]+ 1];
    v67 = [(ForceTouchViewController *)self testCoordinatesColor];
    v68 = [(ForceTouchViewController *)self gridIndexes];
    v69 = [v68 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
    v13 = [v67 objectAtIndexedSubscript:{objc_msgSend(v69, "intValue")}];

    v70 = [v13 starting];
    v71 = [(ForceTouchViewController *)self forceTouchRingView];
    [v71 setRingStartingColor:v70];

    v72 = [v13 success];
    v73 = [(ForceTouchViewController *)self forceTouchRingView];
    [v73 setRingSuccessColor:v72];

    v74 = [v13 failed];
    v75 = [(ForceTouchViewController *)self forceTouchRingView];
    [v75 setRingFailedColor:v74];

    v76 = +[DSTestAutomation sharedInstance];
    LODWORD(v75) = [v76 testAutomationEnabled];

    if (v75)
    {
      v100[0] = @"x";
      v98 = [(ForceTouchViewController *)self forceTouchRingView];
      [v98 ringCenter];
      v96 = [NSNumber numberWithDouble:?];
      v101[0] = v96;
      v100[1] = @"y";
      v94 = [(ForceTouchViewController *)self forceTouchRingView];
      [v94 ringCenter];
      v27 = [NSNumber numberWithDouble:v77];
      v101[1] = v27;
      v100[2] = @"radius";
      v28 = [(ForceTouchViewController *)self view];
      [v28 frame];
      v79 = v78 * 0.5;
      v31 = [(ForceTouchViewController *)self inputs];
      v80 = v79 / [v31 gridColumns];
      v81 = [(ForceTouchViewController *)self inputs];
      [v81 startingCircleRatio];
      v83 = v82;

      v84 = [(ForceTouchViewController *)self inputs];
      [v84 endingCircleRatio];
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
      v41 = [(ForceTouchViewController *)self inputs];
      v42 = [v41 pressurePoints];
      v43 = [v42 objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
      v101[3] = v43;
      v44 = v101;
      v45 = v100;
      goto LABEL_21;
    }

LABEL_22:
    v89 = [(ForceTouchViewController *)self inputs];
    [v89 noInputTimeout];
    v90 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
    [(ForceTouchViewController *)self setTimeoutTimer:v90];

    v91 = [(ForceTouchViewController *)self gridIndexes];
    v92 = [v91 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
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

- (void)playCheckAnimationAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(ForceTouchViewController *)self inputs];
  [v6 startingCircleRatio];
  v8 = (1.0 / v7);

  v9 = [(ForceTouchViewController *)self view];
  v41 = [v9 layer];

  v10 = +[UIBezierPath bezierPath];
  [v10 moveToPoint:{x + -21.0 / v8, y + (4 / v8)}];
  [v10 addLineToPoint:{x + -8.0 / v8, y + (16 / v8)}];
  [v10 addLineToPoint:{x + 24.5 / v8, y - (15 / v8)}];
  v11 = objc_alloc_init(CAShapeLayer);
  [(ForceTouchViewController *)self setCheck:v11];

  v12 = [(ForceTouchViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(ForceTouchViewController *)self check];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [v10 CGPath];
  v23 = [(ForceTouchViewController *)self check];
  [v23 setPath:v22];

  v24 = +[UIColor whiteColor];
  v25 = [v24 CGColor];
  v26 = [(ForceTouchViewController *)self check];
  [v26 setStrokeColor:v25];

  v27 = +[UIColor clearColor];
  v28 = [v27 CGColor];
  v29 = [(ForceTouchViewController *)self check];
  [v29 setFillColor:v28];

  v30 = [(ForceTouchViewController *)self check];
  [v30 setLineWidth:5.0];

  v31 = [(ForceTouchViewController *)self check];
  [v31 setStrokeStart:0.0];

  v32 = [(ForceTouchViewController *)self check];
  [v32 setStrokeEnd:0.0];

  v33 = [(ForceTouchViewController *)self check];
  [v33 setLineCap:kCALineCapRound];

  v34 = [(ForceTouchViewController *)self check];
  [v34 setLineJoin:kCALineJoinRound];

  v35 = [(ForceTouchViewController *)self check];
  [v41 addSublayer:v35];

  v36 = [(ForceTouchViewController *)self check];
  [v36 setStrokeEnd:1.0];

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
  v40 = [(ForceTouchViewController *)self check];
  [v40 addAnimation:v37 forKey:@"strokeEndAnimation"];
}

- (void)retryButtonAction
{
  v3 = [(ForceTouchViewController *)self inputs];
  [v3 noInputTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"noInputTimedOut" selector:0 userInfo:0 repeats:?];
  [(ForceTouchViewController *)self setTimeoutTimer:v4];

  v5 = [(ForceTouchViewController *)self forceTouchRingView];
  [v5 setTimedOut:0];

  v7 = [(ForceTouchViewController *)self gridIndexes];
  v6 = [v7 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  -[ForceTouchViewController presentRingWithTestCoordinateGridIndex:](self, "presentRingWithTestCoordinateGridIndex:", [v6 intValue]);
}

- (void)continueButtonAction
{
  v3 = [(ForceTouchViewController *)self forceTouchStarted];
  if (v3)
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
    v8 = [(ForceTouchViewController *)self inputs];
    v9 = [v8 pressurePoints];
    v10 = [v9 count];

    if (i >= v10)
    {
      break;
    }

    v11 = [(ForceTouchViewController *)self undetectedPressurePoints];
    v12 = [(ForceTouchViewController *)self inputs];
    v13 = [v12 pressurePoints];
    v14 = [v13 objectAtIndexedSubscript:i];
    [v11 addObject:v14];
  }

  v15 = [(ForceTouchViewController *)self inputs];
  v16 = [v15 pressurePoints];
  -[ForceTouchViewController setPressureIndex:](self, "setPressureIndex:", [v16 count]);

  v18 = [(ForceTouchViewController *)self gridIndexes];
  v17 = [v18 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  [(ForceTouchViewController *)self checkForNextTargetWithTestCoordinateGridIndex:v17];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    if ([(ForceTouchViewController *)self noInputTimerFired])
    {
      [(ForceTouchViewController *)self setNoInputTimerFired:0];
      v5 = [(ForceTouchViewController *)self check];
      [v5 removeFromSuperlayer];

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
      v16 = [(ForceTouchViewController *)self gridIndexes];
      v15 = [v16 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
      [(ForceTouchViewController *)self performSelector:"checkForNextTargetWithTestCoordinateGridIndex:" withObject:v15 afterDelay:0.5];
    }
  }
}

- (void)start
{
  [(ForceTouchViewController *)self setupView];
  v3 = +[DSTestAutomation sharedInstance];
  v4 = [v3 testAutomationEnabled];

  if (v4)
  {
    v29[0] = @"x";
    v28 = [(ForceTouchViewController *)self forceTouchRingView];
    [v28 ringCenter];
    v27 = [NSNumber numberWithDouble:?];
    v30[0] = v27;
    v29[1] = @"y";
    v5 = [(ForceTouchViewController *)self forceTouchRingView];
    [v5 ringCenter];
    v7 = [NSNumber numberWithDouble:v6];
    v30[1] = v7;
    v29[2] = @"radius";
    v8 = [(ForceTouchViewController *)self view];
    [v8 frame];
    v10 = v9 * 0.5;
    v11 = [(ForceTouchViewController *)self inputs];
    v12 = v10 / [v11 gridColumns];
    v13 = [(ForceTouchViewController *)self inputs];
    [v13 startingCircleRatio];
    v15 = v14;

    v16 = [(ForceTouchViewController *)self inputs];
    [v16 endingCircleRatio];
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
    v21 = [(ForceTouchViewController *)self inputs];
    v22 = [v21 pressurePoints];
    v23 = [v22 objectAtIndexedSubscript:{-[ForceTouchViewController pressureIndex](self, "pressureIndex")}];
    v30[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    [DSTestAutomation postInteractiveTestEvent:@"ForceTouchTargetAppeared" info:v24];
  }

  v25 = [(ForceTouchViewController *)self inputs];
  [v25 noInputTimeout];
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
  v3 = [(ForceTouchViewController *)self gridIndexes];
  v4 = [v3 count];

  v5 = [(ForceTouchViewController *)self gridIndexes];
  v8 = [v5 mutableCopy];

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
  v4 = [(ForceTouchViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [UILabel alloc];
  v6 = [(ForceTouchViewController *)self view];
  [v6 frame];
  v7 = [v5 initWithFrame:?];
  [(ForceTouchViewController *)self setStatusLabel:v7];

  v8 = [(ForceTouchViewController *)self statusLabel];
  [v8 setOpaque:0];

  v9 = [(ForceTouchViewController *)self statusLabel];
  [v9 setContentMode:7];

  v10 = [(ForceTouchViewController *)self statusLabel];
  LODWORD(v11) = 1132134400;
  [v10 setContentHuggingPriority:0 forAxis:v11];

  v12 = [(ForceTouchViewController *)self statusLabel];
  LODWORD(v13) = 1132134400;
  [v12 setContentHuggingPriority:1 forAxis:v13];

  v14 = [(ForceTouchViewController *)self statusLabel];
  [v14 setTextAlignment:1];

  v15 = [(ForceTouchViewController *)self statusLabel];
  [v15 setLineBreakMode:4];

  v16 = [(ForceTouchViewController *)self statusLabel];
  [v16 setNumberOfLines:1];

  v17 = [UIFont systemFontOfSize:20.0];
  v18 = [(ForceTouchViewController *)self statusLabel];
  [v18 setFont:v17];

  v19 = +[UIColor blackColor];
  v20 = [(ForceTouchViewController *)self statusLabel];
  [v20 setTextColor:v19];

  v21 = [(ForceTouchViewController *)self inputs];
  v22 = [v21 forceTouchSensitivityText];
  v23 = [(ForceTouchViewController *)self statusLabel];
  [v23 setText:v22];

  v24 = [(ForceTouchViewController *)self statusLabel];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(ForceTouchViewController *)self view];
  [v25 setNeedsUpdateConstraints];

  v26 = [(ForceTouchViewController *)self view];
  v27 = [(ForceTouchViewController *)self statusLabel];
  [v26 addSubview:v27];

  v28 = [(ForceTouchViewController *)self gridIndexes];
  v29 = [v28 objectAtIndexedSubscript:{-[ForceTouchViewController testCoordinatesIndex](self, "testCoordinatesIndex")}];
  LODWORD(v23) = [v29 intValue];

  v30 = [(ForceTouchViewController *)self testCoordinatesColor];
  v70 = [v30 objectAtIndexedSubscript:v23];

  v31 = [ForceTouchRingView alloc];
  v69 = [(ForceTouchViewController *)self view];
  v68 = [v69 window];
  v67 = [v68 windowScene];
  v66 = [v67 screen];
  [v66 bounds];
  v64 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v65 = [(ForceTouchViewController *)self testCoordinates];
  v39 = [v65 objectAtIndexedSubscript:v23];
  [v39 CGPointValue];
  v41 = v40;
  v43 = v42;
  v44 = [(ForceTouchViewController *)self view];
  [v44 frame];
  v46 = v45 * 0.5;
  v47 = [(ForceTouchViewController *)self inputs];
  v48 = v46 / [v47 gridColumns];
  v49 = [(ForceTouchViewController *)self inputs];
  [v49 startingCircleRatio];
  v51 = v50;
  v52 = [(ForceTouchViewController *)self inputs];
  [v52 endingCircleRatio];
  LODWORD(v46) = v53;
  v54 = [v70 starting];
  v55 = [v70 success];
  v56 = [v70 failed];
  LODWORD(v63) = LODWORD(v46);
  *&v57 = v48;
  LODWORD(v58) = v51;
  v59 = [(ForceTouchRingView *)v31 initWithFrame:v54 ringCenter:v55 startingCircleRadius:v56 startingCircleRatio:v64 endingCircleRatio:v34 ringStartingColor:v36 ringSuccessColor:v38 ringFailedColor:v41, v43, v57, v58, v63];
  [(ForceTouchViewController *)self setForceTouchRingView:v59];

  v60 = [(ForceTouchViewController *)self forceTouchRingView];
  [v60 setTimedOut:0];

  v61 = [(ForceTouchViewController *)self view];
  v62 = [(ForceTouchViewController *)self forceTouchRingView];
  [v61 addSubview:v62];
}

- (void)updateViewConstraints
{
  v14.receiver = self;
  v14.super_class = ForceTouchViewController;
  [(ForceTouchViewController *)&v14 updateViewConstraints];
  v3 = [(ForceTouchViewController *)self view];
  v4 = [(ForceTouchViewController *)self view];
  v5 = [(ForceTouchViewController *)self statusLabel];
  v6 = [NSLayoutConstraint constraintWithItem:v4 attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addConstraint:v6];

  v7 = [(ForceTouchViewController *)self view];
  v8 = [(ForceTouchViewController *)self statusLabel];
  v9 = [(ForceTouchViewController *)self view];
  v10 = [v9 safeAreaLayoutGuide];
  v11 = [(ForceTouchViewController *)self view];
  [v11 frame];
  v13 = [NSLayoutConstraint constraintWithItem:v8 attribute:4 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:floor(v12 * 0.34)];
  [v7 addConstraint:v13];
}

- (void)presentRingWithTestCoordinateGridIndex:(unsigned int)a3
{
  v5 = [(ForceTouchViewController *)self testCoordinates];
  v6 = [v5 objectAtIndexedSubscript:a3];
  [v6 CGPointValue];
  v8 = v7;
  v10 = v9;
  v11 = [(ForceTouchViewController *)self forceTouchRingView];
  [v11 setRingCenter:{v8, v10}];

  v12 = [(ForceTouchViewController *)self forceTouchRingView];
  [(ForceTouchViewController *)self pressureRatio];
  [v12 updateCircleWithPressureRatio:?];
}

- (void)cleanUp
{
  v3 = [(ForceTouchViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(ForceTouchViewController *)self timeoutTimer];
    [v4 invalidate];

    [(ForceTouchViewController *)self setTimeoutTimer:0];
  }
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  [(ForceTouchViewController *)self cleanUp];
  v5 = [(ForceTouchViewController *)self result];
  [v5 setStatusCode:v4];

  v6 = [(ForceTouchViewController *)self result];
  v7 = [v6 statusCode];
  if ([v7 isEqualToNumber:&off_10000CA58])
  {

LABEL_4:
    v11 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000661C(v11);
    }

    v12 = [(ForceTouchViewController *)self result];
    [v12 setData:&__NSDictionary0__struct];

    [(ForceTouchViewController *)self setFinished:1];
    return;
  }

  v8 = [(ForceTouchViewController *)self result];
  v9 = [v8 statusCode];
  v10 = [v9 isEqualToNumber:&off_10000CA70];

  if (v10)
  {
    goto LABEL_4;
  }

  v13 = [(ForceTouchViewController *)self allResults];

  if (v13)
  {
    v17 = @"failedPresses";
    v14 = [(ForceTouchViewController *)self allResults];
    v18 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v16 = [(ForceTouchViewController *)self result];
    [v16 setData:v15];
  }

  else
  {
    v14 = [(ForceTouchViewController *)self result];
    [v14 setData:&__NSDictionary0__struct];
  }

  [(ForceTouchViewController *)self performSelector:"finishTest" withObject:0 afterDelay:1.0];
}

@end