@interface UIViewController(_QLUtilities)
- (void)QL_disableChromelessBarsUI;
- (void)QL_enableChromelessBarsUI;
@end

@implementation UIViewController(_QLUtilities)

- (void)QL_disableChromelessBarsUI
{
  navigationController = [self navigationController];
  navigationBar = [navigationController navigationBar];
  standardAppearance = [navigationBar standardAppearance];
  v5 = standardAppearance;
  if (!standardAppearance)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75788]);
  }

  navigationItem = [self navigationItem];
  [navigationItem setScrollEdgeAppearance:v5];

  if (!standardAppearance)
  {
  }

  tabBarController = [self tabBarController];
  tabBar = [tabBarController tabBar];
  standardAppearance2 = [tabBar standardAppearance];
  v10 = standardAppearance2;
  if (!standardAppearance2)
  {
    v10 = objc_alloc_init(MEMORY[0x277D75B18]);
  }

  tabBarItem = [self tabBarItem];
  [tabBarItem setScrollEdgeAppearance:v10];

  if (!standardAppearance2)
  {
  }

  navigationController2 = [self navigationController];
  toolbar = [navigationController2 toolbar];
  standardAppearance3 = [toolbar standardAppearance];
  v14 = standardAppearance3;
  if (!standardAppearance3)
  {
    v14 = objc_alloc_init(MEMORY[0x277D75C60]);
  }

  navigationController3 = [self navigationController];
  toolbar2 = [navigationController3 toolbar];
  [toolbar2 setScrollEdgeAppearance:v14];

  if (!standardAppearance3)
  {
  }
}

- (void)QL_enableChromelessBarsUI
{
  navigationItem = [self navigationItem];
  [navigationItem setScrollEdgeAppearance:0];

  tabBarItem = [self tabBarItem];
  [tabBarItem setScrollEdgeAppearance:0];

  navigationController = [self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar setScrollEdgeAppearance:0];
}

@end