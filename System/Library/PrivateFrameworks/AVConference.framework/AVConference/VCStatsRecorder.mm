@interface VCStatsRecorder
- ($2A5123FA66906022607F2B5D76B2AC99)getMostRecentLocalStats;
- (VCStatsRecorder)init;
- (int)serverStatsSizeInByteForUplink:(BOOL)uplink connection:(id)connection;
- (void)dealloc;
- (void)getLocalStats:(unsigned __int16)stats localSessionStats:(id *)sessionStats;
- (void)updateSessionStats:(unsigned __int16)stats connection:(id)connection totalPacketSent:(unsigned int)sent totalPacketReceived:(unsigned int)received;
@end

@implementation VCStatsRecorder

- (VCStatsRecorder)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCStatsRecorder;
  v2 = [(VCStatsRecorder *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_stateRWLock, 0);
    bzero(v3->_localStats, 0xC00uLL);
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_rwlock_destroy(&self->_stateRWLock);
  v3.receiver = self;
  v3.super_class = VCStatsRecorder;
  [(VCStatsRecorder *)&v3 dealloc];
}

- (void)updateSessionStats:(unsigned __int16)stats connection:(id)connection totalPacketSent:(unsigned int)sent totalPacketReceived:(unsigned int)received
{
  if (connection)
  {
    v7 = *&sent;
    statsCopy = stats;
    pthread_rwlock_wrlock(&self->_stateRWLock);
    v11 = micro();
    v12 = VCConnectionIDS_LinkID(connection);
    v13 = self->_uplinkServerStatsByteUsed + [(VCStatsRecorder *)self serverStatsSizeInByteForUplink:1 connection:connection];
    self->_uplinkServerStatsByteUsed = v13;
    v14 = (self + 24 * (statsCopy & 0x7F));
    v14[26] = v11;
    *(v14 + 27) = (statsCopy << 16) | (v7 << 32) | v12;
    *(v14 + 56) = received;
    *(v14 + 57) = v13;
    self->_currentLocalStatsIndex = statsCopy & 0x7F;

    pthread_rwlock_unlock(&self->_stateRWLock);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStatsRecorder updateSessionStats:connection:totalPacketSent:totalPacketReceived:];
    }
  }
}

- (void)getLocalStats:(unsigned __int16)stats localSessionStats:(id *)sessionStats
{
  if (sessionStats)
  {
    statsCopy = stats;
    pthread_rwlock_rdlock(&self->_stateRWLock);
    v7 = self + 24 * statsCopy;
    sessionStats->var1 = v7[216];
    sessionStats->var0 = *(v7 + 26);
    sessionStats->var3 = *(v7 + 55);
    sessionStats->var5 = *(v7 + 57);

    pthread_rwlock_unlock(&self->_stateRWLock);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCStatsRecorder getLocalStats:localSessionStats:];
    }
  }
}

- ($2A5123FA66906022607F2B5D76B2AC99)getMostRecentLocalStats
{
  *&retstr->var1 = 0;
  *&retstr->var4 = 0;
  pthread_rwlock_rdlock(&self->_stateRWLock);
  v5 = self + 24 * self->_currentLocalStatsIndex;
  retstr->var1 = v5[216];
  retstr->var0 = *(v5 + 26);
  retstr->var3 = *(v5 + 55);
  retstr->var5 = *(v5 + 57);

  return pthread_rwlock_unlock(&self->_stateRWLock);
}

- (int)serverStatsSizeInByteForUplink:(BOOL)uplink connection:(id)connection
{
  if (connection)
  {
    uplinkCopy = uplink;
    v5 = VCConnectionIDS_NetworkOverheadInBytes(connection, 0, 0);
    if (uplinkCopy)
    {
      v6 = -18;
    }

    else
    {
      v6 = -8;
    }

    return v6 + v5;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      [VCStatsRecorder serverStatsSizeInByteForUplink:connection:];
    }

    return 0;
  }
}

- (void)updateSessionStats:connection:totalPacketSent:totalPacketReceived:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Connection is NIL", v2, v3, v4, v5, v6);
}

- (void)getLocalStats:localSessionStats:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d localSessionStats is invalid", v2, v3, v4, v5, v6);
}

- (void)serverStatsSizeInByteForUplink:connection:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Connection is NIL", v2, v3, v4, v5, v6);
}

@end