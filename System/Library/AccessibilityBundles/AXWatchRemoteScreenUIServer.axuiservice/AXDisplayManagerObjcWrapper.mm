@interface AXDisplayManagerObjcWrapper
- (AXDisplayManagerObjcWrapper)initWithService:(id)service;
- (AXUIService)service;
@end

@implementation AXDisplayManagerObjcWrapper

- (AXDisplayManagerObjcWrapper)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = AXDisplayManagerObjcWrapper;
  v5 = [(AXDisplayManagerObjcWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXDisplayManagerObjcWrapper *)v5 setService:serviceCopy];
  }

  return v6;
}

- (AXUIService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end