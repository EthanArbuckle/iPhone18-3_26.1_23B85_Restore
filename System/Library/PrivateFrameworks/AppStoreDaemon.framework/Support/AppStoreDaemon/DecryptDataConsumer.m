@interface DecryptDataConsumer
- (void)consumeData:(id)a3 withCompletionHandler:(id)a4;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)a3;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)resetWithCompletionHandler:(id)a3;
- (void)suspendWithCompletionHandler:(id)a3;
- (void)truncateWithCompletionHandler:(id)a3;
@end

@implementation DecryptDataConsumer

- (void)dealloc
{
  free(self->_partialSampleBuffer);
  self->_partialSampleBuffer = 0;
  free(self->_sampleSizes);
  self->_sampleSizes = 0;
  session = self->_session;
  if (session)
  {
    sub_10000BA98(session);
    self->_session = 0;
  }

  v4.receiver = self;
  v4.super_class = DecryptDataConsumer;
  [(DecryptDataConsumer *)&v4 dealloc];
}

- (void)consumeData:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  consumerQueue = self->_consumerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020365C;
  block[3] = &unk_10051BB18;
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
  v7[2] = sub_100203CDC;
  v7[3] = &unk_10051B2D0;
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
  v7[2] = sub_10020402C;
  v7[3] = &unk_10051B2D0;
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
  v7[2] = sub_100204168;
  v7[3] = &unk_10051B2D0;
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
  v7[2] = sub_10020429C;
  v7[3] = &unk_10051B2D0;
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
  v7[2] = sub_1002043D0;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(consumerQueue, v7);
}

@end