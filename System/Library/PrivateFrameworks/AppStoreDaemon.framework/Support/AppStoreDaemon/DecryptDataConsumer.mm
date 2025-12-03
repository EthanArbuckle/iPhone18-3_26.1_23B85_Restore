@interface DecryptDataConsumer
- (void)consumeData:(id)data withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)resetWithCompletionHandler:(id)handler;
- (void)suspendWithCompletionHandler:(id)handler;
- (void)truncateWithCompletionHandler:(id)handler;
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

- (void)consumeData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  consumerQueue = self->_consumerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020365C;
  block[3] = &unk_10051BB18;
  v12 = dataCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dataCopy;
  v10 = handlerCopy;
  dispatch_async(consumerQueue, block);
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100203CDC;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(consumerQueue, v7);
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020402C;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(consumerQueue, v7);
}

- (void)resetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100204168;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(consumerQueue, v7);
}

- (void)suspendWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10020429C;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(consumerQueue, v7);
}

- (void)truncateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  consumerQueue = self->_consumerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002043D0;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(consumerQueue, v7);
}

@end