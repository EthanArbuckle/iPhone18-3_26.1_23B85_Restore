@interface ADJasperPearlInFieldCalibrationExecutor
- (ADJasperPearlInFieldCalibrationExecutor)initWithParameters:(id)a3 pceCalib:(id)a4;
- (ADJasperPearlInFieldCalibrationExecutor)initWithPceCalib:(id)a3;
- (BOOL)shouldExecuteWithInterSessionDataRun:(int64_t *)a3;
- (__n128)extractJasperToPearlCalibFromLastSyncMatch;
- (__n128)extractPearlPrevPoseFromLastSyncMatch;
- (id)extractIRSensorCalibFromLastSyncMatch;
- (id)extractPearlInputsFromLastSyncMatch;
- (id)overrideCVCalIntrinsicsWithPCECalibIntrinsics:(id)a3 temperature:(float)a4;
- (int64_t)executeWithInterSessionData:(id)a3 outResult:(id)a4;
- (int64_t)executeWithInterSessionData:(id)a3 result:(id *)a4;
- (int64_t)executeWithJasperPearlInterSessionData:(id)a3 result:(id)a4;
- (int64_t)prepare;
- (uint64_t)pushJasperPointCloud:(double)a3 timestamp:(double)a4 pose:(double)a5 jasperToPearlTransform:(double)a6;
- (uint64_t)pushJasperPointCloud:timestamp:pose:jasperToPearlOperationalTransform:;
- (uint64_t)pushPearlDepth:(__n128)a3 pearlDx:(__n128)a4 pearlDy:(__n128)a5 pearlScore:(__n128)a6 timestamp:(uint64_t)a7 metadata:(uint64_t)a8 pose:(uint64_t)a9 prevPose:(uint64_t)a10;
- (uint64_t)pushPearlDepth:pearlDx:pearlDy:pearlScore:timestamp:pose:pearlSensorCalibration:;
- (uint64_t)pushPearlDepth:timestamp:pose:temperature:irSensorOperationalCalibration:;
- (void)dealloc;
- (void)logJPCInputs:(id)a3;
- (void)logJasperAggPC:(id)a3 timestamp:(double)a4;
- (void)logPose:(__n128)a3 logMessagePrefix:(__n128)a4;
- (void)printOutResults:(id)a3;
- (void)setPceCalib:(id)a3;
- (void)setPearlInfraredCameraCalibration:(id)a3;
@end

@implementation ADJasperPearlInFieldCalibrationExecutor

- (id)overrideCVCalIntrinsicsWithPCECalibIntrinsics:(id)a3 temperature:(float)a4
{
  v6 = a3;
  v7 = [(NSData *)self->_pceCalib bytes];
  memcpy(__dst, v7 + 1101, sizeof(__dst));
  v9 = jpc::PearlUtils::getIrCameraCalibration(__dst, v8);
  v10 = [v9 mutableCopy];
  [v9 intrinsicMatrix];
  v11 = v7[1096] + v7[1097] * a4;
  *&v12 = v11 / v7[1101];
  [v10 setIntrinsicMatrix:{COERCE_DOUBLE(__PAIR64__(v13, v12)), COERCE_DOUBLE(__PAIR64__(v12, v14)), v15}];
  [v6 cameraToPlatformTransform];
  [v10 setCameraToPlatformTransform:?];

  return v10;
}

- (__n128)extractPearlPrevPoseFromLastSyncMatch
{
  v1 = [*(a1 + 144) matchedObjectsForStream:0];
  v2 = [v1 firstObject];
  v3 = [v2 metadata];

  v4 = [v3 objectForKeyedSubscript:@"IRSensorPreviousPose"];
  v6 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,4ul,simd_float4x4>(v4);

  return v6;
}

- (id)extractIRSensorCalibFromLastSyncMatch
{
  v2 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:0];
  v3 = [v2 firstObject];
  v4 = [v3 metadata];

  v5 = [v4 objectForKeyedSubscript:@"IRSensorOpCalibration"];

  return v5;
}

- (__n128)extractJasperToPearlCalibFromLastSyncMatch
{
  v1 = [*(a1 + 144) matchedObjectsForStream:1];
  v2 = [v1 objectAtIndexedSubscript:0];
  v3 = [v2 metadata];

  v4 = [v3 objectForKeyedSubscript:@"JasperToPearlOpCalib"];
  v6 = ADCommonUtils::matrixNxMFromArrayColumnFirst<4ul,3ul,simd_float4x3>(v4);

  return v6;
}

- (id)extractPearlInputsFromLastSyncMatch
{
  v3 = objc_opt_new();
  v4 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:0];
  v5 = [v4 firstObject];

  v6 = [v5 data];
  [v3 setDepth:{objc_msgSend(v6, "pearlDepth")}];
  [v3 setDx:{objc_msgSend(v6, "pearlDx")}];
  [v3 setDy:{objc_msgSend(v6, "pearlDy")}];
  [v3 setScore:{objc_msgSend(v6, "pearlScore")}];
  [v5 pose];
  [v3 setPose:?];
  [(ADJasperPearlInFieldCalibrationExecutor *)self extractPearlPrevPoseFromLastSyncMatch];
  [v3 setPrevPose:?];
  [v5 timestamp];
  [v3 setTimestamp:?];
  v7 = [v5 metadata];
  v8 = [v7 objectForKeyedSubscript:@"Temperature"];
  [v8 floatValue];
  [v3 setTemperature:?];

  return v3;
}

- (BOOL)shouldExecuteWithInterSessionDataRun:(int64_t *)a3
{
  if (!self->_isPrepared)
  {
    *a3 = -22953;
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
    *a3 = 0;
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

- (int64_t)executeWithInterSessionData:(id)a3 result:(id *)a4
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

- (int64_t)executeWithJasperPearlInterSessionData:(id)a3 result:(id)a4
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

- (void)printOutResults:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 efl];
    [v4 floatValue];
    v6 = v5;
    v7 = [v3 principalPointX];
    [v7 floatValue];
    v9 = v8;
    v10 = [v3 principalPointY];
    [v10 floatValue];
    *buf = 134218496;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 2048;
    *&buf[24] = v11;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData result: efl = %f principal point = [%f, %f]", buf, 0x20u);
  }

  v12 = [v3 pceCalib];
  v13 = v12;
  v14 = [v12 bytes];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(v14 + 8768);
    v16 = *(v14 + 8776);
    *buf = 134218240;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v16;
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Executor: executeWithInterSessionData result: efl coeff = [%f, %f]", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  v26 = 0u;
  v17.f64[0] = *(v14 + 13072);
  v17.f64[1] = *(v14 + 13096);
  v18 = *(v14 + 13120);
  v19.f64[0] = *(v14 + 13080);
  v19.f64[1] = *(v14 + 13104);
  v20.f64[0] = *(v14 + 13088);
  v20.f64[1] = *(v14 + 13112);
  v21 = *(v14 + 13128);
  v22 = *(v14 + 13136);
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

- (void)logJasperAggPC:(id)a3 timestamp:(double)a4
{
  v24 = a3;
  v6 = [(ADExecutor *)self executorParameters];
  v7 = [v6 logger];
  v8 = [v7 enabled];

  if ((v8 & 1) != 0 && self->_pearlInfraredCameraCalibration)
  {
    v9 = [(ADExecutor *)self executorParameters];
    v10 = [v9 logger];
    [v10 logPointCloud:v24 name:"jasperPearlInFieldCalibrationJasperAggReprojected" timestamp:a4];

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
    if (![v24 projectJasperPointsCroppedBy:0 rotatedBy:self->_processedJasper andScaledInto:{0.0, 0.0, v20, v21}])
    {
      v22 = [(ADExecutor *)self executorParameters];
      v23 = [v22 logger];
      [v23 logPixelBuffer:self->_processedJasper name:"jasperPearlInFieldCalibrationJasperAggReprojected" timestamp:a4];
    }
  }
}

- (void)logPose:(__n128)a3 logMessagePrefix:(__n128)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a7;
  v16[1] = a1.n128_u32[2];
  v16[3] = a2.n128_u32[2];
  v16[0] = a1.n128_u64[0];
  v16[2] = a2.n128_u64[0];
  v16[5] = a3.n128_u32[2];
  v16[4] = a3.n128_u64[0];
  [ADUtils calcRotationAngle:v16];
  v15 = v8;
  if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    v10 = [v7 UTF8String];
    *buf = 136316674;
    v18 = v10;
    v19 = 2048;
    v20 = (0.057296 * v15.f32[0]);
    v21 = 2048;
    v22 = vmuls_lane_f32(0.057296, *v15.f32, 1);
    v23 = 2048;
    v24 = vmuls_lane_f32(0.057296, v15, 2);
    v25 = 2048;
    v26 = a4.n128_f32[0];
    v27 = 2048;
    v28 = a4.n128_f32[1];
    v29 = 2048;
    v30 = a4.n128_f32[2];
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: R = [%f, %f, %f]degrees, T = [%f, %f, %f] mm", buf, 0x48u);
  }
}

- (void)logJPCInputs:(id)a3
{
  v47 = a3;
  v4 = [(ADExecutor *)self executorParameters];
  v5 = [v4 logger];
  v6 = [v5 enabled];

  if (v6)
  {
    v48 = [(ADJasperPearlInFieldCalibrationExecutor *)self extractPearlInputsFromLastSyncMatch];
    v7 = [(ADExecutor *)self executorParameters];
    v8 = [v7 logger];
    v9 = [v48 depth];
    [v48 timestamp];
    [v8 logPixelBuffer:v9 name:"jasperPearlInFieldCalibrationInputPearlDepth" timestamp:?];

    v10 = [(ADExecutor *)self executorParameters];
    v11 = [v10 logger];
    v12 = [v48 dx];
    [v48 timestamp];
    [v11 logPixelBuffer:v12 name:"jasperPearlInFieldCalibrationInputPearlDx" timestamp:?];

    v13 = [(ADExecutor *)self executorParameters];
    v14 = [v13 logger];
    v15 = [v48 dy];
    [v48 timestamp];
    [v14 logPixelBuffer:v15 name:"jasperPearlInFieldCalibrationInputPearlDy" timestamp:?];

    v16 = [(ADExecutor *)self executorParameters];
    v17 = [v16 logger];
    v18 = [v48 score];
    [v48 timestamp];
    [v17 logPixelBuffer:v18 name:"jasperPearlInFieldCalibrationInputPearlScore" timestamp:?];

    [v48 pose];
    [(ADJasperPearlInFieldCalibrationExecutor *)self logPose:@"Pearl Frame VIO" logMessagePrefix:?];
    v19 = [(ADExecutor *)self executorParameters];
    v20 = [v19 logger];
    v21 = MEMORY[0x277CCACA8];
    [v48 temperature];
    v23 = [v21 stringWithFormat:@"%f", v22];
    [v48 timestamp];
    [v20 logString:v23 name:"jasperPearlFrameTemperature" priority:0 timestamp:?];

    v24 = [(ADJasperPearlInFieldCalibrationExecutor *)self extractIRSensorCalibFromLastSyncMatch];
    v25 = [(ADExecutor *)self executorParameters];
    v26 = [v25 logger];
    [v48 timestamp];
    [v26 logCalibration:v24 name:"irSensorCalibration" timestamp:?];

    [(ADJasperPearlInFieldCalibrationExecutor *)self extractJasperToPearlCalibFromLastSyncMatch];
    v53 = v28;
    v55 = v27;
    v49 = v30;
    v51 = v29;
    v31 = [(ADExecutor *)self executorParameters];
    v32 = [v31 logger];
    [v48 timestamp];
    [v32 logMatrix4x3:"jasperToPearlTransform" name:v55 timestamp:{v53, v51, v49, v33}];
    v46 = v24;

    v34 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:1];
    for (i = 0; ; i = v36 + 1)
    {
      v36 = i;
      if ([v34 count] <= i)
      {
        break;
      }

      v37 = [v34 objectAtIndexedSubscript:i];
      v38 = [(ADExecutor *)self executorParameters];
      v39 = [v38 logger];
      v40 = [v37 data];
      [v37 timestamp];
      [v39 logPointCloud:v40 name:"jasperPearlInFieldCalibrationInputJasper" timestamp:?];

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

- (int64_t)executeWithInterSessionData:(id)a3 outResult:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v74 = a4;
  obj = self->_lastStreamSyncMatchLock;
  objc_sync_enter(obj);
  v6 = [(ADExecutor *)self executorParameters];
  v7 = [v6 stepsToExecute];

  v8 = [(ADExecutor *)self executorParameters];
  v9 = [v8 timeProfiler];

  if (v7 < 1)
  {
    v12 = -22977;
    goto LABEL_40;
  }

  kdebug_trace();
  [v9 startWithUTFString:"executor execute"];
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

  v70 = v9;
  v13 = [(ADJasperPearlInFieldCalibrationExecutor *)self extractPearlInputsFromLastSyncMatch];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      [v13 timestamp];
      v15 = v14;
      [v13 temperature];
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
    [v13 timestamp];
    v21 = v20;
    [v13 temperature];
    *buf = 134218240;
    v85 = v21;
    v86 = 2048;
    v87 = v22;
    v17 = MEMORY[0x277D86220];
    v18 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  v71 = [(ADJasperPearlInFieldCalibrationExecutor *)self extractIRSensorCalibFromLastSyncMatch];
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
    v28 = [(ADExecutor *)self executorParameters];
    v29 = [v28 pipelineParameters];
    v30 = [v29 pointCloudAggregationParameters];
    v31 = [v27 initWithAggregationParameters:v30 jasperToColorTransform:v71 colorCamera:{v82, v81, v80, v79}];
    pcAggregator = self->_pcAggregator;
    self->_pcAggregator = v31;

    v33 = [(ADExecutor *)self executorParameters];
    v34 = [v33 pipelineParameters];
    v35 = [v34 pointCloudFilterParameters];
    [(ADPointCloudAggregator *)self->_pcAggregator setPointCloudFilterParameters:v35];
  }

  v36 = [(ADStreamSyncMatch *)self->_lastSyncMatch matchedObjectsForStream:1];
  [v71 cameraToPlatformTransform];
  [(ADJasperPearlInFieldCalibrationExecutor *)self logJPCInputs:self->_lastSyncMatch];
  [(ADPointCloudAggregator *)self->_pcAggregator setJasperToCameraTransform:v82, v81, v80, v79];
  [(ADPointCloudAggregator *)self->_pcAggregator setColorCameraCalibration:v71];
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
      v40 = [v51 firstObject];

      [v40 pose];
      v52 = self->_pcAggregator;
      [v40 timestamp];
      v53 = [ADPointCloudAggregator aggregateForTime:v52 worldToCameraTransform:"aggregateForTime:worldToCameraTransform:"];
      aggregatedPointCloud = self->_aggregatedPointCloud;
      self->_aggregatedPointCloud = v53;

      v55 = self->_aggregatedPointCloud;
      [v13 timestamp];
      [(ADJasperPearlInFieldCalibrationExecutor *)self logJasperAggPC:v55 timestamp:?];
      v56 = [(ADExecutor *)self executorParameters];
      v57 = [v56 stepsToExecute];
      v58 = [(ADJasperPearlInFieldCalibrationPipeline *)self->_pipeline pipelineParameters];
      [v58 setStepsToExecute:v57];

      v12 = [(ADJasperPearlInFieldCalibrationPipeline *)self->_pipeline processWithPearl:v13 jasperAggregatedPointCloud:self->_aggregatedPointCloud farthestJasperBankPose:v71 irSensorCalibration:v73 jasperToPearlTransform:v74 interSessionData:*&v78 result:*&v77, *&v76, *&v75, v69, v68, v67, v66];
      if (!v12)
      {
        v59 = [v74 pceCalib];
        v60 = v59 == 0;

        if (!v60)
        {
          [(ADJasperPearlInFieldCalibrationExecutor *)self printOutResults:v74];
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
      if (v7 == 1)
      {
        v12 = -22977;
      }

      else
      {
        [(ADExecutor *)self frameExecutionEnd];
      }

      goto LABEL_39;
    }

    v40 = [v36 objectAtIndexedSubscript:v37];
    [v40 pose];
    v41 = self->_pcAggregator;
    v42 = [v40 data];
    [v40 timestamp];
    v12 = [ADPointCloudAggregator pushPointCloud:v41 timestamp:"pushPointCloud:timestamp:worldToCameraTransform:" worldToCameraTransform:v42];

    if (v12)
    {
      break;
    }

    [v40 timestamp];
    v44 = v43;
    [v13 timestamp];
    v46 = vabdd_f64(v44, v45);
    if (v46 > v38)
    {
      [v40 pose];
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

  v9 = v70;
LABEL_40:

  objc_sync_exit(obj);
  return v12;
}

- (uint64_t)pushJasperPointCloud:(double)a3 timestamp:(double)a4 pose:(double)a5 jasperToPearlTransform:(double)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v35[0] = a14;
  v35[1] = a15;
  v35[2] = a16;
  v35[3] = a17;
  v19 = a8;
  kdebug_trace();
  if ((*(a1 + 136) & 1) == 0)
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

  v25 = *(a1 + 168);
  objc_sync_enter(v25);
  v26 = [*(a1 + 168) pushData:v19 streamIndex:1 timestamp:v24 pose:a2 meta:{a3, a4, a5, a6}];
  objc_sync_exit(v25);

  v27 = *(a1 + 152);
  objc_sync_enter(v27);
  v28 = *(a1 + 144);
  *(a1 + 144) = v26;
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

- (uint64_t)pushPearlDepth:(__n128)a3 pearlDx:(__n128)a4 pearlDy:(__n128)a5 pearlScore:(__n128)a6 timestamp:(uint64_t)a7 metadata:(uint64_t)a8 pose:(uint64_t)a9 prevPose:(uint64_t)a10
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
  v26 = *(a1 + 208);
  [v23 sensorTemperature];
  v27 = [a1 overrideCVCalIntrinsicsWithPCECalibIntrinsics:v26 temperature:?];
  v28 = *(a1 + 208);
  *(a1 + 208) = v27;

  if (*(a1 + 136) == 1)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v54 = a2;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: pushed pearl frame for ts:%f into streamSync", buf, 0xCu);
    }

    v29 = [[CVPixelBufferARCWrapper alloc] initWithPearlDepth:a8 pearlDx:a9 pearlDy:a10 pearlScore:a11];
    v51[0] = @"Temperature";
    v30 = MEMORY[0x277CCABB0];
    [v23 sensorTemperature];
    v31 = [v30 numberWithFloat:?];
    v32 = *(a1 + 208);
    v52[0] = v31;
    v52[1] = v32;
    v51[1] = @"IRSensorOpCalibration";
    v51[2] = @"IRSensorPreviousPose";
    v33 = ADCommonUtils::matrixNxMToArrayColumnFirst<4ul,4ul,simd_float4x4>(v50);
    v52[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

    v35 = *(a1 + 168);
    objc_sync_enter(v35);
    v36 = [*(a1 + 168) pushData:v29 streamIndex:0 timestamp:v34 pose:a2 meta:{v43, v45, v47, v49}];
    objc_sync_exit(v35);

    v37 = *(a1 + 152);
    objc_sync_enter(v37);
    v38 = *(a1 + 144);
    *(a1 + 144) = v36;
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

- (void)setPearlInfraredCameraCalibration:(id)a3
{
  v9 = a3;
  pearlInfraredCameraCalibration = self->_pearlInfraredCameraCalibration;
  if (!pearlInfraredCameraCalibration || (-[ADCameraCalibration dictionaryRepresentation](pearlInfraredCameraCalibration, "dictionaryRepresentation"), v6 = objc_claimAutoreleasedReturnValue(), [v9 dictionaryRepresentation], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, (v8 & 1) == 0))
  {
    objc_storeStrong(&self->_pearlInfraredCameraCalibration, a3);
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
  v6 = [(ADExecutor *)self executorParameters];
  v7 = [v6 pipelineParameters];
  v8 = [(ADJasperPearlInFieldCalibrationExecutor *)self pceCalib];
  v9 = [(ADJasperPearlInFieldCalibrationPipeline *)v5 initWithParameters:v7 pceCalib:v8];
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

- (void)setPceCalib:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&self->_pceCalib, a3);
  pipeline = self->_pipeline;
  if (pipeline)
  {
    [(ADJasperPearlInFieldCalibrationPipeline *)pipeline setPceCalib:v5];
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

- (ADJasperPearlInFieldCalibrationExecutor)initWithParameters:(id)a3 pceCalib:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    [(ADExecutor *)v10 setExecutorParameters:v6];
    objc_storeStrong(&v11->_pceCalib, a4);
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

- (ADJasperPearlInFieldCalibrationExecutor)initWithPceCalib:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ADJasperPearlInFieldCalibrationExecutor *)self initWithParameters:v5 pceCalib:v4];

  return v6;
}

@end