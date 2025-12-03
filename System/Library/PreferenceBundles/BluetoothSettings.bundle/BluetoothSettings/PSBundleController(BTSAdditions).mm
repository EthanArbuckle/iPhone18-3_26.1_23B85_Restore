@interface PSBundleController(BTSAdditions)
- (id)bundleParentController;
@end

@implementation PSBundleController(BTSAdditions)

- (id)bundleParentController
{
  WeakRetained = objc_loadWeakRetained((self + *MEMORY[0x277D3FBE0]));

  return WeakRetained;
}

@end