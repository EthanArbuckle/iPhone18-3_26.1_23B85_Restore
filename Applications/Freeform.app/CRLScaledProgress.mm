@interface CRLScaledProgress
- (BOOL)isIndeterminate;
- (CRLProgress)progress;
- (CRLScaledProgress)init;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (id)initForSubclass;
- (void)p_addProgressObserverToProgressInQueue;
- (void)p_removeProgressObserverFromProgressInQueue;
- (void)removeProgressObserver:(id)a3;
- (void)setMaxValue:(double)a3;
- (void)setProgress:(id)a3;
@end

@implementation CRLScaledProgress

- (CRLScaledProgress)init
{
  v8.receiver = self;
  v8.super_class = CRLScaledProgress;
  v2 = [(CRLProgress *)&v8 initForSubclass];
  if (v2)
  {
    v3 = objc_alloc_init(CRLScaledProgressStorage);
    storage = v2->_storage;
    v2->_storage = v3;

    v5 = dispatch_queue_create("com.apple.freeform.CRLScaledProgress", 0);
    progressQueue = v2->_progressQueue;
    v2->_progressQueue = v5;

    [(CRLScaledProgressStorage *)v2->_storage setMaxValue:1.0];
  }

  return v2;
}

- (id)initForSubclass
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018464D8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLScaledProgress initForSubclass]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m";
    v18 = 1024;
    v19 = 232;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018464F8);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLScaledProgress initForSubclass]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:232 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLScaledProgress initForSubclass]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLProgress)progress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001D05A8;
  v10 = sub_1001D05B8;
  v11 = 0;
  progressQueue = self->_progressQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D05C0;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(progressQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setProgress:(id)a3
{
  v4 = a3;
  progressQueue = self->_progressQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D06B8;
  v7[3] = &unk_10183AE28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(progressQueue, v7);
}

- (double)value
{
  v3 = [(CRLScaledProgress *)self progress];
  v4 = v3;
  if (v3)
  {
    [v3 value];
    v6 = v5;
    [v4 maxValue];
    v8 = v6 / v7;
    [(CRLScaledProgress *)self maxValue];
    v10 = v8 * v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)setMaxValue:(double)a3
{
  [(CRLScaledProgressStorage *)self->_storage setMaxValue:a3];

  [(CRLProgress *)self protected_progressDidChange];
}

- (BOOL)isIndeterminate
{
  v2 = [(CRLScaledProgress *)self progress];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isIndeterminate];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v10.receiver = self;
  v10.super_class = CRLScaledProgress;
  v6 = [(CRLProgress *)&v10 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  progressQueue = self->_progressQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D08F8;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(progressQueue, block);

  return v6;
}

- (void)removeProgressObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLScaledProgress;
  [(CRLProgress *)&v6 removeProgressObserver:a3];
  progressQueue = self->_progressQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D09E4;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(progressQueue, block);
}

- (void)p_addProgressObserverToProgressInQueue
{
  v3 = self->_progressQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  if (self->_progress)
  {
    [(CRLProgress *)self protected_minProgressObserverValueInterval];
    v5 = *&v4;
    if (v4 >= 0 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v4 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      [(CRLProgress *)self->_progress maxValue];
      v9 = v8;
      [(CRLScaledProgress *)self maxValue];
      v11 = v5 * (v9 / v10);
      objc_initWeak(&location, self);
      progress = self->_progress;
      progressQueue = self->_progressQueue;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001D0BCC;
      v16[3] = &unk_10183AF10;
      objc_copyWeak(&v17, &location);
      v14 = [(CRLProgress *)progress addProgressObserverWithValueInterval:progressQueue queue:v16 handler:v11];
      progressObserver = self->_progressObserver;
      self->_progressObserver = v14;

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

- (void)p_removeProgressObserverFromProgressInQueue
{
  v3 = self->_progressQueue;
  if (v3 != &_dispatch_main_q || !+[NSThread isMainThread])
  {
    dispatch_assert_queue_V2(v3);
  }

  if (self->_progressObserver)
  {
    [(CRLProgress *)self->_progress removeProgressObserver:?];
    progressObserver = self->_progressObserver;
    self->_progressObserver = 0;
  }
}

@end