@interface LZMADataConsumer
- (LZMADataConsumer)init;
- (void)consumeData:(id)data withCompletionHandler:(id)handler;
- (void)finishWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)resetWithCompletionHandler:(id)handler;
- (void)suspendWithCompletionHandler:(id)handler;
- (void)truncateWithCompletionHandler:(id)handler;
@end

@implementation LZMADataConsumer

- (LZMADataConsumer)init
{
  v6.receiver = self;
  v6.super_class = LZMADataConsumer;
  v2 = [(LZMADataConsumer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableData);
    buffer = v2->_buffer;
    v2->_buffer = v3;
  }

  return v2;
}

- (void)consumeData:(id)data withCompletionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if ([dataCopy length])
  {
    v12 = 0;
    v8 = sub_10034063C(self, dataCopy, &v12);
    v9 = v12;
    if (v8)
    {
      streamAdapter = self->_streamAdapter;
      v11 = [(NSMutableData *)self->_buffer copy];
      [(AssetDataConsumer *)streamAdapter consumeData:v11 withCompletionHandler:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy, v9, 0);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v5 = sub_10034063C(self, 0, &v13);
  v6 = v13;
  if (v5)
  {
    decoder = self->_decoder;
    self->_decoder = 0;

    v8 = [(NSMutableData *)self->_buffer length];
    streamAdapter = self->_streamAdapter;
    if (v8)
    {
      v10 = [(NSMutableData *)self->_buffer copy];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1003408FC;
      v11[3] = &unk_10051CE90;
      v11[4] = self;
      v12 = handlerCopy;
      [(AssetDataConsumer *)streamAdapter consumeData:v10 andWaitWithCompletionHandler:v11];
    }

    else
    {
      [(AssetDataConsumer *)self->_streamAdapter finishWithCompletionHandler:handlerCopy];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v6);
  }
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = sub_100209634([LZMADecoder alloc], self->_digest);
  decoder = self->_decoder;
  self->_decoder = v4;

  v6 = self->_decoder;
  if (v6)
  {
    v6->_disableAutodetection = self->_disableAutodetection;
  }

  [(AssetDataConsumer *)self->_streamAdapter prepareWithCompletionHandler:handlerCopy];
}

- (void)resetWithCompletionHandler:(id)handler
{
  decoder = self->_decoder;
  self->_decoder = 0;
  handlerCopy = handler;

  [(AssetDataConsumer *)self->_streamAdapter resetWithCompletionHandler:handlerCopy];
}

- (void)suspendWithCompletionHandler:(id)handler
{
  decoder = self->_decoder;
  self->_decoder = 0;
  handlerCopy = handler;

  v5 = [NSError errorWithDomain:ASDErrorDomain code:400 userInfo:0];
  handlerCopy[2](handlerCopy, v5);
}

- (void)truncateWithCompletionHandler:(id)handler
{
  decoder = self->_decoder;
  self->_decoder = 0;
  handlerCopy = handler;

  [(AssetDataConsumer *)self->_streamAdapter truncateWithCompletionHandler:handlerCopy];
}

@end