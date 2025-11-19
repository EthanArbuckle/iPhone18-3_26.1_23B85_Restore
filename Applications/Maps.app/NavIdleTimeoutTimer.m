@interface NavIdleTimeoutTimer
- (NavIdleTimeoutTimer)initWithView:(id)a3;
- (NavIdleTimeoutTimer)initWithView:(id)a3 idleTimeout:(double)a4;
- (NavIdleTimeoutTimer)initWithWindow:(id)a3;
- (NavIdleTimeoutTimer)initWithWindow:(id)a3 idleTimeout:(double)a4;
- (NavIdleTimerDelegate)delegate;
- (UIView)view;
- (UIWindow)window;
- (void)_handleEvent:(id)a3;
- (void)_handleGesture:(id)a3;
- (void)_handleTimer;
- (void)_invalidateTimer;
- (void)_scheduleTimer;
- (void)_setupEventTap;
- (void)dealloc;
@end

@implementation NavIdleTimeoutTimer

- (NavIdleTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)_handleTimer
{
  [(NavIdleTimeoutTimer *)self _invalidateTimer];
  v3 = sub_100FB417C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timeout fired", v5, 2u);
  }

  v4 = [(NavIdleTimeoutTimer *)self delegate];
  [v4 idleTimerDidTimeout:self];
}

- (void)_invalidateTimer
{
  v3 = [(NavIdleTimeoutTimer *)self dispatchSource];

  if (v3)
  {
    v4 = [(NavIdleTimeoutTimer *)self dispatchSource];
    dispatch_source_cancel(v4);

    [(NavIdleTimeoutTimer *)self setDispatchSource:0];
  }
}

- (void)_scheduleTimer
{
  v3 = [(NavIdleTimeoutTimer *)self dispatchSource];

  if (v3)
  {
    [(NavIdleTimeoutTimer *)self _invalidateTimer];
  }

  [(NavIdleTimeoutTimer *)self idleTimeout];
  v5 = v4;
  v6 = [(NavIdleTimeoutTimer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(NavIdleTimeoutTimer *)self delegate];
    [v8 nextIdleTimeout:self];
    v5 = v9;
  }

  v10 = sub_100FB417C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduling timeout in %f", buf, 0xCu);
  }

  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(NavIdleTimeoutTimer *)self setDispatchSource:v11];

  objc_initWeak(buf, self);
  v12 = [(NavIdleTimeoutTimer *)self dispatchSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100FB44F8;
  handler[3] = &unk_101661B98;
  objc_copyWeak(&v17, buf);
  dispatch_source_set_event_handler(v12, handler);

  v13 = dispatch_time(0, (v5 * 1000000000.0));
  v14 = [(NavIdleTimeoutTimer *)self dispatchSource];
  dispatch_source_set_timer(v14, v13, 1000000000 * v5, 0x3B9ACA00uLL);

  v15 = [(NavIdleTimeoutTimer *)self dispatchSource];
  dispatch_resume(v15);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)_handleGesture:(id)a3
{
  v4 = [a3 event];
  [(NavIdleTimeoutTimer *)self _handleEvent:v4];
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  if (![v4 type] && !-[NavIdleTimeoutTimer suppressInterruptions](self, "suppressInterruptions"))
  {
    [(NavIdleTimeoutTimer *)self _invalidateTimer];
    v5 = [(NavIdleTimeoutTimer *)self window];
    if (v5)
    {
      v6 = [v4 touchesForWindow:v5];
    }

    else
    {
      v7 = [(NavIdleTimeoutTimer *)self view];
      v8 = [v7 window];
      v6 = [v4 touchesForWindow:v8];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([v14 phase] != 3 && objc_msgSend(v14, "phase") != 4)
          {

            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [(NavIdleTimeoutTimer *)self _scheduleTimer];
LABEL_17:
  }
}

- (void)_setupEventTap
{
  v3 = [(NavIdleTimeoutTimer *)self window];

  if (v3)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100FB4914;
    v11[3] = &unk_10165FF68;
    objc_copyWeak(&v12, &location);
    v4 = [EventTap eventTapWithHandler:v11];
    [(NavIdleTimeoutTimer *)self setEventTap:v4];

    v5 = [(NavIdleTimeoutTimer *)self window];
    v6 = [(NavIdleTimeoutTimer *)self eventTap];
    [v5 _maps_registerEventTap:v6];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(NavIdleTimeoutTimer *)self view];

    if (v7)
    {
      v8 = [[NavIdleTimeoutGestureRecognizer alloc] initWithTarget:self action:"_handleGesture:"];
      [(NavIdleTimeoutTimer *)self setGestureRecognizer:v8];

      v10 = [(NavIdleTimeoutTimer *)self view];
      v9 = [(NavIdleTimeoutTimer *)self gestureRecognizer];
      [v10 addGestureRecognizer:v9];
    }
  }
}

- (void)dealloc
{
  v3 = [(NavIdleTimeoutGestureRecognizer *)self->_gestureRecognizer view];
  [v3 removeGestureRecognizer:self->_gestureRecognizer];

  [(NavIdleTimeoutTimer *)self _invalidateTimer];
  v4.receiver = self;
  v4.super_class = NavIdleTimeoutTimer;
  [(NavIdleTimeoutTimer *)&v4 dealloc];
}

- (NavIdleTimeoutTimer)initWithView:(id)a3 idleTimeout:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NavIdleTimeoutTimer;
  v7 = [(NavIdleTimeoutTimer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_view, v6);
    v8->_idleTimeout = a4;
    [(NavIdleTimeoutTimer *)v8 _setupEventTap];
    [(NavIdleTimeoutTimer *)v8 _scheduleTimer];
  }

  return v8;
}

- (NavIdleTimeoutTimer)initWithView:(id)a3
{
  v4 = a3;
  GEOConfigGetDouble();
  v5 = [(NavIdleTimeoutTimer *)self initWithView:v4 idleTimeout:?];

  return v5;
}

- (NavIdleTimeoutTimer)initWithWindow:(id)a3 idleTimeout:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NavIdleTimeoutTimer;
  v7 = [(NavIdleTimeoutTimer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_window, v6);
    v8->_idleTimeout = a4;
    [(NavIdleTimeoutTimer *)v8 _setupEventTap];
    [(NavIdleTimeoutTimer *)v8 _scheduleTimer];
  }

  return v8;
}

- (NavIdleTimeoutTimer)initWithWindow:(id)a3
{
  v4 = a3;
  GEOConfigGetDouble();
  v5 = [(NavIdleTimeoutTimer *)self initWithWindow:v4 idleTimeout:?];

  return v5;
}

@end