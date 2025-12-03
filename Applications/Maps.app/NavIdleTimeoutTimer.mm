@interface NavIdleTimeoutTimer
- (NavIdleTimeoutTimer)initWithView:(id)view;
- (NavIdleTimeoutTimer)initWithView:(id)view idleTimeout:(double)timeout;
- (NavIdleTimeoutTimer)initWithWindow:(id)window;
- (NavIdleTimeoutTimer)initWithWindow:(id)window idleTimeout:(double)timeout;
- (NavIdleTimerDelegate)delegate;
- (UIView)view;
- (UIWindow)window;
- (void)_handleEvent:(id)event;
- (void)_handleGesture:(id)gesture;
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

  delegate = [(NavIdleTimeoutTimer *)self delegate];
  [delegate idleTimerDidTimeout:self];
}

- (void)_invalidateTimer
{
  dispatchSource = [(NavIdleTimeoutTimer *)self dispatchSource];

  if (dispatchSource)
  {
    dispatchSource2 = [(NavIdleTimeoutTimer *)self dispatchSource];
    dispatch_source_cancel(dispatchSource2);

    [(NavIdleTimeoutTimer *)self setDispatchSource:0];
  }
}

- (void)_scheduleTimer
{
  dispatchSource = [(NavIdleTimeoutTimer *)self dispatchSource];

  if (dispatchSource)
  {
    [(NavIdleTimeoutTimer *)self _invalidateTimer];
  }

  [(NavIdleTimeoutTimer *)self idleTimeout];
  v5 = v4;
  delegate = [(NavIdleTimeoutTimer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(NavIdleTimeoutTimer *)self delegate];
    [delegate2 nextIdleTimeout:self];
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
  dispatchSource2 = [(NavIdleTimeoutTimer *)self dispatchSource];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100FB44F8;
  handler[3] = &unk_101661B98;
  objc_copyWeak(&v17, buf);
  dispatch_source_set_event_handler(dispatchSource2, handler);

  v13 = dispatch_time(0, (v5 * 1000000000.0));
  dispatchSource3 = [(NavIdleTimeoutTimer *)self dispatchSource];
  dispatch_source_set_timer(dispatchSource3, v13, 1000000000 * v5, 0x3B9ACA00uLL);

  dispatchSource4 = [(NavIdleTimeoutTimer *)self dispatchSource];
  dispatch_resume(dispatchSource4);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

- (void)_handleGesture:(id)gesture
{
  event = [gesture event];
  [(NavIdleTimeoutTimer *)self _handleEvent:event];
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  if (![eventCopy type] && !-[NavIdleTimeoutTimer suppressInterruptions](self, "suppressInterruptions"))
  {
    [(NavIdleTimeoutTimer *)self _invalidateTimer];
    window = [(NavIdleTimeoutTimer *)self window];
    if (window)
    {
      v6 = [eventCopy touchesForWindow:window];
    }

    else
    {
      view = [(NavIdleTimeoutTimer *)self view];
      window2 = [view window];
      v6 = [eventCopy touchesForWindow:window2];
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
  window = [(NavIdleTimeoutTimer *)self window];

  if (window)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100FB4914;
    v11[3] = &unk_10165FF68;
    objc_copyWeak(&v12, &location);
    v4 = [EventTap eventTapWithHandler:v11];
    [(NavIdleTimeoutTimer *)self setEventTap:v4];

    window2 = [(NavIdleTimeoutTimer *)self window];
    eventTap = [(NavIdleTimeoutTimer *)self eventTap];
    [window2 _maps_registerEventTap:eventTap];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    view = [(NavIdleTimeoutTimer *)self view];

    if (view)
    {
      v8 = [[NavIdleTimeoutGestureRecognizer alloc] initWithTarget:self action:"_handleGesture:"];
      [(NavIdleTimeoutTimer *)self setGestureRecognizer:v8];

      view2 = [(NavIdleTimeoutTimer *)self view];
      gestureRecognizer = [(NavIdleTimeoutTimer *)self gestureRecognizer];
      [view2 addGestureRecognizer:gestureRecognizer];
    }
  }
}

- (void)dealloc
{
  view = [(NavIdleTimeoutGestureRecognizer *)self->_gestureRecognizer view];
  [view removeGestureRecognizer:self->_gestureRecognizer];

  [(NavIdleTimeoutTimer *)self _invalidateTimer];
  v4.receiver = self;
  v4.super_class = NavIdleTimeoutTimer;
  [(NavIdleTimeoutTimer *)&v4 dealloc];
}

- (NavIdleTimeoutTimer)initWithView:(id)view idleTimeout:(double)timeout
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NavIdleTimeoutTimer;
  v7 = [(NavIdleTimeoutTimer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_view, viewCopy);
    v8->_idleTimeout = timeout;
    [(NavIdleTimeoutTimer *)v8 _setupEventTap];
    [(NavIdleTimeoutTimer *)v8 _scheduleTimer];
  }

  return v8;
}

- (NavIdleTimeoutTimer)initWithView:(id)view
{
  viewCopy = view;
  GEOConfigGetDouble();
  v5 = [(NavIdleTimeoutTimer *)self initWithView:viewCopy idleTimeout:?];

  return v5;
}

- (NavIdleTimeoutTimer)initWithWindow:(id)window idleTimeout:(double)timeout
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = NavIdleTimeoutTimer;
  v7 = [(NavIdleTimeoutTimer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_window, windowCopy);
    v8->_idleTimeout = timeout;
    [(NavIdleTimeoutTimer *)v8 _setupEventTap];
    [(NavIdleTimeoutTimer *)v8 _scheduleTimer];
  }

  return v8;
}

- (NavIdleTimeoutTimer)initWithWindow:(id)window
{
  windowCopy = window;
  GEOConfigGetDouble();
  v5 = [(NavIdleTimeoutTimer *)self initWithWindow:windowCopy idleTimeout:?];

  return v5;
}

@end