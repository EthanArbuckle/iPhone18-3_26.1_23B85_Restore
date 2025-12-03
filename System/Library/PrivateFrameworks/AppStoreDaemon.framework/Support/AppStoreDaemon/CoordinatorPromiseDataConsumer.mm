@interface CoordinatorPromiseDataConsumer
- (void)consumeData:(id)data andWaitWithCompletionHandler:(id)handler;
- (void)consumeData:(id)data withCompletionHandler:(id)handler;
- (void)finishWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)resetWithCompletionHandler:(id)handler;
- (void)suspendWithCompletionHandler:(id)handler;
- (void)truncateWithCompletionHandler:(id)handler;
@end

@implementation CoordinatorPromiseDataConsumer

- (void)consumeData:(id)data andWaitWithCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9530;
  block[3] = &unk_10051BB18;
  v12 = dataCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dataCopy;
  v10 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)consumeData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D9694;
  block[3] = &unk_10051BB18;
  v12 = dataCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = dataCopy;
  v10 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D97C8;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9900;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)resetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9C30;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)suspendWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9F1C;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)truncateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DA054;
  v7[3] = &unk_10051B2D0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

@end