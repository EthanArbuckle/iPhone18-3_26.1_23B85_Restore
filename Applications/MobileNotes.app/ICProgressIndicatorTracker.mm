@interface ICProgressIndicatorTracker
- (ICProgressIndicatorTracker)init;
- (ICProgressIndicatorTracker)initWithDelegate:(id)delegate;
- (ICProgressIndicatorTrackerDelegate)delegate;
- (void)invalidate;
- (void)progressIndicatorShouldUpdate;
- (void)setMakingProgress:(BOOL)progress;
- (void)setProgressIndicatorShouldAnimate:(BOOL)animate;
@end

@implementation ICProgressIndicatorTracker

- (ICProgressIndicatorTracker)init
{
  [(ICProgressIndicatorTracker *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICProgressIndicatorTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ICProgressIndicatorTracker;
  v5 = [(ICProgressIndicatorTracker *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(ICProgressIndicatorTracker *)v5 setDelegate:delegateCopy];
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
  progressIndicatorShouldStartDelayer = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStartDelayer];
  [progressIndicatorShouldStartDelayer cancelPreviousFireRequests];

  progressIndicatorShouldStopDelayer = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
  [progressIndicatorShouldStopDelayer cancelPreviousFireRequests];
}

- (void)setMakingProgress:(BOOL)progress
{
  if (self->_makingProgress != progress)
  {
    v26 = v9;
    v27 = v5;
    v28 = v4;
    v29 = v3;
    progressCopy = progress;
    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E03BC(progressCopy, v13);
    }

    self->_makingProgress = progressCopy;
    progressIndicatorShouldStartDelayer = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStartDelayer];
    v15 = progressIndicatorShouldStartDelayer;
    if (progressCopy)
    {
      [progressIndicatorShouldStartDelayer requestFire];

      progressIndicatorShouldStopDelayer = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
      [progressIndicatorShouldStopDelayer cancelPreviousFireRequests];
    }

    else
    {
      [progressIndicatorShouldStartDelayer cancelPreviousFireRequests];

      progressIndicatorStartDate = [(ICProgressIndicatorTracker *)self progressIndicatorStartDate];
      if (progressIndicatorStartDate)
      {
        v18 = progressIndicatorStartDate;
        progressIndicatorStartDate2 = [(ICProgressIndicatorTracker *)self progressIndicatorStartDate];
        [progressIndicatorStartDate2 timeIntervalSinceNow];
        v21 = v20;

        if (v21 <= -1.0)
        {
          progressIndicatorShouldStopDelayer2 = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
          [progressIndicatorShouldStopDelayer2 cancelPreviousFireRequests];

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

      progressIndicatorShouldStopDelayer = [(ICProgressIndicatorTracker *)self progressIndicatorShouldStopDelayer];
      [progressIndicatorShouldStopDelayer requestFire];
    }
  }
}

- (void)setProgressIndicatorShouldAnimate:(BOOL)animate
{
  if (self->_progressIndicatorShouldAnimate != animate)
  {
    v10 = v3;
    v11 = v4;
    animateCopy = animate;
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E0434(animateCopy, v7);
    }

    self->_progressIndicatorShouldAnimate = animateCopy;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10010BF70;
    v8[3] = &unk_100646080;
    v9 = animateCopy;
    v8[4] = self;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

- (void)progressIndicatorShouldUpdate
{
  makingProgress = [(ICProgressIndicatorTracker *)self makingProgress];

  [(ICProgressIndicatorTracker *)self setProgressIndicatorShouldAnimate:makingProgress];
}

- (ICProgressIndicatorTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end