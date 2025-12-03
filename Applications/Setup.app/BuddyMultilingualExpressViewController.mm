@interface BuddyMultilingualExpressViewController
- (BuddyMultilingualExpressViewController)init;
- (id)languageListForBackingStore:(id)store showDetailText:(BOOL)text;
- (void)continuePressed;
- (void)customizeLanguagesButtonPressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation BuddyMultilingualExpressViewController

- (BuddyMultilingualExpressViewController)init
{
  selfCopy = self;
  v10[1] = a2;
  v2 = +[NSBundle mainBundle];
  v10[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_EXPRESS_LANGUAGE_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MULTILINGUAL_EXPRESS_LANGUAGE_SUBTEXT"];
  location = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = selfCopy;
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = BuddyMultilingualExpressViewController;
  selfCopy = [(BuddyMultilingualExpressViewController *)&v8 initWithTitle:v10[0] detailText:location symbolName:0];
  v6 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v50 = a2;
  v49.receiver = self;
  v49.super_class = BuddyMultilingualExpressViewController;
  [(BuddyMultilingualExpressViewController *)&v49 viewDidLoad];
  multilingualFlowManager = [(BuddyMultilingualExpressViewController *)selfCopy multilingualFlowManager];
  v47 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  if ([(BuddyMultilingualFlowManager *)multilingualFlowManager didMakeSelection])
  {
    providerCollection = [(BuddyMultilingualExpressViewController *)selfCopy providerCollection];
    v47 = 1;
    keyboardProvider = [(BuddyMultilingualDataModelProviderCollection *)providerCollection keyboardProvider];
    v45 = 1;
    createDataSourceForSelectedItems = [(BuddyMultilingualProvider *)keyboardProvider createDataSourceForSelectedItems];
    v43 = 1;
  }

  else
  {
    providerCollection2 = [(BuddyMultilingualExpressViewController *)selfCopy providerCollection];
    v41 = 1;
    keyboardProvider2 = [providerCollection2 keyboardProvider];
    v39 = 1;
    createDataSourceForPreselectedItems = [keyboardProvider2 createDataSourceForPreselectedItems];
    v37 = 1;
  }

  [(BuddyMultilingualExpressViewController *)selfCopy setKeyboardBackingStore:?];
  if (v37)
  {
  }

  if (v39)
  {
  }

  if (v41)
  {
  }

  if (v43)
  {
  }

  if (v45)
  {
  }

  if (v47)
  {
  }

  providerCollection3 = [(BuddyMultilingualExpressViewController *)selfCopy providerCollection];
  dictationProvider = [(BuddyMultilingualDataModelProviderCollection *)providerCollection3 dictationProvider];
  createDataSourceForPreselectedItems2 = [(BuddyMultilingualProvider *)dictationProvider createDataSourceForPreselectedItems];
  [(BuddyMultilingualExpressViewController *)selfCopy setDictationBackingStore:createDataSourceForPreselectedItems2];

  v36 = [UIImage imageNamed:@"Bullet-Icon-Keyboards"];
  v35 = [UIImage imageNamed:@"Bullet-Icon-Dictation"];
  keyboardBackingStore = [(BuddyMultilingualExpressViewController *)selfCopy keyboardBackingStore];
  v7 = [(NSArray *)keyboardBackingStore count];

  if (v7)
  {
    v8 = selfCopy;
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"MULTILINGUAL_KEYBOARDS_EXPRESS_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v11 = selfCopy;
    keyboardBackingStore2 = [(BuddyMultilingualExpressViewController *)selfCopy keyboardBackingStore];
    v13 = [(BuddyMultilingualExpressViewController *)v11 languageListForBackingStore:keyboardBackingStore2 showDetailText:1];
    [(BuddyMultilingualExpressViewController *)v8 addBulletedListItemWithTitle:v10 description:v13 image:v36];
  }

  else
  {
    oslog = _BYLoggingFacility();
    v33 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v14 = oslog;
      v15 = v33;
      sub_10006AA68(buf);
      _os_log_error_impl(&_mh_execute_header, v14, v15, "BuddyMultilingualExpressViewController keyboardBackingStore count == 0\n", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  dictationBackingStore = [(BuddyMultilingualExpressViewController *)selfCopy dictationBackingStore];
  v17 = [(NSArray *)dictationBackingStore count];

  if (v17)
  {
    v18 = selfCopy;
    v19 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"MULTILINGUAL_DICTATION_EXPRESS_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v21 = selfCopy;
    dictationBackingStore2 = [(BuddyMultilingualExpressViewController *)selfCopy dictationBackingStore];
    v23 = [(BuddyMultilingualExpressViewController *)v21 languageListForBackingStore:dictationBackingStore2 showDetailText:0];
    [(BuddyMultilingualExpressViewController *)v18 addBulletedListItemWithTitle:v20 description:v23 image:v35];
  }

  location = +[OBBoldTrayButton boldButton];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = +[NSBundle mainBundle];
  v25 = [(NSBundle *)v24 localizedStringForKey:@"MULTILINGUAL_EXPRESS_PRIMARY_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v25 forState:0];

  [location addTarget:selfCopy action:"customizeLanguagesButtonPressed" forControlEvents:64];
  buttonTray = [(BuddyMultilingualExpressViewController *)selfCopy buttonTray];
  [buttonTray addButton:location];

  v30 = +[OBLinkTrayButton linkButton];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = +[NSBundle mainBundle];
  v28 = [(NSBundle *)v27 localizedStringForKey:@"MULTILINGUAL_EXPRESS_SECONDARY_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [v30 setTitle:v28 forState:0];

  [v30 addTarget:selfCopy action:"continuePressed" forControlEvents:64];
  buttonTray2 = [(BuddyMultilingualExpressViewController *)selfCopy buttonTray];
  [buttonTray2 addButton:v30];

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyMultilingualExpressViewController;
  [(BuddyMultilingualExpressViewController *)&v4 viewDidAppear:appear];
  providerCollection = [(BuddyMultilingualExpressViewController *)selfCopy providerCollection];
  [(BuddyMultilingualDataModelProviderCollection *)providerCollection setExpressFlowDidCustomize:0];
}

- (id)languageListForBackingStore:(id)store showDetailText:(BOOL)text
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  textCopy = text;
  v16 = +[NSMutableString string];
  v5 = location[0];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001D9A40;
  v12 = &unk_10032EAF0;
  v15 = textCopy;
  v13 = v16;
  v14 = location[0];
  [v5 enumerateObjectsUsingBlock:&v8];
  v6 = v16;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)continuePressed
{
  keyboardBackingStore = [(BuddyMultilingualExpressViewController *)self keyboardBackingStore];
  [BuddyKeyboardLanguageOrderSelector writePreferredKeyboardLanguagesToSystem:keyboardBackingStore];

  dictationBackingStore = [(BuddyMultilingualExpressViewController *)self dictationBackingStore];
  [BuddyDictationLanguageOrderSelector writePreferredDictationLanguagesToSystem:dictationBackingStore];

  keyboardBackingStore2 = [(BuddyMultilingualExpressViewController *)self keyboardBackingStore];
  v10[0] = keyboardBackingStore2;
  dictationBackingStore2 = [(BuddyMultilingualExpressViewController *)self dictationBackingStore];
  v10[1] = dictationBackingStore2;
  v6 = [NSArray arrayWithObjects:v10 count:2];
  analyticsManager = [(BuddyMultilingualExpressViewController *)self analyticsManager];
  [BYMultilingualAnalyticsEvent recordExpressPaneShownUserCustomized:0 withData:v6 analyticsManager:analyticsManager];

  delegate = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)customizeLanguagesButtonPressed
{
  providerCollection = [(BuddyMultilingualExpressViewController *)self providerCollection];
  [(BuddyMultilingualDataModelProviderCollection *)providerCollection setExpressFlowDidCustomize:1];

  keyboardBackingStore = [(BuddyMultilingualExpressViewController *)self keyboardBackingStore];
  v9[0] = keyboardBackingStore;
  dictationBackingStore = [(BuddyMultilingualExpressViewController *)self dictationBackingStore];
  v9[1] = dictationBackingStore;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  analyticsManager = [(BuddyMultilingualExpressViewController *)self analyticsManager];
  [BYMultilingualAnalyticsEvent recordExpressPaneShownUserCustomized:1 withData:v5 analyticsManager:analyticsManager];

  delegate = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self nextItemClass:0];
}

@end