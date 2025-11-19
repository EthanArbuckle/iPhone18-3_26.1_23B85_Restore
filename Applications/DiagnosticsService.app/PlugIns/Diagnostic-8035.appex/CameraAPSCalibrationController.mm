@interface CameraAPSCalibrationController
- (id)calibrateCameraType:(id)a3 position:(int64_t)a4 statusCode:(int64_t *)a5;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation CameraAPSCalibrationController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v5 = [a3 cameras];
  [(CameraAPSCalibrationController *)self setCameras:v5];
}

- (void)start
{
  v3 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-8035.cameraCalibrationQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000DD0;
  block[3] = &unk_100004158;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)calibrateCameraType:(id)a3 position:(int64_t)a4 statusCode:(int64_t *)a5
{
  v7 = a3;
  v8 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calibrating %@...", buf, 0xCu);
  }

  v9 = [AVCaptureDevice defaultDeviceWithDeviceType:v7 mediaType:AVMediaTypeVideo position:a4];
  v10 = v9;
  if (!v9)
  {
    *a5 = -101;
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001A00();
    }

    goto LABEL_22;
  }

  v11 = AVCaptureDeviceDiagnosticsTestTypeAutoFocusPositionSensorCalibration;
  if (![v9 isDiagnosticsTestSupported:AVCaptureDeviceDiagnosticsTestTypeAutoFocusPositionSensorCalibration])
  {
    *a5 = -102;
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001700();
    }

LABEL_22:
    v25 = 0;
    goto LABEL_31;
  }

  v12 = [v10 runDiagnosticsWithTestType:v11];
  v13 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100001768();
  }

  if (v12)
  {
    v14 = AVCaptureDeviceDiagnosticsResult;
    v15 = [v12 objectForKeyedSubscript:AVCaptureDeviceDiagnosticsResult];

    if (v15)
    {
      v16 = AVCaptureDeviceDiagnosticsStatusCode;
      v17 = [v12 objectForKeyedSubscript:AVCaptureDeviceDiagnosticsStatusCode];

      if (v17)
      {
        v18 = [v12 objectForKeyedSubscript:v16];
        v19 = [v18 intValue];

        if (v19)
        {
          v20 = [v12 objectForKeyedSubscript:v16];
          *a5 = [v20 integerValue];

          v21 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000017DC();
          }

          if (*a5 >> 31)
          {
            *a5 = -100;
            v22 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_100001860();
            }
          }
        }

        v28[0] = v7;
        v23 = [v12 objectForKeyedSubscript:v16, @"camera", @"statusCode"];
        v28[1] = v23;
        v27[2] = @"passed";
        v24 = [v12 objectForKeyedSubscript:v14];
        v28[2] = v24;
        v25 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

        goto LABEL_30;
      }

      *a5 = -105;
      v23 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000018C8();
      }
    }

    else
    {
      *a5 = -104;
      v23 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100001930();
      }
    }
  }

  else
  {
    *a5 = -103;
    v23 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100001998();
    }
  }

  v25 = 0;
LABEL_30:

LABEL_31:

  return v25;
}

@end