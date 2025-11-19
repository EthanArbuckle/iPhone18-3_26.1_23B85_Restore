@interface InteractiveAccelerometerViewController
- (BOOL)_updateForRotation:(double)a3 shiftAngle:(double)a4;
- (BOOL)determineTestingOrientation;
- (BOOL)isDebuggingEnabled;
- (double)average:(id)a3 key:(id)a4 size:(unint64_t)a5;
- (void)_updateOffsetLabel:(double)a3;
- (void)addNotStationaryData;
- (void)addStationaryData;
- (void)checkForNextOrientation;
- (void)checkWithinOffset;
- (void)cleanUp;
- (void)didReceiveMemoryWarning;
- (void)endTestWithStatusCode:(id)a3;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)heldOrientationStationary;
- (void)notStationaryTimedOut;
- (void)setZeroRangeAndDegreesShiftRange;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)startAnimations;
- (void)stopAnimations;
- (void)updateColors;
- (void)updateDisplay:(id)a3;
- (void)updateTicsForOrientation:(int64_t)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation InteractiveAccelerometerViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(InteractiveAccelerometerViewController *)self setInputs:a3, a4];
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

  v14 = [(InteractiveAccelerometerViewController *)self manager];
  [v14 setShowsDeviceMovementDisplay:1];

  v15 = [(InteractiveAccelerometerViewController *)self manager];
  [v15 setDeviceMotionUpdateInterval:0.00999999978];

  v16 = [(InteractiveAccelerometerViewController *)self manager];
  [v16 startDeviceMotionUpdatesUsingReferenceFrame:1];

  [(InteractiveAccelerometerViewController *)self setOrientation:1];
  [(InteractiveAccelerometerViewController *)self setPreviousOrientation:1];
  [(InteractiveAccelerometerViewController *)self setLastLevelChange:1.79769313e308];
  [(InteractiveAccelerometerViewController *)self setLastDisplayDegrees:0x7FFFFFFFFFFFFFFFLL];
  [(InteractiveAccelerometerViewController *)self setPreviousRotation:1.79769313e308];
  [(InteractiveAccelerometerViewController *)self setPreviousShift:1.79769313e308];
  v17 = [(InteractiveAccelerometerViewController *)self view];
  v18 = [v17 window];
  v19 = [v18 windowScene];
  v20 = [v19 screen];
  [v20 bounds];
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

  v26 = [(__CTFont *)UIFontForLanguage fontDescriptor];
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
  v31 = [v26 fontDescriptorByAddingAttributes:v30];

  [(InteractiveAccelerometerViewController *)self setFontDescriptor:v31];
  v32 = +[DSTestAutomation sharedInstance];
  LODWORD(v28) = [v32 testAutomationEnabled];

  if (v28)
  {
    v33 = [(InteractiveAccelerometerViewController *)self inputs];
    v34 = [v33 parameters];
    v41[0] = v34;
    v40[1] = @"predicates";
    v35 = [(InteractiveAccelerometerViewController *)self inputs];
    v36 = [v35 predicates];
    v41[1] = v36;
    v40[2] = @"specifications";
    v37 = [(InteractiveAccelerometerViewController *)self inputs];
    v38 = [v37 specifications];
    v41[2] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
    [DSTestAutomation postConfiguration:v39];
  }
}

- (void)start
{
  [(InteractiveAccelerometerViewController *)self setDebuggingEnabled:[(InteractiveAccelerometerViewController *)self isDebuggingEnabled]];
  v3 = +[DAHIDEventMonitor sharedInstance];
  [v3 setDelegate:self];

  v4 = [(InteractiveAccelerometerViewController *)self inputs];
  v5 = [v4 componentSensor] != 0;

  v6 = +[DAHIDEventMonitor sharedInstance];
  v7 = [NSNumber numberWithUnsignedInteger:v5];
  v8 = [NSSet setWithObject:v7];
  v9 = [v6 startMonitoringWithHIDEvents:v8];

  if (v9)
  {
    v10 = +[DAHIDEventMonitor sharedInstance];
    v11 = [(InteractiveAccelerometerViewController *)self inputs];
    v12 = [v10 serviceClientSetPropertyValue:+[NSNumber numberWithInt:](NSNumber forKey:"numberWithInt:" forHIDEvent:{objc_msgSend(v11, "outputDataRate")), @"ReportInterval", v5}];

    if (v12)
    {
      if ([(InteractiveAccelerometerViewController *)self determineTestingOrientation])
      {
        [(InteractiveAccelerometerViewController *)self setupView];
        [(InteractiveAccelerometerViewController *)self startAnimations];
        v13 = +[NSDate date];
        [(InteractiveAccelerometerViewController *)self setStartDate:v13];

        v14 = +[DSTestAutomation sharedInstance];
        v15 = [v14 testAutomationEnabled];

        if (v15)
        {
          v16 = [(InteractiveAccelerometerViewController *)self inputs];
          if ([v16 componentSensor])
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

        v20 = [(InteractiveAccelerometerViewController *)self inputs];
        [v20 notStationaryTimeout];
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
  v3 = [(InteractiveAccelerometerViewController *)self inputs];
  v4 = [v3 componentOrientationSpecifications];
  v5 = [(InteractiveAccelerometerViewController *)self inputs];
  v6 = [v5 orientationsParameter];
  v7 = [v6 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v14 = [v4 objectForKeyedSubscript:v7];

  [v14 zeroRangeThreshold];
  v9 = v8;
  v10 = [(InteractiveAccelerometerViewController *)self inputs];
  [v10 setZeroRange:v9];

  [v14 degreesShiftRangeThreshold];
  v12 = v11;
  v13 = [(InteractiveAccelerometerViewController *)self inputs];
  [v13 setDegreesShiftRange:v12];
}

- (void)viewWillLayoutSubviews
{
  v58.receiver = self;
  v58.super_class = InteractiveAccelerometerViewController;
  [(InteractiveAccelerometerViewController *)&v58 viewWillLayoutSubviews];
  v3 = [(InteractiveAccelerometerViewController *)self view];
  [v3 center];
  v5 = v4;
  v7 = v6;
  v8 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [v8 setCenter:{v5, v7}];

  v9 = [(InteractiveAccelerometerViewController *)self view];
  [v9 center];
  v11 = v10;
  v13 = v12;
  v14 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [v14 setPosition:{v11, v13}];

  v15 = [(InteractiveAccelerometerViewController *)self view];
  [v15 center];
  v17 = v16;
  v19 = v18;
  v20 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [v20 setPosition:{v17, v19}];

  v21 = [(InteractiveAccelerometerViewController *)self view];
  [v21 center];
  v23 = v22;
  v25 = v24;
  v26 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [v26 setPosition:{v23, v25}];

  v27 = [(InteractiveAccelerometerViewController *)self view];
  [v27 center];
  v29 = v28;
  v31 = v30;
  v32 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [v32 setPosition:{v29, v31}];

  v33 = [(InteractiveAccelerometerViewController *)self view];
  [v33 bounds];
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
  v44 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v44 bounds];
  v45 = v43 + CGRectGetWidth(v61) * 0.5;
  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  MidY = CGRectGetMidY(v62);
  v47 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v47 setPosition:{v45, MidY}];

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
  v50 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v50 bounds];
  v51 = v49 - CGRectGetWidth(v65) * 0.5;
  v66.origin.x = v35;
  v66.origin.y = v37;
  v66.size.width = v39;
  v66.size.height = v41;
  v52 = CGRectGetMidY(v66);
  v53 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v53 setPosition:{v51, v52}];

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
  v57 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [v57 setPosition:{v55, MinY}];
}

- (void)setupView
{
  v3 = [(InteractiveAccelerometerViewController *)self view];
  [v3 setClipsToBounds:1];

  v4 = +[UIColor whiteColor];
  v5 = [(InteractiveAccelerometerViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(InteractiveAccelerometerViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setFilterContainer:v15];

  v16 = +[UIColor clearColor];
  v17 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [v17 setBackgroundColor:v16];

  v18 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [v18 setClipsToBounds:1];

  v19 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [v19 setAutoresizingMask:18];

  v20 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setLevelContainer:v20];

  v21 = +[UIColor clearColor];
  v22 = [(InteractiveAccelerometerViewController *)self levelContainer];
  [v22 setBackgroundColor:v21];

  v23 = [(InteractiveAccelerometerViewController *)self levelContainer];
  [v23 setAutoresizingMask:18];

  v24 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setLevelHoldContainer:v24];

  v25 = +[UIColor clearColor];
  v26 = [(InteractiveAccelerometerViewController *)self levelHoldContainer];
  [v26 setBackgroundColor:v25];

  v27 = [(InteractiveAccelerometerViewController *)self levelHoldContainer];
  [v27 setAutoresizingMask:18];

  v28 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setBubbleContainer:v28];

  v29 = +[UIColor clearColor];
  v30 = [(InteractiveAccelerometerViewController *)self bubbleContainer];
  [v30 setBackgroundColor:v29];

  v31 = [(InteractiveAccelerometerViewController *)self bubbleContainer];
  [v31 setAutoresizingMask:18];

  v32 = [[UIView alloc] initWithFrame:{v8, v10, v12, v14}];
  [(InteractiveAccelerometerViewController *)self setTicContainer:v32];

  v33 = +[UIColor clearColor];
  v34 = [(InteractiveAccelerometerViewController *)self ticContainer];
  [v34 setBackgroundColor:v33];

  v35 = [(InteractiveAccelerometerViewController *)self ticContainer];
  [v35 setAutoresizingMask:18];

  v208 = kCAFilterXor;
  v36 = [CAFilter filterWithType:?];
  v37 = [(InteractiveAccelerometerViewController *)self ticContainer];
  v38 = [v37 layer];
  [v38 setCompositingFilter:v36];

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

  v45 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [v45 setAnchorPoint:{0.5, 0.0}];

  v46 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [v46 setFrame:{v8 - Width, v39 + 0.0, v43, v14 - (0.0 - v42)}];

  v47 = +[UIColor blackColor];
  v48 = [v47 CGColor];
  v49 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [v49 setBackgroundColor:v48];

  v50 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [v50 setAllowsEdgeAntialiasing:1];

  v51 = [(InteractiveAccelerometerViewController *)self levelContainer];
  v52 = [v51 layer];
  v53 = [(InteractiveAccelerometerViewController *)self levelBottom];
  [v52 addSublayer:v53];

  v54 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v55 = [(InteractiveAccelerometerViewController *)self levelContainer];
  [v54 addSubview:v55];

  v56 = [(InteractiveAccelerometerViewController *)self levelContainer];
  v57 = [(InteractiveAccelerometerViewController *)self levelHoldContainer];
  [v56 addSubview:v57];

  v58 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setTopOuterCircle:v58];

  v59 = [(InteractiveAccelerometerViewController *)self view];
  [v59 frame];
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
  v64 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [v64 setFrame:{0.0, 0.0, v63, v63}];

  v65 = [(InteractiveAccelerometerViewController *)self view];
  [v65 frame];
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
  v71 = [v70 CGPath];
  v72 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [v72 setPath:v71];

  v73 = +[UIColor blackColor];
  v74 = [v73 CGColor];
  v75 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [v75 setFillColor:v74];

  v76 = [CAFilter filterWithType:v208];
  v77 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [v77 setCompositingFilter:v76];

  v78 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setTopInnerCircle:v78];

  v79 = [(InteractiveAccelerometerViewController *)self view];
  [v79 frame];
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
  v84 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [v84 setFrame:{0.0, 0.0, v83, v83}];

  v85 = [(InteractiveAccelerometerViewController *)self view];
  [v85 frame];
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
  v91 = [v90 CGPath];
  v92 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [v92 setPath:v91];

  v93 = +[UIColor blackColor];
  v94 = [v93 CGColor];
  v95 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [v95 setFillColor:v94];

  v96 = [CAFilter filterWithType:v208];
  v97 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [v97 setCompositingFilter:v96];

  v98 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setBottomOuterCircle:v98];

  v99 = [(InteractiveAccelerometerViewController *)self view];
  [v99 frame];
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
  v104 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [v104 setFrame:{0.0, 0.0, v103, v103}];

  v105 = [(InteractiveAccelerometerViewController *)self view];
  [v105 frame];
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
  v110 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v109, v109];
  v111 = [v110 CGPath];
  v112 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [v112 setPath:v111];

  v113 = +[UIColor blackColor];
  v114 = [v113 CGColor];
  v115 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [v115 setFillColor:v114];

  v116 = [CAFilter filterWithType:v208];
  v117 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [v117 setCompositingFilter:v116];

  v118 = +[CAShapeLayer layer];
  [(InteractiveAccelerometerViewController *)self setBottomInnerCircle:v118];

  v119 = [(InteractiveAccelerometerViewController *)self view];
  [v119 frame];
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
  v124 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [v124 setFrame:{0.0, 0.0, v123, v123}];

  v125 = [(InteractiveAccelerometerViewController *)self view];
  [v125 frame];
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
  v130 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, v129, v129];
  v131 = [v130 CGPath];
  v132 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [v132 setPath:v131];

  v133 = +[UIColor blackColor];
  v134 = [v133 CGColor];
  v135 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [v135 setFillColor:v134];

  v136 = [CAFilter filterWithType:v208];
  v137 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [v137 setCompositingFilter:v136];

  v138 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v139 = [v138 layer];
  v140 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
  [v139 addSublayer:v140];

  v141 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v142 = [v141 layer];
  v143 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
  [v142 addSublayer:v143];

  v144 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v145 = [v144 layer];
  v146 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
  [v145 addSublayer:v146];

  v147 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v148 = [v147 layer];
  v149 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
  [v148 addSublayer:v149];

  v150 = [[UILabel alloc] initWithFrame:{0.0, 0.0, 100.0, 100.0}];
  [(InteractiveAccelerometerViewController *)self setDegreesLabel:v150];

  v151 = [(InteractiveAccelerometerViewController *)self fontDescriptor];
  v152 = [(InteractiveAccelerometerViewController *)self view];
  [v152 frame];
  v154 = v153;
  if (MGIsDeviceOfType())
  {
    v155 = 0.850000024;
  }

  else
  {
    v155 = 1.0;
  }

  v156 = [UIFont fontWithDescriptor:v151 size:v155 * round(v154 * 81.0 / 320.0)];
  v157 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [v157 setFont:v156];

  v158 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [v158 sizeToFit];

  v159 = +[UIColor blackColor];
  v160 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [v160 setTextColor:v159];

  v161 = [CAFilter filterWithType:v208];
  v162 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  v163 = [v162 layer];
  [v163 setCompositingFilter:v161];

  v164 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v165 = [(InteractiveAccelerometerViewController *)self degreesLabel];
  [v164 addSubview:v165];

  v166 = +[CALayer layer];
  [(InteractiveAccelerometerViewController *)self setRightLevelTic:v166];

  v167 = [(InteractiveAccelerometerViewController *)self view];
  [v167 frame];
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
  v172 = [(InteractiveAccelerometerViewController *)self view];
  [v172 frame];
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
  v177 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v177 setFrame:{0.0, 0.0, v171, v176}];

  v178 = +[UIColor blackColor];
  v179 = [v178 CGColor];
  v180 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v180 setBackgroundColor:v179];

  v181 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v181 setAllowsEdgeAntialiasing:1];

  v182 = [(InteractiveAccelerometerViewController *)self ticContainer];
  v183 = [v182 layer];
  v184 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v183 addSublayer:v184];

  v185 = +[CALayer layer];
  [(InteractiveAccelerometerViewController *)self setLeftLevelTic:v185];

  v186 = [(InteractiveAccelerometerViewController *)self view];
  [v186 frame];
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
  v191 = [(InteractiveAccelerometerViewController *)self view];
  [v191 frame];
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
  v196 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v196 setFrame:{0.0, 0.0, v190, v195}];

  v197 = +[UIColor blackColor];
  v198 = [v197 CGColor];
  v199 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v199 setBackgroundColor:v198];

  v200 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v200 setAllowsEdgeAntialiasing:1];

  v201 = [(InteractiveAccelerometerViewController *)self ticContainer];
  v202 = [v201 layer];
  v203 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v202 addSublayer:v203];

  v204 = [(InteractiveAccelerometerViewController *)self filterContainer];
  v205 = [(InteractiveAccelerometerViewController *)self ticContainer];
  [v204 addSubview:v205];

  v206 = [(InteractiveAccelerometerViewController *)self view];
  v207 = [(InteractiveAccelerometerViewController *)self filterContainer];
  [v206 addSubview:v207];
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
  v3 = [(InteractiveAccelerometerViewController *)self displayLink];

  if (!v3)
  {
    v4 = [CADisplayLink displayLinkWithTarget:self selector:"updateDisplay:"];
    [(InteractiveAccelerometerViewController *)self setDisplayLink:v4];

    v6 = [(InteractiveAccelerometerViewController *)self displayLink];
    v5 = +[NSRunLoop currentRunLoop];
    [v6 addToRunLoop:v5 forMode:NSRunLoopCommonModes];
  }
}

- (void)stopAnimations
{
  v3 = [(InteractiveAccelerometerViewController *)self displayLink];

  if (v3)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (BOOL)determineTestingOrientation
{
  v3 = [(InteractiveAccelerometerViewController *)self inputs];
  v4 = [v3 orientationsParameter];
  v5 = [v4 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v6 = [v5 isEqualToString:@"portrait"];

  if (v6)
  {
    v7 = 1;
LABEL_13:
    [(InteractiveAccelerometerViewController *)self setTestingOrientation:v7];
    return 1;
  }

  v8 = [(InteractiveAccelerometerViewController *)self inputs];
  v9 = [v8 orientationsParameter];
  v10 = [v9 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v11 = [v10 isEqualToString:@"portraitUpsideDown"];

  if (v11)
  {
    v7 = 2;
    goto LABEL_13;
  }

  v12 = [(InteractiveAccelerometerViewController *)self inputs];
  v13 = [v12 orientationsParameter];
  v14 = [v13 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v15 = [v14 isEqualToString:@"landscapeLeft"];

  if (v15)
  {
    v7 = 3;
    goto LABEL_13;
  }

  v16 = [(InteractiveAccelerometerViewController *)self inputs];
  v17 = [v16 orientationsParameter];
  v18 = [v17 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v19 = [v18 isEqualToString:@"landscapeRight"];

  if (v19)
  {
    v7 = 4;
    goto LABEL_13;
  }

  v20 = [(InteractiveAccelerometerViewController *)self inputs];
  v21 = [v20 orientationsParameter];
  v22 = [v21 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
  v23 = [v22 isEqualToString:@"faceUp"];

  if (v23)
  {
    v7 = 5;
    goto LABEL_13;
  }

  v24 = [(InteractiveAccelerometerViewController *)self inputs];
  v25 = [v24 orientationsParameter];
  v26 = [v25 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
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
  v3 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  objc_sync_enter(v3);
  v4 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  v5 = [v4 copy];

  v6 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  [v6 removeAllObjects];

  objc_sync_exit(v3);
  if ([(InteractiveAccelerometerViewController *)self debuggingEnabled])
  {
    v11[0] = @"rawData";
    v11[1] = @"calibratedData";
    v12[0] = v5;
    v7 = [(InteractiveAccelerometerViewController *)self motionManagerData];
    v8 = [v7 copy];
    v12[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(InteractiveAccelerometerViewController *)self setNotStationaryData:v9];
  }

  v10 = [(InteractiveAccelerometerViewController *)self motionManagerData];
  [v10 removeAllObjects];
}

- (void)addStationaryData
{
  v3 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  objc_sync_enter(v3);
  v4 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  v5 = [v4 copy];
  [(InteractiveAccelerometerViewController *)self setCopiedRawComponentData:v5];

  v6 = [(InteractiveAccelerometerViewController *)self rawComponentData];
  [v6 removeAllObjects];

  objc_sync_exit(v3);
  v7 = [(InteractiveAccelerometerViewController *)self motionManagerData];
  v8 = [v7 copy];
  [(InteractiveAccelerometerViewController *)self setCopiedMotionManagerData:v8];

  if ([(InteractiveAccelerometerViewController *)self debuggingEnabled])
  {
    v13[0] = @"rawData";
    v9 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
    v13[1] = @"calibratedData";
    v14[0] = v9;
    v10 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
    v14[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(InteractiveAccelerometerViewController *)self setStationaryData:v11];
  }

  v12 = [(InteractiveAccelerometerViewController *)self motionManagerData];
  [v12 removeAllObjects];
}

- (void)checkWithinOffset
{
  v3 = [(InteractiveAccelerometerViewController *)self orientationsIndex];
  v4 = [(InteractiveAccelerometerViewController *)self inputs];
  v5 = [v4 orientationsParameter];
  v6 = [v5 count];

  if (v6 <= v3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(InteractiveAccelerometerViewController *)self inputs];
    v8 = [v7 orientationsParameter];
    v9 = [v8 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];

    if (v9)
    {
      v10 = [(InteractiveAccelerometerViewController *)self inputs];
      v11 = [v10 componentOrientationSpecifications];
      v12 = [v11 objectForKeyedSubscript:v9];

      if (v12)
      {
        v13 = [(InteractiveAccelerometerViewController *)self inputs];
        v14 = [v13 componentSensor];

        if (v14)
        {
          v15 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          v16 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", v15, @"x", [v16 count]);
          v17 = numberOrNullForDouble();

          v18 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          v19 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", v18, @"y", [v19 count]);
          v20 = numberOrNullForDouble();

          v21 = [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
          [(InteractiveAccelerometerViewController *)self copiedMotionManagerData];
        }

        else
        {
          v22 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          v23 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", v22, @"x", [v23 count]);
          v17 = numberOrNullForDouble();

          v24 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          v25 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", v24, @"y", [v25 count]);
          v20 = numberOrNullForDouble();

          v21 = [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
          [(InteractiveAccelerometerViewController *)self copiedRawComponentData];
        }
        v26 = ;
        -[InteractiveAccelerometerViewController average:key:size:](self, "average:key:size:", v21, @"z", [v26 count]);
        v27 = numberOrNullForDouble();

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v28 = self;
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

          v28 = self;
          v29 = 4294967288;
        }

        [(InteractiveAccelerometerViewController *)v28 setDidCompleteSuccessfully:v29];
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
  v3 = [(InteractiveAccelerometerViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
    [v4 invalidate];

    [(InteractiveAccelerometerViewController *)self setTimeoutTimer:0];
  }

  v5 = +[DAHIDEventMonitor sharedInstance];
  [v5 stopMonitoring];

  [(InteractiveAccelerometerViewController *)self stopAnimations];
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  [(InteractiveAccelerometerViewController *)self cleanUp];
  v5 = [(InteractiveAccelerometerViewController *)self result];
  [v5 setStatusCode:v4];

  v6 = [(InteractiveAccelerometerViewController *)self result];
  v7 = [v6 statusCode];
  if ([v7 isEqualToNumber:&off_100010CA8])
  {
    goto LABEL_8;
  }

  v8 = [(InteractiveAccelerometerViewController *)self result];
  v9 = [v8 statusCode];
  if ([v9 isEqualToNumber:&off_100010CC0])
  {
LABEL_7:

LABEL_8:
    goto LABEL_9;
  }

  v10 = [(InteractiveAccelerometerViewController *)self result];
  v11 = [v10 statusCode];
  if ([v11 isEqualToNumber:&off_100010CD8])
  {
LABEL_6:

    goto LABEL_7;
  }

  v12 = [(InteractiveAccelerometerViewController *)self result];
  v13 = [v12 statusCode];
  if ([v13 isEqualToNumber:&off_100010CF0])
  {

    goto LABEL_6;
  }

  v19 = [(InteractiveAccelerometerViewController *)self result];
  v16 = [v19 statusCode];
  v20 = [v16 isEqualToNumber:&off_100010C90];

  if ((v20 & 1) == 0)
  {
    v21 = @"orientations";
    v15 = [(InteractiveAccelerometerViewController *)self allResults];
    v22 = v15;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v18 = [(InteractiveAccelerometerViewController *)self result];
    [v18 setData:v17];

    goto LABEL_12;
  }

LABEL_9:
  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000085A0(v14);
  }

  v15 = [(InteractiveAccelerometerViewController *)self result];
  [v15 setData:&__NSDictionary0__struct];
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
  v3 = [(InteractiveAccelerometerViewController *)self timeoutTimer];

  if (v3)
  {
    v4 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
    [v4 invalidate];

    [(InteractiveAccelerometerViewController *)self setSamplingRawData:1];
    v6 = [(InteractiveAccelerometerViewController *)self inputs];
    [v6 secondsToRunOrientation];
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

  v3 = [(InteractiveAccelerometerViewController *)self debuggingEnabled];
  v4 = [(InteractiveAccelerometerViewController *)self allResults];
  if (v3)
  {
    v32[0] = @"orientation";
    v5 = [(InteractiveAccelerometerViewController *)self inputs];
    v6 = [v5 orientationsParameter];
    v7 = [v6 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
    v33[0] = v7;
    v32[1] = @"didCompleteSuccessfully";
    v8 = [NSNumber numberWithInt:[(InteractiveAccelerometerViewController *)self didCompleteSuccessfully]];
    v33[1] = v8;
    v32[2] = @"averagedRawData";
    v9 = [(InteractiveAccelerometerViewController *)self averagedRawData];
    v33[2] = v9;
    v32[3] = @"notStationaryData";
    v10 = [(InteractiveAccelerometerViewController *)self notStationaryData];
    v33[3] = v10;
    v32[4] = @"stationaryData";
    v11 = [(InteractiveAccelerometerViewController *)self stationaryData];
    v33[4] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];
    [v4 addObject:v12];
  }

  else
  {
    v30[0] = @"orientation";
    v5 = [(InteractiveAccelerometerViewController *)self inputs];
    v6 = [v5 orientationsParameter];
    v7 = [v6 objectAtIndexedSubscript:{-[InteractiveAccelerometerViewController orientationsIndex](self, "orientationsIndex")}];
    v31[0] = v7;
    v30[1] = @"didCompleteSuccessfully";
    v8 = [NSNumber numberWithInt:[(InteractiveAccelerometerViewController *)self didCompleteSuccessfully]];
    v31[1] = v8;
    v30[2] = @"averagedRawData";
    v9 = [(InteractiveAccelerometerViewController *)self averagedRawData];
    v31[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
    [v4 addObject:v10];
  }

  [(InteractiveAccelerometerViewController *)self setOrientationsIndex:[(InteractiveAccelerometerViewController *)self orientationsIndex]+ 1];
  v13 = [(InteractiveAccelerometerViewController *)self orientationsIndex];
  v14 = [(InteractiveAccelerometerViewController *)self inputs];
  v15 = [v14 orientationsParameter];
  v16 = [v15 count];

  if (v16 <= v13)
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
  v22 = [v21 testAutomationEnabled];

  if (v22)
  {
    v23 = [(InteractiveAccelerometerViewController *)self inputs];
    if ([v23 componentSensor])
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

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (IOHIDEventGetType() == 13)
  {
    IOHIDEventGetFloatValue();
    v5 = v4;
    IOHIDEventGetFloatValue();
    v7 = v6;
    IOHIDEventGetFloatValue();
    v9 = v8;
    v10 = [(InteractiveAccelerometerViewController *)self rawComponentData];
    objc_sync_enter(v10);
    v11 = [(InteractiveAccelerometerViewController *)self rawComponentData];
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
    [v11 addObject:v18];

    objc_sync_exit(v10);
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
    v25 = [(InteractiveAccelerometerViewController *)self rawComponentData];
    objc_sync_enter(v25);
    v26 = [(InteractiveAccelerometerViewController *)self rawComponentData];
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
    [v26 addObject:v33];

    objc_sync_exit(v25);
  }
}

- (void)updateDisplay:(id)a3
{
  v4 = [(CMMotionManager *)self->_manager deviceMotion];
  v5 = [v4 attitude];

  v69 = 0.0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (v5)
  {
    [v5 rotationMatrix];
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
  v10 = [(InteractiveAccelerometerViewController *)self inputs];
  v11 = [v10 componentSensor];

  if (v11 == 1)
  {
    v12 = [(InteractiveAccelerometerViewController *)self manager];
    v13 = [v12 deviceMotion];
    [v13 rotationRate];
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [(InteractiveAccelerometerViewController *)self motionManagerData];
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
    [v20 addObject:v24];
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
    v36 = [(InteractiveAccelerometerViewController *)self rotationOrientation];
    if ((v36 - 2) <= 2)
    {
      v27 = dbl_10000BA40[v36 - 2];
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
    v43 = [(InteractiveAccelerometerViewController *)self view];
    [v43 bounds];
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
    v49 = [(InteractiveAccelerometerViewController *)self levelBottom];
    v58 = v63;
    [v49 setTransform:&v58];

    v50 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    v51 = [v50 layer];
    v58 = v64;
    [v51 setTransform:&v58];

    v52 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
    v58 = v62;
    [v52 setTransform:&v58];

    v53 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
    v58 = v61;
    [v53 setTransform:&v58];

    v54 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
    v58 = v60;
    [v54 setTransform:&v58];

    v55 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
    v58 = v59;
    [v55 setTransform:&v58];

    v56 = [(InteractiveAccelerometerViewController *)self ticContainer];
    v57 = [v56 layer];
    CATransform3DMakeRotation(&v58, v31, 0.0, 0.0, 1.0);
    [v57 setTransform:&v58];

    +[CATransaction commit];
  }

  [(InteractiveAccelerometerViewController *)self setPreviousShift:v32];
  [(InteractiveAccelerometerViewController *)self setPreviousRotation:v30];
}

- (BOOL)_updateForRotation:(double)a3 shiftAngle:(double)a4
{
  [(InteractiveAccelerometerViewController *)self setCurrentShift:a4];
  [(InteractiveAccelerometerViewController *)self setCurrentRotation:a3];
  v7 = a3 * 180.0 / 3.14159265;
  [(InteractiveAccelerometerViewController *)self setDegreesShift:a4 * 180.0 / 3.14159265];
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
            v9 = [(InteractiveAccelerometerViewController *)self orientation];
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else if (a4 <= 0.0)
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v11 = [(InteractiveAccelerometerViewController *)self orientation];
  v12 = v9 != v11;
  if (v9 != v11)
  {
    v13 = [(InteractiveAccelerometerViewController *)self traitCollection];
    v14 = [v13 verticalSizeClass];

    if (v14 == 2)
    {
      [(InteractiveAccelerometerViewController *)self setPreviousOrientation:v9];
      [(InteractiveAccelerometerViewController *)self updateTicsForOrientation:v9];
    }

    else
    {
      v15 = [(InteractiveAccelerometerViewController *)self traitCollection];
      v16 = [v15 verticalSizeClass];

      if (v16 == 1)
      {
        [(InteractiveAccelerometerViewController *)self setPreviousOrientation:v9];
      }
    }

    [(InteractiveAccelerometerViewController *)self updateTicsForOrientation:v9];
  }

  [(InteractiveAccelerometerViewController *)self setOrientation:v9];
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      goto LABEL_63;
    }

    if (v9 != 2)
    {
      v7 = 0.0;
      if (v9 != 3)
      {
        goto LABEL_63;
      }

      if (a3 <= 3.14159265)
      {
        if (a3 < -3.14159265)
        {
          a3 = a3 + 6.28318531;
        }
      }

      else
      {
        a3 = -(6.28318531 - a3);
      }

      v22 = a3 + -1.57079633;
      if (a3 + -1.57079633 <= 3.14159265)
      {
        if (v22 >= -3.14159265)
        {
LABEL_53:
          v20 = a3 * 180.0 / 3.14159265;
          v21 = -90.0;
          goto LABEL_62;
        }

        v23 = 6.28318531;
      }

      else
      {
        v23 = -6.28318531;
      }

      a3 = v22 + v23 + 1.57079633;
      goto LABEL_53;
    }

    if (a3 <= 3.14159265)
    {
      if (a3 < -3.14159265)
      {
        a3 = a3 + 6.28318531;
      }
    }

    else
    {
      a3 = -(6.28318531 - a3);
    }

    v24 = a3 + -3.14159265;
    if (a3 + -3.14159265 <= 3.14159265)
    {
      if (v24 >= -3.14159265)
      {
LABEL_61:
        v20 = a3 * 180.0 / 3.14159265;
        v21 = -180.0;
        goto LABEL_62;
      }

      v25 = 6.28318531;
    }

    else
    {
      v25 = -6.28318531;
    }

    a3 = v24 + v25 + 3.14159265;
    goto LABEL_61;
  }

  if (v9 == 4)
  {
    if (a3 <= 3.14159265)
    {
      if (a3 < -3.14159265)
      {
        a3 = a3 + 6.28318531;
      }
    }

    else
    {
      a3 = -(6.28318531 - a3);
    }

    v18 = a3 + 2.35619449;
    if (a3 + 2.35619449 <= 3.14159265)
    {
      if (v18 >= -3.14159265)
      {
LABEL_45:
        v20 = a3 * 180.0 / 3.14159265;
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

    a3 = v18 + v19 + -2.35619449;
    goto LABEL_45;
  }

  if (v9 == 5)
  {
    v17 = -1.57079633;
  }

  else
  {
    v7 = 0.0;
    if (v9 != 6)
    {
      goto LABEL_63;
    }

    v17 = 1.57079633;
  }

  v7 = (a4 + v17) * 180.0 / 3.14159265;
LABEL_63:
  +[CATransaction commit];
  [(InteractiveAccelerometerViewController *)self degreesShift];
  v27 = fabs(v26);
  v28 = [(InteractiveAccelerometerViewController *)self inputs];
  [v28 degreesShiftRange];
  v30 = v29;

  v31 = [(InteractiveAccelerometerViewController *)self orientation]- 5;
  v33 = v27 < v30 || v31 < 0xFFFFFFFFFFFFFFFCLL;
  v34 = [(InteractiveAccelerometerViewController *)self inputs];
  [v34 zeroRange];
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
  v39 = [(InteractiveAccelerometerViewController *)self framesLevel];
  if (v39 > 29 != [(InteractiveAccelerometerViewController *)self isLeveled])
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

    if (v39 < 30)
    {
      v42 = 0;
    }

    else
    {
      v41 = [(InteractiveAccelerometerViewController *)self orientation];
      v42 = v41 == [(InteractiveAccelerometerViewController *)self testingOrientation];
    }

    [(InteractiveAccelerometerViewController *)self setIsLeveled:v42];
    [(InteractiveAccelerometerViewController *)self setLastLevelChange:v7];
    [(InteractiveAccelerometerViewController *)self updateColors];
    v12 = 1;
  }

  v43 = 0.0;
  if (v39 <= 29)
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
    v6 = [v54 CGColor];
    v7 = [(InteractiveAccelerometerViewController *)self levelBottom];
    [v7 setBackgroundColor:v6];

    v8 = v54;
    v9 = [v54 CGColor];
    v10 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
    [v10 setFillColor:v9];

    v11 = v54;
    v12 = [v54 CGColor];
    v13 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
    [v13 setFillColor:v12];

    v14 = v54;
    v15 = [v54 CGColor];
    v16 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
    [v16 setFillColor:v15];

    v17 = v54;
    v18 = [v54 CGColor];
    v19 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
    [v19 setFillColor:v18];

    v20 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [v20 setTextColor:v54];

    v21 = v54;
    v22 = [v54 CGColor];
    v23 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
    [v23 setBackgroundColor:v22];

    v24 = v54;
    v25 = [v54 CGColor];
    v26 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
    [v26 setBackgroundColor:v25];

    if (![(InteractiveAccelerometerViewController *)self samplingRawData])
    {
      v27 = [(InteractiveAccelerometerViewController *)self timeoutTimer];

      if (v27)
      {
        v28 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
        [v28 invalidate];

        v29 = [(InteractiveAccelerometerViewController *)self inputs];
        [v29 holdStationaryTimeout];
        v31 = "heldOrientationStationary";
LABEL_9:
        v53 = [NSTimer scheduledTimerWithTimeInterval:self target:v31 selector:0 userInfo:0 repeats:v30];
        [(InteractiveAccelerometerViewController *)self setTimeoutTimer:v53];
      }
    }
  }

  else
  {
    v32 = [v3 CGColor];
    v33 = [(InteractiveAccelerometerViewController *)self levelBottom];
    [v33 setBackgroundColor:v32];

    v34 = [v3 CGColor];
    v35 = [(InteractiveAccelerometerViewController *)self topInnerCircle];
    [v35 setFillColor:v34];

    v36 = [v3 CGColor];
    v37 = [(InteractiveAccelerometerViewController *)self topOuterCircle];
    [v37 setFillColor:v36];

    v38 = [v3 CGColor];
    v39 = [(InteractiveAccelerometerViewController *)self bottomOuterCircle];
    [v39 setFillColor:v38];

    v40 = [v3 CGColor];
    v41 = [(InteractiveAccelerometerViewController *)self bottomInnerCircle];
    [v41 setFillColor:v40];

    v42 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [v42 setTextColor:v3];

    v43 = [v3 CGColor];
    v44 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
    [v44 setBackgroundColor:v43];

    v45 = [v3 CGColor];
    v46 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
    [v46 setBackgroundColor:v45];

    if (![(InteractiveAccelerometerViewController *)self samplingRawData])
    {
      v47 = [(InteractiveAccelerometerViewController *)self timeoutTimer];

      if (v47)
      {
        v48 = [(InteractiveAccelerometerViewController *)self timeoutTimer];
        [v48 invalidate];

        v49 = [(InteractiveAccelerometerViewController *)self startDate];
        [v49 timeIntervalSinceNow];
        v51 = v50;

        v29 = [(InteractiveAccelerometerViewController *)self inputs];
        [v29 notStationaryTimeout];
        v30 = v51 + v52;
        v31 = "notStationaryTimedOut";
        goto LABEL_9;
      }
    }
  }
}

- (void)_updateOffsetLabel:(double)a3
{
  v5 = a3;
  v6 = fabs(a3);
  if (v6 < 1.0)
  {
    v7 = [(InteractiveAccelerometerViewController *)self inputs];
    [v7 zeroRange];
    v9 = v8;

    if (v6 > v9)
    {
      v5 = ((*&a3 >> 63) | 1);
    }
  }

  if ([(InteractiveAccelerometerViewController *)self lastDisplayDegrees]!= v5)
  {
    [(InteractiveAccelerometerViewController *)self setLastDisplayDegrees:v5];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"COMPASS_DEGREES" value:&stru_1000109D8 table:0];
    v20 = [NSString stringWithFormat:v11, v5];

    v12 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [v12 setText:v20];

    v13 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [v13 sizeToFit];

    v14 = [(InteractiveAccelerometerViewController *)self view];
    [v14 center];
    v16 = v15;
    v18 = v17;
    v19 = [(InteractiveAccelerometerViewController *)self degreesLabel];
    [v19 setCenter:{v16, v18}];
  }
}

- (void)updateTicsForOrientation:(int64_t)a3
{
  v4 = (a3 - 5) < 0xFFFFFFFFFFFFFFFCLL;
  v5 = [(InteractiveAccelerometerViewController *)self leftLevelTic];
  [v5 setHidden:v4];

  v6 = [(InteractiveAccelerometerViewController *)self rightLevelTic];
  [v6 setHidden:v4];
}

- (double)average:(id)a3 key:(id)a4 size:(unint64_t)a5
{
  v7 = a4;
  if (a5)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 1;
    do
    {
      v11 = [a3 objectAtIndexedSubscript:v8];
      v12 = [v11 objectForKeyedSubscript:v7];
      [v12 floatValue];
      v9 = v9 + v13;

      v8 = v10++;
    }

    while (v8 < a5);
  }

  else
  {
    v9 = 0.0;
  }

  return v9 / a5;
}

@end