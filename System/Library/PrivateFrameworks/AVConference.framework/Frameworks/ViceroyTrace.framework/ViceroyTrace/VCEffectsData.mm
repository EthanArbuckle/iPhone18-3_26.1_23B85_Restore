@interface VCEffectsData
- (VCEffectsData)init;
- (void)dealloc;
- (void)init;
- (void)updateDataWithTime:(double)a3;
- (void)updateReport:(id)a3;
- (void)updateStateWithPayload:(id)a3 withTime:(double)a4;
@end

@implementation VCEffectsData

- (VCEffectsData)init
{
  v30 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = VCEffectsData;
  v2 = [(VCEffectsData *)&v15 init];
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = [[VCReportingHistogram alloc] initWithType:88 bucketValues:0];
      v2->_effectsDurationsThermalHistograms[v3] = v4;
      if (!v4)
      {
        break;
      }

      if (++v3 == 4)
      {
        goto LABEL_5;
      }
    }

    if (objc_opt_class() == v2)
    {
      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_15;
      }

      v8 = VRTraceErrorLogLevelToCSTR(3u);
      v9 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136316162;
      v17 = v8;
      v18 = 2080;
      v19 = "[VCEffectsData init]";
      v20 = 1024;
      v21 = 34;
      v22 = 2048;
      effectsDurationsThermalHistograms = v2->_effectsDurationsThermalHistograms;
      v24 = 1024;
      LODWORD(v25) = v3;
      v10 = " [%s] %s:%d Failed to allocate effects duration histogram for _effectsDurationsThermalHistograms: %p, in iteration: %d";
      v11 = v9;
      v12 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCEffectsData *)v2 performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_284F80940;
      }

      if (VRTraceGetErrorLogLevelForModule("") < 3)
      {
        goto LABEL_15;
      }

      v13 = VRTraceErrorLogLevelToCSTR(3u);
      v14 = gVRTraceOSLog;
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *buf = 136316674;
      v17 = v13;
      v18 = 2080;
      v19 = "[VCEffectsData init]";
      v20 = 1024;
      v21 = 34;
      v22 = 2112;
      effectsDurationsThermalHistograms = v7;
      v24 = 2048;
      v25 = v2;
      v26 = 2048;
      v27 = v2->_effectsDurationsThermalHistograms;
      v28 = 1024;
      v29 = v3;
      v10 = " [%s] %s:%d %@(%p) Failed to allocate effects duration histogram for _effectsDurationsThermalHistograms: %p, in iteration: %d";
      v11 = v14;
      v12 = 64;
    }

    _os_log_error_impl(&dword_23D4DF000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

  else
  {
    [VCEffectsData init];
  }

LABEL_15:

  v2 = 0;
LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  for (i = 24; i != 56; i += 8)
  {
  }

  v4.receiver = self;
  v4.super_class = VCEffectsData;
  [(VCEffectsData *)&v4 dealloc];
}

- (void)updateStateWithPayload:(id)a3 withTime:(double)a4
{
  if ([a3 objectForKeyedSubscript:@"VCEMEffectsType"])
  {
    [(VCEffectsData *)self updateDataWithTime:a4];
    self->_effectsType = [objc_msgSend(a3 objectForKeyedSubscript:{@"VCEMEffectsType", "intValue"}];
  }
}

- (void)updateDataWithTime:(double)a3
{
  startTime = self->_startTime;
  if (startTime != 0.0)
  {
    LODWORD(v3) = vcvtad_u64_f64((a3 - startTime) * 1000.0);
    [(VCHistogram *)self->_effectsDurationsThermalHistograms[self->_effectsType] addOnlyExactMatchingValue:self->_thermalLevel increment:v3];
  }

  self->_startTime = a3;
}

- (void)updateReport:(id)a3
{
  v4 = 0;
  effectsDurationsThermalHistograms = self->_effectsDurationsThermalHistograms;
  do
  {
    [a3 setObject:-[VCHistogram description](effectsDurationsThermalHistograms[v4] forKeyedSubscript:{"description"), updateReport__effectsAggregationKeys[v4]}];
    ++v4;
  }

  while (v4 != 4);
}

- (void)init
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR(3u);
    v1 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "[VCEffectsData init]";
      v7 = 1024;
      v8 = 30;
      _os_log_error_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to init VCEffectsData", &v3, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end