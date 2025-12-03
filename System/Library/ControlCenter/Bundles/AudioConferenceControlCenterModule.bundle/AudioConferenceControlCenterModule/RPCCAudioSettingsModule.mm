@interface RPCCAudioSettingsModule
- (RPCCAudioSettingsModule)init;
- (id)backgroundViewControllerForContext:(id)context;
- (id)contentViewControllerForContext:(id)context;
- (void)dealloc;
@end

@implementation RPCCAudioSettingsModule

- (RPCCAudioSettingsModule)init
{
  v3.receiver = self;
  v3.super_class = RPCCAudioSettingsModule;
  return [(RPCCAudioSettingsModule *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RPCCAudioSettingsModule;
  [(RPCCAudioSettingsModule *)&v2 dealloc];
}

- (id)contentViewControllerForContext:(id)context
{
  contextCopy = context;
  v5 = _os_feature_enabled_impl();
  environment = [contextCopy environment];
  v7 = &off_2C6F8;
  if (((environment != &dword_0 + 1) & v5) == 0)
  {
    v7 = off_2C6F0;
  }

  v8 = objc_alloc_init(*v7);
  [v8 setShouldLoadFromSensor:{objc_msgSend(contextCopy, "environment") != &dword_0 + 2}];
  [v8 setContentModuleContext:self->_contentModuleContext];
  objc_storeStrong(&self->_currentContentViewController, v8);

  return v8;
}

- (id)backgroundViewControllerForContext:(id)context
{
  contextCopy = context;
  v5 = _os_feature_enabled_impl();
  if ([contextCopy environment] == &dword_0 + 1 || (v5 & 1) == 0)
  {
    v7 = objc_alloc_init(RPCCAudioSettingsModuleBackgroundViewController);
    -[RPCCAudioSettingsModuleBackgroundViewController setShouldLoadFromSensor:](v7, "setShouldLoadFromSensor:", [contextCopy environment] != &dword_0 + 2);
    [(RPCCAudioSettingsModuleBackgroundViewController *)v7 setContentModuleContext:self->_contentModuleContext];
    [(RPCCAudioSettingsModuleBackgroundViewController *)v7 setContentViewController:self->_currentContentViewController];
    backgroundViewController = self->_backgroundViewController;
    self->_backgroundViewController = v7;
    v9 = v7;

    v6 = self->_backgroundViewController;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end