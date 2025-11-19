@interface Jas_FW_Status_iOSController
- (BOOL)checkConnectivity;
- (BOOL)isAllStatusesGood;
- (id).cxx_construct;
- (id)getEcStatus;
- (int)ConfigDevice:(JasperConfiguration)a3;
- (int)getConfigurationForCaseMask:(int)a3 returnedConfiguration:(JasperConfiguration *)a4;
- (int)startStreaming;
- (int)stopStreaming;
- (void)cancel;
- (void)finalizingOnError;
- (void)finalizingWithStatusCode:(int)a3 andInfoString:(id)a4;
- (void)performFlow;
- (void)produceStatusForDiagnosticConfigurationDetailsOnFailureOnly:(JasperConfiguration)a3 ValidationStatus:(void *)a4;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)updateStatusDictionary:(id)a3 andValue:(id)a4;
@end

@implementation Jas_FW_Status_iOSController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v5 = [[NSMutableDictionary alloc] initWithCapacity:50];
  m_statusesDict = self->m_statusesDict;
  self->m_statusesDict = v5;

  v24 = MGCopyAnswer();
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v8 = [v7 lastPathComponent];
  v9 = [NSString stringWithFormat:@"setupWithInputs Jas Diagnostic %@", v24];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 52, v9);

  [(NSMutableDictionary *)self->m_statusesDict setValue:v24 forKey:@"DEVICE_NAME"];
  v10 = self->m_statusesDict;
  v11 = getCurrentVersion();
  [(NSMutableDictionary *)v10 setValue:v11 forKey:@"VERSION"];

  self->m_scenariosNumber = 0;
  self->m_timeForStreamInUSec = 5000000;
  self->m_casesMask = 4;
  v12 = [(Jas_FW_Status_iOSController *)self result];
  [v12 setData:&__NSDictionary0__struct];

  self->m_isAllPass = 0;
  self->m_passCount = 0;
  self->m_isJasperEnable = 1;
  self->m_isSuperWideEnable = 0;
  self->m_isCurrentStatusOK = 1;
  if (self->m_casesMask >= 8)
  {
    v13 = [NSString stringWithFormat:@"Bad Diagnostic bit mask, bit mask 0x%x > 0x%x", self->m_casesMask, 7];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"%@", v13];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 71, v16);

    v28 = @"PRE_CONFIGURATION_KEY";
    v29 = v13;
    v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"PRE_CONFIGURATION_KEY" andValue:v17];
  }

  v18 = 3;
  v19 = 1;
  do
  {
    if ((self->m_casesMask & v19) != 0)
    {
      LOBYTE(v25) = 1;
      memset(&v25 + 1, 0, 7);
      if ([(Jas_FW_Status_iOSController *)self getConfigurationForCaseMask:v19 returnedConfiguration:&v25])
      {
        v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
        v21 = [v20 lastPathComponent];
        v22 = [NSString stringWithFormat:@"%@", @"Bad Diagnostic bit mask, configuration is not found"];
        NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v21, 89, v22);

        v26 = @"PRE_CONFIGURATION_KEY";
        v27 = @"Bad Diagnostic bit mask, configuration is not found";
        v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"PRE_CONFIGURATION_KEY" andValue:v23];
      }

      else
      {
        sub_100002070(&self->m_configurationsList, &v25);
      }
    }

    v19 = (2 * v19);
    --v18;
  }

  while (v18);
  self->m_scenariosNumber = (self->m_configurationsList.__end_ - self->m_configurationsList.__begin_) >> 3;
}

- (int)getConfigurationForCaseMask:(int)a3 returnedConfiguration:(JasperConfiguration *)a4
{
  switch(a3)
  {
    case 1:
      result = 0;
      v5 = 0x100000101;
      goto LABEL_7;
    case 2:
      result = 0;
      v5 = 0x201000101;
      goto LABEL_7;
    case 4:
      result = 0;
      v5 = 0x400000001;
LABEL_7:
      *a4 = v5;
      return result;
  }

  v6 = decToBinStr(a3);
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v8 = [v7 lastPathComponent];
  v9 = [NSString stringWithFormat:@"no available configuration detetcted for this mask bit location %@", v6];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v8, 116, v9);

  return -536870206;
}

- (BOOL)checkConnectivity
{
  DeviceCMInterface::DeviceCMInterface(&v5);
  self = (self + 32);
  v3 = *&v5.m_captureDeviceController;
  *self->DKDiagnosticController_opaque = *&v5.m_hVersion;
  *&self->m_validationStatusesList.__end_ = v3;
  *&self->m_diagnosticCMInterface.m_hVersion = *&v5.m_streamIdsInfo.rgbPearlStreamId;
  self->m_diagnosticCMInterface.m_captureDeviceController = *&v5.m_currentPearlConfiguration.isIrOn;
  self->m_diagnosticCMInterface.m_streamIdsInfo.rgbTeleStreamId = v5.m_currentPearlConfiguration.bitMaskID;
  objc_storeStrong(&self->m_diagnosticCMInterface.m_streamIdsInfo.rgbPearlStreamId, v5.m_currentPearlConfiguration.deviceName);
  *&self->m_diagnosticCMInterface.m_streamIdsInfo.rgbSuperWideStreamId = *&v5.m_currentJasperConfiguration.isJasperOn;
  DeviceCMInterface::~DeviceCMInterface(&v5);
  DeviceCMInterface::initAndActivateCaptureDeviceController(self);
}

- (int)ConfigDevice:(JasperConfiguration)a3
{
  self->m_isJasperEnable = 1;
  self->m_isSuperWideEnable = 0;
  v5 = DeviceCMInterface::configJasperDevice(&self->m_diagnosticCMInterface, *&a3);
  if (v5)
  {
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v7 = [v6 lastPathComponent];
    v8 = [NSString stringWithFormat:@"fail to configure device"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 181, v8);
  }

  else
  {
    self->m_isJasperEnable = *a3.isJasperOn;
    self->m_isSuperWideEnable = *(*&a3 + 1);
  }

  return v5;
}

- (int)startStreaming
{
  if (self->m_isSuperWideEnable)
  {
    started = DeviceCMInterface::startRgbSuperWideRgbStream(&self->m_diagnosticCMInterface);
    if (started)
    {
      v4 = started;
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
      v6 = [v5 lastPathComponent];
      v7 = [NSString stringWithFormat:@"start RGB SW stream failed"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 201, v7);
LABEL_7:

      return v4;
    }
  }

  if (!self->m_isJasperEnable)
  {
    return 0;
  }

  v4 = DeviceCMInterface::startJasperStream(&self->m_diagnosticCMInterface);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v6 = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"start jasper stream failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 211, v7);
    goto LABEL_7;
  }

  return v4;
}

- (int)stopStreaming
{
  if (self->m_isJasperEnable)
  {
    v3 = DeviceCMInterface::stopJasperStream(&self->m_diagnosticCMInterface);
    if (v3)
    {
      v4 = v3;
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
      v6 = [v5 lastPathComponent];
      v7 = [NSString stringWithFormat:@"stop Jasper stream failed"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 229, v7);
LABEL_7:

      return v4;
    }
  }

  if (!self->m_isSuperWideEnable)
  {
    return 0;
  }

  v4 = DeviceCMInterface::stopRgbSuperWideStream(&self->m_diagnosticCMInterface);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v6 = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"stop Jasper stream failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v6, 239, v7);
    goto LABEL_7;
  }

  return v4;
}

- (id)getEcStatus
{
  v3 = ecStatusCheck();
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v5 = [v4 lastPathComponent];
  v6 = [NSString stringWithFormat:@"ExclavesStatus: %@", v3];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v5, 260, v6);

  if (!self->m_exclaveStatus)
  {
    self->m_exclaveStatus = ecDiagnosticStatusCodeFromStatusString(v3);
  }

  return v3;
}

- (void)produceStatusForDiagnosticConfigurationDetailsOnFailureOnly:(JasperConfiguration)a3 ValidationStatus:(void *)a4
{
  self->m_isCurrentStatusOK = 1;
  if (self->m_diagnosticCMInterface.m_hVersion == 16)
  {
    v5 = 52.9199982;
  }

  else
  {
    v5 = 108.0;
  }

  if (self->m_diagnosticCMInterface.m_hVersion == 16)
  {
    v6 = 68.1999969;
  }

  else
  {
    v6 = 124.0;
  }

  v7 = objc_autoreleasePoolPush();
  JasperFpsDuringStreaming = JasDiagnosticInteractor::getJasperFpsDuringStreaming(&self->m_diagnosticInteractor);
  JasperAveragePointsDuringStreaming = JasDiagnosticInteractor::getJasperAveragePointsDuringStreaming(&self->m_diagnosticInteractor);
  v10 = JasperFpsDuringStreaming > v6 || JasperFpsDuringStreaming < v5;
  m_minAveragePointsNumberThreshold = self->m_diagnosticInteractor.m_minAveragePointsNumberThreshold;
  m_isJasperFramesArrived = self->m_diagnosticInteractor.m_isJasperFramesArrived;
  v13 = [[NSMutableDictionary alloc] initWithCapacity:50];
  v44 = -1;
  v39 = [(Jas_FW_Status_iOSController *)self getEcStatus];
  v38 = [(Jas_FW_Status_iOSController *)self getEcPipeStats];
  if (v39)
  {
    [v13 setValue:v39 forKey:@"Exclave"];
    v14 = [NSNumber numberWithInt:self->m_exclaveStatus];
    [v13 setValue:v14 forKey:@"Exclave returne code"];

    if (self->m_exclaveStatus)
    {
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
      v16 = [v15 lastPathComponent];
      v17 = [NSString stringWithFormat:@"detecting exclave value %@ %d", v39, self->m_exclaveStatus];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v16, 297, v17);
    }
  }

  if (v38)
  {
    v18 = v38;
  }

  else
  {
    v18 = @"N/A";
  }

  [v13 setValue:v18 forKey:@"Exclave Display Pipes Stats"];
  DeviceCMInterface::validateJasperFwStatus(&self->m_diagnosticCMInterface, &v44);
  v19 = 0;
  if (v44 == 0 && self->m_isCurrentStatusOK && m_isJasperFramesArrived && !v10 && JasperAveragePointsDuringStreaming > m_minAveragePointsNumberThreshold)
  {
    v19 = sub_100003184(a4);
  }

  self->m_isCurrentStatusOK = v19;
  self->m_isAllPass &= v19;
  v20 = @"PASS";
  if (self->m_isCurrentStatusOK)
  {
    v21 = 0;
  }

  else
  {
    if (v10)
    {
      v22 = [NSString stringWithFormat:@"Fps = %f", *&JasperFpsDuringStreaming];
      v23 = [NSString stringWithFormat:@"%f", *&JasperFpsDuringStreaming];
      [v13 setValue:v23 forKey:@"JASPER_FPS"];

      sub_100003220(a4, 30, v22);
    }

    else
    {
      v22 = 0;
    }

    if (JasperAveragePointsDuringStreaming > m_minAveragePointsNumberThreshold)
    {
      v21 = v22;
    }

    else
    {
      v24 = [NSString stringWithFormat:@"PointCount = %f", *&JasperAveragePointsDuringStreaming];

      v25 = [NSString stringWithFormat:@"%f", *&JasperAveragePointsDuringStreaming];
      [v13 setValue:v25 forKey:@"JASPER_POINTS_COUNT_AVERAGE"];

      v21 = v24;
      sub_100003220(a4, 31, v24);
    }

    v26 = [NSString stringWithFormat:@"%d", self->m_diagnosticInteractor.m_jasperFramesCount];
    [v13 setValue:v26 forKey:@"JASPER_FRAME_COUNT"];

    v27 = v44;
    v28 = decToBinStr(v44);
    v29 = [NSString stringWithFormat:@"(0x%X) %@", v27, v28];
    [v13 setValue:v29 forKey:@"FW_VALIDATION_BITS"];

    v42 = 0;
    v43 = 0;
    LODWORD(v28) = DeviceCMInterface::getJasperProjectorFault(&self->m_diagnosticCMInterface, &v43, &v42);
    v30 = v42;
    v31 = v30;
    if (v28)
    {

      v21 = @"Fail to get information";
      [v13 setValue:@"Fail to get information" forKey:@"PROJECTOR_FAULT"];
      sub_100003220(a4, 11, @"Fail to get information");
    }

    else if (v30)
    {
      [v13 setValue:v30 forKey:@"PROJECTOR_QUARK_FAULT"];
    }

    else
    {
      v32 = [NSString stringWithFormat:@"0x%X", v43];
      [v13 setValue:v32 forKey:@"PROJECTOR_RIKER_FAULT"];
    }

    v43 = 0;
    if (DeviceCMInterface::getJasperProjectorWillFault(&self->m_diagnosticCMInterface, &v43))
    {

      v21 = @"Fail to get riker information";
      [v13 setValue:@"Fail to get information" forKey:@"PROJECTOR_WILL_FAULT"];
      sub_100003220(a4, 11, @"Fail to get riker information");
    }

    else
    {
      v33 = [NSString stringWithFormat:@"0x%X", v43];
      [v13 setValue:v33 forKey:@"PROJECTOR_WILL_FAULT"];
    }

    if (self->m_diagnosticCMInterface.m_hVersion <= 15)
    {
      v43 = 0;
      if (DeviceCMInterface::getJasperResistance(&self->m_diagnosticCMInterface, &v43))
      {

        v21 = @"Fail to get riker information";
        [v13 setValue:@"Fail to get information" forKey:@"PROJECTOR_RIKER_RESISTANCE"];
        sub_100003220(a4, 11, @"Fail to get riker information");
      }

      else
      {
        v34 = [NSString stringWithFormat:@"%d", v43];
        [v13 setValue:v34 forKey:@"PROJECTOR_RIKER_RESISTANCE"];
      }
    }

    if (!self->m_isCurrentStatusOK)
    {
      v20 = @"FAIL";
    }
  }

  [v13 setValue:v20 forKey:@"CONFIGURATION_STATUS"];
  v35 = [NSNumber numberWithInt:self->m_diagnosticCMInterface.m_hVersion];
  [v13 setValue:v35 forKey:@"H_VER_ID"];

  if (self->m_isCurrentStatusOK)
  {

    v21 = @"Configuration status all pass";
    sub_100003220(a4, 0, @"Configuration status all pass");
  }

  v41 = v13;
  setTestValidationBit(v44, &v41);
  v36 = v41;

  updateJasperValidationStatus(v44, a4);
  if (v44 == 525312)
  {

    v21 = @"Real power supply fault detected";
    sub_100003220(a4, 525312, @"Real power supply fault detected");
  }

  objc_autoreleasePoolPop(v7);
  v37 = DeviceCMInterface::getJasperConfigurationStringKey(&self->m_diagnosticCMInterface, 0);
  if (v36)
  {
    [(Jas_FW_Status_iOSController *)self updateStatusDictionary:v37 andValue:v36];
  }
}

- (void)updateStatusDictionary:(id)a3 andValue:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->m_statusesDict allKeys];
  v8 = [v7 containsObject:v12];

  m_statusesDict = self->m_statusesDict;
  if (v8)
  {
    v10 = [(NSMutableDictionary *)self->m_statusesDict valueForKey:v12];
    v11 = [v6 mutableCopy];
    [v10 addEntriesFromDictionary:v11];
  }

  else
  {
    v10 = [v6 mutableCopy];
    [(NSMutableDictionary *)m_statusesDict setValue:v10 forKey:v12];
  }
}

- (void)performFlow
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v4 = [v3 lastPathComponent];
  m_timeForStreamInUSec = self->m_timeForStreamInUSec;
  v6 = decToBinStr(self->m_casesMask);
  v7 = [NSString stringWithFormat:@"Start diagnostic flow stream time: %d[sec] cases mask: %@", (m_timeForStreamInUSec / 1000000), v6];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v4, 455, v7);

  self->m_isAllPass = 1;
  if (![(Jas_FW_Status_iOSController *)self checkConnectivity])
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v9 = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"%@", @"cannot define camera ststus, connectivity issue detected as camera interfaces cannot be reached"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v9, 463, v10);

    [(Jas_FW_Status_iOSController *)self finalizingWithStatusCode:11 andInfoString:@"cannot define camera ststus, connectivity issue detected as camera interfaces cannot be reached"];
  }

  if (![(Jas_FW_Status_iOSController *)self isPortTypeJasperDetected])
  {
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v12 = [v11 lastPathComponent];
    v13 = [NSString stringWithFormat:@"%@", @"Jasper module is missing"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v12, 471, v13);

    [(Jas_FW_Status_iOSController *)self finalizingWithStatusCode:10 andInfoString:@"Jasper module is missing"];
  }

  if ([(Jas_FW_Status_iOSController *)self isUnsealedUnitModule])
  {
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"%@", @"Unsealed unit module suspected"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v15, 479, v16);

    [(Jas_FW_Status_iOSController *)self finalizingWithStatusCode:4294967294 andInfoString:@"Unsealed unit module suspected"];
  }

  if (self->m_scenariosNumber >= 1)
  {
    objc_autoreleasePoolPush();
    DeviceCMInterface::DeviceCMInterface(&v28);
    v17 = *&v28.m_rgbSuperWideFrameCount;
    *&self->m_diagnosticCMInterface.m_hVersion = *&v28._vptr$StreamingClient;
    *&self->m_diagnosticCMInterface.m_captureDeviceController = v17;
    *&self->m_diagnosticCMInterface.m_streamIdsInfo.rgbPearlStreamId = *&v28.m_timer.beginTime;
    *&self->m_diagnosticCMInterface.m_currentPearlConfiguration.isIrOn = *&v28.m_maxBanksNumberForFrame;
    self->m_diagnosticCMInterface.m_currentPearlConfiguration.bitMaskID = LODWORD(v28.m_minAveragePointsNumberThreshold);
    objc_storeStrong(&self->m_diagnosticCMInterface.m_currentPearlConfiguration.deviceName, v28.m_banksIdDictionary.__tree_.__begin_node_);
    *&self->m_diagnosticCMInterface.m_currentJasperConfiguration.isJasperOn = *&v28.m_banksIdDictionary.__tree_.__end_node_.__left_;
    DeviceCMInterface::~DeviceCMInterface(&v28);
    JasDiagnosticInteractor::JasDiagnosticInteractor(&v28);
    *&self->m_diagnosticInteractor.m_jasperFramesCount = *&v28.m_jasperFramesCount;
    *(&self->m_diagnosticInteractor.m_jasperPointsCount + 2) = *(&v28.m_jasperPointsCount + 2);
    self->m_diagnosticInteractor.m_timer = v28.m_timer;
    m_deviceName = v28.m_deviceName;
    v28.m_deviceName = 0;
    v19 = self->m_diagnosticInteractor.m_deviceName;
    self->m_diagnosticInteractor.m_deviceName = m_deviceName;

    p_end_node = &self->m_diagnosticInteractor.m_banksIdDictionary.__tree_.__end_node_;
    left = self->m_diagnosticInteractor.m_banksIdDictionary.__tree_.__end_node_.__left_;
    *&self->m_diagnosticInteractor.m_maxBanksNumberForFrame = *&v28.m_maxBanksNumberForFrame;
    sub_100001878(&self->m_diagnosticInteractor.m_banksIdDictionary, left);
    v22 = v28.m_banksIdDictionary.__tree_.__end_node_.__left_;
    self->m_diagnosticInteractor.m_banksIdDictionary.__tree_.__begin_node_ = v28.m_banksIdDictionary.__tree_.__begin_node_;
    self->m_diagnosticInteractor.m_banksIdDictionary.__tree_.__end_node_.__left_ = v22;
    size = v28.m_banksIdDictionary.__tree_.__size_;
    self->m_diagnosticInteractor.m_banksIdDictionary.__tree_.__size_ = v28.m_banksIdDictionary.__tree_.__size_;
    if (size)
    {
      v22[2] = p_end_node;
      v22 = 0;
      v28.m_banksIdDictionary.__tree_.__begin_node_ = &v28.m_banksIdDictionary.__tree_.__end_node_;
      v28.m_banksIdDictionary.__tree_.__end_node_.__left_ = 0;
      v28.m_banksIdDictionary.__tree_.__size_ = 0;
    }

    else
    {
      self->m_diagnosticInteractor.m_banksIdDictionary.__tree_.__begin_node_ = p_end_node;
    }

    *&self->m_diagnosticInteractor.m_goodPointsCount = *&v28.m_goodPointsCount;
    self->m_diagnosticInteractor.m_subframeCount = v28.m_subframeCount;
    v28._vptr$StreamingClient = off_1000206C0;
    sub_100001878(&v28.m_banksIdDictionary, v22);

    self->m_diagnosticCMInterface.m_delegate = &self->m_diagnosticInteractor;
    v24 = DeviceCMInterface::getJasperConfigurationStringKey(&self->m_diagnosticCMInterface, self->m_configurationsList.__begin_);
    v28._vptr$StreamingClient = &stru_1000214C8;
    memset(&v28.m_jasperFramesCount, 0, 24);
    v28._vptr$StreamingClient = v24;

    DeviceCMInterface::initAndActivateCaptureDeviceController(&self->m_diagnosticCMInterface);
  }

  v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v26 = [v25 lastPathComponent];
  v27 = [NSString stringWithFormat:@"%@", @"Finish diagnostic flow..."];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v26, 623, v27);

  if ((self->m_isAllPass & [(Jas_FW_Status_iOSController *)self isAllStatusesGood]& 1) != 0)
  {
    [(Jas_FW_Status_iOSController *)self finalizingWithStatusCode:0 andInfoString:&stru_1000214C8];
  }

  else
  {
    [(Jas_FW_Status_iOSController *)self finalizingOnError];
  }
}

- (BOOL)isAllStatusesGood
{
  p_m_validationStatusesList = &self->m_validationStatusesList;
  begin = self->m_validationStatusesList.__begin_;
  if (self->m_validationStatusesList.__end_ == begin)
  {
    return 1;
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = begin + 32 * v4;
    v9 = *v6;
    memset(v10, 0, sizeof(v10));
    sub_100005ADC(v10, *(v6 + 1), *(v6 + 2), (*(v6 + 2) - *(v6 + 1)) >> 3);
    v7 = sub_100003184(&v9);
    v11 = v10;
    sub_100005B98(&v11);

    if ((v7 & 1) == 0)
    {
      break;
    }

    v4 = v5;
    begin = p_m_validationStatusesList->__begin_;
    ++v5;
  }

  while (v4 < (p_m_validationStatusesList->__end_ - p_m_validationStatusesList->__begin_) >> 5);
  return v7;
}

- (void)cancel
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v4 = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"Jasper Diag was cancelled"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v4, 658, v5);

  v6 = [(Jas_FW_Status_iOSController *)self result];
  [v6 setStatusCode:&off_100023DD8];

  m_statusesDict = self->m_statusesDict;
  v8 = [(Jas_FW_Status_iOSController *)self result];
  [v8 setData:m_statusesDict];

  v9 = [(Jas_FW_Status_iOSController *)self result];
  v10 = [v9 data];
  v11 = [(Jas_FW_Status_iOSController *)self result];
  v12 = [v11 statusCode];
  logMainResults(v10, 8253, [v12 intValue]);

  [(Jas_FW_Status_iOSController *)self setFinished:1];
}

- (void)finalizingOnError
{
  [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"All_PASS_STATUS" andValue:&off_100023F38];
  v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
  v3 = [v2 lastPathComponent];
  v4 = [NSString stringWithFormat:@"Agregating statuses"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v3, 669, v4);

  v60[0] = 0;
  v60[1] = 0;
  v59 = v60;
  LODWORD(v52) = 1;
  v55 = &v52;
  *(sub_1000018CC(&v59, &v52) + 8) = 0;
  LODWORD(v52) = 2;
  v55 = &v52;
  *(sub_1000018CC(&v59, &v52) + 8) = 0;
  LODWORD(v52) = -1;
  v55 = &v52;
  *(sub_1000018CC(&v59, &v52) + 8) = 0;
  LODWORD(v52) = 100;
  v55 = &v52;
  *(sub_1000018CC(&v59, &v52) + 8) = 0;
  v47 = [[NSMutableDictionary alloc] initWithCapacity:50];
  begin = self->m_validationStatusesList.__begin_;
  if (self->m_validationStatusesList.__end_ != begin)
  {
    v6 = 0;
    v7 = 0;
    v43 = 0;
    while (1)
    {
      v8 = begin + 32 * v6;
      v55 = *v8;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      sub_100005ADC(&v56, *(v8 + 1), *(v8 + 2), (*(v8 + 2) - *(v8 + 1)) >> 3);
      if ((sub_100003184(&v55) & 1) == 0)
      {
        break;
      }

LABEL_4:
      v52 = &v56;
      sub_100005B98(&v52);

      begin = self->m_validationStatusesList.__begin_;
      v6 = ++v43;
      if (v43 >= ((self->m_validationStatusesList.__end_ - begin) >> 5))
      {
        goto LABEL_27;
      }
    }

    v9 = 0;
LABEL_7:
    v52 = 0;
    v53 = 0;
    v54 = 0;
    sub_100005ADC(&v52, v56, v57, (v57 - v56) >> 3);
    v10 = v9;
    v11 = v53 - v52;
    v62 = &v52;
    sub_100005B98(&v62);
    v45 = v10;
    if (v10 >= v11 >> 3)
    {
      goto LABEL_4;
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    sub_100005ADC(&v52, v56, v57, (v57 - v56) >> 3);
    v12 = v52[v10];
    v13 = [v12 allKeys];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
    if (!v14)
    {
      goto LABEL_26;
    }

    v15 = *v49;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v48 + 1) + 8 * v16);
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8253/Jas_FW_Status_iOSController.mm"];
      v19 = [v18 lastPathComponent];
      v20 = [v12 objectForKeyedSubscript:v17];
      v21 = [NSString stringWithFormat:@"%@", v20];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v19, 693, v21);

      v22 = [v17 intValue];
      v23 = v22;
      if (v22 <= 0x30)
      {
        if (((1 << v22) & 0x1FF0040700C00) != 0)
        {
          LODWORD(v62) = 1;
          v61 = &v62;
          v24 = sub_1000018CC(&v59, &v62);
          ++*(v24 + 8);
          v25 = 1;
          goto LABEL_16;
        }

        if (v22 == 31)
        {
          LODWORD(v62) = -1;
          v61 = &v62;
          v31 = sub_1000018CC(&v59, &v62);
          ++*(v31 + 8);
          v25 = 0xFFFFFFFFLL;
          goto LABEL_16;
        }
      }

      if (v22 == 525312)
      {
        LODWORD(v62) = 2;
        v61 = &v62;
        v32 = sub_1000018CC(&v59, &v62);
        ++*(v32 + 8);
        v25 = 2;
      }

      else
      {
        LODWORD(v62) = 100;
        v61 = &v62;
        v33 = sub_1000018CC(&v59, &v62);
        ++*(v33 + 8);
        if (!v23)
        {
          goto LABEL_17;
        }

        v25 = 100;
      }

LABEL_16:
      v26 = [NSString stringWithFormat:@"GROUP_CODE: %d", v25];
      v27 = getJasperStatusValueString(v23);
      v28 = [NSString stringWithFormat:@"[%d] %@", v7, v27];

      v63 = v26;
      v29 = [v12 objectForKeyedSubscript:v17];
      v64 = v29;
      v30 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];

      [v47 setValue:v30 forKey:v28];
      v7 = (v7 + 1);
LABEL_17:
      if (v14 == ++v16)
      {
        v34 = [obj countByEnumeratingWithState:&v48 objects:v65 count:16];
        v14 = v34;
        if (!v34)
        {
LABEL_26:

          [(Jas_FW_Status_iOSController *)self updateStatusDictionary:v55 andValue:v47];
          v62 = &v52;
          sub_100005B98(&v62);
          v9 = v45 + 1;
          goto LABEL_7;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_27:
  LODWORD(v52) = 2;
  v55 = &v52;
  if (*(sub_1000018CC(&v59, &v52) + 8) <= 0)
  {
    LODWORD(v52) = 1;
    v55 = &v52;
    if (*(sub_1000018CC(&v59, &v52) + 8) <= 0)
    {
      LODWORD(v52) = -1;
      v55 = &v52;
      if (*(sub_1000018CC(&v59, &v52) + 8) <= 0)
      {
        v35 = &off_100023E38;
      }

      else
      {
        v35 = &off_100023E20;
      }
    }

    else
    {
      v35 = &off_100023E08;
    }
  }

  else
  {
    v35 = &off_100023DF0;
  }

  v36 = [(Jas_FW_Status_iOSController *)self result];
  [v36 setStatusCode:v35];

  m_statusesDict = self->m_statusesDict;
  v38 = [(Jas_FW_Status_iOSController *)self result];
  [v38 setData:m_statusesDict];

  v39 = [(Jas_FW_Status_iOSController *)self result];
  v40 = [v39 data];
  v41 = [(Jas_FW_Status_iOSController *)self result];
  v42 = [v41 statusCode];
  logMainResults(v40, 8253, [v42 intValue]);

  [(Jas_FW_Status_iOSController *)self setFinished:1];
  sub_100001878(&v59, v60[0]);
}

- (void)finalizingWithStatusCode:(int)a3 andInfoString:(id)a4
{
  v6 = a4;
  if (a3 || !self->m_isAllPass)
  {
    [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"All_PASS_STATUS" andValue:&off_100023F60];
    if ((a3 - 10) < 2)
    {
      if (!v6)
      {
        [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"IMMEDIATE_ERROR_FINALIZING" andValue:&off_100023FB0];
        v7 = &off_100023E08;
        goto LABEL_16;
      }

      v20 = @"FINALIZING_ERROR_INFO";
      v21 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"IMMEDIATE_ERROR_FINALIZING" andValue:v8];
      v7 = &off_100023E08;
    }

    else if (a3 == -2)
    {
      if (!v6)
      {
        v7 = &off_100023E68;
        goto LABEL_16;
      }

      v18 = @"FINALIZING_ERROR_INFO";
      v19 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"IMMEDIATE_ERROR_FINALIZING" andValue:v8];
      v7 = &off_100023E68;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_7;
      }

      v16 = @"JASPER_UNKNOWN_GROUP";
      v17 = v6;
      v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"IMMEDIATE_ERROR_FINALIZING" andValue:v8];
      v7 = &off_100023E38;
    }

    goto LABEL_16;
  }

  [(Jas_FW_Status_iOSController *)self updateStatusDictionary:@"All_PASS_STATUS" andValue:&off_100023F88];
LABEL_7:
  v7 = &off_100023E50;
LABEL_16:
  v9 = [(Jas_FW_Status_iOSController *)self result];
  [v9 setStatusCode:v7];

  m_statusesDict = self->m_statusesDict;
  v11 = [(Jas_FW_Status_iOSController *)self result];
  [v11 setData:m_statusesDict];

  v12 = [(Jas_FW_Status_iOSController *)self result];
  v13 = [v12 data];
  v14 = [(Jas_FW_Status_iOSController *)self result];
  v15 = [v14 statusCode];
  logMainResults(v13, 8253, [v15 intValue]);

  [(Jas_FW_Status_iOSController *)self setFinished:1];
}

- (id).cxx_construct
{
  self->m_validationStatusesList.__end_ = 0;
  self->m_validationStatusesList.__cap_ = 0;
  self->m_validationStatusesList.__begin_ = 0;
  DeviceCMInterface::DeviceCMInterface(&self->m_diagnosticCMInterface);
  self->m_configurationsList.__end_ = 0;
  self->m_configurationsList.__cap_ = 0;
  self->m_configurationsList.__begin_ = 0;
  JasDiagnosticInteractor::JasDiagnosticInteractor(&self->m_diagnosticInteractor);
  return self;
}

@end