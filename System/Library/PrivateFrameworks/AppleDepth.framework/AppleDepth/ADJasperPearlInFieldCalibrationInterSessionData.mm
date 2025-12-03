@interface ADJasperPearlInFieldCalibrationInterSessionData
- (ADJasperPearlInFieldCalibrationInterSessionData)init;
- (ADJasperPearlInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)representation;
- (ADJasperPearlInFieldCalibrationInterSessionData)initWithPCECalibData:(id)data;
- (BOOL)insertEntryToDiagnosticPipelineLog:(id)log;
- (id).cxx_construct;
- (id)buildISFInputDictWithEFL:(float)l principalPointtX:(id)x principalPointtY:(id)y rotationMat:(double)mat[3][3];
- (id)persistenceData;
- (int64_t)processJpcResult:(id)result;
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

- (BOOL)insertEntryToDiagnosticPipelineLog:(id)log
{
  logCopy = log;
  begin = self->_diagnosticPipelineLog.__begin_;
  end = self->_diagnosticPipelineLog.__end_;
  if (end != begin)
  {
    p_diagnosticPipelineLog = &self->_diagnosticPipelineLog;
    v84 = self->_diagnosticPipelineLog.__begin_;
    v85 = self->_diagnosticPipelineLog.__end_;
    selfCopy = self;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    telemetryData = [logCopy telemetryData];
    [telemetryData pearlTemperature];
    v80 = v7;
    telemetryData2 = [logCopy telemetryData];
    [telemetryData2 motionBetweenFramesRotationX];
    v79 = v8;
    telemetryData3 = [logCopy telemetryData];
    [telemetryData3 motionBetweenFramesRotationY];
    v77 = v9;
    telemetryData4 = [logCopy telemetryData];
    [telemetryData4 motionBetweenFramesRotationZ];
    v76 = v10;
    telemetryData5 = [logCopy telemetryData];
    [telemetryData5 motionBetweenFramesTranslationX];
    v74 = v11;
    telemetryData6 = [logCopy telemetryData];
    [telemetryData6 motionBetweenFramesTranslationY];
    v73 = v12;
    telemetryData7 = [logCopy telemetryData];
    [telemetryData7 motionBetweenFramesTranslationZ];
    v71 = v13;
    telemetryData8 = [logCopy telemetryData];
    [telemetryData8 pearlToLastJasperBankRotationX];
    v70 = v14;
    telemetryData9 = [logCopy telemetryData];
    [telemetryData9 pearlToLastJasperBankRotationY];
    v68 = v15;
    telemetryData10 = [logCopy telemetryData];
    [telemetryData10 pearlToLastJasperBankRotationZ];
    v67 = v16;
    telemetryData11 = [logCopy telemetryData];
    [telemetryData11 pearlToLastJasperBankTranslationX];
    v65 = v17;
    telemetryData12 = [logCopy telemetryData];
    [telemetryData12 pearlToLastJasperBankTranslationY];
    v64 = v18;
    telemetryData13 = [logCopy telemetryData];
    [telemetryData13 pearlToLastJasperBankTranslationZ];
    v62 = v19;
    telemetryData14 = [logCopy telemetryData];
    jpcErrorCode = [telemetryData14 jpcErrorCode];
    telemetryData15 = [logCopy telemetryData];
    numPearlOnlyCorrespondencesPreIFA = [telemetryData15 numPearlOnlyCorrespondencesPreIFA];
    telemetryData16 = [logCopy telemetryData];
    numPearlJasperCorrespondencesPreIFA = [telemetryData16 numPearlJasperCorrespondencesPreIFA];
    telemetryData17 = [logCopy telemetryData];
    numPearlJasperCorrespondencesPostPJWorkDistOverlapFilter = [telemetryData17 numPearlJasperCorrespondencesPostPJWorkDistOverlapFilter];
    telemetryData18 = [logCopy telemetryData];
    numPearlJasperCorrespondencesPostPJDepthDiffFilter = [telemetryData18 numPearlJasperCorrespondencesPostPJDepthDiffFilter];
    telemetryData19 = [logCopy telemetryData];
    numPearlJasperCorrespondencesPostLocalDepthVarFilter = [telemetryData19 numPearlJasperCorrespondencesPostLocalDepthVarFilter];
    telemetryData20 = [logCopy telemetryData];
    numPearlOnlyCorrespondencesPostSpatialCoverageFilter = [telemetryData20 numPearlOnlyCorrespondencesPostSpatialCoverageFilter];
    telemetryData21 = [logCopy telemetryData];
    [telemetryData21 irCamFOVCoveragePercent];
    v21 = v20;
    telemetryData22 = [logCopy telemetryData];
    [telemetryData22 gmcjScaleChangePercentFromT0];
    v23 = v22;
    telemetryData23 = [logCopy telemetryData];
    [telemetryData23 gmcjPPXChangeMicronFromT0];
    v25 = v24;
    telemetryData24 = [logCopy telemetryData];
    [telemetryData24 gmcjPPYChangeMicronFromT0];
    v27 = v26;
    telemetryData25 = [logCopy telemetryData];
    [telemetryData25 gmcjProjRotXChangeFromT0];
    v51 = v28;
    telemetryData26 = [logCopy telemetryData];
    [telemetryData26 gmcjProjRotYChangeFromT0];
    v50 = v30;
    telemetryData27 = [logCopy telemetryData];
    [telemetryData27 gmcjProjRotZChangeFromT0];
    v33 = v32;
    telemetryData28 = [logCopy telemetryData];
    [telemetryData28 jasperMisalignmentBefore];
    v36 = v35;
    telemetryData29 = [logCopy telemetryData];
    [telemetryData29 jasperMisalignmentAfter];
    v39 = v38;
    telemetryData30 = [logCopy telemetryData];
    [telemetryData30 reprojectionErrorBefore];
    v42 = v41;
    telemetryData31 = [logCopy telemetryData];
    [telemetryData31 reprojectionErrorAfter];
    v44 = v21;
    *&v21 = v45;

    v46 = p_diagnosticPipelineLog->__begin_ + 110 * selfCopy->_diagnosticPipelineLogIndex;
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
    *(v46 + 53) = jpcErrorCode;
    *(v46 + 57) = numPearlOnlyCorrespondencesPreIFA;
    *(v46 + 59) = numPearlJasperCorrespondencesPreIFA;
    *(v46 + 61) = numPearlJasperCorrespondencesPostPJWorkDistOverlapFilter;
    *(v46 + 63) = numPearlJasperCorrespondencesPostPJDepthDiffFilter;
    *(v46 + 65) = numPearlJasperCorrespondencesPostLocalDepthVarFilter;
    *(v46 + 67) = numPearlOnlyCorrespondencesPostSpatialCoverageFilter;
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
    diagnosticPipelineLogIndex = selfCopy->_diagnosticPipelineLogIndex;
    *(v46 + 106) = LODWORD(v21);
    selfCopy->_diagnosticPipelineLogIndex = (diagnosticPipelineLogIndex + 1) % (0x6FB586FB586FB587 * ((p_diagnosticPipelineLog->__end_ - p_diagnosticPipelineLog->__begin_) >> 1));
    begin = v84;
    end = v85;
  }

  v48 = end != begin;

  return v48;
}

- (int64_t)processJpcResult:(id)result
{
  resultCopy = result;
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
  pceCalib = [resultCopy pceCalib];
  if (pceCalib)
  {
    v8 = [resultCopy efl];
    if (!v8)
    {
      principalPointY = 0;
LABEL_24:

      goto LABEL_25;
    }

    principalPointX = [resultCopy principalPointX];
    if (!principalPointX)
    {
      goto LABEL_22;
    }

    principalPointY = [resultCopy principalPointY];

    if (principalPointY)
    {
      pceCalib2 = [resultCopy pceCalib];
      bytes = [pceCalib2 bytes];

      v13 = bytes[548].f64[0];
      principalPointX2 = [resultCopy principalPointX];
      principalPointY2 = [resultCopy principalPointY];
      *&v16 = v13;
      v8 = [(ADJasperPearlInFieldCalibrationInterSessionData *)self buildISFInputDictWithEFL:principalPointX2 principalPointtX:principalPointY2 principalPointtY:&bytes[817] rotationMat:v16];

      v45 = 0;
      v17 = [(ADInFieldCalibrationInterSessionData *)self insertEntryAndCalculate:v8 withWeight:&v45 toResult:1.0];
      pceCalib = v45;
      if (v17)
      {
        principalPointY = -22950;
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

      v20 = [pceCalib objectForKeyedSubscript:@"jpc_ppX"];
      [resultCopy setPrincipalPointX:v20];

      v21 = [pceCalib objectForKeyedSubscript:@"jpc_ppY"];
      [resultCopy setPrincipalPointY:v21];

      v22 = [pceCalib objectForKeyedSubscript:@"jpc_rotX"];
      [v22 floatValue];
      v44 = v23;
      v24 = [pceCalib objectForKeyedSubscript:@"jpc_rotY"];
      [v24 floatValue];
      v43 = v25;
      v26 = [pceCalib objectForKeyedSubscript:@"jpc_rotZ"];
      [v26 floatValue];

      [ADUtils calcRotationMatrix:COERCE_DOUBLE(__PAIR64__(v43, v44))];
      bytes[817].f64[0] = v27;
      bytes[817].f64[1] = v28;
      bytes[818] = vcvtq_f64_f32(__PAIR64__(v29, v30));
      bytes[819].f64[0] = v31;
      bytes[819].f64[1] = v32;
      bytes[820].f64[0] = v33;
      bytes[820].f64[1] = v34;
      bytes[821].f64[0] = v35;
      principalPointX3 = [resultCopy principalPointX];
      [principalPointX3 doubleValue];
      bytes[551].f64[1] = v37 * bytes[550].f64[1];

      principalPointY3 = [resultCopy principalPointY];
      [principalPointY3 doubleValue];
      bytes[552].f64[0] = v39 * bytes[550].f64[1];

      v40 = [pceCalib objectForKeyedSubscript:@"jpc_efl_temp_coeff"];
      [v40 floatValue];
      bytes[548].f64[0] = v41;

LABEL_22:
      principalPointY = 0;
      goto LABEL_23;
    }
  }

  else
  {
    principalPointY = 0;
  }

LABEL_25:

  return principalPointY;
}

- (id)buildISFInputDictWithEFL:(float)l principalPointtX:(id)x principalPointtY:(id)y rotationMat:(double)mat[3][3]
{
  v51 = *MEMORY[0x277D85DE8];
  xCopy = x;
  yCopy = y;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11.f64[0] = (*mat)[0];
  v12.f64[0] = (*mat)[1];
  v11.f64[1] = (*mat)[3];
  v12.f64[1] = (*mat)[4];
  v13 = (*mat)[6];
  v14.f64[0] = (*mat)[2];
  v14.f64[1] = (*mat)[5];
  v15 = (*mat)[7];
  v16 = (*mat)[8];
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
    [xCopy doubleValue];
    v22 = v21;
    [yCopy doubleValue];
    *buf = 134219264;
    lCopy = l;
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
  *&v19 = l;
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:{v19, v32}];
  v38[0] = v24;
  v38[1] = xCopy;
  v37[1] = @"jpc_ppX";
  v37[2] = @"jpc_ppY";
  v38[2] = yCopy;
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

- (ADJasperPearlInFieldCalibrationInterSessionData)initWithPCECalibData:(id)data
{
  dataCopy = data;
  v5 = [(ADJasperPearlInFieldCalibrationInterSessionData *)self init];
  p_isa = &v5->super.super.isa;
  if (v5)
  {
    [(ADInFieldCalibrationInterSessionData *)v5 setVersion:1];
    [p_isa initIsf];
    bytes = [dataCopy bytes];
    v8 = bytes[1096];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:bytes[1103] / bytes[1101]];
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:bytes[1104] / bytes[1101]];
    *&v11 = v8;
    v12 = [p_isa buildISFInputDictWithEFL:v9 principalPointtX:v10 principalPointtY:bytes + 1634 rotationMat:v11];

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

  persistenceData = [(ADInterSessionFilter *)self->super._isf persistenceData];
  [v3 setObject:persistenceData forKeyedSubscript:@"isfHistoryKey"];

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

- (ADJasperPearlInFieldCalibrationInterSessionData)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(ADJasperPearlInFieldCalibrationInterSessionData *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = [representationCopy objectForKey:@"interSessionDataVersion"];
    -[ADInFieldCalibrationInterSessionData setVersion:](v5, "setVersion:", [v7 unsignedIntValue]);

    if ([(ADInFieldCalibrationInterSessionData *)v5 version]== 1)
    {
      v8 = [representationCopy objectForKey:@"jpc_last_pearl_temp"];

      if (v8)
      {
        v9 = [representationCopy objectForKeyedSubscript:@"jpc_last_pearl_temp"];
        [v9 floatValue];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setLastPearlTemp:?];
      }

      v10 = [representationCopy objectForKey:@"agg_points"];

      if (v10)
      {
        v11 = [representationCopy objectForKeyedSubscript:@"agg_points"];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setAggPointsWrapperObj:v11];
      }

      v12 = [representationCopy objectForKey:@"jpc_last_rotation"];

      if (v12)
      {
        v13 = [representationCopy objectForKeyedSubscript:@"jpc_last_rotation"];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setRotArray:v13];
      }

      v14 = [representationCopy objectForKey:@"jpc_last_translation"];

      if (v14)
      {
        v15 = [representationCopy objectForKeyedSubscript:@"jpc_last_translation"];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setTransArray:v15];
      }

      v16 = [representationCopy objectForKey:@"jpc_telemetry_first_time_event_fired"];

      if (v16)
      {
        v17 = [representationCopy objectForKeyedSubscript:@"jpc_telemetry_first_time_event_fired"];
        -[ADJasperPearlInFieldCalibrationInterSessionData setFirstTimeEventFired:](v5, "setFirstTimeEventFired:", [v17 BOOLValue]);
      }

      else
      {
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setFirstTimeEventFired:1];
      }

      v18 = [representationCopy objectForKey:@"jpc_last_algo_radar_trigger"];

      if (v18)
      {
        v19 = [representationCopy objectForKeyedSubscript:@"jpc_last_algo_radar_trigger"];
        [v19 doubleValue];
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setLastAlgoRadarTriggerTimestamp:?];
      }

      else
      {
        [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 setLastAlgoRadarTriggerTimestamp:0.0];
      }

      v20 = [representationCopy objectForKey:@"isfHistoryKey"];
      if (!v20 || ([(ADJasperPearlInFieldCalibrationInterSessionData *)v5 initIsf], [(ADInterSessionFilter *)v5->super._isf fillWithDictionaryRepresentation:v20]))
      {
        v5 = 0;
LABEL_33:

        goto LABEL_34;
      }

      [(ADJasperPearlInFieldCalibrationInterSessionData *)v5 initDiagnosticPipelineLog];
      v21 = [representationCopy objectForKey:@"diagnosticPipelineLog"];
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