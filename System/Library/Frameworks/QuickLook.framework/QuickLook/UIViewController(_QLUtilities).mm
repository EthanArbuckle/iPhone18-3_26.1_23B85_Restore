@interface UIViewController(_QLUtilities)
- (void)QL_disableChromelessBarsUI;
- (void)QL_enableChromelessBarsUI;
@end

@implementation UIViewController(_QLUtilities)

- (void)QL_disableChromelessBarsUI
{
  v2 = [a1 navigationController];
  v3 = [v2 navigationBar];
  v4 = [v3 standardAppearance];
  v5 = v4;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75788]);
  }

  v6 = [a1 navigationItem];
  [v6 setScrollEdgeAppearance:v5];

  if (!v4)
  {
  }

  v7 = [a1 tabBarController];
  v8 = [v7 tabBar];
  v9 = [v8 standardAppearance];
  v10 = v9;
  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277D75B18]);
  }

  v11 = [a1 tabBarItem];
  [v11 setScrollEdgeAppearance:v10];

  if (!v9)
  {
  }

  v17 = [a1 navigationController];
  v12 = [v17 toolbar];
  v13 = [v12 standardAppearance];
  v14 = v13;
  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277D75C60]);
  }

  v15 = [a1 navigationController];
  v16 = [v15 toolbar];
  [v16 setScrollEdgeAppearance:v14];

  if (!v13)
  {
  }
}

- (void)QL_enableChromelessBarsUI
{
  v2 = [a1 navigationItem];
  [v2 setScrollEdgeAppearance:0];

  v3 = [a1 tabBarItem];
  [v3 setScrollEdgeAppearance:0];

  v5 = [a1 navigationController];
  v4 = [v5 toolbar];
  [v4 setScrollEdgeAppearance:0];
}

@end