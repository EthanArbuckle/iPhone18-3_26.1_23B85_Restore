@interface InteractiveAccelerometerViewController
- (BOOL)_updateForRotation:(double)rotation shiftAngle:(double)angle;
- (BOOL)determineTestingOrientation;
- (BOOL)isDebuggingEnabled;
- (double)average:(id)average key:(id)key size:(unint64_t)size;
- (void)_updateOffsetLabel:(double)label;
- (void)addNotStationaryData;
- (void)addStationaryData;
- (void)checkForNextOrientation;
- (void)checkWithinOffset;
- (void)cleanUp;
- (void)didReceiveMemoryWarning;
- (void)endTestWithStatusCode:(id)code;
- (void)handleHIDEvent:(__IOHIDEvent *)event;
- (void)heldOrientationStationary;
- (void)notStationaryTimedOut;
- (void)setZeroRangeAndDegreesShiftRange;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)startAnimations;
- (void)stopAnimations;
- (void)updateColors;
- (void)updateDisplay:(id)display;
- (void)updateTicsForOrientation:(int64_t)orientation;
- (void)viewWillLayoutSubviews;
@end

@implementation InteractiveAccelerometerViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(InteractiveAccelerometerViewController *)self setInputs:inputs, responder];
  [(InteractiveAccelerometerViewController *)self setTestingOrientation:0];
  [(InteractiveAccelerometerViewController *)self setOrientationsIndex:0];
  [(InteractiveAccelerometerViewController *)self setOrientationMissed:0];
  [(InteractiveAccelerometerViewController *)self setSamplingRawData:0];
  v5 = objc_alloc_init(NSDictionary);
  [(InteractiveAccelerometerViewController *)self setAveragedRawData:v5];

  v6 = objc_alloc_init(NSDictionary);
  [(InteractiveAccelerometerViewController *)self setNotStationaryData:v6];

  v7 = objc_alloc_init(NSDictionary);
  [(InteractiveAccelerometerViewController *)self setStationaryData:v7];

  v8 = objc_alloc_init(NSMutableArray);
  [(InteractiveAccelerometerViewController *)self setMotionManagerData:v8];

  v9 = objc_alloc_init(NSMutableArray);
  [(InteractiveAccelerometerViewController *)self setRawComponentData:v9];

  v10 = objc_alloc_init(NSMutableArray);
  [(InteractiveAccelerometerViewController *)self setCopiedRawComponentData:v10];

  v11 = objc_alloc_init(NSMutableArray);
  [(InteractiveAccelerometerViewController *)self setCopiedMotionManagerData:v11];

  v12 = objc_alloc_init(NSMutableArray);
  [(InteractiveAccelerometerViewController *)self setAllResults:v12];

  [(InteractiveAccelerometerViewController *)self setZeroRangeAndDegreesShiftRange];
  v13 = objc_alloc_init(CMMotionManager);
  [(InteractiveAccelerometerViewController *)self setManager:v13];

  manager = [(InteractiveAccelerometerViewController *)self manager];
  [manager setShowsDeviceMovementDisplay:1];

  manager2 = [(InteractiveAccelerometerViewController *)self manager];
  [manager2 setDeviceMotionUpdateInterval:0.00999999978];

  manager3 = [(InteractiveAccelerometerViewController *)self manager];
  [manager3 startDeviceMotionUpdatesUsingReferenceFrame:1];

  [(InteractiveAccelerometerViewController *)self setOrientation:1];
  [(InteractiveAccelerometerViewController *)self setPreviousOrientation:1];
  [(InteractiveAccelerometerViewController *)self setLastLevelChange:1.79769313e308];
  [(InteractiveAccelerometerViewController *)self setLastDisplayDegrees:0x7FFFFFFFFFFFFFFFLL];
  [(InteractiveAccelerometerViewController *)self setPreviousRotation:1.79769313e308];
  [(InteractiveAccelerometerViewController *)self setPreviousShift:1.79769313e308];
  view = [(InteractiveAccelerometerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v22 = v21;
  v49 = xmmword_10000BA28;
  v50 = -798153473;
  v23 = MGIsDeviceOfType();
  v24 = 0.850000024;
  if (!v23)
  {
    v24 = 1.0;
  }

  UIFontForLanguage = CTFontCreateUIFontForLanguage(0x68u, v24 * round(v22 * 81.0 / 320.0), 0);

  fontDescriptor = [(__CTFont *)UIFontForLanguage fontDescriptor];
  CFRelease(UIFontForLanguage);
  v47 = UIFontDescriptorFeatureSettingsAttribute;
  v44[0] = UIFontFeatureTypeIdentifierKey;
  v44[1] = UIFontFeatureSelectorIdentifierKey;
  v45[0] = &off_100010BE8;
  v45[1] = &off_100010C00;
  v27 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
  v46[0] = v27;
  v42[0] = UIFontFeatureTypeIdentifierKey;
  v42[1] = UIFontFeatureSelectorIdentifierKey;
  v43[0] = &off_100010C18;
  v43[1] = &off_100010C30;
  v28 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  v46[1] = v28;
  v29 = [NSArray arrayWithObjects:v46 count:2];
  v48 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v31 = [fontDescriptor fontDescriptorByAddingAttributes:v30];

  [(InteractiveAccelerometerViewController *)self setFontDescriptor:v31];
  v32 = +[DSTestAutomation sharedInstance];
  LODWORD(v28) = [v32 testAutomationEnabled];

  if (v28)
  {
    inputs = [(InteractiveAccelerometerViewController *)self inputs];
    parameters = [inputs parameters];
    v41[0] = parameters;
    v40[1] = @"predicates";
    inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
    predicates = [inputs2 predicates];
    v41[1] = predicates;
    v40[2] = @"specifications";
    inputs3 = [(InteractiveAccelerometerViewController *)self inputs];
    specifications = [inputs3 specifications];
    v41[2] = specifications;
    v39 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
    [DSTestAutomation postConfiguration:v39];
  }
}

- (void)start
{
  [(InteractiveAccelerometerViewController *)self setDebuggingEnabled:[(InteractiveAccelerometerViewController *)self isDebuggingEnabled]];
  v3 = +[DAHIDEventMonitor sharedInstance];
  [v3 setDelegate:self];

  inputs = [(InteractiveAccelerometerViewController *)self inputs];
  v5 = [inputs componentSensor] != 0;

  v6 = +[DAHIDEventMonitor sharedInstance];
  v7 = [NSNumber numberWithUnsignedInteger:v5];
  v8 = [NSSet setWithObject:v7];
  v9 = [v6 startMonitoringWithHIDEvents:v8];

  if (v9)
  {
    v10 = +[DAHIDEventMonitor sharedInstance];
    inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
    v12 = [v10 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{objc_msgSend(inputs2, "outputDataRate")), @"ReportInterval", v5}];

    if (v12)
    {
      if ([(InteractiveAccelerometerViewController *)self determineTestingOrientation])
      {
        [(InteractiveAccelerometerViewController *)self setupView];
        [(InteractiveAccelerometerViewController *)self startAnimations];
        v13 = +[NSDate date];
        [(InteractiveAccelerometerViewController *)self setStartDate:v13];

        v14 = +[DSTestAutomation sharedInstance];
        testAutomationEnabled = [v14 testAutomationEnabled];

        if (testAutomationEnabled)
        {
          inputs3 = [(InteractiveAccelerometerViewController *)self inputs];
          if ([inputs3 componentSensor])
          {
            v17 = @"ListenForGyroPosition";
          }

          else
          {
            v17 = @"ListenForAccelerometerPosition";
          }

          v23 = @"deviceOrientation";
          v18 = [NSNumber numberWithInteger:[(InteractiveAccelerometerViewController *)self testingOrientation]];
          v24 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          [DSTestAutomation postInteractiveTestEvent:v17 info:v19];
        }

        inputs4 = [(InteractiveAccelerometerViewController *)self inputs];
        [inputs4 notStationaryTimeout];
        v21 = [NSTimer scheduledTimerWithTimeInterval:self target:"notStationaryTimedOut" selector:0 userInfo:0 repeats:?];
        [(InteractiveAccelerometerViewController *)self setTimeoutTimer:v21];

        return;
      }

      v22 = &off_100010C60;
    }

    else
    {
      v22 = &off_100010C78;
    }
  }

  else
  {
    v22 = &off_100010C48;
  }

  [(InteractiveAccelerometerViewController *)self endTestWithStatusCode:v22];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = InteractiveAccelerometerViewController;
  [(InteractiveAccelerometerViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setZeroRangeAndDegreesShiftRange
{
  inputs = [(InteractiveAccelerometerViewController *)self inputs];
  componentOrientationSpecifications = [inputs componentOrientationSpecifications];
  inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter = [inputs2 orientationsParameter];
  v7 = [orientationsParameter objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v14 = [componentOrientationSpecifications objectForKeyedSubscript:v7];

  [v14 zeroRangeThreshold];
  v9 = v8;
  inputs3 = [(InteractiveAccelerometerViewController *)self inputs];
  [inputs3 setZeroRange:v9];

  [v14 degreesShiftRangeThreshold];
  v12 = v11;
  inputs4 = [(InteractiveAccelerometerViewController *)self inputs];
  [inputs4 setDegreesShiftRange:v12];
}

- (void)viewWillLayoutSubviews
{
  v58.receiver = self;
  v58.super_class = InteractiveAccelerometerViewController;
  [(InteractiveAccelerometerViewController *)&v58 viewWillLayoutSubviews];
  view = [(InteractiveAccelerometerViewController *)self view];
  [view center];
  v5 = v4;
  v7 = v6;
  degreesLabel = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [degreesLabel setCenter:{v5, v7}];

  view2 = [(InteractiveAccelerometerViewController *)self view];
  [view2 center];
  v11 = v10;
  v13 = v12;
  bottomOuterCircle = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [bottomOuterCircle setPosition:{v11, v13}];

  view3 = [(InteractiveAccelerometerViewController *)self view];
  [view3 center];
  v17 = v16;
  v19 = v18;
  bottomInnerCircle = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [bottomInnerCircle setPosition:{v17, v19}];

  view4 = [(InteractiveAccelerometerViewController *)self view];
  [view4 center];
  v23 = v22;
  v25 = v24;
  topOuterCircle = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [topOuterCircle setPosition:{v23, v25}];

  view5 = [(InteractiveAccelerometerViewController *)self view];
  [view5 center];
  v29 = v28;
  v31 = v30;
  topInnerCircle = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [topInnerCircle setPosition:{v29, v31}];

  view6 = [(InteractiveAccelerometerViewController *)self view];
  [view6 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v59.origin.x = v35;
  v59.origin.y = v37;
  v59.size.width = v39;
  v59.size.height = v41;
  MidX = CGRectGetMidX(v59);
  v60.origin.x = v35;
  v60.origin.y = v37;
  v60.size.width = v39;
  v60.size.height = v41;
  v43 = MidX - CGRectGetWidth(v60) * 0.5;
  leftLevelTic = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [leftLevelTic bounds];
  v45 = v43 + CGRectGetWidth(v61) * 0.5;
  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  MidY = CGRectGetMidY(v62);
  leftLevelTic2 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [leftLevelTic2 setPosition:{v45, MidY}];

  v63.origin.x = v35;
  v63.origin.y = v37;
  v63.size.width = v39;
  v63.size.height = v41;
  v48 = CGRectGetMidX(v63);
  v64.origin.x = v35;
  v64.origin.y = v37;
  v64.size.width = v39;
  v64.size.height = v41;
  v49 = v48 + CGRectGetWidth(v64) * 0.5;
  rightLevelTic = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [rightLevelTic bounds];
  v51 = v49 - CGRectGetWidth(v65) * 0.5;
  v66.origin.x = v35;
  v66.origin.y = v37;
  v66.size.width = v39;
  v66.size.height = v41;
  v52 = CGRectGetMidY(v66);
  rightLevelTic2 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [rightLevelTic2 setPosition:{v51, v52}];

  v67.origin.x = v35;
  v67.origin.y = v37;
  v67.size.width = v39;
  v67.size.height = v41;
  v54 = v37 + CGRectGetHeight(v67) * 0.5;
  v68.origin.x = v35;
  v68.origin.y = v54;
  v68.size.width = v39;
  v68.size.height = v41;
  v55 = CGRectGetMidX(v68);
  v69.origin.x = v35;
  v69.origin.y = v54;
  v69.size.width = v39;
  v69.size.height = v41;
  MinY = CGRectGetMinY(v69);
  levelBottom = [(InteractiveAccelerometerViewController *)self levelBottom];
  [levelBottom setPosition:{v55, MinY}];
}

- (void)setupView
{
  view = [(InteractiveAccelerometerViewController *)self view];
  [view setClipsToBounds:1];

  v4 = +[UIColor whiteColor];
  view2 = [(InteractiveAccelerometerViewController *)self view];
  [view2 setBackgroundColor:v4];

  view3 = [(InteractiveAccelerometerViewController *)self view];
  [view3 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setFilterContainer:v15];

  v16 = +[UIColor clearColor];
  filterContainer = [(InteractiveAccelerometerViewController *)self filterContainer];
  [filterContainer setBackgroundColor:v16];

  filterContainer2 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [filterContainer2 setClipsToBounds:1];

  filterContainer3 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [filterContainer3 setAutoresizingMask:18];

  v20 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setLevelContainer:v20];

  v21 = +[UIColor clearColor];
  levelContainer = [(InteractiveAccelerometerViewController *)self levelContainer];
  [levelContainer setBackgroundColor:v21];

  levelContainer2 = [(InteractiveAccelerometerViewController *)self levelContainer];
  [levelContainer2 setAutoresizingMask:18];

  v24 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setLevelHoldContainer:v24];

  v25 = +[UIColor clearColor];
  levelHoldContainer = [(InteractiveAccelerometerViewController *)self levelHoldContainer];
  [levelHoldContainer setBackgroundColor:v25];

  levelHoldContainer2 = [(InteractiveAccelerometerViewController *)self levelHoldContainer];
  [levelHoldContainer2 setAutoresizingMask:18];

  v28 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setBubbleContainer:v28];

  v29 = +[UIColor clearColor];
  bubbleContainer = [(InteractiveAccelerometerViewController *)self bubbleContainer];
  [bubbleContainer setBackgroundColor:v29];

  bubbleContainer2 = [(InteractiveAccelerometerViewController *)self bubbleContainer];
  [bubbleContainer2 setAutoresizingMask:18];

  v32 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setTicContainer:v32];

  v33 = +[UIColor clearColor];
  ticContainer = [(InteractiveAccelerometerViewController *)self ticContainer];
  [ticContainer setBackgroundColor:v33];

  ticContainer2 = [(InteractiveAccelerometerViewController *)self ticContainer];
  [ticContainer2 setAutoresizingMask:18];

  v208 = kCAFilterXor;
  v36 = [CAFilter filterWithType:?];
  ticContainer3 = [(InteractiveAccelerometerViewController *)self ticContainer];
  layer = [ticContainer3 layer];
  [layer setCompositingFilter:v36];

  v209.origin.x = v8;
  v209.origin.y = v10;
  v209.size.width = v12;
  v209.size.height = v14;
  v39 = v10 + CGRectGetHeight(v209) * 0.5;
  v210.origin.x = v8;
  v210.origin.y = v39;
  v210.size.width = v12;
  v210.size.height = v14;
  Width = CGRectGetWidth(v210);
  v211.origin.x = v8;
  v211.origin.y = v39;
  v211.size.width = v12;
  v211.size.height = v14;
  Height = CGRectGetHeight(v211);
  v42 = Height + Height;
  v212.origin.x = v8;
  v212.origin.y = v39;
  v212.size.width = v12;
  v212.size.height = v14;
  v43 = v12 - (-CGRectGetWidth(v212) - Width);
  v44 = +[CALayer layer];
  [(InteractiveAccelerometerViewController *)self setLevelBottom:v44];

  levelBottom = [(InteractiveAccelerometerViewController *)self levelBottom];
  [levelBottom setAnchorPoint:{0.5, 0.0}];

  levelBottom2 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [levelBottom2 setFrame:{v8 - Width, v39 + 0.0, v43, v14 - (0.0 - v42)}];

  v47 = +[UIColor blackColor];
  cGColor = [v47 CGColor];
  levelBottom3 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [levelBottom3 setBackgroundColor:cGColor];

  levelBottom4 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [levelBottom4 setAllowsEdgeAntialiasing:1];

  levelContainer3 = [(InteractiveAccelerometerViewController *)self levelContainer];
  layer2 = [levelContainer3 layer];
  levelBottom5 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [layer2 addSublayer:levelBottom5];

  filterContainer4 = [(InteractiveAccelerometerViewController *)self filterContainer];
  levelContainer4 = [(InteractiveAccelerometerViewController *)self levelContainer];
  [filterContainer4 addSubview:levelContainer4];

  levelContainer5 = [(InteractiveAccelerometerViewController *)self levelContainer];
  levelHoldContainer3 = [(InteractiveAccelerometerViewController *)self levelHoldContainer];
  [levelContainer5 addSubview:levelHoldContainer3];

  v58 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setTopOuterCircle:v58];

  view4 = [(InteractiveAccelerometerViewController *)self view];
  [view4 frame];
  v61 = v60;
  if (MGIsDeviceOfType())
  {
    v62 = 0.850000024;
  }

  else
  {
    v62 = 1.0;
  }

  v63 = v62 * round(v61 * 200.0 / 320.0);
  topOuterCircle = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [topOuterCircle setFrame:{0.0, 0.0, v63, v63}];

  view5 = [(InteractiveAccelerometerViewController *)self view];
  [view5 frame];
  v67 = v66;
  if (MGIsDeviceOfType())
  {
    v68 = 0.850000024;
  }

  else
  {
    v68 = 1.0;
  }

  v69 = v68 * round(v67 * 200.0 / 320.0);
  v70 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v69, v69];
  cGPath = [v70 CGPath];
  topOuterCircle2 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [topOuterCircle2 setPath:cGPath];

  v73 = +[UIColor blackColor];
  cGColor2 = [v73 CGColor];
  topOuterCircle3 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [topOuterCircle3 setFillColor:cGColor2];

  v76 = [CAFilter filterWithType:v208];
  topOuterCircle4 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [topOuterCircle4 setCompositingFilter:v76];

  v78 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setTopInnerCircle:v78];

  view6 = [(InteractiveAccelerometerViewController *)self view];
  [view6 frame];
  v81 = v80;
  if (MGIsDeviceOfType())
  {
    v82 = 0.850000024;
  }

  else
  {
    v82 = 1.0;
  }

  v83 = v82 * round(v81 * 195.0 / 320.0);
  topInnerCircle = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [topInnerCircle setFrame:{0.0, 0.0, v83, v83}];

  view7 = [(InteractiveAccelerometerViewController *)self view];
  [view7 frame];
  v87 = v86;
  if (MGIsDeviceOfType())
  {
    v88 = 0.850000024;
  }

  else
  {
    v88 = 1.0;
  }

  v89 = v88 * round(v87 * 195.0 / 320.0);
  v90 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v89, v89];
  cGPath2 = [v90 CGPath];
  topInnerCircle2 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [topInnerCircle2 setPath:cGPath2];

  v93 = +[UIColor blackColor];
  cGColor3 = [v93 CGColor];
  topInnerCircle3 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [topInnerCircle3 setFillColor:cGColor3];

  v96 = [CAFilter filterWithType:v208];
  topInnerCircle4 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [topInnerCircle4 setCompositingFilter:v96];

  v98 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setBottomOuterCircle:v98];

  view8 = [(InteractiveAccelerometerViewController *)self view];
  [view8 frame];
  v101 = v100;
  if (MGIsDeviceOfType())
  {
    v102 = 0.850000024;
  }

  else
  {
    v102 = 1.0;
  }

  v103 = v102 * round(v101 * 200.0 / 320.0);
  bottomOuterCircle = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [bottomOuterCircle setFrame:{0.0, 0.0, v103, v103}];

  view9 = [(InteractiveAccelerometerViewController *)self view];
  [view9 frame];
  v107 = v106;
  if (MGIsDeviceOfType())
  {
    v108 = 0.850000024;
  }

  else
  {
    v108 = 1.0;
  }

  v109 = v108 * round(v107 * 200.0 / 320.0);
  v109 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v109, v109];
  cGPath3 = [v109 CGPath];
  bottomOuterCircle2 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [bottomOuterCircle2 setPath:cGPath3];

  v113 = +[UIColor blackColor];
  cGColor4 = [v113 CGColor];
  bottomOuterCircle3 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [bottomOuterCircle3 setFillColor:cGColor4];

  v116 = [CAFilter filterWithType:v208];
  bottomOuterCircle4 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [bottomOuterCircle4 setCompositingFilter:v116];

  v118 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setBottomInnerCircle:v118];

  view10 = [(InteractiveAccelerometerViewController *)self view];
  [view10 frame];
  v121 = v120;
  if (MGIsDeviceOfType())
  {
    v122 = 0.850000024;
  }

  else
  {
    v122 = 1.0;
  }

  v123 = v122 * round(v121 * 195.0 / 320.0);
  bottomInnerCircle = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [bottomInnerCircle setFrame:{0.0, 0.0, v123, v123}];

  view11 = [(InteractiveAccelerometerViewController *)self view];
  [view11 frame];
  v127 = v126;
  if (MGIsDeviceOfType())
  {
    v128 = 0.850000024;
  }

  else
  {
    v128 = 1.0;
  }

  v129 = v128 * round(v127 * 195.0 / 320.0);
  v129 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v129, v129];
  cGPath4 = [v129 CGPath];
  bottomInnerCircle2 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [bottomInnerCircle2 setPath:cGPath4];

  v133 = +[UIColor blackColor];
  cGColor5 = [v133 CGColor];
  bottomInnerCircle3 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [bottomInnerCircle3 setFillColor:cGColor5];

  v136 = [CAFilter filterWithType:v208];
  bottomInnerCircle4 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [bottomInnerCircle4 setCompositingFilter:v136];

  filterContainer5 = [(InteractiveAccelerometerViewController *)self filterContainer];
  layer3 = [filterContainer5 layer];
  topOuterCircle5 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [layer3 addSublayer:topOuterCircle5];

  filterContainer6 = [(InteractiveAccelerometerViewController *)self filterContainer];
  layer4 = [filterContainer6 layer];
  topInnerCircle5 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [layer4 addSublayer:topInnerCircle5];

  filterContainer7 = [(InteractiveAccelerometerViewController *)self filterContainer];
  layer5 = [filterContainer7 layer];
  bottomOuterCircle5 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [layer5 addSublayer:bottomOuterCircle5];

  filterContainer8 = [(InteractiveAccelerometerViewController *)self filterContainer];
  layer6 = [filterContainer8 layer];
  bottomInnerCircle5 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [layer6 addSublayer:bottomInnerCircle5];

  v150 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  [(InteractiveAccelerometerViewController *)self setDegreesLabel:v150];

  fontDescriptor = [(InteractiveAccelerometerViewController *)self fontDescriptor];
  view12 = [(InteractiveAccelerometerViewController *)self view];
  [view12 frame];
  v154 = v153;
  if (MGIsDeviceOfType())
  {
    v155 = 0.850000024;
  }

  else
  {
    v155 = 1.0;
  }

  v156 = [UIFont fontWithDescriptor:fontDescriptor size:v155 * round(v154 * 81.0 / 320.0)];
  degreesLabel = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [degreesLabel setFont:v156];

  degreesLabel2 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [degreesLabel2 sizeToFit];

  v159 = +[UIColor blackColor];
  degreesLabel3 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [degreesLabel3 setTextColor:v159];

  v161 = [CAFilter filterWithType:v208];
  degreesLabel4 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  layer7 = [degreesLabel4 layer];
  [layer7 setCompositingFilter:v161];

  filterContainer9 = [(InteractiveAccelerometerViewController *)self filterContainer];
  degreesLabel5 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [filterContainer9 addSubview:degreesLabel5];

  v166 = +[CALayer layer];
  [(InteractiveAccelerometerViewController *)self setRightLevelTic:v166];

  view13 = [(InteractiveAccelerometerViewController *)self view];
  [view13 frame];
  v169 = v168;
  if (MGIsDeviceOfType())
  {
    v170 = 0.850000024;
  }

  else
  {
    v170 = 1.0;
  }

  v171 = v170 * round(v169 * 40.5 / 320.0);
  view14 = [(InteractiveAccelerometerViewController *)self view];
  [view14 frame];
  v174 = v173;
  if (MGIsDeviceOfType())
  {
    v175 = 0.850000024;
  }

  else
  {
    v175 = 1.0;
  }

  v176 = v175 * round(v174 * 1.5 / 320.0);
  rightLevelTic = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [rightLevelTic setFrame:{0.0, 0.0, v171, v176}];

  v178 = +[UIColor blackColor];
  cGColor6 = [v178 CGColor];
  rightLevelTic2 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [rightLevelTic2 setBackgroundColor:cGColor6];

  rightLevelTic3 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [rightLevelTic3 setAllowsEdgeAntialiasing:1];

  ticContainer4 = [(InteractiveAccelerometerViewController *)self ticContainer];
  layer8 = [ticContainer4 layer];
  rightLevelTic4 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [layer8 addSublayer:rightLevelTic4];

  v185 = +[CALayer layer];
  [(InteractiveAccelerometerViewController *)self setLeftLevelTic:v185];

  view15 = [(InteractiveAccelerometerViewController *)self view];
  [view15 frame];
  v188 = v187;
  if (MGIsDeviceOfType())
  {
    v189 = 0.850000024;
  }

  else
  {
    v189 = 1.0;
  }

  v190 = v189 * round(v188 * 40.5 / 320.0);
  view16 = [(InteractiveAccelerometerViewController *)self view];
  [view16 frame];
  v193 = v192;
  if (MGIsDeviceOfType())
  {
    v194 = 0.850000024;
  }

  else
  {
    v194 = 1.0;
  }

  v195 = v194 * round(v193 * 1.5 / 320.0);
  leftLevelTic = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [leftLevelTic setFrame:{0.0, 0.0, v190, v195}];

  v197 = +[UIColor blackColor];
  cGColor7 = [v197 CGColor];
  leftLevelTic2 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [leftLevelTic2 setBackgroundColor:cGColor7];

  leftLevelTic3 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [leftLevelTic3 setAllowsEdgeAntialiasing:1];

  ticContainer5 = [(InteractiveAccelerometerViewController *)self ticContainer];
  layer9 = [ticContainer5 layer];
  leftLevelTic4 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [layer9 addSublayer:leftLevelTic4];

  filterContainer10 = [(InteractiveAccelerometerViewController *)self filterContainer];
  ticContainer6 = [(InteractiveAccelerometerViewController *)self ticContainer];
  [filterContainer10 addSubview:ticContainer6];

  view17 = [(InteractiveAccelerometerViewController *)self view];
  filterContainer11 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [view17 addSubview:filterContainer11];
}

- (BOOL)isDebuggingEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"Test4154Debugging", @"com.apple.Diagnostics", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)startAnimations
{
  displayLink = [(InteractiveAccelerometerViewController *)self displayLink];

  if (!displayLink)
  {
    v4 = [CADisplayLink displayLinkWithTarget:self selector:"updateDisplay:"];
    [(InteractiveAccelerometerViewController *)self setDisplayLink:v4];

    displayLink2 = [(InteractiveAccelerometerViewController *)self displayLink];
    v5 = +[NSRunLoop currentRunLoop];
    [displayLink2 addToRunLoop:v5 forMode:NSRunLoopCommonModes];
  }
}

- (void)stopAnimations
{
  displayLink = [(InteractiveAccelerometerViewController *)self displayLink];

  if (displayLink)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (BOOL)determineTestingOrientation
{
  inputs = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter = [inputs orientationsParameter];
  v5 = [orientationsParameter objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v6 = [v5 isEqualToString:@"portrait"];

  if (v6)
  {
    v7 = 1;
LABEL_13:
    [(InteractiveAccelerometerViewController *)self setTestingOrientation:v7];
    return 1;
  }

  inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter2 = [inputs2 orientationsParameter];
  v10 = [orientationsParameter2 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v11 = [v10 isEqualToString:@"portraitUpsideDown"];

  if (v11)
  {
    v7 = 2;
    goto LABEL_13;
  }

  inputs3 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter3 = [inputs3 orientationsParameter];
  v14 = [orientationsParameter3 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v15 = [v14 isEqualToString:@"landscapeLeft"];

  if (v15)
  {
    v7 = 3;
    goto LABEL_13;
  }

  inputs4 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter4 = [inputs4 orientationsParameter];
  v18 = [orientationsParameter4 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v19 = [v18 isEqualToString:@"landscapeRight"];

  if (v19)
  {
    v7 = 4;
    goto LABEL_13;
  }

  inputs5 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter5 = [inputs5 orientationsParameter];
  v22 = [orientationsParameter5 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v23 = [v22 isEqualToString:@"faceUp"];

  if (v23)
  {
    v7 = 5;
    goto LABEL_13;
  }

  inputs6 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter6 = [inputs6 orientationsParameter];
  v26 = [orientationsParameter6 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v27 = [v26 isEqualToString:@"faceDown"];

  if (v27)
  {
    v7 = 6;
    goto LABEL_13;
  }

  return 0;
}

- (void)addNotStationaryData
{
  rawComponentData = [(InteractiveAccelerometerViewController *)self rawComponentData];
  objc_sync_enter(rawComponentData);
  rawComponentData2 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  v5 = [rawComponentData2 copy];

  rawComponentData3 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  [rawComponentData3 removeAllObjects];

  objc_sync_exit(rawComponentData);
  if ([(InteractiveAccelerometerViewController *)self debuggingEnabled])
  {
    v11[0] = @"rawData";
    v11[1] = @"calibratedData";
    v12[0] = v5;
    motionManagerData = [(InteractiveAccelerometerViewController *)self motionManagerData];
    v8 = [motionManagerData copy];
    v12[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(InteractiveAccelerometerViewController *)self setNotStationaryData:v9];
  }

  motionManagerData2 = [(InteractiveAccelerometerViewController *)self motionManagerData];
  [motionManagerData2 removeAllObjects];
}

- (void)addStationaryData
{
  rawComponentData = [(InteractiveAccelerometerViewController *)self rawComponentData];
  objc_sync_enter(rawComponentData);
  rawComponentData2 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  v5 = [rawComponentData2 copy];
  [(InteractiveAccelerometerViewController *)self setCopiedRawComponentData:v5];

  rawComponentData3 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  [rawComponentData3 removeAllObjects];

  objc_sync_exit(rawComponentData);
  motionManagerData = [(InteractiveAccelerometerViewController *)self motionManagerData];
  v8 = [motionManagerData copy];
  [(InteractiveAccelerometerViewController *)self setCopiedMotionManagerData:v8];

  if ([(InteractiveAccelerometerViewController *)self debuggingEnabled])
  {
    v13[0] = @"rawData";
    copiedRawComponentData = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
    v13[1] = @"calibratedData";
    v14[0] = copiedRawComponentData;
    copiedMotionManagerData = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
    v14[1] = copiedMotionManagerData;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(InteractiveAccelerometerViewController *)self setStationaryData:v11];
  }

  motionManagerData2 = [(InteractiveAccelerometerViewController *)self motionManagerData];
  [motionManagerData2 removeAllObjects];
}

- (void)checkWithinOffset
{
  orientationsIndex = [(InteractiveAccelerometerViewController *)self orientationsIndex];
  inputs = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter = [inputs orientationsParameter];
  v6 = [orientationsParameter count];

  if (v6 <= orientationsIndex)
  {
    v9 = 0;
  }

  else
  {
    inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
    orientationsParameter2 = [inputs2 orientationsParameter];
    v9 = [orientationsParameter2 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];

    if (v9)
    {
      inputs3 = [(InteractiveAccelerometerViewController *)self inputs];
      componentOrientationSpecifications = [inputs3 componentOrientationSpecifications];
      v12 = [componentOrientationSpecifications objectForKeyedSubscript:v9];

      if (v12)
      {
        inputs4 = [(InteractiveAccelerometerViewController *)self inputs];
        componentSensor = [inputs4 componentSensor];

        if (componentSensor)
        {
          copiedMotionManagerData = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          copiedMotionManagerData2 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", copiedMotionManagerData, @"x", [copiedMotionManagerData2 count]);
          v17 = numberOrNullForDouble();

          copiedMotionManagerData3 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          copiedMotionManagerData4 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", copiedMotionManagerData3, @"y", [copiedMotionManagerData4 count]);
          v20 = numberOrNullForDouble();

          copiedMotionManagerData5 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
        }

        else
        {
          copiedRawComponentData = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          copiedRawComponentData2 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", copiedRawComponentData, @"x", [copiedRawComponentData2 count]);
          v17 = numberOrNullForDouble();

          copiedRawComponentData3 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          copiedRawComponentData4 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", copiedRawComponentData3, @"y", [copiedRawComponentData4 count]);
          v20 = numberOrNullForDouble();

          copiedMotionManagerData5 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
        }
        v26 = ;
        -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", copiedMotionManagerData5, @"z", [v26 count]);
        v27 = numberOrNullForDouble();

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          selfCopy2 = self;
          v29 = 4294967286;
        }

        else
        {
          [v17 doubleValue];
          v32 = v31;
          [v12 upperBoundOffsetThresholdX];
          if (v32 <= v33)
          {
            [v17 doubleValue];
            v35 = v34;
            [v12 lowerBoundOffsetThresholdX];
            if (v35 >= v36)
            {
              [v20 doubleValue];
              v38 = v37;
              [v12 upperBoundOffsetThresholdY];
              if (v38 <= v39)
              {
                [v20 doubleValue];
                v41 = v40;
                [v12 lowerBoundOffsetThresholdY];
                if (v41 >= v42)
                {
                  [v27 doubleValue];
                  v44 = v43;
                  [v12 upperBoundOffsetThresholdZ];
                  if (v44 <= v45)
                  {
                    [v27 doubleValue];
                    v47 = v46;
                    [v12 lowerBoundOffsetThresholdZ];
                    if (v47 >= v48)
                    {
                      [(InteractiveAccelerometerViewController *)self setDidCompleteSuccessfully:0];
                      goto LABEL_15;
                    }
                  }
                }
              }
            }
          }

          selfCopy2 = self;
          v29 = 4294967288;
        }

        [(InteractiveAccelerometerViewController *)selfCopy2 setDidCompleteSuccessfully:v29];
        [(InteractiveAccelerometerViewController *)self setOrientationMissed:1];
LABEL_15:
        v49[0] = @"x";
        v49[1] = @"y";
        v50[0] = v17;
        v50[1] = v20;
        v49[2] = @"z";
        v50[2] = v27;
        v30 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
        [(InteractiveAccelerometerViewController *)self setAveragedRawData:v30];

        goto LABEL_8;
      }
    }
  }

  [(InteractiveAccelerometerViewController *)self endTestWithStatusCode:&off_100010C90];
LABEL_8:
}

- (void)cleanUp
{
  timeoutTimer = [(InteractiveAccelerometerViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(InteractiveAccelerometerViewController *)self setTimeoutTimer:0];
  }

  v5 = +[DAHIDEventMonitor sharedInstance];
  [v5 stopMonitoring];

  [(InteractiveAccelerometerViewController *)self stopAnimations];
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  [(InteractiveAccelerometerViewController *)self cleanUp];
  result = [(InteractiveAccelerometerViewController *)self result];
  [result setStatusCode:codeCopy];

  result2 = [(InteractiveAccelerometerViewController *)self result];
  statusCode = [result2 statusCode];
  if ([statusCode isEqualToNumber:&off_100010CA8])
  {
    goto LABEL_8;
  }

  result3 = [(InteractiveAccelerometerViewController *)self result];
  statusCode2 = [result3 statusCode];
  if ([statusCode2 isEqualToNumber:&off_100010CC0])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  result4 = [(InteractiveAccelerometerViewController *)self result];
  statusCode3 = [result4 statusCode];
  if ([statusCode3 isEqualToNumber:&off_100010CD8])
  {
LABEL_6:

    goto LABEL_7;
  }

  result5 = [(InteractiveAccelerometerViewController *)self result];
  statusCode4 = [result5 statusCode];
  if ([statusCode4 isEqualToNumber:&off_100010CF0])
  {

    goto LABEL_6;
  }

  result6 = [(InteractiveAccelerometerViewController *)self result];
  statusCode5 = [result6 statusCode];
  v20 = [statusCode5 isEqualToNumber:&off_100010C90];

  if ((v20 & 1) == 0)
  {
    v21 = @"orientations";
    allResults = [(InteractiveAccelerometerViewController *)self allResults];
    v22 = allResults;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    result7 = [(InteractiveAccelerometerViewController *)self result];
    [result7 setData:v17];

    goto LABEL_12;
  }

LABEL_9:
  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000085A0(v14);
  }

  allResults = [(InteractiveAccelerometerViewController *)self result];
  [allResults setData:&__NSDictionary0__struct];
LABEL_12:

  [(InteractiveAccelerometerViewController *)self setFinished:1];
}

- (void)notStationaryTimedOut
{
  [(InteractiveAccelerometerViewController *)self addNotStationaryData];
  [(InteractiveAccelerometerViewController *)self setDidCompleteSuccessfully:4294967291];
  [(InteractiveAccelerometerViewController *)self setOrientationMissed:1];

  [(InteractiveAccelerometerViewController *)self checkForNextOrientation];
}

- (void)heldOrientationStationary
{
  [(InteractiveAccelerometerViewController *)self addNotStationaryData];
  timeoutTimer = [(InteractiveAccelerometerViewController *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
    [timeoutTimer2 invalidate];

    [(InteractiveAccelerometerViewController *)self setSamplingRawData:1];
    inputs = [(InteractiveAccelerometerViewController *)self inputs];
    [inputs secondsToRunOrientation];
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"checkForNextOrientation" selector:0 userInfo:0 repeats:?];
    [(InteractiveAccelerometerViewController *)self setTimeoutTimer:v5];
  }
}

- (void)checkForNextOrientation
{
  if ([(InteractiveAccelerometerViewController *)self samplingRawData])
  {
    [(InteractiveAccelerometerViewController *)self setSamplingRawData:0];
    [(InteractiveAccelerometerViewController *)self addStationaryData];
    [(InteractiveAccelerometerViewController *)self checkWithinOffset];
  }

  debuggingEnabled = [(InteractiveAccelerometerViewController *)self debuggingEnabled];
  allResults = [(InteractiveAccelerometerViewController *)self allResults];
  if (debuggingEnabled)
  {
    v32[0] = @"orientation";
    inputs = [(InteractiveAccelerometerViewController *)self inputs];
    orientationsParameter = [inputs orientationsParameter];
    v7 = [orientationsParameter objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
    v33[0] = v7;
    v32[1] = @"didCompleteSuccessfully";
    v8 = [NSNumber numberWithInt:[(InteractiveAccelerometerViewController *)self didCompleteSuccessfully]];
    v33[1] = v8;
    v32[2] = @"averagedRawData";
    averagedRawData = [(InteractiveAccelerometerViewController *)self averagedRawData];
    v33[2] = averagedRawData;
    v32[3] = @"notStationaryData";
    notStationaryData = [(InteractiveAccelerometerViewController *)self notStationaryData];
    v33[3] = notStationaryData;
    v32[4] = @"stationaryData";
    stationaryData = [(InteractiveAccelerometerViewController *)self stationaryData];
    v33[4] = stationaryData;
    v12 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];
    [allResults addObject:v12];
  }

  else
  {
    v30[0] = @"orientation";
    inputs = [(InteractiveAccelerometerViewController *)self inputs];
    orientationsParameter = [inputs orientationsParameter];
    v7 = [orientationsParameter objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
    v31[0] = v7;
    v30[1] = @"didCompleteSuccessfully";
    v8 = [NSNumber numberWithInt:[(InteractiveAccelerometerViewController *)self didCompleteSuccessfully]];
    v31[1] = v8;
    v30[2] = @"averagedRawData";
    averagedRawData = [(InteractiveAccelerometerViewController *)self averagedRawData];
    v31[2] = averagedRawData;
    notStationaryData = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
    [allResults addObject:notStationaryData];
  }

  [(InteractiveAccelerometerViewController *)self setOrientationsIndex:[(InteractiveAccelerometerViewController *)self orientationsIndex]+ 1];
  orientationsIndex = [(InteractiveAccelerometerViewController *)self orientationsIndex];
  inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
  orientationsParameter2 = [inputs2 orientationsParameter];
  v16 = [orientationsParameter2 count];

  if (v16 <= orientationsIndex)
  {
    if ([(InteractiveAccelerometerViewController *)self orientationMissed])
    {
      v27 = &off_100010D08;
    }

    else
    {
      v27 = &off_100010D20;
    }

    goto LABEL_20;
  }

  if (![(InteractiveAccelerometerViewController *)self determineTestingOrientation])
  {
    v27 = &off_100010C60;
LABEL_20:
    [(InteractiveAccelerometerViewController *)self endTestWithStatusCode:v27];
    return;
  }

  [(InteractiveAccelerometerViewController *)self setZeroRangeAndDegreesShiftRange];
  v17 = +[NSDictionary dictionary];
  [(InteractiveAccelerometerViewController *)self setAveragedRawData:v17];

  if ([(InteractiveAccelerometerViewController *)self debuggingEnabled])
  {
    v18 = +[NSDictionary dictionary];
    [(InteractiveAccelerometerViewController *)self setNotStationaryData:v18];

    v19 = +[NSDictionary dictionary];
    [(InteractiveAccelerometerViewController *)self setStationaryData:v19];
  }

  v20 = +[NSDate date];
  [(InteractiveAccelerometerViewController *)self setStartDate:v20];

  v21 = +[DSTestAutomation sharedInstance];
  testAutomationEnabled = [v21 testAutomationEnabled];

  if (testAutomationEnabled)
  {
    inputs3 = [(InteractiveAccelerometerViewController *)self inputs];
    if ([inputs3 componentSensor])
    {
      v24 = @"ListenForGyroPosition";
    }

    else
    {
      v24 = @"ListenForAccelerometerPosition";
    }

    v25 = [NSNumber numberWithInteger:[(InteractiveAccelerometerViewController *)self testingOrientation]];
    v29 = v25;
    v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [DSTestAutomation postInteractiveTestEvent:v24 info:v26];
  }

  [(InteractiveAccelerometerViewController *)self updateColors];
}

- (void)handleHIDEvent:(__IOHIDEvent *)event
{
  if (IOHIDEventGetType() == 13)
  {
    IOHIDEventGetFloatValue();
    v5 = v4;
    IOHIDEventGetFloatValue();
    v7 = v6;
    IOHIDEventGetFloatValue();
    v9 = v8;
    rawComponentData = [(InteractiveAccelerometerViewController *)self rawComponentData];
    objc_sync_enter(rawComponentData);
    rawComponentData2 = [(InteractiveAccelerometerViewController *)self rawComponentData];
    v36[0] = @"x";
    *&v12 = v5;
    v13 = [NSNumber numberWithFloat:v12];
    v37[0] = v13;
    v36[1] = @"y";
    *&v14 = v7;
    v15 = [NSNumber numberWithFloat:v14];
    v37[1] = v15;
    v36[2] = @"z";
    *&v16 = v9;
    v17 = [NSNumber numberWithFloat:v16];
    v37[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
    [rawComponentData2 addObject:v18];

    objc_sync_exit(rawComponentData);
  }

  if (IOHIDEventGetType() == 20)
  {
    IOHIDEventGetFloatValue();
    v20 = v19;
    IOHIDEventGetFloatValue();
    v22 = v21;
    IOHIDEventGetFloatValue();
    v23 = v20;
    *&v20 = v24;
    rawComponentData3 = [(InteractiveAccelerometerViewController *)self rawComponentData];
    objc_sync_enter(rawComponentData3);
    rawComponentData4 = [(InteractiveAccelerometerViewController *)self rawComponentData];
    v34[0] = @"x";
    *&v27 = v23;
    v28 = [NSNumber numberWithFloat:v27];
    v35[0] = v28;
    v34[1] = @"y";
    *&v22 = v22;
    LODWORD(v29) = LODWORD(v22);
    v30 = [NSNumber numberWithFloat:v29];
    v35[1] = v30;
    v34[2] = @"z";
    LODWORD(v31) = LODWORD(v20);
    v32 = [NSNumber numberWithFloat:v31];
    v35[2] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    [rawComponentData4 addObject:v33];

    objc_sync_exit(rawComponentData3);
  }
}

- (void)updateDisplay:(id)display
{
  deviceMotion = [(CMMotionManager *)self->_manager deviceMotion];
  attitude = [deviceMotion attitude];

  v69 = 0.0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (attitude)
  {
    [attitude rotationMatrix];
    v6 = *&v66;
    v7 = *(&v67 + 1);
    v8 = v69;
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  v9 = -v8;
  inputs = [(InteractiveAccelerometerViewController *)self inputs];
  componentSensor = [inputs componentSensor];

  if (componentSensor == 1)
  {
    manager = [(InteractiveAccelerometerViewController *)self manager];
    deviceMotion2 = [manager deviceMotion];
    [deviceMotion2 rotationRate];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    motionManagerData = [(InteractiveAccelerometerViewController *)self motionManagerData];
    v70[0] = @"x";
    v21 = [NSNumber numberWithDouble:v15];
    v71[0] = v21;
    v70[1] = @"y";
    v22 = [NSNumber numberWithDouble:v17];
    v71[1] = v22;
    v70[2] = @"z";
    v23 = [NSNumber numberWithDouble:v19];
    v71[2] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:3];
    [motionManagerData addObject:v24];
  }

  v25 = v7 * v7 + v6 * v6;
  v26 = sqrt(v25);
  v27 = 0.0;
  if (v25 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v26;
  }

  v29 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
  v30 = atan2(-v6, v7);
  v31 = -1.57079633;
  v32 = acos(v9) + -1.57079633;
  v33 = [(InteractiveAccelerometerViewController *)self _updateForRotation:v30 shiftAngle:v32];
  if (v28 <= 0.100000001)
  {
    rotationOrientation = [(InteractiveAccelerometerViewController *)self rotationOrientation];
    if ((rotationOrientation - 2) <= 2)
    {
      v27 = dbl_10000BA40[rotationOrientation - 2];
    }

    v37 = v27 - v30;
    if (v27 - v30 <= 3.14159265)
    {
      if (v37 < -3.14159265)
      {
        v27 = v30 + v37 + 6.28318531;
      }
    }

    else
    {
      v27 = v30 - (6.28318531 - v37);
    }

    v38 = 1.0;
    if (v28 >= 0.0250000004)
    {
      v38 = (v28 + -0.0250000004) / -0.0750000011 + 1.0;
    }

    v30 = v30 + v38 * (v27 - v30);
    v31 = v27;
  }

  else
  {
    v34 = v30 * 180.0 / 3.14159265;
    v35 = fabs(v34);
    if (v35 >= 45.0)
    {
      if (v35 <= 135.0)
      {
        if (v34 <= 45.0 || v34 >= 135.0)
        {
          [(InteractiveAccelerometerViewController *)self setRotationOrientation:4];
        }

        else
        {
          [(InteractiveAccelerometerViewController *)self setRotationOrientation:3];
          v31 = 1.57079633;
        }
      }

      else
      {
        [(InteractiveAccelerometerViewController *)self setRotationOrientation:2];
        v31 = -3.14159265;
      }
    }

    else
    {
      [(InteractiveAccelerometerViewController *)self setRotationOrientation:1];
      v31 = 0.0;
    }
  }

  [(InteractiveAccelerometerViewController *)self previousShift];
  if (vabdd_f64(v32, v39) > 0.0000999999975 || ([(InteractiveAccelerometerViewController *)self previousRotation], vabdd_f64(v30, v40) > 0.0000999999975))
  {
    v33 = 1;
  }

  v41 = v32 / 1.57079633;
  if ([(InteractiveAccelerometerViewController *)self framesLevel]>= 1)
  {
    v42 = [(InteractiveAccelerometerViewController *)self framesLevel]/ 30.0;
    if ([(InteractiveAccelerometerViewController *)self orientation]== 6)
    {
      v41 = v41 * (1.0 - v42) - v42;
    }

    else if ([(InteractiveAccelerometerViewController *)self orientation]== 5)
    {
      v41 = v42 + v41 * (1.0 - v42);
    }
  }

  if (v33)
  {
    view = [(InteractiveAccelerometerViewController *)self view];
    [view bounds];
    v44 = CGRectGetHeight(v72) * 1.29999995;

    *&v45 = v28;
    [v29 _solveForInput:v45];
    v47 = v44 * (v46 * 0.399999976 + 0.600000024);
    memset(&v64, 0, sizeof(v64));
    CATransform3DMakeRotation(&v64, v30, 0.0, 0.0, -1.0);
    memset(&v63, 0, sizeof(v63));
    v62 = v64;
    CATransform3DTranslate(&v63, &v62, 0.0, -(v44 * v41), 0.0);
    memset(&v62, 0, sizeof(v62));
    v61 = v64;
    CATransform3DTranslate(&v62, &v61, 0.0, -(v47 * (v41 + -1.0)), 0.0);
    memset(&v61, 0, sizeof(v61));
    v60 = v64;
    CATransform3DTranslate(&v61, &v60, 0.0, (v41 + -1.0) * v47, 0.0);
    memset(&v60, 0, sizeof(v60));
    v48 = v41 + 1.0;
    v59 = v64;
    CATransform3DTranslate(&v60, &v59, 0.0, -(v47 * v48), 0.0);
    memset(&v59, 0, sizeof(v59));
    v58 = v64;
    CATransform3DTranslate(&v59, &v58, 0.0, v48 * v47, 0.0);
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    levelBottom = [(InteractiveAccelerometerViewController *)self levelBottom];
    v58 = v63;
    [levelBottom setTransform:&v58];

    degreesLabel = [(InteractiveAccelerometerViewController *)self degreesLabel];
    layer = [degreesLabel layer];
    v58 = v64;
    [layer setTransform:&v58];

    bottomOuterCircle = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
    v58 = v62;
    [bottomOuterCircle setTransform:&v58];

    bottomInnerCircle = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
    v58 = v61;
    [bottomInnerCircle setTransform:&v58];

    topOuterCircle = [(InteractiveAccelerometerViewController *)self topOuterCircle];
    v58 = v60;
    [topOuterCircle setTransform:&v58];

    topInnerCircle = [(InteractiveAccelerometerViewController *)self topInnerCircle];
    v58 = v59;
    [topInnerCircle setTransform:&v58];

    ticContainer = [(InteractiveAccelerometerViewController *)self ticContainer];
    layer2 = [ticContainer layer];
    CATransform3DMakeRotation(&v58, v31, 0.0, 0.0, 1.0);
    [layer2 setTransform:&v58];

    +[CATransaction commit];
  }

  [(InteractiveAccelerometerViewController *)self setPreviousShift:v32];
  [(InteractiveAccelerometerViewController *)self setPreviousRotation:v30];
}

- (BOOL)_updateForRotation:(double)rotation shiftAngle:(double)angle
{
  [(InteractiveAccelerometerViewController *)self setCurrentShift:angle];
  [(InteractiveAccelerometerViewController *)self setCurrentRotation:rotation];
  v7 = rotation * 180.0 / 3.14159265;
  [(InteractiveAccelerometerViewController *)self setDegreesShift:angle * 180.0 / 3.14159265];
  [(InteractiveAccelerometerViewController *)self degreesShift];
  if (fabs(v8) <= 40.0)
  {
    v10 = fabs(v7);
    if (v10 >= 20.0)
    {
      if (v10 <= 160.0)
      {
        if (v7 <= 70.0 || v7 >= 110.0)
        {
          if (v7 >= -70.0 || v7 <= -110.0)
          {
            orientation = [(InteractiveAccelerometerViewController *)self orientation];
          }

          else
          {
            orientation = 4;
          }
        }

        else
        {
          orientation = 3;
        }
      }

      else
      {
        orientation = 2;
      }
    }

    else
    {
      orientation = 1;
    }
  }

  else if (angle <= 0.0)
  {
    orientation = 6;
  }

  else
  {
    orientation = 5;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  orientation2 = [(InteractiveAccelerometerViewController *)self orientation];
  v12 = orientation != orientation2;
  if (orientation != orientation2)
  {
    traitCollection = [(InteractiveAccelerometerViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];

    if (verticalSizeClass == 2)
    {
      [(InteractiveAccelerometerViewController *)self setPreviousOrientation:orientation];
      [(InteractiveAccelerometerViewController *)self updateTicsForOrientation:orientation];
    }

    else
    {
      traitCollection2 = [(InteractiveAccelerometerViewController *)self traitCollection];
      verticalSizeClass2 = [traitCollection2 verticalSizeClass];

      if (verticalSizeClass2 == 1)
      {
        [(InteractiveAccelerometerViewController *)self setPreviousOrientation:orientation];
      }
    }

    [(InteractiveAccelerometerViewController *)self updateTicsForOrientation:orientation];
  }

  [(InteractiveAccelerometerViewController *)self setOrientation:orientation];
  if (orientation <= 3)
  {
    if (orientation == 1)
    {
      goto LABEL_63;
    }

    if (orientation != 2)
    {
      v7 = 0.0;
      if (orientation != 3)
      {
        goto LABEL_63;
      }

      if (rotation <= 3.14159265)
      {
        if (rotation < -3.14159265)
        {
          rotation = rotation + 6.28318531;
        }
      }

      else
      {
        rotation = -(6.28318531 - rotation);
      }

      v22 = rotation + -1.57079633;
      if (rotation + -1.57079633 <= 3.14159265)
      {
        if (v22 >= -3.14159265)
        {
LABEL_53:
          v20 = rotation * 180.0 / 3.14159265;
          v21 = -90.0;
          goto LABEL_62;
        }

        v23 = 6.28318531;
      }

      else
      {
        v23 = -6.28318531;
      }

      rotation = v22 + v23 + 1.57079633;
      goto LABEL_53;
    }

    if (rotation <= 3.14159265)
    {
      if (rotation < -3.14159265)
      {
        rotation = rotation + 6.28318531;
      }
    }

    else
    {
      rotation = -(6.28318531 - rotation);
    }

    v24 = rotation + -3.14159265;
    if (rotation + -3.14159265 <= 3.14159265)
    {
      if (v24 >= -3.14159265)
      {
LABEL_61:
        v20 = rotation * 180.0 / 3.14159265;
        v21 = -180.0;
        goto LABEL_62;
      }

      v25 = 6.28318531;
    }

    else
    {
      v25 = -6.28318531;
    }

    rotation = v24 + v25 + 3.14159265;
    goto LABEL_61;
  }

  if (orientation == 4)
  {
    if (rotation <= 3.14159265)
    {
      if (rotation < -3.14159265)
      {
        rotation = rotation + 6.28318531;
      }
    }

    else
    {
      rotation = -(6.28318531 - rotation);
    }

    v18 = rotation + 2.35619449;
    if (rotation + 2.35619449 <= 3.14159265)
    {
      if (v18 >= -3.14159265)
      {
LABEL_45:
        v20 = rotation * 180.0 / 3.14159265;
        v21 = 90.0;
LABEL_62:
        v7 = v20 + v21;
        goto LABEL_63;
      }

      v19 = 6.28318531;
    }

    else
    {
      v19 = -6.28318531;
    }

    rotation = v18 + v19 + -2.35619449;
    goto LABEL_45;
  }

  if (orientation == 5)
  {
    v17 = -1.57079633;
  }

  else
  {
    v7 = 0.0;
    if (orientation != 6)
    {
      goto LABEL_63;
    }

    v17 = 1.57079633;
  }

  v7 = (angle + v17) * 180.0 / 3.14159265;
LABEL_63:
  +[CATransaction commit];
  [(InteractiveAccelerometerViewController *)self degreesShift];
  v27 = fabs(v26);
  inputs = [(InteractiveAccelerometerViewController *)self inputs];
  [inputs degreesShiftRange];
  v30 = v29;

  v31 = [(InteractiveAccelerometerViewController *)self orientation]- 5;
  v33 = v27 < v30 || v31 < 0xFFFFFFFFFFFFFFFCLL;
  inputs2 = [(InteractiveAccelerometerViewController *)self inputs];
  [inputs2 zeroRange];
  v36 = v35;

  if (fabs(v7) >= v36 || !v33)
  {
    v38 = 0;
  }

  else
  {
    if ([(InteractiveAccelerometerViewController *)self framesLevel]> 29)
    {
      goto LABEL_78;
    }

    v38 = [(InteractiveAccelerometerViewController *)self framesLevel]+ 1;
    v12 = 1;
  }

  [(InteractiveAccelerometerViewController *)self setFramesLevel:v38];
LABEL_78:
  framesLevel = [(InteractiveAccelerometerViewController *)self framesLevel];
  if (framesLevel > 29 != [(InteractiveAccelerometerViewController *)self isLeveled])
  {
    if ([(InteractiveAccelerometerViewController *)self isLeveled])
    {
      [(InteractiveAccelerometerViewController *)self lastLevelChange];
      if (vabdd_f64(v40, v7) <= 0.75 && v33)
      {
        [(InteractiveAccelerometerViewController *)self setFramesLevel:30];
        return 0;
      }
    }

    if (framesLevel < 30)
    {
      v42 = 0;
    }

    else
    {
      orientation3 = [(InteractiveAccelerometerViewController *)self orientation];
      v42 = orientation3 == [(InteractiveAccelerometerViewController *)self testingOrientation];
    }

    [(InteractiveAccelerometerViewController *)self setIsLeveled:v42];
    [(InteractiveAccelerometerViewController *)self setLastLevelChange:v7];
    [(InteractiveAccelerometerViewController *)self updateColors];
    v12 = 1;
  }

  v43 = 0.0;
  if (framesLevel <= 29)
  {
    v43 = v7;
  }

  [(InteractiveAccelerometerViewController *)self _updateOffsetLabel:v43];
  return v12;
}

- (void)updateColors
{
  v54 = +[UIColor systemGreenColor];
  v3 = +[UIColor blackColor];
  if ([(InteractiveAccelerometerViewController *)self isLeveled]&& (v4 = [(InteractiveAccelerometerViewController *)self orientation], v4 == [(InteractiveAccelerometerViewController *)self testingOrientation]))
  {
    v5 = v54;
    cGColor = [v54 CGColor];
    levelBottom = [(InteractiveAccelerometerViewController *)self levelBottom];
    [levelBottom setBackgroundColor:cGColor];

    v8 = v54;
    cGColor2 = [v54 CGColor];
    topInnerCircle = [(InteractiveAccelerometerViewController *)self topInnerCircle];
    [topInnerCircle setFillColor:cGColor2];

    v11 = v54;
    cGColor3 = [v54 CGColor];
    topOuterCircle = [(InteractiveAccelerometerViewController *)self topOuterCircle];
    [topOuterCircle setFillColor:cGColor3];

    v14 = v54;
    cGColor4 = [v54 CGColor];
    bottomInnerCircle = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
    [bottomInnerCircle setFillColor:cGColor4];

    v17 = v54;
    cGColor5 = [v54 CGColor];
    bottomOuterCircle = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
    [bottomOuterCircle setFillColor:cGColor5];

    degreesLabel = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [degreesLabel setTextColor:v54];

    v21 = v54;
    cGColor6 = [v54 CGColor];
    leftLevelTic = [(InteractiveAccelerometerViewController *)self leftLevelTic];
    [leftLevelTic setBackgroundColor:cGColor6];

    v24 = v54;
    cGColor7 = [v54 CGColor];
    rightLevelTic = [(InteractiveAccelerometerViewController *)self rightLevelTic];
    [rightLevelTic setBackgroundColor:cGColor7];

    if (![(InteractiveAccelerometerViewController *)self samplingRawData])
    {
      timeoutTimer = [(InteractiveAccelerometerViewController *)self timeoutTimer];

      if (timeoutTimer)
      {
        timeoutTimer2 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
        [timeoutTimer2 invalidate];

        inputs = [(InteractiveAccelerometerViewController *)self inputs];
        [inputs holdStationaryTimeout];
        v31 = "heldOrientationStationary";
LABEL_9:
        v53 = [NSTimer scheduledTimerWithTimeInterval:self target:v31 selector:0 userInfo:0 repeats:v30];
        [(InteractiveAccelerometerViewController *)self setTimeoutTimer:v53];
      }
    }
  }

  else
  {
    cGColor8 = [v3 CGColor];
    levelBottom2 = [(InteractiveAccelerometerViewController *)self levelBottom];
    [levelBottom2 setBackgroundColor:cGColor8];

    cGColor9 = [v3 CGColor];
    topInnerCircle2 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
    [topInnerCircle2 setFillColor:cGColor9];

    cGColor10 = [v3 CGColor];
    topOuterCircle2 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
    [topOuterCircle2 setFillColor:cGColor10];

    cGColor11 = [v3 CGColor];
    bottomOuterCircle2 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
    [bottomOuterCircle2 setFillColor:cGColor11];

    cGColor12 = [v3 CGColor];
    bottomInnerCircle2 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
    [bottomInnerCircle2 setFillColor:cGColor12];

    degreesLabel2 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [degreesLabel2 setTextColor:v3];

    cGColor13 = [v3 CGColor];
    leftLevelTic2 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
    [leftLevelTic2 setBackgroundColor:cGColor13];

    cGColor14 = [v3 CGColor];
    rightLevelTic2 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
    [rightLevelTic2 setBackgroundColor:cGColor14];

    if (![(InteractiveAccelerometerViewController *)self samplingRawData])
    {
      timeoutTimer3 = [(InteractiveAccelerometerViewController *)self timeoutTimer];

      if (timeoutTimer3)
      {
        timeoutTimer4 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
        [timeoutTimer4 invalidate];

        startDate = [(InteractiveAccelerometerViewController *)self startDate];
        [startDate timeIntervalSinceNow];
        v51 = v50;

        inputs = [(InteractiveAccelerometerViewController *)self inputs];
        [inputs notStationaryTimeout];
        v30 = v51 + v52;
        v31 = "notStationaryTimedOut";
        goto LABEL_9;
      }
    }
  }
}

- (void)_updateOffsetLabel:(double)label
{
  labelCopy = label;
  v6 = fabs(label);
  if (v6 < 1.0)
  {
    inputs = [(InteractiveAccelerometerViewController *)self inputs];
    [inputs zeroRange];
    v9 = v8;

    if (v6 > v9)
    {
      labelCopy = ((*&label >> 63) | 1);
    }
  }

  if ([(InteractiveAccelerometerViewController *)self lastDisplayDegrees]!= labelCopy)
  {
    [(InteractiveAccelerometerViewController *)self setLastDisplayDegrees:labelCopy];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"COMPASS_DEGREES" value:&stru_1000109D8 table:0];
    labelCopy = [NSString stringWithFormat:v11, labelCopy];

    degreesLabel = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [degreesLabel setText:labelCopy];

    degreesLabel2 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [degreesLabel2 sizeToFit];

    view = [(InteractiveAccelerometerViewController *)self view];
    [view center];
    v16 = v15;
    v18 = v17;
    degreesLabel3 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [degreesLabel3 setCenter:{v16, v18}];
  }
}

- (void)updateTicsForOrientation:(int64_t)orientation
{
  v4 = (orientation - 5) < 0xFFFFFFFFFFFFFFFCLL;
  leftLevelTic = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [leftLevelTic setHidden:v4];

  rightLevelTic = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [rightLevelTic setHidden:v4];
}

- (double)average:(id)average key:(id)key size:(unint64_t)size
{
  keyCopy = key;
  if (size)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 1;
    do
    {
      v11 = [average objectAtIndexedSubscript:v8];
      v12 = [v11 objectForKeyedSubscript:keyCopy];
      [v12 floatValue];
      v9 = v9 + v13;

      v8 = v10++;
    }

    while (v8 < size);
  }

  else
  {
    v9 = 0.0;
  }

  return v9 / size;
}

@end