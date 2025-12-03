@interface BatterySwellingViewController
- (BOOL)checkIfCorrectOrientation:(int)orientation;
- (BOOL)setupHIDForceTouchImageRecognizer;
- (id)instructionImageName;
- (id)mergeFrames:(signed __int16 *)frames;
- (signed)allocatePixelMaps;
- (void)checkAngle:(id)angle;
- (void)determineBatteryGasGaugeTemp;
- (void)deviceHasFlipped:(id)flipped;
- (void)disableSensorMonitoring;
- (void)enableSensorMonitoring;
- (void)endTestWithStatusCode:(id)code;
- (void)receivedExcessiveEventNotification:(id)notification;
- (void)samplingFinished:(id)finished;
- (void)setupAngleMonitoring;
- (void)setupAngleMotionManager;
- (void)setupExcessiveMotionNotification;
- (void)setupForSamplingCompleted:(id)completed;
- (void)setupView;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)startExcessiveMotionMonitoring;
- (void)stopExcessiveMotionMonitoring;
- (void)teardown;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation BatterySwellingViewController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(BatterySwellingViewController *)self setInputs:inputs, responder];
  [(BatterySwellingViewController *)self setFaceUpPixelMaps:0];
  [(BatterySwellingViewController *)self setFaceDownPixelMaps:0];
  [(BatterySwellingViewController *)self setIsFinishedFaceDownPixelMaps:0];
  [(BatterySwellingViewController *)self setIsFinishedFaceUpPixelMaps:0];
  [(BatterySwellingViewController *)self setIsCompleted:0];
  [(BatterySwellingViewController *)self setUpFrameNumber:0];

  [(BatterySwellingViewController *)self setDownFrameNumber:0];
}

- (void)setupAngleMotionManager
{
  v3 = objc_alloc_init(CMMotionManager);
  [(BatterySwellingViewController *)self setMotionManager:v3];

  motionManager = [(BatterySwellingViewController *)self motionManager];
  [motionManager setShowsDeviceMovementDisplay:1];

  motionManager2 = [(BatterySwellingViewController *)self motionManager];
  [motionManager2 setDeviceMotionUpdateInterval:0.00999999978];

  motionManager3 = [(BatterySwellingViewController *)self motionManager];
  [motionManager3 startDeviceMotionUpdatesUsingReferenceFrame:1];
}

- (BOOL)setupHIDForceTouchImageRecognizer
{
  Default = MTDeviceCreateDefault();
  ParserType = MTDeviceGetParserType();
  IsBuiltIn = MTDeviceIsBuiltIn();
  if (MTDeviceGetDeviceID())
  {
    v6 = -12;
  }

  else if (MTDeviceGetSensorSurfaceDimensions())
  {
    v6 = -13;
  }

  else if (MTDeviceGetTransportMethod())
  {
    v6 = -14;
  }

  else if (((ParserType < 0x3E8) & IsBuiltIn) == 1)
  {
    if (MTDeviceSetReport())
    {
      v6 = -15;
    }

    else if (MTDeviceSetReport())
    {
      v6 = -16;
    }

    else if (MTDeviceSetReport())
    {
      v6 = -17;
    }

    else if (MTDeviceSetReport())
    {
      v6 = -18;
    }

    else if (MTDeviceSetReport())
    {
      v6 = -19;
    }

    else if (MTDeviceSetReport())
    {
      v6 = -20;
    }

    else if (MTDeviceSetReport())
    {
      v6 = -21;
    }

    else if (MTDeviceStart())
    {
      v6 = -5;
    }

    else
    {
      MultitouchRunLoopSource = MTDeviceCreateMultitouchRunLoopSource();
      if (MultitouchRunLoopSource)
      {
        v10 = MultitouchRunLoopSource;
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v10, kCFRunLoopCommonModes);
        CFRelease(v10);
        self->_builtInDevice = Default;
        CFRetain(Default);
        return 1;
      }

      v6 = -24;
    }
  }

  else
  {
    v6 = -6;
  }

  v7 = [NSNumber numberWithInteger:v6];
  [(BatterySwellingViewController *)self endTestWithStatusCode:v7];

  return 0;
}

- (signed)allocatePixelMaps
{
  inputs = [(BatterySwellingViewController *)self inputs];
  pixelMapWidth = [inputs pixelMapWidth];
  inputs2 = [(BatterySwellingViewController *)self inputs];
  v6 = pixelMapWidth * [inputs2 pixelMapHeight];
  inputs3 = [(BatterySwellingViewController *)self inputs];
  v8 = malloc_type_malloc(2 * v6 * [inputs3 numFramesToRecord], 0x1000040BDFB0063uLL);

  inputs4 = [(BatterySwellingViewController *)self inputs];
  v10 = malloc_type_malloc(8 * [inputs4 numFramesToRecord], 0x10040436913F5uLL);

  inputs5 = [(BatterySwellingViewController *)self inputs];
  LODWORD(inputs3) = [inputs5 numFramesToRecord];

  if (inputs3 >= 1)
  {
    v12 = 0;
    do
    {
      inputs6 = [(BatterySwellingViewController *)self inputs];
      v14 = [inputs6 pixelMapWidth] * v12;
      inputs7 = [(BatterySwellingViewController *)self inputs];
      v10[v12] = &v8[2 * v14 * [inputs7 pixelMapHeight]];

      ++v12;
      inputs8 = [(BatterySwellingViewController *)self inputs];
      LODWORD(inputs7) = [inputs8 numFramesToRecord];
    }

    while (v12 < inputs7);
  }

  return v10;
}

- (void)start
{
  [(BatterySwellingViewController *)self setMonitoringAngle:0];
  [(BatterySwellingViewController *)self setupAngleMotionManager];
  if ([(BatterySwellingViewController *)self setupHIDForceTouchImageRecognizer])
  {
    [(BatterySwellingViewController *)self setFaceUpPixelMaps:[(BatterySwellingViewController *)self allocatePixelMaps]];
    [(BatterySwellingViewController *)self setFaceDownPixelMaps:[(BatterySwellingViewController *)self allocatePixelMaps]];
    if ([(BatterySwellingViewController *)self faceUpPixelMaps]&& [(BatterySwellingViewController *)self faceDownPixelMaps])
    {
      [(BatterySwellingViewController *)self setDeviceOrientation:5];
      [(BatterySwellingViewController *)self setupView];
      [(BatterySwellingViewController *)self setupExcessiveMotionNotification];
      [(BatterySwellingViewController *)self determineBatteryGasGaugeTemp];

      [(BatterySwellingViewController *)self enableSensorMonitoring];
    }

    else
    {

      [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C7A8];
    }
  }
}

- (void)setupView
{
  v3 = +[UIColor whiteColor];
  view = [(BatterySwellingViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = [UIImageView alloc];
  view2 = [(BatterySwellingViewController *)self view];
  [view2 bounds];
  v7 = [v5 initWithFrame:?];
  [(BatterySwellingViewController *)self setFlipInstructionImageView:v7];

  instructionImageName = [(BatterySwellingViewController *)self instructionImageName];
  if (instructionImageName)
  {
    instructionImageName2 = [(BatterySwellingViewController *)self instructionImageName];
    flipInstructionImageView = [(BatterySwellingViewController *)self flipInstructionImageView];
    [flipInstructionImageView setImage:instructionImageName2];

    flipInstructionImageView2 = [(BatterySwellingViewController *)self flipInstructionImageView];
    [flipInstructionImageView2 setAlpha:0.0];

    view3 = [(BatterySwellingViewController *)self view];
    flipInstructionImageView3 = [(BatterySwellingViewController *)self flipInstructionImageView];
    [view3 addSubview:flipInstructionImageView3];
  }

  else
  {
    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C7C0];
  }
}

- (void)setupExcessiveMotionNotification
{
  v3 = [[DAMotionDetector alloc] initWithThreshold:&off_10000C7D8];
  [(BatterySwellingViewController *)self setMotionDetectionMonitor:v3];

  motionDetectionMonitor = [(BatterySwellingViewController *)self motionDetectionMonitor];
  [motionDetectionMonitor start];
}

- (void)determineBatteryGasGaugeTemp
{
  v5 = objc_alloc_init(MultiTouchHelper);
  temperatureData = [(MultiTouchHelper *)v5 temperatureData];
  v4 = [temperatureData objectForKeyedSubscript:@"TG0B"];
  [(BatterySwellingViewController *)self setBatteryTemp:v4];
}

- (id)instructionImageName
{
  view = [(BatterySwellingViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen bounds];
  v8 = v7;
  v10 = v9;

  view2 = [(BatterySwellingViewController *)self view];
  window2 = [view2 window];
  windowScene2 = [window2 windowScene];
  screen2 = [windowScene2 screen];
  [screen2 scale];
  v16 = v15;

  v17 = +[NSMutableString string];
  [v17 appendString:@"down-"];
  v18 = [NSNumber numberWithDouble:v8 * v16];
  v19 = [NSNumber numberWithDouble:v10 * v16];
  [v17 appendFormat:@"%@-%@.png", v18, v19];

  v20 = [UIImage imageNamed:v17];

  return v20;
}

- (void)enableSensorMonitoring
{
  [(BatterySwellingViewController *)self setMonitoringAngle:1];
  [(BatterySwellingViewController *)self startExcessiveMotionMonitoring];

  [(BatterySwellingViewController *)self setTouchAllowed:0];
}

- (void)disableSensorMonitoring
{
  if ([(BatterySwellingViewController *)self monitoringAngle])
  {
    [(BatterySwellingViewController *)self setMonitoringAngle:0];
    [(BatterySwellingViewController *)self builtInDevice];
    if ((MTUnregisterImageCallback() & 1) == 0)
    {
      [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C808];
    }

    [(BatterySwellingViewController *)self stopExcessiveMotionMonitoring];

    [(BatterySwellingViewController *)self setTouchAllowed:1];
  }
}

- (void)startExcessiveMotionMonitoring
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"receivedExcessiveEventNotification:" name:@"MotionDetectedNotification" object:0];
}

- (void)stopExcessiveMotionMonitoring
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)checkAngle:(id)angle
{
  motionManager = [(BatterySwellingViewController *)self motionManager];
  deviceMotion = [motionManager deviceMotion];
  attitude = [deviceMotion attitude];

  if (attitude)
  {
    [attitude rotationMatrix];
  }

  v7 = acos(-0.0);
  if ([(BatterySwellingViewController *)self monitoringAngle])
  {
    v8 = v7 * 180.0 / 3.14159265;
    v9 = [(BatterySwellingViewController *)self checkIfCorrectOrientation:5];
    inputs = [(BatterySwellingViewController *)self inputs];
    angleTolerance = [inputs angleTolerance];
    if (v9)
    {
      v12 = (180 - angleTolerance);

      if (v8 < v12)
      {
        v13 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v14 = angleTolerance;

      if (v8 > v14)
      {
        v13 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_10:
          sub_10000501C();
        }

LABEL_11:

        [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C820];
      }
    }
  }
}

- (BOOL)checkIfCorrectOrientation:(int)orientation
{
  motionManager = [(BatterySwellingViewController *)self motionManager];
  deviceMotion = [motionManager deviceMotion];
  attitude = [deviceMotion attitude];

  if (attitude)
  {
    [attitude rotationMatrix];
  }

  v7 = acos(-0.0) + -1.57079633;
  v8 = fabs(v7 * 180.0 / 3.14159265);
  v9 = 6;
  if (v7 > 0.0)
  {
    v9 = 5;
  }

  v11 = v8 > 40.0 && v9 == orientation;

  return v11;
}

- (void)setupAngleMonitoring
{
  displayLink = [(BatterySwellingViewController *)self displayLink];

  if (!displayLink)
  {
    v4 = [CADisplayLink displayLinkWithTarget:self selector:"checkAngle:"];
    [(BatterySwellingViewController *)self setDisplayLink:v4];

    displayLink2 = [(BatterySwellingViewController *)self displayLink];
    v5 = +[NSRunLoop currentRunLoop];
    [displayLink2 addToRunLoop:v5 forMode:NSRunLoopCommonModes];
  }
}

- (void)receivedExcessiveEventNotification:(id)notification
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100005050();
  }

  [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C838];
}

- (void)setupForSamplingCompleted:(id)completed
{
  [(BatterySwellingViewController *)self builtInDevice];
  if ((MTRegisterImageCallbackWithRefcon() & 1) == 0)
  {
    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C850];
  }

  inputs = [(BatterySwellingViewController *)self inputs];
  [inputs samplingTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"sampleTimeout:" selector:0 userInfo:0 repeats:?];
  [(BatterySwellingViewController *)self setSamplingTimer:v4];
}

- (void)samplingFinished:(id)finished
{
  samplingTimer = [(BatterySwellingViewController *)self samplingTimer];
  [samplingTimer invalidate];

  [(BatterySwellingViewController *)self setSamplingTimer:0];
  [(BatterySwellingViewController *)self disableSensorMonitoring];
  if ([(BatterySwellingViewController *)self checkIfCorrectOrientation:5])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100003B08;
    v7[3] = &unk_10000C388;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:0.25];
    inputs = [(BatterySwellingViewController *)self inputs];
    [inputs flipSetupTimeout];
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"deviceHasFlipped:" selector:0 userInfo:0 repeats:?];
    [(BatterySwellingViewController *)self setFlipSetupTimer:v6];
  }

  else
  {
    [(BatterySwellingViewController *)self setIsCompleted:1];

    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C880];
  }
}

- (void)deviceHasFlipped:(id)flipped
{
  if ([(BatterySwellingViewController *)self checkIfCorrectOrientation:5])
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100005084();
    }

    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C898];
  }

  else
  {
    [(BatterySwellingViewController *)self setDeviceOrientation:6];
    [(BatterySwellingViewController *)self enableSensorMonitoring];
    flipInstructionImageView = [(BatterySwellingViewController *)self flipInstructionImageView];
    [flipInstructionImageView setAlpha:0.0];

    inputs = [(BatterySwellingViewController *)self inputs];
    [inputs samplingSetupTimeout];
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"setupForSamplingCompleted:" selector:0 userInfo:0 repeats:?];
    [(BatterySwellingViewController *)self setSamplingSetupTimer:v6];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (![(BatterySwellingViewController *)self touchAllowed:began])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000050B8();
    }

    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C8B0];
  }
}

- (id)mergeFrames:(signed __int16 *)frames
{
  v5 = &MGGetBoolAnswer_ptr;
  inputs = [(BatterySwellingViewController *)self inputs];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [inputs pixelMapHeight]);

  rowZeroAtBottom = [(BatterySwellingViewController *)self rowZeroAtBottom];
  inputs2 = [(BatterySwellingViewController *)self inputs];
  pixelMapHeight = [inputs2 pixelMapHeight];
  if (rowZeroAtBottom)
  {

    if (pixelMapHeight >= 1)
    {
      v11 = 0;
      do
      {
        inputs3 = [(BatterySwellingViewController *)self inputs];
        v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [inputs3 pixelMapWidth]);
        [v7 addObject:v13];

        inputs4 = [(BatterySwellingViewController *)self inputs];
        LODWORD(inputs3) = [inputs4 pixelMapWidth];

        if (inputs3 >= 1)
        {
          v15 = 0;
          do
          {
            inputs5 = [(BatterySwellingViewController *)self inputs];
            numFramesToRecord = [inputs5 numFramesToRecord];

            if (numFramesToRecord < 1)
            {
              v19 = 0.0;
            }

            else
            {
              v18 = 0;
              v19 = 0.0;
              do
              {
                v20 = frames[v18];
                inputs6 = [(BatterySwellingViewController *)self inputs];
                v19 = v19 + v20[(v15 + [inputs6 pixelMapWidth] * v11)];

                ++v18;
                inputs7 = [(BatterySwellingViewController *)self inputs];
                LODWORD(v20) = [inputs7 numFramesToRecord];
              }

              while (v18 < v20);
            }

            v23 = [v7 objectAtIndexedSubscript:v11];
            inputs8 = [(BatterySwellingViewController *)self inputs];
            v25 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v19 / [inputs8 numFramesToRecord]);
            [v23 addObject:v25];

            ++v15;
            inputs9 = [(BatterySwellingViewController *)self inputs];
            LODWORD(v25) = [inputs9 pixelMapWidth];
          }

          while (v15 < v25);
        }

        ++v11;
        inputs10 = [(BatterySwellingViewController *)self inputs];
        pixelMapHeight2 = [inputs10 pixelMapHeight];
      }

      while (v11 < pixelMapHeight2);
    }
  }

  else
  {

    if (pixelMapHeight >= 1)
    {
      do
      {
        v29 = v5[94];
        inputs11 = [(BatterySwellingViewController *)self inputs];
        v31 = [v29 arrayWithCapacity:{objc_msgSend(inputs11, "pixelMapWidth")}];
        [v7 addObject:v31];

        inputs12 = [(BatterySwellingViewController *)self inputs];
        LODWORD(inputs11) = [inputs12 pixelMapWidth];

        if (inputs11 >= 1)
        {
          v33 = 0;
          do
          {
            inputs13 = [(BatterySwellingViewController *)self inputs];
            numFramesToRecord2 = [inputs13 numFramesToRecord];

            if (numFramesToRecord2 < 1)
            {
              v37 = 0.0;
            }

            else
            {
              v36 = 0;
              v37 = 0.0;
              do
              {
                v38 = frames[v36];
                inputs14 = [(BatterySwellingViewController *)self inputs];
                v37 = v37 + v38[v33 + [inputs14 pixelMapWidth] * (pixelMapHeight - 1)];

                ++v36;
                inputs15 = [(BatterySwellingViewController *)self inputs];
                LODWORD(v38) = [inputs15 numFramesToRecord];
              }

              while (v36 < v38);
            }

            inputs16 = [(BatterySwellingViewController *)self inputs];
            v42 = [v7 objectAtIndexedSubscript:{(objc_msgSend(inputs16, "pixelMapHeight") - pixelMapHeight)}];
            inputs17 = [(BatterySwellingViewController *)self inputs];
            v44 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v37 / [inputs17 numFramesToRecord]);
            [v42 addObject:v44];

            ++v33;
            inputs18 = [(BatterySwellingViewController *)self inputs];
            LODWORD(v42) = [inputs18 pixelMapWidth];
          }

          while (v33 < v42);
        }

        v46 = pixelMapHeight-- <= 1;
        v5 = &MGGetBoolAnswer_ptr;
      }

      while (!v46);
    }
  }

  return v7;
}

- (void)endTestWithStatusCode:(id)code
{
  codeCopy = code;
  result = [(BatterySwellingViewController *)self result];
  [result setStatusCode:codeCopy];

  if ([(BatterySwellingViewController *)self isCompleted])
  {
    v14[0] = @"faceUpPixelMap";
    v6 = [(BatterySwellingViewController *)self mergeFrames:[(BatterySwellingViewController *)self faceUpPixelMaps]];
    v15[0] = v6;
    v14[1] = @"faceDownPixelMap";
    v7 = [(BatterySwellingViewController *)self mergeFrames:[(BatterySwellingViewController *)self faceDownPixelMaps]];
    v15[1] = v7;
    v14[2] = @"batteryTemperature";
    batteryTemp = [(BatterySwellingViewController *)self batteryTemp];
    v9 = numberOrNull(batteryTemp);
    v15[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    result2 = [(BatterySwellingViewController *)self result];
    [result2 setData:v10];

    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000050EC(self, v12);
    }

    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10000519C(codeCopy, v13);
    }
  }

  [(BatterySwellingViewController *)self setFinished:1];
}

- (void)teardown
{
  [(BatterySwellingViewController *)self disableSensorMonitoring];
  flipSetupTimer = [(BatterySwellingViewController *)self flipSetupTimer];

  if (flipSetupTimer)
  {
    flipSetupTimer2 = [(BatterySwellingViewController *)self flipSetupTimer];
    [flipSetupTimer2 invalidate];

    [(BatterySwellingViewController *)self setFlipSetupTimer:0];
  }

  samplingTimer = [(BatterySwellingViewController *)self samplingTimer];

  if (samplingTimer)
  {
    samplingTimer2 = [(BatterySwellingViewController *)self samplingTimer];
    [samplingTimer2 invalidate];

    [(BatterySwellingViewController *)self setSamplingTimer:0];
  }

  samplingSetupTimer = [(BatterySwellingViewController *)self samplingSetupTimer];

  if (samplingSetupTimer)
  {
    samplingSetupTimer2 = [(BatterySwellingViewController *)self samplingSetupTimer];
    [samplingSetupTimer2 invalidate];

    [(BatterySwellingViewController *)self setSamplingSetupTimer:0];
  }

  displayLink = [(BatterySwellingViewController *)self displayLink];

  if (displayLink)
  {
    displayLink2 = [(BatterySwellingViewController *)self displayLink];
    [displayLink2 invalidate];

    [(BatterySwellingViewController *)self setDisplayLink:0];
  }

  motionDetectionMonitor = [(BatterySwellingViewController *)self motionDetectionMonitor];

  if (motionDetectionMonitor)
  {
    motionDetectionMonitor2 = [(BatterySwellingViewController *)self motionDetectionMonitor];
    [motionDetectionMonitor2 stop];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 removeObserver:self];

    [(BatterySwellingViewController *)self setMotionDetectionMonitor:0];
  }

  if ([(BatterySwellingViewController *)self builtInDevice])
  {
    [(BatterySwellingViewController *)self builtInDevice];
    if (MTDeviceIsRunning())
    {
      [(BatterySwellingViewController *)self builtInDevice];
      MTDeviceStop();
    }

    CFRelease([(BatterySwellingViewController *)self builtInDevice]);
  }

  if ([(BatterySwellingViewController *)self faceDownPixelMaps])
  {
    free(*[(BatterySwellingViewController *)self faceDownPixelMaps]);
    free([(BatterySwellingViewController *)self faceDownPixelMaps]);
    [(BatterySwellingViewController *)self setFaceDownPixelMaps:0];
  }

  if ([(BatterySwellingViewController *)self faceUpPixelMaps])
  {
    free(*[(BatterySwellingViewController *)self faceUpPixelMaps]);
    free([(BatterySwellingViewController *)self faceUpPixelMaps]);

    [(BatterySwellingViewController *)self setFaceUpPixelMaps:0];
  }
}

@end