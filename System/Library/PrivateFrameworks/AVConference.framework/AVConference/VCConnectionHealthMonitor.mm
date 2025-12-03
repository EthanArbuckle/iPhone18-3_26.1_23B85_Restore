@interface VCConnectionHealthMonitor
- (VCConnectionHealthMonitor)init;
- (unsigned)generateStatsBlob;
- (void)dealloc;
- (void)processPeerStatsBlob:(unsigned int)blob;
- (void)resetConnectionStats:(BOOL)stats;
- (void)resetHistory:(ConnectionStatsHistory *)history;
@end

@implementation VCConnectionHealthMonitor

- (VCConnectionHealthMonitor)init
{
  v19 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCConnectionHealthMonitor;
  v2 = [(VCConnectionHealthMonitor *)&v10 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_stateRWLock, 0);
    pthread_rwlock_init(&v3->_peerStateRWLock, 0);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v3->_delegateQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCConnectionHealthMonitor.delegateQueue", 0, CustomRootQueue);
    [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-primary-conn-health-allowed-delay" userDefaultKey:@"primaryConnHealthAllowedDelay" defaultValue:&unk_1F579E4C0 isDoubleType:{1), "doubleValue"}];
    v3->_primaryConnHealthAllowedDelay = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        primaryConnHealthAllowedDelay = v3->_primaryConnHealthAllowedDelay;
        *buf = 136315906;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCConnectionHealthMonitor init]";
        v15 = 1024;
        v16 = 68;
        v17 = 2048;
        v18 = primaryConnHealthAllowedDelay;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Primary connection health allowed delay = %.2f", buf, 0x26u);
      }
    }
  }

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCConnectionHealthMonitor *)self setDelegate:0];
  pthread_rwlock_destroy(&self->_stateRWLock);
  pthread_rwlock_destroy(&self->_peerStateRWLock);
  dispatch_release(self->_delegateQueue);
  v3.receiver = self;
  v3.super_class = VCConnectionHealthMonitor;
  [(VCConnectionHealthMonitor *)&v3 dealloc];
}

- (unsigned)generateStatsBlob
{
  pthread_rwlock_rdlock(&self->_stateRWLock);
  latestConnectionStatsIndex = self->_statsHistory.latestConnectionStatsIndex;
  if (self->_lastReportedIndex == latestConnectionStatsIndex)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = self + (self->_statsHistory.latestConnectionStatsIndex - 5 * ((858993460 * self->_statsHistory.latestConnectionStatsIndex) >> 32));
    LODWORD(v8) = bswap32((v8[15] << 8) | (latestConnectionStatsIndex << 24) | (v8[20] << 16) | v8[10]);
    self->_lastReportedIndex = latestConnectionStatsIndex;
    v4 = v8 & 0xFF000000;
    v5 = v8 & 0xFF0000;
    v6 = v8 & 0xFF00;
    v7 = v8;
  }

  pthread_rwlock_unlock(&self->_stateRWLock);
  return v5 | v4 | v6 | v7;
}

- (void)processPeerStatsBlob:(unsigned int)blob
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = bswap32(blob);
  v5 = HIBYTE(v4);
  pthread_rwlock_wrlock(&self->_peerStateRWLock);
  if (HIBYTE(v4) != self->_peerStatsHistory.latestConnectionStatsIndex)
  {
    latestConnectionStatsIndex = self->_peerStatsHistory.latestConnectionStatsIndex;
    v7 = (HIBYTE(v4) - 5 * ((205 * HIBYTE(v4)) >> 10));
    if (v5 >= latestConnectionStatsIndex + 5 || v5 <= latestConnectionStatsIndex - 5)
    {
      self->_peerStatsHistory.totalPacketsReceived[4] = 0;
      *self->_peerStatsHistory.totalPacketsReceived = 0;
      *&self->_peerStatsHistory.connectionStats[0][0] = 0;
      self->_peerStatsHistory.connectionStats[0][4] = 0;
      *&self->_peerStatsHistory.connectionStats[1][0] = 0;
      self->_peerStatsHistory.connectionStats[1][4] = 0;
    }

    else
    {
      v9 = self->_peerStatsHistory.latestConnectionStatsIndex % 5u;
      if ((v9 + 1) == 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 + 1;
      }

      if (v7 != v10)
      {
        v11 = v10;
        do
        {
          self->_peerStatsHistory.totalPacketsReceived[v11] = 0;
          self->_peerStatsHistory.connectionStats[0][v11] = 0;
          self->_peerStatsHistory.connectionStats[1][v11] = 0;
          v11 = (v11 + 1) % 5;
        }

        while (v11 != v7);
      }
    }

    self->_peerStatsHistory.latestConnectionStatsIndex = HIBYTE(v4);
    self->_peerStatsHistory.totalPacketsReceived[(HIBYTE(v4) - 5 * ((205 * HIBYTE(v4)) >> 10))] = v4;
    self->_peerStatsHistory.connectionStats[0][(HIBYTE(v4) - 5 * ((205 * HIBYTE(v4)) >> 10))] = BYTE1(v4);
    self->_peerStatsHistory.connectionStats[1][(HIBYTE(v4) - 5 * ((205 * HIBYTE(v4)) >> 10))] = BYTE2(v4);
    _VCConnectionHealthMonitor_UpdateRatiosForHistory(&self->_peerStatsHistory, (HIBYTE(v4) - 5 * ((205 * HIBYTE(v4)) >> 10)));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_peerStatsHistory.latestConnectionStatsIndex;
        v15 = self->_peerStatsHistory.connectionStats[0][v7];
        v16 = self->_peerStatsHistory.connectionStats[1][v7];
        v17 = self->_peerStatsHistory.totalPacketsReceived[v7];
        v18 = self->_peerStatsHistory.connectionStatsRatio[0][v7];
        v19 = self->_peerStatsHistory.connectionStatsRatio[1][v7];
        v20 = 136317442;
        v21 = v12;
        v22 = 2080;
        v23 = "[VCConnectionHealthMonitor processPeerStatsBlob:]";
        v24 = 1024;
        v25 = 200;
        v26 = 1024;
        v27 = v7;
        v28 = 1024;
        v29 = v14;
        v30 = 1024;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        v34 = 1024;
        v35 = v17;
        v36 = 1024;
        v37 = v18;
        v38 = 1024;
        v39 = v19;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: receive - last packet with feedback index %d, %u, bucket [%u %u %u] ratios [%u %u]", &v20, 0x46u);
      }
    }

    VCConnectionHealthMonitor_ReportConnectionHealthWithStatsHistory(self, &self->_peerStatsHistory, v7, 1);
  }

  pthread_rwlock_unlock(&self->_peerStateRWLock);
}

- (void)resetConnectionStats:(BOOL)stats
{
  if (stats)
  {
    v4 = 304;
  }

  else
  {
    v4 = 40;
  }

  if (stats)
  {
    v5 = 9;
  }

  else
  {
    v5 = 240;
  }

  pthread_rwlock_wrlock((self + v4));
  [(VCConnectionHealthMonitor *)self resetHistory:self + v5];

  pthread_rwlock_unlock((self + v4));
}

- (void)resetHistory:(ConnectionStatsHistory *)history
{
  history->totalPacketsReceived[4] = 0;
  *history->totalPacketsReceived = 0;
  *&history->connectionStats[0][0] = 0;
  *&history->connectionStats[1][3] = 0;
  *&history->connectionStatsRatio[0][0] = 0;
  *&history->connectionStatsRatio[1][3] = 0;
}

@end