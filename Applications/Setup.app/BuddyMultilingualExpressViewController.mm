@interface BuddyMultilingualExpressViewController
- (BuddyMultilingualExpressViewController)init;
- (id)languageListForBackingStore:(id)a3 showDetailText:(BOOL)a4;
- (void)continuePressed;
- (void)customizeLanguagesButtonPressed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation BuddyMultilingualExpressViewController

- (BuddyMultilingualExpressViewController)init
{
  v11 = self;
  v10[1] = a2;
  v2 = +[NSBundle mainBundle];
  v10[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_EXPRESS_LANGUAGE_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MULTILINGUAL_EXPRESS_LANGUAGE_SUBTEXT"];
  location = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = v11;
  v11 = 0;
  v8.receiver = v5;
  v8.super_class = BuddyMultilingualExpressViewController;
  v11 = [(BuddyMultilingualExpressViewController *)&v8 initWithTitle:v10[0] detailText:location symbolName:0];
  v6 = v11;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)viewDidLoad
{
  v51 = self;
  v50 = a2;
  v49.receiver = self;
  v49.super_class = BuddyMultilingualExpressViewController;
  [(BuddyMultilingualExpressViewController *)&v49 viewDidLoad];
  v2 = [(BuddyMultilingualExpressViewController *)v51 multilingualFlowManager];
  v47 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v37 = 0;
  if ([(BuddyMultilingualFlowManager *)v2 didMakeSelection])
  {
    v48 = [(BuddyMultilingualExpressViewController *)v51 providerCollection];
    v47 = 1;
    v46 = [(BuddyMultilingualDataModelProviderCollection *)v48 keyboardProvider];
    v45 = 1;
    v44 = [(BuddyMultilingualProvider *)v46 createDataSourceForSelectedItems];
    v43 = 1;
  }

  else
  {
    v42 = [(BuddyMultilingualExpressViewController *)v51 providerCollection];
    v41 = 1;
    v40 = [v42 keyboardProvider];
    v39 = 1;
    v38 = [v40 createDataSourceForPreselectedItems];
    v37 = 1;
  }

  [(BuddyMultilingualExpressViewController *)v51 setKeyboardBackingStore:?];
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

  v3 = [(BuddyMultilingualExpressViewController *)v51 providerCollection];
  v4 = [(BuddyMultilingualDataModelProviderCollection *)v3 dictationProvider];
  v5 = [(BuddyMultilingualProvider *)v4 createDataSourceForPreselectedItems];
  [(BuddyMultilingualExpressViewController *)v51 setDictationBackingStore:v5];

  v36 = [UIImage imageNamed:@"Bullet-Icon-Keyboards"];
  v35 = [UIImage imageNamed:@"Bullet-Icon-Dictation"];
  v6 = [(BuddyMultilingualExpressViewController *)v51 keyboardBackingStore];
  v7 = [(NSArray *)v6 count];

  if (v7)
  {
    v8 = v51;
    v9 = +[NSBundle mainBundle];
    v10 = [(NSBundle *)v9 localizedStringForKey:@"MULTILINGUAL_KEYBOARDS_EXPRESS_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v11 = v51;
    v12 = [(BuddyMultilingualExpressViewController *)v51 keyboardBackingStore];
    v13 = [(BuddyMultilingualExpressViewController *)v11 languageListForBackingStore:v12 showDetailText:1];
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

  v16 = [(BuddyMultilingualExpressViewController *)v51 dictationBackingStore];
  v17 = [(NSArray *)v16 count];

  if (v17)
  {
    v18 = v51;
    v19 = +[NSBundle mainBundle];
    v20 = [(NSBundle *)v19 localizedStringForKey:@"MULTILINGUAL_DICTATION_EXPRESS_TITLE" value:&stru_10032F900 table:@"Localizable"];
    v21 = v51;
    v22 = [(BuddyMultilingualExpressViewController *)v51 dictationBackingStore];
    v23 = [(BuddyMultilingualExpressViewController *)v21 languageListForBackingStore:v22 showDetailText:0];
    [(BuddyMultilingualExpressViewController *)v18 addBulletedListItemWithTitle:v20 description:v23 image:v35];
  }

  location = +[OBBoldTrayButton boldButton];
  [location setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = +[NSBundle mainBundle];
  v25 = [(NSBundle *)v24 localizedStringForKey:@"MULTILINGUAL_EXPRESS_PRIMARY_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [location setTitle:v25 forState:0];

  [location addTarget:v51 action:"customizeLanguagesButtonPressed" forControlEvents:64];
  v26 = [(BuddyMultilingualExpressViewController *)v51 buttonTray];
  [v26 addButton:location];

  v30 = +[OBLinkTrayButton linkButton];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = +[NSBundle mainBundle];
  v28 = [(NSBundle *)v27 localizedStringForKey:@"MULTILINGUAL_EXPRESS_SECONDARY_BUTTON_TITLE" value:&stru_10032F900 table:@"Localizable"];
  [v30 setTitle:v28 forState:0];

  [v30 addTarget:v51 action:"continuePressed" forControlEvents:64];
  v29 = [(BuddyMultilingualExpressViewController *)v51 buttonTray];
  [v29 addButton:v30];

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyMultilingualExpressViewController;
  [(BuddyMultilingualExpressViewController *)&v4 viewDidAppear:a3];
  v3 = [(BuddyMultilingualExpressViewController *)v7 providerCollection];
  [(BuddyMultilingualDataModelProviderCollection *)v3 setExpressFlowDidCustomize:0];
}

- (id)languageListForBackingStore:(id)a3 showDetailText:(BOOL)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = +[NSMutableString string];
  v5 = location[0];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_1001D9A40;
  v12 = &unk_10032EAF0;
  v15 = v17;
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
  v2 = [(BuddyMultilingualExpressViewController *)self keyboardBackingStore];
  [BuddyKeyboardLanguageOrderSelector writePreferredKeyboardLanguagesToSystem:v2];

  v3 = [(BuddyMultilingualExpressViewController *)self dictationBackingStore];
  [BuddyDictationLanguageOrderSelector writePreferredDictationLanguagesToSystem:v3];

  v4 = [(BuddyMultilingualExpressViewController *)self keyboardBackingStore];
  v10[0] = v4;
  v5 = [(BuddyMultilingualExpressViewController *)self dictationBackingStore];
  v10[1] = v5;
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [(BuddyMultilingualExpressViewController *)self analyticsManager];
  [BYMultilingualAnalyticsEvent recordExpressPaneShownUserCustomized:0 withData:v6 analyticsManager:v7];

  v8 = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)v8 flowItemDone:self];
}

- (void)customizeLanguagesButtonPressed
{
  v2 = [(BuddyMultilingualExpressViewController *)self providerCollection];
  [(BuddyMultilingualDataModelProviderCollection *)v2 setExpressFlowDidCustomize:1];

  v3 = [(BuddyMultilingualExpressViewController *)self keyboardBackingStore];
  v9[0] = v3;
  v4 = [(BuddyMultilingualExpressViewController *)self dictationBackingStore];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [(BuddyMultilingualExpressViewController *)self analyticsManager];
  [BYMultilingualAnalyticsEvent recordExpressPaneShownUserCustomized:1 withData:v5 analyticsManager:v6];

  v7 = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)v7 flowItemDone:self nextItemClass:0];
}

@end