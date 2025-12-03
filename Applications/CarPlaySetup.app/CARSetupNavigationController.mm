@interface CARSetupNavigationController
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CARSetupNavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CARSetupNavigationController didDisappear", v7, 2u);
  }

  dismissHandler = [(CARSetupNavigationController *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(CARSetupNavigationController *)self dismissHandler];
    dismissHandler2[2]();
  }
}

@end