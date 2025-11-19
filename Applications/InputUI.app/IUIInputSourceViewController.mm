@interface IUIInputSourceViewController
- (IUIRTIInputSource)textInputSource;
- (void)viewDidLoad;
@end

@implementation IUIInputSourceViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = IUIInputSourceViewController;
  [(IUIInputSourceViewController *)&v19 viewDidLoad];
  v3 = [(IUIInputSourceViewController *)self sessionCoordinator];
  [v3 reloadInputSource];

  v4 = sub_100001928();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "InputUI view did load", v18, 2u);
  }

  if (qword_10002B860 != -1)
  {
    sub_10000D590();
  }

  v5 = +[TIPreferencesController sharedPreferencesController];
  v6 = [v5 valueForPreferenceKey:@"InputUIWindowDebug"];

  LODWORD(v5) = [v6 BOOLValue];
  if (v5)
  {
    v7 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
    v8 = [(IUIInputSourceViewController *)self view];
    [v8 setBackgroundColor:v7];

    v9 = [(IUIInputSourceViewController *)self view];
    [v9 setUserInteractionEnabled:0];

    v10 = +[UIColor greenColor];
    v11 = [v10 CGColor];
    v12 = [(IUIInputSourceViewController *)self view];
    v13 = [v12 layer];
    [v13 setBorderColor:v11];

    v14 = [(IUIInputSourceViewController *)self view];
    v15 = [v14 layer];
    [v15 setBorderWidth:5.0];

    v16 = [(IUIInputSourceViewController *)self view];
    v17 = [v16 layer];
    [v17 setAllowsHitTesting:0];
  }
}

- (IUIRTIInputSource)textInputSource
{
  v2 = [(IUIInputSourceViewController *)self sessionCoordinator];
  v3 = [v2 textInputSource];

  return v3;
}

@end