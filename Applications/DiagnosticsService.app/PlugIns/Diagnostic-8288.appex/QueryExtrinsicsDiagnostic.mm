@interface QueryExtrinsicsDiagnostic
- (int)getCalibResults:(QueryExtrinsicsDiagnostic *)self focalPoint:(SEL)point;
- (int)initDevice;
- (void)log:(const void *)log;
@end

@implementation QueryExtrinsicsDiagnostic

- (void)log:(const void *)log
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (*(log + 23) >= 0)
    {
      logCopy = log;
    }

    else
    {
      logCopy = *log;
    }

    v5 = 136315138;
    v6 = logCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "QueryExtrinsicsDiagnostic %s", &v5, 0xCu);
  }
}

- (int)initDevice
{
  v3 = objc_autoreleasePoolPush();
  sub_10000E36C(__p, "initStreaming");
  [(QueryExtrinsicsDiagnostic *)self log:__p];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  DeviceCMInterface::initAndActivateCaptureDeviceController(self->_diagnosticCMInterface);
}

- (int)getCalibResults:(QueryExtrinsicsDiagnostic *)self focalPoint:(SEL)point
{
  v4 = v3;
  v5 = v2;
  sub_10000E36C(&__p, "getCalibResults");
  [(QueryExtrinsicsDiagnostic *)self log:&__p];
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  v28 = 0;
  if (DeviceCMInterface::getJasperCalib(self->_diagnosticCMInterface, &v28))
  {
    sub_10000E36C(v18, "unable to get JasperCalib");
    [(QueryExtrinsicsDiagnostic *)self log:v18];
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    return 1;
  }

  else
  {
    if (self->_isJasper)
    {
      v8 = JDJasperCalibCreateWithBinaryRepresentation();
      JDJasperCalibGetFactoryWideToJasperTransform();
    }

    else
    {
      v8 = PDPeridotCalibCreateWithBinaryRepresentation();
      PDPeridotCalibGetOperationalWideToPeridotTransform();
    }

    v21 = v10;
    v23 = v12;
    v25 = v14;
    __p = v9;
    v22 = v11;
    v27 = v16;
    v24 = v13;
    v26 = v15;
    if (v8)
    {
      CFRelease(v8);
    }

    v17 = v26;
    *(v4 + 8) = v27;
    *v4 = v17;
    CalcRotationAngleFromMatrix(&__p, v5);
    CFRelease(v28);
    return 0;
  }
}

@end