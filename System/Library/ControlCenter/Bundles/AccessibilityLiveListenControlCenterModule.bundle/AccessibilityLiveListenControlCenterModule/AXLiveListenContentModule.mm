@interface AXLiveListenContentModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation AXLiveListenContentModule

- (id)contentViewControllerForContext:(id)context
{
  moduleViewController = self->_moduleViewController;
  if (!moduleViewController)
  {
    v5 = objc_alloc_init(AXLiveListenModuleViewController);
    v6 = self->_moduleViewController;
    self->_moduleViewController = v5;

    moduleViewController = self->_moduleViewController;
  }

  contentModuleContext = [(AXLiveListenContentModule *)self contentModuleContext];
  [(AXLiveListenModuleViewController *)moduleViewController setContentModuleContext:contentModuleContext];

  v8 = self->_moduleViewController;

  return v8;
}

@end