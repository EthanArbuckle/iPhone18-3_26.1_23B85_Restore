@interface CRLIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)stream outInfo:(void *)info outCallbacks:(const CGDataProviderSequentialCallbacks *)callbacks;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)channel length:(unint64_t)length outInfo:(void *)info outCallbacks:(const CGDataProviderSequentialCallbacks *)callbacks;
+ (void)readAllFromChannel:(id)channel completion:(id)completion;
+ (void)readAllFromChannel:(id)channel offset:(int64_t)offset length:(unint64_t)length completion:(id)completion;
+ (void)readFromOffsetAndWait:(id)wait offset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
+ (void)readWithHandlerAndWait:(id)wait handler:(id)handler;
@end

@implementation CRLIOUtils

+ (void)readAllFromChannel:(id)channel offset:(int64_t)offset length:(unint64_t)length completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  v11 = completionCopy;
  if (channelCopy)
  {
    if (completionCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101378CB0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101378CC4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101378D58();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101378D80(v12);
  }

  v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLIOUtils readAllFromChannel:offset:length:completion:]");
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLIOUtils.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:75 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

  if (!v11)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101378E28();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378E50();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101378EE4();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101378F0C(v15);
    }

    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLIOUtils readAllFromChannel:offset:length:completion:]");
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLIOUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:76 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];
  }

LABEL_22:
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_100462CDC;
  v23[4] = sub_100462CEC;
  v18 = &_dispatch_data_empty;
  v24 = &_dispatch_data_empty;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100462CF4;
  v20[3] = &unk_101864B80;
  v22 = v23;
  v19 = v11;
  v21 = v19;
  [channelCopy readFromOffset:offset length:length handler:v20];

  _Block_object_dispose(v23, 8);
}

+ (void)readAllFromChannel:(id)channel completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  v7 = completionCopy;
  if (channelCopy)
  {
    if (completionCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101378FB4();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101378FC8();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10137905C();
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101379084(v8);
  }

  v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLIOUtils readAllFromChannel:completion:]");
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLIOUtils.m"];
  [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:100 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

  if (!v7)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137912C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101379154();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013791E8();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101379210(v11);
    }

    v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLIOUtils readAllFromChannel:completion:]");
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLIOUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:101 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];
  }

LABEL_22:
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100462CDC;
  v19[4] = sub_100462CEC;
  v14 = &_dispatch_data_empty;
  v20 = &_dispatch_data_empty;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100463224;
  v16[3] = &unk_101864B80;
  v18 = v19;
  v15 = v7;
  v17 = v15;
  [channelCopy readWithHandler:v16];

  _Block_object_dispose(v19, 8);
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)stream outInfo:(void *)info outCallbacks:(const CGDataProviderSequentialCallbacks *)callbacks
{
  if (!stream)
  {
    return 0;
  }

  streamCopy = stream;
  CFRetain(streamCopy);
  if (info)
  {
    *info = streamCopy;
  }

  if (callbacks)
  {
    *callbacks = &unk_101864C20;
  }

  Sequential = CGDataProviderCreateSequential(streamCopy, &unk_101864C20);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)channel length:(unint64_t)length outInfo:(void *)info outCallbacks:(const CGDataProviderSequentialCallbacks *)callbacks
{
  if (!channel)
  {
    return 0;
  }

  channelCopy = channel;
  v11 = [[CRLReadChannelInputStreamAdapter alloc] initWithReadChannel:channelCopy length:length];

  if ([(CRLReadChannelInputStreamAdapter *)v11 canSeek])
  {
    v12 = [self newCGDataProviderForInputStream:v11 outInfo:info outCallbacks:callbacks];
  }

  else
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013792B8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013792CC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137936C();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v14, v13);
    }

    v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLIOUtils newCGDataProviderForReadChannel:length:outInfo:outCallbacks:]");
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLIOUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:157 isFatal:0 description:"Need a seekable input stream for CGDataProvider"];

    v12 = 0;
  }

  return v12;
}

+ (void)readWithHandlerAndWait:(id)wait handler:(id)handler
{
  handlerCopy = handler;
  waitCopy = wait;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10046368C;
  v9[3] = &unk_101864C90;
  v11 = handlerCopy;
  v7 = dispatch_semaphore_create(0);
  v10 = v7;
  v8 = handlerCopy;
  [waitCopy readWithHandler:v9];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)readFromOffsetAndWait:(id)wait offset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  waitCopy = wait;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004637D4;
  v13[3] = &unk_101864C90;
  v15 = handlerCopy;
  v11 = dispatch_semaphore_create(0);
  v14 = v11;
  v12 = handlerCopy;
  [waitCopy readFromOffset:offset length:length handler:v13];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

@end