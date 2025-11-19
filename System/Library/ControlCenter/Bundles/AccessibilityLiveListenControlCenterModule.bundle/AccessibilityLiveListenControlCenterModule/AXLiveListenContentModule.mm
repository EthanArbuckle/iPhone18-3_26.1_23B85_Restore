@interface AXLiveListenContentModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation AXLiveListenContentModule

- (id)contentViewControllerForContext:(id)a3
{
  moduleViewController = self->_moduleViewController;
  if (!moduleViewController)
  {
    v5 = objc_alloc_init(AXLiveListenModuleViewController);
    v6 = self->_moduleViewController;
    self->_moduleViewController = v5;

    moduleViewController = self->_moduleViewController;
  }

  v7 = [(AXLiveListenContentModule *)self contentModuleContext];
  [(AXLiveListenModuleViewController *)moduleViewController setContentModuleContext:v7];

  v8 = self->_moduleViewController;

  return v8;
}

@end