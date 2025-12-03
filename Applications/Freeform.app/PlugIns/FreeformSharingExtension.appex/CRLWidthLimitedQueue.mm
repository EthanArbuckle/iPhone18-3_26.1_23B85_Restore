@interface CRLWidthLimitedQueue
- (CRLWidthLimitedQueue)initWithLimit:(unint64_t)limit name:(id)name targetQueue:(id)queue;
- (void)performAsync:(id)async;
- (void)performSync:(id)sync;
@end

@implementation CRLWidthLimitedQueue

- (CRLWidthLimitedQueue)initWithLimit:(unint64_t)limit name:(id)name targetQueue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v28.receiver = self;
  v28.super_class = CRLWidthLimitedQueue;
  v10 = [(CRLWidthLimitedQueue *)&v28 init];
  if (!v10)
  {
    goto LABEL_31;
  }

  if (CRLWidthLimitedQueueDefaultWidth != limit)
  {
    if (limit)
    {
      goto LABEL_4;
    }

LABEL_13:
    v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      sub_10007C99C();
    }

    v16 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007C9C4(v15, v16);
    }

    if (CRLAssertCat_init_token != -1)
    {
      sub_10007CA70();
    }

    v17 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10007CA98(v17);
    }

    v18 = [NSString stringWithUTF8String:"[CRLWidthLimitedQueue initWithLimit:name:targetQueue:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLWidthLimitedQueue.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:48 isFatal:0 description:"Queue limit should be at least one."];

    limit = 1;
    if (!nameCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = +[NSProcessInfo processInfo];
  processorCount = [v11 processorCount];

  if (processorCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = processorCount;
  }

  v14 = 2 * v13;
  if (v14 >= 0x18)
  {
    limit = 24;
  }

  else
  {
    limit = v14;
  }

  if (!limit)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!nameCopy)
  {
    goto LABEL_23;
  }

LABEL_22:
  if (![(__CFString *)nameCopy length])
  {
LABEL_23:

    nameCopy = @"com.apple.freeform.limitedqueue";
  }

  if (limit >> 31)
  {
    sub_10007CB4C();
    LODWORD(limit) = 0x7FFFFFFF;
  }

  v10->mReaderCount = 0;
  v10->mLimit = limit;
  v20 = [(__CFString *)nameCopy stringByAppendingString:@".manager"];
  uTF8String = [v20 UTF8String];
  if (!uTF8String)
  {
    uTF8String = "com.apple.freeform.limitedqueue.manager";
  }

  v22 = dispatch_queue_create(uTF8String, 0);
  mManagerQueue = v10->mManagerQueue;
  v10->mManagerQueue = v22;

  uTF8String2 = [(__CFString *)nameCopy UTF8String];
  if (!uTF8String2)
  {
    uTF8String2 = "com.apple.freeform.limitedqueue";
  }

  v25 = dispatch_queue_create_with_target_V2(uTF8String2, &_dispatch_queue_attr_concurrent, queueCopy);
  mTargetQueue = v10->mTargetQueue;
  v10->mTargetQueue = v25;

  v10->mUnfairLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
LABEL_31:

  return v10;
}

- (void)performAsync:(id)async
{
  asyncCopy = async;
  mManagerQueue = self->mManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000107C8;
  v7[3] = &unk_1000A6A10;
  v7[4] = self;
  v8 = asyncCopy;
  v6 = asyncCopy;
  dispatch_async(mManagerQueue, v7);
}

- (void)performSync:(id)sync
{
  syncCopy = sync;
  mManagerQueue = self->mManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000109B8;
  v7[3] = &unk_1000A6A10;
  v7[4] = self;
  v8 = syncCopy;
  v6 = syncCopy;
  dispatch_barrier_sync(mManagerQueue, v7);
}

@end