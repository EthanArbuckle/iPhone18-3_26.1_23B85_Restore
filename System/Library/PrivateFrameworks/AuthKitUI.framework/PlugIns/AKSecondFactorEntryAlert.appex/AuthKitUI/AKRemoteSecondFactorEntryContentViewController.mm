@interface AKRemoteSecondFactorEntryContentViewController
- (void)_didEnterNewCode;
- (void)_invalidatePreferredContentSize;
- (void)dealloc;
- (void)getPreferredContentSizeWithReplyBlock:(id)block;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKRemoteSecondFactorEntryContentViewController

- (void)getPreferredContentSizeWithReplyBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  if (location[0])
  {
    v5 = location[0];
    [(AKRemoteSecondFactorEntryContentViewController *)selfCopy preferredContentSize];
    v5[2](v3, v4);
  }

  objc_storeStrong(location, 0);
}

- (void)loadView
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v7 loadView];
  view = [(AKRemoteSecondFactorEntryContentViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:1];

  view2 = [(AKRemoteSecondFactorEntryContentViewController *)selfCopy view];
  [view2 systemLayoutSizeFittingSize:{UILayoutFittingExpandedSize.width, UILayoutFittingExpandedSize.height}];
  v6 = v2;

  [(AKRemoteSecondFactorEntryContentViewController *)selfCopy setPreferredContentSize:270.0, v6];
  v5 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v5 addObserver:selfCopy selector:"_didEnterNewCode" name:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0];
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:@"AKSecondFactorCodeEntryContentViewControllerDidEnterCodeNotification" object:0];

  v3.receiver = selfCopy;
  v3.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKSecondFactorCodeEntryContentViewController *)&v3 dealloc];
}

- (void)_didEnterNewCode
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    generatedCode = [(AKSecondFactorCodeEntryContentViewController *)selfCopy generatedCode];
    sub_100001370(v9, generatedCode);
    _os_log_impl(&_mh_execute_header, location[0], OS_LOG_TYPE_DEFAULT, "Login code has been entered. Notifying. %@", v9, 0xCu);
  }

  objc_storeStrong(location, 0);
  generatedCode2 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy generatedCode];

  if (generatedCode2)
  {
    key = _AKAppleIDLoginCodeKey;
    generatedCode3 = [(AKSecondFactorCodeEntryContentViewController *)selfCopy generatedCode];
    CFPreferencesSetAppValue(key, generatedCode3, kCFPreferencesAnyApplication);

    CFPreferencesSynchronize(kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, _AKAppleIDLoginCodeWasEnteredNotification, 0, 0, 1u);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKRemoteSecondFactorEntryContentViewController *)&v2 viewDidLayoutSubviews];
  [(AKRemoteSecondFactorEntryContentViewController *)selfCopy _invalidatePreferredContentSize];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKRemoteSecondFactorEntryContentViewController;
  [(AKRemoteSecondFactorEntryContentViewController *)&v2 viewDidLoad];
  [(AKRemoteSecondFactorEntryContentViewController *)selfCopy _invalidatePreferredContentSize];
}

- (void)_invalidatePreferredContentSize
{
  _remoteViewControllerProxy = [(AKRemoteSecondFactorEntryContentViewController *)self _remoteViewControllerProxy];
  [(AKRemoteSecondFactorEntryContentViewController *)self preferredContentSize];
  [_remoteViewControllerProxy setPreferredContentSize:{v2, v3}];
}

@end