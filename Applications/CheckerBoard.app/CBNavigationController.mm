@interface CBNavigationController
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation CBNavigationController

- (void)viewDidLoad
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Navigation Controller's view loaded", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CBNavigationController;
  [(CBNavigationController *)&v4 viewDidLoad];
  [(CBNavigationController *)self setModalPresentationStyle:2];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  v7 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = controllerCopy;
    v13 = 1024;
    v14 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Pushed view controller: %@ with animation %d", buf, 0x12u);
  }

  _pushedViewControllerBackgroundColor = [(CBNavigationController *)self _pushedViewControllerBackgroundColor];
  view = [controllerCopy view];
  [view setBackgroundColor:_pushedViewControllerBackgroundColor];

  v10.receiver = self;
  v10.super_class = CBNavigationController;
  [(CBNavigationController *)&v10 pushViewController:controllerCopy animated:animatedCopy];
}

@end