@interface BatterySwellingViewController
- (BOOL)checkIfCorrectOrientation:(int)a3;
- (BOOL)setupHIDForceTouchImageRecognizer;
- (id)instructionImageName;
- (id)mergeFrames:(signed __int16 *)a3;
- (signed)allocatePixelMaps;
- (void)checkAngle:(id)a3;
- (void)determineBatteryGasGaugeTemp;
- (void)deviceHasFlipped:(id)a3;
- (void)disableSensorMonitoring;
- (void)enableSensorMonitoring;
- (void)endTestWithStatusCode:(id)a3;
- (void)receivedExcessiveEventNotification:(id)a3;
- (void)samplingFinished:(id)a3;
- (void)setupAngleMonitoring;
- (void)setupAngleMotionManager;
- (void)setupExcessiveMotionNotification;
- (void)setupForSamplingCompleted:(id)a3;
- (void)setupView;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)startExcessiveMotionMonitoring;
- (void)stopExcessiveMotionMonitoring;
- (void)teardown;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation BatterySwellingViewController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(BatterySwellingViewController *)self setInputs:a3, a4];
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

  v4 = [(BatterySwellingViewController *)self motionManager];
  [v4 setShowsDeviceMovementDisplay:1];

  v5 = [(BatterySwellingViewController *)self motionManager];
  [v5 setDeviceMotionUpdateInterval:0.00999999978];

  v6 = [(BatterySwellingViewController *)self motionManager];
  [v6 startDeviceMotionUpdatesUsingReferenceFrame:1];
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
  v3 = [(BatterySwellingViewController *)self inputs];
  v4 = [v3 pixelMapWidth];
  v5 = [(BatterySwellingViewController *)self inputs];
  v6 = v4 * [v5 pixelMapHeight];
  v7 = [(BatterySwellingViewController *)self inputs];
  v8 = malloc_type_malloc(2 * v6 * [v7 numFramesToRecord], 0x1000040BDFB0063uLL);

  v9 = [(BatterySwellingViewController *)self inputs];
  v10 = malloc_type_malloc(8 * [v9 numFramesToRecord], 0x10040436913F5uLL);

  v11 = [(BatterySwellingViewController *)self inputs];
  LODWORD(v7) = [v11 numFramesToRecord];

  if (v7 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [(BatterySwellingViewController *)self inputs];
      v14 = [v13 pixelMapWidth] * v12;
      v15 = [(BatterySwellingViewController *)self inputs];
      v10[v12] = &v8[2 * v14 * [v15 pixelMapHeight]];

      ++v12;
      v16 = [(BatterySwellingViewController *)self inputs];
      LODWORD(v15) = [v16 numFramesToRecord];
    }

    while (v12 < v15);
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
  v4 = [(BatterySwellingViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [UIImageView alloc];
  v6 = [(BatterySwellingViewController *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:?];
  [(BatterySwellingViewController *)self setFlipInstructionImageView:v7];

  v13 = [(BatterySwellingViewController *)self instructionImageName];
  if (v13)
  {
    v8 = [(BatterySwellingViewController *)self instructionImageName];
    v9 = [(BatterySwellingViewController *)self flipInstructionImageView];
    [v9 setImage:v8];

    v10 = [(BatterySwellingViewController *)self flipInstructionImageView];
    [v10 setAlpha:0.0];

    v11 = [(BatterySwellingViewController *)self view];
    v12 = [(BatterySwellingViewController *)self flipInstructionImageView];
    [v11 addSubview:v12];
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

  v4 = [(BatterySwellingViewController *)self motionDetectionMonitor];
  [v4 start];
}

- (void)determineBatteryGasGaugeTemp
{
  v5 = objc_alloc_init(MultiTouchHelper);
  v3 = [(MultiTouchHelper *)v5 temperatureData];
  v4 = [v3 objectForKeyedSubscript:@"TG0B"];
  [(BatterySwellingViewController *)self setBatteryTemp:v4];
}

- (id)instructionImageName
{
  v3 = [(BatterySwellingViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 screen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(BatterySwellingViewController *)self view];
  v12 = [v11 window];
  v13 = [v12 windowScene];
  v14 = [v13 screen];
  [v14 scale];
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

- (void)checkAngle:(id)a3
{
  v4 = [(BatterySwellingViewController *)self motionManager];
  v5 = [v4 deviceMotion];
  v6 = [v5 attitude];

  if (v6)
  {
    [v6 rotationMatrix];
  }

  v7 = acos(-0.0);
  if ([(BatterySwellingViewController *)self monitoringAngle])
  {
    v8 = v7 * 180.0 / 3.14159265;
    v9 = [(BatterySwellingViewController *)self checkIfCorrectOrientation:5];
    v10 = [(BatterySwellingViewController *)self inputs];
    v11 = [v10 angleTolerance];
    if (v9)
    {
      v12 = (180 - v11);

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
      v14 = v11;

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

- (BOOL)checkIfCorrectOrientation:(int)a3
{
  v4 = [(BatterySwellingViewController *)self motionManager];
  v5 = [v4 deviceMotion];
  v6 = [v5 attitude];

  if (v6)
  {
    [v6 rotationMatrix];
  }

  v7 = acos(-0.0) + -1.57079633;
  v8 = fabs(v7 * 180.0 / 3.14159265);
  v9 = 6;
  if (v7 > 0.0)
  {
    v9 = 5;
  }

  v11 = v8 > 40.0 && v9 == a3;

  return v11;
}

- (void)setupAngleMonitoring
{
  v3 = [(BatterySwellingViewController *)self displayLink];

  if (!v3)
  {
    v4 = [CADisplayLink displayLinkWithTarget:self selector:"checkAngle:"];
    [(BatterySwellingViewController *)self setDisplayLink:v4];

    v6 = [(BatterySwellingViewController *)self displayLink];
    v5 = +[NSRunLoop currentRunLoop];
    [v6 addToRunLoop:v5 forMode:NSRunLoopCommonModes];
  }
}

- (void)receivedExcessiveEventNotification:(id)a3
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100005050();
  }

  [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C838];
}

- (void)setupForSamplingCompleted:(id)a3
{
  [(BatterySwellingViewController *)self builtInDevice];
  if ((MTRegisterImageCallbackWithRefcon() & 1) == 0)
  {
    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C850];
  }

  v5 = [(BatterySwellingViewController *)self inputs];
  [v5 samplingTimeout];
  v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"sampleTimeout:" selector:0 userInfo:0 repeats:?];
  [(BatterySwellingViewController *)self setSamplingTimer:v4];
}

- (void)samplingFinished:(id)a3
{
  v4 = [(BatterySwellingViewController *)self samplingTimer];
  [v4 invalidate];

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
    v5 = [(BatterySwellingViewController *)self inputs];
    [v5 flipSetupTimeout];
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"deviceHasFlipped:" selector:0 userInfo:0 repeats:?];
    [(BatterySwellingViewController *)self setFlipSetupTimer:v6];
  }

  else
  {
    [(BatterySwellingViewController *)self setIsCompleted:1];

    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C880];
  }
}

- (void)deviceHasFlipped:(id)a3
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
    v5 = [(BatterySwellingViewController *)self flipInstructionImageView];
    [v5 setAlpha:0.0];

    v7 = [(BatterySwellingViewController *)self inputs];
    [v7 samplingSetupTimeout];
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"setupForSamplingCompleted:" selector:0 userInfo:0 repeats:?];
    [(BatterySwellingViewController *)self setSamplingSetupTimer:v6];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (![(BatterySwellingViewController *)self touchAllowed:a3])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000050B8();
    }

    [(BatterySwellingViewController *)self endTestWithStatusCode:&off_10000C8B0];
  }
}

- (id)mergeFrames:(signed __int16 *)a3
{
  v5 = &MGGetBoolAnswer_ptr;
  v6 = [(BatterySwellingViewController *)self inputs];
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 pixelMapHeight]);

  v8 = [(BatterySwellingViewController *)self rowZeroAtBottom];
  v9 = [(BatterySwellingViewController *)self inputs];
  v10 = [v9 pixelMapHeight];
  if (v8)
  {

    if (v10 >= 1)
    {
      v11 = 0;
      do
      {
        v12 = [(BatterySwellingViewController *)self inputs];
        v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 pixelMapWidth]);
        [v7 addObject:v13];

        v14 = [(BatterySwellingViewController *)self inputs];
        LODWORD(v12) = [v14 pixelMapWidth];

        if (v12 >= 1)
        {
          v15 = 0;
          do
          {
            v16 = [(BatterySwellingViewController *)self inputs];
            v17 = [v16 numFramesToRecord];

            if (v17 < 1)
            {
              v19 = 0.0;
            }

            else
            {
              v18 = 0;
              v19 = 0.0;
              do
              {
                v20 = a3[v18];
                v21 = [(BatterySwellingViewController *)self inputs];
                v19 = v19 + v20[(v15 + [v21 pixelMapWidth] * v11)];

                ++v18;
                v22 = [(BatterySwellingViewController *)self inputs];
                LODWORD(v20) = [v22 numFramesToRecord];
              }

              while (v18 < v20);
            }

            v23 = [v7 objectAtIndexedSubscript:v11];
            v24 = [(BatterySwellingViewController *)self inputs];
            v25 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v19 / [v24 numFramesToRecord]);
            [v23 addObject:v25];

            ++v15;
            v26 = [(BatterySwellingViewController *)self inputs];
            LODWORD(v25) = [v26 pixelMapWidth];
          }

          while (v15 < v25);
        }

        ++v11;
        v27 = [(BatterySwellingViewController *)self inputs];
        v28 = [v27 pixelMapHeight];
      }

      while (v11 < v28);
    }
  }

  else
  {

    if (v10 >= 1)
    {
      do
      {
        v29 = v5[94];
        v30 = [(BatterySwellingViewController *)self inputs];
        v31 = [v29 arrayWithCapacity:{objc_msgSend(v30, "pixelMapWidth")}];
        [v7 addObject:v31];

        v32 = [(BatterySwellingViewController *)self inputs];
        LODWORD(v30) = [v32 pixelMapWidth];

        if (v30 >= 1)
        {
          v33 = 0;
          do
          {
            v34 = [(BatterySwellingViewController *)self inputs];
            v35 = [v34 numFramesToRecord];

            if (v35 < 1)
            {
              v37 = 0.0;
            }

            else
            {
              v36 = 0;
              v37 = 0.0;
              do
              {
                v38 = a3[v36];
                v39 = [(BatterySwellingViewController *)self inputs];
                v37 = v37 + v38[v33 + [v39 pixelMapWidth] * (v10 - 1)];

                ++v36;
                v40 = [(BatterySwellingViewController *)self inputs];
                LODWORD(v38) = [v40 numFramesToRecord];
              }

              while (v36 < v38);
            }

            v41 = [(BatterySwellingViewController *)self inputs];
            v42 = [v7 objectAtIndexedSubscript:{(objc_msgSend(v41, "pixelMapHeight") - v10)}];
            v43 = [(BatterySwellingViewController *)self inputs];
            v44 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v37 / [v43 numFramesToRecord]);
            [v42 addObject:v44];

            ++v33;
            v45 = [(BatterySwellingViewController *)self inputs];
            LODWORD(v42) = [v45 pixelMapWidth];
          }

          while (v33 < v42);
        }

        v46 = v10-- <= 1;
        v5 = &MGGetBoolAnswer_ptr;
      }

      while (!v46);
    }
  }

  return v7;
}

- (void)endTestWithStatusCode:(id)a3
{
  v4 = a3;
  v5 = [(BatterySwellingViewController *)self result];
  [v5 setStatusCode:v4];

  if ([(BatterySwellingViewController *)self isCompleted])
  {
    v14[0] = @"faceUpPixelMap";
    v6 = [(BatterySwellingViewController *)self mergeFrames:[(BatterySwellingViewController *)self faceUpPixelMaps]];
    v15[0] = v6;
    v14[1] = @"faceDownPixelMap";
    v7 = [(BatterySwellingViewController *)self mergeFrames:[(BatterySwellingViewController *)self faceDownPixelMaps]];
    v15[1] = v7;
    v14[2] = @"batteryTemperature";
    v8 = [(BatterySwellingViewController *)self batteryTemp];
    v9 = numberOrNull(v8);
    v15[2] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
    v11 = [(BatterySwellingViewController *)self result];
    [v11 setData:v10];

    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000050EC(self, v12);
    }

    v13 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_10000519C(v4, v13);
    }
  }

  [(BatterySwellingViewController *)self setFinished:1];
}

- (void)teardown
{
  [(BatterySwellingViewController *)self disableSensorMonitoring];
  v3 = [(BatterySwellingViewController *)self flipSetupTimer];

  if (v3)
  {
    v4 = [(BatterySwellingViewController *)self flipSetupTimer];
    [v4 invalidate];

    [(BatterySwellingViewController *)self setFlipSetupTimer:0];
  }

  v5 = [(BatterySwellingViewController *)self samplingTimer];

  if (v5)
  {
    v6 = [(BatterySwellingViewController *)self samplingTimer];
    [v6 invalidate];

    [(BatterySwellingViewController *)self setSamplingTimer:0];
  }

  v7 = [(BatterySwellingViewController *)self samplingSetupTimer];

  if (v7)
  {
    v8 = [(BatterySwellingViewController *)self samplingSetupTimer];
    [v8 invalidate];

    [(BatterySwellingViewController *)self setSamplingSetupTimer:0];
  }

  v9 = [(BatterySwellingViewController *)self displayLink];

  if (v9)
  {
    v10 = [(BatterySwellingViewController *)self displayLink];
    [v10 invalidate];

    [(BatterySwellingViewController *)self setDisplayLink:0];
  }

  v11 = [(BatterySwellingViewController *)self motionDetectionMonitor];

  if (v11)
  {
    v12 = [(BatterySwellingViewController *)self motionDetectionMonitor];
    [v12 stop];

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