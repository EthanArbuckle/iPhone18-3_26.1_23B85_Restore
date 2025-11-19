@interface BuddyDictationLanguageOrderSelector
+ (void)writePreferredDictationLanguagesToSystem:(id)a3;
- (BuddyDictationLanguageOrderSelector)init;
- (void)continuePressed;
- (void)viewDidLoad;
@end

@implementation BuddyDictationLanguageOrderSelector

- (BuddyDictationLanguageOrderSelector)init
{
  v10 = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  location[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_DICTATION_LANGUAGE_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v3 localizedStringForKey:@"MULTILINGUAL_DICTATION_LANGUAGE_SUBTEXT" value:&stru_10032F900 table:@"Localizable"];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"MULTILINGUAL_DICTATION_LANGUAGE_ACTIONTEXT" value:&stru_10032F900 table:@"Localizable"];
  v10 = [v10 initWithTitle:location[0] detailText:v8 symbolName:@"microphone" actionString:v5];
  v6 = v10;

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v6;
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyDictationLanguageOrderSelector;
  [(BuddyMultilingualBaseViewController *)&v2 viewDidLoad];
}

- (void)continuePressed
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyDictationLanguageOrderSelector;
  [(BuddyMultilingualBaseViewController *)&v5 continuePressed];
  v2 = objc_opt_class();
  v3 = [(BuddyMultilingualBaseViewController *)v7 backingStore];
  [v2 writePreferredDictationLanguagesToSystem:v3];

  v4 = [(BuddyMultilingualBaseViewController *)v7 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v7 nextItemClass:0];
}

+ (void)writePreferredDictationLanguagesToSystem:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = +[NSMutableDictionary dictionary];
  memset(__b, 0, sizeof(__b));
  v3 = location[0];
  v4 = [v3 countByEnumeratingWithState:__b objects:v22 count:16];
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

        v18 = *(__b[1] + 8 * i);
        v7 = v19;
        v8 = [v18 identifier];
        [v7 setObject:&__kCFBooleanTrue forKey:v8];
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v22 count:16];
    }

    while (v4);
  }

  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v19 allKeys];
    v14 = [v9 componentsJoinedByString:{@", "}];
    sub_10006AE18(buf, v14);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Multilingual dictation languages chosen: %@", buf, 0xCu);

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&oslog, 0);
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v13 = [v10 preferencesActions];

  [v13 setEnabledDictationLanguages:v19];
  v11 = +[UIKeyboardInputModeController sharedInputModeController];
  v12 = [v11 updateEnabledDictationLanguages:1];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end