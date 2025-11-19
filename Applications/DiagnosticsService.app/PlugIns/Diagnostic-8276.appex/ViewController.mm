@interface ViewController
- (UIView)storyBoardView;
- (ViewController)init;
- (ViewController)initWithCoder:(id)a3;
- (ViewControllerCallbacks)listener;
- (id).cxx_construct;
- (int)getCalibResults:(ViewController *)self focalPoint:(SEL)a2;
- (int)getJasperSensorId:(void *)a3;
- (int)getRotAnglesToPrcl:(ViewController *)self focalPoint:(SEL)a2 prcl:(Prcl *)a3;
- (int)initDiagnosticRgbjFlow;
- (int)initStreaming;
- (int)startStreaming;
- (void)addToReducedLog:(const void *)a3;
- (void)buttonClicked:(id)a3;
- (void)cancel;
- (void)compareResults:(float *)a3;
- (void)continueButtonPressed:(id)a3;
- (void)dogWatch:(id)a3;
- (void)duplicatPixelBuffer:(__CVBuffer *)a3 newBuffer:(__CVBuffer *)a4;
- (void)endTest;
- (void)error:(id)a3 details:(id)a4;
- (void)finishRun:(id)a3 reducedLog:(id)a4 result:(int)a5 prcl:(const Prcl *)a6 angles:;
- (void)handleResume;
- (void)handleSuspend;
- (void)handleUserMovement;
- (void)handleUserNoMovement;
- (void)hideInProgressView;
- (void)hideWarningWindow;
- (void)initFlow;
- (void)loadNormalAppWindow;
- (void)log:(const void *)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareIterationToNewSession;
- (void)prepareNewIteration;
- (void)primaryScalerHxISPFrameAvailableCallback:(__CVBuffer *)a3 pts:(id *)a4 streamType:(int)a5;
- (void)quitButtonTapped;
- (void)setFadedLabel:(id)a3;
- (void)setHighlightedLabel:(id)a3;
- (void)setUpperViewLabelText:(id)a3;
- (void)showInProgressView;
- (void)showPausedDialog;
- (void)showSummaryScreen:(BOOL)a3;
- (void)showWarningWindow:(id)a3 subMessage:(id)a4;
- (void)startUI;
- (void)updateProgress;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)finishRun:(id)a3 reducedLog:(id)a4 result:(int)a5 prcl:(const Prcl *)a6 angles:
{
  v10 = a3;
  v24 = a4;
  std::to_string(&v25, a5);
  v11 = std::string::insert(&v25, 0, "finishRun, result = ");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v29 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  [(ViewController *)self log:__p];
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v32 = 0;
  v14 = __p[0];
  v15 = v13;
  *(__p + *(__p[0] - 3)) = v13;
  v16 = (__p + *(__p[0] - 3));
  std::ios_base::init(v16, &__p[1]);
  v16[1].__vftable = 0;
  v16[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  std::ofstream::open();
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((__p + *(__p[0] - 3)), *&v30[*(__p[0] - 3)] | 4);
  }

  v17 = [NSData dataWithBytes:a6 length:256];
  v18 = ConvertDataToHexString(v17);
  v27 = 0;
  v25.__r_.__value_.__r.__words[0] = v14;
  *(v25.__r_.__value_.__r.__words + *(v14 - 3)) = v15;
  v19 = (&v25 + *(v25.__r_.__value_.__r.__words[0] - 24));
  std::ios_base::init(v19, &v25.__r_.__value_.__r.__words[1]);
  v19[1].__vftable = 0;
  v19[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  std::ofstream::open();
  v20 = v18;
  [(__CFString *)v18 UTF8String];
  [(__CFString *)v18 length];
  std::ostream::write();
  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v25 + *(v25.__r_.__value_.__r.__words[0] - 24)), *(&v25 + *(v25.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
  }

  v21 = [@"PrCL:" stringByAppendingString:v18];
  [v10 addObject:v21];

  [v10 writeToFile:@"/tmp/diagnostic.log" atomically:0];
  [v10 writeToFile:@"/tmp/reduced.log" atomically:0];
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();

  __p[0] = v22;
  *(__p + *(v22 - 3)) = v23;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ViewController;
  [(ViewController *)&v3 viewDidAppear:a3];
}

- (void)log:(const void *)a3
{
  v5 = self->_resultsDict;
  objc_sync_enter(v5);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    v10 = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "JasperCalibDiag %s", &v10, 0xCu);
  }

  resultsDict = self->_resultsDict;
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [(NSMutableArray *)resultsDict addObject:v9];

  objc_sync_exit(v5);
}

- (void)addToReducedLog:(const void *)a3
{
  v5 = self->_reducedLog;
  objc_sync_enter(v5);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    v10 = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "addToReducedLog %s", &v10, 0xCu);
  }

  reducedLog = self->_reducedLog;
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [(NSMutableArray *)reducedLog addObject:v9];

  objc_sync_exit(v5);
}

- (void)prepareNewIteration
{
  sub_100010A50(__p, "prepareNewIteration");
  [(ViewController *)self log:__p];
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  self->_iterationTotalSuccessfullRuns = 0;
  self->_resetExtrinsics = 1;
}

- (void)prepareIterationToNewSession
{
  self->_progress = 0.0;
  self->_lastSceneError = 0;
  self->_sessionSecondsCount = 0;
  self->_consecutiveSceneError = 0;
}

- (ViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ViewController;
  v5 = [(ViewController *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v5->_sessionMaxTimeOut = 120;
    v5->_consecutiveSceneErrorLimit = 30;
    v5->_consecutiveSceneErrorWarningLimit = 1;
    v5->_userNotMovingTimeout = 5;
    v5->_noMovementAttitudeChangeMinThreshold = 0.22;
    [(ViewController *)v5 setListener:v5];
    v6->_topTextHeight = 15;
    v6->_textMargin = 14;
  }

  return v6;
}

- (ViewController)init
{
  v3.receiver = self;
  v3.super_class = ViewController;
  result = [(ViewController *)&v3 init];
  if (result)
  {
    result->_sessionMaxTimeOut = 120;
    result->_consecutiveSceneErrorLimit = 30;
    result->_consecutiveSceneErrorWarningLimit = 1;
    result->_userNotMovingTimeout = 5;
    result->_noMovementAttitudeChangeMinThreshold = 0.22;
    result->_topTextHeight = 15;
    result->_textMargin = 14;
    result->_skipSummaryScreen = 0;
  }

  return result;
}

- (void)startUI
{
  sub_100010A50(&v33, "start UI");
  [(ViewController *)self log:&v33];
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  sub_100010A50(&v30, "_sessionMaxTimeOut ");
  std::to_string(&v29, self->_sessionMaxTimeOut);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v29;
  }

  else
  {
    v3 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v5 = std::string::append(&v30, v3, size);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_100010A50(v27, " _consecutiveSceneErrorLimit ");
  if ((v28 & 0x80u) == 0)
  {
    v7 = v27;
  }

  else
  {
    v7 = v27[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v8 = v28;
  }

  else
  {
    v8 = v27[1];
  }

  v9 = std::string::append(&v31, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, self->_consecutiveSceneErrorLimit);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v32, p_p, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v34 = v13->__r_.__value_.__r.__words[2];
  v33 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  [(ViewController *)self log:&v33];
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v15 = objc_alloc_init(NSMutableArray);
  resultsDict = self->_resultsDict;
  self->_resultsDict = v15;

  v17 = objc_alloc_init(NSMutableArray);
  reducedLog = self->_reducedLog;
  self->_reducedLog = v17;

  v19 = +[NSBundle mainBundle];
  v20 = [v19 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v21 = self->_resultsDict;
  v22 = [@"version " stringByAppendingString:v20];
  [(NSMutableArray *)v21 addObject:v22];

  self->_calibrationResult = 1;
  self->_nextResultIndex = 0;
  self->_iterationTotalSuccessfullRunsLimit = 30;
  self->_calibUpdateEachIsfEntiresLimit = 10;
  self->_iterationsLimit = 3;
  self->_watchDogCounter = 0;
  self->_sesssionIsfCount = 1;
  self->_noMovementCounter = 0;
  self->_diagnosticCMInterface = 0;
  self->_diagnosticFinalResult = -1;
  v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v24 = dispatch_queue_create("com.apple.RgbJasperCalibrationQueue", v23);
  backgroundDispatchQueue = self->_backgroundDispatchQueue;
  self->_backgroundDispatchQueue = v24;

  [(ViewController *)self loadNormalAppWindow];
}

- (void)viewDidLoad
{
  sub_100010A50(__p, "viewDidLoad");
  [(ViewController *)self log:__p];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4.receiver = self;
  v4.super_class = ViewController;
  [(ViewController *)&v4 viewDidLoad];
  self->_diagnosticFinalResult = -1;
  self->_inResume = 0;
  v3 = +[UIApplication sharedApplication];
  [v3 setIdleTimerDisabled:1];

  [(ViewController *)self startUI];
}

- (int)getJasperSensorId:(void *)a3
{
  theDict = 0;
  if (DeviceCMInterface::getJasperModuleInfo(self->_diagnosticCMInterface, &theDict))
  {
    v5 = 2;
    self->_diagnosticFinalResult = 2;
    [(ViewController *)self error:@"unable to get JasperModuleInfo" details:&stru_10002D380];
  }

  else
  {
    v6 = CFDictionaryGetValue(theDict, kFigCapturePropertyValue_ModuleSerialNumberString);
    std::string::assign(a3, [v6 UTF8String]);
    CFRelease(theDict);

    return 0;
  }

  return v5;
}

- (void)setFadedLabel:(id)a3
{
  v5 = a3;
  v3 = [UIColor colorWithDisplayP3Red:240.0 green:240.0 blue:240.0 alpha:0.5];
  [v5 setTextColor:v3];

  v4 = [UIFont systemFontOfSize:14.0];
  [v5 setFont:v4];
}

- (void)setHighlightedLabel:(id)a3
{
  v5 = a3;
  [v5 setAlpha:1.0];
  v3 = [UIFont boldSystemFontOfSize:20.0];
  [v5 setFont:v3];

  v4 = +[UIColor whiteColor];
  [v5 setTextColor:v4];
}

- (void)updateProgress
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000114C8;
  block[3] = &unk_10002CEA8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (int)startStreaming
{
  sub_100010A50(__p, "startStreaming started");
  [(ViewController *)self log:__p];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (self->_running)
  {
    return 0;
  }

  DeviceCMInterface::enableJasperRgbVideo(self->_diagnosticCMInterface);
  objc_storeStrong(&self->_streamingClient._listener, self);
  self->_diagnosticCMInterface->var1 = &self->_streamingClient;
  if (DeviceCMInterface::startRgbWideRgbStream(self->_diagnosticCMInterface))
  {
    self->_diagnosticFinalResult = 2;
    v4 = [@"return val " stringByAppendingString:@"ds"];
    [(ViewController *)self error:@"unable to start wide stream" details:v4];
  }

  else
  {
    result = DeviceCMInterface::startJasperStream(self->_diagnosticCMInterface);
    if (!result)
    {
      return result;
    }

    self->_diagnosticFinalResult = 2;
    v4 = [@"return val " stringByAppendingString:@"ds"];
    [(ViewController *)self error:@"unable to start jasper stream" details:v4];
  }

  return 2;
}

- (int)initStreaming
{
  v3 = objc_autoreleasePoolPush();
  sub_100010A50(__p, "initStreaming");
  [(ViewController *)self log:__p];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *&v7.var0 = 65537;
  v7.var4 = 16;
  if ([(ViewController *)self isPortTypeJasperDetected])
  {
    DeviceCMInterface::initAndActivateCaptureDeviceController(self->_diagnosticCMInterface);
  }

  self->_diagnosticFinalResult = 2;
  [(ViewController *)self error:@"no JasperDevice" details:&stru_10002D380];
  objc_autoreleasePoolPop(v3);
  return 2;
}

- (void)initFlow
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[UserMovementTracker alloc] init:0 noMovementAttitudeChangeMinThreshold:0 noMovementMinTimeSeconds:self->_noMovementAttitudeChangeMinThreshold startMovementTrackingNow:2.0];
  m_userMovementTracker = self->m_userMovementTracker;
  self->m_userMovementTracker = v4;

  self->_iterationNumber = 1;
  *self->_avgRotAngles = 0;
  *&self->_avgRotAngles[8] = 0;
  sub_100010A50(__p, "init flow started");
  [(ViewController *)self log:__p];
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  [(ViewController *)self prepareNewIteration];
  [(ViewController *)self prepareIterationToNewSession];
  v9 = 0;
  if (self->_iterationsLimit >= 1)
  {
    do
    {
      __p[0] = &v9;
      v6 = sub_10001B554(&self->_rgbjCalibrationResults, &v9);
      v6[6] = v6[5];
      ++v9;
    }

    while (v9 < self->_iterationsLimit);
  }

  *&self->_anon_b8[8] = *self->_anon_b8;
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"handleSuspend" name:UIApplicationDidEnterBackgroundNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"handleResume" name:UIApplicationWillEnterForegroundNotification object:0];

  [(ViewController *)self handleResume];
  [(UserMovementTracker *)self->m_userMovementTracker addObserver:self forKeyPath:@"movementState" options:1 context:0];
  objc_autoreleasePoolPop(v3);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"movementState", a4, a5, a6}])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000121A8;
    block[3] = &unk_10002CEA8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)handleUserNoMovement
{
  [(ViewController *)self showPausedDialog];
  ++self->_noMovementCounter;
  if (!self->m_noMovementQuitTimer)
  {
    LODWORD(v3) = self->_userNotMovingTimeout;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012324;
    v6[3] = &unk_10002CED0;
    v6[4] = self;
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:v3];
    m_noMovementQuitTimer = self->m_noMovementQuitTimer;
    self->m_noMovementQuitTimer = v4;
  }
}

- (void)handleUserMovement
{
  m_noMovementQuitTimer = self->m_noMovementQuitTimer;
  if (m_noMovementQuitTimer)
  {
    [(NSTimer *)m_noMovementQuitTimer invalidate];
    v4 = self->m_noMovementQuitTimer;
    self->m_noMovementQuitTimer = 0;
  }

  [(ViewController *)self hideWarningWindow];
}

- (void)showPausedDialog
{
  v3 = +[NSBundle mainBundle];
  v6 = [v3 localizedStringForKey:@"Device_Is_Motionless" value:&stru_10002D380 table:0];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Device_Is_Motionless_Subtitle" value:&stru_10002D380 table:0];

  [(ViewController *)self showWarningWindow:v6 subMessage:v5];
}

- (int)initDiagnosticRgbjFlow
{
  sub_100010A50(__p, "set rgbj configuration to frameSelect(1)  featureVector(5)  dilutionRate(500)");
  [(ViewController *)self log:__p];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (DeviceCMInterface::setRgbjConfiguration(self->_diagnosticCMInterface, 1u, 5u, 500))
  {
    v3 = @"setRgbjConfiguration failed";
  }

  else
  {
    if (!self->_resetExtrinsics)
    {
      return 0;
    }

    sub_100010A50(__p, "set wide jasper extrinsics to 0");
    [(ViewController *)self log:__p];
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    if (!DeviceCMInterface::setWideJasperExtrinsics(self->_diagnosticCMInterface, 0.0, 0.0, 1570.8, 0.0, 0.0, 0.0))
    {
      return 0;
    }

    v3 = @"error setting wide jasper extrinsics";
  }

  v4 = 2;
  self->_diagnosticFinalResult = 2;
  [(ViewController *)self error:v3 details:&stru_10002D380];
  return v4;
}

- (int)getRotAnglesToPrcl:(ViewController *)self focalPoint:(SEL)a2 prcl:(Prcl *)a3
{
  v8 = v3;
  v9 = v4;
  p_sensorId = &self->_sensorId;
  if (*(&self->_sensorId.__rep_.__l + 23) < 0)
  {
    p_sensorId = p_sensorId->__rep_.__l.__data_;
  }

  strcpy(a3->jasperSN, p_sensorId->__rep_.__s.__data_);
  CalcRotationMatrix(*&v8 / 1000.0, *(&v8 + 1) / 1000.0, *(&v8 + 2) / 1000.0, &v10);
  v10.columns[3].i32[2] = DWORD2(v9);
  v10.columns[3].i64[0] = v9;
  Simd4x3ToMatrix(&v10, a3->wideRotMatrix, a3->wideFocalPoint);
  return 0;
}

- (int)getCalibResults:(ViewController *)self focalPoint:(SEL)a2
{
  v4 = v3;
  v5 = v2;
  sub_100010A50(&__p, "getCalibResults");
  [(ViewController *)self log:&__p];
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  v27 = 0;
  if (DeviceCMInterface::getJasperCalib(self->_diagnosticCMInterface, &v27))
  {
    v7 = 2;
    self->_diagnosticFinalResult = 2;
    [(ViewController *)self error:@"unable to get JasperCalib" details:&stru_10002D380];
  }

  else
  {
    if (self->_isJasper)
    {
      v8 = JDJasperCalibCreateWithBinaryRepresentation();
      JDJasperCalibGetOperationalWideToJasperTransform();
    }

    else
    {
      v8 = PDPeridotCalibCreateWithBinaryRepresentation();
      PDPeridotCalibGetOperationalWideToPeridotTransform();
    }

    v20 = v10;
    v22 = v12;
    v24 = v14;
    __p = v9;
    v21 = v11;
    v26 = v16;
    v23 = v13;
    v25 = v15;
    CFRelease(v8);
    v17 = v25;
    *(v4 + 8) = v26;
    *v4 = v17;
    CalcRotationAngleFromMatrix(&__p, v5);
    CFRelease(v27);
    return 0;
  }

  return v7;
}

- (void)loadNormalAppWindow
{
  context = objc_autoreleasePoolPush();
  sub_100010A50(__p, "loadNormalAppWindow");
  [(ViewController *)self log:__p];
  if (v152 < 0)
  {
    operator delete(__p[0]);
  }

  self->_progress = 0.0;
  self->_overallProgress = 0.0;
  v3 = [UIView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_storyBoardView);
  [WeakRetained frame];
  v5 = [v3 initWithFrame:?];
  mainView = self->_mainView;
  self->_mainView = v5;

  v7 = objc_loadWeakRetained(&self->_storyBoardView);
  [v7 addSubview:self->_mainView];

  [(UIView *)self->_mainView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(UIView *)self->_mainView heightAnchor];
  v9 = objc_loadWeakRetained(&self->_storyBoardView);
  v10 = [v9 heightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 multiplier:1.0];
  [v11 setActive:1];

  v12 = [(UIView *)self->_mainView widthAnchor];
  v13 = objc_loadWeakRetained(&self->_storyBoardView);
  v14 = [v13 widthAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 multiplier:1.0];
  [v15 setActive:1];

  v16 = [(UIView *)self->_mainView centerXAnchor];
  v17 = objc_loadWeakRetained(&self->_storyBoardView);
  v18 = [v17 centerXAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(UIView *)self->_mainView centerYAnchor];
  v21 = objc_loadWeakRetained(&self->_storyBoardView);
  v22 = [v21 centerYAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = objc_alloc_init(UIView);
  cameraView = self->_cameraView;
  self->_cameraView = v24;

  v26 = objc_loadWeakRetained(&self->_storyBoardView);
  [v26 addSubview:self->_cameraView];

  v27 = objc_loadWeakRetained(&self->_storyBoardView);
  [v27 sendSubviewToBack:self->_cameraView];

  self->_upperViewRendered = 0;
  v28 = objc_alloc_init(UIView);
  upperView = self->_upperView;
  self->_upperView = v28;

  v30 = [(UIView *)self->_upperView layer];
  [v30 setCornerRadius:10.0];

  [(UIView *)self->_upperView setAlpha:0.5];
  v31 = +[UIColor blackColor];
  [(UIView *)self->_upperView setBackgroundColor:v31];

  [(UIView *)self->_upperView setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [(UIView *)self->_upperView widthAnchor];
  v33 = objc_loadWeakRetained(&self->_storyBoardView);
  [v33 frame];
  v35 = [v32 constraintLessThanOrEqualToConstant:v34 - (2 * self->_textMargin)];
  [v35 setActive:1];

  v36 = [(UIView *)self->_upperView widthAnchor];
  v37 = [v36 constraintEqualToConstant:0.0];
  upperTextWidthConstraint = self->_upperTextWidthConstraint;
  self->_upperTextWidthConstraint = v37;

  [(NSLayoutConstraint *)self->_upperTextWidthConstraint setActive:1];
  LODWORD(v39) = 1148813312;
  [(NSLayoutConstraint *)self->_upperTextWidthConstraint setPriority:v39];
  [(UIView *)self->_mainView addSubview:self->_upperView];
  [(UIView *)self->_upperView setHidden:1];
  v40 = [(UIView *)self->_upperView topAnchor];
  v41 = [(UIView *)self->_mainView safeAreaLayoutGuide];
  v42 = [v41 topAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:(self->_textMargin + 30.0)];
  [v43 setActive:1];

  v44 = [(UIView *)self->_upperView heightAnchor];
  v45 = [v44 constraintEqualToConstant:(self->_topTextHeight + 2 * self->_textMargin)];
  [v45 setActive:1];

  v46 = [(UIView *)self->_upperView centerXAnchor];
  v47 = [(UIView *)self->_mainView centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  [v48 setActive:1];

  v49 = objc_alloc_init(UILabel);
  upperViewLabel = self->_upperViewLabel;
  self->_upperViewLabel = v49;

  [(UILabel *)self->_upperViewLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_upperView addSubview:self->_upperViewLabel];
  [(UILabel *)self->_upperViewLabel setHidden:1];
  v51 = +[UIColor whiteColor];
  [(UILabel *)self->_upperViewLabel setTextColor:v51];

  v52 = [(UILabel *)self->_upperViewLabel topAnchor];
  v53 = [(UIView *)self->_upperView topAnchor];
  LODWORD(v54) = self->_textMargin;
  v55 = [v52 constraintEqualToAnchor:v53 constant:v54];
  [v55 setActive:1];

  v56 = [(UILabel *)self->_upperViewLabel leadingAnchor];
  v57 = [(UIView *)self->_upperView leadingAnchor];
  LODWORD(v58) = self->_textMargin;
  v59 = [v56 constraintEqualToAnchor:v57 constant:v58];
  [v59 setActive:1];

  v60 = [UIButton buttonWithType:0];
  quitButton = self->_quitButton;
  self->_quitButton = v60;

  [(UIButton *)self->_quitButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = +[UIColor blackColor];
  [(UIButton *)self->_quitButton setBackgroundColor:v62];

  v63 = [(UIButton *)self->_quitButton layer];
  [v63 setCornerRadius:15.0];

  v64 = objc_loadWeakRetained(&self->_storyBoardView);
  [v64 addSubview:self->_quitButton];

  [(UIButton *)self->_quitButton addTarget:self action:"quitButtonTapped" forControlEvents:64];
  v145 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
  v65 = [UIImage systemImageNamed:@"multiply" withConfiguration:v145];
  v66 = self->_quitButton;
  v141 = v65;
  v67 = [v65 imageWithRenderingMode:2];
  [(UIButton *)v66 setImage:v67 forState:0];

  v68 = self->_quitButton;
  v69 = +[UIColor whiteColor];
  [(UIButton *)v68 setTintColor:v69];

  v147 = [(UIButton *)self->_quitButton topAnchor];
  v148 = objc_loadWeakRetained(&self->_storyBoardView);
  v144 = [v148 topAnchor];
  v143 = [v147 constraintEqualToAnchor:30.0 constant:?];
  v155[0] = v143;
  v146 = [(UIButton *)self->_quitButton trailingAnchor];
  v70 = objc_loadWeakRetained(&self->_storyBoardView);
  v71 = [v70 trailingAnchor];
  v72 = [v146 constraintEqualToAnchor:v71 constant:-30.0];
  v155[1] = v72;
  v73 = [(UIButton *)self->_quitButton widthAnchor];
  v74 = [v73 constraintEqualToConstant:30.0];
  v155[2] = v74;
  v75 = [(UIButton *)self->_quitButton heightAnchor];
  v76 = [v75 constraintEqualToConstant:30.0];
  v155[3] = v76;
  v77 = [NSArray arrayWithObjects:v155 count:4];
  [NSLayoutConstraint activateConstraints:v77];

  v78 = [UIView alloc];
  [(UIView *)self->_mainView frame];
  v80 = v79;
  [(UIView *)self->_mainView frame];
  v81 = [v78 initWithFrame:{0.0, v80 + -184.0}];
  gradientView = self->_gradientView;
  self->_gradientView = v81;

  v149 = +[CAGradientLayer layer];
  [(UIView *)self->_gradientView bounds];
  [v149 setFrame:?];
  v83 = +[UIColor clearColor];
  v84 = v83;
  v154[0] = [v83 CGColor];
  v85 = +[UIColor blackColor];
  v86 = v85;
  v154[1] = [v85 CGColor];
  v87 = [NSArray arrayWithObjects:v154 count:2];
  [v149 setColors:v87];

  [v149 setLocations:&off_100030558];
  v88 = [(UIView *)self->_gradientView layer];
  [v88 addSublayer:v149];

  [(UIView *)self->_mainView addSubview:self->_gradientView];
  v89 = objc_alloc_init(UIProgressView);
  progressView = self->_progressView;
  self->_progressView = v89;

  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_mainView addSubview:self->_progressView];
  v91 = [(UIProgressView *)self->_progressView leadingAnchor];
  v92 = [(UIView *)self->_mainView leadingAnchor];
  v93 = [v91 constraintGreaterThanOrEqualToAnchor:v92 constant:30.0];
  [v93 setActive:1];

  v94 = [(UIProgressView *)self->_progressView trailingAnchor];
  v95 = [(UIView *)self->_mainView trailingAnchor];
  v96 = [v94 constraintLessThanOrEqualToAnchor:v95 constant:-30.0];
  [v96 setActive:1];

  v97 = [(UIProgressView *)self->_progressView leadingAnchor];
  v98 = [(UIView *)self->_mainView safeAreaLayoutGuide];
  v99 = [v98 leadingAnchor];
  v100 = [v97 constraintGreaterThanOrEqualToAnchor:v99 constant:30.0];
  [v100 setActive:1];

  v101 = [(UIProgressView *)self->_progressView trailingAnchor];
  v102 = [(UIView *)self->_mainView safeAreaLayoutGuide];
  v103 = [v102 trailingAnchor];
  v104 = [v101 constraintLessThanOrEqualToAnchor:v103 constant:-30.0];
  [v104 setActive:1];

  v105 = [(UIProgressView *)self->_progressView widthAnchor];
  v106 = [v105 constraintEqualToConstant:334.0];
  [v106 setActive:1];

  v107 = [(UIProgressView *)self->_progressView heightAnchor];
  v108 = [v107 constraintEqualToConstant:4.0];
  [v108 setActive:1];

  v109 = [(UIProgressView *)self->_progressView centerXAnchor];
  v110 = objc_loadWeakRetained(&self->_storyBoardView);
  v111 = [v110 centerXAnchor];
  v112 = [v109 constraintEqualToAnchor:v111];
  [v112 setActive:1];

  v113 = [(UIProgressView *)self->_progressView bottomAnchor];
  v114 = [(UIView *)self->_mainView safeAreaLayoutGuide];
  v115 = [v114 bottomAnchor];
  v116 = [v113 constraintEqualToAnchor:v115 constant:-46.0];
  [v116 setActive:1];

  [(UIProgressView *)self->_progressView setClipsToBounds:1];
  [(UIProgressView *)self->_progressView setProgressViewStyle:0];
  v117 = +[UIColor whiteColor];
  [(UIProgressView *)self->_progressView setTintColor:v117];

  v118 = +[UIColor blackColor];
  [(UIProgressView *)self->_progressView setTrackTintColor:v118];

  v119 = [(UIProgressView *)self->_progressView layer];
  [v119 setCornerRadius:2.0];

  v120 = objc_alloc_init(UIView);
  middleView = self->_middleView;
  self->_middleView = v120;

  [(UIView *)self->_middleView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_middleView setAlpha:0.5];
  [(UIView *)self->_mainView addSubview:self->_middleView];
  v122 = [(UIView *)self->_middleView widthAnchor];
  v123 = [(UIView *)self->_mainView widthAnchor];
  v124 = [v122 constraintEqualToAnchor:v123 multiplier:1.0];
  [v124 setActive:1];

  v125 = [(UIView *)self->_middleView centerXAnchor];
  v126 = [(UIView *)self->_mainView centerXAnchor];
  v127 = [v125 constraintEqualToAnchor:v126];
  [v127 setActive:1];

  v128 = [(UIView *)self->_middleView heightAnchor];
  v129 = [(UIView *)self->_mainView heightAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 multiplier:0.73];
  [v130 setActive:1];

  [(UIView *)self->_mainView addSubview:self->_bottomView];
  v131 = objc_alloc_init(UIImageView);
  imageView = self->_imageView;
  self->_imageView = v131;

  [(UIView *)self->_cameraView addSubview:self->_imageView];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_imageView setContentMode:2];
  v150 = [(UIImageView *)self->_imageView heightAnchor];
  v133 = objc_loadWeakRetained(&self->_storyBoardView);
  v134 = [v133 heightAnchor];
  v135 = [v150 constraintEqualToAnchor:v134];
  v153[0] = v135;
  v136 = [(UIImageView *)self->_imageView widthAnchor];
  v137 = objc_loadWeakRetained(&self->_storyBoardView);
  v138 = [v137 widthAnchor];
  v139 = [v136 constraintEqualToAnchor:v138];
  v153[1] = v139;
  v140 = [NSArray arrayWithObjects:v153 count:2];
  [NSLayoutConstraint activateConstraints:v140];

  self->_uiStreamType = 0;
  self->_calibrationResult = 2;
  [(ViewController *)self showInProgressView];
  [(ViewController *)self initFlow];

  objc_autoreleasePoolPop(context);
}

- (void)compareResults:(float *)a3
{
  sub_100010A50(&v46, "compareResults started");
  [(ViewController *)self log:&v46];
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  v5 = *self->_anon_b8;
  v6 = *&self->_anon_b8[8];
  v7 = v6 - v5;
  if (v6 == v5)
  {
    v10 = 0uLL;
  }

  else
  {
    v8 = 0;
    v9 = v7 >> 4;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 0uLL;
    do
    {
      v11 = v9;
      v12 = *self->_anon_b8;
      do
      {
        v13 = *v12++;
        v14 = vsubq_f32(*(v5 + 16 * v8), v13);
        v15 = vabs_f32(*v14.f32);
        *&v10 = vbsl_s8(vcgt_f32(v15, *&v10), v15, *&v10);
        v16 = fabsf(v14.f32[2]);
        if (*(&v10 + 2) >= v16)
        {
          v16 = *(&v10 + 2);
        }

        *(&v10 + 2) = v16;
        --v11;
      }

      while (v11);
      ++v8;
    }

    while (v8 != v9);
  }

  __val = v10;
  v46 = 0;
  v47 = 0uLL;
  sub_10001B820(&v41, 0x10uLL);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v41;
  }

  else
  {
    v17 = v41.__r_.__value_.__r.__words[0];
  }

  strcpy(v17, "maxDiff x,y,z = ");
  std::to_string(&v40, *&__val);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v40;
  }

  else
  {
    v18 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v41, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v42, " ");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = *(&__val + 1);
  std::to_string(&v39, *(&__val + 1));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v39;
  }

  else
  {
    v25 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v39.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v43, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v44, " ");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v38, *(&__val + 2));
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v38;
  }

  else
  {
    v31 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v38.__r_.__value_.__l.__size_;
  }

  v33 = std::string::append(&v45, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v48[0] = v33->__r_.__value_.__l.__size_;
  *(v48 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v46 = v34;
  *(&v47 + 7) = *(v48 + 7);
  *&v47 = v48[0];
  HIBYTE(v47) = v35;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  [(ViewController *)self log:&v46, __val];
  if (__vala > *a3 || v24 > a3[1] || *(&__val + 2) > a3[2])
  {
    self->_diagnosticFinalResult = -3;
  }

  else
  {
    self->_diagnosticFinalResult = 0;
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }
}

- (void)dogWatch:(id)a3
{
  v4 = a3;
  if (!self->_running)
  {
    goto LABEL_166;
  }

  v5 = [(ViewController *)self imageView];
  [v5 setAlpha:1.0];

  if (DeviceCMInterface::getRgbjReport(self->_diagnosticCMInterface, &__val, &__val + 1, &__val + 3, v316, &v316[1]))
  {
    goto LABEL_166;
  }

  if (v316[1] == 1)
  {
    sub_100010A50(__p, "Driver reported disk is full with RgbjReport_FailedToSave");
    [(ViewController *)self log:__p];
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    self->_diagnosticFinalResult = -913;
    backgroundDispatchQueue = self->_backgroundDispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017224;
    block[3] = &unk_10002CEA8;
    block[4] = self;
    dispatch_async(backgroundDispatchQueue, block);
  }

  self->_watchDogJasperFramesCount = self->_jasperFramesCount;
  DWORD2(__val) = __val - DWORD1(__val);
  self->_resetExtrinsics = 0;
  ++self->_watchDogCounter;
  p_iterationNumber = &self->_iterationNumber;
  *__p = &self->_iterationNumber;
  v8 = sub_10001B554(&self->_rgbjCalibrationResults, &self->_iterationNumber);
  v9 = v8;
  v11 = v8[6];
  v10 = v8[7];
  if (v11 >= v10)
  {
    v14 = v8[5];
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100002F44();
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v14) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      sub_10001B8AC((v8 + 5), v18);
    }

    v19 = 24 * v15;
    v20 = __val;
    *(v19 + 16) = *v316;
    *v19 = v20;
    v13 = 24 * v15 + 24;
    v21 = v8[5];
    v22 = v8[6] - v21;
    v23 = 24 * v15 - v22;
    memcpy((v19 - v22), v21, v22);
    v24 = v9[5];
    v9[5] = v23;
    v9[6] = v13;
    v9[7] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    v12 = __val;
    *(v11 + 16) = *v316;
    *v11 = v12;
    v13 = v11 + 24;
  }

  v9[6] = v13;
  *__p = &self->_iterationNumber;
  v25 = sub_10001B554(&self->_rgbjCalibrationResults, &self->_iterationNumber);
  if (v25[6] - v25[5] == 24)
  {
    [(ViewController *)self hideInProgressView];
    [(ViewController *)self hideWarningWindow];
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"Pan_Slowly" value:&stru_10002D380 table:0];
    [(ViewController *)self setUpperViewLabelText:v27];

    goto LABEL_166;
  }

  memset(&v313, 0, sizeof(v313));
  std::to_string(&v300, __val);
  v28 = std::string::insert(&v300, 0, "newsframesReachedController ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v301.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v301.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v301, " framesPassedController ");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v302.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v302.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v299, SDWORD1(__val));
  if ((v299.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v299;
  }

  else
  {
    v32 = v299.__r_.__value_.__r.__words[0];
  }

  if ((v299.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v299.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v299.__r_.__value_.__l.__size_;
  }

  v34 = std::string::append(&v302, v32, size);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v319.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v319.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v319, " ");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v320.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&v320.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = std::string::append(&v320, "IsfSuccessCount ");
  v39 = *&v38->__r_.__value_.__l.__data_;
  v303.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v303.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v298, SHIDWORD(__val));
  if ((v298.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &v298;
  }

  else
  {
    v40 = v298.__r_.__value_.__r.__words[0];
  }

  if ((v298.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = HIBYTE(v298.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v41 = v298.__r_.__value_.__l.__size_;
  }

  v42 = std::string::append(&v303, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v304.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
  *&v304.__r_.__value_.__l.__data_ = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  v44 = std::string::append(&v304, " ");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v305.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v305.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v305, "IsfFailedCount ");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v306.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
  *&v306.__r_.__value_.__l.__data_ = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v297, v316[0]);
  if ((v297.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v297;
  }

  else
  {
    v48 = v297.__r_.__value_.__r.__words[0];
  }

  if ((v297.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = HIBYTE(v297.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v49 = v297.__r_.__value_.__l.__size_;
  }

  v50 = std::string::append(&v306, v48, v49);
  v51 = *&v50->__r_.__value_.__l.__data_;
  v307.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&v307.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v307, " ");
  v53 = *&v52->__r_.__value_.__l.__data_;
  v308.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v308.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v308, "framesFailedController ");
  v55 = *&v54->__r_.__value_.__l.__data_;
  v309.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
  *&v309.__r_.__value_.__l.__data_ = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v296, SDWORD2(__val));
  if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &v296;
  }

  else
  {
    v56 = v296.__r_.__value_.__r.__words[0];
  }

  if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = HIBYTE(v296.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = v296.__r_.__value_.__l.__size_;
  }

  v58 = std::string::append(&v309, v56, v57);
  v59 = *&v58->__r_.__value_.__l.__data_;
  v310.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
  *&v310.__r_.__value_.__l.__data_ = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(&v310, " ");
  v61 = *&v60->__r_.__value_.__l.__data_;
  v311.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v311.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v62 = std::string::append(&v311, "RgbjReportFailedToSave ");
  v63 = *&v62->__r_.__value_.__l.__data_;
  v312.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v312.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v295, v316[1]);
  if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = &v295;
  }

  else
  {
    v64 = v295.__r_.__value_.__r.__words[0];
  }

  if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = HIBYTE(v295.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v65 = v295.__r_.__value_.__l.__size_;
  }

  v66 = std::string::append(&v312, v64, v65);
  v67 = *&v66->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v66->__r_.__value_.__l + 2);
  *__p = v67;
  v66->__r_.__value_.__l.__size_ = 0;
  v66->__r_.__value_.__r.__words[2] = 0;
  v66->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v68 = __p;
  }

  else
  {
    v68 = *__p;
  }

  if (__p[23] >= 0)
  {
    v69 = __p[23];
  }

  else
  {
    v69 = *&__p[8];
  }

  std::string::append(&v313, v68, v69);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v295.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v311.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v297.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v306.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v305.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v298.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v320.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v301.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v300.__r_.__value_.__l.__data_);
  }

  [(ViewController *)self log:&v313];
  *__p = &self->_iterationNumber;
  v70 = sub_10001B554(&self->_rgbjCalibrationResults, &self->_iterationNumber);
  *__p = &self->_iterationNumber;
  v71 = sub_10001B554(&self->_rgbjCalibrationResults, &self->_iterationNumber);
  v73 = v71[5];
  v72 = v71[6];
  v74 = v70[5];
  std::string::assign(&v313, "");
  v75 = v74 + v72 - v73;
  std::to_string(&v319, *(v75 - 48));
  v76 = std::string::insert(&v319, 0, "lastframesReachedController ");
  v77 = *&v76->__r_.__value_.__l.__data_;
  v320.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
  *&v320.__r_.__value_.__l.__data_ = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&v320, " framesPassedController ");
  v79 = *&v78->__r_.__value_.__l.__data_;
  v303.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
  *&v303.__r_.__value_.__l.__data_ = v79;
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v302, *(v75 - 44));
  if ((v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = &v302;
  }

  else
  {
    v80 = v302.__r_.__value_.__r.__words[0];
  }

  if ((v302.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = HIBYTE(v302.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v81 = v302.__r_.__value_.__l.__size_;
  }

  v82 = std::string::append(&v303, v80, v81);
  v83 = *&v82->__r_.__value_.__l.__data_;
  v304.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
  *&v304.__r_.__value_.__l.__data_ = v83;
  v82->__r_.__value_.__l.__size_ = 0;
  v82->__r_.__value_.__r.__words[2] = 0;
  v82->__r_.__value_.__r.__words[0] = 0;
  v84 = std::string::append(&v304, " ");
  v85 = *&v84->__r_.__value_.__l.__data_;
  v305.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
  *&v305.__r_.__value_.__l.__data_ = v85;
  v84->__r_.__value_.__l.__size_ = 0;
  v84->__r_.__value_.__r.__words[2] = 0;
  v84->__r_.__value_.__r.__words[0] = 0;
  v86 = std::string::append(&v305, "IsfSuccessCount ");
  v87 = *&v86->__r_.__value_.__l.__data_;
  v306.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
  *&v306.__r_.__value_.__l.__data_ = v87;
  v86->__r_.__value_.__l.__size_ = 0;
  v86->__r_.__value_.__r.__words[2] = 0;
  v86->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v301, *(v75 - 36));
  if ((v301.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &v301;
  }

  else
  {
    v88 = v301.__r_.__value_.__r.__words[0];
  }

  if ((v301.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = HIBYTE(v301.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v89 = v301.__r_.__value_.__l.__size_;
  }

  v90 = std::string::append(&v306, v88, v89);
  v91 = *&v90->__r_.__value_.__l.__data_;
  v307.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
  *&v307.__r_.__value_.__l.__data_ = v91;
  v90->__r_.__value_.__l.__size_ = 0;
  v90->__r_.__value_.__r.__words[2] = 0;
  v90->__r_.__value_.__r.__words[0] = 0;
  v92 = std::string::append(&v307, " ");
  v93 = *&v92->__r_.__value_.__l.__data_;
  v308.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
  *&v308.__r_.__value_.__l.__data_ = v93;
  v92->__r_.__value_.__l.__size_ = 0;
  v92->__r_.__value_.__r.__words[2] = 0;
  v92->__r_.__value_.__r.__words[0] = 0;
  v94 = std::string::append(&v308, "IsfFailedCount ");
  v95 = *&v94->__r_.__value_.__l.__data_;
  v309.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
  *&v309.__r_.__value_.__l.__data_ = v95;
  v94->__r_.__value_.__l.__size_ = 0;
  v94->__r_.__value_.__r.__words[2] = 0;
  v94->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v300, *(v75 - 32));
  if ((v300.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &v300;
  }

  else
  {
    v96 = v300.__r_.__value_.__r.__words[0];
  }

  if ((v300.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v97 = HIBYTE(v300.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v97 = v300.__r_.__value_.__l.__size_;
  }

  v98 = std::string::append(&v309, v96, v97);
  v99 = *&v98->__r_.__value_.__l.__data_;
  v310.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
  *&v310.__r_.__value_.__l.__data_ = v99;
  v98->__r_.__value_.__l.__size_ = 0;
  v98->__r_.__value_.__r.__words[2] = 0;
  v98->__r_.__value_.__r.__words[0] = 0;
  v100 = std::string::append(&v310, " ");
  v101 = *&v100->__r_.__value_.__l.__data_;
  v311.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v311.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  v102 = std::string::append(&v311, "framesFailedController ");
  v103 = *&v102->__r_.__value_.__l.__data_;
  v312.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
  *&v312.__r_.__value_.__l.__data_ = v103;
  v102->__r_.__value_.__l.__size_ = 0;
  v102->__r_.__value_.__r.__words[2] = 0;
  v102->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v299, *(v75 - 40));
  if ((v299.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v104 = &v299;
  }

  else
  {
    v104 = v299.__r_.__value_.__r.__words[0];
  }

  if ((v299.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v105 = HIBYTE(v299.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v105 = v299.__r_.__value_.__l.__size_;
  }

  v106 = std::string::append(&v312, v104, v105);
  v107 = *&v106->__r_.__value_.__l.__data_;
  *&__p[16] = *(&v106->__r_.__value_.__l + 2);
  *__p = v107;
  v106->__r_.__value_.__l.__size_ = 0;
  v106->__r_.__value_.__r.__words[2] = 0;
  v106->__r_.__value_.__r.__words[0] = 0;
  if (__p[23] >= 0)
  {
    v108 = __p;
  }

  else
  {
    v108 = *__p;
  }

  if (__p[23] >= 0)
  {
    v109 = __p[23];
  }

  else
  {
    v109 = *&__p[8];
  }

  std::string::append(&v313, v108, v109);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v299.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v312.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v311.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v310.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v300.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v309.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v301.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v306.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v305.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v304.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v303.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v320.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  [(ViewController *)self log:&v313];
  v110 = +[NSBundle mainBundle];
  v111 = [v110 localizedStringForKey:@"Pan_Slowly" value:&stru_10002D380 table:0];
  [(ViewController *)self setUpperViewLabelText:v111];

  if (self->m_noMovementQuitTimer)
  {
    goto LABEL_164;
  }

  v278 = 560;
  if (!self->_isJasper && self->_lastSceneError == 2)
  {
    self->_lastSceneError = 0;
    [(ViewController *)self hideWarningWindow];
  }

  if (SHIDWORD(__val) > *(v75 - 36))
  {
    self->_consecutiveSceneError = 0;
    progress = self->_progress;
    std::to_string(&v312, progress);
    v113 = std::string::insert(&v312, 0, "currProgress ");
    v114 = *&v113->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v113->__r_.__value_.__l + 2);
    *__p = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    [(ViewController *)self log:__p];
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v312.__r_.__value_.__l.__data_);
    }

    v115 = SHIDWORD(__val) / self->_calibUpdateEachIsfEntiresLimit;
    self->_progress = v115;
    std::to_string(&v312, v115);
    v116 = std::string::insert(&v312, 0, "New progress per cycle ");
    v117 = *&v116->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v116->__r_.__value_.__l + 2);
    *__p = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    [(ViewController *)self log:__p];
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v312.__r_.__value_.__l.__data_);
    }

    v118 = self->_overallProgress + ((self->_progress - progress) / 9.0);
    self->_overallProgress = v118;
    std::to_string(&v312, v118);
    v119 = std::string::insert(&v312, 0, "_overallProgress ");
    v120 = *&v119->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v119->__r_.__value_.__l + 2);
    *__p = v120;
    v119->__r_.__value_.__l.__size_ = 0;
    v119->__r_.__value_.__r.__words[2] = 0;
    v119->__r_.__value_.__r.__words[0] = 0;
    [(ViewController *)self log:__p];
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v312.__r_.__value_.__l.__data_);
    }

    self->_lastSceneError = 0;
    [(ViewController *)self updateProgress];
    [(ViewController *)self hideInProgressView];
    [(ViewController *)self hideWarningWindow];
    goto LABEL_195;
  }

  if (v316[0] > *(v75 - 32))
  {
    self->_lastSceneError = 2;
    v121 = self->_consecutiveSceneError + 1;
    self->_consecutiveSceneError = v121;
    if (v121 < self->_consecutiveSceneErrorWarningLimit)
    {
      goto LABEL_195;
    }

    v122 = +[NSBundle mainBundle];
    v123 = [v122 localizedStringForKey:@"Bad_Scene" value:&stru_10002D380 table:0];
    v124 = +[NSBundle mainBundle];
    v125 = [v124 localizedStringForKey:@"Bad_Scene_Subtitle" value:&stru_10002D380 table:0];
    [(ViewController *)self showWarningWindow:v123 subMessage:v125];

    v126 = +[NSBundle mainBundle];
    v127 = [v126 localizedStringForKey:@"Pan_Slowly" value:&stru_10002D380 table:0];
    [(ViewController *)self setUpperViewLabelText:v127];
    goto LABEL_194;
  }

  if (SDWORD1(__val) <= *(v75 - 44))
  {
    if (SDWORD2(__val) <= *(v75 - 40))
    {
      goto LABEL_195;
    }

    self->_lastSceneError = 1;
    v128 = self->_consecutiveSceneError + 1;
    self->_consecutiveSceneError = v128;
    if (v128 < self->_consecutiveSceneErrorWarningLimit)
    {
      goto LABEL_195;
    }

    v126 = +[NSBundle mainBundle];
    v127 = [v126 localizedStringForKey:@"No_Objects_Found" value:&stru_10002D380 table:0];
    v129 = +[NSBundle mainBundle];
    v130 = [v129 localizedStringForKey:@"No_Objects_Found_Subtitle" value:&stru_10002D380 table:0];
    [(ViewController *)self showWarningWindow:v127 subMessage:v130];

LABEL_194:
    goto LABEL_195;
  }

  if (self->_lastSceneError != 2)
  {
    [(ViewController *)self hideWarningWindow];
    self->_lastSceneError = 0;
  }

  [(ViewController *)self hideInProgressView];
LABEL_195:
  if (SHIDWORD(__val) < self->_calibUpdateEachIsfEntiresLimit)
  {
    sessionSecondsCount = self->_sessionSecondsCount;
    self->_sessionSecondsCount = sessionSecondsCount + 1;
    if (sessionSecondsCount >= self->_sessionMaxTimeOut || self->_consecutiveSceneError > self->_consecutiveSceneErrorLimit)
    {
      std::to_string(&v306, sessionSecondsCount + 1);
      v132 = std::string::insert(&v306, 0, "sessionTimeOutTimer timeout _sessionSecondsCount");
      v133 = *&v132->__r_.__value_.__l.__data_;
      v307.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
      *&v307.__r_.__value_.__l.__data_ = v133;
      v132->__r_.__value_.__l.__size_ = 0;
      v132->__r_.__value_.__r.__words[2] = 0;
      v132->__r_.__value_.__r.__words[0] = 0;
      v134 = std::string::append(&v307, " _consecutiveSceneError ");
      v135 = *&v134->__r_.__value_.__l.__data_;
      v308.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
      *&v308.__r_.__value_.__l.__data_ = v135;
      v134->__r_.__value_.__l.__size_ = 0;
      v134->__r_.__value_.__r.__words[2] = 0;
      v134->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v305, self->_consecutiveSceneError);
      if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v136 = &v305;
      }

      else
      {
        v136 = v305.__r_.__value_.__r.__words[0];
      }

      if ((v305.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v137 = HIBYTE(v305.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v137 = v305.__r_.__value_.__l.__size_;
      }

      v138 = std::string::append(&v308, v136, v137);
      v139 = *&v138->__r_.__value_.__l.__data_;
      v309.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
      *&v309.__r_.__value_.__l.__data_ = v139;
      v138->__r_.__value_.__l.__size_ = 0;
      v138->__r_.__value_.__r.__words[2] = 0;
      v138->__r_.__value_.__r.__words[0] = 0;
      v140 = std::string::append(&v309, " _sessionMaxTimeOut ");
      v141 = *&v140->__r_.__value_.__l.__data_;
      v310.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
      *&v310.__r_.__value_.__l.__data_ = v141;
      v140->__r_.__value_.__l.__size_ = 0;
      v140->__r_.__value_.__r.__words[2] = 0;
      v140->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v304, self->_sessionMaxTimeOut);
      if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = &v304;
      }

      else
      {
        v142 = v304.__r_.__value_.__r.__words[0];
      }

      if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v143 = HIBYTE(v304.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v143 = v304.__r_.__value_.__l.__size_;
      }

      v144 = std::string::append(&v310, v142, v143);
      v145 = *&v144->__r_.__value_.__l.__data_;
      v311.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
      *&v311.__r_.__value_.__l.__data_ = v145;
      v144->__r_.__value_.__l.__size_ = 0;
      v144->__r_.__value_.__r.__words[2] = 0;
      v144->__r_.__value_.__r.__words[0] = 0;
      v146 = std::string::append(&v311, " _consecutiveSceneErrorLimit ");
      v147 = *&v146->__r_.__value_.__l.__data_;
      v312.__r_.__value_.__r.__words[2] = v146->__r_.__value_.__r.__words[2];
      *&v312.__r_.__value_.__l.__data_ = v147;
      v146->__r_.__value_.__l.__size_ = 0;
      v146->__r_.__value_.__r.__words[2] = 0;
      v146->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v303, self->_consecutiveSceneErrorLimit);
      if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v148 = &v303;
      }

      else
      {
        v148 = v303.__r_.__value_.__r.__words[0];
      }

      if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v149 = HIBYTE(v303.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v149 = v303.__r_.__value_.__l.__size_;
      }

      v150 = std::string::append(&v312, v148, v149);
      v151 = *&v150->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v150->__r_.__value_.__l + 2);
      *__p = v151;
      v150->__r_.__value_.__l.__size_ = 0;
      v150->__r_.__value_.__r.__words[2] = 0;
      v150->__r_.__value_.__r.__words[0] = 0;
      [(ViewController *)self log:__p];
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v303.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v312.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v311.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v304.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v310.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v309.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v305.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v308.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v307.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v306.__r_.__value_.__l.__data_);
      }

      [(ViewController *)self handleSuspend];
      v152 = +[NSBundle mainBundle];
      v153 = [v152 localizedStringForKey:@"Timed_Out" value:&stru_10002D380 table:0];
      [(ViewController *)self showWarningWindow:v153 subMessage:&stru_10002D380];

      v154 = [(ViewController *)self upperView];
      [v154 setHidden:1];

      v155 = self->_backgroundDispatchQueue;
      v280[0] = _NSConcreteStackBlock;
      v280[1] = 3221225472;
      v280[2] = sub_100017428;
      v280[3] = &unk_10002CEA8;
      v280[4] = self;
      dispatch_async(v155, v280);
    }

    goto LABEL_164;
  }

  sub_100010A50(__p, "dogWatch finishing sub iteration");
  [(ViewController *)self log:__p];
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  ++self->_sesssionIsfCount;
  self->_running = 0;
  v156 = &_dispatch_main_q;
  v294[0] = _NSConcreteStackBlock;
  v294[1] = 3221225472;
  v294[2] = sub_10001722C;
  v294[3] = &unk_10002CEA8;
  v294[4] = self;
  dispatch_async(&_dispatch_main_q, v294);

  if (DeviceCMInterface::forceSaveWideJasperCalib(self->_diagnosticCMInterface))
  {
    [(ViewController *)self error:@"failed to forceSaveWideJasperCalib" details:&stru_10002D380];
    goto LABEL_164;
  }

  DWORD2(v293) = 0;
  *&v293 = 0;
  v292 = 0;
  v291 = 0;
  if (![(ViewController *)self getCalibResults:&v293 focalPoint:&v291])
  {
    memset(&v312, 0, sizeof(v312));
    sub_1000142DC("iteration ", &v312.__r_.__value_.__l.__data_, &v297.__r_.__value_.__l.__data_);
    std::to_string(&v296, *p_iterationNumber);
    if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v157 = &v296;
    }

    else
    {
      v157 = v296.__r_.__value_.__r.__words[0];
    }

    if ((v296.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v158 = HIBYTE(v296.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v158 = v296.__r_.__value_.__l.__size_;
    }

    v159 = std::string::append(&v297, v157, v158);
    v160 = *&v159->__r_.__value_.__l.__data_;
    v298.__r_.__value_.__r.__words[2] = v159->__r_.__value_.__r.__words[2];
    *&v298.__r_.__value_.__l.__data_ = v160;
    v159->__r_.__value_.__l.__size_ = 0;
    v159->__r_.__value_.__r.__words[2] = 0;
    v159->__r_.__value_.__r.__words[0] = 0;
    v161 = std::string::append(&v298, " Iteration Total Successfull Runs ");
    v162 = *&v161->__r_.__value_.__l.__data_;
    v299.__r_.__value_.__r.__words[2] = v161->__r_.__value_.__r.__words[2];
    *&v299.__r_.__value_.__l.__data_ = v162;
    v161->__r_.__value_.__l.__size_ = 0;
    v161->__r_.__value_.__r.__words[2] = 0;
    v161->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v295, self->_iterationTotalSuccessfullRuns);
    if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v163 = &v295;
    }

    else
    {
      v163 = v295.__r_.__value_.__r.__words[0];
    }

    if ((v295.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v164 = HIBYTE(v295.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v164 = v295.__r_.__value_.__l.__size_;
    }

    v165 = std::string::append(&v299, v163, v164);
    v166 = *&v165->__r_.__value_.__l.__data_;
    v300.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
    *&v300.__r_.__value_.__l.__data_ = v166;
    v165->__r_.__value_.__l.__size_ = 0;
    v165->__r_.__value_.__r.__words[2] = 0;
    v165->__r_.__value_.__r.__words[0] = 0;
    v167 = std::string::append(&v300, " ISF Entries successfull ");
    v168 = *&v167->__r_.__value_.__l.__data_;
    v301.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
    *&v301.__r_.__value_.__l.__data_ = v168;
    v167->__r_.__value_.__l.__size_ = 0;
    v167->__r_.__value_.__r.__words[2] = 0;
    v167->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v290, SHIDWORD(__val));
    if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v169 = &v290;
    }

    else
    {
      v169 = v290.__r_.__value_.__r.__words[0];
    }

    if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v170 = HIBYTE(v290.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v170 = v290.__r_.__value_.__l.__size_;
    }

    v171 = std::string::append(&v301, v169, v170);
    v172 = *&v171->__r_.__value_.__l.__data_;
    v302.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
    *&v302.__r_.__value_.__l.__data_ = v172;
    v171->__r_.__value_.__l.__size_ = 0;
    v171->__r_.__value_.__r.__words[2] = 0;
    v171->__r_.__value_.__r.__words[0] = 0;
    v173 = std::string::append(&v302, " ISF Entries Failed ");
    v174 = *&v173->__r_.__value_.__l.__data_;
    v319.__r_.__value_.__r.__words[2] = v173->__r_.__value_.__r.__words[2];
    *&v319.__r_.__value_.__l.__data_ = v174;
    v173->__r_.__value_.__l.__size_ = 0;
    v173->__r_.__value_.__r.__words[2] = 0;
    v173->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v289, v316[0]);
    if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = &v289;
    }

    else
    {
      v175 = v289.__r_.__value_.__r.__words[0];
    }

    if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v176 = HIBYTE(v289.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v176 = v289.__r_.__value_.__l.__size_;
    }

    v177 = std::string::append(&v319, v175, v176);
    v178 = *&v177->__r_.__value_.__l.__data_;
    v320.__r_.__value_.__r.__words[2] = v177->__r_.__value_.__r.__words[2];
    *&v320.__r_.__value_.__l.__data_ = v178;
    v177->__r_.__value_.__l.__size_ = 0;
    v177->__r_.__value_.__r.__words[2] = 0;
    v177->__r_.__value_.__r.__words[0] = 0;
    v179 = std::string::append(&v320, " ISF Passed Controller ");
    v180 = *&v179->__r_.__value_.__l.__data_;
    v303.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
    *&v303.__r_.__value_.__l.__data_ = v180;
    v179->__r_.__value_.__l.__size_ = 0;
    v179->__r_.__value_.__r.__words[2] = 0;
    v179->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v288, SDWORD1(__val));
    if ((v288.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v181 = &v288;
    }

    else
    {
      v181 = v288.__r_.__value_.__r.__words[0];
    }

    if ((v288.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v182 = HIBYTE(v288.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v182 = v288.__r_.__value_.__l.__size_;
    }

    v183 = std::string::append(&v303, v181, v182);
    v184 = *&v183->__r_.__value_.__l.__data_;
    v304.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
    *&v304.__r_.__value_.__l.__data_ = v184;
    v183->__r_.__value_.__l.__size_ = 0;
    v183->__r_.__value_.__r.__words[2] = 0;
    v183->__r_.__value_.__r.__words[0] = 0;
    v185 = std::string::append(&v304, " ISF Faild Controller ");
    v186 = *&v185->__r_.__value_.__l.__data_;
    v305.__r_.__value_.__r.__words[2] = v185->__r_.__value_.__r.__words[2];
    *&v305.__r_.__value_.__l.__data_ = v186;
    v185->__r_.__value_.__l.__size_ = 0;
    v185->__r_.__value_.__r.__words[2] = 0;
    v185->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v287, SDWORD2(__val));
    if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v187 = &v287;
    }

    else
    {
      v187 = v287.__r_.__value_.__r.__words[0];
    }

    if ((v287.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v188 = HIBYTE(v287.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v188 = v287.__r_.__value_.__l.__size_;
    }

    v189 = std::string::append(&v305, v187, v188);
    v190 = *&v189->__r_.__value_.__l.__data_;
    v306.__r_.__value_.__r.__words[2] = v189->__r_.__value_.__r.__words[2];
    *&v306.__r_.__value_.__l.__data_ = v190;
    v189->__r_.__value_.__l.__size_ = 0;
    v189->__r_.__value_.__r.__words[2] = 0;
    v189->__r_.__value_.__r.__words[0] = 0;
    v191 = std::string::append(&v306, " Angles (x,y,z,) = (");
    v192 = *&v191->__r_.__value_.__l.__data_;
    v307.__r_.__value_.__r.__words[2] = v191->__r_.__value_.__r.__words[2];
    *&v307.__r_.__value_.__l.__data_ = v192;
    v191->__r_.__value_.__l.__size_ = 0;
    v191->__r_.__value_.__r.__words[2] = 0;
    v191->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v286, *&v293);
    if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v193 = &v286;
    }

    else
    {
      v193 = v286.__r_.__value_.__r.__words[0];
    }

    if ((v286.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v194 = HIBYTE(v286.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v194 = v286.__r_.__value_.__l.__size_;
    }

    v195 = std::string::append(&v307, v193, v194);
    v196 = *&v195->__r_.__value_.__l.__data_;
    v308.__r_.__value_.__r.__words[2] = v195->__r_.__value_.__r.__words[2];
    *&v308.__r_.__value_.__l.__data_ = v196;
    v195->__r_.__value_.__l.__size_ = 0;
    v195->__r_.__value_.__r.__words[2] = 0;
    v195->__r_.__value_.__r.__words[0] = 0;
    v197 = std::string::append(&v308, ", ");
    v198 = *&v197->__r_.__value_.__l.__data_;
    v309.__r_.__value_.__r.__words[2] = v197->__r_.__value_.__r.__words[2];
    *&v309.__r_.__value_.__l.__data_ = v198;
    v197->__r_.__value_.__l.__size_ = 0;
    v197->__r_.__value_.__r.__words[2] = 0;
    v197->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v285, *(&v293 + 1));
    if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v199 = &v285;
    }

    else
    {
      v199 = v285.__r_.__value_.__r.__words[0];
    }

    if ((v285.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v200 = HIBYTE(v285.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v200 = v285.__r_.__value_.__l.__size_;
    }

    v201 = std::string::append(&v309, v199, v200);
    v202 = *&v201->__r_.__value_.__l.__data_;
    v310.__r_.__value_.__r.__words[2] = v201->__r_.__value_.__r.__words[2];
    *&v310.__r_.__value_.__l.__data_ = v202;
    v201->__r_.__value_.__l.__size_ = 0;
    v201->__r_.__value_.__r.__words[2] = 0;
    v201->__r_.__value_.__r.__words[0] = 0;
    v203 = std::string::append(&v310, " ,");
    v204 = *&v203->__r_.__value_.__l.__data_;
    v311.__r_.__value_.__r.__words[2] = v203->__r_.__value_.__r.__words[2];
    *&v311.__r_.__value_.__l.__data_ = v204;
    v203->__r_.__value_.__l.__size_ = 0;
    v203->__r_.__value_.__r.__words[2] = 0;
    v203->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v284, *(&v293 + 2));
    if ((v284.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v205 = &v284;
    }

    else
    {
      v205 = v284.__r_.__value_.__r.__words[0];
    }

    if ((v284.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v206 = HIBYTE(v284.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v206 = v284.__r_.__value_.__l.__size_;
    }

    v207 = std::string::append(&v311, v205, v206);
    v208 = *&v207->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v207->__r_.__value_.__l + 2);
    *__p = v208;
    v207->__r_.__value_.__l.__size_ = 0;
    v207->__r_.__value_.__r.__words[2] = 0;
    v207->__r_.__value_.__r.__words[0] = 0;
    v209 = std::string::append(__p, ")");
    v210 = v209->__r_.__value_.__r.__words[0];
    v318[0] = v209->__r_.__value_.__l.__size_;
    *(v318 + 7) = *(&v209->__r_.__value_.__r.__words[1] + 7);
    v211 = HIBYTE(v209->__r_.__value_.__r.__words[2]);
    v209->__r_.__value_.__l.__size_ = 0;
    v209->__r_.__value_.__r.__words[2] = 0;
    v209->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v312.__r_.__value_.__l.__data_);
    }

    v312.__r_.__value_.__r.__words[0] = v210;
    v312.__r_.__value_.__l.__size_ = v318[0];
    *(&v312.__r_.__value_.__r.__words[1] + 7) = *(v318 + 7);
    *(&v312.__r_.__value_.__s + 23) = v211;
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v284.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v311.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v310.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v285.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v285.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v309.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v308.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v286.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v286.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v307.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v306.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v287.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v305.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v304.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v288.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v288.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v303.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v320.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v289.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v319.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v302.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v302.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v290.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v301.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v301.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v300.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v300.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v295.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v295.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v299.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v298.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v298.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v296.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v297.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v297.__r_.__value_.__l.__data_);
    }

    [(ViewController *)self log:&v312, v278];
    [(ViewController *)self handleSuspend];
    v212 = self->_iterationTotalSuccessfullRuns + self->_calibUpdateEachIsfEntiresLimit;
    self->_iterationTotalSuccessfullRuns = v212;
    if (v212 >= self->_iterationTotalSuccessfullRunsLimit)
    {
      sub_100010A50(__p, "dogWatch finishing iteration");
      [(ViewController *)self log:__p];
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      anon_b8 = self->_anon_b8;
      sub_10001B904(self->_anon_b8, &v293);
      std::to_string(&v305, *p_iterationNumber);
      v215 = std::string::insert(&v305, 0, "iteration ");
      v216 = *&v215->__r_.__value_.__l.__data_;
      v306.__r_.__value_.__r.__words[2] = v215->__r_.__value_.__r.__words[2];
      *&v306.__r_.__value_.__l.__data_ = v216;
      v215->__r_.__value_.__l.__size_ = 0;
      v215->__r_.__value_.__r.__words[2] = 0;
      v215->__r_.__value_.__r.__words[0] = 0;
      v217 = std::string::append(&v306, " ");
      v218 = *&v217->__r_.__value_.__l.__data_;
      v307.__r_.__value_.__r.__words[2] = v217->__r_.__value_.__r.__words[2];
      *&v307.__r_.__value_.__l.__data_ = v218;
      v217->__r_.__value_.__l.__size_ = 0;
      v217->__r_.__value_.__r.__words[2] = 0;
      v217->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v304, *&v293);
      if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v219 = &v304;
      }

      else
      {
        v219 = v304.__r_.__value_.__r.__words[0];
      }

      if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v220 = HIBYTE(v304.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v220 = v304.__r_.__value_.__l.__size_;
      }

      v221 = std::string::append(&v307, v219, v220);
      v222 = *&v221->__r_.__value_.__l.__data_;
      v308.__r_.__value_.__r.__words[2] = v221->__r_.__value_.__r.__words[2];
      *&v308.__r_.__value_.__l.__data_ = v222;
      v221->__r_.__value_.__l.__size_ = 0;
      v221->__r_.__value_.__r.__words[2] = 0;
      v221->__r_.__value_.__r.__words[0] = 0;
      v223 = std::string::append(&v308, " ");
      v224 = *&v223->__r_.__value_.__l.__data_;
      v309.__r_.__value_.__r.__words[2] = v223->__r_.__value_.__r.__words[2];
      *&v309.__r_.__value_.__l.__data_ = v224;
      v223->__r_.__value_.__l.__size_ = 0;
      v223->__r_.__value_.__r.__words[2] = 0;
      v223->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v303, *(&v293 + 1));
      if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v225 = &v303;
      }

      else
      {
        v225 = v303.__r_.__value_.__r.__words[0];
      }

      if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v226 = HIBYTE(v303.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v226 = v303.__r_.__value_.__l.__size_;
      }

      v227 = std::string::append(&v309, v225, v226);
      v228 = *&v227->__r_.__value_.__l.__data_;
      v310.__r_.__value_.__r.__words[2] = v227->__r_.__value_.__r.__words[2];
      *&v310.__r_.__value_.__l.__data_ = v228;
      v227->__r_.__value_.__l.__size_ = 0;
      v227->__r_.__value_.__r.__words[2] = 0;
      v227->__r_.__value_.__r.__words[0] = 0;
      v229 = std::string::append(&v310, " ");
      v230 = *&v229->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v229->__r_.__value_.__l + 2);
      *__p = v230;
      v229->__r_.__value_.__l.__size_ = 0;
      v229->__r_.__value_.__r.__words[2] = 0;
      v229->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v320, *(&v293 + 2));
      if ((v320.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v231 = &v320;
      }

      else
      {
        v231 = v320.__r_.__value_.__r.__words[0];
      }

      if ((v320.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v232 = HIBYTE(v320.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v232 = v320.__r_.__value_.__l.__size_;
      }

      v233 = std::string::append(__p, v231, v232);
      v234 = *&v233->__r_.__value_.__l.__data_;
      v311.__r_.__value_.__r.__words[2] = v233->__r_.__value_.__r.__words[2];
      *&v311.__r_.__value_.__l.__data_ = v234;
      v233->__r_.__value_.__l.__size_ = 0;
      v233->__r_.__value_.__r.__words[2] = 0;
      v233->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v320.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v320.__r_.__value_.__l.__data_);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v310.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v303.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v309.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v308.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v304.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v307.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v306.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v305.__r_.__value_.__l.__data_);
      }

      LODWORD(v320.__r_.__value_.__r.__words[1]) = 1084227584;
      v320.__r_.__value_.__r.__words[0] = 0x4000000040000000;
      v319.__r_.__value_.__r.__words[0] = 0x4090000040900000;
      LODWORD(v319.__r_.__value_.__r.__words[1]) = 1091567616;
      if ((*(&self->super.super.super.isa + v279) & 1) == 0)
      {
        __asm { FMOV            V0.2S, #3.0 }

        v320.__r_.__value_.__r.__words[0] = _D0;
        LODWORD(v320.__r_.__value_.__r.__words[1]) = 1086324736;
        __asm { FMOV            V0.2S, #6.0 }

        v319.__r_.__value_.__r.__words[0] = _D0;
        LODWORD(v319.__r_.__value_.__r.__words[1]) = 1091567616;
      }

      [(ViewController *)self addToReducedLog:&v311];
      if (*p_iterationNumber >= 3)
      {
        v241 = &v319;
      }

      else
      {
        v241 = &v320;
      }

      [(ViewController *)self compareResults:&v319];
      if (self->_diagnosticFinalResult == -3)
      {
        v242 = self->_backgroundDispatchQueue;
        v283[0] = _NSConcreteStackBlock;
        v283[1] = 3221225472;
        v283[2] = sub_10001728C;
        v283[3] = &unk_10002CEA8;
        v283[4] = self;
        dispatch_async(v242, v283);
        self->_running = 0;
        if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v311.__r_.__value_.__l.__data_);
        }

        goto LABEL_356;
      }

      [(ViewController *)self compareResults:v241];
      if (self->_diagnosticFinalResult == -3)
      {
        v244 = 3;
      }

      else
      {
        v244 = 2;
      }

      self->_iterationsLimit = v244;
      v245 = *p_iterationNumber;
      if (*p_iterationNumber >= v244)
      {
        v246 = *&self->_anon_b8[8];
        if (v246 != *anon_b8)
        {
          v247 = 0;
          v248 = (v246 - *anon_b8) >> 4;
          v249 = v248;
          if (v248 <= 1)
          {
            v248 = 1;
          }

          v250 = *self->_avgRotAngles;
          avgRotAngles = self->_avgRotAngles;
          do
          {
            *&v243 = (*(*anon_b8 + v247) / v249) + *&v250;
            *avgRotAngles = v243;
            v252 = *(*anon_b8 + v247 + 4);
            *&self->_avgRotAngles[8] = DWORD2(v250);
            LODWORD(v250) = v243;
            *(&v250 + 1) = *(&v250 + 1) + (v252 / v249);
            *avgRotAngles = v250;
            DWORD1(v243) = DWORD1(v250);
            *(&v243 + 2) = *(&v250 + 2) + (*(*anon_b8 + v247 + 8) / v249);
            *avgRotAngles = v250;
            *&self->_avgRotAngles[8] = DWORD2(v243);
            v247 += 16;
            v250 = v243;
            --v248;
          }

          while (v248);
        }

        std::to_string(&v305, *self->_avgRotAngles);
        v253 = std::string::insert(&v305, 0, "Average Angles (x,y,z,) = (");
        v254 = *&v253->__r_.__value_.__l.__data_;
        v306.__r_.__value_.__r.__words[2] = v253->__r_.__value_.__r.__words[2];
        *&v306.__r_.__value_.__l.__data_ = v254;
        v253->__r_.__value_.__l.__size_ = 0;
        v253->__r_.__value_.__r.__words[2] = 0;
        v253->__r_.__value_.__r.__words[0] = 0;
        v255 = std::string::append(&v306, ", ");
        v256 = *&v255->__r_.__value_.__l.__data_;
        v307.__r_.__value_.__r.__words[2] = v255->__r_.__value_.__r.__words[2];
        *&v307.__r_.__value_.__l.__data_ = v256;
        v255->__r_.__value_.__l.__size_ = 0;
        v255->__r_.__value_.__r.__words[2] = 0;
        v255->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v304, *&self->_avgRotAngles[4]);
        if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v257 = &v304;
        }

        else
        {
          v257 = v304.__r_.__value_.__r.__words[0];
        }

        if ((v304.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v258 = HIBYTE(v304.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v258 = v304.__r_.__value_.__l.__size_;
        }

        v259 = std::string::append(&v307, v257, v258);
        v260 = *&v259->__r_.__value_.__l.__data_;
        v308.__r_.__value_.__r.__words[2] = v259->__r_.__value_.__r.__words[2];
        *&v308.__r_.__value_.__l.__data_ = v260;
        v259->__r_.__value_.__l.__size_ = 0;
        v259->__r_.__value_.__r.__words[2] = 0;
        v259->__r_.__value_.__r.__words[0] = 0;
        v261 = std::string::append(&v308, " ,");
        v262 = *&v261->__r_.__value_.__l.__data_;
        v309.__r_.__value_.__r.__words[2] = v261->__r_.__value_.__r.__words[2];
        *&v309.__r_.__value_.__l.__data_ = v262;
        v261->__r_.__value_.__l.__size_ = 0;
        v261->__r_.__value_.__r.__words[2] = 0;
        v261->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v303, *&self->_avgRotAngles[8]);
        if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v263 = &v303;
        }

        else
        {
          v263 = v303.__r_.__value_.__r.__words[0];
        }

        if ((v303.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v264 = HIBYTE(v303.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v264 = v303.__r_.__value_.__l.__size_;
        }

        v265 = std::string::append(&v309, v263, v264);
        v266 = *&v265->__r_.__value_.__l.__data_;
        v310.__r_.__value_.__r.__words[2] = v265->__r_.__value_.__r.__words[2];
        *&v310.__r_.__value_.__l.__data_ = v266;
        v265->__r_.__value_.__l.__size_ = 0;
        v265->__r_.__value_.__r.__words[2] = 0;
        v265->__r_.__value_.__r.__words[0] = 0;
        v267 = std::string::append(&v310, ")");
        v268 = *&v267->__r_.__value_.__l.__data_;
        *&__p[16] = *(&v267->__r_.__value_.__l + 2);
        *__p = v268;
        v267->__r_.__value_.__l.__size_ = 0;
        v267->__r_.__value_.__r.__words[2] = 0;
        v267->__r_.__value_.__r.__words[0] = 0;
        [(ViewController *)self log:__p];
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v310.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v303.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v303.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v309.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v309.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v308.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v308.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v304.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v304.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v307.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v307.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v306.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v306.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v305.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v305.__r_.__value_.__l.__data_);
        }

        memset(&__p[4], 0, 252);
        *__p = 2;
        if (![(ViewController *)self getRotAnglesToPrcl:__p focalPoint:*self->_avgRotAngles prcl:*self->_focalPoint])
        {
          v269 = *&__p[208];
          *&self->_prclResult.reserved[26] = *&__p[192];
          *&self->_prclResult.reserved[42] = v269;
          v270 = *&__p[240];
          *&self->_prclResult.reserved[58] = *&__p[224];
          *&self->_prclResult.reserved[74] = v270;
          v271 = *&__p[144];
          *&self->_prclResult.teleRotMatrix[2][1] = *&__p[128];
          *&self->_prclResult.teleFocalPoint[2] = v271;
          v272 = *&__p[176];
          *&self->_prclResult.jasperSN[12] = *&__p[160];
          *&self->_prclResult.reserved[10] = v272;
          v273 = *&__p[80];
          *&self->_prclResult.wideRotMatrix[1][0] = *&__p[64];
          *&self->_prclResult.wideRotMatrix[2][1] = v273;
          v274 = *&__p[112];
          *&self->_prclResult.wideFocalPoint[2] = *&__p[96];
          *&self->_prclResult.teleRotMatrix[1][0] = v274;
          v275 = *&__p[16];
          *&self->_prclResult.version = *__p;
          *&self->_prclResult.swideRotMatrix[1][0] = v275;
          v276 = *&__p[48];
          *&self->_prclResult.swideRotMatrix[2][1] = *&__p[32];
          *&self->_prclResult.swideFocalPoint[2] = v276;
          sub_100010A50(&v310, "dogWatch finishing all iterations");
          [(ViewController *)self log:&v310];
          if (SHIBYTE(v310.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v310.__r_.__value_.__l.__data_);
          }

          v277 = self->_backgroundDispatchQueue;
          v282[0] = _NSConcreteStackBlock;
          v282[1] = 3221225472;
          v282[2] = sub_1000172E4;
          v282[3] = &unk_10002CEA8;
          v282[4] = self;
          dispatch_async(v277, v282);
          self->_running = 0;
        }
      }

      else
      {
        *p_iterationNumber = v245 + 1;
        [(ViewController *)self prepareNewIteration];
      }

      if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v311.__r_.__value_.__l.__data_);
      }

      if (v245 >= v244)
      {
        goto LABEL_356;
      }
    }

    [(ViewController *)self handleResume];
    v213 = self->_backgroundDispatchQueue;
    v281[0] = _NSConcreteStackBlock;
    v281[1] = 3221225472;
    v281[2] = sub_1000172EC;
    v281[3] = &unk_10002CEA8;
    v281[4] = self;
    dispatch_async(v213, v281);
LABEL_356:
    if (SHIBYTE(v312.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v312.__r_.__value_.__l.__data_);
    }
  }

LABEL_164:
  if (SHIBYTE(v313.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v313.__r_.__value_.__l.__data_);
  }

LABEL_166:
}

- (void)primaryScalerHxISPFrameAvailableCallback:(__CVBuffer *)a3 pts:(id *)a4 streamType:(int)a5
{
  if (self->_running)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    imageOut = 0;
    VTCreateCGImageFromCVPixelBuffer(a3, 0, &imageOut);
    v13.size.height = Height;
    v13.size.width = Width;
    v13.origin.x = 0.0;
    v13.origin.y = 0.0;
    v10 = CGImageCreateWithImageInRect(imageOut, v13);
    if (v10)
    {
      v11 = [UIImage imageWithCGImage:v10 scale:3 orientation:1.0];
    }

    else
    {
      v11 = 0;
    }

    CGImageRelease(imageOut);
    CGImageRelease(v10);
    if (a5 == 1)
    {
      if (self->_uiStreamType != 1)
      {
LABEL_11:

        return;
      }
    }

    else if (a5 || self->_uiStreamType)
    {
      goto LABEL_11;
    }

    [(UIImageView *)self->_imageView performSelectorOnMainThread:"setImage:" withObject:v11 waitUntilDone:0];
    goto LABEL_11;
  }
}

- (void)error:(id)a3 details:(id)a4
{
  v5 = a3;
  sub_100010A50(__p, [v5 UTF8String]);
  [(ViewController *)self log:__p];
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  [(ViewController *)self endTest];
}

- (void)handleResume
{
  v3 = objc_autoreleasePoolPush();
  if (!*&self->_running)
  {
    self->_inResume = 1;
    sub_100010A50(__p, "handleResume");
    [(ViewController *)self log:__p];
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    backgroundDispatchQueue = self->_backgroundDispatchQueue;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100017938;
    v5[3] = &unk_10002CEA8;
    v5[4] = self;
    dispatch_async(backgroundDispatchQueue, v5);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)handleSuspend
{
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  objc_sync_enter(v4);
  sub_100010A50(__p, "handleSuspend");
  [(ViewController *)v4 log:__p];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4->_running = 0;
  m_userMovementTracker = v4->m_userMovementTracker;
  if (m_userMovementTracker)
  {
    [(UserMovementTracker *)m_userMovementTracker stopDeviceMotionTracking];
  }

  if (v4->_diagnosticCMInterface)
  {
    [(NSTimer *)v4->_watchDogTimer invalidate];
    backgroundDispatchQueue = v4->_backgroundDispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100018718;
    v7[3] = &unk_10002CEA8;
    v7[4] = v4;
    dispatch_async(backgroundDispatchQueue, v7);
  }

  objc_sync_exit(v4);

  objc_autoreleasePoolPop(v3);
}

- (void)endTest
{
  self->_running = 0;
  watchDogTimer = self->_watchDogTimer;
  if (watchDogTimer)
  {
    [(NSTimer *)watchDogTimer invalidate];
  }

  sub_100010A50(__p, "endTest");
  [(ViewController *)self log:__p];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(&v7, self->_noMovementCounter);
  v4 = std::string::insert(&v7, 0, "noMovementCount ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  [(ViewController *)self addToReducedLog:__p];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (self->_skipSummaryScreen)
  {
    sub_100010A50(__p, "_skipSummaryScreen is true");
    [(ViewController *)self log:__p];
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = [(ViewController *)self listener];
    [v6 finishRun:self->_resultsDict reducedLog:self->_reducedLog result:self->_diagnosticFinalResult prcl:&self->_prclResult angles:self->_avgRotAngles];

    exit(0);
  }

  sub_100010A50(__p, "_skipSummaryScreen is false");
  [(ViewController *)self log:__p];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  [(ViewController *)self showSummaryScreen:self->_diagnosticFinalResult == 0];
}

- (void)showSummaryScreen:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100018B18;
  v3[3] = &unk_10002CEF8;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)buttonClicked:(id)a3
{
  sub_100010A50(__p, "button clicked");
  [(ViewController *)self log:__p];
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)setUpperViewLabelText:(id)a3
{
  v4 = a3;
  sub_100010A50(&v10, [v4 UTF8String]);
  std::operator+<char>();
  [(ViewController *)self log:&__p];
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000194C0;
  v6[3] = &unk_10002CF20;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v6);

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

- (void)duplicatPixelBuffer:(__CVBuffer *)a3 newBuffer:(__CVBuffer *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (!CVPixelBufferCreate(kCFAllocatorDefault, Width, Height, PixelFormatType, 0, a4))
  {
    v9 = *a4;
    CVPixelBufferLockBaseAddress(v9, 0);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v9, 0);
    v11 = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
    memcpy(BaseAddressOfPlane, v11, HeightOfPlane * BytesPerRowOfPlane);
    v14 = CVPixelBufferGetBaseAddressOfPlane(v9, 1uLL);
    v15 = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
    v16 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    v17 = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
    memcpy(v14, v15, v17 * v16);
    CVPixelBufferUnlockBaseAddress(v9, 0);

    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  }
}

- (void)cancel
{
  sub_100010A50(__p, "cancel");
  [(ViewController *)self log:__p];
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  self->_diagnosticFinalResult = -4;
  [(ViewController *)self handleSuspend];
}

- (void)hideInProgressView
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000198AC;
  block[3] = &unk_10002CEA8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)showInProgressView
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019984;
  block[3] = &unk_10002CEA8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)hideWarningWindow
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019E1C;
  block[3] = &unk_10002CEA8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)showWarningWindow:(id)a3 subMessage:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019F38;
  block[3] = &unk_10002CF48;
  block[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)quitButtonTapped
{
  sub_100010A50(__p, "Quit button tapped!");
  [(ViewController *)self log:__p];
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  [(ViewController *)self endTest];
}

- (void)continueButtonPressed:(id)a3
{
  v4 = a3;
  NSLog(@"Continue button pressed");
  v5 = [(ViewController *)self listener];
  [v5 finishRun:self->_resultsDict reducedLog:self->_reducedLog result:self->_diagnosticFinalResult prcl:&self->_prclResult angles:self->_avgRotAngles];

  exit(0);
}

- (UIView)storyBoardView
{
  WeakRetained = objc_loadWeakRetained(&self->_storyBoardView);

  return WeakRetained;
}

- (ViewControllerCallbacks)listener
{
  WeakRetained = objc_loadWeakRetained(&self->_listener);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 2) = off_10002CF78;
  *(self + 3) = 0;
  *(self + 22) = 0;
  *(self + 21) = 0;
  *(self + 20) = self + 168;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  *(self + 488) = 0u;
  *(self + 476) = 0u;
  *(self + 460) = 0u;
  *(self + 444) = 0u;
  *(self + 428) = 0u;
  *(self + 412) = 0u;
  *(self + 396) = 0u;
  *(self + 380) = 0u;
  *(self + 364) = 0u;
  *(self + 348) = 0u;
  *(self + 332) = 0u;
  *(self + 316) = 0u;
  *(self + 300) = 0u;
  *(self + 284) = 0u;
  *(self + 268) = 0u;
  *(self + 252) = 0u;
  *(self + 62) = 2;
  *(self + 34) = 0uLL;
  *(self + 67) = 0;
  return self;
}

@end