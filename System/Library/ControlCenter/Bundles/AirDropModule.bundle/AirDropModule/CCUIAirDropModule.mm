@interface CCUIAirDropModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIAirDropModule

- (id)contentViewControllerForContext:(id)context
{
  v3 = objc_alloc_init(CCUIAirDropModuleViewController);

  return v3;
}

@end