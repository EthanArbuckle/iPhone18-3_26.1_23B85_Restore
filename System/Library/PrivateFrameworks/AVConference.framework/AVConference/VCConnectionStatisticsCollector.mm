@interface VCConnectionStatisticsCollector
- (VCConnectionStatisticsCollector)init;
- (id)connectionBasedTopPacketCountsWithUpdateTickCounts:(unsigned int *)counts isOutgoing:(BOOL)outgoing;
- (void)addConnectionBasedTopPacketCountsTelemetry:(id)telemetry reportingKey:(id)key mapLinkIDToLinkUUID:(id)d isOutgoing:(BOOL)outgoing;
- (void)addConnectionBasedTopPacketCountsTelemetry:(id)telemetry reportingKey:(id)key reportingTickCounts:(unsigned int)counts mapLinkIDToLinkUUID:(id)d packetCountsPerConnection:(id)connection;
- (void)copyCopyPacketCountCallbackForOutgoing:(BOOL)outgoing withCallback:(id)callback;
- (void)dealloc;
- (void)deallocCopyPacketCountCallBack:(BOOL)back;
- (void)startPeriodicUpdateHistory:(BOOL)history withCopyPacketCountCallback:(id)callback;
- (void)startUpdateHistoryTimerForOutgoing:(BOOL)outgoing;
- (void)stopPeriodicHistoryUpdate;
- (void)updateHistory:(BOOL)history;
@end

@implementation VCConnectionStatisticsCollector

- (void)updateHistory:(BOOL)history
{
  v4 = 1048;
  if (history)
  {
    v4 = 24;
    v5 = 2072;
  }

  else
  {
    v5 = 2076;
  }

  v6 = 16;
  if (history)
  {
    v6 = 8;
  }

  v7 = 2104;
  if (history)
  {
    v7 = 2096;
  }

  v8 = *(&self->super.isa + v7);
  if (v8)
  {
    v9 = self + v4;
    v10 = *(&self->super.isa + v6);
    (*(v8 + 16))(v8, self + v4);
    pthread_rwlock_wrlock(&self->_historyStateRWlock);
    for (i = 0; i != 256; ++i)
    {
      v12 = *&v9[4 * i];
      if (v12)
      {
        v13 = [v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", i)}];
        if (v13)
        {
          v14 = v13;
          if ([v13 count] == 8)
          {
            [v14 removeFirstObject];
          }

          [v14 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12)}];
        }

        else
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v15 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12)}];
          [v10 setObject:v15 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", i)}];
        }
      }
    }

    ++*(&self->super.isa + v5);

    pthread_rwlock_unlock(&self->_historyStateRWlock);
  }

  else
  {
    [VCConnectionStatisticsCollector updateHistory:];
  }
}

- (void)copyCopyPacketCountCallbackForOutgoing:(BOOL)outgoing withCallback:(id)callback
{
  if (outgoing)
  {
    v6 = 2096;
  }

  else
  {
    v6 = 2104;
  }

  _Block_release(*(&self->super.isa + v6));
  *(&self->super.isa + v6) = _Block_copy(callback);
}

- (void)deallocCopyPacketCountCallBack:(BOOL)back
{
  if (back)
  {
    copyPacketCountCallbackSend = self->_copyPacketCountCallbackSend;
    if (!copyPacketCountCallbackSend)
    {
      return;
    }

    p_copyPacketCountCallbackSend = &self->_copyPacketCountCallbackSend;
  }

  else
  {
    copyPacketCountCallbackSend = self->_copyPacketCountCallbackRecv;
    if (!copyPacketCountCallbackSend)
    {
      return;
    }

    p_copyPacketCountCallbackSend = &self->_copyPacketCountCallbackRecv;
  }

  _Block_release(copyPacketCountCallbackSend);
  *p_copyPacketCountCallbackSend = 0;
}

- (void)startUpdateHistoryTimerForOutgoing:(BOOL)outgoing
{
  v15 = *MEMORY[0x1E69E9840];
  if (outgoing)
  {
    v5 = 2080;
  }

  else
  {
    v5 = 2088;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
  *(&self->super.isa + v5) = v7;
  if (v7)
  {
    v8 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(*(&self->super.isa + v5), v8, 0x12A05F200uLL, 0);
    v9 = *(&self->super.isa + v5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __70__VCConnectionStatisticsCollector_startUpdateHistoryTimerForOutgoing___block_invoke;
    handler[3] = &unk_1E85F37A0;
    handler[4] = self;
    outgoingCopy = outgoing;
    dispatch_source_set_event_handler(v9, handler);
    v10 = *(&self->super.isa + v5);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__VCConnectionStatisticsCollector_startUpdateHistoryTimerForOutgoing___block_invoke_2;
    v11[3] = &unk_1E85F37A0;
    v11[4] = self;
    outgoingCopy2 = outgoing;
    dispatch_source_set_cancel_handler(v10, v11);
    dispatch_resume(*(&self->super.isa + v5));
  }

  else
  {
    [VCConnectionStatisticsCollector startUpdateHistoryTimerForOutgoing:];
  }
}

- (VCConnectionStatisticsCollector)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCConnectionStatisticsCollector;
  v2 = [(VCConnectionStatisticsCollector *)&v4 init];
  if (v2)
  {
    v2->_packetCountsHistorySent = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_packetCountsHistoryRecv = objc_alloc_init(MEMORY[0x1E695DF90]);
    pthread_rwlock_init(&v2->_historyStateRWlock, 0);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_rwlock_destroy(&self->_historyStateRWlock);
  v3.receiver = self;
  v3.super_class = VCConnectionStatisticsCollector;
  [(VCConnectionStatisticsCollector *)&v3 dealloc];
}

- (void)startPeriodicUpdateHistory:(BOOL)history withCopyPacketCountCallback:(id)callback
{
  if (!callback)
  {
    [VCConnectionStatisticsCollector startPeriodicUpdateHistory:withCopyPacketCountCallback:];
    return;
  }

  if (history)
  {
    if (self->_periodicHistoryUpdateSentTimer)
    {
      return;
    }

    [(VCConnectionStatisticsCollector *)self copyCopyPacketCountCallbackForOutgoing:1 withCallback:?];
    selfCopy2 = self;
    v6 = 1;
  }

  else
  {
    if (self->_periodicHistoryUpdateRecvTimer)
    {
      return;
    }

    [(VCConnectionStatisticsCollector *)self copyCopyPacketCountCallbackForOutgoing:0 withCallback:?];
    selfCopy2 = self;
    v6 = 0;
  }

  [(VCConnectionStatisticsCollector *)selfCopy2 startUpdateHistoryTimerForOutgoing:v6];
}

- (void)stopPeriodicHistoryUpdate
{
  periodicHistoryUpdateSentTimer = self->_periodicHistoryUpdateSentTimer;
  if (periodicHistoryUpdateSentTimer)
  {
    dispatch_source_cancel(periodicHistoryUpdateSentTimer);
    v4 = self->_periodicHistoryUpdateSentTimer;
    if (v4)
    {
      dispatch_release(v4);
      self->_periodicHistoryUpdateSentTimer = 0;
    }
  }

  periodicHistoryUpdateRecvTimer = self->_periodicHistoryUpdateRecvTimer;
  if (periodicHistoryUpdateRecvTimer)
  {
    dispatch_source_cancel(periodicHistoryUpdateRecvTimer);
    v6 = self->_periodicHistoryUpdateRecvTimer;
    if (v6)
    {
      dispatch_release(v6);
      self->_periodicHistoryUpdateRecvTimer = 0;
    }
  }
}

- (void)addConnectionBasedTopPacketCountsTelemetry:(id)telemetry reportingKey:(id)key mapLinkIDToLinkUUID:(id)d isOutgoing:(BOOL)outgoing
{
  outgoingCopy = outgoing;
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  pthread_rwlock_wrlock(&self->_historyStateRWlock);
  v11 = [(VCConnectionStatisticsCollector *)self connectionBasedTopPacketCountsWithUpdateTickCounts:&v12 isOutgoing:outgoingCopy];
  [(VCConnectionStatisticsCollector *)self addConnectionBasedTopPacketCountsTelemetry:telemetry reportingKey:key reportingTickCounts:v12 mapLinkIDToLinkUUID:d packetCountsPerConnection:v11];
  pthread_rwlock_unlock(&self->_historyStateRWlock);
}

- (id)connectionBasedTopPacketCountsWithUpdateTickCounts:(unsigned int *)counts isOutgoing:(BOOL)outgoing
{
  outgoingCopy = outgoing;
  v41 = *MEMORY[0x1E69E9840];
  v7 = 16;
  if (outgoing)
  {
    v7 = 8;
  }

  v8 = *(&self->super.isa + v7);
  if ([v8 count])
  {
    v9 = 2076;
    if (outgoingCopy)
    {
      v9 = 2072;
    }

    *counts = *(&self->super.isa + v9);
    memset(&v26, 0, 32);
    v26.compare = _VCConnectionStatisticsCollector_ComparePacketCounts;
    v10 = CFBinaryHeapCreate(0, 256, &v26, 0);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v8 countByEnumeratingWithState:&v37 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [objc_msgSend(objc_msgSend(v8 objectForKeyedSubscript:{v15), "lastObject"), "unsignedIntValue"}];
          v34[1] = @"PktCnt";
          v35[0] = v15;
          v34[0] = @"linkID";
          v35[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16];
          CFBinaryHeapAddValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2]);
        }

        v12 = [v8 countByEnumeratingWithState:&v37 objects:v36 count:16];
      }

      while (v12);
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0;
    while (1)
    {
      Minimum = CFBinaryHeapGetMinimum(v10);
      if (!Minimum)
      {
        break;
      }

      v20 = Minimum;
      CFBinaryHeapRemoveMinimumValue(v10);
      v21 = [v20 objectForKeyedSubscript:@"linkID"];
      [v17 setObject:objc_msgSend(v8 forKeyedSubscript:{"objectForKeyedSubscript:", v21), v21}];
      if (++v18 == 3)
      {
        goto LABEL_23;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_23;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    v24 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v22;
        v28 = 2080;
        v29 = "[VCConnectionStatisticsCollector connectionBasedTopPacketCountsWithUpdateTickCounts:isOutgoing:]";
        v30 = 1024;
        v31 = 217;
        v32 = 1024;
        v33 = v18;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Did not get max value for ranked=%d", buf, 0x22u);
        if (!v10)
        {
          return v17;
        }

        goto LABEL_24;
      }

LABEL_23:
      if (!v10)
      {
        return v17;
      }

      goto LABEL_24;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    [(VCConnectionStatisticsCollector *)v22 connectionBasedTopPacketCountsWithUpdateTickCounts:v18 isOutgoing:v23];
    if (v10)
    {
LABEL_24:
      CFRelease(v10);
    }
  }

  else
  {
    [VCConnectionStatisticsCollector connectionBasedTopPacketCountsWithUpdateTickCounts:buf isOutgoing:?];
    v17 = *buf;
  }

  return v17;
}

- (void)addConnectionBasedTopPacketCountsTelemetry:(id)telemetry reportingKey:(id)key reportingTickCounts:(unsigned int)counts mapLinkIDToLinkUUID:(id)d packetCountsPerConnection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  if (connection)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [connection countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(connection);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          integerValue = [v14 integerValue];
          v16 = [d objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", integerValue)}];
          v17 = [connection objectForKeyedSubscript:v14];
          [v9 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@:", objc_msgSend(v16, "UUIDString"), objc_msgSend(v17, "componentsJoinedByString:", @", "))}];
        }

        v11 = [connection countByEnumeratingWithState:&v25 objects:v24 count:16];
      }

      while (v11);
    }

    if ([v9 length])
    {
      [v9 deleteCharactersInRange:{objc_msgSend(v9, "length") - 1, 1}];
    }

    [telemetry setObject:v9 forKeyedSubscript:key];

    v18 = [key isEqual:@"ULPH"];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:counts];
    if (v18)
    {
      v20 = @"ULPI";
    }

    else
    {
      v20 = @"DLPI";
    }

    [telemetry setObject:v19 forKeyedSubscript:v20];
  }

  else
  {
    [VCConnectionStatisticsCollector addConnectionBasedTopPacketCountsTelemetry:reportingKey:reportingTickCounts:mapLinkIDToLinkUUID:packetCountsPerConnection:];
  }
}

- (void)updateHistory:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }
}

- (void)startUpdateHistoryTimerForOutgoing:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x1Cu);
    }
  }
}

- (void)startPeriodicUpdateHistory:withCopyPacketCountCallback:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x1Cu);
    }
  }
}

- (void)connectionBasedTopPacketCountsWithUpdateTickCounts:(os_log_t)log isOutgoing:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCConnectionStatisticsCollector connectionBasedTopPacketCountsWithUpdateTickCounts:isOutgoing:]";
  v7 = 1024;
  v8 = 217;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Did not get max value for ranked=%d", &v3, 0x22u);
}

- (void)connectionBasedTopPacketCountsWithUpdateTickCounts:(void *)a1 isOutgoing:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 196;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d History is empty", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)addConnectionBasedTopPacketCountsTelemetry:reportingKey:reportingTickCounts:mapLinkIDToLinkUUID:packetCountsPerConnection:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v0, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 0x1Cu);
    }
  }
}

@end