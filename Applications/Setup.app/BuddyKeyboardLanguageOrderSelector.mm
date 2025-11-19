@interface BuddyKeyboardLanguageOrderSelector
+ (BOOL)needsFullscreenPane;
+ (void)writePreferredKeyboardLanguagesToSystem:(id)a3;
- (BuddyKeyboardLanguageOrderSelector)init;
- (void)continuePressed;
- (void)presentAdditionViewController;
@end

@implementation BuddyKeyboardLanguageOrderSelector

+ (BOOL)needsFullscreenPane
{
  v9 = a1;
  v8 = a2;
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 currentLocaleRequiresExtendedSetup];

  v7 = v3 & 1;
  oslog = _BYLoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v4 = "does";
    }

    else
    {
      v4 = "does not";
    }

    sub_1000B25DC(buf, v4);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "The current locale %s require extended setup for keyboard/dictation.", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  return v7 & 1;
}

- (BuddyKeyboardLanguageOrderSelector)init
{
  v11 = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  location[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_KEYBOARD_LANGUAGE_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MULTILINGUAL_KEYBOARD_LANGUAGE_SUBTEXT"];
  v9 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];

  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"MULTILINGUAL_KEYBOARD_LANGUAGE_ACTIONTEXT" value:&stru_10032F900 table:@"Localizable"];
  v11 = [v11 initWithTitle:location[0] detailText:v9 symbolName:@"keyboard" actionString:v6];
  v7 = v11;

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)continuePressed
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyKeyboardLanguageOrderSelector;
  [(BuddyMultilingualBaseViewController *)&v5 continuePressed];
  v2 = objc_opt_class();
  v3 = [(BuddyMultilingualBaseViewController *)v7 backingStore];
  [v2 writePreferredKeyboardLanguagesToSystem:v3];

  v4 = [(BuddyMultilingualBaseViewController *)v7 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v7 nextItemClass:0];
}

- (void)presentAdditionViewController
{
  v13 = self;
  location[1] = a2;
  v2 = objc_opt_class();
  v3 = [(BuddyMultilingualBaseViewController *)v13 backingStore];
  [v2 writePreferredKeyboardLanguagesToSystem:v3];

  objc_initWeak(location, v13);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10023F4EC;
  v8 = &unk_10032AFA8;
  v4 = [BuddyAddKeyboardLanguageViewController alloc];
  objc_copyWeak(v10, location);
  v9 = v13;
  v11 = [(BuddyAddKeyboardLanguageViewController *)v4 initWithCompletion:&v5];
  [(BuddyKeyboardLanguageOrderSelector *)v13 presentViewController:v11 animated:1 completion:0, v5, v6, v7, v8];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(location);
}

+ (void)writePreferredKeyboardLanguagesToSystem:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [location[0] buddy_mapArray:&stru_10032F6A0];
  oslog = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v16);
    _os_log_impl(&_mh_execute_header, oslog, v14, "Multilingual keyboards displayed %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v13 = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  v3 = v16;
  v4 = [v3 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(__b[1] + 8 * i);
        v10 = [UIKeyboardInputModeController multilingualSetForInputModeIdentifier:v12];
        if ([v10 count])
        {
          [v13 addObjectsFromArray:v10];
        }

        else
        {
          [v13 addObject:v12];
        }

        objc_storeStrong(&v10, 0);
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v19 count:16];
    }

    while (v4);
  }

  v9 = _BYLoggingFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v18, v13);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Multilingual keyboards chosen %@", v18, 0xCu);
  }

  objc_storeStrong(&v9, 0);
  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v8 = [v13 copy];
  [v7 saveInputModes:v8];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

@end