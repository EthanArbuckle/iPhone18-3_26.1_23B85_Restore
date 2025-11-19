@interface CCUILowPowerModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation CCUILowPowerModule

- (id)contentViewControllerForContext:(id)a3
{
  v4 = objc_alloc_init(CCUILowPowerModuleViewController);
  [(CCUIMenuModuleViewController *)v4 setContentModuleContext:self->_contentModuleContext];

  return v4;
}

@end