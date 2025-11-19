@interface DummyHandlerProvider
- (DummyHandlerProvider)initWithHandler:(id)a3;
@end

@implementation DummyHandlerProvider

- (DummyHandlerProvider)initWithHandler:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DummyHandlerProvider;
  v6 = [(DummyHandlerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handler, a3);
  }

  return v7;
}

@end