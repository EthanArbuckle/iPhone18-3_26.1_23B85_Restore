@interface ADJasperPearlInFieldCalibrationPipeline
- (ADJasperPearlInFieldCalibrationPipeline)init;
- (ADJasperPearlInFieldCalibrationPipeline)initWithParameters:(id)parameters pceCalib:(id)calib;
- (BOOL)buildJpcInputDataObjectWithPearlInputs:(__n128)inputs jasperAggregatedPointCloud:(__n128)cloud farthestJasperBankPose:(__n128)pose irSensorCalibration:(__n128)calibration jasperToPearlTransform:(__n128)transform outJpcInputs:(__n128)jpcInputs;
- (BOOL)checkPrerequisitesForProcessWithPearlWithPearlInputs:(id)inputs;
- (const)getPCECalibStruct;
- (id)getIRSensorCameraCalibFromPCECalib;
- (int64_t)processJpcResultWithStatus:(unsigned int)status gmcjResult:(void *)result glaResult:(void *)glaResult result:(id)a6 interSessionData:(id)data temperature:(float)temperature eflTempCoeff:(double)coeff[2];
- (uint64_t)processWithPearl:(double)pearl jasperAggregatedPointCloud:(double)cloud farthestJasperBankPose:(double)pose irSensorCalibration:(double)calibration jasperToPearlTransform:(double)transform interSessionData:(double)data result:(double)result;
- (uint64_t)runWithJpc:(__n128)jpc runMode:(__n128)mode pearlInputs:(__n128)inputs jasperAggregatedPointCloud:(__n128)cloud farthestJasperBankPose:(__n128)pose irSensorCalibration:(__n128)calibration jasperToPearlTransform:(__n128)transform interSessionData:(uint64_t)self0 result:(uint64_t *)self1;
- (unique_ptr<jpc::JPC,)getJpcObjectForRunMode:(int)mode isValid:(BOOL *)valid;
- (void)fillTelemetryData:(id)data jpcError:(unsigned int)error;
- (void)fillTelemetryDataWithPreviousCalibration:(id)calibration pceCalib:(PCECalib *)calib;
- (void)fixEFLTempCoeffInISFResult:(id)result eflTempCoeff:(double)coeff[2] temperature:(float)temperature;
- (void)logJpcInputData:(JpcInputData *)data;
- (void)setGMCJResult:(const void *)result result:(id)a4 temperature:(float)temperature;
@end

@implementation ADJasperPearlInFieldCalibrationPipeline

- (void)fillTelemetryDataWithPreviousCalibration:(id)calibration pceCalib:(PCECalib *)calib
{
  calibrationCopy = calibration;
  if (calibrationCopy && calib)
  {
    telemetryData = [calibrationCopy telemetryData];
    [telemetryData setIsAssignedPipelinePrevious:1];

    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6.f64[0] = calib->var21.var0[0][0];
    v6.f64[1] = calib->var21.var0[1][0];
    v7 = calib->var21.var0[2][0];
    v8.f64[0] = calib->var21.var0[0][1];
    v8.f64[1] = calib->var21.var0[1][1];
    v9.f64[0] = calib->var21.var0[0][2];
    v9.f64[1] = calib->var21.var0[1][2];
    v10 = calib->var21.var0[2][1];
    v11 = calib->var21.var0[2][2];
    *(&v28 + 2) = v7;
    *&v28 = vcvt_f32_f64(v6);
    *(&v29 + 2) = v10;
    *&v29 = vcvt_f32_f64(v8);
    *(&v30 + 2) = v11;
    *&v30 = vcvt_f32_f64(v9);
    [ADUtils calcRotationAngle:&v28];
    v26 = v12;
    telemetryData2 = [calibrationCopy telemetryData];
    [telemetryData2 setPrevRotX:*&v26];

    telemetryData3 = [calibrationCopy telemetryData];
    HIDWORD(v15) = DWORD1(v26);
    LODWORD(v15) = DWORD1(v26);
    [telemetryData3 setPrevRotY:v15];

    telemetryData4 = [calibrationCopy telemetryData];
    [telemetryData4 setPrevRotZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v26), DWORD2(v26)))}];

    var0 = calib->var4.var0;
    var1 = calib->var20.var1;
    telemetryData5 = [calibrationCopy telemetryData];
    [telemetryData5 setPrevEfl:var1];

    v20 = calib->var20.var2[0];
    telemetryData6 = [calibrationCopy telemetryData];
    v22 = var0;
    v23 = v22;
    [telemetryData6 setPrevPPX:v20 / v22];

    v24 = calib->var20.var2[1];
    telemetryData7 = [calibrationCopy telemetryData];
    [telemetryData7 setPrevPPY:v24 / v23];
  }
}

- (void)fillTelemetryData:(id)data jpcError:(unsigned int)error
{
  v4 = *&error;
  dataCopy = data;
  v37 = dataCopy;
  if (dataCopy)
  {
    pceCalib = [dataCopy pceCalib];

    dataCopy = v37;
    if (pceCalib)
    {
      telemetryData = [v37 telemetryData];
      [telemetryData setIsAssignedPipelineCurrent:1];

      principalPointX = [v37 principalPointX];
      [principalPointX floatValue];
      v10 = v9;
      telemetryData2 = [v37 telemetryData];
      [telemetryData2 setNewPPX:v10];

      principalPointY = [v37 principalPointY];
      [principalPointY floatValue];
      v14 = v13;
      telemetryData3 = [v37 telemetryData];
      [telemetryData3 setNewPPY:v14];

      v16 = [v37 efl];
      [v16 floatValue];
      v18 = v17;
      telemetryData4 = [v37 telemetryData];
      [telemetryData4 setNewEfl:v18];

      pceCalib2 = [v37 pceCalib];
      telemetryData5 = [v37 telemetryData];
      [telemetryData5 setPceCalib:pceCalib2];

      pceCalib3 = [v37 pceCalib];
      bytes = [pceCalib3 bytes];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24.f64[0] = bytes[1634];
      v24.f64[1] = bytes[1637];
      v25 = bytes[1640];
      v26.f64[0] = bytes[1635];
      v26.f64[1] = bytes[1638];
      v27.f64[0] = bytes[1636];
      v27.f64[1] = bytes[1639];
      v28 = bytes[1641];
      v29 = bytes[1642];
      *(&v38 + 2) = v25;
      *&v38 = vcvt_f32_f64(v24);
      *(&v39 + 2) = v28;
      *&v39 = vcvt_f32_f64(v26);
      *(&v40 + 2) = v29;
      *&v40 = vcvt_f32_f64(v27);
      [ADUtils calcRotationAngle:&v38];
      v36 = v30;

      telemetryData6 = [v37 telemetryData];
      [telemetryData6 setNewRotX:*&v36];

      telemetryData7 = [v37 telemetryData];
      HIDWORD(v33) = DWORD1(v36);
      LODWORD(v33) = DWORD1(v36);
      [telemetryData7 setNewRotY:v33];

      telemetryData8 = [v37 telemetryData];
      [telemetryData8 setNewRotZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v36), DWORD2(v36)))}];

      dataCopy = v37;
    }
  }

  telemetryData9 = [dataCopy telemetryData];
  [telemetryData9 setJpcErrorCode:v4];
}

- (void)setGMCJResult:(const void *)result result:(id)a4 temperature:(float)temperature
{
  v5 = MEMORY[0x28223BE20](self, a2, result, a4, temperature);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v30 = *MEMORY[0x277D85DE8];
  v12 = v11;
  pceCalib = [v10 pceCalib];
  bytes = [pceCalib bytes];

  v15 = bytes[3];
  v16 = v15;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(v9 + 168) / v15];
  [v12 setEfl:v17];

  LODWORD(v18) = v7;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  [v12 setTemperature:v19];

  if (*(v9 + 160) == 1)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:*(v9 + 144) / v16];
    [v12 setPrincipalPointX:v20];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:*(v9 + 152) / v16];
    [v12 setPrincipalPointY:v21];
  }

  memcpy(v29, bytes, sizeof(v29));
  if (*(v9 + 128) == 1)
  {
    v22 = *v9;
    v23 = *(v9 + 16);
    *&v29[13072] = vcvtq_f64_f32(vzip1_s32(*v9, *v23.i8));
    v24 = *(v9 + 32);
    v25 = *(v9 + 48);
    v26 = vzip2_s32(*v23.i8, *&v24);
    v27 = COERCE_FLOAT(*(v9 + 40));
    DWORD1(v24) = v22.i32[1];
    *&v29[13088] = vcvtq_f64_f32(*&v24);
    *&v29[13104] = vcvtq_f64_f32(v26);
    *&v29[13120] = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v29[13136] = v27;
    *&v29[13144] = v25;
    *&v29[13160] = *(v9 + 64);
  }

  if (*(v9 + 160) == 1)
  {
    *&v29[8824] = *(v9 + 144);
  }

  *&v29[8816] = *(v9 + 168);
  *&v29[8768] = *(v9 + 176);
  v28 = [MEMORY[0x277CBEA90] dataWithBytes:v29 length:13192];
  [v12 setPceCalib:v28];
}

- (void)fixEFLTempCoeffInISFResult:(id)result eflTempCoeff:(double)coeff[2] temperature:(float)temperature
{
  resultCopy = result;
  pceCalib = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
  bytes = [pceCalib bytes];

  v10 = *(bytes + 24);
  v11 = coeff[1];
  pceCalib2 = [resultCopy pceCalib];
  bytes2 = [pceCalib2 bytes];

  v14 = *(bytes2 + 8768) + temperature * v11;
  v15 = v14;
  *&v10 = v10;
  *&v14 = v15 / *&v10;
  *(bytes2 + 8816) = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [resultCopy setEfl:v16];
}

- (int64_t)processJpcResultWithStatus:(unsigned int)status gmcjResult:(void *)result glaResult:(void *)glaResult result:(id)a6 interSessionData:(id)data temperature:(float)temperature eflTempCoeff:(double)coeff[2]
{
  v14 = *&status;
  v27 = *MEMORY[0x277D85DE8];
  v16 = a6;
  dataCopy = data;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v26 = 67109120;
    *&v26[4] = v14;
    v18 = MEMORY[0x277D86220];
    v19 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *v26 = 67109120;
    *&v26[4] = v14;
    v18 = MEMORY[0x277D86220];
    v19 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v18, v19, "JasperPearlInFieldCalibration: JPC Status: %d", v26, 8u);
LABEL_7:
  pceCalib = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
  v21 = pceCalib;
  -[ADJasperPearlInFieldCalibrationPipeline fillTelemetryDataWithPreviousCalibration:pceCalib:](self, "fillTelemetryDataWithPreviousCalibration:pceCalib:", v16, [pceCalib bytes]);

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v23 = -22972;
      goto LABEL_24;
    }

    if (v14 == 3)
    {
      v23 = -22976;
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      v23 = -22973;
      goto LABEL_24;
    }

LABEL_14:
    v23 = -22950;
    goto LABEL_24;
  }

  if (*(result + 192) == 1)
  {
    *&v22 = temperature;
    [(ADJasperPearlInFieldCalibrationPipeline *)self setGMCJResult:result result:v16 temperature:v22];
  }

  if (*(glaResult + 16) == 1)
  {
    __assert_rtn("[ADJasperPearlInFieldCalibrationPipeline processJpcResultWithStatus:gmcjResult:glaResult:result:interSessionData:temperature:eflTempCoeff:]", "ADJasperPearlInFieldCalibrationPipeline.mm", 491, "false");
  }

  if (![(ADJasperPearlInFieldCalibrationPipelineParameters *)self->_pipelineParameters skipISF])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 134217984;
      *&v26[4] = temperature;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: New ISF entry JPC, Temperature: %f", v26, 0xCu);
    }

    [dataCopy processJpcResult:v16];
    *&v24 = temperature;
    [(ADJasperPearlInFieldCalibrationPipeline *)self fixEFLTempCoeffInISFResult:v16 eflTempCoeff:coeff temperature:v24];
  }

  v23 = 0;
LABEL_24:
  [(ADJasperPearlInFieldCalibrationPipeline *)self fillTelemetryData:v16 jpcError:v14];

  return v23;
}

- (id)getIRSensorCameraCalibFromPCECalib
{
  memcpy(__dst, [(ADJasperPearlInFieldCalibrationPipeline *)self getPCECalibStruct]+ 24, sizeof(__dst));
  v3 = jpc::PearlUtils::getIrCameraCalibration(__dst, v2);

  return v3;
}

- (const)getPCECalibStruct
{
  pceCalib = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
  bytes = [pceCalib bytes];

  return bytes;
}

- (void)logJpcInputData:(JpcInputData *)data
{
  *&[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp = *&[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp + 1.0;
  pipelineParameters = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger = [pipelineParameters logger];
  [logger logRawBuffer:data size:576 name:"JpcInputData_struct" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters2 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger2 = [pipelineParameters2 logger];
  [logger2 logPixelBuffer:data->var0.var0 name:"JpcInputData_RGDX" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters3 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger3 = [pipelineParameters3 logger];
  [logger3 logPixelBuffer:data->var0.var1 name:"JpcInputData_RGDY" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters4 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger4 = [pipelineParameters4 logger];
  [logger4 logPixelBuffer:data->var0.var2 name:"JpcInputData_RGSCORE" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters5 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger5 = [pipelineParameters5 logger];
  [logger5 logPixelBuffer:data->var0.var3 name:"JpcInputData_RGDEPTH" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters6 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger6 = [pipelineParameters6 logger];
  [logger6 logPointCloud:data[1].var1.var0 name:"JpcInputData_JasperPC" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters7 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger7 = [pipelineParameters7 logger];
  [logger7 setHumanReadableFormat:1];

  pipelineParameters8 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger8 = [pipelineParameters8 logger];
  [logger8 logPointCloud:data[1].var1.var0 name:"JpcInputData_JasperPC_CSV" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters9 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger9 = [pipelineParameters9 logger];
  [logger9 setHumanReadableFormat:0];

  pipelineParameters10 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger10 = [pipelineParameters10 logger];
  [logger10 logCalibration:data[2].var0.var1 name:"JpcInputData_irSensorAsmCalibration" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  pipelineParameters11 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  logger11 = [pipelineParameters11 logger];
  [logger11 logCalibration:data[2].var0.var6 name:"JpcInputData_irSensorOpCalibration" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];
}

- (BOOL)buildJpcInputDataObjectWithPearlInputs:(__n128)inputs jasperAggregatedPointCloud:(__n128)cloud farthestJasperBankPose:(__n128)pose irSensorCalibration:(__n128)calibration jasperToPearlTransform:(__n128)transform outJpcInputs:(__n128)jpcInputs
{
  v18 = a11;
  v19 = a12;
  v20 = a13;
  getPCECalibStruct = [self getPCECalibStruct];
  *(a14 + 24) = [v18 depth];
  *a14 = [v18 dx];
  *(a14 + 8) = [v18 dy];
  *(a14 + 16) = [v18 score];
  [v18 pose];
  *(a14 + 32) = v22;
  *(a14 + 48) = v23;
  *(a14 + 64) = v24;
  *(a14 + 80) = v25;
  [v18 prevPose];
  *(a14 + 96) = v26;
  *(a14 + 112) = v27;
  *(a14 + 128) = v28;
  *(a14 + 144) = v29;
  [v18 timestamp];
  *(a14 + 160) = (v30 * 1000.0);
  objc_storeStrong((a14 + 176), a12);
  *(a14 + 192) = a2;
  *(a14 + 208) = inputs;
  *(a14 + 224) = cloud;
  *(a14 + 240) = pose;
  *(a14 + 256) = xmmword_240406DE0;
  *(a14 + 272) = 1121714176;
  *(a14 + 276) = 0;
  *(a14 + 278) = 0;
  getIRSensorCameraCalibFromPCECalib = [self getIRSensorCameraCalibFromPCECalib];
  v32 = *(a14 + 280);
  *(a14 + 280) = getIRSensorCameraCalibFromPCECalib;

  v33 = *(a14 + 280);
  if (v33)
  {
    *(a14 + 288) = *(getPCECalibStruct + 8768);
    *(a14 + 296) = *(getPCECalibStruct + 8776);
    objc_storeStrong((a14 + 304), a13);
    *(a14 + 312) = *(getPCECalibStruct + 8768);
    *(a14 + 320) = *(getPCECalibStruct + 8776);
    v34 = vcvt_f32_f64(*(getPCECalibStruct + 8648));
    v35 = *(getPCECalibStruct + 8664);
    *(a14 + 344) = 0;
    *(a14 + 336) = 1065353216;
    *(a14 + 360) = 0;
    *(a14 + 352) = 0x3F80000000000000;
    *(a14 + 376) = 1065353216;
    *(a14 + 368) = 0;
    *(a14 + 392) = v35;
    *(a14 + 384) = v34;
    v36.f64[0] = *(getPCECalibStruct + 13072);
    v36.f64[1] = *(getPCECalibStruct + 13096);
    v37 = *(getPCECalibStruct + 13120);
    v38.f64[0] = *(getPCECalibStruct + 13080);
    v38.f64[1] = *(getPCECalibStruct + 13104);
    v39 = *(getPCECalibStruct + 13128);
    v40.f64[0] = *(getPCECalibStruct + 13088);
    v40.f64[1] = *(getPCECalibStruct + 13112);
    v41 = *(getPCECalibStruct + 13136);
    v42 = vcvt_f32_f64(*(getPCECalibStruct + 13144));
    v43 = *(getPCECalibStruct + 13160);
    *(a14 + 408) = v37;
    *(a14 + 400) = vcvt_f32_f64(v36);
    *(a14 + 424) = v39;
    *(a14 + 416) = vcvt_f32_f64(v38);
    *(a14 + 440) = v41;
    *(a14 + 432) = vcvt_f32_f64(v40);
    *(a14 + 456) = v43;
    *(a14 + 448) = v42;
    *(a14 + 464) = *(getPCECalibStruct + 8672);
    v44 = *(getPCECalibStruct + 8680);
    *&v44.f64[0] = vcvt_f32_f64(v44);
    v45 = *(getPCECalibStruct + 8696);
    *&v44.f64[1] = v45;
    *(a14 + 480) = v44;
    *(a14 + 496) = calibration;
    *(a14 + 512) = transform;
    *(a14 + 528) = jpcInputs;
    *(a14 + 544) = a9;
    [v18 temperature];
    *(a14 + 560) = v46;
    [self logJpcInputData:a14];
  }

  return v33 != 0;
}

- (unique_ptr<jpc::JPC,)getJpcObjectForRunMode:(int)mode isValid:(BOOL *)valid
{
  v6 = v4;
  if (!mode)
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *v13 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *v13 = 0;
      v9 = MEMORY[0x277D86220];
      v10 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2402F6000, v9, v10, "JasperPearlInFieldCalibration: kJPC_FullEstimation mode.", v13, 2u);
LABEL_20:
    *valid = 1;
    jpc::JPCFactory::createJPCModePORImplementation(0, 0, 0, 0, 0, v13);
    operator new();
  }

  if (mode != 2)
  {
    if (mode != 1)
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        *v13 = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: Invalid pipeline run mode.", v13, 2u);
      }

      v8 = 0;
      goto LABEL_7;
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *v13 = 0;
      v11 = MEMORY[0x277D86220];
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *v13 = 0;
      v11 = MEMORY[0x277D86220];
      v12 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_2402F6000, v11, v12, "JasperPearlInFieldCalibration: kJPC_EflOnlyEstimation mode.", v13, 2u);
LABEL_28:
    *valid = 1;
    jpc::JPCFactory::createEflModePORImplementation();
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      *v13 = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: kJPC_Idle mode.", v13, 2u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 1;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v7)
    {
      *v13 = 0;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "JasperPearlInFieldCalibration: kJPC_Idle mode.", v13, 2u);
    }
  }

LABEL_7:
  *valid = v8;
  *v6 = 0;
  return v7;
}

- (uint64_t)runWithJpc:(__n128)jpc runMode:(__n128)mode pearlInputs:(__n128)inputs jasperAggregatedPointCloud:(__n128)cloud farthestJasperBankPose:(__n128)pose irSensorCalibration:(__n128)calibration jasperToPearlTransform:(__n128)transform interSessionData:(uint64_t)self0 result:(uint64_t *)self1
{
  v58 = *MEMORY[0x277D85DE8];
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v25 = a16;
  v26 = a17;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  if ([self buildJpcInputDataObjectWithPearlInputs:v22 jasperAggregatedPointCloud:v23 farthestJasperBankPose:v24 irSensorCalibration:v52 jasperToPearlTransform:a2.n128_f64[0] outJpcInputs:{jpc.n128_f64[0], mode.n128_f64[0], inputs.n128_f64[0], cloud.n128_f64[0], pose.n128_f64[0], calibration.n128_f64[0], transform.n128_f64[0]}])
  {
    if ([self[1] isReportTelemetry])
    {
      v27 = objc_alloc_init(ADJasperPearlTelemetryData);
      [v26 setTelemetryData:v27];
    }

    v50[0] = 0;
    v51 = 0;
    v47[0] = 0;
    v47[16] = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v49 = v57;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: Start JPC, Temperature: %f", buf, 0xCu);
    }

    v28 = *result;
    telemetryData = [v26 telemetryData];
    jpc::JPC::run(v28, v52, v25, v50, v30, telemetryData);

    pipelineParameters = [self pipelineParameters];
    v32 = [pipelineParameters stepsToExecute] < 4;

    if (v32)
    {
      v34 = 0;
    }

    else
    {
      *&v33 = v57;
      v34 = [self processJpcResultWithStatus:0 gmcjResult:v50 glaResult:v47 result:v26 interSessionData:v25 temperature:&v56 eflTempCoeff:v33];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v49) = v34;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: End JPC, error code: %d", buf, 8u);
      }

      if ([self[1] isReportTelemetry])
      {
        if ([v25 firstTimeEventFired])
        {
          v35 = 0;
        }

        else
        {
          telemetryData2 = [v26 telemetryData];
          v35 = [telemetryData2 jpcErrorCode] == 0;
        }

        telemetryData3 = [v26 telemetryData];
        [ADJasperPearlInFieldCalibrationTelemetry reportTelemetry:telemetryData3 firstTimeEvent:v35];

        if (v35)
        {
          [v25 setFirstTimeEventFired:1];
        }
      }

      [v25 insertEntryToDiagnosticPipelineLog:v26];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: Building JpcInputData has failed.", v50, 2u);
    }

    v34 = -22950;
  }

  return v34;
}

- (BOOL)checkPrerequisitesForProcessWithPearlWithPearlInputs:(id)inputs
{
  inputsCopy = inputs;
  pceCalib = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];

  if (!pceCalib)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: No PCECalib was set.", v15, 2u);
    }

    pceCalib2 = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
    if (!pceCalib2)
    {
      __assert_rtn("[ADJasperPearlInFieldCalibrationPipeline checkPrerequisitesForProcessWithPearlWithPearlInputs:]", "ADJasperPearlInFieldCalibrationPipeline.mm", 172, "self.pceCalib");
    }

    goto LABEL_12;
  }

  getPCECalibStruct = [(ADJasperPearlInFieldCalibrationPipeline *)self getPCECalibStruct];
  if (getPCECalibStruct->var0 != 7)
  {
    v10 = getPCECalibStruct;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: Incorrect PCECalib version.", buf, 2u);
      if (v10->var0 == 7)
      {
LABEL_12:
        v7 = 0;
        goto LABEL_13;
      }
    }

    v11 = "SUPPORTED_PCE_CALIB_VERSION == pceCalib->version";
    v12 = 180;
LABEL_19:
    __assert_rtn("[ADJasperPearlInFieldCalibrationPipeline checkPrerequisitesForProcessWithPearlWithPearlInputs:]", "ADJasperPearlInFieldCalibrationPipeline.mm", v12, v11);
  }

  if (![inputsCopy depth])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: No Pearl depth image was set.", v13, 2u);
    }

    if ([inputsCopy depth])
    {
      goto LABEL_12;
    }

    v11 = "pearlInputs.depth";
    v12 = 189;
    goto LABEL_19;
  }

  v7 = 1;
LABEL_13:

  return v7;
}

- (uint64_t)processWithPearl:(double)pearl jasperAggregatedPointCloud:(double)cloud farthestJasperBankPose:(double)pose irSensorCalibration:(double)calibration jasperToPearlTransform:(double)transform interSessionData:(double)data result:(double)result
{
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v37 = 0;
  [self getJpcObjectForRunMode:0 isValid:&v37];
  if (v36)
  {
    if ([self checkPrerequisitesForProcessWithPearlWithPearlInputs:v20])
    {
      v25 = [self runWithJpc:&v36 runMode:0 pearlInputs:v20 jasperAggregatedPointCloud:v21 farthestJasperBankPose:v22 irSensorCalibration:v23 jasperToPearlTransform:a2 interSessionData:pearl result:{cloud, pose, calibration, transform, data, result, v24}];
    }

    else
    {
      v25 = -22953;
    }

    v26 = v36;
    v36 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  else
  {
    v25 = -22953;
  }

  return v25;
}

- (ADJasperPearlInFieldCalibrationPipeline)initWithParameters:(id)parameters pceCalib:(id)calib
{
  parametersCopy = parameters;
  calibCopy = calib;
  v8 = [(ADJasperPearlInFieldCalibrationPipeline *)self init];
  v9 = v8;
  if (v8)
  {
    [(ADJasperPearlInFieldCalibrationPipeline *)v8 setPipelineParameters:parametersCopy];
    [(ADJasperPearlInFieldCalibrationPipeline *)v9 setPceCalib:calibCopy];
  }

  return v9;
}

- (ADJasperPearlInFieldCalibrationPipeline)init
{
  v9 = 335683540;
  v10 = 0u;
  v11 = 0u;
  kdebug_trace();
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = MEMORY[0x277D86220];
      v4 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2402F6000, v3, v4, "JasperPearlInFieldCalibration: Pipeline init.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v3 = MEMORY[0x277D86220];
    v4 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  v7.receiver = self;
  v7.super_class = ADJasperPearlInFieldCalibrationPipeline;
  v5 = [(ADJasperPearlInFieldCalibrationPipeline *)&v7 init];
  kdebug_trace();

  return v5;
}

@end