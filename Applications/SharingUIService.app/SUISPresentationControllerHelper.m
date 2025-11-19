@interface SUISPresentationControllerHelper
+ (void)updateSheetPresentationController:(id)a3 withConfiguration:(id)a4;
@end

@implementation SUISPresentationControllerHelper

+ (void)updateSheetPresentationController:(id)a3 withConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSNull null];

  if (v7 != v6)
  {
    v8 = sub_100001D50();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "set sheet configuration:%@", &v9, 0xCu);
    }

    [v5 _setConfiguration:v6];
  }
}

@end