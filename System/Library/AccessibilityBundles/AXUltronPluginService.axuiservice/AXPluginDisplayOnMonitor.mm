@interface AXPluginDisplayOnMonitor
- (AXPluginDisplayOnMonitor)init;
- (AXPluginDisplayOnMonitorDelegate)delegate;
- (BOOL)_queryIsDisplayOn;
- (void)_registerForSpringboardNotifications;
- (void)_startMonitoring;
- (void)_unregisterForSpringboardNotifications;
- (void)_updateDisplayOnState;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)setDisplayOn:(BOOL)a3;
@end

@implementation AXPluginDisplayOnMonitor

- (AXPluginDisplayOnMonitor)init
{
  v5.receiver = self;
  v5.super_class = AXPluginDisplayOnMonitor;
  v2 = [(AXPluginDisplayOnMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXPluginDisplayOnMonitor *)v2 setNotifyToken:0xFFFFFFFFLL];
  }

  return v3;
}

- (void)dealloc
{
  [(AXPluginDisplayOnMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = AXPluginDisplayOnMonitor;
  [(AXPluginDisplayOnMonitor *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  if (a3)
  {

    [(AXPluginDisplayOnMonitor *)self _startMonitoring];
  }

  else
  {

    [(AXPluginDisplayOnMonitor *)self _stopMonitoring];
  }
}

- (void)_startMonitoring
{
  [(AXPluginDisplayOnMonitor *)self _registerForSpringboardNotifications];

  [(AXPluginDisplayOnMonitor *)self _updateDisplayOnState];
}

- (void)setDisplayOn:(BOOL)a3
{
  if (self->_displayOn != a3)
  {
    self->_displayOn = a3;
    v5 = [(AXPluginDisplayOnMonitor *)self delegate];
    [v5 displayOnMonitor:self didReceiveDisplayOnStateChanged:{-[AXPluginDisplayOnMonitor isDisplayOn](self, "isDisplayOn")}];
  }
}

- (void)_updateDisplayOnState
{
  v3 = [(AXPluginDisplayOnMonitor *)self _queryIsDisplayOn];

  [(AXPluginDisplayOnMonitor *)self setDisplayOn:v3];
}

- (BOOL)_queryIsDisplayOn
{
  state64 = 0;
  state = notify_get_state([(AXPluginDisplayOnMonitor *)self notifyToken], &state64);
  if (state)
  {
    goto LABEL_2;
  }

  if (!state64)
  {
    return 1;
  }

  if (state64 != 1)
  {
LABEL_2:
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_3098(state, &state64, v3);
    }

    return 1;
  }

  return 0;
}

- (void)_registerForSpringboardNotifications
{
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_142C;
  v8[3] = &unk_8260;
  objc_copyWeak(&v9, &location);
  v3 = objc_retainBlock(v8);
  out_token = 0;
  v4 = &_dispatch_main_q;
  v5 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &out_token, &_dispatch_main_q, v3);

  [(AXPluginDisplayOnMonitor *)self setNotifyToken:out_token];
  if (v5)
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_316C(v6);
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_unregisterForSpringboardNotifications
{
  if (notify_is_valid_token([(AXPluginDisplayOnMonitor *)self notifyToken]))
  {
    notify_cancel([(AXPluginDisplayOnMonitor *)self notifyToken]);
  }

  [(AXPluginDisplayOnMonitor *)self setNotifyToken:0xFFFFFFFFLL];
}

- (AXPluginDisplayOnMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end