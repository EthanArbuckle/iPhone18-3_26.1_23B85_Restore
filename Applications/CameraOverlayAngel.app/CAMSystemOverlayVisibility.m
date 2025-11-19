@interface CAMSystemOverlayVisibility
- (BOOL)isVisible;
- (CAMSystemOverlayVisibility)init;
- (CAMSystemOverlayVisibilityDelegate)delegate;
- (void)_cancelTimer;
- (void)_handleTimer:(id)a3 firedWithReason:(int64_t)a4;
- (void)_logReason:(int64_t)a3 visibilityChanged:(BOOL)a4;
- (void)_startTimerWithReason:(int64_t)a3;
- (void)addReason:(int64_t)a3;
- (void)hideImmediately;
- (void)removeReason:(int64_t)a3;
- (void)showTransiently;
@end

@implementation CAMSystemOverlayVisibility

- (CAMSystemOverlayVisibility)init
{
  v7.receiver = self;
  v7.super_class = CAMSystemOverlayVisibility;
  v2 = [(CAMSystemOverlayVisibility *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    activeReasons = v2->__activeReasons;
    v2->__activeReasons = v3;

    name = v2->_name;
    v2->_name = @"OverlayVisibility";
  }

  return v2;
}

- (BOOL)isVisible
{
  v3 = [(CAMSystemOverlayVisibility *)self _activeReasons];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CAMSystemOverlayVisibility *)self _delayedHidingTimer];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)addReason:(int64_t)a3
{
  v5 = [(CAMSystemOverlayVisibility *)self isVisible];
  [(CAMSystemOverlayVisibility *)self _cancelTimer];
  v10 = [(CAMSystemOverlayVisibility *)self _activeReasons];
  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v10 containsObject:v6];

  v8 = [NSNumber numberWithInteger:a3];
  [v10 addObject:v8];

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      [(CAMSystemOverlayVisibility *)self _logReason:a3 visibilityChanged:0];
    }
  }

  else
  {
    [(CAMSystemOverlayVisibility *)self _logReason:a3 visibilityChanged:1];
    v9 = [(CAMSystemOverlayVisibility *)self delegate];
    [v9 systemOverlayVisibility:self changedForReason:a3];
  }
}

- (void)removeReason:(int64_t)a3
{
  v10 = [(CAMSystemOverlayVisibility *)self _activeReasons];
  v5 = [NSNumber numberWithInteger:a3];
  v6 = [v10 containsObject:v5];

  v7 = [v10 count];
  v8 = [NSNumber numberWithInteger:a3];
  [v10 removeObject:v8];

  v9 = [v10 count];
  if (v7 && !v9)
  {
    [(CAMSystemOverlayVisibility *)self _startTimerWithReason:a3];
  }

  if (v6)
  {
    [(CAMSystemOverlayVisibility *)self _logReason:a3 visibilityChanged:0];
  }
}

- (void)hideImmediately
{
  if ([(CAMSystemOverlayVisibility *)self isVisible])
  {
    [(CAMSystemOverlayVisibility *)self _cancelTimer];
    v3 = [(CAMSystemOverlayVisibility *)self _activeReasons];
    [v3 removeAllObjects];

    v4 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CAMSystemOverlayVisibility *)self name];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Changed to NO for hideImmediately", &v6, 0xCu);
    }
  }
}

- (void)showTransiently
{
  if (![(CAMSystemOverlayVisibility *)self isVisible])
  {
    [(CAMSystemOverlayVisibility *)self _startTimerWithReason:-1];

    [(CAMSystemOverlayVisibility *)self _logReason:-1 visibilityChanged:1];
  }
}

- (void)_cancelTimer
{
  v3 = [(CAMSystemOverlayVisibility *)self _delayedHidingTimer];
  if (v3)
  {
    v5 = v3;
    dispatch_source_cancel(v3);
    [(CAMSystemOverlayVisibility *)self _setDelayedHidingTimer:0];
    v4 = [(CAMSystemOverlayVisibility *)self delegate];
    [v4 systemOverlayVisibilityCancelledHidingTimer:self];

    v3 = v5;
  }
}

- (void)_startTimerWithReason:(int64_t)a3
{
  [(CAMSystemOverlayVisibility *)self delayedHideDuration];
  if (v5 == 0.0)
  {
    v11 = [(CAMSystemOverlayVisibility *)self delegate];
    [v11 systemOverlayVisibility:self changedForReason:a3];
  }

  else
  {
    v6 = v5;
    [(CAMSystemOverlayVisibility *)self _cancelTimer];
    v7 = v6 * 1000000000.0;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v9 = dispatch_time(0, v7);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, (v7 * 0.1));
    [(CAMSystemOverlayVisibility *)self _setDelayedHidingTimer:v8];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002A9C;
    handler[3] = &unk_100055360;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(v14, &from);
    v14[1] = a3;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(v8);
    v10 = [(CAMSystemOverlayVisibility *)self delegate];
    [v10 systemOverlayVisibilityBeganHidingTimer:self];

    objc_destroyWeak(v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (void)_handleTimer:(id)a3 firedWithReason:(int64_t)a4
{
  v6 = a3;
  v9 = [(CAMSystemOverlayVisibility *)self _delayedHidingTimer];

  v7 = v9;
  if (v9 && v9 == v6)
  {
    [(CAMSystemOverlayVisibility *)self _cancelTimer];
    [(CAMSystemOverlayVisibility *)self _logReason:a4 visibilityChanged:1];
    v8 = [(CAMSystemOverlayVisibility *)self delegate];
    [v8 systemOverlayVisibility:self changedForReason:a4];

    v7 = v9;
  }
}

- (void)_logReason:(int64_t)a3 visibilityChanged:(BOOL)a4
{
  v4 = a4;
  v7 = [(CAMSystemOverlayVisibility *)self name];
  v8 = CAMStringForOverlayVisibilityReason(a3);
  if (v4)
  {
    v9 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMSystemOverlayVisibility *)self isVisible];
      v11 = @"NO";
      *buf = 138543874;
      v29 = v7;
      v30 = 2114;
      if (v10)
      {
        v11 = @"YES";
      }

      v31 = v11;
      v32 = 2114;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Changed to %{public}@ for reason %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v12 = [(CAMSystemOverlayVisibility *)self _activeReasons];
    v13 = [NSNumber numberWithInteger:a3];
    v14 = [v12 containsObject:v13];

    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v12;
    v16 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v9);
          }

          v20 = CAMStringForOverlayVisibilityReason([*(*(&v24 + 1) + 8 * v19) integerValue]);
          [v15 addObject:v20];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v9 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v17);
    }

    v21 = [v15 componentsJoinedByString:{@", "}];
    v22 = os_log_create("com.apple.camera.overlay", "Angel");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = @"removed";
      *buf = 138544130;
      v29 = v7;
      v30 = 2114;
      if (v14)
      {
        v23 = @"added";
      }

      v31 = v23;
      v32 = 2114;
      v33 = v8;
      v34 = 2114;
      v35 = v21;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%{public}@: %{public}@ reason %{public}@: [%{public}@]", buf, 0x2Au);
    }
  }
}

- (CAMSystemOverlayVisibilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end