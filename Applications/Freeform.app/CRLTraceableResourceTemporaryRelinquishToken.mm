@interface CRLTraceableResourceTemporaryRelinquishToken
- (void)dealloc;
@end

@implementation CRLTraceableResourceTemporaryRelinquishToken

- (void)dealloc
{
  if (!self->_didCallCompletionHandler)
  {
    sub_1004D5B78();
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101384DF8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101384E0C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101384E94();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Operation completion handler is getting deallocated before it was invoked.", v3, v4, v5, v6, v7, v8, v9, "[CRLTraceableResourceTemporaryRelinquishToken dealloc]");
    v10 = [NSString stringWithUTF8String:"[CRLTraceableResourceTemporaryRelinquishToken dealloc]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLTraceableResource.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:741 isFatal:1 description:"Operation completion handler is getting deallocated before it was invoked."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v12, v13);
    abort();
  }

  v14.receiver = self;
  v14.super_class = CRLTraceableResourceTemporaryRelinquishToken;
  [(CRLTraceableResourceTemporaryRelinquishToken *)&v14 dealloc];
}

@end