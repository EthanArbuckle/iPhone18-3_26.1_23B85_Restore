@interface ADJasperPearlInFieldCalibrationInterSessionData
- (ADJasperPearlInFieldCalibrationInterSessionData)init;
- (ADJasperPearlInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)a3;
- (ADJasperPearlInFieldCalibrationInterSessionData)initWithPCECalibData:(id)a3;
- (BOOL)insertEntryToDiagnosticPipelineLog:(id)a3;
- (id).cxx_construct;
- (id)buildISFInputDictWithEFL:(float)a3 principalPointtX:(id)a4 principalPointtY:(id)a5 rotationMat:(double)a6[3][3];
- (id)persistenceData;
- (int64_t)processJpcResult:(id)a3;
- (void)initDiagnosticPipelineLog;
- (void)initIsf;
- (void)resetIFAObjects;
@end

@implementation ADJasperPearlInFieldCalibrationInterSessionData

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

- (BOOL)insertEntryToDiagnosticPipelineLog:(id)a3
{
  v4 = a3;
  begin = self->_diagnosticPipelineLog.__begin_;
  end = self->_diagnosticPipelineLog.__end_;
  if (end != begin)
  {
    p_diagnosticPipelineLog = &self->_diagnosticPipelineLog;
    v84 = self->_diagnosticPipelineLog.__begin_;
    v85 = self->_diagnosticPipelineLog.__end_;
    v86 = self;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    v101 = [v4 telemetryData];
    [v101 pearlTemperature];
    v80 = v7;
    v100 = [v4 telemetryData];
    [v100 motionBetweenFramesRotationX];
    v79 = v8;
    v99 = [v4 telemetryData];
    [v99 motionBetweenFramesRotationY];
    v77 = v9;
    v98 = [v4 telemetryData];
    [v98 motionBetweenFramesRotationZ];
    v76 = v10;
    v97 = [v4 telemetryData];
    [v97 motionBetweenFramesTranslationX];
    v74 = v11;
    v96 = [v4 telemetryData];
    [v96 motionBetweenFramesTranslationY];
    v73 = v12;
    v95 = [v4 telemetryData];
    [v95 motionBetweenFramesTranslationZ];
    v71 = v13;
    v94 = [v4 telemetryData];
    [v94 pearlToLastJasperBankRotationX];
    v70 = v14;
    v93 = [v4 telemetryData];
    [v93 pearlToLastJasperBankRotationY];
    v68 = v15;
    v92 = [v4 telemetryData];
    [v92 pearlToLastJasperBankRotationZ];
    v67 = v16;
    v91 = [v4 telemetryData];
    [v91 pearlToLastJasperBankTranslationX];
    v65 = v17;
    v90 = [v4 telemetryData];
    [v90 pearlToLastJasperBankTranslationY];
    v64 = v18;
    v89 = [v4 telemetryData];
    [v89 pearlToLastJasperBankTranslationZ];
    v62 = v19;
    v88 = [v4 telemetryData];
    v61 = [v88 jpcErrorCode];
    v87 = [v4 telemetryData];
    v59 = [v87 numPearlOnlyCorrespondencesPreIFA];
    v82 = [v4 telemetryData];
    v58 = [v82 numPearlJasperCorrespondencesPreIFA];
    v78 = [v4 telemetryData];
    v56 = [v78 numPearlJasperCorrespondencesPostPJWorkDistOverlapFilter];
    v75 = [v4 telemetryData];
    v55 = [v75 numPearlJasperCorrespondencesPostPJDepthDiffFilter];
    v72 = [v4 telemetryData];
    v53 = [v72 numPearlJasperCorrespondencesPostLocalDepthVarFilter];
    v69 = [v4 telemetryData];
    v52 = [v69 numPearlOnlyCorrespondencesPostSpatialCoverageFilter];
    v66 = [v4 telemetryData];
    [v66 irCamFOVCoveragePercent];
    v21 = v20;
    v63 = [v4 telemetryData];
    [v63 gmcjScaleChangePercentFromT0];
    v23 = v22;
    v60 = [v4 telemetryData];
    [v60 gmcjPPXChangeMicronFromT0];
    v25 = v24;
    v57 = [v4 telemetryData];
    [v57 gmcjPPYChangeMicronFromT0];
    v27 = v26;
    v54 = [v4 telemetryData];
    [v54 gmcjProjRotXChangeFromT0];
    v51 = v28;
    v29 = [v4 telemetryData];
    [v29 gmcjProjRotYChangeFromT0];
    v50 = v30;
    v31 = [v4 telemetryData];
    [v31 gmcjProjRotZChangeFromT0];
    v33 = v32;
    v34 = [v4 telemetryData];
    [v34 jasperMisalignmentBefore];
    v36 = v35;
    v37 = [v4 telemetryData];
    [v37 jasperMisalignmentAfter];
    v39 = v38;
    v40 = [v4 telemetryData];
    [v40 reprojectionErrorBefore];
    v42 = v41;
    v43 = [v4 telemetryData];
    [v43 reprojectionErrorAfter];
    v44 = v21;
    *&v21 = v45;

    v46 = p_diagnosticPipelineLog->__begin_ + 110 * v86->_diagnosticPipelineLogIndex;
    *v46 = rep / 1000000;
    *(v46 + 4) = v80;
    *(v46 + 5) = v79;
    *(v46 + 9) = v77;
    *(v46 + 13) = v76;
    *(v46 + 17) = v74;
    *(v46 + 21) = v73;
    *(v46 + 25) = v71;
    *(v46 + 29) = v70;
    *(v46 + 33) = v68;
    *(v46 + 37) = v67;
    *(v46 + 41) = v65;
    *(v46 + 45) = v64;
    *(v46 + 49) = v62;
    *(v46 + 53) = v61;
    *(v46 + 57) = v59;
    *(v46 + 59) = v58;
    *(v46 + 61) = v56;
    *(v46 + 63) = v55;
    *(v46 + 65) = v53;
    *(v46 + 67) = v52;
    *(v46 + 69) = v44;
    *&v23 = v23;
    *(v46 + 70) = LODWORD(v23);
    *&v25 = v25;
    *(v46 + 74) = LODWORD(v25);
    *&v27 = v27;
    *(v46 + 78) = LODWORD(v27);
    *(v46 + 82) = v51;
    *(v46 + 86) = v50;
    *(v46 + 90) = v33;
    *&v36 = v36;
    *(v46 + 94) = LODWORD(v36);
    *&v39 = v39;
    *(v46 + 98) = LODWORD(v39);
    *&v42 = v42;
    *(v46 + 102) = LODWORD(v42);
    diagnosticPipelineLogIndex = v86->_diagnosticPipelineLogIndex;
    *(v46 + 106) = LODWORD(v21);
    v86->_diagnosticPipelineLogIndex = (diagnosticPipelineLogIndex + 1) % (0x6FB586FB586FB587 * ((p_diagnosticPipelineLog->__end_ - p_diagnosticPipelineLog->__begin_) >> 1));
    begin = v84;
    end = v85;
  }

  v48 = end != begin;

  return v48;
}

- (int64_t)processJpcResult:(id)a3
{
  v4 = a3;
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = MEMORY[0x277D86220];
    v6 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_2402F6000, v5, v6, "JasperPearlInFieldCalibration: ADJasperPearlInFieldCalibrationInterSessionData: processJpcResult.", buf, 2u);
LABEL_7:
  v7 = [v4 pceCalib];
  if (v7)
  {
    v8 = [v4 efl];
    if (!v8)
    {
      v10 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v9 = [v4 principalPointX];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = [v4 principalPointY];

    if (v10)
    {
      v11 = [v4 pceCalib];
      v12 = [v11 bytes];

      v13 = v12[548].f64[0];
      v14 = [v4 principalPointX];
      v15 = [v4 principalPointY];
      *&v16 = v13;
      v8 = [(ADJasperPearlInFieldCalibrationInterSessionData *)self buildISFInputDictWithEFL:v14 principalPointtX:v15 principalPointtY:&v12[817] rotationMat:v16];

      v45 = 0;
      v17 = [(ADInFieldCalibrationInterSessionData *)self insertEntryAndCalculate:v8 withWeight:&v45 toResult:1.0];
      v7 = v45;
      if (v17)
      {
        v10 = -22950;
LABEL_23:

        goto LABEL_24;
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = MEMORY[0x277D86220];
          v19 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
          _os_log_impl(&dword_2402F6000, v18, v19, "JasperPearlInFieldCalibration: ADJasperPearlInFieldCalibrationInterSessionData: processJpcResult: ISF updated", buf, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = MEMORY[0x277D86220];
        v19 = OS_LOG_TYPE_INFO;
        goto LABEL_20;
      }

      v20 = [v7 objectForKeyedSubscript:@"jpc_ppX"];
      [v4 setPrincipalPointX:v20];

      v21 = [v7 objectForKeyedSubscript:@"jpc_ppY"];
      [v4 setPrincipalPointY:v21];

      v22 = [v7 objectForKeyedSubscript:@"jpc_rotX"];
      [v22 floatValue];
      v44 = v23;
      v24 = [v7 objectForKeyedSubscript:@"jpc_rotY"];
      [v24 floatValue];
      v43 = v25;
      v26 = [v7 objectForKeyedSubscript:@"jpc_rotZ"];
      [v26 floatValue];

      [ADUtils calcRotationMatrix:COERCE_DOUBLE(__PAIR64__(v43, v44))];
      v12[817].f64[0] = v27;
      v12[817].f64[1] = v28;
      v12[818] = vcvtq_f64_f32(__PAIR64__(v29, v30));
      v12[819].f64[0] = v31;
      v12[819].f64[1] = v32;
      v12[820].f64[0] = v33;
      v12[820].f64[1] = v34;
      v12[821].f64[0] = v35;
      v36 = [v4 principalPointX];
      [v36 doubleValue];
      v12[551].f64[1] = v37 * v12[550].f64[1];

      v38 = [v4 principalPointY];
      [v38 doubleValue];
      v12[552].f64[0] = v39 * v12[550].f64[1];

      v40 = [v7 objectForKeyedSubscript:@"jpc_efl_temp_coeff"];
      [v40 floatValue];
      v12[548].f64[0] = v41;

LABEL_22:
      v10 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_25:

  return v10;
}

- (id)buildISFInputDictWithEFL:(float)a3 principalPointtX:(id)a4 principalPointtY:(id)a5 rotationMat:(double)a6[3][3]
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11.f64[0] = (*a6)[0];
  v12.f64[0] = (*a6)[1];
  v11.f64[1] = (*a6)[3];
  v12.f64[1] = (*a6)[4];
  v13 = (*a6)[6];
  v14.f64[0] = (*a6)[2];
  v14.f64[1] = (*a6)[5];
  v15 = (*a6)[7];
  v16 = (*a6)[8];
  *(&v34 + 2) = v13;
  *&v34 = vcvt_f32_f64(v11);
  *(&v35 + 2) = v15;
  *&v35 = vcvt_f32_f64(v12);
  *(&v36 + 2) = v16;
  *&v36 = vcvt_f32_f64(v14);
  [ADUtils calcRotationAngle:&v34];
  v32 = v17;
  v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  HIDWORD(v19) = DWORD1(v32);
  v20 = *(&v32 + 4);
  if (v18)
  {
    [v9 doubleValue];
    v22 = v21;
    [v10 doubleValue];
    *buf = 134219264;
    v40 = a3;
    v41 = 2048;
    v42 = v22;
    v43 = 2048;
    v44 = v23;
    v45 = 2048;
    v46 = *&v32;
    v47 = 2048;
    v48 = *(&v32 + 1);
    v49 = 2048;
    v50 = *(&v32 + 2);
    _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "JasperPearlInFieldCalibration: New ISF entry JPC, Data: EflCoeff0 = %f, PPx = %lf, PPy = %lf, RotationAngles[0] = %lf, RotationAngles[1] = %lf, RotationAngles[2] = %lf", buf, 0x3Eu);
  }

  v37[0] = @"jpc_efl_temp_coeff";
  *&v19 = a3;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:{v19, v32}];
  v38[0] = v24;
  v38[1] = v9;
  v37[1] = @"jpc_ppX";
  v37[2] = @"jpc_ppY";
  v38[2] = v10;
  v37[3] = @"jpc_rotX";
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v38[3] = v25;
  v37[4] = @"jpc_rotY";
  LODWORD(v26) = v20;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v38[4] = v27;
  v37[5] = @"jpc_rotZ";
  LODWORD(v28) = HIDWORD(v20);
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v38[5] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];

  return v30;
}

- (void)resetIFAObjects
{
  [(ADJasperPearlInFieldCalibrationInterSessionData *)self setRotArray:0];
  [(ADJasperPearlInFieldCalibrationInterSessionData *)self setTransArray:0];
  [(ADJasperPearlInFieldCalibrationInterSessionData *)self setAggPointsWrapperObj:0];
  LODWORD(v3) = -1.0;

  [(ADJasperPearlInFieldCalibrationInterSessionData *)self setLastPearlTemp:v3];
}

- (void)initDiagnosticPipelineLog
{
  if (+[ADDeviceConfiguration isInternalBuild])
  {
    begin = self->_diagnosticPipelineLog.__begin_;
    end = self->_diagnosticPipelineLog.__end_;
    v5 = end - begin;
    v6 = 0x6FB586FB586FB587 * ((end - begin) >> 1);
    if (v6 > 0x3E7)
    {
      if (v5 == 110000)
      {
LABEL_15:
        self->_diagnosticPipelineLogIndex = 0;
        return;
      }

      v12 = (begin + 110000);
    }

    else
    {
      v7 = 1000 - v6;
      cap = self->_diagnosticPipelineLog.__cap_;
      if (0x6FB586FB586FB587 * ((cap - end) >> 1) < v7)
      {
        v9 = 0x6FB586FB586FB587 * ((cap - begin) >> 1);
        v10 = 2 * v9;
        if (2 * v9 <= 0x3E8)
        {
          v10 = 1000;
        }

        if (v9 >= 0x129E4129E4129E4)
        {
          v11 = 0x253C8253C8253C8;
        }

        else
        {
          v11 = v10;
        }

        if (v11 <= 0x253C8253C8253C8)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(self->_diagnosticPipelineLog.__end_, 110 * ((109890 - v5) / 0x6EuLL) + 110);
      v12 = (end + 110 * ((109890 - v5) / 0x6EuLL) + 110);
    }

    self->_diagnosticPipelineLog.__end_ = v12;
    goto LABEL_15;
  }
}

- (void)initIsf
{
  v3 = jpc::JPCConfig::getISFConfig(self);
  isfParameters = self->super._isfParameters;
  self->super._isfParameters = v3;

  v5 = [objc_alloc(MEMORY[0x277CED090]) initWithFieldNames:&unk_28524AB18 parameters:self->super._isfParameters];
  isf = self->super._isf;
  self->super._isf = v5;
}

- (ADJasperPearlInFieldCalibrationInterSessionData)initWithPCECalibData:(id)a3
{
  v4 = a3;
  v5 = [(ADJasperPearlInFieldCalibrationInterSessionData *)self init];
  p_isa = &v5->super.super.isa;
  if (v5)
  {
    [(ADInFieldCalibrationInterSessionData *)v5 setVersion:1];
    [p_isa initIsf];
    v7 = [v4 bytes];
    v8 = v7[1096];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7[1103] / v7[1101]];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7[1104] / v7[1101]];
    *&v11 = v8;
    v12 = [p_isa buildISFInputDictWithEFL:v9 principalPointtX:v10 principalPointtY:v7 + 1634 rotationMat:v11];

    if ([p_isa[2] fillWithEntry:v12])
    {
      v13 = 0;
LABEL_12:

      goto LABEL_13;
    }

    [p_isa initDiagnosticPipelineLog];
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0;
        v14 = MEMORY[0x277D86220];
        v15 = &v19;
        v16 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
        _os_log_impl(&dword_2402F6000, v14, v16, "JasperPearlInFieldCalibration: ADJasperPearlInFieldCalibrationInterSessionData: processJpcResult: ISF initialized from PCE calib", v15, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = 0;
      v14 = MEMORY[0x277D86220];
      v15 = &v18;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v13 = p_isa;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (ADJasperPearlInFieldCalibrationInterSessionData)init
{
  v6.receiver = self;
  v6.super_class = ADJasperPearlInFieldCalibrationInterSessionData;
  v2 = [(ADInFieldCalibrationInterSessionData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v2 setRotArray:0];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v3 setTransArray:0];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v3 setAggPointsWrapperObj:0];
    LODWORD(v4) = -1.0;
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v3 setLastPearlTemp:v4];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v3 setFirstTimeEventFired:0];
    [(ADJasperPearlInFieldCalibrationInterSessionData *)v3 setLastAlgoRadarTriggerTimestamp:0.0];
  }

  return v3;
}

- (id)persistenceData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ADInFieldCalibrationInterSessionData version](self, "version")}];
  [v3 setObject:v4 forKeyedSubscript:@"interSessionDataVersion"];

  v5 = [(ADInterSessionFilter *)self->super._isf persistenceData];
  [v3 setObject:v5 forKeyedSubscript:@"isfHistoryKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ADJasperPearlInFieldCalibrationInterSessionData firstTimeEventFired](self, "firstTimeEventFired")}];
  [v3 setObject:v6 forKeyedSubscript:@"jpc_telemetry_first_time_event_fired"];

  v7 = MEMORY[0x277CCABB0];
  [(ADJasperPearlInFieldCalibrationInterSessionData *)self lastAlgoRadarTriggerTimestamp];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"jpc_last_algo_radar_trigger"];

  v9 = [MEMORY[0x277CBEB28] dataWithBytes:self->_diagnosticPipelineLog.__begin_ + 110 * self->_diagnosticPipelineLogIndex length:110 * (0x6FB586FB586FB587 * ((self->_diagnosticPipelineLog.__end_ - self->_diagnosticPipelineLog.__begin_) >> 1) - self->_diagnosticPipelineLogIndex)];
  [v9 appendBytes:self->_diagnosticPipelineLog.__begin_ length:110 * self->_diagnosticPipelineLogIndex];
  [v3 setObject:v9 forKeyedSubscript:@"diagnosticPipelineLog"];

  return v3;
}

- (ADJasperPearlInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(ADJasperPearlInFieldCalibrationInterSessionData *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = [v4 objectForKey:@"interSessionDataVersion"];
    -[ADInFieldCalibrationInterSessionData setVersion:](v5, "setVersion:", [v7 unsignedIntValue]);

    if ([(ADInFieldCalibrationInterSessionData *)v5 version]== 1)
    {
      v8 = [v4 objectForKey:@"jpc_last_pearl_temp"];

      if (v8)
      {
        v9 = [v4 objectForKeyedSubscript:@"jpc_last_pearl_temp"];
        [v9 floatValue];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setLastPearlTemp:?];
      }

      v10 = [v4 objectForKey:@"agg_points"];

      if (v10)
      {
        v11 = [v4 objectForKeyedSubscript:@"agg_points"];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setAggPointsWrapperObj:v11];
      }

      v12 = [v4 objectForKey:@"jpc_last_rotation"];

      if (v12)
      {
        v13 = [v4 objectForKeyedSubscript:@"jpc_last_rotation"];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setRotArray:v13];
      }

      v14 = [v4 objectForKey:@"jpc_last_translation"];

      if (v14)
      {
        v15 = [v4 objectForKeyedSubscript:@"jpc_last_translation"];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setTransArray:v15];
      }

      v16 = [v4 objectForKey:@"jpc_telemetry_first_time_event_fired"];

      if (v16)
      {
        v17 = [v4 objectForKeyedSubscript:@"jpc_telemetry_first_time_event_fired"];
        -[ADJasperPearlInFieldCalibrationInterSessionData setFirstTimeEventFired:](v5, "setFirstTimeEventFired:", [v17 BOOLValue]);
      }

      else
      {
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setFirstTimeEventFired:1];
      }

      v18 = [v4 objectForKey:@"jpc_last_algo_radar_trigger"];

      if (v18)
      {
        v19 = [v4 objectForKeyedSubscript:@"jpc_last_algo_radar_trigger"];
        [v19 doubleValue];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setLastAlgoRadarTriggerTimestamp:?];
      }

      else
      {
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setLastAlgoRadarTriggerTimestamp:0.0];
      }

      v20 = [v4 objectForKey:@"isfHistoryKey"];
      if (!v20 || ([(ADJasperPearlInFieldCalibrationInterSessionData *)v5 initIsf], [(ADInterSessionFilter *)v5->super._isf fillWithDictionaryRepresentation:v20]))
      {
        v5 = 0;
LABEL_33:

        goto LABEL_34;
      }

      [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 initDiagnosticPipelineLog];
      v21 = [v4 objectForKey:@"diagnosticPipelineLog"];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 length];
        p_diagnosticPipelineLog = &v5->_diagnosticPipelineLog;
        begin = v5->_diagnosticPipelineLog.__begin_;
        if (v23 != p_diagnosticPipelineLog->__end_ - begin)
        {
          v5 = 0;
          goto LABEL_32;
        }

        memcpy(begin, [v22 bytes], objc_msgSend(v22, "length"));
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v31 = 0;
          v26 = MEMORY[0x277D86220];
          v27 = &v31;
          v28 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
          _os_log_impl(&dword_2402F6000, v26, v28, "JasperPearlInFieldCalibration: ADJasperPearlInFieldCalibrationInterSessionData: processJpcResult: ISF initialized from dictionary", v27, 2u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v30 = 0;
        v26 = MEMORY[0x277D86220];
        v27 = &v30;
        v28 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      v5 = v6;
LABEL_32:

      goto LABEL_33;
    }

    v5 = 0;
  }

LABEL_34:

  return v5;
}

@end