@interface MapsThrottler
- (MapsThrottler)initWithInitialValue:(id)a3 throttlingInterval:(double)a4 queue:(id)a5 updateHandler:(id)a6;
- (NSDate)valueTimestamp;
- (id)description;
- (id)value;
- (void)_dispatchIfNeeded;
- (void)_run;
- (void)setValue:(id)a3;
@end

@implementation MapsThrottler

- (id)value
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10098D6C8;
  v8 = sub_10098D6D8;
  v9 = 0;
  geo_isolate_sync_data();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)_dispatchIfNeeded
{
  geo_assert_isolated();
  if (!self->_valueChangedSinceLastUpdateStarted || self->_dispatched || self->_running)
  {
    v3 = sub_10000BDF8();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      return;
    }

    v4 = self;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(MapsThrottler *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_10;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_10:

    if (v4->_dispatched)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    if (v4->_running)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    *buf = 138543874;
    v29 = v9;
    v30 = 2114;
    v31 = *&v11;
    v32 = 2114;
    v33 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] will not dispatch (dispatched: %{public}@, running: %{public}@)", buf, 0x20u);

    goto LABEL_17;
  }

  if (self->_lastUpdateStartedDate)
  {
    v14 = +[NSDate date];
    [v14 timeIntervalSinceDate:self->_lastUpdateStartedDate];
    v16 = fmax(self->_throttlingInterval - v15, 0.0);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = sub_10000BDF8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = self;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    if (objc_opt_respondsToSelector())
    {
      v21 = [(MapsThrottler *)v18 performSelector:"accessibilityIdentifier"];
      v22 = v21;
      if (v21 && ![v21 isEqualToString:v20])
      {
        v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];

        goto LABEL_28;
      }
    }

    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
LABEL_28:

    *buf = 138543618;
    v29 = v23;
    v30 = 2048;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] will dispatch after %#.2lfs", buf, 0x16u);
  }

  self->_dispatched = 1;
  objc_initWeak(buf, self);
  v24 = dispatch_time(0, (v16 * 1000000000.0));
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BE4C;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v27, buf);
  dispatch_after(v24, queue, block);
  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_queue);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_10098D6C8;
  v33 = sub_10098D6D8;
  v34 = 0;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_10000D4C8;
  v26 = &unk_101661600;
  v27 = self;
  v28 = &v29;
  geo_isolate_sync();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100025DB8;
  v18[3] = &unk_10165E700;
  objc_copyWeak(&v19, &location);
  v18[4] = self;
  v18[5] = v21;
  v3 = objc_retainBlock(v18);
  v4 = sub_10000BDF8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = self;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(MapsThrottler *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ([v8 isEqualToString:v7] & 1) == 0)
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

LABEL_7:
        v11 = v10;
        v12 = v30[5];
        if (!v12)
        {
          v17 = @"<nil>";
          goto LABEL_15;
        }

        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [v12 performSelector:"accessibilityIdentifier"];
          v16 = v15;
          if (v15 && ([v15 isEqualToString:v14] & 1) == 0)
          {
            v17 = [NSString stringWithFormat:@"%@<%p, %@>", v14, v12, v16];

            goto LABEL_13;
          }
        }

        v17 = [NSString stringWithFormat:@"%@<%p>", v14, v12];
LABEL_13:

LABEL_15:
        *buf = 138543618;
        v36 = v11;
        v37 = 2114;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] calling update handler with value %{public}@", buf, 0x16u);

        goto LABEL_16;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
    goto LABEL_7;
  }

LABEL_16:

  (*(self->_updateHandler + 2))();
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v29, 8);
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v3 = v4;
  geo_isolate_sync();
}

- (NSDate)valueTimestamp
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10098D6C8;
  v8 = sub_10098D6D8;
  v9 = 0;
  geo_isolate_sync_data();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = MapsThrottler;
  v3 = [(MapsThrottler *)&v14 description];
  throttlingInterval = self->_throttlingInterval;
  label = dispatch_queue_get_label(self->_queue);
  v6 = self->_value;
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_7;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_7:

    goto LABEL_9;
  }

  v11 = @"<nil>";
LABEL_9:

  v12 = [NSString stringWithFormat:@"%@ (interval: %#.2lfs, queue: %s, value: %@)", v3, *&throttlingInterval, label, v11];

  return v12;
}

- (MapsThrottler)initWithInitialValue:(id)a3 throttlingInterval:(double)a4 queue:(id)a5 updateHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MapsThrottler;
  v14 = [(MapsThrottler *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_value, a3);
    v15->_throttlingInterval = fmax(a4, 0.0);
    objc_storeStrong(&v15->_queue, a5);
    v16 = objc_retainBlock(v13);
    updateHandler = v15->_updateHandler;
    v15->_updateHandler = v16;

    v18 = geo_isolater_create();
    isolator = v15->_isolator;
    v15->_isolator = v18;
  }

  return v15;
}

@end