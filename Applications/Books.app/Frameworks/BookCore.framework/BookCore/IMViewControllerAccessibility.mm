@interface IMViewControllerAccessibility
- (id)_transitionFromViewController:(id)controller toViewController:(id)viewController transition:(id)transition reverse:(BOOL)reverse;
@end

@implementation IMViewControllerAccessibility

- (id)_transitionFromViewController:(id)controller toViewController:(id)viewController transition:(id)transition reverse:(BOOL)reverse
{
  v9.receiver = self;
  v9.super_class = IMViewControllerAccessibility;
  v6 = [(IMViewControllerAccessibility *)&v9 _transitionFromViewController:controller toViewController:viewController transition:transition reverse:reverse];
  v7 = dispatch_time(0, 250000000);
  dispatch_after(v7, &_dispatch_main_q, &stru_2CC450);

  return v6;
}

@end