@interface CRLFileIOChannel
- (BOOL)isValid;
- (CRLFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode error:(id *)error cleanupHandler:(id)handler;
- (CRLFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor cleanupHandler:(id)handler;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)flushWithCompletion:(id)completion;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setLowWater:(unint64_t)water;
- (void)truncateToLength:(int64_t)length completion:(id)completion;
- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler;
@end

@implementation CRLFileIOChannel

- (CRLFileIOChannel)initWithType:(unint64_t)type URL:(id)l oflag:(int)oflag mode:(unsigned __int16)mode error:(id *)error cleanupHandler:(id)handler
{
  modeCopy = mode;
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy || ([lCopy isFileURL] & 1) == 0)
  {
    if (error)
    {
      *error = [NSError crl_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 2);
    }

    goto LABEL_19;
  }

  v46.receiver = self;
  v46.super_class = CRLFileIOChannel;
  v16 = [(CRLFileIOChannel *)&v46 init];
  if (!v16)
  {
    if (error)
    {
      *error = [NSError crl_fileReadPOSIXErrorWithNumber:12 userInfo:0];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 12);
    }

    self = 0;
LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10015BB30;
  v41[3] = &unk_101840848;
  v43 = v44;
  v17 = handlerCopy;
  v42 = v17;
  v37 = objc_retainBlock(v41);
  v16->_oflag = oflag;
  path = [lCopy path];
  v19 = path;
  fileSystemRepresentation = [path fileSystemRepresentation];

  if (fileSystemRepresentation)
  {
    if ((oflag & 0x400) != 0)
    {
      unlink(fileSystemRepresentation);
    }

    v21 = open(fileSystemRepresentation, oflag, modeCopy);
    if (v21 < 0)
    {
      v28 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
      if (qword_101AD5A08 != -1)
      {
        sub_10131ED7C();
      }

      v31 = off_1019EDA60;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = __error();
        v33 = strerror(*v32);
        sub_10131EDA4(v33, buf, fileSystemRepresentation, v31);
      }

      v34 = __error();
      (v37[2])(v37, *v34);
      goto LABEL_26;
    }

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("CRLFileIOChannel.IO", v22);
    ioQueue = v16->_ioQueue;
    v16->_ioQueue = v23;

    v25 = v16->_ioQueue;
    cleanup_handler[0] = _NSConcreteStackBlock;
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_10015BB88;
    cleanup_handler[3] = &unk_101840890;
    v40 = v21;
    v39 = v17;
    v26 = dispatch_io_create(type, v21, v25, cleanup_handler);
    channel = v16->_channel;
    v16->_channel = v26;
  }

  v28 = 0;
LABEL_26:
  if (!v16->_channel)
  {
    if (error)
    {
      if (v28)
      {
        v35 = v28;
        *error = v28;
      }

      else
      {
        v36 = [NSError crl_fileReadPOSIXErrorWithNumber:2 userInfo:0];
        *error = v36;
      }
    }

    (v37[2])(v37, 2);

    v16 = 0;
  }

  self = v16;

  _Block_object_dispose(v44, 8);
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (CRLFileIOChannel)initWithType:(unint64_t)type descriptor:(int)descriptor cleanupHandler:(id)handler
{
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CRLFileIOChannel;
  v9 = [(CRLFileIOChannel *)&v21 init];
  if (v9)
  {
    v10 = v9;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("CRLFileIOChannel.IO", v11);
    ioQueue = v10->_ioQueue;
    v10->_ioQueue = v12;

    v14 = v10->_ioQueue;
    cleanup_handler[0] = _NSConcreteStackBlock;
    cleanup_handler[1] = 3221225472;
    cleanup_handler[2] = sub_10015BEA4;
    cleanup_handler[3] = &unk_1018408F8;
    v20 = handlerCopy;
    v15 = dispatch_io_create(type, descriptor, v14, cleanup_handler);
    channel = v10->_channel;
    v10->_channel = v15;

    if (!v10->_channel)
    {

      v10 = 0;
    }

    v17 = v10;
  }

  else
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 12);
    }

    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_isClosed);
  if ((v3 & 1) == 0)
  {
    channel = self->_channel;
    if (channel)
    {
      dispatch_io_close(channel, 0);
    }
  }

  v5.receiver = self;
  v5.super_class = CRLFileIOChannel;
  [(CRLFileIOChannel *)&v5 dealloc];
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v9 = atomic_load(&self->_isClosed);
  if (v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131EEB0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131EEC4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131EF4C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLFileIOChannel readFromOffset:length:handler:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:214 isFatal:0 description:"Channel is closed"];
  }

  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v14 = p_ioQueue[1];
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_10015C250;
  io_handler[3] = &unk_101840960;
  v18 = handlerCopy;
  v16 = handlerCopy;
  dispatch_io_read(v14, offset, length, ioQueue, io_handler);
}

- (void)writeData:(id)data offset:(int64_t)offset handler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = atomic_load(&self->_isClosed);
  if (v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131EF74();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131EF88();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F010();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLFileIOChannel writeData:offset:handler:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:236 isFatal:0 description:"Channel is closed"];
  }

  if (!dataCopy)
  {
    dataCopy = &_dispatch_data_empty;
    v14 = &_dispatch_data_empty;
  }

  size = dispatch_data_get_size(dataCopy);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  p_ioQueue = &self->_ioQueue;
  ioQueue = self->_ioQueue;
  v17 = p_ioQueue[1];
  io_handler[0] = _NSConcreteStackBlock;
  io_handler[1] = 3221225472;
  io_handler[2] = sub_10015C5C4;
  io_handler[3] = &unk_1018409C8;
  v22 = v24;
  v23 = size;
  v21 = handlerCopy;
  v19 = handlerCopy;
  dispatch_io_write(v17, offset, dataCopy, ioQueue, io_handler);

  _Block_object_dispose(v24, 8);
}

- (void)close
{
  if ((atomic_exchange(&self->_isClosed, 1u) & 1) == 0)
  {
    if (self->_channel)
    {
      goto LABEL_18;
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F038();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F04C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F0FC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFileIOChannel close]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:260 isFatal:0 description:"invalid nil value for '%{public}s'", "_channel"];

    if (self->_channel)
    {
LABEL_18:
      if (+[CRLFileIOChannel shouldFullFsyncOnClose])
      {
        if ((self->_oflag & 3) != 0)
        {
          v6 = dispatch_semaphore_create(0);
          channel = self->_channel;
          barrier[0] = _NSConcreteStackBlock;
          barrier[1] = 3221225472;
          barrier[2] = sub_10015C930;
          barrier[3] = &unk_10183AE28;
          barrier[4] = self;
          v8 = v6;
          v10 = v8;
          dispatch_io_barrier(channel, barrier);
          dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      dispatch_io_close(self->_channel, 0);
    }
  }
}

- (void)setLowWater:(unint64_t)water
{
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F2EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F300();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F388();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFileIOChannel setLowWater:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:292 isFatal:0 description:"Channel is closed"];
  }

  dispatch_io_set_low_water(self->_channel, water);
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F3B0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F3C4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F44C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFileIOChannel addBarrier:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:298 isFatal:0 description:"Channel is closed"];
  }

  dispatch_io_barrier(self->_channel, barrierCopy);
}

- (void)flushWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F474();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F488();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F510();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLFileIOChannel flushWithCompletion:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:304 isFatal:0 description:"Channel is closed"];
  }

  channel = self->_channel;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015D1AC;
  v11[3] = &unk_10183FC10;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_io_barrier(channel, v11);
}

- (void)truncateToLength:(int64_t)length completion:(id)completion
{
  completionCopy = completion;
  v7 = atomic_load(&self->_isClosed);
  if (v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131F5FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131F610();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131F698();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLFileIOChannel truncateToLength:completion:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLFileIOChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:322 isFatal:0 description:"Channel is closed"];
  }

  channel = self->_channel;
  barrier[0] = _NSConcreteStackBlock;
  barrier[1] = 3221225472;
  barrier[2] = sub_10015D5FC;
  barrier[3] = &unk_10183F0D0;
  v14 = completionCopy;
  lengthCopy = length;
  barrier[4] = self;
  v12 = completionCopy;
  dispatch_io_barrier(channel, barrier);
}

- (BOOL)isValid
{
  v4 = atomic_load(&self->_isClosed);
  if (v4)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  descriptor = dispatch_io_get_descriptor(self->_channel);
  v7 = 0;
  return read(descriptor, &v7, 0) == 0;
}

@end