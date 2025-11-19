@interface ADJasperPearlInFieldCalibrationPipeline
- (ADJasperPearlInFieldCalibrationPipeline)init;
- (ADJasperPearlInFieldCalibrationPipeline)initWithParameters:(id)a3 pceCalib:(id)a4;
- (BOOL)buildJpcInputDataObjectWithPearlInputs:(__n128)a3 jasperAggregatedPointCloud:(__n128)a4 farthestJasperBankPose:(__n128)a5 irSensorCalibration:(__n128)a6 jasperToPearlTransform:(__n128)a7 outJpcInputs:(__n128)a8;
- (BOOL)checkPrerequisitesForProcessWithPearlWithPearlInputs:(id)a3;
- (const)getPCECalibStruct;
- (id)getIRSensorCameraCalibFromPCECalib;
- (int64_t)processJpcResultWithStatus:(unsigned int)a3 gmcjResult:(void *)a4 glaResult:(void *)a5 result:(id)a6 interSessionData:(id)a7 temperature:(float)a8 eflTempCoeff:(double)a9[2];
- (uint64_t)processWithPearl:(double)a3 jasperAggregatedPointCloud:(double)a4 farthestJasperBankPose:(double)a5 irSensorCalibration:(double)a6 jasperToPearlTransform:(double)a7 interSessionData:(double)a8 result:(double)a9;
- (uint64_t)runWithJpc:(__n128)a3 runMode:(__n128)a4 pearlInputs:(__n128)a5 jasperAggregatedPointCloud:(__n128)a6 farthestJasperBankPose:(__n128)a7 irSensorCalibration:(__n128)a8 jasperToPearlTransform:(__n128)a9 interSessionData:(uint64_t)a10 result:(uint64_t *)a11;
- (unique_ptr<jpc::JPC,)getJpcObjectForRunMode:(int)a3 isValid:(BOOL *)a4;
- (void)fillTelemetryData:(id)a3 jpcError:(unsigned int)a4;
- (void)fillTelemetryDataWithPreviousCalibration:(id)a3 pceCalib:(PCECalib *)a4;
- (void)fixEFLTempCoeffInISFResult:(id)a3 eflTempCoeff:(double)a4[2] temperature:(float)a5;
- (void)logJpcInputData:(JpcInputData *)a3;
- (void)setGMCJResult:(const void *)a3 result:(id)a4 temperature:(float)a5;
@end

@implementation ADJasperPearlInFieldCalibrationPipeline

- (void)fillTelemetryDataWithPreviousCalibration:(id)a3 pceCalib:(PCECalib *)a4
{
  v27 = a3;
  if (v27 && a4)
  {
    v5 = [v27 telemetryData];
    [v5 setIsAssignedPipelinePrevious:1];

    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6.f64[0] = a4->var21.var0[0][0];
    v6.f64[1] = a4->var21.var0[1][0];
    v7 = a4->var21.var0[2][0];
    v8.f64[0] = a4->var21.var0[0][1];
    v8.f64[1] = a4->var21.var0[1][1];
    v9.f64[0] = a4->var21.var0[0][2];
    v9.f64[1] = a4->var21.var0[1][2];
    v10 = a4->var21.var0[2][1];
    v11 = a4->var21.var0[2][2];
    *(&v28 + 2) = v7;
    *&v28 = vcvt_f32_f64(v6);
    *(&v29 + 2) = v10;
    *&v29 = vcvt_f32_f64(v8);
    *(&v30 + 2) = v11;
    *&v30 = vcvt_f32_f64(v9);
    [ADUtils calcRotationAngle:&v28];
    v26 = v12;
    v13 = [v27 telemetryData];
    [v13 setPrevRotX:*&v26];

    v14 = [v27 telemetryData];
    HIDWORD(v15) = DWORD1(v26);
    LODWORD(v15) = DWORD1(v26);
    [v14 setPrevRotY:v15];

    v16 = [v27 telemetryData];
    [v16 setPrevRotZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v26), DWORD2(v26)))}];

    var0 = a4->var4.var0;
    var1 = a4->var20.var1;
    v19 = [v27 telemetryData];
    [v19 setPrevEfl:var1];

    v20 = a4->var20.var2[0];
    v21 = [v27 telemetryData];
    v22 = var0;
    v23 = v22;
    [v21 setPrevPPX:v20 / v22];

    v24 = a4->var20.var2[1];
    v25 = [v27 telemetryData];
    [v25 setPrevPPY:v24 / v23];
  }
}

- (void)fillTelemetryData:(id)a3 jpcError:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v37 = v5;
  if (v5)
  {
    v6 = [v5 pceCalib];

    v5 = v37;
    if (v6)
    {
      v7 = [v37 telemetryData];
      [v7 setIsAssignedPipelineCurrent:1];

      v8 = [v37 principalPointX];
      [v8 floatValue];
      v10 = v9;
      v11 = [v37 telemetryData];
      [v11 setNewPPX:v10];

      v12 = [v37 principalPointY];
      [v12 floatValue];
      v14 = v13;
      v15 = [v37 telemetryData];
      [v15 setNewPPY:v14];

      v16 = [v37 efl];
      [v16 floatValue];
      v18 = v17;
      v19 = [v37 telemetryData];
      [v19 setNewEfl:v18];

      v20 = [v37 pceCalib];
      v21 = [v37 telemetryData];
      [v21 setPceCalib:v20];

      v22 = [v37 pceCalib];
      v23 = [v22 bytes];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v24.f64[0] = v23[1634];
      v24.f64[1] = v23[1637];
      v25 = v23[1640];
      v26.f64[0] = v23[1635];
      v26.f64[1] = v23[1638];
      v27.f64[0] = v23[1636];
      v27.f64[1] = v23[1639];
      v28 = v23[1641];
      v29 = v23[1642];
      *(&v38 + 2) = v25;
      *&v38 = vcvt_f32_f64(v24);
      *(&v39 + 2) = v28;
      *&v39 = vcvt_f32_f64(v26);
      *(&v40 + 2) = v29;
      *&v40 = vcvt_f32_f64(v27);
      [ADUtils calcRotationAngle:&v38];
      v36 = v30;

      v31 = [v37 telemetryData];
      [v31 setNewRotX:*&v36];

      v32 = [v37 telemetryData];
      HIDWORD(v33) = DWORD1(v36);
      LODWORD(v33) = DWORD1(v36);
      [v32 setNewRotY:v33];

      v34 = [v37 telemetryData];
      [v34 setNewRotZ:{COERCE_DOUBLE(__PAIR64__(DWORD1(v36), DWORD2(v36)))}];

      v5 = v37;
    }
  }

  v35 = [v5 telemetryData];
  [v35 setJpcErrorCode:v4];
}

- (void)setGMCJResult:(const void *)a3 result:(id)a4 temperature:(float)a5
{
  v5 = MEMORY[0x28223BE20](self, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v30 = *MEMORY[0x277D85DE8];
  v12 = v11;
  v13 = [v10 pceCalib];
  v14 = [v13 bytes];

  v15 = v14[3];
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

  memcpy(v29, v14, sizeof(v29));
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

- (void)fixEFLTempCoeffInISFResult:(id)a3 eflTempCoeff:(double)a4[2] temperature:(float)a5
{
  v17 = a3;
  v8 = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
  v9 = [v8 bytes];

  v10 = *(v9 + 24);
  v11 = a4[1];
  v12 = [v17 pceCalib];
  v13 = [v12 bytes];

  v14 = *(v13 + 8768) + a5 * v11;
  v15 = v14;
  *&v10 = v10;
  *&v14 = v15 / *&v10;
  *(v13 + 8816) = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  [v17 setEfl:v16];
}

- (int64_t)processJpcResultWithStatus:(unsigned int)a3 gmcjResult:(void *)a4 glaResult:(void *)a5 result:(id)a6 interSessionData:(id)a7 temperature:(float)a8 eflTempCoeff:(double)a9[2]
{
  v14 = *&a3;
  v27 = *MEMORY[0x277D85DE8];
  v16 = a6;
  v17 = a7;
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
  v20 = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
  v21 = v20;
  -[ADJasperPearlInFieldCalibrationPipeline fillTelemetryDataWithPreviousCalibration:pceCalib:](self, "fillTelemetryDataWithPreviousCalibration:pceCalib:", v16, [v20 bytes]);

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

  if (*(a4 + 192) == 1)
  {
    *&v22 = a8;
    [(ADJasperPearlInFieldCalibrationPipeline *)self setGMCJResult:a4 result:v16 temperature:v22];
  }

  if (*(a5 + 16) == 1)
  {
    __assert_rtn("[ADJasperPearlInFieldCalibrationPipeline processJpcResultWithStatus:gmcjResult:glaResult:result:interSessionData:temperature:eflTempCoeff:]", "ADJasperPearlInFieldCalibrationPipeline.mm", 491, "false");
  }

  if (![(ADJasperPearlInFieldCalibrationPipelineParameters *)self->_pipelineParameters skipISF])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 134217984;
      *&v26[4] = a8;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: New ISF entry JPC, Temperature: %f", v26, 0xCu);
    }

    [v17 processJpcResult:v16];
    *&v24 = a8;
    [(ADJasperPearlInFieldCalibrationPipeline *)self fixEFLTempCoeffInISFResult:v16 eflTempCoeff:a9 temperature:v24];
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
  v2 = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
  v3 = [v2 bytes];

  return v3;
}

- (void)logJpcInputData:(JpcInputData *)a3
{
  *&[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp = *&[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp + 1.0;
  v16 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v5 = [v16 logger];
  [v5 logRawBuffer:a3 size:576 name:"JpcInputData_struct" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v17 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v6 = [v17 logger];
  [v6 logPixelBuffer:a3->var0.var0 name:"JpcInputData_RGDX" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v18 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v7 = [v18 logger];
  [v7 logPixelBuffer:a3->var0.var1 name:"JpcInputData_RGDY" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v19 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v8 = [v19 logger];
  [v8 logPixelBuffer:a3->var0.var2 name:"JpcInputData_RGSCORE" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v20 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v9 = [v20 logger];
  [v9 logPixelBuffer:a3->var0.var3 name:"JpcInputData_RGDEPTH" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v21 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v10 = [v21 logger];
  [v10 logPointCloud:a3[1].var1.var0 name:"JpcInputData_JasperPC" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v22 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v11 = [v22 logger];
  [v11 setHumanReadableFormat:1];

  v23 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v12 = [v23 logger];
  [v12 logPointCloud:a3[1].var1.var0 name:"JpcInputData_JasperPC_CSV" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v24 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v13 = [v24 logger];
  [v13 setHumanReadableFormat:0];

  v25 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v14 = [v25 logger];
  [v14 logCalibration:a3[2].var0.var1 name:"JpcInputData_irSensorAsmCalibration" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];

  v26 = [(ADJasperPearlInFieldCalibrationPipeline *)self pipelineParameters];
  v15 = [v26 logger];
  [v15 logCalibration:a3[2].var0.var6 name:"JpcInputData_irSensorOpCalibration" timestamp:*&-[ADJasperPearlInFieldCalibrationPipeline logJpcInputData:]::timestamp];
}

- (BOOL)buildJpcInputDataObjectWithPearlInputs:(__n128)a3 jasperAggregatedPointCloud:(__n128)a4 farthestJasperBankPose:(__n128)a5 irSensorCalibration:(__n128)a6 jasperToPearlTransform:(__n128)a7 outJpcInputs:(__n128)a8
{
  v18 = a11;
  v19 = a12;
  v20 = a13;
  v21 = [a1 getPCECalibStruct];
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
  *(a14 + 208) = a3;
  *(a14 + 224) = a4;
  *(a14 + 240) = a5;
  *(a14 + 256) = xmmword_240406DE0;
  *(a14 + 272) = 1121714176;
  *(a14 + 276) = 0;
  *(a14 + 278) = 0;
  v31 = [a1 getIRSensorCameraCalibFromPCECalib];
  v32 = *(a14 + 280);
  *(a14 + 280) = v31;

  v33 = *(a14 + 280);
  if (v33)
  {
    *(a14 + 288) = *(v21 + 8768);
    *(a14 + 296) = *(v21 + 8776);
    objc_storeStrong((a14 + 304), a13);
    *(a14 + 312) = *(v21 + 8768);
    *(a14 + 320) = *(v21 + 8776);
    v34 = vcvt_f32_f64(*(v21 + 8648));
    v35 = *(v21 + 8664);
    *(a14 + 344) = 0;
    *(a14 + 336) = 1065353216;
    *(a14 + 360) = 0;
    *(a14 + 352) = 0x3F80000000000000;
    *(a14 + 376) = 1065353216;
    *(a14 + 368) = 0;
    *(a14 + 392) = v35;
    *(a14 + 384) = v34;
    v36.f64[0] = *(v21 + 13072);
    v36.f64[1] = *(v21 + 13096);
    v37 = *(v21 + 13120);
    v38.f64[0] = *(v21 + 13080);
    v38.f64[1] = *(v21 + 13104);
    v39 = *(v21 + 13128);
    v40.f64[0] = *(v21 + 13088);
    v40.f64[1] = *(v21 + 13112);
    v41 = *(v21 + 13136);
    v42 = vcvt_f32_f64(*(v21 + 13144));
    v43 = *(v21 + 13160);
    *(a14 + 408) = v37;
    *(a14 + 400) = vcvt_f32_f64(v36);
    *(a14 + 424) = v39;
    *(a14 + 416) = vcvt_f32_f64(v38);
    *(a14 + 440) = v41;
    *(a14 + 432) = vcvt_f32_f64(v40);
    *(a14 + 456) = v43;
    *(a14 + 448) = v42;
    *(a14 + 464) = *(v21 + 8672);
    v44 = *(v21 + 8680);
    *&v44.f64[0] = vcvt_f32_f64(v44);
    v45 = *(v21 + 8696);
    *&v44.f64[1] = v45;
    *(a14 + 480) = v44;
    *(a14 + 496) = a6;
    *(a14 + 512) = a7;
    *(a14 + 528) = a8;
    *(a14 + 544) = a9;
    [v18 temperature];
    *(a14 + 560) = v46;
    [a1 logJpcInputData:a14];
  }

  return v33 != 0;
}

- (unique_ptr<jpc::JPC,)getJpcObjectForRunMode:(int)a3 isValid:(BOOL *)a4
{
  v6 = v4;
  if (!a3)
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
    *a4 = 1;
    jpc::JPCFactory::createJPCModePORImplementation(0, 0, 0, 0, 0, v13);
    operator new();
  }

  if (a3 != 2)
  {
    if (a3 != 1)
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
    *a4 = 1;
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
  *a4 = v8;
  *v6 = 0;
  return v7;
}

- (uint64_t)runWithJpc:(__n128)a3 runMode:(__n128)a4 pearlInputs:(__n128)a5 jasperAggregatedPointCloud:(__n128)a6 farthestJasperBankPose:(__n128)a7 irSensorCalibration:(__n128)a8 jasperToPearlTransform:(__n128)a9 interSessionData:(uint64_t)a10 result:(uint64_t *)a11
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
  if ([a1 buildJpcInputDataObjectWithPearlInputs:v22 jasperAggregatedPointCloud:v23 farthestJasperBankPose:v24 irSensorCalibration:v52 jasperToPearlTransform:a2.n128_f64[0] outJpcInputs:{a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0], a7.n128_f64[0], a8.n128_f64[0], a9.n128_f64[0]}])
  {
    if ([a1[1] isReportTelemetry])
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

    v28 = *a11;
    v29 = [v26 telemetryData];
    jpc::JPC::run(v28, v52, v25, v50, v30, v29);

    v31 = [a1 pipelineParameters];
    v32 = [v31 stepsToExecute] < 4;

    if (v32)
    {
      v34 = 0;
    }

    else
    {
      *&v33 = v57;
      v34 = [a1 processJpcResultWithStatus:0 gmcjResult:v50 glaResult:v47 result:v26 interSessionData:v25 temperature:&v56 eflTempCoeff:v33];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v49) = v34;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: End JPC, error code: %d", buf, 8u);
      }

      if ([a1[1] isReportTelemetry])
      {
        if ([v25 firstTimeEventFired])
        {
          v35 = 0;
        }

        else
        {
          v36 = [v26 telemetryData];
          v35 = [v36 jpcErrorCode] == 0;
        }

        v37 = [v26 telemetryData];
        [ADJasperPearlInFieldCalibrationTelemetry reportTelemetry:v37 firstTimeEvent:v35];

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

- (BOOL)checkPrerequisitesForProcessWithPearlWithPearlInputs:(id)a3
{
  v4 = a3;
  v5 = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: No PCECalib was set.", v15, 2u);
    }

    v8 = [(ADJasperPearlInFieldCalibrationPipeline *)self pceCalib];
    if (!v8)
    {
      __assert_rtn("[ADJasperPearlInFieldCalibrationPipeline checkPrerequisitesForProcessWithPearlWithPearlInputs:]", "ADJasperPearlInFieldCalibrationPipeline.mm", 172, "self.pceCalib");
    }

    goto LABEL_12;
  }

  v6 = [(ADJasperPearlInFieldCalibrationPipeline *)self getPCECalibStruct];
  if (v6->var0 != 7)
  {
    v10 = v6;
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

  if (![v4 depth])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "JasperPearlInFieldCalibration: No Pearl depth image was set.", v13, 2u);
    }

    if ([v4 depth])
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

- (uint64_t)processWithPearl:(double)a3 jasperAggregatedPointCloud:(double)a4 farthestJasperBankPose:(double)a5 irSensorCalibration:(double)a6 jasperToPearlTransform:(double)a7 interSessionData:(double)a8 result:(double)a9
{
  v20 = a11;
  v21 = a12;
  v22 = a13;
  v23 = a14;
  v24 = a15;
  v37 = 0;
  [a1 getJpcObjectForRunMode:0 isValid:&v37];
  if (v36)
  {
    if ([a1 checkPrerequisitesForProcessWithPearlWithPearlInputs:v20])
    {
      v25 = [a1 runWithJpc:&v36 runMode:0 pearlInputs:v20 jasperAggregatedPointCloud:v21 farthestJasperBankPose:v22 irSensorCalibration:v23 jasperToPearlTransform:a2 interSessionData:a3 result:{a4, a5, a6, a7, a8, a9, v24}];
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

- (ADJasperPearlInFieldCalibrationPipeline)initWithParameters:(id)a3 pceCalib:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ADJasperPearlInFieldCalibrationPipeline *)self init];
  v9 = v8;
  if (v8)
  {
    [(ADJasperPearlInFieldCalibrationPipeline *)v8 setPipelineParameters:v6];
    [(ADJasperPearlInFieldCalibrationPipeline *)v9 setPceCalib:v7];
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