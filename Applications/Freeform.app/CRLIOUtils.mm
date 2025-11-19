@interface CRLIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3 outInfo:(void *)a4 outCallbacks:(const CGDataProviderSequentialCallbacks *)a5;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3 length:(unint64_t)a4 outInfo:(void *)a5 outCallbacks:(const CGDataProviderSequentialCallbacks *)a6;
+ (void)readAllFromChannel:(id)a3 completion:(id)a4;
+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6;
+ (void)readFromOffsetAndWait:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 handler:(id)a6;
+ (void)readWithHandlerAndWait:(id)a3 handler:(id)a4;
@end

@implementation CRLIOUtils

+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (v9)
  {
    if (v10)
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
  [v9 readFromOffset:a4 length:a5 handler:v20];

  _Block_object_dispose(v23, 8);
}

+ (void)readAllFromChannel:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
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
  [v5 readWithHandler:v16];

  _Block_object_dispose(v19, 8);
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3 outInfo:(void *)a4 outCallbacks:(const CGDataProviderSequentialCallbacks *)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = a3;
  CFRetain(v7);
  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = &unk_101864C20;
  }

  Sequential = CGDataProviderCreateSequential(v7, &unk_101864C20);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3 length:(unint64_t)a4 outInfo:(void *)a5 outCallbacks:(const CGDataProviderSequentialCallbacks *)a6
{
  if (!a3)
  {
    return 0;
  }

  v10 = a3;
  v11 = [[CRLReadChannelInputStreamAdapter alloc] initWithReadChannel:v10 length:a4];

  if ([(CRLReadChannelInputStreamAdapter *)v11 canSeek])
  {
    v12 = [a1 newCGDataProviderForInputStream:v11 outInfo:a5 outCallbacks:a6];
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

+ (void)readWithHandlerAndWait:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10046368C;
  v9[3] = &unk_101864C90;
  v11 = v5;
  v7 = dispatch_semaphore_create(0);
  v10 = v7;
  v8 = v5;
  [v6 readWithHandler:v9];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)readFromOffsetAndWait:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 handler:(id)a6
{
  v9 = a6;
  v10 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004637D4;
  v13[3] = &unk_101864C90;
  v15 = v9;
  v11 = dispatch_semaphore_create(0);
  v14 = v11;
  v12 = v9;
  [v10 readFromOffset:a4 length:a5 handler:v13];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

@end