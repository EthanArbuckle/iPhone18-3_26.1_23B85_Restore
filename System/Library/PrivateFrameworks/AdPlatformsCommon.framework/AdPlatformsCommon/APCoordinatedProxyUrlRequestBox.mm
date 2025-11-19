@interface APCoordinatedProxyUrlRequestBox
- (APCoordinatedProxyUrlRequestBox)initWithDelegate:(id)a3 handler:(id)a4;
@end

@implementation APCoordinatedProxyUrlRequestBox

- (APCoordinatedProxyUrlRequestBox)initWithDelegate:(id)a3 handler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = APCoordinatedProxyUrlRequestBox;
  v7 = [(APCoordinatedRetryBox *)&v11 initWithType:2 delegate:a3];
  if (v7)
  {
    v8 = _Block_copy(v6);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v8;
  }

  return v7;
}

@end