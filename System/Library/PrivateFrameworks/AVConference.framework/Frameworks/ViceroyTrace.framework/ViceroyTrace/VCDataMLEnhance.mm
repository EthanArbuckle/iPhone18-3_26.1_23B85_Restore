@interface VCDataMLEnhance
- (BOOL)isMLEnhanceActive;
- (VCDataMLEnhance)init;
- (id)resolutionDurationForIndex:(id)index;
- (void)accumulate:(id)accumulate;
- (void)checkAndUpdateTimers:(double)timers;
- (void)dealloc;
- (void)finalize:(double)finalize;
- (void)init;
- (void)pauseAllTimers:(double)timers;
- (void)updateMLEnhanceResolution:(id)resolution participantID:(id)d enabled:(BOOL)enabled currentTime:(double)time;
- (void)updateReport:(id)report;
- (void)updateStateWithPayload:(id)payload withTime:(double)time;
@end

@implementation VCDataMLEnhance

- (VCDataMLEnhance)init
{
  v6.receiver = self;
  v6.super_class = VCDataMLEnhance;
  v2 = [(VCDataMLEnhance *)&v6 init];
  if (!v2)
  {
    [VCDataMLEnhance init];
LABEL_8:

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2->_resolutionDurations = v3;
  if (!v3)
  {
    [(VCDataMLEnhance *)v2 init];
    goto LABEL_8;
  }

  v4 = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
  v2->_totalActiveDuration = v4;
  if (!v4)
  {
    [(VCDataMLEnhance *)v2 init];
    goto LABEL_8;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCDataMLEnhance;
  [(VCDataMLEnhance *)&v3 dealloc];
}

- (void)updateStateWithPayload:(id)payload withTime:(double)time
{
  v7 = [payload objectForKeyedSubscript:@"VCSPUUID"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v24 = __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke;
  v25 = &unk_278BD4E38;
  selfCopy = self;
  v8 = [payload objectForKeyedSubscript:@"Thermal"];
  if (v8)
  {
    v24(v23, v8);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v18 = __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke_2;
  v19 = &unk_278BD4E60;
  selfCopy2 = self;
  payloadCopy = payload;
  timeCopy = time;
  v9 = [payload objectForKeyedSubscript:@"MLSFENB"];
  if (v9)
  {
    v18(v17, v9);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke_3;
  v13 = &unk_278BD4E60;
  selfCopy3 = self;
  v15 = v7;
  timeCopy2 = time;
  v10 = [payload objectForKeyedSubscript:@"MLSW"];
  if (v10)
  {
    v12(v11, v10);
  }

  [(VCDataMLEnhance *)self checkAndUpdateTimers:time];
}

uint64_t __51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke(uint64_t a1, void *a2)
{
  result = +[VCReportingCommon aggregatorThermalLevelWithThermalLevel:](VCAggregator, "aggregatorThermalLevelWithThermalLevel:", [a2 intValue]);
  *(*(a1 + 32) + 8) = result;
  return result;
}

_BYTE *__51__VCDataMLEnhance_updateStateWithPayload_withTime___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 13) = [a2 BOOLValue];
  result = *(a1 + 32);
  if ((result[13] & 1) == 0)
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"MLSW"];
    result = *(a1 + 32);
    if (!v5)
    {
      [result pauseAllTimers:*(a1 + 48)];
      result = *(a1 + 32);
    }
  }

  if (!result[12])
  {
    result = [a2 intValue];
    *(*(a1 + 32) + 12) = result;
  }

  return result;
}

- (void)accumulate:(id)accumulate
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_mlEnhanceStatus |= *(accumulate + 12);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allKeys = [*(accumulate + 2) allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          [-[VCDataMLEnhance resolutionDurationForIndex:](self resolutionDurationForIndex:{*(*(&v11 + 1) + 8 * v9)), "merge:", objc_msgSend(*(accumulate + 2), "objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * v9))}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(VCHistogram *)self->_totalActiveDuration merge:*(accumulate + 3)];
  }

  else
  {
    [VCDataMLEnhance accumulate:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateReport:(id)report
{
  v20 = *MEMORY[0x277D85DE8];
  [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithChar:", self->_mlEnhanceStatus), @"MLSFENB"}];
  v5 = micro();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(NSMutableDictionary *)self->_resolutionDurations allKeys];
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"MLSW", v10];
        v12 = [(NSMutableDictionary *)self->_resolutionDurations objectForKeyedSubscript:v10];
        [v12 finalize:v5];
        [report setObject:objc_msgSend(v12 forKeyedSubscript:{"description"), v11}];
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(VCDurationHistogram *)self->_totalActiveDuration finalize:v5];
  [report setObject:-[VCHistogram description](self->_totalActiveDuration forKeyedSubscript:{"description"), @"MLSW"}];
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isMLEnhanceActive
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        if (![*(*(&v11 + 1) + 8 * v7) isPaused])
        {
          mlEnhanceLastEnabledReport = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  mlEnhanceLastEnabledReport = self->_mlEnhanceLastEnabledReport;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return mlEnhanceLastEnabledReport;
}

- (id)resolutionDurationForIndex:(id)index
{
  v5 = [(NSMutableDictionary *)self->_resolutionDurations objectForKeyedSubscript:?];
  if (!v5)
  {
    v5 = [(VCReportingHistogram *)[VCDurationHistogram alloc] initWithType:88 bucketValues:0];
    [(NSMutableDictionary *)self->_resolutionDurations setObject:v5 forKeyedSubscript:index];
    v6 = v5;
  }

  return v5;
}

- (void)updateMLEnhanceResolution:(id)resolution participantID:(id)d enabled:(BOOL)enabled currentTime:(double)time
{
  if (resolution)
  {
    enabledCopy = enabled;
    v9 = [(VCDataMLEnhance *)self resolutionDurationForIndex:resolution, d];
    if (enabledCopy)
    {
      thermalLevel = self->_thermalLevel;

      [v9 resumeAtBucket:thermalLevel currentTime:time];
    }

    else
    {

      [v9 pause:time];
    }
  }
}

- (void)pauseAllTimers:(double)timers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) pause:timers];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(VCDurationHistogram *)self->_totalActiveDuration pause:timers];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)checkAndUpdateTimers:(double)timers
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(VCDataMLEnhance *)self isMLEnhanceActive])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
    v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (([v10 isPaused] & 1) == 0)
          {
            [v10 switchBucket:self->_thermalLevel currentTime:timers];
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [(VCDurationHistogram *)self->_totalActiveDuration switchBucket:self->_thermalLevel currentTime:timers];
    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *MEMORY[0x277D85DE8];

    [(VCDataMLEnhance *)self pauseAllTimers:timers];
  }
}

- (void)finalize:(double)finalize
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_resolutionDurations allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) finalize:finalize];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(VCDurationHistogram *)self->_totalActiveDuration finalize:finalize];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v17 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    v12 = 36;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v0 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v0 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR(3u);
    v8 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v7;
      OUTLINED_FUNCTION_0();
      v12 = 36;
      v13 = 2112;
      v14 = v0;
      v15 = 2048;
      v16 = 0;
      v1 = &dword_23D4DF000;
      v4 = " [%s] %s:%d %@(%p) Failed to create MLEnhance data";
      v5 = &v10;
      v2 = v8;
      v3 = OS_LOG_TYPE_ERROR;
      v6 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)accumulate:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

@end