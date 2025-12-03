@interface ContinuityCaptureShieldUIBaseViewController
+ (BOOL)_refreshConnectionType;
+ (BOOL)_refreshUIState;
- (ContinuityCaptureShieldUIBaseViewController)initWithSceneSessionRole:(id)role;
- (void)_tearDownShield;
- (void)dealloc;
- (void)disconnectSession;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)tearDownShield;
- (void)viewDidLoad;
@end

@implementation ContinuityCaptureShieldUIBaseViewController

+ (BOOL)_refreshUIState
{
  v3 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  activeConfiguration = [v3 activeConfiguration];

  if (!activeConfiguration)
  {
    v13 = 0;
    goto LABEL_18;
  }

  compositeState = [activeConfiguration compositeState];
  v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  uiState = [v6 uiState];

  placementStepSkipped = [activeConfiguration placementStepSkipped];
  v9 = placementStepSkipped;
  if (placementStepSkipped && ([placementStepSkipped BOOLValue] & 1) == 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 5;
    goto LABEL_15;
  }

  if (compositeState)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 2;
    goto LABEL_15;
  }

  if ((compositeState & 8) != 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    v12 = 0;
    goto LABEL_15;
  }

  if ((compositeState & 0x10) != 0)
  {
    v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v11 = v10;
    goto LABEL_14;
  }

  v10 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  v11 = v10;
  if (!compositeState)
  {
LABEL_14:
    v12 = 4;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_15:
  [v10 setUiState:v12];

  v14 = +[CMContinuityCaptureUIStateTracker sharedInstance];
  uiState2 = [v14 uiState];
  v13 = uiState != uiState2;

  v16 = sub_100005368();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = uiState != uiState2;
    v18 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    v20 = 136316162;
    v21 = "+[ContinuityCaptureShieldUIBaseViewController _refreshUIState]";
    v22 = 2112;
    selfCopy = self;
    v24 = 1024;
    v25 = uiState;
    v26 = 1024;
    uiState3 = [v18 uiState];
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
  activeConfiguration = [v3 activeConfiguration];

  if (activeConfiguration)
  {
    compositeState = [activeConfiguration compositeState];
    v6 = +[CMContinuityCaptureUIStateTracker sharedInstance];
    connectionType = [v6 connectionType];

    if ((compositeState & 6) == 2)
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = v8;
      v10 = 1;
    }

    else
    {
      v8 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v9 = v8;
      if ((compositeState & 4) != 0)
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
    connectionType2 = [v12 connectionType];
    v11 = connectionType != connectionType2;

    v14 = sub_100005368();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = connectionType != connectionType2;
      v16 = +[CMContinuityCaptureUIStateTracker sharedInstance];
      v18 = 136316162;
      v19 = "+[ContinuityCaptureShieldUIBaseViewController _refreshConnectionType]";
      v20 = 2112;
      selfCopy = self;
      v22 = 1024;
      v23 = connectionType;
      v24 = 1024;
      connectionType3 = [v16 connectionType];
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

- (ContinuityCaptureShieldUIBaseViewController)initWithSceneSessionRole:(id)role
{
  roleCopy = role;
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

    objc_storeStrong(&v6->_sessionRole, role);
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
    selfCopy = self;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveKVOKey])
  {
    v13 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];
    if ([v13 BOOLValue])
    {
    }

    else
    {
      v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeOldKey];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
      {
        [(ContinuityCaptureShieldUIBaseViewController *)self tearDownShield];
      }
    }
  }

  else
  {
    if ([pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveConfigurationKVOKey])
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
      if (![pathCopy isEqualToString:CMContinuityCaptureUIStateTrackerActiveFaceTimeContinuitySessionKVOKey])
      {
        v17.receiver = self;
        v17.super_class = ContinuityCaptureShieldUIBaseViewController;
        [(ContinuityCaptureShieldUIBaseViewController *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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
  _FBSScene = sub_100005368();
  v5 = os_log_type_enabled(_FBSScene, OS_LOG_TYPE_DEFAULT);
  if (terminated)
  {
    if (v5)
    {
      *buf = 136315394;
      v23 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
      v24 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, _FBSScene, OS_LOG_TYPE_DEFAULT, "%s: %@ termination in progress", buf, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136315394;
      v23 = "[ContinuityCaptureShieldUIBaseViewController tearDownShield]";
      v24 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, _FBSScene, OS_LOG_TYPE_DEFAULT, "%s: %@ Tearing down shieldUI", buf, 0x16u);
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

    view = [(ContinuityCaptureShieldUIBaseViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    _FBSScene = [windowScene _FBSScene];

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
      v20 = _FBSScene;
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
        selfCopy2 = _FBSScene;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: destroy scene: %@ in unlock mode", buf, 0x16u);
      }

      v17 = [NSSet setWithObject:v14];
      [_FBSScene sendActions:v17];
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
    selfCopy = self;
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