@interface BuddyDictationLanguageOrderSelector
+ (void)writePreferredDictationLanguagesToSystem:(id)system;
- (BuddyDictationLanguageOrderSelector)init;
- (void)continuePressed;
- (void)viewDidLoad;
@end

@implementation BuddyDictationLanguageOrderSelector

- (BuddyDictationLanguageOrderSelector)init
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[NSBundle mainBundle];
  location[0] = [(NSBundle *)v2 localizedStringForKey:@"MULTILINGUAL_DICTATION_LANGUAGE_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v3 localizedStringForKey:@"MULTILINGUAL_DICTATION_LANGUAGE_SUBTEXT" value:&stru_10032F900 table:@"Localizable"];

  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"MULTILINGUAL_DICTATION_LANGUAGE_ACTIONTEXT" value:&stru_10032F900 table:@"Localizable"];
  selfCopy = [selfCopy initWithTitle:location[0] detailText:v8 symbolName:@"microphone" actionString:v5];
  v6 = selfCopy;

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = BuddyDictationLanguageOrderSelector;
  [(BuddyMultilingualBaseViewController *)&v2 viewDidLoad];
}

- (void)continuePressed
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyDictationLanguageOrderSelector;
  [(BuddyMultilingualBaseViewController *)&v5 continuePressed];
  v2 = objc_opt_class();
  backingStore = [(BuddyMultilingualBaseViewController *)selfCopy backingStore];
  [v2 writePreferredDictationLanguagesToSystem:backingStore];

  delegate = [(BuddyMultilingualBaseViewController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy nextItemClass:0];
}

+ (void)writePreferredDictationLanguagesToSystem:(id)system
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, system);
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
        identifier = [v18 identifier];
        [v7 setObject:&__kCFBooleanTrue forKey:identifier];
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v22 count:16];
    }

    while (v4);
  }

  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [v19 allKeys];
    v14 = [allKeys componentsJoinedByString:{@", "}];
    sub_10006AE18(buf, v14);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Multilingual dictation languages chosen: %@", buf, 0xCu);

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&oslog, 0);
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v10 preferencesActions];

  [preferencesActions setEnabledDictationLanguages:v19];
  v11 = +[UIKeyboardInputModeController sharedInputModeController];
  v12 = [v11 updateEnabledDictationLanguages:1];

  objc_storeStrong(&preferencesActions, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end