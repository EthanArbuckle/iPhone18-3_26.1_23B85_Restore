@interface AFMyriadMonitor
+ (id)sharedMonitor;
- (AFMyriadMonitor)init;
- (BOOL)didWin;
- (BOOL)isMonitoring;
- (id)_fetchCurrentMyriadDecisionWithWaitTime:(double)a3;
- (id)_myriadStateToString:(int64_t)a3;
- (void)_cancelRepostedMyriadDecisionTimer;
- (void)_clear;
- (void)_dequeueBlocksWithSignal:(int64_t)a3;
- (void)_deregisterFromMyriadEventNotifications;
- (void)_deregisterFromRepostedDecisionResultsObservers;
- (void)_enqueueBlock:(id)a3 forReason:(id)a4;
- (void)_flushCompletions:(BOOL)a3;
- (void)_ignoreRepostMyriadNotification:(BOOL)a3;
- (void)_registerForMyriadEvents;
- (void)_setDecisionIsPending;
- (void)dealloc;
- (void)dequeueBlocksWaitingForMyriadDecision;
- (void)ignoreMyriadEvents:(BOOL)a3;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4;
- (void)startMonitoringWithTimeoutInterval:(double)a3 instanceContext:(id)a4;
- (void)stopMonitoring;
- (void)waitForMyriadDecisionForReason:(id)a3 withCompletion:(id)a4;
- (void)waitForMyriadDecisionWithCompletion:(id)a3;
@end

@implementation AFMyriadMonitor

- (void)_ignoreRepostMyriadNotification:(BOOL)a3
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AFMyriadMonitor__ignoreRepostMyriadNotification___block_invoke;
  v4[3] = &unk_1E7347F98;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(myriadMonitorQueue, v4);
}

- (void)_flushCompletions:(BOOL)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1000;
  }

  [(AFMyriadMonitor *)self _dequeueBlocksWithSignal:v4];
  timer = self->_timer;

  [(AFWatchdogTimer *)timer cancelIfNotAlreadyCanceled];
}

- (void)_clear
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    state = self->_state;
    v5 = v3;
    v6 = [(AFMyriadMonitor *)self _myriadStateToString:state];
    v8 = 136315394;
    v9 = "[AFMyriadMonitor _clear]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Clear pending for Myriad decision: %@.", &v8, 0x16u);
  }

  self->_state = 0;
  [(AFMyriadMonitor *)self _flushCompletions:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_dequeueBlocksWithSignal:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    completions = self->_completions;
    v7 = v5;
    *buf = 136315394;
    v21 = "[AFMyriadMonitor _dequeueBlocksWithSignal:]";
    v22 = 1024;
    v23 = [(AFQueue *)completions count];
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Myriad decision had %d block(s) waiting", buf, 0x12u);
  }

  if ([(AFQueue *)self->_completions count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_completions;
    v9 = [(AFQueue *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v15 + 1) + 8 * v12++) invokeWithSignal:{a3, v15}];
        }

        while (v10 != v12);
        v10 = [(AFQueue *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13 = [(AFQueue *)self->_completions dequeueAllObjects];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setDecisionIsPending
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (self->_state == 1)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[AFMyriadMonitor _setDecisionIsPending]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad decision is already in pending state.", buf, 0xCu);
      v3 = AFSiriLogContextConnection;
    }

    timer = self->_timer;
    if (timer)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[AFMyriadMonitor _setDecisionIsPending]";
        _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad monitor cancelling existing watch dog timer.", buf, 0xCu);
        timer = self->_timer;
      }

      [(AFWatchdogTimer *)timer cancel];
      v5 = self->_timer;
      self->_timer = 0;

      v3 = AFSiriLogContextConnection;
    }
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[AFMyriadMonitor _setDecisionIsPending]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad decision is pending.", buf, 0xCu);
    v3 = AFSiriLogContextConnection;
  }

  self->_state = 1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    myriadEventMonitorTimeout = self->_myriadEventMonitorTimeout;
    *buf = 136315394;
    v15 = "[AFMyriadMonitor _setDecisionIsPending]";
    v16 = 2048;
    v17 = myriadEventMonitorTimeout;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad monitor initializing safety timer with timeout: %f seconds", buf, 0x16u);
  }

  v7 = [AFWatchdogTimer alloc];
  v8 = self->_myriadEventMonitorTimeout;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__AFMyriadMonitor__setDecisionIsPending__block_invoke;
  v13[3] = &unk_1E73497C8;
  v13[4] = self;
  v10 = [(AFWatchdogTimer *)v7 initWithTimeoutInterval:myriadMonitorQueue onQueue:v13 timeoutHandler:v8];
  v11 = self->_timer;
  self->_timer = v10;

  [(AFWatchdogTimer *)self->_timer start];
  v12 = *MEMORY[0x1E69E9840];
}

void *__40__AFMyriadMonitor__setDecisionIsPending__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[AFMyriadMonitor _setDecisionIsPending]_block_invoke";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s Myriad monitor times out, Myriad is probably unable to finish, clear pending blocks", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result[1] == 1)
  {
    [result _deregisterFromRepostedDecisionResultsObservers];
    result = [*(a1 + 32) _clear];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "[AFMyriadMonitor notifyObserver:didChangeStateFrom:to:]";
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    v18 = 2048;
    v19 = a5;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s notifyObserver %p didChangeStateFrom %ld -> %ld", &v12, 0x2Au);
  }

  if (!a4 && self->_repostedWonObserver == v8)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.get.decision", 0, 0, 1u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(AFNotifyObserver *)v5 name];
  if (self->_wonObserver == v5)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315394;
      *&v14[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v14[12] = 2112;
      *&v14[14] = v6;
      v8 = "%s Myriad Delay Monitor result: YES (%@)";
      goto LABEL_9;
    }

LABEL_10:
    v9 = self;
    v10 = 1;
LABEL_14:
    [(AFMyriadMonitor *)v9 _resultSeenWithValue:v10, *v14, *&v14[16], v15];
LABEL_15:
    [(AFMyriadMonitor *)self _deregisterFromRepostedDecisionResultsObservers];
    goto LABEL_16;
  }

  if (self->_lostObserver == v5)
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315394;
      *&v14[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v14[12] = 2112;
      *&v14[14] = v6;
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor result: NO (%@)", v14, 0x16u);
    }

    v9 = self;
    v10 = 0;
    goto LABEL_14;
  }

  if (self->_beginObserver == v5)
  {
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315394;
      *&v14[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v14[12] = 2112;
      *&v14[14] = v6;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor Begin (%@)", v14, 0x16u);
    }

    [(AFMyriadMonitor *)self _setDecisionIsPending];
    goto LABEL_15;
  }

  if (self->_repostedWonObserver == v5)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315394;
      *&v14[4] = "[AFMyriadMonitor notifyObserver:didReceiveNotificationWithToken:]";
      *&v14[12] = 2112;
      *&v14[14] = v6;
      v8 = "%s Myriad Delay Monitor received reposted result: YES (%@)";
LABEL_9:
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, v8, v14, 0x16u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

LABEL_16:

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_deregisterFromRepostedDecisionResultsObservers
{
  v9 = *MEMORY[0x1E69E9840];
  [(AFMyriadMonitor *)self _cancelRepostedMyriadDecisionTimer];
  repostedWonObserver = self->_repostedWonObserver;
  if (repostedWonObserver)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[AFMyriadMonitor _deregisterFromRepostedDecisionResultsObservers]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Deregistering from reposted Myriad event notification.", &v7, 0xCu);
      repostedWonObserver = self->_repostedWonObserver;
    }

    [(AFNotifyObserver *)repostedWonObserver invalidate];
    v5 = self->_repostedWonObserver;
    self->_repostedWonObserver = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_deregisterFromMyriadEventNotifications
{
  v11 = *MEMORY[0x1E69E9840];
  beginObserver = self->_beginObserver;
  if (*&self->_beginObserver != 0 || self->_lostObserver)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[AFMyriadMonitor _deregisterFromMyriadEventNotifications]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Deregistering from Myriad event notifications.", &v9, 0xCu);
      beginObserver = self->_beginObserver;
    }

    [(AFNotifyObserver *)beginObserver invalidate];
    v5 = self->_beginObserver;
    self->_beginObserver = 0;

    [(AFNotifyObserver *)self->_wonObserver invalidate];
    wonObserver = self->_wonObserver;
    self->_wonObserver = 0;

    [(AFNotifyObserver *)self->_lostObserver invalidate];
    lostObserver = self->_lostObserver;
    self->_lostObserver = 0;

    self->_isRegisteredForMyriadEventNotification = 0;
    [(AFMyriadMonitor *)self _deregisterFromRepostedDecisionResultsObservers];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_fetchCurrentMyriadDecisionWithWaitTime:(double)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_ignoreRepostMyriadNotification)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[AFMyriadMonitor _fetchCurrentMyriadDecisionWithWaitTime:]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Ignoring Myriad repost notifications.", buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v7 = [AFWatchdogTimer alloc];
    myriadMonitorQueue = self->_myriadMonitorQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__AFMyriadMonitor__fetchCurrentMyriadDecisionWithWaitTime___block_invoke;
    v11[3] = &unk_1E73497C8;
    v11[4] = self;
    v4 = [(AFWatchdogTimer *)v7 initWithTimeoutInterval:myriadMonitorQueue onQueue:v11 timeoutHandler:a3];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

void __59__AFMyriadMonitor__fetchCurrentMyriadDecisionWithWaitTime___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1 && (*(v1 + 97) & 1) == 0 && *(v1 + 56))
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[AFMyriadMonitor _fetchCurrentMyriadDecisionWithWaitTime:]_block_invoke";
      _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Fetching reposted Myriad event notification.", &v5, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.get.decision", 0, 0, 1u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_cancelRepostedMyriadDecisionTimer
{
  fetchRepostedMyriadDecisionTimer = self->_fetchRepostedMyriadDecisionTimer;
  if (fetchRepostedMyriadDecisionTimer)
  {
    [(AFWatchdogTimer *)fetchRepostedMyriadDecisionTimer cancelIfNotAlreadyCanceled];
    v4 = self->_fetchRepostedMyriadDecisionTimer;
    self->_fetchRepostedMyriadDecisionTimer = 0;
  }
}

- (void)_registerForMyriadEvents
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = observerWithNotificationName("com.apple.siri.myriad.decision.begin", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  beginObserver = self->_beginObserver;
  self->_beginObserver = v3;

  v5 = observerWithNotificationName("com.apple.siri.myriad.decision.won", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  wonObserver = self->_wonObserver;
  self->_wonObserver = v5;

  v7 = observerWithNotificationName("com.apple.siri.myriad.decision.lost", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  lostObserver = self->_lostObserver;
  self->_lostObserver = v7;

  v9 = observerWithNotificationName("com.apple.siri.myriad.repost.decision.won", self->_instanceContext, 1, self, self->_myriadMonitorQueue);
  repostedWonObserver = self->_repostedWonObserver;
  self->_repostedWonObserver = v9;

  self->_isRegisteredForMyriadEventNotification = 1;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = self->_beginObserver;
    v13 = self->_wonObserver;
    v14 = self->_lostObserver;
    v15 = self->_repostedWonObserver;
    v17 = 136316162;
    v18 = "[AFMyriadMonitor _registerForMyriadEvents]";
    v19 = 2048;
    v20 = v12;
    v21 = 2048;
    v22 = v13;
    v23 = 2048;
    v24 = v14;
    v25 = 2048;
    v26 = v15;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Registering for Myriad event notifications (beginObserver: %p, wonObserver: %p, lostObserver: %p, decisionRepostObserver: %p).", &v17, 0x34u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_myriadStateToString:(int64_t)a3
{
  if (a3 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73439E0[a3];
  }
}

- (void)dealloc
{
  [(AFNotifyObserver *)self->_wonObserver invalidate];
  [(AFNotifyObserver *)self->_lostObserver invalidate];
  v3.receiver = self;
  v3.super_class = AFMyriadMonitor;
  [(AFMyriadMonitor *)&v3 dealloc];
}

- (BOOL)didWin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__AFMyriadMonitor_didWin__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadMonitorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__AFMyriadMonitor_didWin__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v1 + 97);
  }

  *(*(*(result + 40) + 8) + 24) = v4 & 1;
  return result;
}

- (BOOL)isMonitoring
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AFMyriadMonitor_isMonitoring__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadMonitorQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)stopMonitoring
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AFMyriadMonitor_stopMonitoring__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadMonitorQueue, block);
}

_BYTE *__33__AFMyriadMonitor_stopMonitoring__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 98) = 0;
  result = *(a1 + 32);
  if (result[96] == 1)
  {
    [result _deregisterFromMyriadEventNotifications];
    v3 = *(a1 + 32);

    return [v3 _clear];
  }

  return result;
}

- (void)dequeueBlocksWaitingForMyriadDecision
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AFMyriadMonitor_dequeueBlocksWaitingForMyriadDecision__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadMonitorQueue, block);
}

uint64_t __56__AFMyriadMonitor_dequeueBlocksWaitingForMyriadDecision__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFMyriadMonitor dequeueBlocksWaitingForMyriadDecision]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  result = [*(a1 + 32) _dequeueBlocksWithSignal:-1000];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)ignoreMyriadEvents:(BOOL)a3
{
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__AFMyriadMonitor_ignoreMyriadEvents___block_invoke;
  v4[3] = &unk_1E7347F98;
  v5 = a3;
  v4[4] = self;
  dispatch_async(myriadMonitorQueue, v4);
}

void __38__AFMyriadMonitor_ignoreMyriadEvents___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[AFMyriadMonitor ignoreMyriadEvents:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s Myriad Delay Monitor: Should ignoring Myriad events -> %d.", &v6, 0x12u);
  }

  v4 = *(a1 + 40);
  *(*(a1 + 32) + 97) = v4;
  if (v4 == 1)
  {
    [*(a1 + 32) _deregisterFromRepostedDecisionResultsObservers];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startMonitoringWithTimeoutInterval:(double)a3 instanceContext:(id)a4
{
  v6 = a4;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AFMyriadMonitor_startMonitoringWithTimeoutInterval_instanceContext___block_invoke;
  block[3] = &unk_1E73484C0;
  v12 = a3;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(myriadMonitorQueue, block);
}

void __70__AFMyriadMonitor_startMonitoringWithTimeoutInterval_instanceContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[AFMyriadMonitor startMonitoringWithTimeoutInterval:instanceContext:]_block_invoke";
    v12 = 2048;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE delay monitor watchdog timeout %f context %@", &v10, 0x20u);
  }

  *(*(a1 + 40) + 98) = 1;
  v5 = *(a1 + 40);
  if ((*(v5 + 96) & 1) == 0)
  {
    objc_storeStrong((v5 + 16), *(a1 + 32));
    *(*(a1 + 40) + 88) = *(a1 + 48);
    [*(a1 + 40) _registerForMyriadEvents];
    [*(a1 + 40) _setDecisionIsPending];
    [*(a1 + 40) _cancelRepostedMyriadDecisionTimer];
    v6 = [*(a1 + 40) _fetchCurrentMyriadDecisionWithWaitTime:1.75];
    v7 = *(a1 + 40);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    [*(*(a1 + 40) + 72) start];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)waitForMyriadDecisionForReason:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFMyriadMonitor_waitForMyriadDecisionForReason_withCompletion___block_invoke;
  block[3] = &unk_1E73496E8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(myriadMonitorQueue, block);
}

- (void)_enqueueBlock:(id)a3 forReason:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = @"Unspecified";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
    state = self->_state;
    if (state == 1 && !self->_ignoreMyriadEvents)
    {
      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [(AFMyriadMonitor *)self _myriadStateToString:1];
        *buf = 136315650;
        v28 = "[AFMyriadMonitor _enqueueBlock:forReason:]";
        v29 = 2112;
        v30 = v17;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s Queueing command waiting for Myriad decision: %@ (reason = %@).", buf, 0x20u);
      }

      Current = CFAbsoluteTimeGetCurrent();
      completions = self->_completions;
      v20 = [AFSafetyBlock alloc];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __43__AFMyriadMonitor__enqueueBlock_forReason___block_invoke;
      v23[3] = &unk_1E73439C0;
      v26 = Current;
      v24 = v10;
      v25 = v6;
      v21 = [(AFSafetyBlock *)v20 initWithBlock:v23];
      [(AFQueue *)completions enqueueObject:v21];
    }

    else
    {
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [(AFMyriadMonitor *)self _myriadStateToString:state];
        *buf = 136315650;
        v28 = "[AFMyriadMonitor _enqueueBlock:forReason:]";
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s Dequeueing command for Myriad decision: %@ (reason = %@).", buf, 0x20u);
      }

      if (self->_ignoreMyriadEvents)
      {
        (*(v6 + 2))(v6, 1);
      }

      else
      {
        (*(v6 + 2))(v6, self->_state != 2);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __43__AFMyriadMonitor__enqueueBlock_forReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v7 = *(a1 + 32);
    v10 = 136315906;
    v11 = "[AFMyriadMonitor _enqueueBlock:forReason:]_block_invoke";
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = a2;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s Dequeuing after %f seconds for Myriad decision (reason = %@) and dequeue signal %zd.", &v10, 0x2Au);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 0);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)waitForMyriadDecisionWithCompletion:(id)a3
{
  v4 = a3;
  myriadMonitorQueue = self->_myriadMonitorQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AFMyriadMonitor_waitForMyriadDecisionWithCompletion___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadMonitorQueue, v7);
}

- (AFMyriadMonitor)init
{
  v12.receiver = self;
  v12.super_class = AFMyriadMonitor;
  v2 = [(AFMyriadMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.assistant.myriad.delay_monitor", v5);
    myriadMonitorQueue = v3->_myriadMonitorQueue;
    v3->_myriadMonitorQueue = v6;

    v8 = objc_alloc_init(AFQueue);
    completions = v3->_completions;
    v3->_completions = v8;

    *&v3->_isRegisteredForMyriadEventNotification = 0;
    v10 = v3;
  }

  return v3;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global_11529);
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

void __32__AFMyriadMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(AFMyriadMonitor);
  v1 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v0;
}

@end