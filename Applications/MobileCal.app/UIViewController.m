@interface UIViewController
- (UINavigationController)viewControllerToShowFrom;
- (UIViewController)modalPresentationDelegate;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (void)setModalPresentationDelegate:(id)a3;
@end

@implementation UIViewController

- (UINavigationController)viewControllerToShowFrom
{
  v2 = [(UIViewController *)self targetViewControllerForAction:"showViewController:sender:animated:completion:" sender:0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  return v3;
}

- (void)setModalPresentationDelegate:(id)a3
{
  v6 = a3;
  v4 = objc_getAssociatedObject(self, &unk_1002518E0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 isEqual:v6] & 1) == 0)
  {
    v5 = v6;

    objc_setAssociatedObject(self, &unk_1002518E0, v5, 0);
    v4 = v5;
  }
}

- (UIViewController)modalPresentationDelegate
{
  v2 = objc_getAssociatedObject(self, &unk_1002518E0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)presentationStyleOverrideForChildViewControllers
{
  v3 = [(UIViewController *)self ekui_futureTraitCollection];
  if (![v3 horizontalSizeClass])
  {

    return 6;
  }

  v4 = [(UIViewController *)self ekui_futureTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    return 6;
  }

  v6 = [(UIViewController *)self ekui_futureTraitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 != 2)
  {
    return -1;
  }

  v8 = [(UIViewController *)self ekui_futureTraitCollection];
  v9 = [v8 verticalSizeClass];

  if (v9 == 1)
  {
    return 1;
  }

  else
  {
    return 7;
  }
}

@end