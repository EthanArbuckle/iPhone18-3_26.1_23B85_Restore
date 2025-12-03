@interface APCoordinatedProxyUrlRequestBox
- (APCoordinatedProxyUrlRequestBox)initWithDelegate:(id)delegate handler:(id)handler;
@end

@implementation APCoordinatedProxyUrlRequestBox

- (APCoordinatedProxyUrlRequestBox)initWithDelegate:(id)delegate handler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = APCoordinatedProxyUrlRequestBox;
  v7 = [(APCoordinatedRetryBox *)&v11 initWithType:2 delegate:delegate];
  if (v7)
  {
    v8 = _Block_copy(handlerCopy);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;
  }

  return v7;
}

@end