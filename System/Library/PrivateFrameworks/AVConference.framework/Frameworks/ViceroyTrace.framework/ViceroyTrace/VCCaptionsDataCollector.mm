@interface VCCaptionsDataCollector
- (VCCaptionsDataCollector)initWithDispatchQueue:(id)a3;
- (void)addAggregatedCaptionsConfigurationToReport:(id)a3;
- (void)addAggregatedCaptionsHistogramsToReport:(id)a3 shouldAlwaysAdd:(BOOL)a4;
- (void)addAggregatedCaptionsMetricsToReport:(id)a3;
- (void)addAggregatedCaptionsValueTypesToReport:(id)a3;
- (void)addAggregatedLanguageDetectorMetricsToReport:(id)a3;
- (void)dealloc;
- (void)processCaptionsConfiguration:(id)a3;
- (void)processCaptionsMetrics:(id)a3;
@end

@implementation VCCaptionsDataCollector

- (VCCaptionsDataCollector)initWithDispatchQueue:(id)a3
{
  v6.receiver = self;
  v6.super_class = VCCaptionsDataCollector;
  v4 = [(VCCaptionsDataCollector *)&v6 init];
  if (!v4)
  {
    [VCCaptionsDataCollector initWithDispatchQueue:];
LABEL_7:

    return 0;
  }

  if (!a3)
  {
    [VCCaptionsDataCollector initWithDispatchQueue:];
    goto LABEL_7;
  }

  dispatch_retain(a3);
  v4->_stateQueue = a3;
  v4->_captionsUtteranceHistogram = [[VCReportingHistogram alloc] initWithType:70 bucketValues:0];
  v4->_captionsRatioHistogram = [[VCReportingHistogram alloc] initWithType:69 bucketValues:0];
  v4->_captionsRatioLongHistogram = [[VCReportingHistogram alloc] initWithType:69 bucketValues:0];
  v4->_captionsUsage = [[VCReportingHistogram alloc] initWithType:71 bucketValues:0];
  v4->_captionsLocale = objc_alloc_init(MEMORY[0x277CCACA0]);
  v4->_captionsSourceLocale = objc_alloc_init(MEMORY[0x277CCACA0]);
  v4->_captionsSpeechModel = [[VCReportingHistogram alloc] initWithType:96 bucketValues:0];
  v4->_lastCaptionsEnabledTime = NAN;
  v4->_callTypeHistogram = [[VCReportingHistogram alloc] initWithType:98 bucketValues:0];
  v4->_languageCodeDict = objc_alloc_init(MEMORY[0x277CBEB38]);
  return v4;
}

- (void)dealloc
{
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v4.receiver = self;
  v4.super_class = VCCaptionsDataCollector;
  [(VCCaptionsDataCollector *)&v4 dealloc];
}

- (void)processCaptionsMetrics:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if ([a3 objectForKeyedSubscript:@"ACFCR"])
  {
    v5 = [objc_msgSend(a3 objectForKeyedSubscript:{@"ACFCR", "integerValue"}];
    self->_receivedCaptionsMetrics = 1;
    [(VCHistogram *)self->_captionsRatioHistogram addValue:v5];
    v6 = self->_maxCaptionsRatio <= v5 ? v5 : self->_maxCaptionsRatio;
    v7 = self->_totalCollectedCaptionsRatioMetrics + 1;
    v8 = self->_longCaptionRatioCollection + v5;
    self->_totalCollectedCaptionsRatioMetrics = v7;
    self->_longCaptionRatioCollection = v8;
    self->_maxCaptionsRatio = v6;
    HIDWORD(v9) = -1431655765 * v7;
    LODWORD(v9) = -1431655765 * v7;
    if ((v9 >> 2) <= 0x15555555)
    {
      [(VCHistogram *)self->_captionsRatioLongHistogram addValue:v8 / 0xCuLL];
      self->_longCaptionRatioCollection = 0;
    }
  }

  if ([a3 objectForKeyedSubscript:@"ACUL"])
  {
    if ([a3 objectForKeyedSubscript:@"ACTC"])
    {
      v10 = [objc_msgSend(a3 objectForKeyedSubscript:{@"ACTC", "integerValue"}];
      v11 = [objc_msgSend(a3 objectForKeyedSubscript:{@"ACUL", "integerValue"}];
      v12 = v10 - self->_captionTaskCount;
      if (v12)
      {
        self->_receivedCaptionsMetrics = 1;
        v13 = v11;
        [(VCHistogram *)self->_captionsUtteranceHistogram addValue:((v11 - self->_lastUtteranceDuration) / v12)];
        self->_captionTaskCount = v10;
        self->_lastUtteranceDuration = v13;
      }
    }
  }

  v14 = [a3 objectForKeyedSubscript:@"ACLC"];
  if (v14)
  {
    v15 = v14;
    if ([(NSMutableDictionary *)self->_languageCodeDict objectForKey:v14])
    {
      v16 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_languageCodeDict, "objectForKeyedSubscript:", v15), "unsignedIntValue") + 1}];
      languageCodeDict = self->_languageCodeDict;
    }

    else
    {
      languageCodeDict = self->_languageCodeDict;
      v16 = &unk_284FA57E0;
    }

    [(NSMutableDictionary *)languageCodeDict setObject:v16 forKeyedSubscript:v15];
  }

  self->_utteranceCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"ACUtteranceCount", "integerValue"}];
  self->_translatedUtteranceCount = [objc_msgSend(a3 objectForKeyedSubscript:{@"ACTranslatedUtteranceCount", "integerValue"}];
  [objc_msgSend(a3 objectForKeyedSubscript:{@"ACTranslatedLatencyAverage", "doubleValue"}];
  self->_translatedLatencyAverage = v18;
}

- (void)processCaptionsConfiguration:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [a3 objectForKeyedSubscript:@"ACSU"];
  v6 = [v5 charValue];
  if (v5)
  {
    v7 = v6;
    if (![(VCHistogram *)self->_captionsUsage addOnlyExactMatchingValue:v6])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            [VCCaptionsDataCollector processCaptionsConfiguration:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(VCCaptionsDataCollector *)self performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          v9 = VRTraceErrorLogLevelToCSTR(3u);
          v10 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            v29 = 136316418;
            v30 = v9;
            v31 = 2080;
            v32 = "[VCCaptionsDataCollector processCaptionsConfiguration:]";
            v33 = 1024;
            v34 = 180;
            v35 = 2112;
            v36 = v8;
            v37 = 2048;
            v38 = self;
            v39 = 1024;
            v40 = v7;
            _os_log_error_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to find bucket for usage=%hhu", &v29, 0x36u);
          }
        }
      }
    }
  }

  v11 = [a3 objectForKeyedSubscript:@"ACLocale"];
  if (v11)
  {
    v12 = v11;

    self->_captionsLocale = v12;
  }

  v13 = [a3 objectForKeyedSubscript:@"ACSourceLocale"];
  if (v13)
  {
    v14 = v13;

    self->_captionsSourceLocale = v14;
  }

  v15 = [a3 objectForKeyedSubscript:@"ACSpeechModel"];
  v16 = [v15 unsignedCharValue];
  if (v15)
  {
    v17 = v16;
    if (![(VCHistogram *)self->_captionsSpeechModel addOnlyExactMatchingValue:v16])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            [VCCaptionsDataCollector processCaptionsConfiguration:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = [(VCCaptionsDataCollector *)self performSelector:sel_logPrefix];
        }

        else
        {
          v18 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR(3u);
          v20 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            v29 = 136316418;
            v30 = v19;
            v31 = 2080;
            v32 = "[VCCaptionsDataCollector processCaptionsConfiguration:]";
            v33 = 1024;
            v34 = 198;
            v35 = 2112;
            v36 = v18;
            v37 = 2048;
            v38 = self;
            v39 = 1024;
            v40 = v17;
            _os_log_error_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to find bucket for speech model=%hhu", &v29, 0x36u);
          }
        }
      }
    }
  }

  v21 = [a3 objectForKeyedSubscript:@"ACExplicitLanguageFilterEnabled"];
  if (v21)
  {
    -[VCCaptionsDataCollector setExplicitLanguageFilterEnabled:](self, "setExplicitLanguageFilterEnabled:", [v21 BOOLValue]);
  }

  v22 = [a3 objectForKeyedSubscript:@"ACCallType"];
  v23 = [v22 unsignedCharValue];
  if (v22)
  {
    v24 = v23;
    if (![(VCHistogram *)self->_callTypeHistogram addOnlyExactMatchingValue:v23])
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          VRTraceErrorLogLevelToCSTR(3u);
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            [VCCaptionsDataCollector processCaptionsConfiguration:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [(VCCaptionsDataCollector *)self performSelector:sel_logPrefix];
        }

        else
        {
          v25 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") >= 3)
        {
          v26 = VRTraceErrorLogLevelToCSTR(3u);
          v27 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
          {
            v29 = 136316418;
            v30 = v26;
            v31 = 2080;
            v32 = "[VCCaptionsDataCollector processCaptionsConfiguration:]";
            v33 = 1024;
            v34 = 209;
            v35 = 2112;
            v36 = v25;
            v37 = 2048;
            v38 = self;
            v39 = 1024;
            v40 = v24;
            _os_log_error_impl(&dword_23D4DF000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to find bucket for call type=%hhu", &v29, 0x36u);
          }
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)addAggregatedCaptionsConfigurationToReport:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isCaptionsEnabled), @"VCACE"}];
  [a3 setObject:-[VCHistogram description](self->_captionsUsage forKeyedSubscript:{"description"), @"VCACU"}];
  [a3 setObject:self->_captionsLocale forKeyedSubscript:@"VCACL"];
  [a3 setObject:self->_captionsSourceLocale forKeyedSubscript:@"VCACSL"];
  [a3 setObject:-[VCHistogram description](self->_captionsSpeechModel forKeyedSubscript:{"description"), @"VCACSM"}];
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isExplicitLanguageFilterEnabled), @"VCACELFE"}];
  v5 = [(VCHistogram *)self->_callTypeHistogram description];

  [a3 setObject:v5 forKeyedSubscript:@"VCACCT"];
}

- (void)addAggregatedLanguageDetectorMetricsToReport:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_isLanguageDetectorEnabled), @"VCALDE"}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  languageCodeDict = self->_languageCodeDict;
  v6 = [(NSMutableDictionary *)languageCodeDict countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(languageCodeDict);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (!v10)
        {
          v11 = @"VCADLC";
LABEL_10:
          [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_languageCodeDict, "objectForKeyedSubscript:", v10), "unsignedIntValue")), v11}];
          continue;
        }

        v11 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"VCADLC", v10];
        if (v11)
        {
          goto LABEL_10;
        }
      }

      v7 = [(NSMutableDictionary *)languageCodeDict countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addAggregatedCaptionsHistogramsToReport:(id)a3 shouldAlwaysAdd:(BOOL)a4
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (a4 || self->_receivedCaptionsMetrics)
  {
    [a3 setObject:-[VCHistogram description](self->_captionsRatioHistogram forKeyedSubscript:{"description"), @"VCACR"}];
    [a3 setObject:-[VCHistogram description](self->_captionsRatioLongHistogram forKeyedSubscript:{"description"), @"VCACRL"}];
    v7 = [(VCHistogram *)self->_captionsUtteranceHistogram description];

    [a3 setObject:v7 forKeyedSubscript:@"VCACUD"];
  }
}

- (void)addAggregatedCaptionsValueTypesToReport:(id)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  if (self->_receivedCaptionsMetrics)
  {
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_maxCaptionsRatio), @"VCACRM"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_captionTaskCount), @"VCACTC"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_captionsEnabledDuration), @"VCACED"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_utteranceCount), @"VCACUC"}];
    [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", self->_translatedUtteranceCount), @"VCACTUC"}];
    v5 = [MEMORY[0x277CCABA8] numberWithDouble:self->_translatedLatencyAverage];

    [a3 setObject:v5 forKeyedSubscript:@"VCACTLA"];
  }
}

- (void)addAggregatedCaptionsMetricsToReport:(id)a3
{
  [(VCCaptionsDataCollector *)self addAggregatedCaptionsConfigurationToReport:?];
  [(VCCaptionsDataCollector *)self addAggregatedCaptionsHistogramsToReport:a3 shouldAlwaysAdd:0];
  [(VCCaptionsDataCollector *)self addAggregatedCaptionsValueTypesToReport:a3];

  [(VCCaptionsDataCollector *)self addAggregatedLanguageDetectorMetricsToReport:a3];
}

- (void)initWithDispatchQueue:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Invalid dispatchQueue provided", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithDispatchQueue:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d Failed to super initialize VCCaptionsDataCollector", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)processCaptionsConfiguration:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v0, v1, " [%s] %s:%d Failed to find bucket for usage=%hhu", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processCaptionsConfiguration:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v0, v1, " [%s] %s:%d Failed to find bucket for speech model=%hhu", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)processCaptionsConfiguration:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0(&dword_23D4DF000, v0, v1, " [%s] %s:%d Failed to find bucket for call type=%hhu", v3, v4, v5, v6);
  v2 = *MEMORY[0x277D85DE8];
}

@end