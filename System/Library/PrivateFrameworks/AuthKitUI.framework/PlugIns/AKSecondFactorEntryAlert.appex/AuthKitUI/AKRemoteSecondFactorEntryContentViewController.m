@interface AKRemoteSecondFactorEntryContentViewController
- (void)_didEnterNewCode;
- (void)_invalidatePreferredContentSize;
- (void)dealloc;
- (void)getPreferredContentSizeWithReplyBlock:(id)a3;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKRemoteSecondFactorEntryContentViewController

- (void)getPreferredContentSizeWithReplyBlock:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v5 = location[0];
    [(AKRemoteSecondFactorEntryContentViewController *)v7 preferredContentSize];
    v5[2](v3, v4);
  }

  objc_storeStrong(location, 0);
}

- (void)loadView
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v7 loadView];
  v3 = [(AKRemoteSecondFactorEntryContentViewController *)v9 view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:1];

  v4 = [(AKRemoteSecondFactorEntryContentViewController *)v9 view];
  [v4 systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  v6 = v2;

  [(AKRemoteSecondFactorEntryContentViewController *)v9 setPreferredContentSize:270.0, v6];
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserver:v9 selector:"_didEnterNewCode" name:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5 name:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0];

  v3.receiver = v5;
  v3.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v3 dealloc];
}

- (void)_didEnterNewCode
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(AKSecondFactorCodeEntryContentViewController *)v8 generatedCode];
    sub_100001370(v9, v6);
    _os_log_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEFAULT, "Login code has been entered. Notifying. %@", v9, 0xCu);
  }

  objc_storeStrong(location, 0);
  v5 = [(AKSecondFactorCodeEntryContentViewController *)v8 generatedCode];

  if (v5)
  {
    key = _AKAppleIDLoginCodeKey;
    v4 = [(AKSecondFactorCodeEntryContentViewController *)v8 generatedCode];
    CFPreferencesSetAppValue(key, v4, kCFPreferencesAnyApplication);

    CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, _AKAppleIDLoginCodeWasEnteredNotification, 0, 0, 1u);
}

- (void)viewDidLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKRemoteSecondFactorEntryContentViewController *)&v2 viewDidLayoutSubviews];
  [(AKRemoteSecondFactorEntryContentViewController *)v4 _invalidatePreferredContentSize];
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKRemoteSecondFactorEntryContentViewController *)&v2 viewDidLoad];
  [(AKRemoteSecondFactorEntryContentViewController *)v4 _invalidatePreferredContentSize];
}

- (void)_invalidatePreferredContentSize
{
  v4 = [(AKRemoteSecondFactorEntryContentViewController *)self _remoteViewControllerProxy];
  [(AKRemoteSecondFactorEntryContentViewController *)self preferredContentSize];
  [v4 setPreferredContentSize:{v2, v3}];
}

@end