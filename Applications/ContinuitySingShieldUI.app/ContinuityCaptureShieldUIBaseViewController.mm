@interface ContinuityCaptureShieldUIBaseViewController
+ (BOOL)_refreshConnectionType;
+ (BOOL)_refreshUIState;
- (ContinuityCaptureShieldUIBaseViewController)initWithSceneSessionRole:(id)a3;
- (void)_tearDownShield;
- (void)dealloc;
- (void)disconnectSession;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)tearDownShield;
- (void)viewDidLoad;
@end

@implementation ContinuityCaptureShieldUIBaseViewController

+ (BOOL)_refreshUIState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v4 = [v3 activeConfiguration];

  if (!v4)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v5 = [v4 compositeState];
  v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v7 = [v6 uiState];

  v8 = [v4 placementStepSkipped];
  v9 = v8;
  if (v8 && ([v8 BOOLValue] & 1) == 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 5;
    goto LABEL_15;
  }

  if (v5)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 2;
    goto LABEL_15;
  }

  if ((v5 & 8) != 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 0;
    goto LABEL_15;
  }

  if ((v5 & 0x10) != 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    goto LABEL_14;
  }

  v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v11 = v10;
  if (!v5)
  {
LABEL_14:
    v12 = 4;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_15:
  [v10 setUiState:v12];

  v14 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v15 = [v14 uiState];
  v13 = v7 != v15;

  v16 = sub_100005368();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v7 != v15;
    v18 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v20 = 136316162;
    v21 = "+[ContinuityCaptureShieldUIBaseViewController _refreshUIState]";
    v22 = 2112;
    v23 = a1;
    v24 = 1024;
    v25 = v7;
    v26 = 1024;
    v27 = [v18 uiState];
    v28 = 1024;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: %@ updated uiState (%d -> %d) refresh %d", &v20, 0x28u);
  }

LABEL_18:
  return v13;
}

+ (BOOL)_refreshConnectionType
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v4 = [v3 activeConfiguration];

  if (v4)
  {
    v5 = [v4 compositeState];
    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v7 = [v6 connectionType];

    if ((v5 & 6) == 2)
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = v8;
      v10 = 1;
    }

    else
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = v8;
      if ((v5 & 4) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }
    }

    [v8 setConnectionType:v10];

    v12 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v13 = [v12 connectionType];
    v11 = v7 != v13;

    v14 = sub_100005368();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v7 != v13;
      v16 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v18 = 136316162;
      v19 = "+[ContinuityCaptureShieldUIBaseViewController _refreshConnectionType]";
      v20 = 2112;
      v21 = a1;
      v22 = 1024;
      v23 = v7;
      v24 = 1024;
      v25 = [v16 connectionType];
      v26 = 1024;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s: %@ updated connectionType (%d -> %d) refresh %d", &v18, 0x28u);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ContinuityCaptureShieldUIBaseViewController)initWithSceneSessionRole:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = ContinuityCaptureShieldUIBaseViewController;
  v6 = [(ContinuityCaptureShieldUIBaseViewController *)&v16 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = sub_100005368();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[ContinuityCaptureShieldUIBaseViewController initWithSceneSessionRole:]";
      v14 = 2048;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: <%p> Called", &v12, 0x16u);
    }

    objc_storeStrong(&v6->_sessionRole, a3);
    v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v8 addObserver:v6 forKeyPath:CMContinuityCaptureUIStateTrackerActiveKVOKey options:3 context:0];

    v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v9 addObserver:v6 forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey options:3 context:0];

    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v10 addObserver:v6 forKeyPath:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey options:3 context:0];

    atomic_store(1u, &v6->_observingKVO);
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_100005368();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "[ContinuityCaptureShieldUIBaseViewController dealloc]";
    v11 = 2048;
    v12 = self;
    v13 = 2080;
    v14 = "[ContinuityCaptureShieldUIBaseViewController dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s: <%p> %s", buf, 0x20u);
  }

  v4 = atomic_load(&self->_observingKVO);
  if (v4)
  {
    v5 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v5 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveKVOKey context:0];

    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v6 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey context:0];

    v7 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    [v7 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey context:0];

    atomic_store(0, &self->_observingKVO);
  }

  v8.receiver = self;
  v8.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ContinuityCaptureShieldUIBaseViewController;
  [(ContinuityCaptureShieldUIBaseViewController *)&v3 viewDidLoad];
  [(ContinuityCaptureShieldUIBaseViewController *)self updateUI];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:CMContinuityCaptureUIStateTrackerActiveKVOKey])
  {
    v13 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if ([v13 BOOLValue])
    {
    }

    else
    {
      v15 = [v12 objectForKeyedSubscript:NSKeyValueChangeOldKey];
      v16 = [v15 BOOLValue];

      if (v16)
      {
        [(ContinuityCaptureShieldUIBaseViewController *)self tearDownShield];
      }
    }
  }

  else
  {
    if ([v10 isEqualToString:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey])
    {
      +[ContinuityCaptureShieldUIBaseViewController _refreshUIState];
      +[ContinuityCaptureShieldUIBaseViewController _refreshConnectionType];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100009DEC;
      v19[3] = &unk_1000187D8;
      v19[4] = self;
      v14 = v19;
    }

    else
    {
      if (![v10 isEqualToString:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey])
      {
        v17.receiver = self;
        v17.super_class = ContinuityCaptureShieldUIBaseViewController;
        [(ContinuityCaptureShieldUIBaseViewController *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
        goto LABEL_12;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009E84;
      block[3] = &unk_1000187D8;
      block[4] = self;
      v14 = block;
    }

    dispatch_async(&_dispatch_main_q, v14);
  }

LABEL_12:
}

- (void)_tearDownShield
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009F94;
  block[3] = &unk_1000187D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)tearDownShield
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  terminated = self->_terminated;
  v4 = sub_100005368();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (terminated)
  {
    if (v5)
    {
      *buf = 136315394;
      v23 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
      v24 = 2112;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@ termination in progress", buf, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v23 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
      v24 = 2112;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: %@ Tearing down shieldUI", buf, 0x16u);
    }

    self->_terminated = 1;
    v6 = atomic_load(&self->_observingKVO);
    if (v6)
    {
      v7 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      [v7 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveKVOKey context:0];

      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      [v8 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey context:0];

      v9 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      [v9 removeObserver:self forKeyPath:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey context:0];

      atomic_store(0, &self->_observingKVO);
    }

    v10 = +[ContinuityCaptureShieldUIBackgroundActivityManager sharedInstance];
    [v10 updateState:16];

    v11 = [(ContinuityCaptureShieldUIBaseViewController *)self view];
    v12 = [v11 window];
    v13 = [v12 windowScene];
    v4 = [v13 _FBSScene];

    v14 = [[UIDestroySceneAction alloc] initWithPersistedIdentifiers:0 preferredAnimationType:1 forDestroyingSession:1 userOriginatedRequest:0 callbackQueue:&_dispatch_main_q completion:&stru_100018818];
    if ([(ContinuityCaptureShieldUIBaseViewController *)self isOnLockScreen])
    {
      if (self->_disconnectReason != 1)
      {
        v15 = objc_opt_new();
        [v15 lockDeviceAnimated:1 withCompletion:0];
        [v15 invalidate];
      }

      v16 = dispatch_time(0, 2000000000);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000A420;
      v19[3] = &unk_100018840;
      v20 = v4;
      v21 = v14;
      dispatch_after(v16, &_dispatch_main_q, v19);

      v17 = v20;
    }

    else
    {
      v18 = sub_100005368();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: destroy scene: %@ in unlock mode", buf, 0x16u);
      }

      v17 = [NSSet setWithObject:v14];
      [v4 sendActions:v17];
    }
  }
}

- (void)disconnectSession
{
  v3 = sub_100005368();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = "[ContinuityCaptureShieldUIBaseViewController disconnectSession]";
    v10 = 2112;
    v11 = self;
    v12 = 2080;
    v13 = "[ContinuityCaptureShieldUIBaseViewController disconnectSession]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s:  %@ %s", buf, 0x20u);
  }

  v4 = +[CMContinuityCaptureXPCClientCCD sharedInstance];
  [v4 disconnectSession];

  objc_initWeak(buf, self);
  v5 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A620;
  block[3] = &unk_100018738;
  objc_copyWeak(&v7, buf);
  dispatch_after(v5, &_dispatch_main_q, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

@end