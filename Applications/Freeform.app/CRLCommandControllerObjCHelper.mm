@interface CRLCommandControllerObjCHelper
+ (void)fatalAssertOnNilCommand:(id)a3;
@end

@implementation CRLCommandControllerObjCHelper

+ (void)fatalAssertOnNilCommand:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101360108();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10136011C(v4, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013601C8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v6, v4);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Tried to enqueue nil command.", v7, v8, v9, v10, v11, v12, v13, "+[CRLCommandControllerObjCHelper fatalAssertOnNilCommand:]");
    v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLCommandControllerObjCHelper fatalAssertOnNilCommand:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandControllerObjCHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:17 isFatal:1 description:"Tried to enqueue nil command."];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v16, v17);
    abort();
  }
}

@end