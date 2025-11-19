@interface VCAggregatorAnsweringMachine
- (VCAggregatorAnsweringMachine)initWithDelegate:(id)a3;
- (id)aggregatedCallReports;
- (id)answeringMachineAggregatedReport;
- (id)dispatchedAggregatedCallReport;
- (void)dealloc;
- (void)processAnsweringMachineDidStopWithCurrentTime:(double)a3;
- (void)processAnsweringMachineInitWithPayload:(id)a3 currentTime:(double)a4;
- (void)processAnsweringMachineRecordingStartWithCurrentTime:(double)a3;
- (void)processEventWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5;
@end

@implementation VCAggregatorAnsweringMachine

- (VCAggregatorAnsweringMachine)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = VCAggregatorAnsweringMachine;
  v3 = [(VCAggregatorRecordingAndTranscriptionService *)&v5 initWithDelegate:a3];
  if (v3)
  {
    v3->_answeringMachineUsageHistogram = [[VCReportingHistogram alloc] initWithType:94 bucketValues:0];
  }

  else
  {
    [VCAggregatorAnsweringMachine initWithDelegate:];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorAnsweringMachine;
  [(VCAggregatorRecordingAndTranscriptionService *)&v3 dealloc];
}

- (void)processAnsweringMachineInitWithPayload:(id)a3 currentTime:(double)a4
{
  v7 = [objc_msgSend(a3 objectForKeyedSubscript:{@"AMCA", "BOOLValue"}];
  v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"AMCMR", "BOOLValue"}];
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"AMCMC", "BOOLValue"}];
  self->_answeringMachineSource = [objc_msgSend(a3 objectForKeyedSubscript:{@"AMCS", "unsignedCharValue"}];
  -[VCHistogram addValue:](self->_answeringMachineUsageHistogram, "addValue:", [objc_msgSend(a3 objectForKeyedSubscript:{@"AMCU", "integerValue"}]);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    self->_answeringMachineCapabilities |= 2u;
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  self->_answeringMachineCapabilities |= 1u;
  self->_answeringMachineAssetDelayTime = [objc_msgSend(a3 objectForKeyedSubscript:{@"AMCAD", "unsignedLongValue"}] / 1000.0;
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v9)
  {
LABEL_4:
    self->_answeringMachineCapabilities |= 4u;
  }

LABEL_5:
  self->_answeringMachineCreatedTime = a4;
}

- (void)processAnsweringMachineRecordingStartWithCurrentTime:(double)a3
{
  if ((self->_answeringMachineCapabilities & 1) == 0)
  {
    self->_answeringMachineAudioBringUpTime = a3 - self->_answeringMachineCreatedTime - self->_answeringMachineEnteredScreeningTime;
  }
}

- (void)processAnsweringMachineDidStopWithCurrentTime:(double)a3
{
  if ((self->_answeringMachineCapabilities & 2) != 0)
  {
    self->_answeringMachineRecordingFinalizationTime = a3 - self->_answeringMachineRecordingCleanupStartTime;
  }

  self->_answeringMachineTotalScreeningTime = a3 - self->_answeringMachineCreatedTime - self->_answeringMachineEnteredScreeningTime;
}

- (void)processEventWithCategory:(unsigned __int16)a3 type:(unsigned __int16)a4 payload:(id)a5
{
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__VCAggregatorAnsweringMachine_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  v7 = a3;
  v8 = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_sync(stateQueue, block);
}

- (id)answeringMachineAggregatedReport
{
  v7[7] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v3 = MEMORY[0x277CBEB38];
  v6[0] = @"AAMCS";
  v7[0] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_answeringMachineSource];
  v6[1] = @"AAMC";
  v7[1] = [MEMORY[0x277CCABA8] numberWithUnsignedChar:self->_answeringMachineCapabilities];
  v6[2] = @"AAMTTES";
  v7[2] = [MEMORY[0x277CCABA8] numberWithDouble:self->_answeringMachineEnteredScreeningTime];
  v6[3] = @"AAMTTBUA";
  v7[3] = [MEMORY[0x277CCABA8] numberWithDouble:self->_answeringMachineAudioBringUpTime];
  v6[4] = @"AAMTTFR";
  v7[4] = [MEMORY[0x277CCABA8] numberWithDouble:self->_answeringMachineRecordingFinalizationTime];
  v6[5] = @"AAMTST";
  v7[5] = [MEMORY[0x277CCABA8] numberWithDouble:self->_answeringMachineTotalScreeningTime];
  v6[6] = @"AAMU";
  v7[6] = [(VCHistogram *)self->_answeringMachineUsageHistogram description];
  result = [v3 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, v6, 7)}];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dispatchedAggregatedCallReport
{
  dispatch_assert_queue_V2(self->super.super._stateQueue);
  v3 = [(VCAggregatorAnsweringMachine *)self answeringMachineAggregatedReport];
  v5.receiver = self;
  v5.super_class = VCAggregatorAnsweringMachine;
  [v3 addEntriesFromDictionary:{-[VCAggregatorRecordingAndTranscriptionService dispatchedAggregatedCallReport](&v5, sel_dispatchedAggregatedCallReport)}];
  [(VCAggregator *)self addAggregateAudioInjectorMetricsToReport:v3];
  return v3;
}

- (id)aggregatedCallReports
{
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  stateQueue = self->super.super._stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__VCAggregatorAnsweringMachine_aggregatedCallReports__block_invoke;
  v6[3] = &unk_278BD4C10;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  if (v8[5])
  {
    v13[0] = v8[5];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __53__VCAggregatorAnsweringMachine_aggregatedCallReports__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedAggregatedCallReport];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)initWithDelegate:.cold.1()
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
      v6 = "[VCAggregatorAnsweringMachine initWithDelegate:]";
      v7 = 1024;
      v8 = 42;
      _os_log_error_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed to super initialize", &v3, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end