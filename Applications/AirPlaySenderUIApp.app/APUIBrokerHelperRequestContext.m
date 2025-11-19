@interface APUIBrokerHelperRequestContext
- (APUIBrokerHelperRequestContext)init;
@end

@implementation APUIBrokerHelperRequestContext

- (APUIBrokerHelperRequestContext)init
{
  v6.receiver = self;
  v6.super_class = APUIBrokerHelperRequestContext;
  v2 = [(APUIBrokerHelperRequestContext *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    semaphore = v2->_semaphore;
    v2->_semaphore = v3;
  }

  return v2;
}

@end