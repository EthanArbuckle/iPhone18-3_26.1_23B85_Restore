@interface CRLZipInflateReadChannel
- (BOOL)processData:(id)data inflateResult:(int *)result CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler;
- (CRLZipInflateReadChannel)initWithReadChannel:(id)channel uncompressedSize:(unint64_t)size CRC:(unsigned int)c validateCRC:(BOOL)rC;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)handler error:(id)error;
- (void)prepareBuffer;
- (void)readWithHandler:(id)handler;
@end

@implementation CRLZipInflateReadChannel

- (CRLZipInflateReadChannel)initWithReadChannel:(id)channel uncompressedSize:(unint64_t)size CRC:(unsigned int)c validateCRC:(BOOL)rC
{
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = CRLZipInflateReadChannel;
  v12 = [(CRLZipInflateReadChannel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readChannel, channel);
    v13->_stream.next_in = 0;
    v13->_remainingUncompressedSize = size;
    v13->_CRC = c;
    v13->_validateCRC = rC;
    v13->_stream.avail_in = 0;
    v13->_stream.avail_out = 0;
    v13->_stream.next_out = 0;
    v13->_stream.zfree = 0;
    v13->_stream.opaque = 0;
    v13->_stream.zalloc = 0;
    if (inflateInit2_(&v13->_stream, -15, "1.2.12", 112))
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10130F614();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10130F63C();
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  [(CRLZipInflateReadChannel *)self close];
  inflateEnd(&self->_stream);
  free(self->_outBuffer);
  v3.receiver = self;
  v3.super_class = CRLZipInflateReadChannel;
  [(CRLZipInflateReadChannel *)&v3 dealloc];
}

- (void)prepareBuffer
{
  if (self->_outBuffer)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130F67C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130F690();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130F73C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLZipInflateReadChannel prepareBuffer]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipInflateReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:77 isFatal:0 description:"expected nil value for '%{public}s'", "_outBuffer"];
  }

  remainingUncompressedSize = self->_remainingUncompressedSize;
  if (remainingUncompressedSize >= 0x40000)
  {
    v7 = 0x40000;
  }

  else
  {
    v7 = self->_remainingUncompressedSize;
  }

  if (remainingUncompressedSize)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x40000;
  }

  self->_outBufferSize = v8;
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  self->_outBuffer = v9;
  self->_stream.avail_out = self->_outBufferSize;
  self->_stream.next_out = v9;
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = crc32(0, 0, 0);
  readChannel = self->_readChannel;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CE2C0;
  v7[3] = &unk_10183A668;
  v9 = v19;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  v10 = v15;
  v11 = v17;
  v12 = v13;
  [(CRLStreamReadChannel *)readChannel readWithHandler:v7];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (BOOL)processData:(id)data inflateResult:(int *)result CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler
{
  doneCopy = done;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000CE608;
  applier[3] = &unk_10183A750;
  v19 = &v22;
  resultCopy = result;
  applier[4] = self;
  cCopy = c;
  handlerCopy = handler;
  v18 = handlerCopy;
  dispatch_data_apply(dataCopy, applier);
  v14 = *(v23 + 24);
  if (!self->_validateCRC || (v23[3] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (doneCopy)
  {
    if (!c)
    {
LABEL_9:
      v14 = 1;
LABEL_10:
      if ((v14 & 1) == 0 || !doneCopy || *result == 1)
      {
        if (v14)
        {
          v15 = 1;
          goto LABEL_25;
        }

LABEL_24:
        [(CRLZipInflateReadChannel *)self handleFailureWithHandler:handlerCopy error:0];
        v15 = *(v23 + 24);
        goto LABEL_25;
      }

      if (qword_101AD5A08 != -1)
      {
        sub_10130F7CC();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10130F7F4();
      }

LABEL_23:
      *(v23 + 24) = 0;
      goto LABEL_24;
    }

LABEL_8:
    if (self->_CRC != *c)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10130F764();
      }

      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10130F78C();
      }

      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v15 = 1;
  if (c && *result == 1)
  {
    goto LABEL_8;
  }

LABEL_25:

  _Block_object_dispose(&v22, 8);
  return v15 & 1;
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  if (error)
  {
    v5 = *(handler + 2);
    handlerCopy = handler;
    v5();
  }

  else
  {
    handlerCopy2 = handler;
    handlerCopy = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
    (*(handler + 2))(handlerCopy2, 1, 0);
  }
}

- (void)close
{
  [(CRLStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

@end