@interface CCUIConnectivityModule
- (CCUIConnectivityModule)init;
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIConnectivityModule

- (CCUIConnectivityModule)init
{
  v8.receiver = self;
  v8.super_class = CCUIConnectivityModule;
  v4 = [(CCUIConnectivityModule *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x29EDC0C50], v2, v3);
    connectivityManager = v4->_connectivityManager;
    v4->_connectivityManager = v5;
  }

  return v4;
}

- (id)contentViewControllerForContext:(id)context
{
  v4 = [CCUIConnectivityModuleViewController alloc];
  v6 = objc_msgSend_initWithContentModuleContext_(v4, v5, self->_contentModuleContext);

  return v6;
}

@end