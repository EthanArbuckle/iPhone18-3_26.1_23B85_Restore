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

    v4 = [v3 presentedViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

@end