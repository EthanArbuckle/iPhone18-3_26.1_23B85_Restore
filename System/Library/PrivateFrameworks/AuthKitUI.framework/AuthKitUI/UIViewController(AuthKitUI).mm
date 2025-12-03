@interface UIViewController(AuthKitUI)
- (id)ak_topPresentedViewController;
@end

@implementation UIViewController(AuthKitUI)

- (id)ak_topPresentedViewController
{
  v10[2] = self;
  v10[1] = a2;
  v10[0] = MEMORY[0x277D82BE0](self);
  while (1)
  {
    presentedViewController = [v10[0] presentedViewController];
    v8 = 0;
    v7 = 0;
    if (presentedViewController)
    {
      presentedViewController2 = [v10[0] presentedViewController];
      v8 = 1;
      v7 = [presentedViewController2 isBeingDismissed] == 0;
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](presentedViewController2);
    }

    MEMORY[0x277D82BD8](presentedViewController);
    if (!v7)
    {
      break;
    }

    presentedViewController3 = [v10[0] presentedViewController];
    v3 = v10[0];
    v10[0] = presentedViewController3;
    MEMORY[0x277D82BD8](v3);
  }

  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v5;
}

@end