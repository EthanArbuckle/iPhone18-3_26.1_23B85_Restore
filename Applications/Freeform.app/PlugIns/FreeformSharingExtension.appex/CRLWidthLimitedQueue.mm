@interface CRLWidthLimitedQueue
- (CRLWidthLimitedQueue)initWithLimit:(unint64_t)a3 name:(id)a4 targetQueue:(id)a5;
- (void)performAsync:(id)a3;
- (void)performSync:(id)a3;
@end

@implementation CRLWidthLimitedQueue

- (CRLWidthLimitedQueue)initWithLimit:(unint64_t)a3 name:(id)a4 targetQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = CRLWidthLimitedQueue;
  v10 = [(CRLWidthLimitedQueue *)&v28 init];
  if (!v10)
  {
    goto LABEL_31;
  }

  if (CRLWidthLimitedQueueDefaultWidth != a3)
  {
    if (a3)
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

    a3 = 1;
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = +[NSProcessInfo processInfo];
  v12 = [v11 processorCount];

  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = 2 * v13;
  if (v14 >= 0x18)
  {
    a3 = 24;
  }

  else
  {
    a3 = v14;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_22:
  if (![(__CFString *)v8 length])
  {
LABEL_23:

    v8 = @"com.apple.freeform.limitedqueue";
  }

  if (a3 >> 31)
  {
    sub_10007CB4C();
    LODWORD(a3) = 0x7FFFFFFF;
  }

  v10->mReaderCount = 0;
  v10->mLimit = a3;
  v20 = [(__CFString *)v8 stringByAppendingString:@".manager"];
  v21 = [v20 UTF8String];
  if (!v21)
  {
    v21 = "com.apple.freeform.limitedqueue.manager";
  }

  v22 = dispatch_queue_create(v21, 0);
  mManagerQueue = v10->mManagerQueue;
  v10->mManagerQueue = v22;

  v24 = [(__CFString *)v8 UTF8String];
  if (!v24)
  {
    v24 = "com.apple.freeform.limitedqueue";
  }

  v25 = dispatch_queue_create_with_target_V2(v24, &_dispatch_queue_attr_concurrent, v9);
  mTargetQueue = v10->mTargetQueue;
  v10->mTargetQueue = v25;

  v10->mUnfairLock._os_unfair_lock_opaque = 0;
  __dmb(0xBu);
LABEL_31:

  return v10;
}

- (void)performAsync:(id)a3
{
  v4 = a3;
  mManagerQueue = self->mManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000107C8;
  v7[3] = &unk_1000A6A10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(mManagerQueue, v7);
}

- (void)performSync:(id)a3
{
  v4 = a3;
  mManagerQueue = self->mManagerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000109B8;
  v7[3] = &unk_1000A6A10;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(mManagerQueue, v7);
}

@end