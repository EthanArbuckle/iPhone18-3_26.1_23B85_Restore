@interface VCSessionStatsController
- (VCSessionStatsController)initWithDelegate:(id)delegate connectionManager:(id)manager uplinkStatsCollector:(id)collector downlinkStatsCollector:(id)statsCollector reportingAgent:(opaqueRTCReporting *)agent transportSessionID:(unsigned int)d streamID:(unsigned __int16)iD mediaQueue:(tagVCMediaQueue *)self0;
- (void)dealloc;
- (void)deregisterPeriodicTask;
- (void)flushRealTimeReportingStats;
- (void)periodicTask:(void *)task;
- (void)registerPeriodicTask;
- (void)reset;
- (void)sendLocalStats;
- (void)startLocalSessionStatsReceive;
- (void)startLocalSessionStatsSend;
- (void)startLocalSessionStatsUpdate;
- (void)stopLocalSessionStatsUpdate;
@end

@implementation VCSessionStatsController

- (VCSessionStatsController)initWithDelegate:(id)delegate connectionManager:(id)manager uplinkStatsCollector:(id)collector downlinkStatsCollector:(id)statsCollector reportingAgent:(opaqueRTCReporting *)agent transportSessionID:(unsigned int)d streamID:(unsigned __int16)iD mediaQueue:(tagVCMediaQueue *)self0
{
  v10 = *&d;
  v37 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCSessionStatsController;
  v16 = [(VCSessionStatsController *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_weakDelegate, delegate);
    objc_storeWeak(&v17->_reportingAgentWeak, agent);
    *&v17->_remoteStats.linkID = 0;
    *&v17->_remoteStats.uplinkBandwidthSample = 0;
    v17->_remoteStats.responseTime = 0.0;
    v17->_statsRequestCounter = 0;
    v17->_streamID = iD;
    v17->_uplinkStatisticsCollector = collector;
    v17->_downlinkStatisticsCollector = statsCollector;
    v17->_connectionManager = manager;
    v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579B3E8, @"transportStreamStreamTypeKey", 0}];
    v17->_transportStream = [[VCTransportStreamGFT alloc] initWithTransportSessionID:v10 options:v18];

    [(VCTransportStreamGFT *)v17->_transportStream setMediaQueue:queue];
    v17->_statsArrayIndex = -1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        transportStream = v17->_transportStream;
        *buf = 136316418;
        v26 = v19;
        v27 = 2080;
        v28 = "[VCSessionStatsController initWithDelegate:connectionManager:uplinkStatsCollector:downlinkStatsCollector:reportingAgent:transportSessionID:streamID:mediaQueue:]";
        v29 = 1024;
        v30 = 70;
        v31 = 2048;
        v32 = v17;
        v33 = 2048;
        v34 = transportStream;
        v35 = 1024;
        v36 = v10;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stats controller [%p] init with transportStream [%p] and transportSessionId: %u", buf, 0x36u);
      }
    }

    [(VCSessionStatsController *)v17 flushRealTimeReportingStats];
    [(VCSessionStatsController *)v17 registerPeriodicTask];
    v17->_statsReportingInterval = 2.0;
    v17->_enableStatsReporting = [+[VCDefaults sharedInstance](VCDefaults enableGFTStatsReporting];
    v17->_enableStatsReceiveThread = [+[VCDefaults sharedInstance](VCDefaults enableGFTStatsReceiveThread];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(56);
    v17->_statsRequestQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.vcsessionStatsController.requestQueue", 0, CustomRootQueue);
  }

  return v17;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      numStatsDroppedDueToStatsID = self->_numStatsDroppedDueToStatsID;
      numStatsDroppedDueToLinkID = self->_numStatsDroppedDueToLinkID;
      numStatsDroppedDueToTooLate = self->_numStatsDroppedDueToTooLate;
      numStatsProcessed = self->_numStatsProcessed;
      *buf = 136316930;
      v11 = v3;
      v12 = 2080;
      v13 = "[VCSessionStatsController dealloc]";
      v14 = 1024;
      v15 = 83;
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = numStatsProcessed;
      v20 = 1024;
      v21 = numStatsDroppedDueToLinkID;
      v22 = 1024;
      v23 = numStatsDroppedDueToStatsID;
      v24 = 1024;
      v25 = numStatsDroppedDueToTooLate;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d dealloc [%p] with statsCount:[%u, %u, %u, %u]", buf, 0x3Eu);
    }
  }

  [(VCSessionStatsController *)self flushRealTimeReportingStats];
  [(VCSessionStatsController *)self deregisterPeriodicTask];
  objc_storeWeak(&self->_weakDelegate, 0);
  objc_storeWeak(&self->_reportingAgentWeak, 0);

  dispatch_release(self->_statsRequestQueue);
  v9.receiver = self;
  v9.super_class = VCSessionStatsController;
  [(VCSessionStatsController *)&v9 dealloc];
}

- (void)reset
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCSessionStatsController reset]";
      v9 = 1024;
      v10 = 97;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d session stats controller reset", &v5, 0x1Cu);
    }
  }

  self->_lastTriggerRateControlTime = 0.0;
  *&self->_previousTotalPacketSent = 0;
  *&self->_uplinkMostRecentSendTimestamp = 0;
  self->_didReceiveServerStatsResponse = 0;
}

- (void)sendLocalStats
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v3, 0x628uLL);
  statsRequestCounter = self->_statsRequestCounter;
  v6 = 1;
  streamID = self->_streamID;
  v5 = 1;
  v3[373] = 800;
  [(VCTransportStreamGFT *)self->_transportStream VCTransportStreamSendPacket:v3];
}

- (void)startLocalSessionStatsUpdate
{
  [(VCSessionStatsController *)self startLocalSessionStatsReceive];

  [(VCSessionStatsController *)self startLocalSessionStatsSend];
}

- (void)startLocalSessionStatsReceive
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCRealTimeThread_Initialize for session stats controller thread FAILED", v2, v3, v4, v5, v6);
}

double __57__VCSessionStatsController_startLocalSessionStatsReceive__block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (a2)
  {
    _VCSessionStatsController_HandleRemoteSessionStats(a2, a3);

    return _VCSessionStatsController_HealthPrintForServerStats(a2);
  }

  return result;
}

- (void)startLocalSessionStatsSend
{
  v17 = *MEMORY[0x1E69E9840];
  localSessionStatsTimemoutSource = self->_localSessionStatsTimemoutSource;
  if (localSessionStatsTimemoutSource)
  {
    dispatch_release(localSessionStatsTimemoutSource);
    self->_localSessionStatsTimemoutSource = 0;
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_statsRequestQueue);
  self->_localSessionStatsTimemoutSource = v4;
  if (v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v12 = v5;
        v13 = 2080;
        v14 = "[VCSessionStatsController startLocalSessionStatsSend]";
        v15 = 1024;
        v16 = 148;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start local session stats update", buf, 0x1Cu);
      }
    }

    v7 = self->_localSessionStatsTimemoutSource;
    v8 = dispatch_walltime(0, 0);
    dispatch_source_set_timer(v7, v8, 0x56C8CC0uLL, 0x989680uLL);
    v9 = self->_localSessionStatsTimemoutSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __54__VCSessionStatsController_startLocalSessionStatsSend__block_invoke;
    handler[3] = &unk_1E85F3778;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_localSessionStatsTimemoutSource);
  }
}

void __54__VCSessionStatsController_startLocalSessionStatsSend__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = micro();
  [*(a1 + 32) sendLocalStats];
  v3 = VCConnectionManager_CopyPrimaryConnection(*(*(a1 + 32) + 80));
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 152) != 1 || v3 == 0)
  {
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else if (v2 - *(v5 + 96) > 0.546)
  {
    *&v13 = -1;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v7 = [*(v5 + 80) statsRecorder];
    if (v7)
    {
      [v7 getMostRecentLocalStats];
    }

    else
    {
      v13 = 0uLL;
      v14 = 0;
    }

    v10 = *(a1 + 32);
    v11 = v13;
    v12 = v14;
    _VCSessionStatsController_TriggerRateControl(v10, &v11, 1, 0, v2, v8, v9);
    *(*(a1 + 32) + 96) = v2;
  }

  CFRelease(v4);
  v5 = *(a1 + 32);
LABEL_14:
  ++*(v5 + 72);
}

- (void)stopLocalSessionStatsUpdate
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (self->_enableStatsReceiveThread)
  {
    VCRealTimeThread_Stop(self->_statsReceiveThread);
    [(VCTransportStreamGFT *)self->_transportStream VCTransportStreamUnblock];
    VCRealTimeThread_Finalize(self->_statsReceiveThread);
    self->_statsReceiveThread = 0;
  }

  else
  {
    [(VCTransportStreamGFT *)self->_transportStream unregisterPacketCallback];
  }

  if (self->_localSessionStatsTimemoutSource)
  {
    v3 = dispatch_semaphore_create(0);
    localSessionStatsTimemoutSource = self->_localSessionStatsTimemoutSource;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__VCSessionStatsController_stopLocalSessionStatsUpdate__block_invoke;
    v6[3] = &unk_1E85F3778;
    v6[4] = v3;
    dispatch_source_set_cancel_handler(localSessionStatsTimemoutSource, v6);
    dispatch_source_cancel(self->_localSessionStatsTimemoutSource);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    v5 = self->_localSessionStatsTimemoutSource;
    if (v5)
    {
      dispatch_release(v5);
      self->_localSessionStatsTimemoutSource = 0;
    }
  }
}

intptr_t __55__VCSessionStatsController_stopLocalSessionStatsUpdate__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "[VCSessionStatsController stopLocalSessionStatsUpdate]_block_invoke";
      v9 = 1024;
      v10 = 189;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d stop local session stats update completely", &v5, 0x1Cu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)registerPeriodicTask
{
  [(VCSessionStatsController *)self reportingAgent];

  reportingRegisterPeriodicTaskWeak();
}

- (void)periodicTask:(void *)task
{
  v5 = micro();
  v6 = v5 - self->_lastUpdateTime;
  self->_lastUpdateTime = v5;
  uplinkServerStatsByteUsed = self->_uplinkServerStatsByteUsed;
  v8 = uplinkServerStatsByteUsed - self->_lastProcessedBytesSent;
  self->_lastProcessedBytesSent = uplinkServerStatsByteUsed;
  if (v6 == 0.0)
  {
    v12 = 0;
    self->_maxSentRate = 0;
  }

  else
  {
    minSentRate = self->_minSentRate;
    maxSentRate = self->_maxSentRate;
    v11 = v8 / v6;
    if (v11 > maxSentRate)
    {
      maxSentRate = v8 / v6;
    }

    self->_maxSentRate = maxSentRate;
    if (v11 > minSentRate)
    {
      v11 = minSentRate;
    }

    v12 = v11;
  }

  self->_bytesSentToReport += v8;
  downlinkServerStatsByteUsed = self->_downlinkServerStatsByteUsed;
  v14 = downlinkServerStatsByteUsed - self->_lastProcessedBytesReceived;
  self->_minSentRate = v12;
  self->_lastProcessedBytesReceived = downlinkServerStatsByteUsed;
  if (v6 == 0.0)
  {
    v19 = 0;
    self->_maxReceivedRate = 0;
  }

  else
  {
    maxReceivedRate = self->_maxReceivedRate;
    minReceivedRate = self->_minReceivedRate;
    v17 = v14 / v6;
    if (v17 <= maxReceivedRate)
    {
      v18 = maxReceivedRate;
    }

    else
    {
      v18 = v14 / v6;
    }

    self->_maxReceivedRate = v18;
    if (v17 > minReceivedRate)
    {
      v17 = minReceivedRate;
    }

    v19 = v17;
  }

  self->_minReceivedRate = v19;
  self->_bytesReceivedToReport += v14;
  if (task)
  {
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), @"SSMinBytesSent"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxSentRate), @"SSMaxBytesSent"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_bytesSentToReport), @"SSRawBytesSent"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_minReceivedRate), @"SSMinBytesReceived"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_maxReceivedRate), @"SSMaxBytesReceived"}];
    [task setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", self->_bytesReceivedToReport), @"SSRawBytesReceived"}];

    [(VCSessionStatsController *)self flushRealTimeReportingStats];
  }
}

- (void)deregisterPeriodicTask
{
  [(VCSessionStatsController *)self reportingAgent];

  reportingUnregisterPeriodicTask();
}

- (void)flushRealTimeReportingStats
{
  self->_minSentRate = 0x7FFFFFFF;
  self->_minReceivedRate = 0x7FFFFFFF;
  *&self->_bytesSentToReport = 0;
  *&self->_bytesReceivedToReport = 0;
}

@end