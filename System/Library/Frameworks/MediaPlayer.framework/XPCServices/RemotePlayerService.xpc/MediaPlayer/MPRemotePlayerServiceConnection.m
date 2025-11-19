@interface MPRemotePlayerServiceConnection
- (BOOL)_shouldPreventSuspensionForBackgroundPlayback;
- (MPRemotePlayerServiceConnection)initWithConnection:(id)a3 bundleID:(id)a4 pid:(int)a5 playbackEngine:(id)a6;
- (NSXPCConnection)connection;
- (void)_cancelAssertionInvalidationTimerWithReason:(id)a3;
- (void)_startAssertionInvalidationTimerWithEventHandler:(id)a3;
- (void)_updateProcessAssertion;
- (void)dealloc;
- (void)getServerEndpointWithReply:(id)a3;
- (void)setWantsReverseProcessAssertion:(BOOL)a3;
@end

@implementation MPRemotePlayerServiceConnection

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)_cancelAssertionInvalidationTimerWithReason:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MPRemotePlayerService.m" lineNumber:253 description:@"Must provide a reason for logging."];
  }

  if (self->_assertionInvalidationTimer)
  {
    v6 = sub_1000012BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      assertionInvalidationTimer = self->_assertionInvalidationTimer;
      v10 = 134218498;
      v11 = self;
      v12 = 2048;
      v13 = assertionInvalidationTimer;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "MPRemotePlayerService: %p: canceled assertion invalidation timer %p [%{public}@]", &v10, 0x20u);
    }

    dispatch_source_cancel(self->_assertionInvalidationTimer);
    v7 = self->_assertionInvalidationTimer;
    self->_assertionInvalidationTimer = 0;
  }
}

- (void)_startAssertionInvalidationTimerWithEventHandler:(id)a3
{
  v5 = a3;
  if (self->_assertionInvalidationTimer)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPRemotePlayerService.m" lineNumber:243 description:@"Cancel existing timer before starting a new one."];
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  assertionInvalidationTimer = self->_assertionInvalidationTimer;
  self->_assertionInvalidationTimer = v6;

  v8 = self->_assertionInvalidationTimer;
  v9 = dispatch_time(0, 3000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  dispatch_source_set_event_handler(self->_assertionInvalidationTimer, v5);
  dispatch_resume(self->_assertionInvalidationTimer);
  v10 = sub_1000012BC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_assertionInvalidationTimer;
    v13 = 134218240;
    v14 = self;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MPRemotePlayerService: %p: started assertion invalidation timer %p", &v13, 0x16u);
  }
}

- (BOOL)_shouldPreventSuspensionForBackgroundPlayback
{
  if (self->_wantsProcessAssertion)
  {
    state = self->_state;
    v4 = state == 1 || state == 1000;
    return self->_supportsBackgroundAudio && v4;
  }

  else
  {
    return 0;
  }
}

- (void)_updateProcessAssertion
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_processAssertion)
  {
    if (self->_connectionInvalidated)
    {
      [(MPRemotePlayerServiceConnection *)self _cancelAssertionInvalidationTimerWithReason:@"connection invalidated"];
      v3 = sub_1000012BC();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        processAssertion = self->_processAssertion;
        pid = self->_pid;
        *buf = 134218496;
        v13 = self;
        v14 = 2048;
        v15 = processAssertion;
        v16 = 1024;
        v17 = pid;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "MPRemotePlayerService: %p: invalidated process assertion %p for %d [connection invalidated]", buf, 0x1Cu);
      }

      [(BKSProcessAssertion *)self->_processAssertion invalidate];
      v4 = self->_processAssertion;
      self->_processAssertion = 0;
LABEL_11:

      return;
    }

    if ([(MPRemotePlayerServiceConnection *)self _shouldPreventSuspensionForBackgroundPlayback])
    {
LABEL_9:
      if (self->_processAssertion)
      {
        return;
      }

      v5 = [BKSProcessAssertion alloc];
      v6 = self->_pid;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100001718;
      v11[3] = &unk_100008320;
      v11[4] = self;
      v7 = [v5 initWithPID:v6 flags:1 reason:1 name:@"MPMusicPlayerController/applicationMusicPlayer/notifications" withHandler:v11];
      v4 = self->_processAssertion;
      self->_processAssertion = v7;
      goto LABEL_11;
    }

    [(MPRemotePlayerServiceConnection *)self _cancelAssertionInvalidationTimerWithReason:@"reset invalidation window"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000186C;
    v10[3] = &unk_100008280;
    v10[4] = self;
    [(MPRemotePlayerServiceConnection *)self _startAssertionInvalidationTimerWithEventHandler:v10];
  }

  else if ([(MPRemotePlayerServiceConnection *)self _shouldPreventSuspensionForBackgroundPlayback])
  {
    goto LABEL_9;
  }
}

- (void)setWantsReverseProcessAssertion:(BOOL)a3
{
  v5 = sub_100001A28();
  v6 = [v5 beginTaskWithName:@"setWantsReverseProcessAssertion" expirationHandler:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001B90;
  block[3] = &unk_1000082F8;
  v8 = a3;
  block[4] = self;
  block[5] = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)getServerEndpointWithReply:(id)a3
{
  v4 = a3;
  v5 = sub_100001A28();
  v6 = [v5 beginTaskWithName:@"getServerEndpointWithReply" expirationHandler:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F58;
  block[3] = &unk_1000082D0;
  block[4] = self;
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_stateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MPRemotePlayerServiceConnection;
  [(MPRemotePlayerServiceConnection *)&v3 dealloc];
}

- (MPRemotePlayerServiceConnection)initWithConnection:(id)a3 bundleID:(id)a4 pid:(int)a5 playbackEngine:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v28.receiver = self;
  v28.super_class = MPRemotePlayerServiceConnection;
  v13 = [(MPRemotePlayerServiceConnection *)&v28 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_bundleID, a4);
    v14->_pid = a5;
    objc_storeStrong(&v14->_playbackEngine, a6);
    [(MPCPlaybackEngine *)v14->_playbackEngine addEngineObserver:v14];
    objc_storeWeak(&v14->_connection, v10);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100002360;
    v25[3] = &unk_100008258;
    v15 = v14;
    v26 = v15;
    v16 = v12;
    v27 = v16;
    [v10 setInvalidationHandler:v25];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v15 selector:"_mediaServicesReset:" name:AVAudioSessionMediaServicesWereResetNotification object:0];

    [(MPRemotePlayerServiceConnection *)v15 _mediaServicesReset:0];
    v18 = [BKSApplicationStateMonitor alloc];
    v29 = v11;
    v19 = [NSArray arrayWithObjects:&v29 count:1];
    v20 = [v18 initWithBundleIDs:v19 states:BKSApplicationStateAll];

    v21 = [v20 bundleInfoValueForKey:@"UIBackgroundModes" PID:v14->_pid];
    v15->_supportsBackgroundAudio = [v21 containsObject:@"audio"];

    if (v15->_supportsBackgroundAudio)
    {
      [v20 invalidate];
    }

    else
    {
      objc_storeStrong(&v15->_stateMonitor, v20);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100002404;
      v23[3] = &unk_1000082A8;
      v24 = v16;
      [(BKSApplicationStateMonitor *)v15->_stateMonitor setHandler:v23];
    }
  }

  return v14;
}

@end