@interface CCUISatelliteModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation CCUISatelliteModule

- (id)contentViewControllerForContext:(id)context
{
  v3 = objc_alloc_init(CCUISatelliteModuleViewController);

  return v3;
}

@end