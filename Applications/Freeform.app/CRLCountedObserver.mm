@interface CRLCountedObserver
- (CRLCountedObserver)initWithObserver:(id)a3;
- (id)observer;
- (id)observerIgnoringCount;
- (unint64_t)decrementCount;
- (unint64_t)incrementCount;
@end

@implementation CRLCountedObserver

- (CRLCountedObserver)initWithObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRLCountedObserver;
  v5 = [(CRLCountedObserver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
    v6->_count = 1;
  }

  return v6;
}

- (id)observer
{
  if (self->_count)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)observerIgnoringCount
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (unint64_t)incrementCount
{
  v2 = self->_count + 1;
  self->_count = v2;
  return v2;
}

- (unint64_t)decrementCount
{
  count = self->_count;
  if (!count)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10134A6F0();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10134A704(self, v5);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134A7EC();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F3A8(v6);
    }

    WeakRetained = objc_loadWeakRetained(&self->_observer);
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d CRLCountedObserver - attempted to decrement past 0 for observer %@!", v7, v8, v9, v10, v11, v12, v13, "[CRLCountedObserver decrementCount]");

    v14 = [NSString stringWithUTF8String:"[CRLCountedObserver decrementCount]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m"];
    v16 = objc_loadWeakRetained(&self->_observer);
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:59 isFatal:1 description:"CRLCountedObserver - attempted to decrement past 0 for observer %@!", v16, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLChangeNotifier.m", 59, WeakRetained];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v17, v18);
    abort();
  }

  v3 = count - 1;
  self->_count = v3;
  return v3;
}

@end