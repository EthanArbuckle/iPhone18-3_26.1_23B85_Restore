@interface SUISPresentationControllerHelper
+ (void)updateSheetPresentationController:(id)controller withConfiguration:(id)configuration;
@end

@implementation SUISPresentationControllerHelper

+ (void)updateSheetPresentationController:(id)controller withConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  v7 = +[NSNull null];

  if (v7 != configurationCopy)
  {
    v8 = sub_100001D50();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "set sheet configuration:%@", &v9, 0xCu);
    }

    [controllerCopy _setConfiguration:configurationCopy];
  }
}

@end