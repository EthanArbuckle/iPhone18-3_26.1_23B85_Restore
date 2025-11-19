@interface ODRInstallContext
- (ODRInstallContext)init;
@end

@implementation ODRInstallContext

- (ODRInstallContext)init
{
  v6.receiver = self;
  v6.super_class = ODRInstallContext;
  v2 = [(ODRInstallContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9appstored6LogKey);
    logKey = v2->_logKey;
    v2->_logKey = v3;
  }

  return v2;
}

@end