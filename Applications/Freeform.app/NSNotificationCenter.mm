@interface NSNotificationCenter
- (id)crl_addObserverForName:(id)name object:(id)object queue:(id)queue usingBlock:(id)block;
@end

@implementation NSNotificationCenter

- (id)crl_addObserverForName:(id)name object:(id)object queue:(id)queue usingBlock:(id)block
{
  nameCopy = name;
  objectCopy = object;
  queueCopy = queue;
  blockCopy = block;
  if (!nameCopy)
  {
    v14 = +[NSOperationQueue mainQueue];

    if (v14 == queueCopy)
    {
      v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101326970();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101326984(v17, v18);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101326A30();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v19, v17);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d You should not add an observer for all notifications on the main thread because it's deadlock prone.", v20, v21, v22, v23, v24, v25, v26, "[NSNotificationCenter(CRLAdditions) crl_addObserverForName:object:queue:usingBlock:]");
      v27 = [NSString stringWithUTF8String:"[NSNotificationCenter(CRLAdditions) crl_addObserverForName:object:queue:usingBlock:]"];
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/NSNotificationCenter_CRLAdditions.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:17 isFatal:1 description:"You should not add an observer for all notifications on the main thread because it's deadlock prone."];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v29, v30);
      abort();
    }
  }

  v15 = [(NSNotificationCenter *)self addObserverForName:nameCopy object:objectCopy queue:queueCopy usingBlock:blockCopy];

  return v15;
}

@end