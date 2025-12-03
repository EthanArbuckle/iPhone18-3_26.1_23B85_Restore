@interface Pearl_FW_Status_iOSController
- (BOOL)checkConnectivity;
- (BOOL)isPearlDetected;
- (id).cxx_construct;
- (id)getEcStatus;
- (int)ConfigDevice:(PearlConfiguration *)device;
- (int)getConfigurationForCaseMask:(int)mask returnedConfiguration:(PearlConfiguration *)configuration;
- (int)startStreaming;
- (int)stopStreaming;
- (void)cancel;
- (void)disableAttentionDetection;
- (void)finalizingWithErrorStatusCode:(id)code andInfoString:(id)string;
- (void)finalizingWithStatusCode:(id)code andFinalizingCode:(int)finalizingCode;
- (void)performFlow;
- (void)produceGeneralFailurForDiagnosticConfiguration:(PearlConfiguration *)configuration withString:(id)string;
- (void)produceStatusForDiagnosticConfigurationDetailsOnFailureOnly:(PearlConfiguration *)only;
- (void)restoreAttentionDetection;
- (void)setResultBitMaskStatus:(int)status andState:(BOOL)state;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)teardown;
- (void)terminateComunication;
@end

@implementation Pearl_FW_Status_iOSController

- (int)getConfigurationForCaseMask:(int)mask returnedConfiguration:(PearlConfiguration *)configuration
{
  if (mask <= 15)
  {
    if (mask > 3)
    {
      if (mask == 4)
      {
        v5 = 0;
        *&configuration->isIrOn = 1;
        configuration->isRgbOn = 0;
        v6 = 0x400000004;
        goto LABEL_22;
      }

      if (mask == 8)
      {
        v5 = 0;
        *&configuration->isIrOn = 1;
        configuration->isRgbOn = 0;
        v6 = 0x800000001;
        goto LABEL_22;
      }
    }

    else
    {
      if (mask == 1)
      {
        v5 = 0;
        *&configuration->isIrOn = 257;
        configuration->isRgbOn = 1;
        v6 = 0x100000003;
        goto LABEL_22;
      }

      if (mask == 2)
      {
        v5 = 0;
        *&configuration->isIrOn = 1;
        configuration->isRgbOn = 0;
        v6 = 0x200000003;
        goto LABEL_22;
      }
    }

LABEL_24:
    deviceName = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm", configuration];
    lastPathComponent = [deviceName lastPathComponent];
    v10 = decToBinStr(mask);
    v11 = [NSString stringWithFormat:@"no available configuration detected for this mask bit location %@", v10];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 84, v11);

    v5 = -536870206;
    goto LABEL_23;
  }

  if (mask <= 63)
  {
    if (mask == 16)
    {
      v5 = 0;
      *&configuration->isIrOn = 0;
      configuration->isRgbOn = 1;
      v6 = 0x1000000000;
      goto LABEL_22;
    }

    if (mask == 32)
    {
      v5 = 0;
      *&configuration->isIrOn = 257;
      configuration->isRgbOn = 0;
      v6 = 0x2000000003;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (mask == 64)
  {
    v5 = 0;
    *&configuration->isIrOn = 257;
    configuration->isRgbOn = 0;
    v6 = 0x4000000004;
    goto LABEL_22;
  }

  if (mask == 128)
  {
    v5 = 0;
    *&configuration->isIrOn = 1;
    configuration->isRgbOn = 0;
    v6 = 0x8000000005;
    goto LABEL_22;
  }

  if (mask != 256)
  {
    goto LABEL_24;
  }

  v5 = 0;
  *&configuration->isIrOn = 1;
  configuration->isRgbOn = 0;
  v6 = 0x10000000006;
LABEL_22:
  *&configuration->irType = v6;
  deviceName = configuration->deviceName;
  configuration->deviceName = 0;
LABEL_23:

  return v5;
}

- (void)setResultBitMaskStatus:(int)status andState:(BOOL)state
{
  m_resultsCasesMask = self->m_resultsCasesMask;
  v5 = m_resultsCasesMask & ~status;
  v6 = m_resultsCasesMask | status;
  if (!state)
  {
    v6 = v5;
  }

  self->m_resultsCasesMask = v6;
}

- (void)disableAttentionDetection
{
  if (self->m_isUseADControl)
  {
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v9 lastPathComponent];
    v4 = [NSString stringWithFormat:@"disableAttentionDetection if needed"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 106, v4);

    self->m_attentionDetectionSetting = _AXSAttentionAwarenessFeaturesEnabled() != 0;
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent2 = [v10 lastPathComponent];
    v6 = [NSString stringWithFormat:@"current attention detection status %d", self->m_attentionDetectionSetting];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 108, v6);

    if (self->m_attentionDetectionSetting)
    {
      _AXSSetAttentionAwarenessFeaturesEnabled();
      usleep(0x7A120u);
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent3 = [v11 lastPathComponent];
      v8 = [NSString stringWithFormat:@"disable attention detection, current status is %d", _AXSAttentionAwarenessFeaturesEnabled()];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 113, v8);
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent3 = [v11 lastPathComponent];
      v8 = [NSString stringWithFormat:@"attention detection already disabled"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 117, v8);
    }
  }
}

- (void)restoreAttentionDetection
{
  if (self->m_isUseADControl)
  {
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v9 lastPathComponent];
    v4 = [NSString stringWithFormat:@"restore attention detection if needed"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 128, v4);

    LODWORD(v4) = _AXSAttentionAwarenessFeaturesEnabled() != 0;
    LODWORD(lastPathComponent) = self->m_attentionDetectionSetting;
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    [v10 lastPathComponent];
    if (lastPathComponent == v4)
      lastPathComponent2 = {;
      v6 = [NSString stringWithFormat:@"attention detection already as require"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 139, v6);
    }

    else
      v7 = {;
      v8 = [NSString stringWithFormat:@"restore attention detection to its prevues status of %d", self->m_attentionDetectionSetting];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", v7, 132, v8);

      _AXSSetAttentionAwarenessFeaturesEnabled();
      usleep(0x7A120u);
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent2 = [v10 lastPathComponent];
      v6 = [NSString stringWithFormat:@"attention detection current status is %d after restoring", _AXSAttentionAwarenessFeaturesEnabled()];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 135, v6);
    }
  }
}

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  inputsCopy = inputs;
  self->m_useHighPriorityControlRequest = [inputsCopy useHighPriority];
  self->m_isUseADControl = [inputsCopy useADControl];
  self->m_preemtionWaitingTimeInMicroSec = [inputsCopy preemtingWaitInMicroSec];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [NSString stringWithFormat:@"input value: useHighPriority = %d", self->m_useHighPriorityControlRequest];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 151, v7);

  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent2 = [v8 lastPathComponent];
  v10 = [NSString stringWithFormat:@"input value: isUseADControl = %d", self->m_isUseADControl];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 152, v10);

  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent3 = [v11 lastPathComponent];
  v13 = [NSString stringWithFormat:@"input value: preemtionWaitingTimeInMicroSec = %d", self->m_preemtionWaitingTimeInMicroSec];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 153, v13);

  [(Pearl_FW_Status_iOSController *)self disableAttentionDetection];
  self->m_isYGErrorDetected = 0;
  v14 = [[NSMutableDictionary alloc] initWithCapacity:500];
  m_statusesDict = self->m_statusesDict;
  self->m_statusesDict = v14;

  v60 = MGCopyAnswer();
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent4 = [v16 lastPathComponent];
  v18 = [NSString stringWithFormat:@"setupWithInputs Pearl Diagnostic %@", v60];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent4, 160, v18);

  [(NSMutableDictionary *)self->m_statusesDict setValue:v60 forKey:@"DEVICE_NAME"];
  v19 = self->m_statusesDict;
  v20 = getCurrentVersion();
  [(NSMutableDictionary *)v19 setValue:v20 forKey:@"VERSION"];

  self->m_resultsCasesMask = 0;
  self->m_timeForStreamInUSec = 5000000;
  self->m_casesMask = 255;
  v68 = -1;
  v69 = -1;
  v21 = [(Pearl_FW_Status_iOSController *)self getPearlProjectorHWVersion:&v69];
  self->m_isSmp = 0;
  self->m_isNuri = 0;
  if (!v21)
  {
    if (v69 == 10)
    {
      v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent5 = [v54 lastPathComponent];
      v56 = [NSString stringWithFormat:@"NURI projector version detected"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent5, 182, v56);

      self->m_isNuri = 1;
    }

    else if (v69 == 8)
    {
      v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent6 = [v29 lastPathComponent];
      v31 = [NSString stringWithFormat:@"SMP projector version detected"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent6, 177, v31);

      self->m_isSmp = 1;
    }

    else
    {
      v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent7 = [v57 lastPathComponent];
      v59 = [NSString stringWithFormat:@"Standard Pearl projector version detected"];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent7, 187, v59);
    }
  }

  v67 = 0;
  v22 = [(Pearl_FW_Status_iOSController *)self getRigelInfo:&v68 serialNumber:&v67];
  v23 = v67;
  if (v22)
  {
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent8 = [v24 lastPathComponent];
    v26 = [NSString stringWithFormat:@"failed to get Rigel info"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent8, 193, v26);
  }

  v27 = @"N/A";
  if (v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = @"N/A";
  }

  if (v68 != -1)
  {
    v27 = [NSString stringWithFormat:@"%d", v68];
  }

  [(NSMutableDictionary *)self->m_statusesDict setValue:v27 forKey:@"RIGEL_OTP_VERSION"];
  [(NSMutableDictionary *)self->m_statusesDict setValue:v28 forKey:@"RIGEL_SERIAL_NUMBER"];
  if ([(Pearl_FW_Status_iOSController *)self getPLEUUID:v70])
  {
    [(NSMutableDictionary *)self->m_statusesDict setValue:@"N/A" forKey:@"PCE_CALIB_UUID"];
  }

  else
  {
    v32 = [NSString stringWithFormat:@"%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X", v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12], v70[13], v70[14], v70[15]];
    [(NSMutableDictionary *)self->m_statusesDict setValue:v32 forKey:@"PCE_CALIB_UUID"];
  }

  if (self->m_isSmp || self->m_isNuri)
  {
    self->m_casesMask = 315;
  }

  if (!inputsCopy)
  {
    v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent9 = [v37 lastPathComponent];
    v39 = [NSString stringWithFormat:@"Fail to instantiate input class"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent9, 282, v39);

    [(Pearl_FW_Status_iOSController *)self finalizingWithErrorStatusCode:&off_100038A90 andInfoString:@"Fail to instantiate input class"];
    goto LABEL_37;
  }

  if ([inputsCopy configurationTimeForStreamInSec] >= 1)
  {
    if ([inputsCopy configurationTimeForStreamInSec] <= 4)
    {
      v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"external stream time of %d sec detected and it is less then minimal (5 sec), Diagnostic will not run", [inputsCopy configurationTimeForStreamInSec]);
      v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent10 = [v34 lastPathComponent];
      v36 = [NSString stringWithFormat:@"%@", v33];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent10, 239, v36);

      [(Pearl_FW_Status_iOSController *)self finalizingWithErrorStatusCode:&off_100038A90 andInfoString:v33];
      goto LABEL_37;
    }

    self->m_timeForStreamInUSec = 1000000 * [inputsCopy configurationTimeForStreamInSec];
  }

  if ([inputsCopy diagnosticCasesMask] != -1)
  {
    v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent11 = [v40 lastPathComponent];
    v42 = [NSString stringWithFormat:@"Overriding mask due to external file input"];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent11, 249, v42);

    self->m_casesMask = [inputsCopy diagnosticCasesMask];
  }

  v43 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent12 = [v43 lastPathComponent];
  m_casesMask = self->m_casesMask;
  v46 = decToBinStr(self->m_casesMask);
  v47 = [NSString stringWithFormat:@"diagnostic mask: %d [%@] detected", m_casesMask, v46];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent12, 253, v47);

  if (self->m_casesMask <= 0x1FF)
  {
    v49 = 1;
    v50 = 9;
    while (1)
    {
      if ((self->m_casesMask & v49) != 0)
      {
        v66 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = v60;
        if ([(Pearl_FW_Status_iOSController *)self getConfigurationForCaseMask:v49 returnedConfiguration:&v62])
        {
          [(Pearl_FW_Status_iOSController *)self finalizingWithErrorStatusCode:&off_100038A90 andInfoString:@"Bad Diagnostic bit mask"];

          goto LABEL_37;
        }

        sub_1000131B8(&self->m_configurationsList, &v62);
      }

      v49 = (2 * v49);
      if (!--v50)
      {
        v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
        lastPathComponent13 = [v51 lastPathComponent];
        v53 = [NSString stringWithFormat:@"time for streaming: %d [us]", self->m_timeForStreamInUSec];
        NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent13, 286, v53);

        self->m_exclaveStatus = 0;
        self->m_isIrEnable = 0;
        self->m_isRgbEnable = 0;
        self->m_isAllPass = 0;
        self->m_isCurrentStatusOK = 1;
        self->m_scenariosNumber = -1431655765 * ((self->m_configurationsList.__end_ - self->m_configurationsList.__begin_) >> 3);
        self->m_passCount = 0;
        goto LABEL_37;
      }
    }
  }

  v48 = [NSString stringWithFormat:@"Bad Diagnostic bit mask, bit mask 0x%x > 0x%x", self->m_casesMask, 511];
  [(Pearl_FW_Status_iOSController *)self finalizingWithErrorStatusCode:&off_100038A90 andInfoString:v48];

LABEL_37:
}

- (void)produceGeneralFailurForDiagnosticConfiguration:(PearlConfiguration *)configuration withString:(id)string
{
  stringCopy = string;
  v7 = DeviceCMInterface::getPearlConfigurationStringKey(&self->m_diagnosticCMInterface, configuration);
  self->m_isAllPass = 0;
  self->m_isCurrentStatusOK = 0;
  m_statusesDict = self->m_statusesDict;
  v10[0] = @"OVERALL_FOR_CONFIGURATION";
  v10[1] = @"Status";
  v11[0] = @"FAIL";
  v11[1] = stringCopy;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(NSMutableDictionary *)m_statusesDict setValue:v9 forKey:v7];

  [(Pearl_FW_Status_iOSController *)self setResultBitMaskStatus:configuration->bitMaskID andState:1];
}

- (void)produceStatusForDiagnosticConfigurationDetailsOnFailureOnly:(PearlConfiguration *)only
{
  self->m_isCurrentStatusOK = 1;
  if (!only->isIrOn)
  {
    v62 = 0;
    goto LABEL_56;
  }

  context = objc_autoreleasePoolPush();
  v61 = [[NSMutableDictionary alloc] initWithCapacity:70];
  v74 = -1;
  isGmcOk = PearlDiagnosticInteractor::isGmcOk(&self->m_diagnosticInteractor);
  DeviceCMInterface::validateIrFwStatus(&self->m_diagnosticCMInterface, &v74);
  v4 = v74;
  if (self->m_isCurrentStatusOK && v74 == 0)
  {
    v6 = self->m_diagnosticInteractor.m_isPearlIrFramesArrived & isGmcOk;
  }

  else
  {
    v6 = 0;
  }

  self->m_isCurrentStatusOK = v6 & 1;
  self->m_isAllPass &= v6;
  if (!self->m_isCurrentStatusOK)
  {
    if (self->m_isSmp || self->m_isNuri)
    {
      *v72 = 0;
      *v73 = 0;
      v71 = 0;
      v70 = 0;
      v69 = 0;
      v7 = [[NSMutableDictionary alloc] initWithCapacity:70];
      if (DeviceCMInterface::getGuadalupeValues(&self->m_diagnosticCMInterface, v73, v72, &v71, &v70, &v69))
      {
        [v7 setValue:@"N/A" forKey:@"PROJECTOR_STATE"];
        [v7 setValue:@"N/A" forKey:@"PROJECTOR_FAULTS"];
        [v7 setValue:@"N/A" forKey:@"PROJECTOR_RESISTANCE"];
        [v7 setValue:@"N/A" forKey:@"PROJECTOR_LAST_RESISTANCE"];
        [v7 setValue:@"N/A" forKey:@"GUADALUPE_RECORDING_REGISTER"];
        [v7 setValue:@"N/A" forKey:@"GUADALUPE_REGISTER_4"];
      }

      else
      {
        v8 = decToBinStr(v73[0]);
        v9 = [NSString stringWithFormat:@"%@", v8];
        [v7 setValue:v9 forKey:@"PROJECTOR_STATE"];

        v10 = decToBinStr(*v72);
        v11 = [NSString stringWithFormat:@"%@", v10];
        [v7 setValue:v11 forKey:@"PROJECTOR_STATUS"];

        v12 = [NSString stringWithFormat:@"%lld", v71];
        [v7 setValue:v12 forKey:@"PROJECTOR_RESISTANCE"];

        v13 = [NSString stringWithFormat:@"%d", v70];
        [v7 setValue:v13 forKey:@"PROJECTOR_LAST_RESISTANCE"];

        LODWORD(v11) = HIDWORD(v69);
        v14 = decToBinStr(v69);
        v15 = [NSString stringWithFormat:@"%@", v14];
        [v7 setValue:v15 forKey:@"GUADALUPE_RECORDING_REGISTER"];

        v16 = decToBinStr(v11);
        v17 = [NSString stringWithFormat:@"%@", v16];
        [v7 setValue:v17 forKey:@"GUADALUPE_REGISTER_4"];
      }

      [v61 setValue:v7 forKey:@"GUADALUPE_VALUES"];

      v4 = v74;
    }

    v18 = decToBinStr(v4);
    [v61 setValue:v18 forKey:@"FW_VALIDATION_BITS"];

    v72[0] = 0;
    if (DeviceCMInterface::isPDECaliobrationValid(&self->m_diagnosticCMInterface, v72))
    {
      v19 = @"Fail to get information";
    }

    else
    {
      if (v72[0])
      {
        goto LABEL_21;
      }

      v19 = @"Not Valid";
    }

    [v61 setValue:v19 forKey:@"PDE_CALIBRATION"];
LABEL_21:
    *v73 = 0;
    v20 = [[NSMutableDictionary alloc] initWithCapacity:50];
    if (only->irType == 1)
    {
      if (!DeviceCMInterface::getPearlFloodProjectorFault(&self->m_diagnosticCMInterface, v73))
      {
        v85 = @"Fault Status";
        v22 = [NSString stringWithFormat:@"0x%08X", *v73];
        v86 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        [v61 setValue:v23 forKey:@"PROJECTOR_FAULT_FLOOD"];

        goto LABEL_29;
      }

      v21 = @"PROJECTOR_FAULT_FLOOD";
    }

    else
    {
      if (!DeviceCMInterface::getStructuredProjectorFault(&self->m_diagnosticCMInterface, v73))
      {
        v83 = @"[0x7C 0x7E 0x80 0x82 0x84]";
        v24 = [NSString stringWithFormat:@"[0x%02X 0x%02X 0x%02X 0x%02X 0x%02X]", HIBYTE(v73[1]), BYTE2(v73[1]), BYTE1(v73[1]), LOBYTE(v73[1]), HIBYTE(v73[0])];
        v84 = v24;
        v25 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        [v20 setValue:v25 forKey:@"Fault Status"];

        v81 = @"[0x1C 0xF0]";
        v26 = [NSString stringWithFormat:@"[0x%02X 0x%02X]", BYTE2(v73[0]), BYTE1(v73[0])];
        v82 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        [v20 setValue:v27 forKey:@"CC State"];

        v79 = @"[0x07]";
        v28 = [NSString stringWithFormat:@"[0x%02X]", LOBYTE(v73[0])];
        v80 = v28;
        v29 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        [v20 setValue:v29 forKey:@"Rigel State"];

        [v61 setValue:v20 forKey:@"PROJECTOR_FAULT_STRUCTURED"];
        goto LABEL_29;
      }

      v21 = @"PROJECTOR_FAULT_STRUCTURED";
    }

    [v61 setValue:@"Fail to get information" forKey:v21];
LABEL_29:
  }

  if (only->isDepthOn && only->irType == 3)
  {
    v67 = 0;
    v68 = 0;
    PearlDiagnosticInteractor::getGmcMetaData(&self->m_diagnosticInteractor, &v68, &v67);
    v57 = v68;
    v30 = v67;
    v31 = [[NSMutableDictionary alloc] initWithCapacity:10];
    v32 = v31;
    if (v30)
    {
      if ([v30 intValue] == 0xFFFF)
      {
        +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d DATA NEVER DETECTED", [v30 intValue]);
      }

      else
      {
        +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v30 intValue]);
      }
      v33 = ;
      [v32 setValue:v33 forKey:@"GMC_RESULTS"];
    }

    else
    {
      [v31 setValue:@"Fail to get information" forKey:@"GMC_RESULTS"];
    }

    if (v57)
    {
      if ([v57 intValue] == -2)
      {
        +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d DATA NEVER DETECTED", [v57 intValue]);
      }

      else
      {
        +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v57 intValue]);
      }
      v34 = ;
      [v32 setValue:v34 forKey:@"GMC_POINT_COUNT"];
    }

    else
    {
      [v32 setValue:@"Fail to get information" forKey:@"GMC_POINT_COUNT"];
    }

    v65 = 0;
    v66 = 0;
    v64 = 0;
    PearlDiagnosticInteractor::getGmcResultInformation(&self->m_diagnosticInteractor, [v30 intValue], &v66, &v65, &v64);
    v35 = v66;
    v36 = v65;
    v37 = v64;
    [v32 setValue:v35 forKey:@"GMC_RESULT_NAME"];
    [v32 setValue:v37 forKey:@"GMC_RESULT_DESCRIPTION"];
    [v32 setValue:v36 forKey:@"GMC_RESULT_STAGE"];
    if (isGmcOk)
    {
      v38 = @"PASS";
    }

    else
    {
      v38 = @"FAIL";
    }

    [v61 setValue:v38 forKey:@"GMC_STATUS"];
    [v61 setValue:v32 forKey:@"GMC_META_DATA"];
  }

  v39 = [NSString stringWithFormat:@"%d", self->m_diagnosticInteractor.m_irPearlFramesCount];
  [v61 setValue:v39 forKey:@"IR_FRAME_COUNT"];

  if (self->m_isCurrentStatusOK & isGmcOk)
  {
    v40 = @"OK";
  }

  else
  {
    v40 = @"FAIL";
  }

  [v61 setValue:v40 forKey:@"OVERALL_IR"];
  if (!self->m_diagnosticInteractor.m_isPearlIrFramesArrived)
  {
    [v61 setValue:@"FAIL" forKey:@"IR_FRAME_VALIDATION"];
  }

  v63 = v61;
  setTestValidationBit(v74, &v63);
  v41 = v63;

  if ((v74 & 0x2000) != 0)
  {
    self->m_isYGErrorDetected = 1;
  }

  objc_autoreleasePoolPop(context);
  v62 = v41;
LABEL_56:
  if (only->isRgbOn)
  {
    m_isPearlRgbFramesArrived = self->m_diagnosticInteractor.m_isPearlRgbFramesArrived;
    self->m_isAllPass &= m_isPearlRgbFramesArrived;
    if (m_isPearlRgbFramesArrived)
    {
      v78[0] = @"OK";
      v77[0] = @"OVERALL_RGB";
      v77[1] = @"RGB_FRAME_COUNT";
      v43 = [NSString stringWithFormat:@"%d", self->m_diagnosticInteractor.m_rgbPearlFramesCount];
      v78[1] = v43;
      v44 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
      [0 setDictionary:v44];
    }

    else
    {
      [0 setDictionary:&off_100038B38];
    }

    self->m_isCurrentStatusOK &= m_isPearlRgbFramesArrived;
  }

  v45 = DeviceCMInterface::getPearlConfigurationStringKey(&self->m_diagnosticCMInterface, 0);
  getEcStatus = [(Pearl_FW_Status_iOSController *)self getEcStatus];
  getEcPipeStats = [(Pearl_FW_Status_iOSController *)self getEcPipeStats];
  if (!getEcStatus)
  {
    v54 = 0;
    if (!v62)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v48 = [[NSMutableDictionary alloc] initWithCapacity:10];
  [v48 setValue:getEcStatus forKey:@"Exclave"];
  v49 = [NSNumber numberWithInt:self->m_exclaveStatus];
  [v48 setValue:v49 forKey:@"Exclave returne code"];

  if (self->m_exclaveStatus)
  {
    v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v50 lastPathComponent];
    v52 = [NSString stringWithFormat:@"detecting exclave value %@ %d", getEcStatus, self->m_exclaveStatus];
    NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 662, v52);
  }

  if (v62)
  {
    if (v48)
    {
      if (getEcPipeStats)
      {
        v53 = getEcPipeStats;
      }

      else
      {
        v53 = @"N/A";
      }

      [v48 setValue:v53 forKey:@"Exclave Display Pipes Stats"];
      v54 = v48;
      [v62 setValue:v48 forKey:@"Exclave"];
    }

    else
    {
      v54 = 0;
    }

LABEL_74:
    m_statusesDict = self->m_statusesDict;
    v75 = @"IR";
    v76 = v62;
    v56 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    [(NSMutableDictionary *)m_statusesDict setValue:v56 forKey:v45];

    goto LABEL_75;
  }

  v54 = v48;
LABEL_75:
  [(Pearl_FW_Status_iOSController *)self setResultBitMaskStatus:only->bitMaskID andState:!self->m_isCurrentStatusOK];
}

- (int)ConfigDevice:(PearlConfiguration *)device
{
  self->m_isRgbEnable = 0;
  self->m_isIrEnable = 0;
  p_m_diagnosticCMInterface = &self->m_diagnosticCMInterface;
  v6 = DeviceCMInterface::configPearlDevice(&self->m_diagnosticCMInterface, device);
  if (v6)
  {
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"fail to configure device"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 721, v9);
  }

  else
  {
    self->m_isIrEnable = p_m_diagnosticCMInterface->m_isPearlIrConfigured;
    self->m_isRgbEnable = p_m_diagnosticCMInterface->m_isPearlRgbConfigured;
  }

  return v6;
}

- (int)startStreaming
{
  if (self->m_isIrEnable)
  {
    if (!self->m_isRgbEnable)
    {
      goto LABEL_9;
    }
  }

  else if (!self->m_isRgbEnable)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"there is no stream avaiable for streaming"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 738, v7);
    v4 = -536870212;
    goto LABEL_11;
  }

  started = DeviceCMInterface::startPearlRgbStream(&self->m_diagnosticCMInterface);
  if (started)
  {
    v4 = started;
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"start Rgb stream failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 747, v7);
LABEL_11:

    return v4;
  }

  if (!self->m_isIrEnable)
  {
    return 0;
  }

LABEL_9:
  v4 = DeviceCMInterface::startPearlIrStream(&self->m_diagnosticCMInterface);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"start ir stream failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 757, v7);
    goto LABEL_11;
  }

  return v4;
}

- (int)stopStreaming
{
  if (self->m_isIrEnable)
  {
    v3 = DeviceCMInterface::stopPearlIrStream(&self->m_diagnosticCMInterface);
    if (v3)
    {
      v4 = v3;
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [NSString stringWithFormat:@"stop ir stream failed"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 775, v7);
LABEL_7:

      return v4;
    }
  }

  if (!self->m_isRgbEnable)
  {
    return 0;
  }

  v4 = DeviceCMInterface::stopPearlRgbStream(&self->m_diagnosticCMInterface);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent = [v5 lastPathComponent];
    v7 = [NSString stringWithFormat:@"stop Rgb stream failed"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 785, v7);
    goto LABEL_7;
  }

  return v4;
}

- (id)getEcStatus
{
  v3 = ecStatusCheck();
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [NSString stringWithFormat:@"ExclavesStatus: %@", v3];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 806, v6);

  if (!self->m_exclaveStatus)
  {
    self->m_exclaveStatus = ecDiagnosticStatusCodeFromStatusString(v3);
  }

  return v3;
}

- (BOOL)checkConnectivity
{
  DeviceCMInterface::DeviceCMInterface(&v5);
  v3 = *&v5.m_captureDeviceController;
  *&self->m_diagnosticCMInterface.m_hVersion = *&v5.m_hVersion;
  *&self->m_diagnosticCMInterface.m_captureDeviceController = v3;
  *&self->m_diagnosticCMInterface.m_streamIdsInfo.rgbPearlStreamId = *&v5.m_streamIdsInfo.rgbPearlStreamId;
  *&self->m_diagnosticCMInterface.m_currentPearlConfiguration.isIrOn = *&v5.m_currentPearlConfiguration.isIrOn;
  self->m_diagnosticCMInterface.m_currentPearlConfiguration.bitMaskID = v5.m_currentPearlConfiguration.bitMaskID;
  objc_storeStrong(&self->m_diagnosticCMInterface.m_currentPearlConfiguration.deviceName, v5.m_currentPearlConfiguration.deviceName);
  *&self->m_diagnosticCMInterface.m_currentJasperConfiguration.isJasperOn = *&v5.m_currentJasperConfiguration.isJasperOn;
  DeviceCMInterface::~DeviceCMInterface(&v5);
  DeviceCMInterface::initAndActivateCaptureDeviceController(&self->m_diagnosticCMInterface);
}

- (BOOL)isPearlDetected
{
  DeviceCMInterface::DeviceCMInterface(&v5);
  v3 = *&v5.m_captureDeviceController;
  *&self->m_diagnosticCMInterface.m_hVersion = *&v5.m_hVersion;
  *&self->m_diagnosticCMInterface.m_captureDeviceController = v3;
  *&self->m_diagnosticCMInterface.m_streamIdsInfo.rgbPearlStreamId = *&v5.m_streamIdsInfo.rgbPearlStreamId;
  *&self->m_diagnosticCMInterface.m_currentPearlConfiguration.isIrOn = *&v5.m_currentPearlConfiguration.isIrOn;
  self->m_diagnosticCMInterface.m_currentPearlConfiguration.bitMaskID = v5.m_currentPearlConfiguration.bitMaskID;
  objc_storeStrong(&self->m_diagnosticCMInterface.m_currentPearlConfiguration.deviceName, v5.m_currentPearlConfiguration.deviceName);
  *&self->m_diagnosticCMInterface.m_currentJasperConfiguration.isJasperOn = *&v5.m_currentJasperConfiguration.isJasperOn;
  DeviceCMInterface::~DeviceCMInterface(&v5);
  DeviceCMInterface::initAndActivateCaptureDeviceController(&self->m_diagnosticCMInterface);
}

- (void)performFlow
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent = [v3 lastPathComponent];
  m_timeForStreamInUSec = self->m_timeForStreamInUSec;
  v6 = decToBinStr(self->m_casesMask);
  v7 = [NSString stringWithFormat:@"Start diagnostic flow stream time: %d[sec] cases mask: %@", (m_timeForStreamInUSec / 1000000), v6];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 870, v7);

  v35 = 5;
  PearlSelfTestResult = getPearlSelfTestResult(&v35);
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent2 = [v9 lastPathComponent];
  v11 = [NSString stringWithFormat:@"SelfTestResult ret value is %d results %llu", PearlSelfTestResult, v35];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent2, 874, v11);

  self->m_isAllPass = 1;
  self->m_resultsCasesMask = 0;
  if ([(Pearl_FW_Status_iOSController *)self checkConnectivity])
  {
    if (![(Pearl_FW_Status_iOSController *)self isPortTypeFrontRgbDetected])
    {
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent3 = [v12 lastPathComponent];
      v14 = [NSString stringWithFormat:@"Missing FCAM device, tests with FCAM will fail!"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent3, 888, v14);
    }

    if ([(Pearl_FW_Status_iOSController *)self isPortTypeFrontIRDetected])
    {
      if (self->m_scenariosNumber >= 1)
      {
        objc_autoreleasePoolPush();
        DeviceCMInterface::DeviceCMInterface(&v34);
        v15 = *&v34.m_captureDeviceController;
        *&self->m_diagnosticCMInterface.m_hVersion = *&v34.m_hVersion;
        *&self->m_diagnosticCMInterface.m_captureDeviceController = v15;
        *&self->m_diagnosticCMInterface.m_streamIdsInfo.rgbPearlStreamId = *&v34.m_streamIdsInfo.rgbPearlStreamId;
        *&self->m_diagnosticCMInterface.m_currentPearlConfiguration.isIrOn = *&v34.m_currentPearlConfiguration.isIrOn;
        self->m_diagnosticCMInterface.m_currentPearlConfiguration.bitMaskID = v34.m_currentPearlConfiguration.bitMaskID;
        objc_storeStrong(&self->m_diagnosticCMInterface.m_currentPearlConfiguration.deviceName, v34.m_currentPearlConfiguration.deviceName);
        *&self->m_diagnosticCMInterface.m_currentJasperConfiguration.isJasperOn = *&v34.m_currentJasperConfiguration.isJasperOn;
        DeviceCMInterface::~DeviceCMInterface(&v34);
        PearlDiagnosticInteractor::PearlDiagnosticInteractor(&v34);
        m_delegate = v34.m_delegate;
        v34.m_delegate = 0;
        m_gmcResult = self->m_diagnosticInteractor.m_gmcResult;
        self->m_diagnosticInteractor.m_gmcResult = m_delegate;

        m_captureDeviceController = v34.m_captureDeviceController;
        v34.m_captureDeviceController = 0;
        m_gmcPointCount = self->m_diagnosticInteractor.m_gmcPointCount;
        self->m_diagnosticInteractor.m_gmcPointCount = m_captureDeviceController;

        *&self->m_diagnosticInteractor.m_currentPearlConfiguration.isIrOn = *&v34.m_streamIdsInfo.rgbTeleStreamId;
        self->m_diagnosticInteractor.m_currentPearlConfiguration.bitMaskID = v34.m_streamIdsInfo.rgbPearlStreamId;
        v20 = *&v34.m_streamIdsInfo.rgbSuperWideStreamId;
        *&v34.m_streamIdsInfo.rgbSuperWideStreamId = 0;
        deviceName = self->m_diagnosticInteractor.m_currentPearlConfiguration.deviceName;
        self->m_diagnosticInteractor.m_currentPearlConfiguration.deviceName = v20;

        *&self->m_diagnosticInteractor.m_rgbPearlFramesCount = *&v34.m_currentPearlConfiguration.isIrOn;
        self->m_diagnosticInteractor.m_irPearlFramesCount = v34.m_currentPearlConfiguration.bitMaskID;

        self->m_diagnosticCMInterface.m_delegate = &self->m_diagnosticInteractor;
        DeviceCMInterface::initAndActivateCaptureDeviceController(&self->m_diagnosticCMInterface);
      }

      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent4 = [v22 lastPathComponent];
      v24 = [NSString stringWithFormat:@"Finish diagnostic flow..."];
      NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent4, 1026, v24);

      v25 = &off_100038AA8;
      selfCopy3 = self;
      v27 = 0;
    }

    else
    {
      v31 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
      lastPathComponent5 = [v31 lastPathComponent];
      v33 = [NSString stringWithFormat:@"fail with missing PEARL device, cannot dignose pearl"];
      NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent5, 893, v33);

      self->m_isAllPass = 0;
      v25 = &off_100038A90;
      selfCopy3 = self;
      v27 = 0x8000000;
    }
  }

  else
  {
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
    lastPathComponent6 = [v28 lastPathComponent];
    v30 = [NSString stringWithFormat:@"cannot define camera ststus, connectivity issue detected as camera interfaces cannot be reached"];
    NSLog(@"<ERROR %@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent6, 882, v30);

    self->m_isAllPass = 0;
    v25 = &off_100038A90;
    selfCopy3 = self;
    v27 = 0x2000000;
  }

  [(Pearl_FW_Status_iOSController *)selfCopy3 finalizingWithStatusCode:v25 andFinalizingCode:v27];
}

- (void)teardown
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"tear down triggered, verify attention detection status before bailing out"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 1033, v5);

  [(Pearl_FW_Status_iOSController *)self restoreAttentionDetection];

  [(Pearl_FW_Status_iOSController *)self terminateComunication];
}

- (void)cancel
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent = [v3 lastPathComponent];
  v5 = [NSString stringWithFormat:@"cancel triggered, verify attention detection status before bailing out"];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 1042, v5);

  [(Pearl_FW_Status_iOSController *)self restoreAttentionDetection];

  [(Pearl_FW_Status_iOSController *)self terminateComunication];
}

- (void)finalizingWithErrorStatusCode:(id)code andInfoString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  [(Pearl_FW_Status_iOSController *)self restoreAttentionDetection];
  result = [(Pearl_FW_Status_iOSController *)self result];
  [result setStatusCode:codeCopy];

  if (self->m_exclaveStatus)
  {
    result2 = [(Pearl_FW_Status_iOSController *)self result];
    statusCode = [result2 statusCode];
    integerValue = [statusCode integerValue];

    if (!integerValue)
    {
      v11 = [NSNumber numberWithInt:self->m_exclaveStatus];
      result3 = [(Pearl_FW_Status_iOSController *)self result];
      [result3 setStatusCode:v11];

      v13 = [NSString stringWithFormat:@"%@ and also exclave detected value %d", stringCopy, self->m_exclaveStatus];

      stringCopy = v13;
    }
  }

  m_statusesDict = self->m_statusesDict;
  stringCopy = [NSString stringWithFormat:@"FAIL due to: %@", stringCopy];
  [(NSMutableDictionary *)m_statusesDict setValue:stringCopy forKey:@"All_PASS_STATUS"];

  v16 = self->m_statusesDict;
  result4 = [(Pearl_FW_Status_iOSController *)self result];
  [result4 setData:v16];

  result5 = [(Pearl_FW_Status_iOSController *)self result];
  data = [result5 data];
  result6 = [(Pearl_FW_Status_iOSController *)self result];
  statusCode2 = [result6 statusCode];
  logMainResults(data, 8201, [statusCode2 intValue]);

  [(Pearl_FW_Status_iOSController *)self terminateComunication];
  [(Pearl_FW_Status_iOSController *)self setFinished:1];
}

- (void)finalizingWithStatusCode:(id)code andFinalizingCode:(int)finalizingCode
{
  codeCopy = code;
  [(Pearl_FW_Status_iOSController *)self restoreAttentionDetection];
  v6 = [NSNumber numberWithUnsignedInt:self->m_resultsCasesMask];
  result = [(Pearl_FW_Status_iOSController *)self result];
  [result setStatusCode:v6];

  if (![codeCopy intValue])
  {
    m_statusesDict = self->m_statusesDict;
    if (self->m_isAllPass)
    {
      v13 = @"PASS";
    }

    else
    {
      v13 = @"FAIL";
    }

    if (finalizingCode)
    {
      if (finalizingCode == 0x10000)
      {
        [NSString stringWithFormat:@"%@, device without pearl", v13];
      }

      else
      {
        [NSString stringWithFormat:@"%@, missing information...", v13];
      }
      v11 = ;
      [(NSMutableDictionary *)m_statusesDict setValue:v11 forKey:@"All_PASS_STATUS"];
    }

    else
    {
      v11 = [NSString stringWithFormat:@"%@, (%d passed out of %d)", v13, self->m_passCount, self->m_scenariosNumber];
      [(NSMutableDictionary *)m_statusesDict setValue:v11 forKey:@"All_PASS_STATUS"];
    }

    goto LABEL_33;
  }

  finalizingCode = [NSNumber numberWithUnsignedInt:self->m_resultsCasesMask | finalizingCode];
  result2 = [(Pearl_FW_Status_iOSController *)self result];
  [result2 setStatusCode:finalizingCode];

  if (finalizingCode >= 0x400000)
  {
    if (finalizingCode <= 0x1FFFFFF)
    {
      if (finalizingCode == 0x400000)
      {
        v17 = self->m_statusesDict;
        v11 = [NSString stringWithFormat:@"FAIL, (%d passed out of %d) cannot stop streaming", self->m_passCount, self->m_scenariosNumber];
        [(NSMutableDictionary *)v17 setValue:v11 forKey:@"All_PASS_STATUS"];
        goto LABEL_33;
      }

      if (finalizingCode == 0x800000)
      {
        v16 = self->m_statusesDict;
        v11 = [NSString stringWithFormat:@"FAIL, (%d passed out of %d) cannot disable sync mode", self->m_passCount, self->m_scenariosNumber];
        [(NSMutableDictionary *)v16 setValue:v11 forKey:@"All_PASS_STATUS"];
        goto LABEL_33;
      }
    }

    else
    {
      switch(finalizingCode)
      {
        case 0x2000000:
LABEL_29:
          v14 = @"FAIL, FAIL_ON_FLOW_ISSUE, connectivity issue detected (fail to connect to interfaces)";
          goto LABEL_36;
        case 0x4000000:
          v14 = @"FAIL, FAIL_ON_FLOW_ISSUE, missing FCAM";
          goto LABEL_36;
        case 0x8000000:
          v14 = @"FAIL, FAIL_ON_FLOW_ISSUE, missing PEARL";
          goto LABEL_36;
      }
    }

LABEL_35:
    v14 = @"FAIL, FAIL_ON_FLOW_ISSUE, unknown flow issue";
    goto LABEL_36;
  }

  if (finalizingCode < 0x80000)
  {
    if (finalizingCode != 0x20000)
    {
      if (finalizingCode == 0x40000)
      {
        v15 = self->m_statusesDict;
        v11 = [NSString stringWithFormat:@"FAIL, (%d passed out of %d) Diagnostic bit mask input is not illegal", self->m_passCount, self->m_scenariosNumber];
        [(NSMutableDictionary *)v15 setValue:v11 forKey:@"All_PASS_STATUS"];
        goto LABEL_33;
      }

      goto LABEL_35;
    }

    [(NSMutableDictionary *)self->m_statusesDict setValue:@"FAIL forKey:FAIL_ON_FLOW_ISSUE, enumeration fail on rgb or ir sensores", @"All_PASS_STATUS"];
    goto LABEL_29;
  }

  if (finalizingCode != 0x80000)
  {
    if (finalizingCode == 0x100000)
    {
      v18 = self->m_statusesDict;
      v11 = [NSString stringWithFormat:@"FAIL, (%d passed out of %d) cannot achieve control on streams", self->m_passCount, self->m_scenariosNumber];
      [(NSMutableDictionary *)v18 setValue:v11 forKey:@"All_PASS_STATUS"];
      goto LABEL_33;
    }

    if (finalizingCode == 0x200000)
    {
      v10 = self->m_statusesDict;
      v11 = [NSString stringWithFormat:@"FAIL, (%d passed out of %d) cannot start streaming", self->m_passCount, self->m_scenariosNumber];
      [(NSMutableDictionary *)v10 setValue:v11 forKey:@"All_PASS_STATUS"];
LABEL_33:

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v14 = @"FAIL, FAIL_ON_FLOW_ISSUE, cannot activate device";
LABEL_36:
  [(NSMutableDictionary *)self->m_statusesDict setValue:v14 forKey:@"All_PASS_STATUS"];
LABEL_37:
  if (self->m_isYGErrorDetected)
  {
    result3 = [(Pearl_FW_Status_iOSController *)self result];
    [result3 setStatusCode:&off_100038AC0];
LABEL_39:

    goto LABEL_42;
  }

  if (self->m_exclaveStatus)
  {
    result4 = [(Pearl_FW_Status_iOSController *)self result];
    statusCode = [result4 statusCode];
    integerValue = [statusCode integerValue];

    if (!integerValue)
    {
      result3 = [NSNumber numberWithInt:self->m_exclaveStatus];
      result5 = [(Pearl_FW_Status_iOSController *)self result];
      [result5 setStatusCode:result3];

      goto LABEL_39;
    }
  }

LABEL_42:
  v23 = self->m_statusesDict;
  result6 = [(Pearl_FW_Status_iOSController *)self result];
  [result6 setData:v23];

  result7 = [(Pearl_FW_Status_iOSController *)self result];
  data = [result7 data];
  result8 = [(Pearl_FW_Status_iOSController *)self result];
  statusCode2 = [result8 statusCode];
  logMainResults(data, 8201, [statusCode2 intValue]);

  v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/DepthDiagnostics/Diagnostic-8201/Pearl_FW_Status_iOSController.mm"];
  lastPathComponent = [v29 lastPathComponent];
  result9 = [(Pearl_FW_Status_iOSController *)self result];
  statusCode3 = [result9 statusCode];
  v33 = decToBinStr([statusCode3 intValue]);
  v34 = [NSString stringWithFormat:@"Ended Diagnostic. diagnostic flow status code %@ and all pass = %d", v33, self->m_isAllPass];
  NSLog(@"<%@: %@:%d> %@", @"Diagnostic_FW_Status_iOS", lastPathComponent, 1138, v34);

  [(Pearl_FW_Status_iOSController *)self terminateComunication];
  [(Pearl_FW_Status_iOSController *)self setFinished:1];
}

- (void)terminateComunication
{
  if (DeviceCMInterface::isActivated(&self->m_diagnosticCMInterface))
  {

    DeviceCMInterface::releaseDevice(&self->m_diagnosticCMInterface);
  }
}

- (id).cxx_construct
{
  DeviceCMInterface::DeviceCMInterface(&self->m_diagnosticCMInterface);
  self->m_configurationsList.__end_ = 0;
  self->m_configurationsList.__cap_ = 0;
  self->m_configurationsList.__begin_ = 0;
  PearlDiagnosticInteractor::PearlDiagnosticInteractor(&self->m_diagnosticInteractor);
  return self;
}

@end