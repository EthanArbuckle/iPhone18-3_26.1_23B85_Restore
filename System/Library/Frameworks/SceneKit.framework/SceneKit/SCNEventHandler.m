@interface SCNEventHandler
- (SCNEventHandler)init;
- (void)dealloc;
@end

@implementation SCNEventHandler

- (SCNEventHandler)init
{
  v3.receiver = self;
  v3.super_class = SCNEventHandler;
  result = [(SCNEventHandler *)&v3 init];
  if (result)
  {
    *&result->_enableFreeCamera = 257;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SCNEventHandler;
  [(SCNEventHandler *)&v2 dealloc];
}

@end