@interface ServiceManager
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
@end

@implementation ServiceManager

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_10000D890(selfCopy, operation);

  return v14;
}

@end