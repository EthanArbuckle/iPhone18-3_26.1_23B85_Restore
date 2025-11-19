@interface CRLMediaPlayerTimeController
- (CRLMediaPlayerTimeController)initWithPlayerController:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_beginScrubbingIfNeeded;
- (void)p_createTimeObserver;
- (void)p_setTimeValuesWithoutScrubbing;
- (void)p_teardownTimeObserver;
- (void)setAbsoluteCurrentTime:(double)a3;
- (void)setCurrentTime:(double)a3;
- (void)setUpdateInterval:(double)a3;
- (void)startObservingTime;
- (void)stopObservingTime;
@end

@implementation CRLMediaPlayerTimeController

- (CRLMediaPlayerTimeController)initWithPlayerController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132BBA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132BBBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132BC50();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLMediaPlayerTimeController initWithPlayerController:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMediaPlayerTimeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:37 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "playerController != nil"];
  }

  v12.receiver = self;
  v12.super_class = CRLMediaPlayerTimeController;
  v9 = [(CRLMediaPlayerTimeController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mPlayerController, a3);
    [(CRLMediaPlayerTimeController *)v10 setUpdateInterval:1.0];
    [(CRLMediaPlayerController *)v10->mPlayerController addObserver:v10 forKeyPath:@"hasCurrentTime" options:4 context:off_1019EE030];
    v10->mObservingPlayerControllerHasCurrentTime = 1;
  }

  return v10;
}

- (void)dealloc
{
  if (self->mObservingPlayerControllerHasCurrentTime)
  {
    [(CRLMediaPlayerController *)self->mPlayerController removeObserver:self forKeyPath:@"hasCurrentTime" context:off_1019EE030];
  }

  if (self->mTimeObserver)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132BC78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132BC8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132BD20();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMediaPlayerTimeController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMediaPlayerTimeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:53 isFatal:0 description:"expected nil value for '%{public}s'", "mTimeObserver"];
  }

  v6.receiver = self;
  v6.super_class = CRLMediaPlayerTimeController;
  [(CRLMediaPlayerTimeController *)&v6 dealloc];
}

- (void)startObservingTime
{
  if (self->mTimeObserver)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132BD48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132BD5C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132BDF0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLMediaPlayerTimeController startObservingTime]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMediaPlayerTimeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:59 isFatal:0 description:"expected nil value for '%{public}s'", "mTimeObserver"];
  }

  [(CRLMediaPlayerTimeController *)self p_createTimeObserver];
  [(CRLMediaPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
}

- (void)stopObservingTime
{
  [(CRLMediaPlayerTimeController *)self p_teardownTimeObserver];

  [(CRLMediaPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
}

- (void)p_createTimeObserver
{
  if (self->mTimeObserver)
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132BE18();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132BE2C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132BEC0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132BEE8(v4, v3);
    }

    v5 = [NSString stringWithUTF8String:"[CRLMediaPlayerTimeController p_createTimeObserver]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMediaPlayerTimeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:74 isFatal:0 description:"expected nil value for '%{public}s'", "mTimeObserver"];
  }

  if (qword_101AD5CA8 != -1)
  {
    sub_10132BFB0();
  }

  v7 = off_1019EFDC0;
  if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
  {
    mUpdateInterval = self->mUpdateInterval;
    *buf = 134218240;
    v23 = mUpdateInterval;
    v24 = 2048;
    v25 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating time observer with interval %f for %p", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  v9 = [(CRLMediaPlayerTimeController *)self playerController];
  v10 = self->mUpdateInterval;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001BBE50;
  v19[3] = &unk_10183AF10;
  objc_copyWeak(&v20, &location);
  v11 = [v9 addPeriodicTimeObserverForInterval:v19 block:v10];
  mTimeObserver = self->mTimeObserver;
  p_mTimeObserver = &self->mTimeObserver;
  *p_mTimeObserver = v11;

  if (!*p_mTimeObserver)
  {
    v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132BFD8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132C000();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132C094();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v16, buf, v14, v15);
    }

    v17 = [NSString stringWithUTF8String:"[CRLMediaPlayerTimeController p_createTimeObserver]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMediaPlayerTimeController.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:82 isFatal:0 description:"invalid nil value for '%{public}s'", "mTimeObserver"];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)p_teardownTimeObserver
{
  if (self->mTimeObserver)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132C0BC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10132C0D0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10132C164();
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v3);
  }

  v4 = [NSString stringWithUTF8String:"[CRLMediaPlayerTimeController p_teardownTimeObserver]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLMediaPlayerTimeController.m"];
  [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:86 isFatal:0 description:"invalid nil value for '%{public}s'", "mTimeObserver"];

  if (self->mTimeObserver)
  {
LABEL_11:
    if (qword_101AD5CA8 != -1)
    {
      sub_10132C18C();
    }

    v6 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Tear down time observer for %p", buf, 0xCu);
    }

    v7 = [(CRLMediaPlayerTimeController *)self playerController];
    [v7 removePeriodicTimeObserver:self->mTimeObserver];

    mTimeObserver = self->mTimeObserver;
    self->mTimeObserver = 0;
  }
}

- (void)p_setTimeValuesWithoutScrubbing
{
  [(CRLMediaPlayerTimeController *)self willChangeValueForKey:@"absoluteCurrentTime"];
  v3 = [(CRLMediaPlayerTimeController *)self playerController];
  [v3 absoluteCurrentTime];
  self->mAbsoluteCurrentTime = v4;

  [(CRLMediaPlayerTimeController *)self didChangeValueForKey:@"absoluteCurrentTime"];
  [(CRLMediaPlayerTimeController *)self willChangeValueForKey:@"currentTime"];
  v5 = [(CRLMediaPlayerTimeController *)self playerController];
  [v5 currentTime];
  self->mCurrentTime = v6;

  [(CRLMediaPlayerTimeController *)self didChangeValueForKey:@"currentTime"];
  [(CRLMediaPlayerTimeController *)self willChangeValueForKey:@"remainingTime"];
  v7 = [(CRLMediaPlayerTimeController *)self playerController];
  [v7 remainingTime];
  self->mRemainingTime = v8;

  [(CRLMediaPlayerTimeController *)self didChangeValueForKey:@"remainingTime"];
}

- (void)setUpdateInterval:(double)a3
{
  if (self->mUpdateInterval != a3)
  {
    if (a3 < 0.0166666667)
    {
      a3 = 0.0166666667;
    }

    self->mUpdateInterval = a3;
    if (self->mTimeObserver)
    {
      [(CRLMediaPlayerTimeController *)self p_teardownTimeObserver];
      [(CRLMediaPlayerTimeController *)self p_createTimeObserver];

      [(CRLMediaPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
    }
  }
}

- (void)setAbsoluteCurrentTime:(double)a3
{
  self->mAbsoluteCurrentTime = a3;
  [(CRLMediaPlayerTimeController *)self p_beginScrubbingIfNeeded];
  mUpdateInterval = self->mUpdateInterval;
  mPlayerController = self->mPlayerController;
  mAbsoluteCurrentTime = self->mAbsoluteCurrentTime;

  [(CRLMediaPlayerController *)mPlayerController scrubToTime:mAbsoluteCurrentTime withTolerance:mUpdateInterval];
}

- (void)setCurrentTime:(double)a3
{
  self->mCurrentTime = a3;
  [(CRLMediaPlayerTimeController *)self p_beginScrubbingIfNeeded];
  mUpdateInterval = self->mUpdateInterval;
  [(CRLMediaPlayerController *)self->mPlayerController startTime];
  v7 = v6 + a3;
  mPlayerController = self->mPlayerController;

  [(CRLMediaPlayerController *)mPlayerController scrubToTime:v7 withTolerance:mUpdateInterval];
}

- (void)p_beginScrubbingIfNeeded
{
  v3 = [(CRLMediaPlayerTimeController *)self playerController];
  if (([v3 isScrubbing] & 1) == 0)
  {
    [v3 beginScrubbing];
    v5 = NSDefaultRunLoopMode;
    v4 = [NSArray arrayWithObjects:&v5 count:1];
    [(CRLMediaPlayerTimeController *)self performSelector:"p_endScrubbing" withObject:0 afterDelay:v4 inModes:0.0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_1019EE030 == a6)
  {
    v9 = sub_10030361C(a4, 1, a3, a4, a5, a6, v6, v7, &OBJC_PROTOCOL___CRLMediaPlayerController);
    if ([v9 hasCurrentTime])
    {
      [(CRLMediaPlayerTimeController *)self p_setTimeValuesWithoutScrubbing];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CRLMediaPlayerTimeController;
    [(CRLMediaPlayerTimeController *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

@end