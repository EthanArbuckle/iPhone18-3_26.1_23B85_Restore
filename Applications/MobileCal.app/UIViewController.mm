@interface UIViewController
- (UINavigationController)viewControllerToShowFrom;
- (UIViewController)modalPresentationDelegate;
- (int64_t)presentationStyleOverrideForChildViewControllers;
- (void)setModalPresentationDelegate:(id)delegate;
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

- (void)setModalPresentationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_getAssociatedObject(self, &unk_1002518E0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 isEqual:delegateCopy] & 1) == 0)
  {
    v5 = delegateCopy;

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
  ekui_futureTraitCollection = [(UIViewController *)self ekui_futureTraitCollection];
  if (![ekui_futureTraitCollection horizontalSizeClass])
  {

    return 6;
  }

  ekui_futureTraitCollection2 = [(UIViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection2 horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    return 6;
  }

  ekui_futureTraitCollection3 = [(UIViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass2 = [ekui_futureTraitCollection3 horizontalSizeClass];

  if (horizontalSizeClass2 != 2)
  {
    return -1;
  }

  ekui_futureTraitCollection4 = [(UIViewController *)self ekui_futureTraitCollection];
  verticalSizeClass = [ekui_futureTraitCollection4 verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    return 1;
  }

  else
  {
    return 7;
  }
}

@end