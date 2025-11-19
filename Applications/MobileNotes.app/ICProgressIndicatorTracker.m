@interface ICProgressIndicatorTracker
- (ICProgressIndicatorTracker)init;
- (ICProgressIndicatorTracker)initWithDelegate:(id)a3;
- (ICProgressIndicatorTrackerDelegate)delegate;
- (void)invalidate;
- (void)progressIndicatorShouldUpdate;
- (void)setMakingProgress:(BOOL)a3;
- (void)setProgressIndicatorShouldAnimate:(BOOL)a3;
@end

@implementation ICProgressIndicatorTracker

- (ICProgressIndicatorTracker)init
{
  [(ICProgressIndicatorTracker *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICProgressIndicatorTracker)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICProgressIndicatorTracker;
  v5 = [(ICProgressIndicatorTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(ICProgressIndicatorTracker *)v5 setDelegate:v4];
    v7 = [[ICSelectorDelayer alloc] initWithTarget:v6 selector:"progressIndicatorShouldUpdate" delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
    [(ICProgressIndicatorTracker *)v6 setProgressIndicatorShouldStartDelayer:v7];

    v8 = [[ICSelectorDelayer alloc] initWithTarget:v6 selector:"progressIndicatorShouldUpdate" delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
    [(ICProgressIndicatorTracker *)v6 setProgressIndicatorShouldStopDelayer:v8];
  }

  return v6;
}

- (void)invalidate
{
  [(ICProgressIndicatorTracker *)self setDelegate:0];
  v3 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStartDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
  [v4 cancelPreviousFireRequests];
}

- (void)setMakingProgress:(BOOL)a3
{
  if (self->_makingProgress != a3)
  {
    v26 = v9;
    v27 = v5;
    v28 = v4;
    v29 = v3;
    v11 = a3;
    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E03BC(v11, v13);
    }

    self->_makingProgress = v11;
    v14 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStartDelayer];
    v15 = v14;
    if (v11)
    {
      [v14 requestFire];

      v16 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
      [v16 cancelPreviousFireRequests];
    }

    else
    {
      [v14 cancelPreviousFireRequests];

      v17 = [(ICProgressIndicatorTracker *)self progressIndicatorStartDate];
      if (v17)
      {
        v18 = v17;
        v19 = [(ICProgressIndicatorTracker *)self progressIndicatorStartDate];
        [v19 timeIntervalSinceNow];
        v21 = v20;

        if (v21 <= -1.0)
        {
          v25 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
          [v25 cancelPreviousFireRequests];

          [(ICProgressIndicatorTracker *)self setProgressIndicatorShouldAnimate:0];
          [(ICProgressIndicatorTracker *)self setProgressIndicatorStartDate:0];
          return;
        }

        v22 = -v21;
      }

      else
      {
        v22 = 0.0;
      }

      v23 = 1.0 - v22;
      v24 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer:v10];
      [v24 setDelay:v23];

      v16 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
      [v16 requestFire];
    }
  }
}

- (void)setProgressIndicatorShouldAnimate:(BOOL)a3
{
  if (self->_progressIndicatorShouldAnimate != a3)
  {
    v10 = v3;
    v11 = v4;
    v5 = a3;
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E0434(v5, v7);
    }

    self->_progressIndicatorShouldAnimate = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10010BF70;
    v8[3] = &unk_100646080;
    v9 = v5;
    v8[4] = self;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

- (void)progressIndicatorShouldUpdate
{
  v3 = [(ICProgressIndicatorTracker *)self makingProgress];

  [(ICProgressIndicatorTracker *)self setProgressIndicatorShouldAnimate:v3];
}

- (ICProgressIndicatorTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end