@interface CARSetupNavigationController
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CARSetupNavigationController

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = CARSetupLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CARSetupNavigationController didDisappear", v7, 2u);
  }

  v5 = [(CARSetupNavigationController *)self dismissHandler];

  if (v5)
  {
    v6 = [(CARSetupNavigationController *)self dismissHandler];
    v6[2]();
  }
}

@end