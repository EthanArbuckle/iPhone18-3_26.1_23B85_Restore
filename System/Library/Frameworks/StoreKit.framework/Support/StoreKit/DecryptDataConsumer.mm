@interface DecryptDataConsumer
- (BOOL)_beginSessionWithDPInfo:(id)a3 error:(id *)a4;
- (DecryptDataConsumer)initWithDPInfo:(id)a3 error:(id *)a4;
- (void)_resetDecryptionBufferAndDigestVerifier;
- (void)_resizeSampleSizeArray:(unint64_t)a3;
- (void)consumeData:(id)a3 withCompletionHandler:(id)a4;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)a3;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)resetWithCompletionHandler:(id)a3;
- (void)suspendWithCompletionHandler:(id)a3;
- (void)truncateWithCompletionHandler:(id)a3;
@end

@implementation DecryptDataConsumer

- (DecryptDataConsumer)initWithDPInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DecryptDataConsumer;
  v7 = [(DecryptDataConsumer *)&v12 init];
  if (v7)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.storekit.DecryptDataConsumer", v8);
    consumerQueue = v7->_consumerQueue;
    v7->_consumerQueue = v9;

    v7->_partialSampleBuffer = malloc_type_malloc(0x8000uLL, 0xD616FF90uLL);
    v7->_partialSampleBufferLength = 0;
    v7->_sampleSizes = 0;
    v7->_sampleSizesCount = 0;
    if (![(DecryptDataConsumer *)v7 _beginSessionWithDPInfo:v6 error:a4])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  free(self->_partialSampleBuffer);
  self->_partialSampleBuffer = 0;
  free(self->_sampleSizes);
  self->_sampleSizes = 0;
  session = self->_session;
  if (session)
  {
    sub_10024FD3C(session);
    self->_session = 0;
  }

  v4.receiver = self;
  v4.super_class = DecryptDataConsumer;
  [(DecryptDataConsumer *)&v4 dealloc];
}

- (BOOL)_beginSessionWithDPInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10001E3D8;
  v20 = sub_10001E3E8;
  v21 = 0;
  consumerQueue = self->_consumerQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001E3F0;
  v11[3] = &unk_100380670;
  v14 = &v16;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v15 = &v22;
  dispatch_sync(consumerQueue, v11);
  v9 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v9 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9 & 1;
}

- (void)_resizeSampleSizeArray:(unint64_t)a3
{
  if (self->_sampleSizesCount < a3)
  {
    v5 = 4 * a3;
    v6 = malloc_type_realloc(self->_sampleSizes, 4 * a3, 0x100004052888210uLL);
    self->_sampleSizes = v6;
    sampleSizesCount = self->_sampleSizesCount;
    if (sampleSizesCount < a3)
    {
      memset_pattern16(&v6[sampleSizesCount], &unk_1002EA4C0, v5 - 4 * sampleSizesCount);
    }

    self->_sampleSizesCount = a3;
  }
}

- (void)consumeData:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  consumerQueue = self->_consumerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E6E8;
  block[3] = &unk_100380698;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(consumerQueue, block);
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001EE40;
  v7[3] = &unk_100380710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(consumerQueue, v7);
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F19C;
  v7[3] = &unk_100380710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(consumerQueue, v7);
}

- (void)resetWithCompletionHandler:(id)a3
{
  v4 = a3;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F3C8;
  v7[3] = &unk_100380710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(consumerQueue, v7);
}

- (void)suspendWithCompletionHandler:(id)a3
{
  v4 = a3;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F510;
  v7[3] = &unk_100380710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(consumerQueue, v7);
}

- (void)truncateWithCompletionHandler:(id)a3
{
  v4 = a3;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F658;
  v7[3] = &unk_100380710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(consumerQueue, v7);
}

- (void)_resetDecryptionBufferAndDigestVerifier
{
  self->_partialSampleBufferLength = 0;
  self->_digestVerifier = 0;
  _objc_release_x1();
}

@end