@interface UIViewController(AuthKitUI)
- (id)ak_topPresentedViewController;
@end

@implementation UIViewController(AuthKitUI)

- (id)ak_topPresentedViewController
{
  v10[2] = a1;
  v10[1] = a2;
  v10[0] = MEMORY[0x277D82BE0](a1);
  while (1)
  {
    v6 = [v10[0] presentedViewController];
    v8 = 0;
    v7 = 0;
    if (v6)
    {
      v9 = [v10[0] presentedViewController];
      v8 = 1;
      v7 = [v9 isBeingDismissed] == 0;
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }

    MEMORY[0x277D82BD8](v6);
    if (!v7)
    {
      break;
    }

    v2 = [v10[0] presentedViewController];
    v3 = v10[0];
    v10[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v5;
}

@end