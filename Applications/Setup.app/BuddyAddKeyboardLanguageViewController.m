@interface BuddyAddKeyboardLanguageViewController
- (BuddyAddKeyboardLanguageViewController)initWithCompletion:(id)a3;
- (void)dismiss;
- (void)viewDidLoad;
@end

@implementation BuddyAddKeyboardLanguageViewController

- (BuddyAddKeyboardLanguageViewController)initWithCompletion:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BuddyAddKeyboardLanguageViewController;
  v8 = [(BuddyAddKeyboardLanguageViewController *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    [v8 setCompletion:location[0]];
  }

  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (void)viewDidLoad
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyAddKeyboardLanguageViewController;
  [(BuddyAddKeyboardLanguageViewController *)&v4 viewDidLoad];
  location = objc_alloc_init(KSAddKeyboardLanguageListController);
  [location setReturnSuggestedInputModes:1];
  [location setRootController:v6];
  v2 = objc_alloc_init(PSSpecifier);
  [location setSpecifier:v2];

  [location setParentController:v6];
  [(BuddyAddKeyboardLanguageViewController *)v6 showController:location];
  [(BuddyAddKeyboardLanguageViewController *)v6 setController:location];
  objc_storeStrong(&location, 0);
}

- (void)dismiss
{
  v15 = self;
  location[1] = a2;
  location[0] = _BYLoggingFacility();
  v13 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v2 = location[0];
    v3 = v13;
    sub_10006AA68(buf);
    _os_log_debug_impl(&_mh_execute_header, v2, v3, "Add keyboard language view controller will dismiss", buf, 2u);
  }

  objc_storeStrong(location, 0);
  v4 = v15;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_1000F192C;
  v10 = &unk_10032B0D0;
  v11 = v15;
  v5.receiver = v4;
  v5.super_class = BuddyAddKeyboardLanguageViewController;
  [(BuddyAddKeyboardLanguageViewController *)&v5 dismissWithCompletion:&v6];
  objc_storeStrong(&v11, 0);
}

@end