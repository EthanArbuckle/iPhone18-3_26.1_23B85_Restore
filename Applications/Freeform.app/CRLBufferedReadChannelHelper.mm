@interface CRLBufferedReadChannelHelper
- (CRLBufferedReadChannelHelper)init;
- (CRLBufferedReadChannelHelper)initWithBufferedReadChannel:(id)a3;
- (void)readWithHandler:(id)a3;
- (void)readWithHandlerAndWait:(id)a3;
@end

@implementation CRLBufferedReadChannelHelper

- (CRLBufferedReadChannelHelper)initWithBufferedReadChannel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRLBufferedReadChannelHelper;
  v5 = [(CRLBufferedReadChannelHelper *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101326474();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10132649C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101326530();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLBufferedReadChannelHelper initWithBufferedReadChannel:]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:371 isFatal:0 description:"invalid nil value for '%{public}s'", "bufferedReadChannel"];
    }

    objc_storeWeak(&v5->_bufferedReadChannel, v4);
  }

  return v5;
}

- (CRLBufferedReadChannelHelper)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018434D8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLBufferedReadChannelHelper init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m";
    v18 = 1024;
    v19 = 378;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018434F8);
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

  v7 = [NSString stringWithUTF8String:"[CRLBufferedReadChannelHelper init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:378 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLBufferedReadChannelHelper init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)readWithHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);
  [WeakRetained setStreamReadChannelSourceHandler:v4];
}

- (void)readWithHandlerAndWait:(id)a3
{
  v3 = a3;
  v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101843518);
  }

  v5 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v21 = v4;
    v22 = 2082;
    v23 = "[CRLBufferedReadChannelHelper readWithHandlerAndWait:]";
    v24 = 2082;
    v25 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m";
    v26 = 1024;
    v27 = 390;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLBufferedReadChannel should not call readWithHandlerAndWait on CRLBufferedReadChannelHelper", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101843538);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v14 = v6;
    v15 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v21 = v4;
    v22 = 2114;
    v23 = v15;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d CRLBufferedReadChannel should not call readWithHandlerAndWait on CRLBufferedReadChannelHelper", v7, v8, v9, v10, v11, v12, v13, "[CRLBufferedReadChannelHelper readWithHandlerAndWait:]");
  v16 = [NSString stringWithUTF8String:"[CRLBufferedReadChannelHelper readWithHandlerAndWait:]"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
  [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:390 isFatal:1 description:"CRLBufferedReadChannel should not call readWithHandlerAndWait on CRLBufferedReadChannelHelper"];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v18, v19);
  abort();
}

@end