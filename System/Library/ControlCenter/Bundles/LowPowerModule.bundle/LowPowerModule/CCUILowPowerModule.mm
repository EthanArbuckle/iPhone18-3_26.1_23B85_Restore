@interface CCUILowPowerModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUILowPowerModule

- (id)contentViewControllerForContext:(id)context
{
  v4 = objc_alloc_init(CCUILowPowerModuleViewController);
  [(CCUIMenuModuleViewController *)v4 setContentModuleContext:self->_contentModuleContext];

  return v4;
}

@end