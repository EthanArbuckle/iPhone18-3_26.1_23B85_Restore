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
  sessionCoordinator = [(IUIInputSourceViewController *)self sessionCoordinator];
  [sessionCoordinator reloadInputSource];

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
    view = [(IUIInputSourceViewController *)self view];
    [view setBackgroundColor:v7];

    view2 = [(IUIInputSourceViewController *)self view];
    [view2 setUserInteractionEnabled:0];

    v10 = +[UIColor greenColor];
    cGColor = [v10 CGColor];
    view3 = [(IUIInputSourceViewController *)self view];
    layer = [view3 layer];
    [layer setBorderColor:cGColor];

    view4 = [(IUIInputSourceViewController *)self view];
    layer2 = [view4 layer];
    [layer2 setBorderWidth:5.0];

    view5 = [(IUIInputSourceViewController *)self view];
    layer3 = [view5 layer];
    [layer3 setAllowsHitTesting:0];
  }
}

- (IUIRTIInputSource)textInputSource
{
  sessionCoordinator = [(IUIInputSourceViewController *)self sessionCoordinator];
  textInputSource = [sessionCoordinator textInputSource];

  return textInputSource;
}

@end