@interface ADJasperPearlInFieldCalibrationExecutor
- (ADJasperPearlInFieldCalibrationExecutor)initWithParameters:(id)parameters pceCalib:(id)calib;
- (ADJasperPearlInFieldCalibrationExecutor)initWithPceCalib:(id)calib;
- (BOOL)shouldExecuteWithInterSessionDataRun:(int64_t *)run;
- (__n128)extractJasperToPearlCalibFromLastSyncMatch;
- (__n128)extractPearlPrevPoseFromLastSyncMatch;
- (id)extractIRSensorCalibFromLastSyncMatch;
- (id)extractPearlInputsFromLastSyncMatch;
- (id)overrideCVCalIntrinsicsWithPCECalibIntrinsics:(id)intrinsics temperature:(float)temperature;
- (int64_t)executeWithInterSessionData:(id)data outResult:(id)result;
- (int64_t)executeWithInterSessionData:(id)data result:(id *)result;
- (int64_t)executeWithJasperPearlInterSessionData:(id)data result:(id)result;
- (int64_t)prepare;
- (uint64_t)pushJasperPointCloud:(double)cloud timestamp:(double)timestamp pose:(double)pose jasperToPearlTransform:(double)transform;
- (uint64_t)pushJasperPointCloud:timestamp:pose:jasperToPearlOperationalTransform:;
- (uint64_t)pushPearlDepth:(__n128)depth pearlDx:(__n128)dx pearlDy:(__n128)dy pearlScore:(__n128)score timestamp:(uint64_t)timestamp metadata:(uint64_t)metadata pose:(uint64_t)pose prevPose:(uint64_t)self0;
- (uint64_t)pushPearlDepth:pearlDx:pearlDy:pearlScore:timestamp:pose:pearlSensorCalibration:;
- (uint64_t)pushPearlDepth:timestamp:pose:temperature:irSensorOperationalCalibration:;
- (void)dealloc;
- (void)logJPCInputs:(id)inputs;
- (void)logJasperAggPC:(id)c timestamp:(double)timestamp;
- (void)logPose:(__n128)pose logMessagePrefix:(__n128)prefix;
- (void)printOutResults:(id)results;
- (void)setPceCalib:(id)calib;
- (void)setPearlInfraredCameraCalibration:(id)calibration;
@end

@implementation ADJasperPearlInFieldCalibrationExecutor

- (id)overrideCVCalIntrinsicsWithPCECalibIntrinsics:(id)intrinsics temperature:(float)temperature
{
  intrinsicsCopy = intrinsics;
  bytes = [(NSData *)self->_pceCalib bytes];
  memcpy(__dst, bytes + 1101, sizeof(__dst));
  v9 = jpc::PearlUtils::getIrCameraCalibration(__dst, v8);
  v10 = [v9 mutableCopy];
  [v9 intrinsicMatrix];
  v11 = bytes[1096] + bytes[1097] * temperature;
  *&v12 = v11 / bytes[1101];
  [v10 setIntrinsicMatrix:{COERCE_DOUBLE(__PAIR64__(v13, v12)), COERCE_DOUBLE(__PAIR64__(v12, v14)), v15}];
  [intrinsicsCopy cameraToPlatformTransform];
  [v10 setCameraToPlatformTransform:?];

  return v10;
}

- (__n128)extractPearlPrevPoseFromLastSyncMatch
{
  v1 = [*(self + 144) matchedObjectsForStream:0];
  firstObject = [v1 firstObject];
  metadata = [firstObject metadata];

  v4 = [metadata objectForKeyedSubscript:@"IRSensorPreviousPose"];
  v6 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,4ul,simd_float4x4>(v4);

  return v6;
}

- (id)extractIRSensorCalibFromLastSyncMatch
{
  v2 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:0];
  firstObject = [v2 firstObject];
  metadata = [firstObject metadata];

  v5 = [metadata objectForKeyedSubscript:@"IRSensorOpCalibration"];

  return v5;
}

- (__n128)extractJasperToPearlCalibFromLastSyncMatch
{
  v1 = [*(self + 144) matchedObjectsForStream:1];
  v2 = [v1 objectAtIndexedSubscript:0];
  metadata = [v2 metadata];

  v4 = [metadata objectForKeyedSubscript:@"JasperToPearlOpCalib"];
  v6 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,3ul,simd_float4x3>(v4);

  return v6;
}

- (id)extractPearlInputsFromLastSyncMatch
{
  v3 = objc_opt_new();
  v4 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:0];
  firstObject = [v4 firstObject];

  data = [firstObject data];
  [v3 setDepth:{objc_msgSend(data, "pearlDepth")}];
  [v3 setDx:{objc_msgSend(data, "pearlDx")}];
  [v3 setDy:{objc_msgSend(data, "pearlDy")}];
  [v3 setScore:{objc_msgSend(data, "pearlScore")}];
  [firstObject pose];
  [v3 setPose:?];
  [(ADJasperPearlInFieldCalibrationExecutor *)self extractPearlPrevPoseFromLastSyncMatch];
  [v3 setPrevPose:?];
  [firstObject timestamp];
  [v3 setTimestamp:?];
  metadata = [firstObject metadata];
  v8 = [metadata objectForKeyedSubscript:@"Temperature"];
  [v8 floatValue];
  [v3 setTemperature:?];

  return v3;
}

- (BOOL)shouldExecuteWithInterSessionDataRun:(int64_t *)run
{
  if (!self->_isPrepared)
  {
    *run = -22953;
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: Executor: Must call prepare().", buf, 2u);
LABEL_12:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (!self->_lastSyncMatch)
  {
    *run = 0;
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      if (!v3)
      {
        return v3;
      }

      v9 = 0;
      v4 = MEMORY[0x277D86220];
      v5 = &v9;
      v6 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!v3)
      {
        return v3;
      }

      v8 = 0;
      v4 = MEMORY[0x277D86220];
      v5 = &v8;
      v6 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2402F6000, v4, v6, "JasperPearlInFieldCalibration: Executor: No matched data from StreamSync.", v5, 2u);
    goto LABEL_12;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (int64_t)executeWithInterSessionData:(id)data result:(id *)result
{
  v11 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
      v9 = 2080;
      v10 = "[ADJasperPearlInFieldCalibrationExecutor executeWithInterSessionData:result:]";
      v4 = MEMORY[0x277D86220];
      v5 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v4, v5, "JasperPearlInFieldCalibration: Deprecated function was called: %s : %s", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
    v9 = 2080;
    v10 = "[ADJasperPearlInFieldCalibrationExecutor executeWithInterSessionData:result:]";
    v4 = MEMORY[0x277D86220];
    v5 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  return -22950;
}

- (int64_t)executeWithJasperPearlInterSessionData:(id)data result:(id)result
{
  v11 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
      v9 = 2080;
      v10 = "[ADJasperPearlInFieldCalibrationExecutor executeWithJasperPearlInterSessionData:result:]";
      v4 = MEMORY[0x277D86220];
      v5 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v4, v5, "JasperPearlInFieldCalibration: Deprecated function was called: %s : %s", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
    v9 = 2080;
    v10 = "[ADJasperPearlInFieldCalibrationExecutor executeWithJasperPearlInterSessionData:result:]";
    v4 = MEMORY[0x277D86220];
    v5 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  return -22950;
}

- (void)printOutResults:(id)results
{
  v27 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [resultsCopy efl];
    [v4 floatValue];
    v6 = v5;
    principalPointX = [resultsCopy principalPointX];
    [principalPointX floatValue];
    v9 = v8;
    principalPointY = [resultsCopy principalPointY];
    [principalPointY floatValue];
    *buf = 134218496;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    *&buf[24] = v11;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData result: efl = %f principal point = [%f, %f]", buf, 0x20u);
  }

  pceCalib = [resultsCopy pceCalib];
  v13 = pceCalib;
  bytes = [pceCalib bytes];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(bytes + 8768);
    v16 = *(bytes + 8776);
    *buf = 134218240;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData result: efl coeff = [%f, %f]", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  v26 = 0u;
  v17.f64[0] = *(bytes + 13072);
  v17.f64[1] = *(bytes + 13096);
  v18 = *(bytes + 13120);
  v19.f64[0] = *(bytes + 13080);
  v19.f64[1] = *(bytes + 13104);
  v20.f64[0] = *(bytes + 13088);
  v20.f64[1] = *(bytes + 13112);
  v21 = *(bytes + 13128);
  v22 = *(bytes + 13136);
  *&buf[8] = v18;
  *buf = vcvt_f32_f64(v17);
  *&buf[24] = v21;
  *&buf[16] = vcvt_f32_f64(v19);
  *(&v26 + 2) = v22;
  *&v26 = vcvt_f32_f64(v20);
  [ADUtils calcRotationAngle:buf];
  v24 = v23;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = *&v24;
    *&buf[12] = 2048;
    *&buf[14] = *(&v24 + 1);
    *&buf[22] = 2048;
    *&buf[24] = *(&v24 + 2);
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData result: rotation = [%f, %f, %f]", buf, 0x20u);
  }
}

- (void)logJasperAggPC:(id)c timestamp:(double)timestamp
{
  cCopy = c;
  executorParameters = [(ADExecutor *)self executorParameters];
  logger = [executorParameters logger];
  enabled = [logger enabled];

  if ((enabled & 1) != 0 && self->_pearlInfraredCameraCalibration)
  {
    executorParameters2 = [(ADExecutor *)self executorParameters];
    logger2 = [executorParameters2 logger];
    [logger2 logPointCloud:cCopy name:"jasperPearlInFieldCalibrationJasperAggReprojected" timestamp:timestamp];

    if (!self->_processedJasper)
    {
      [(ADCameraCalibration *)self->_pearlInfraredCameraCalibration referenceDimensions];
      v12 = v11;
      [(ADCameraCalibration *)self->_pearlInfraredCameraCalibration referenceDimensions];
      v14 = v13;
      pixelBufferOut = 0;
      BufferAttributes = getBufferAttributes();
      v16 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v12, v14, 0x68646570u, BufferAttributes, &pixelBufferOut);
      v17 = pixelBufferOut;
      if (v16)
      {
        v17 = 0;
      }

      self->_processedJasper = v17;
      v18 = [ADUtils getStandardNameForBufferOfType:@"processedJasper" moduleName:@"JPC"];
      [ADUtils updatePixelBufferIOSurfaceLabel:v18 pixelBuffer:self->_processedJasper];
    }

    [(ADCameraCalibration *)self->_pearlInfraredCameraCalibration referenceDimensions];
    v20 = v19;
    [(ADCameraCalibration *)self->_pearlInfraredCameraCalibration referenceDimensions];
    if (![cCopy projectJasperPointsCroppedBy:0 rotatedBy:self->_processedJasper andScaledInto:{0.0, 0.0, v20, v21}])
    {
      executorParameters3 = [(ADExecutor *)self executorParameters];
      logger3 = [executorParameters3 logger];
      [logger3 logPixelBuffer:self->_processedJasper name:"jasperPearlInFieldCalibrationJasperAggReprojected" timestamp:timestamp];
    }
  }
}

- (void)logPose:(__n128)pose logMessagePrefix:(__n128)prefix
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a7;
  v16[1] = self.n128_u32[2];
  v16[3] = a2.n128_u32[2];
  v16[0] = self.n128_u64[0];
  v16[2] = a2.n128_u64[0];
  v16[5] = pose.n128_u32[2];
  v16[4] = pose.n128_u64[0];
  [ADUtils calcRotationAngle:v16];
  v15 = v8;
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    uTF8String = [v7 UTF8String];
    *buf = 136316674;
    v18 = uTF8String;
    v19 = 2048;
    v20 = (0.057296 * v15.f32[0]);
    v21 = 2048;
    v22 = vmuls_lane_f32(0.057296, *v15.f32, 1);
    v23 = 2048;
    v24 = vmuls_lane_f32(0.057296, v15, 2);
    v25 = 2048;
    v26 = prefix.n128_f32[0];
    v27 = 2048;
    v28 = prefix.n128_f32[1];
    v29 = 2048;
    v30 = prefix.n128_f32[2];
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: R = [%f, %f, %f]degrees, T = [%f, %f, %f] mm", buf, 0x48u);
  }
}

- (void)logJPCInputs:(id)inputs
{
  inputsCopy = inputs;
  executorParameters = [(ADExecutor *)self executorParameters];
  logger = [executorParameters logger];
  enabled = [logger enabled];

  if (enabled)
  {
    extractPearlInputsFromLastSyncMatch = [(ADJasperPearlInFieldCalibrationExecutor *)self extractPearlInputsFromLastSyncMatch];
    executorParameters2 = [(ADExecutor *)self executorParameters];
    logger2 = [executorParameters2 logger];
    depth = [extractPearlInputsFromLastSyncMatch depth];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger2 logPixelBuffer:depth name:"jasperPearlInFieldCalibrationInputPearlDepth" timestamp:?];

    executorParameters3 = [(ADExecutor *)self executorParameters];
    logger3 = [executorParameters3 logger];
    v12 = [extractPearlInputsFromLastSyncMatch dx];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger3 logPixelBuffer:v12 name:"jasperPearlInFieldCalibrationInputPearlDx" timestamp:?];

    executorParameters4 = [(ADExecutor *)self executorParameters];
    logger4 = [executorParameters4 logger];
    v15 = [extractPearlInputsFromLastSyncMatch dy];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger4 logPixelBuffer:v15 name:"jasperPearlInFieldCalibrationInputPearlDy" timestamp:?];

    executorParameters5 = [(ADExecutor *)self executorParameters];
    logger5 = [executorParameters5 logger];
    score = [extractPearlInputsFromLastSyncMatch score];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger5 logPixelBuffer:score name:"jasperPearlInFieldCalibrationInputPearlScore" timestamp:?];

    [extractPearlInputsFromLastSyncMatch pose];
    [(ADJasperPearlInFieldCalibrationExecutor *)self logPose:@"Pearl Frame VIO" logMessagePrefix:?];
    executorParameters6 = [(ADExecutor *)self executorParameters];
    logger6 = [executorParameters6 logger];
    v21 = MEMORY[0x277CCACA8];
    [extractPearlInputsFromLastSyncMatch temperature];
    v23 = [v21 stringWithFormat:@"%f", v22];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger6 logString:v23 name:"jasperPearlFrameTemperature" priority:0 timestamp:?];

    extractIRSensorCalibFromLastSyncMatch = [(ADJasperPearlInFieldCalibrationExecutor *)self extractIRSensorCalibFromLastSyncMatch];
    executorParameters7 = [(ADExecutor *)self executorParameters];
    logger7 = [executorParameters7 logger];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger7 logCalibration:extractIRSensorCalibFromLastSyncMatch name:"irSensorCalibration" timestamp:?];

    [(ADJasperPearlInFieldCalibrationExecutor *)self extractJasperToPearlCalibFromLastSyncMatch];
    v53 = v28;
    v55 = v27;
    v49 = v30;
    v51 = v29;
    executorParameters8 = [(ADExecutor *)self executorParameters];
    logger8 = [executorParameters8 logger];
    [extractPearlInputsFromLastSyncMatch timestamp];
    [logger8 logMatrix4x3:"jasperToPearlTransform" name:v55 timestamp:{v53, v51, v49, v33}];
    v46 = extractIRSensorCalibFromLastSyncMatch;

    v34 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:1];
    for (i = 0; ; i = v36 + 1)
    {
      v36 = i;
      if ([v34 count] <= i)
      {
        break;
      }

      v37 = [v34 objectAtIndexedSubscript:i];
      executorParameters9 = [(ADExecutor *)self executorParameters];
      logger9 = [executorParameters9 logger];
      data = [v37 data];
      [v37 timestamp];
      [logger9 logPointCloud:data name:"jasperPearlInFieldCalibrationInputJasper" timestamp:?];

      [v37 pose];
      v54 = v42;
      v56 = v41;
      v50 = v44;
      v52 = v43;
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Jasper Bank %d VIO", v36, v46];
      [(ADJasperPearlInFieldCalibrationExecutor *)self logPose:v45 logMessagePrefix:v56, v54, v52, v50];
    }
  }
}

- (int64_t)executeWithInterSessionData:(id)data outResult:(id)result
{
  v88 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  resultCopy = result;
  obj = self->_lastStreamSyncMatchLock;
  objc_sync_enter(obj);
  executorParameters = [(ADExecutor *)self executorParameters];
  stepsToExecute = [executorParameters stepsToExecute];

  executorParameters2 = [(ADExecutor *)self executorParameters];
  timeProfiler = [executorParameters2 timeProfiler];

  if (stepsToExecute < 1)
  {
    v12 = -22977;
    goto LABEL_40;
  }

  kdebug_trace();
  [timeProfiler startWithUTFString:"executor execute"];
  [(ADExecutor *)self frameExecutionStart];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v10, v11, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData.", buf, 2u);
LABEL_9:
  v83 = 0;
  if (![(ADJasperPearlInFieldCalibrationExecutor *)self shouldExecuteWithInterSessionDataRun:&v83])
  {
    lastSyncMatch = self->_lastSyncMatch;
    self->_lastSyncMatch = 0;

    v12 = v83;
    goto LABEL_40;
  }

  v70 = timeProfiler;
  extractPearlInputsFromLastSyncMatch = [(ADJasperPearlInFieldCalibrationExecutor *)self extractPearlInputsFromLastSyncMatch];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [extractPearlInputsFromLastSyncMatch timestamp];
      v15 = v14;
      [extractPearlInputsFromLastSyncMatch temperature];
      *buf = 134218240;
      v85 = v15;
      v86 = 2048;
      v87 = v16;
      v17 = MEMORY[0x277D86220];
      v18 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
      _os_log_impl(&dword_2402F6000, v17, v18, "JasperPearlInFieldCalibration: Executor: JPC start with timestamp = %f, temperature = %f", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    [extractPearlInputsFromLastSyncMatch timestamp];
    v21 = v20;
    [extractPearlInputsFromLastSyncMatch temperature];
    *buf = 134218240;
    v85 = v21;
    v86 = 2048;
    v87 = v22;
    v17 = MEMORY[0x277D86220];
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  extractIRSensorCalibFromLastSyncMatch = [(ADJasperPearlInFieldCalibrationExecutor *)self extractIRSensorCalibFromLastSyncMatch];
  [(ADJasperPearlInFieldCalibrationExecutor *)self extractJasperToPearlCalibFromLastSyncMatch];
  v69 = v23;
  v82 = v23;
  v68 = v24;
  v81 = v24;
  v67 = v25;
  v80 = v25;
  v66 = v26;
  v79 = v26;
  if (!self->_pcAggregator)
  {
    v27 = objc_alloc(MEMORY[0x277CED0F8]);
    executorParameters3 = [(ADExecutor *)self executorParameters];
    pipelineParameters = [executorParameters3 pipelineParameters];
    pointCloudAggregationParameters = [pipelineParameters pointCloudAggregationParameters];
    v31 = [v27 initWithAggregationParameters:pointCloudAggregationParameters jasperToColorTransform:extractIRSensorCalibFromLastSyncMatch colorCamera:{v82, v81, v80, v79}];
    pcAggregator = self->_pcAggregator;
    self->_pcAggregator = v31;

    executorParameters4 = [(ADExecutor *)self executorParameters];
    pipelineParameters2 = [executorParameters4 pipelineParameters];
    pointCloudFilterParameters = [pipelineParameters2 pointCloudFilterParameters];
    [(ADPointCloudAggregator *)self->_pcAggregator setPointCloudFilterParameters:pointCloudFilterParameters];
  }

  v36 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:1];
  [extractIRSensorCalibFromLastSyncMatch cameraToPlatformTransform];
  [(ADJasperPearlInFieldCalibrationExecutor *)self logJPCInputs:self->_lastSyncMatch];
  [(ADPointCloudAggregator *)self->_pcAggregator setJasperToCameraTransform:v82, v81, v80, v79];
  [(ADPointCloudAggregator *)self->_pcAggregator setColorCameraCalibration:extractIRSensorCalibFromLastSyncMatch];
  v37 = 0;
  v77 = *(MEMORY[0x277D860B8] + 16);
  v78 = *MEMORY[0x277D860B8];
  v75 = *(MEMORY[0x277D860B8] + 48);
  v76 = *(MEMORY[0x277D860B8] + 32);
  v38 = 0.0;
  while (1)
  {
    v39 = v37;
    if ([v36 count] <= v37)
    {
      v51 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:0];
      firstObject = [v51 firstObject];

      [firstObject pose];
      v52 = self->_pcAggregator;
      [firstObject timestamp];
      v53 = [ADPointCloudAggregator aggregateForTime:v52 worldToCameraTransform:"aggregateForTime:worldToCameraTransform:"];
      aggregatedPointCloud = self->_aggregatedPointCloud;
      self->_aggregatedPointCloud = v53;

      v55 = self->_aggregatedPointCloud;
      [extractPearlInputsFromLastSyncMatch timestamp];
      [(ADJasperPearlInFieldCalibrationExecutor *)self logJasperAggPC:v55 timestamp:?];
      executorParameters5 = [(ADExecutor *)self executorParameters];
      stepsToExecute2 = [executorParameters5 stepsToExecute];
      pipelineParameters3 = [(ADJasperPearlInFieldCalibrationPipeline *)self->_pipeline pipelineParameters];
      [pipelineParameters3 setStepsToExecute:stepsToExecute2];

      v12 = [(ADJasperPearlInFieldCalibrationPipeline *)self->_pipeline processWithPearl:extractPearlInputsFromLastSyncMatch jasperAggregatedPointCloud:self->_aggregatedPointCloud farthestJasperBankPose:extractIRSensorCalibFromLastSyncMatch irSensorCalibration:dataCopy jasperToPearlTransform:resultCopy interSessionData:*&v78 result:*&v77, *&v76, *&v75, v69, v68, v67, v66];
      if (!v12)
      {
        pceCalib = [resultCopy pceCalib];
        v60 = pceCalib == 0;

        if (!v60)
        {
          [(ADJasperPearlInFieldCalibrationExecutor *)self printOutResults:resultCopy];
        }
      }

      v61 = self->_lastSyncMatch;
      self->_lastSyncMatch = 0;

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        v62 = v70;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v63 = MEMORY[0x277D86220];
        v64 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v62 = v70;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v63 = MEMORY[0x277D86220];
        v64 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_2402F6000, v63, v64, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData - End.", buf, 2u);
LABEL_36:
      [v62 stopWithUTFString:"executor execute"];
      kdebug_trace();
      if (stepsToExecute == 1)
      {
        v12 = -22977;
      }

      else
      {
        [(ADExecutor *)self frameExecutionEnd];
      }

      goto LABEL_39;
    }

    firstObject = [v36 objectAtIndexedSubscript:v37];
    [firstObject pose];
    v41 = self->_pcAggregator;
    data = [firstObject data];
    [firstObject timestamp];
    v12 = [ADPointCloudAggregator pushPointCloud:v41 timestamp:"pushPointCloud:timestamp:worldToCameraTransform:" worldToCameraTransform:data];

    if (v12)
    {
      break;
    }

    [firstObject timestamp];
    v44 = v43;
    [extractPearlInputsFromLastSyncMatch timestamp];
    v46 = vabdd_f64(v44, v45);
    if (v46 > v38)
    {
      [firstObject pose];
      *&v77 = v48;
      *&v78 = v47;
      *&v75 = v50;
      *&v76 = v49;
      v38 = v46;
    }

    v37 = v39 + 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to push point cloud into aggregator", buf, 2u);
  }

LABEL_39:

  timeProfiler = v70;
LABEL_40:

  objc_sync_exit(obj);
  return v12;
}

- (uint64_t)pushJasperPointCloud:(double)cloud timestamp:(double)timestamp pose:(double)pose jasperToPearlTransform:(double)transform
{
  v40 = *MEMORY[0x277D85DE8];
  v35[0] = a14;
  v35[1] = a15;
  v35[2] = a16;
  v35[3] = a17;
  v19 = a8;
  kdebug_trace();
  if ((*(self + 136) & 1) == 0)
  {
    v22 = -22970;
    goto LABEL_13;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v20 = MEMORY[0x277D86220];
    v21 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v20 = MEMORY[0x277D86220];
    v21 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v20, v21, "JasperPearlInFieldCalibration: Executor: pushJasperPointCloud.", buf, 2u);
LABEL_9:
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = a2;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: pushed jasper point cloud for ts:%f into streamSync", buf, 0xCu);
  }

  v36 = @"JasperToPearlOpCalib";
  v23 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,3ul,simd_float4x3>(v35);
  v37 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

  v25 = *(self + 168);
  objc_sync_enter(v25);
  v26 = [*(self + 168) pushData:v19 streamIndex:1 timestamp:v24 pose:a2 meta:{cloud, timestamp, pose, transform}];
  objc_sync_exit(v25);

  v27 = *(self + 152);
  objc_sync_enter(v27);
  v28 = *(self + 144);
  *(self + 144) = v26;
  v29 = v26;

  objc_sync_exit(v27);
  v22 = 0;
LABEL_13:
  kdebug_trace();

  return v22;
}

- (uint64_t)pushJasperPointCloud:timestamp:pose:jasperToPearlOperationalTransform:
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "-[pushJasperPointCloud:timestamp:pose:jasperToPearlExtrinsics] is deprecated. please use pushJasperPointCloud:timestamp:pose:jasperToPearlTransform instead", v1, 2u);
  }

  return -22950;
}

- (uint64_t)pushPearlDepth:(__n128)depth pearlDx:(__n128)dx pearlDy:(__n128)dy pearlScore:(__n128)score timestamp:(uint64_t)timestamp metadata:(uint64_t)metadata pose:(uint64_t)pose prevPose:(uint64_t)self0
{
  v55 = *MEMORY[0x277D85DE8];
  v50[0] = a14;
  v50[1] = a15;
  v50[2] = a16;
  v50[3] = a17;
  v23 = a12;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v24 = MEMORY[0x277D86220];
    v25 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v24 = MEMORY[0x277D86220];
    v25 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v24, v25, "JasperPearlInFieldCalibration: Executor: pushPearlDepth.", buf, 2u);
LABEL_7:
  v26 = *(self + 208);
  [v23 sensorTemperature];
  v27 = [self overrideCVCalIntrinsicsWithPCECalibIntrinsics:v26 temperature:?];
  v28 = *(self + 208);
  *(self + 208) = v27;

  if (*(self + 136) == 1)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v54 = a2;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: pushed pearl frame for ts:%f into streamSync", buf, 0xCu);
    }

    v29 = [[CVPixelBufferARCWrapper alloc] initWithPearlDepth:metadata pearlDx:pose pearlDy:prevPose pearlScore:a11];
    v51[0] = @"Temperature";
    v30 = MEMORY[0x277CCABB0];
    [v23 sensorTemperature];
    v31 = [v30 numberWithFloat:?];
    v32 = *(self + 208);
    v52[0] = v31;
    v52[1] = v32;
    v51[1] = @"IRSensorOpCalibration";
    v51[2] = @"IRSensorPreviousPose";
    v33 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,4ul,simd_float4x4>(v50);
    v52[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

    v35 = *(self + 168);
    objc_sync_enter(v35);
    v36 = [*(self + 168) pushData:v29 streamIndex:0 timestamp:v34 pose:a2 meta:{v43, v45, v47, v49}];
    objc_sync_exit(v35);

    v37 = *(self + 152);
    objc_sync_enter(v37);
    v38 = *(self + 144);
    *(self + 144) = v36;
    v39 = v36;

    objc_sync_exit(v37);
    v40 = 0;
  }

  else
  {
    v40 = -22970;
  }

  kdebug_trace();

  return v40;
}

- (uint64_t)pushPearlDepth:pearlDx:pearlDy:pearlScore:timestamp:pose:pearlSensorCalibration:
{
  v7 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
      v5 = 2080;
      v6 = "[ADJasperPearlInFieldCalibrationExecutor pushPearlDepth:pearlDx:pearlDy:pearlScore:timestamp:pose:pearlSensorCalibration:]";
      v0 = MEMORY[0x277D86220];
      v1 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v0, v1, "JasperPearlInFieldCalibration: Deprecated function was called: %s : %s", &v3, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
    v5 = 2080;
    v6 = "[ADJasperPearlInFieldCalibrationExecutor pushPearlDepth:pearlDx:pearlDy:pearlScore:timestamp:pose:pearlSensorCalibration:]";
    v0 = MEMORY[0x277D86220];
    v1 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  return -22950;
}

- (uint64_t)pushPearlDepth:timestamp:pose:temperature:irSensorOperationalCalibration:
{
  v7 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
      v5 = 2080;
      v6 = "[ADJasperPearlInFieldCalibrationExecutor pushPearlDepth:timestamp:pose:temperature:irSensorOperationalCalibration:]";
      v0 = MEMORY[0x277D86220];
      v1 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v0, v1, "JasperPearlInFieldCalibration: Deprecated function was called: %s : %s", &v3, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "/Library/Caches/com.apple.xbs/Sources/AppleDepth/AppleDepth/Executors/ADJasperPearlInFieldCalibrationExecutor.mm";
    v5 = 2080;
    v6 = "[ADJasperPearlInFieldCalibrationExecutor pushPearlDepth:timestamp:pose:temperature:irSensorOperationalCalibration:]";
    v0 = MEMORY[0x277D86220];
    v1 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  return -22950;
}

- (void)setPearlInfraredCameraCalibration:(id)calibration
{
  calibrationCopy = calibration;
  pearlInfraredCameraCalibration = self->_pearlInfraredCameraCalibration;
  if (!pearlInfraredCameraCalibration || (-[ADCameraCalibration dictionaryRepresentation](pearlInfraredCameraCalibration, "dictionaryRepresentation"), v6 = objc_claimAutoreleasedReturnValue(), [calibrationCopy dictionaryRepresentation], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    objc_storeStrong(&self->_pearlInfraredCameraCalibration, calibration);
  }
}

- (int64_t)prepare
{
  v19 = 335684280;
  v20 = 0u;
  v21 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v18 = 0;
    v3 = MEMORY[0x277D86220];
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *v18 = 0;
    v3 = MEMORY[0x277D86220];
    v4 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v3, v4, "JasperPearlInFieldCalibration: Executor: Prepare.", v18, 2u);
LABEL_7:
  v5 = [ADJasperPearlInFieldCalibrationPipeline alloc];
  executorParameters = [(ADExecutor *)self executorParameters];
  pipelineParameters = [executorParameters pipelineParameters];
  pceCalib = [(ADJasperPearlInFieldCalibrationExecutor *)self pceCalib];
  v9 = [(ADJasperPearlInFieldCalibrationPipeline *)v5 initWithParameters:pipelineParameters pceCalib:pceCalib];
  pipeline = self->_pipeline;
  self->_pipeline = v9;

  if (!self->_pipeline)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: Executor: Pipeline's init has failed.", v18, 2u);
      if (self->_pipeline)
      {
        goto LABEL_16;
      }
    }

    v16 = "_pipeline";
    v17 = 224;
    goto LABEL_18;
  }

  v11 = [objc_alloc(MEMORY[0x277CED120]) initWithStreamCount:2 allowedMatchTimeInterval:0.0350000001];
  streamSync = self->_streamSync;
  self->_streamSync = v11;

  v13 = self->_streamSync;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: Executor: ADStreamSync init has failed.", v18, 2u);
      if (self->_streamSync)
      {
LABEL_16:
        v14 = -22950;
        goto LABEL_10;
      }
    }

    v16 = "_streamSync";
    v17 = 233;
LABEL_18:
    __assert_rtn("[ADJasperPearlInFieldCalibrationExecutor prepare]", "ADJasperPearlInFieldCalibrationExecutor.mm", v17, v16);
  }

  [(ADStreamSync *)v13 setStream:0 queueSize:2];
  [(ADStreamSync *)self->_streamSync setStream:1 queueSize:8 aggregationCount:4 allowedAggregationInterval:0.0549999997];
  v14 = 0;
  self->_isPrepared = 1;
LABEL_10:
  kdebug_trace();
  return v14;
}

- (void)setPceCalib:(id)calib
{
  calibCopy = calib;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Executor: PCECalib was set.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "JasperPearlInFieldCalibration: Executor: PCECalib was set.", v7, 2u);
  }

  objc_storeStrong(&self->_pceCalib, calib);
  pipeline = self->_pipeline;
  if (pipeline)
  {
    [(ADJasperPearlInFieldCalibrationPipeline *)pipeline setPceCalib:calibCopy];
  }
}

- (void)dealloc
{
  processedJasper = self->_processedJasper;
  if (processedJasper)
  {
    CVPixelBufferRelease(processedJasper);
    self->_processedJasper = 0;
  }

  v4.receiver = self;
  v4.super_class = ADJasperPearlInFieldCalibrationExecutor;
  [(ADExecutor *)&v4 dealloc];
}

- (ADJasperPearlInFieldCalibrationExecutor)initWithParameters:(id)parameters pceCalib:(id)calib
{
  parametersCopy = parameters;
  calibCopy = calib;
  v21 = 335680240;
  v22 = 0u;
  v23 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = MEMORY[0x277D86220];
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v8 = MEMORY[0x277D86220];
    v9 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v8, v9, "JasperPearlInFieldCalibration: Executor: init.", buf, 2u);
LABEL_7:
  v19.receiver = self;
  v19.super_class = ADJasperPearlInFieldCalibrationExecutor;
  v10 = [(ADExecutor *)&v19 init];
  v11 = v10;
  if (v10)
  {
    [(ADExecutor *)v10 setExecutorParameters:parametersCopy];
    objc_storeStrong(&v11->_pceCalib, calib);
    v11->_isPrepared = 0;
    lastSyncMatch = v11->_lastSyncMatch;
    v11->_lastSyncMatch = 0;

    v13 = objc_opt_new();
    lastStreamSyncMatchLock = v11->_lastStreamSyncMatchLock;
    v11->_lastStreamSyncMatchLock = v13;

    pcAggregator = v11->_pcAggregator;
    v11->_pcAggregator = 0;

    aggregatedPointCloud = v11->_aggregatedPointCloud;
    v11->_aggregatedPointCloud = 0;

    v11->_processedJasper = 0;
  }

  v17 = v11;
  kdebug_trace();

  return v17;
}

- (ADJasperPearlInFieldCalibrationExecutor)initWithPceCalib:(id)calib
{
  calibCopy = calib;
  v5 = objc_opt_new();
  v6 = [(ADJasperPearlInFieldCalibrationExecutor *)self initWithParameters:v5 pceCalib:calibCopy];

  return v6;
}

@end