@interface CRLFakeProgress
- (CRLFakeProgress)initWithMaxValue:(double)a3;
- (CRLFakeProgress)initWithMaxValue:(double)a3 numberOfStages:(unint64_t)a4;
- (void)advanceToStage:(unint64_t)a3;
- (void)p_slowlyAdvanceToNextStage;
- (void)start;
- (void)stop;
@end

@implementation CRLFakeProgress

- (CRLFakeProgress)initWithMaxValue:(double)a3 numberOfStages:(unint64_t)a4
{
  if (!a4)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132DD44();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132DD58(v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132DE14();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v9, v7);
    }

    v10 = [NSString stringWithUTF8String:"[CRLFakeProgress initWithMaxValue:numberOfStages:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:617 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "numberOfStages > 0"];
  }

  v17.receiver = self;
  v17.super_class = CRLFakeProgress;
  v12 = [(CRLBasicProgress *)&v17 initWithMaxValue:a3];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("CRLFakeProgress", v13);
    accessQueue = v12->_accessQueue;
    v12->_accessQueue = v14;

    v12->_numberOfStages = a4;
    v12->_stopped = 1;
  }

  return v12;
}

- (CRLFakeProgress)initWithMaxValue:(double)a3
{
  v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018465D8);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v14 = v3;
    v15 = 2082;
    v16 = "[CRLFakeProgress initWithMaxValue:]";
    v17 = 2082;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m";
    v19 = 1024;
    v20 = 628;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018465F8);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    v7 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v14 = v3;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v8 = [NSString stringWithUTF8String:"[CRLFakeProgress initWithMaxValue:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLProgress.m"];
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:628 isFatal:0 description:"Do not call method"];

  v10 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLFakeProgress initWithMaxValue:]"];
  v11 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)start
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D278C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D2830;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)advanceToStage:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001D28C4;
  v4[3] = &unk_10183B720;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)p_slowlyAdvanceToNextStage
{
  if (!self->_stopped && self->_currentStage < self->_numberOfStages)
  {
    v3 = dispatch_time(0, 250000000);
    accessQueue = self->_accessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D2A1C;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_after(v3, accessQueue, block);
  }
}

@end