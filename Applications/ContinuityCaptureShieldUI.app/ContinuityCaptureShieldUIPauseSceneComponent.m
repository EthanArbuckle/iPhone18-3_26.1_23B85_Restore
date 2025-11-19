@interface ContinuityCaptureShieldUIPauseSceneComponent
- (ContinuityCaptureShieldUIPauseSceneComponent)initWithScene:(id)a3;
- (UIScene)_scene;
- (void)_recalculateState;
- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)_sceneWillInvalidate:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sceneDidEnterBackground:(id)a3;
@end

@implementation ContinuityCaptureShieldUIPauseSceneComponent

- (ContinuityCaptureShieldUIPauseSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ContinuityCaptureShieldUIPauseSceneComponent;
  v5 = [(ContinuityCaptureShieldUIPauseSceneComponent *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    v6->_previousState = [v4 activationState];
    v7 = +[ContinuityCaptureRemoteUIPowerButtonStatus sharedInstance];
    [v7 addObserver:v6 forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey options:3 context:0];

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    debounceSource = v6->_debounceSource;
    v6->_debounceSource = v8;

    objc_initWeak(&location, v6);
    v10 = v6->_debounceSource;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100006758;
    v17 = &unk_1000185D0;
    objc_copyWeak(&v18, &location);
    dispatch_source_set_event_handler(v10, &v14);
    dispatch_activate(v6->_debounceSource);
    v11 = [NSNotificationCenter defaultCenter:v14];
    WeakRetained = objc_loadWeakRetained(&v6->_scene);
    [v11 addObserver:v6 selector:"sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:WeakRetained];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey;
  v13 = a5;
  if ([v10 isEqualToString:v12])
  {
    v14 = [v13 objectForKeyedSubscript:NSKeyValueChangeNewKey];

    if ([v14 BOOLValue])
    {
      v15 = sub_100006DC0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v18 = "[ContinuityCaptureShieldUIPauseSceneComponent observeValueForKeyPath:ofObject:change:context:]";
        v19 = 2048;
        v20 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: <%p> power button pressed, cancelling background timer", buf, 0x16u);
      }

      [(ContinuityCaptureShieldUIPauseSceneComponent *)self _cancelCurrentDebounceTimer];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ContinuityCaptureShieldUIPauseSceneComponent;
    [(ContinuityCaptureShieldUIPauseSceneComponent *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v13 context:a6];
    v14 = v13;
  }
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = sub_100006DC0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ContinuityCaptureShieldUIPauseSceneComponent sceneDidEnterBackground:]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: <%p> scene entered background, recalculate pause state", &v5, 0x16u);
  }

  [(ContinuityCaptureShieldUIPauseSceneComponent *)self _recalculateState];
  [(ContinuityCaptureShieldUIPauseSceneComponent *)self _cancelCurrentDebounceTimer];
}

- (void)_sceneWillInvalidate:(id)a3
{
  v4 = +[ContinuityCaptureRemoteUIPowerButtonStatus sharedInstance];
  [v4 removeObserver:self forKeyPath:CMContinuityCaptureSystemStatusPowerButtonPressedKVOKey context:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];
}

- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  v8 = sub_100006DC0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ABA8(self, a4, v8);
  }

  self->_reasonsMask = a5;
  if (a4)
  {
    v9 = 500000000;
  }

  else
  {
    v9 = 100000000;
  }

  v10 = dispatch_time(0, v9);
  dispatch_source_set_timer(self->_debounceSource, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_recalculateState
{
  previousState = self->_previousState;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v5 = [WeakRetained activationState];

  self->_previousState = v5;
  v6 = sub_100006DC0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    reasonsMask = self->_reasonsMask;
    v8 = UIApplicationSceneDeactivationReasonMaskDescriptionComponents();
    v13 = 136316162;
    v14 = "[ContinuityCaptureShieldUIPauseSceneComponent _recalculateState]";
    v15 = 2048;
    v16 = self;
    v17 = 2048;
    v18 = previousState;
    v19 = 2048;
    v20 = v5;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: <%p> previousState:%zu currentState:%zu deactivationReasons:%@", &v13, 0x34u);
  }

  if (v5 != previousState)
  {
    if (v5 <= 0)
    {
      if (v5 != -1)
      {
        if (v5)
        {
          return;
        }

        v9 = sub_100006DC0();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315394;
          v14 = "[ContinuityCaptureShieldUIPauseSceneComponent _recalculateState]";
          v15 = 2048;
          v16 = self;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: <%p> send resume event", &v13, 0x16u);
        }

        v10 = +[ContinuityCaptureShieldUIBackgroundPauseManager sharedInstance];
        [v10 requestDefaultScreenResumeEvent:1];
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        return;
      }

LABEL_12:
      v11 = sub_100006DC0();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_15:

        v10 = +[ContinuityCaptureShieldUIBackgroundPauseManager sharedInstance];
        [v10 requestDefaultScreenPauseEvent:1];
LABEL_16:

        return;
      }

      v13 = 136315394;
      v14 = "[ContinuityCaptureShieldUIPauseSceneComponent _recalculateState]";
      v15 = 2048;
      v16 = self;
      v12 = "%s: <%p> send pause event - backgrounded";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v13, 0x16u);
      goto LABEL_15;
    }

    if ([(ContinuityCaptureShieldUIPauseSceneComponent *)self _shouldPauseForDeactivationReasonMask:self->_reasonsMask])
    {
      v11 = sub_100006DC0();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v13 = 136315394;
      v14 = "[ContinuityCaptureShieldUIPauseSceneComponent _recalculateState]";
      v15 = 2048;
      v16 = self;
      v12 = "%s: <%p> send pause event - foregroundInactive";
      goto LABEL_14;
    }
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end