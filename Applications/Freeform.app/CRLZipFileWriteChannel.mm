@interface CRLZipFileWriteChannel
- (CRLZipFileWriteChannel)init;
- (CRLZipFileWriteChannel)initWithArchiveWriter:(id)writer;
- (void)flushWithCompletion:(id)completion;
- (void)writeData:(id)data handler:(id)handler;
@end

@implementation CRLZipFileWriteChannel

- (CRLZipFileWriteChannel)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101859080);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 67110146;
    v18 = v2;
    v19 = 2082;
    v20 = "[CRLZipFileWriteChannel init]";
    v21 = 2082;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriteChannel.mm";
    v23 = 1024;
    v24 = 20;
    v25 = 2114;
    v26 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Abstract method not overridden by %{public}@", buf, 0x2Cu);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_1018590A0);
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v18 = v2;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v8 = [NSString stringWithUTF8String:"[CRLZipFileWriteChannel init]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriteChannel.mm"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:20 isFatal:0 description:"Abstract method not overridden by %{public}@", v11];

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [NSString stringWithFormat:@"Abstract method not overridden by %@: %s", v13, "[CRLZipFileWriteChannel init]"];
  v15 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (CRLZipFileWriteChannel)initWithArchiveWriter:(id)writer
{
  writerCopy = writer;
  v12.receiver = self;
  v12.super_class = CRLZipFileWriteChannel;
  v6 = [(CRLZipFileWriteChannel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveWriter, writer);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("CRLZipFileWriteChannel.Writer", v8);
    writerQueue = v7->_writerQueue;
    v7->_writerQueue = v9;
  }

  return v7;
}

- (void)writeData:(id)data handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = atomic_load(&self->_isClosed);
  if (v8)
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135B604();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135B618();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135B6AC();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = +[CRLAssertionHandler packedBacktraceString];
      sub_101314064(v15, v30, v13);
    }

    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Channel is closed", v16, v17, v18, v19, v20, v21, v22, "[CRLZipFileWriteChannel writeData:handler:]");
    v23 = [NSString stringWithUTF8String:"[CRLZipFileWriteChannel writeData:handler:]"];
    v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriteChannel.mm"];
    [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:40 isFatal:1 description:"Channel is closed"];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v25, v26);
    abort();
  }

  if (dataCopy)
  {
    size = dispatch_data_get_size(dataCopy);
  }

  else
  {
    size = 0;
  }

  archiveWriter = self->_archiveWriter;
  writerQueue = self->_writerQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100364524;
  v27[3] = &unk_1018590C8;
  v12 = handlerCopy;
  v28 = v12;
  v29 = size;
  [(CRLZipWriter *)archiveWriter addData:dataCopy queue:writerQueue completion:v27];
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10135B6D4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10135B6E8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10135B77C();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = +[CRLAssertionHandler packedBacktraceString];
    sub_101314064(v7, v13, v5);
  }

  v8 = [NSString stringWithUTF8String:"[CRLZipFileWriteChannel flushWithCompletion:]"];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriteChannel.mm"];
  [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:57 isFatal:0 description:"Flushing ZIP write channel only adds a barrier."];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100364900;
  v11[3] = &unk_10184A5A8;
  v10 = completionCopy;
  v12 = v10;
  [(CRLZipFileWriteChannel *)self addBarrier:v11];
}

@end