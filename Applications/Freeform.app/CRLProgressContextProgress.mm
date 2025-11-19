@interface CRLProgressContextProgress
- (CRLProgressContextProgress)initWithProgressContext:(id)a3;
- (double)value;
- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (id)initForSubclass;
- (void)p_progressDidChange:(id)a3;
- (void)p_updateProgressContextObserver;
- (void)removeProgressObserver:(id)a3;
@end

@implementation CRLProgressContextProgress

- (CRLProgressContextProgress)initWithProgressContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CRLProgressContextProgress;
  v6 = [(CRLProgress *)&v11 initForSubclass];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 5, a3);
    v8 = dispatch_queue_create("com.apple.freeform.CRLProgressContextProgress", 0);
    progressContextObserverQueue = v7->_progressContextObserverQueue;
    v7->_progressContextObserverQueue = v8;
  }

  return v7;
}

- (id)initForSubclass
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101846558);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLProgressContextProgress initForSubclass]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m";
    v18 = 1024;
    v19 = 490;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101846578);
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

  v7 = [NSString stringWithUTF8String:"[CRLProgressContextProgress initForSubclass]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:490 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLProgressContextProgress initForSubclass]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (double)value
{
  progressContext = self->_progressContext;
  if (!progressContext)
  {
    return 0.0;
  }

  [(CRLProgressContext *)progressContext overallProgress];
  return result;
}

- (id)addProgressObserverWithValueInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8.receiver = self;
  v8.super_class = CRLProgressContextProgress;
  v6 = [(CRLProgress *)&v8 addProgressObserverWithValueInterval:a4 queue:a5 handler:a3];
  [(CRLProgressContextProgress *)self p_updateProgressContextObserver];

  return v6;
}

- (void)removeProgressObserver:(id)a3
{
  v4.receiver = self;
  v4.super_class = CRLProgressContextProgress;
  [(CRLProgress *)&v4 removeProgressObserver:a3];
  [(CRLProgressContextProgress *)self p_updateProgressContextObserver];
}

- (void)p_updateProgressContextObserver
{
  progressContextObserverQueue = self->_progressContextObserverQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D1DF8;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(progressContextObserverQueue, block);
}

- (void)p_progressDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"CRLProgressMessage"];

  if (v5)
  {
    [(CRLProgress *)self setMessage:v5];
  }

  [(CRLProgress *)self protected_progressDidChange];
}

@end