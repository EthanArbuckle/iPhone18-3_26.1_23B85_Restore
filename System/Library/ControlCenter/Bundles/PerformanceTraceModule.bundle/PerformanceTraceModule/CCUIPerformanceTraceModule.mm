@interface CCUIPerformanceTraceModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIPerformanceTraceModule

- (id)contentViewControllerForContext:(id)context
{
  viewController = self->_viewController;
  if (!viewController)
  {
    v5 = objc_alloc_init(CCUIPerformanceTraceModuleViewController);
    v6 = [MEMORY[0x29EDB9F48] ccui_bundleForModuleInstance:self];
    ccui_displayName = [v6 ccui_displayName];
    [(CCUIMenuModuleViewController *)v5 setTitle:ccui_displayName];

    v8 = self->_viewController;
    self->_viewController = v5;
    v9 = v5;

    [(CCUIMenuModuleViewController *)self->_viewController setContentModuleContext:self->_contentModuleContext];
    viewController = self->_viewController;
  }

  return viewController;
}

@end