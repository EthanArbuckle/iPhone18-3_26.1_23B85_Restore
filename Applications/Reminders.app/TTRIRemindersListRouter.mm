@interface TTRIRemindersListRouter
- (void)popPresentedViewController;
@end

@implementation TTRIRemindersListRouter

- (void)popPresentedViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    presentedViewController = [v3 presentedViewController];

    if (presentedViewController)
    {
      [presentedViewController dismissViewControllerAnimated:1 completion:0];
    }
  }
}

@end