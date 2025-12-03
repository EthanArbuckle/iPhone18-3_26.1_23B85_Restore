@interface RgbJasperCalibrationViewController
- (void)cancel;
- (void)finishRun:(id)run reducedLog:(id)log result:(int)result prcl:(const Prcl *)prcl angles:;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation RgbJasperCalibrationViewController

- (void)finishRun:(id)run reducedLog:(id)log result:(int)result prcl:(const Prcl *)prcl angles:
{
  v7 = v6;
  v9 = *&result;
  runCopy = run;
  logCopy = log;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RgbJasperCalibrationViewController finishRun", &buf, 2u);
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = [logCopy componentsJoinedByString:{@", "}];
  [v13 setValue:v14 forKey:@"log"];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  [v13 setValue:v19 forKey:@"pluginVersion"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RgbJasperCalibrationViewController finishRun added reduced log string", &buf, 2u);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RgbJasperCalibrationViewController finishRun1", &buf, 2u);
    }

    v30 = [NSData dataWithBytes:prcl length:256];
    v32 = ConvertDataToHexString(v30);
    v37[0] = @"x";
    std::to_string(&buf, *v7);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v21 = [NSString stringWithUTF8String:p_buf, v30];
    v38[0] = v21;
    v37[1] = @"y";
    std::to_string(&v35, v7[1]);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v35;
    }

    else
    {
      v22 = v35.__r_.__value_.__r.__words[0];
    }

    v23 = [NSString stringWithUTF8String:v22];
    v38[1] = v23;
    v37[2] = @"z";
    std::to_string(&v34, v7[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v34;
    }

    else
    {
      v24 = v34.__r_.__value_.__r.__words[0];
    }

    v25 = [NSString stringWithUTF8String:v24];
    v38[2] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    [v13 setValue:v26 forKey:@"rotationalAngle"];
    [v13 setValue:v32 forKey:@"PrCL"];
  }

  result = [(RgbJasperCalibrationViewController *)self result];
  [result setData:v13];

  v28 = [NSNumber numberWithInt:v9];
  result2 = [(RgbJasperCalibrationViewController *)self result];
  [result2 setStatusCode:v28];

  [(RgbJasperCalibrationViewController *)self setFinished:1];
}

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RgbJasperCalibrationViewController setup", v7, 2u);
  }

  inputs = self->_inputs;
  self->_inputs = inputsCopy;
}

- (void)start
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "RgbJasperCalibrationViewController start new", v8, 2u);
  }

  v3 = objc_alloc_init(ViewController);
  mainAppViewController = self->_mainAppViewController;
  self->_mainAppViewController = v3;

  view = [(RgbJasperCalibrationViewController *)self view];
  [self->_mainAppViewController setStoryBoardView:view];

  [self->_mainAppViewController setListener:self];
  inputs = self->_inputs;
  if (inputs)
  {
    if ([(RGBJDKDiagnosticInputs *)inputs sessionTimeOut])
    {
      [self->_mainAppViewController setSessionMaxTimeOut:[(RGBJDKDiagnosticInputs *)self->_inputs sessionTimeOut]];
    }

    if ([(RGBJDKDiagnosticInputs *)self->_inputs sceneErrorTimeOut])
    {
      [self->_mainAppViewController setConsecutiveSceneErrorLimit:[(RGBJDKDiagnosticInputs *)self->_inputs sceneErrorTimeOut]];
    }

    if ([(RGBJDKDiagnosticInputs *)self->_inputs userNotMovingTimeout])
    {
      [self->_mainAppViewController setUserNotMovingTimeout:[(RGBJDKDiagnosticInputs *)self->_inputs userNotMovingTimeout]];
    }

    [(RGBJDKDiagnosticInputs *)self->_inputs noMovementAttitudeChangeMinThreshold];
    if (v7 != 0.0)
    {
      [(RGBJDKDiagnosticInputs *)self->_inputs noMovementAttitudeChangeMinThreshold];
      [self->_mainAppViewController setNoMovementAttitudeChangeMinThreshold:?];
    }

    if ([(RGBJDKDiagnosticInputs *)self->_inputs skipSummaryScreen])
    {
      [self->_mainAppViewController setSkipSummaryScreen:[(RGBJDKDiagnosticInputs *)self->_inputs skipSummaryScreen]];
    }
  }

  [self->_mainAppViewController startUI];
}

- (void)cancel
{
  [self->_mainAppViewController cancel];
  v3 = [NSNumber numberWithInt:[self->_mainAppViewController getCurrentResult]];
  result = [(RgbJasperCalibrationViewController *)self result];
  [result setStatusCode:v3];

  mainAppViewController = self->_mainAppViewController;
  self->_mainAppViewController = 0;

  [(RgbJasperCalibrationViewController *)self setFinished:1];
}

@end