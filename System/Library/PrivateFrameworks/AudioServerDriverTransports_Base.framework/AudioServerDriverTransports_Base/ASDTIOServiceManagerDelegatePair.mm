@interface ASDTIOServiceManagerDelegatePair
+ (id)forDelegate:(id)delegate andIOService:(id)service;
@end

@implementation ASDTIOServiceManagerDelegatePair

+ (id)forDelegate:(id)delegate andIOService:(id)service
{
  serviceCopy = service;
  delegateCopy = delegate;
  v7 = objc_alloc_init(ASDTIOServiceManagerDelegatePair);
  [(ASDTIOServiceManagerDelegatePair *)v7 setDelegate:delegateCopy];

  [(ASDTIOServiceManagerDelegatePair *)v7 setIoService:serviceCopy];

  return v7;
}

@end