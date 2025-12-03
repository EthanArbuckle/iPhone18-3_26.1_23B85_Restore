@interface DummyHandlerProvider
- (DummyHandlerProvider)initWithHandler:(id)handler;
@end

@implementation DummyHandlerProvider

- (DummyHandlerProvider)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = DummyHandlerProvider;
  v6 = [(DummyHandlerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handler, handler);
  }

  return v7;
}

@end