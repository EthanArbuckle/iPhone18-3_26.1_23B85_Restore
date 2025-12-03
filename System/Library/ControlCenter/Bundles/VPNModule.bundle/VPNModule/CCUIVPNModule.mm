@interface CCUIVPNModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUIVPNModule

- (id)contentViewControllerForContext:(id)context
{
  v3 = objc_alloc_init(CCUIVPNModuleViewController);

  return v3;
}

@end