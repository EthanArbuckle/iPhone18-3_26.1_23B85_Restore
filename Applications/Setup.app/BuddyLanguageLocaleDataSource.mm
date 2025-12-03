@interface BuddyLanguageLocaleDataSource
- (BOOL)userSelectedLanguageWithLocale:(id)locale countryCode:(id)code localePaneScrollOffset:(double)offset;
- (BuddyLanguageLocaleDataSource)init;
- (BuddyLanguageLocaleDataSourceDelegate)delegate;
- (BuddyLocaleComposite)localeComposite;
- (NSString)language;
- (void)_didBecomeActive:(id)active;
- (void)dealloc;
- (void)updateLanguageCompositer;
- (void)userSelectedLanguage:(id)language;
@end

@implementation BuddyLanguageLocaleDataSource

- (BuddyLanguageLocaleDataSource)init
{
  v8 = a2;
  location = 0;
  v7.receiver = self;
  v7.super_class = BuddyLanguageLocaleDataSource;
  location = [(BuddyLanguageLocaleDataSource *)&v7 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc_init(BuddyLanguageComposite);
    [location setBackingLanguageComposite:v2];

    v3 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v3 addObserver:location selector:"_countryScanCompleted" name:BYCountryScanCompletedNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 addObserver:location selector:"_didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    [location updateLanguageCompositer];
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddyLanguageLocaleDataSource;
  [(BuddyLanguageLocaleDataSource *)&v3 dealloc];
}

- (NSString)language
{
  if (self->_language)
  {
    firstObject = self->_language;
  }

  else
  {
    v2 = +[NSLocale preferredLanguages];
    firstObject = [(NSArray *)v2 firstObject];
  }

  return firstObject;
}

- (BuddyLocaleComposite)localeComposite
{
  backingLocaleComposite = [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];

  if (!backingLocaleComposite)
  {
    v3 = objc_alloc_init(BuddyLocaleComposite);
    [(BuddyLanguageLocaleDataSource *)self setBackingLocaleComposite:v3];

    buddyPreferencesExcludedFromBackup = [(BuddyLanguageLocaleDataSource *)self buddyPreferencesExcludedFromBackup];
    v5 = [(BYPreferencesController *)buddyPreferencesExcludedFromBackup objectForKey:@"localeScrollOffset"];
    [v5 floatValue];
    v7 = v6;
    backingLocaleComposite2 = [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];
    [(BuddyLocaleComposite *)backingLocaleComposite2 setScrollOffset:v7];

    buddyPreferencesExcludedFromBackup2 = [(BuddyLanguageLocaleDataSource *)self buddyPreferencesExcludedFromBackup];
    [(BYPreferencesController *)buddyPreferencesExcludedFromBackup2 removeObjectForKey:@"localeScrollOffset"];
  }

  language = [(BuddyLanguageLocaleDataSource *)self language];
  backingLocaleComposite3 = [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];
  [(BuddyLocaleComposite *)backingLocaleComposite3 setLanguage:language];

  return [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];
}

- (void)_didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  v3 = +[BYLocationController sharedBuddyLocationController];
  guessedCountryFromTelephony = [v3 guessedCountryFromTelephony];

  if (!guessedCountryFromTelephony)
  {
    v5 = +[BYLocationController sharedBuddyLocationController];
    getCountryFromTelephony = [v5 getCountryFromTelephony];

    if (getCountryFromTelephony)
    {
      [(BuddyLanguageLocaleDataSource *)selfCopy updateLanguageCompositer];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)updateLanguageCompositer
{
  selfCopy = self;
  v27[1] = a2;
  v27[0] = +[IntlUtility baseSystemLanguages];
  v26 = objc_alloc_init(NSMutableDictionary);
  memset(__b, 0, sizeof(__b));
  v2 = v27[0];
  v3 = [v2 countByEnumeratingWithState:__b objects:v30 count:16];
  if (v3)
  {
    v4 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(v2);
        }

        obj = *(__b[1] + 8 * i);
        v6 = [NSLocale localeWithLocaleIdentifier:obj];
        location = [(NSLocale *)v6 localizedStringForLanguage:obj context:4];

        if (!location)
        {
          objc_storeStrong(&location, obj);
        }

        [v26 setValue:location forKey:obj];
        objc_storeStrong(&location, 0);
      }

      v3 = [v2 countByEnumeratingWithState:__b objects:v30 count:16];
    }

    while (v3);
  }

  v7 = +[BYLocationController sharedBuddyLocationController];
  guessedLanguages = [v7 guessedLanguages];

  v21 = +[NSMutableOrderedSet orderedSet];
  memset(v19, 0, sizeof(v19));
  v8 = guessedLanguages;
  v9 = [v8 countByEnumeratingWithState:v19 objects:v29 count:16];
  if (v9)
  {
    v10 = *v19[2];
    do
    {
      for (j = 0; j < v9; ++j)
      {
        if (*v19[2] != v10)
        {
          objc_enumerationMutation(v8);
        }

        v20 = *(v19[1] + 8 * j);
        v18 = [IntlUtility baseLanguageIdentifierFromIdentifier:v20];
        v12 = [v26 objectForKeyedSubscript:v18];

        if (v12)
        {
          [v21 addObject:v18];
        }

        objc_storeStrong(&v18, 0);
      }

      v9 = [v8 countByEnumeratingWithState:v19 objects:v29 count:16];
    }

    while (v9);
  }

  [v21 addObjectsFromArray:v27[0]];
  array = [v21 array];
  backingLanguageComposite = [(BuddyLanguageLocaleDataSource *)selfCopy backingLanguageComposite];
  [(BuddyLanguageComposite *)backingLanguageComposite setLanguageCodes:array];

  v15 = v26;
  backingLanguageComposite2 = [(BuddyLanguageLocaleDataSource *)selfCopy backingLanguageComposite];
  [(BuddyLanguageComposite *)backingLanguageComposite2 setLanguageStrings:v15];

  delegate = [(BuddyLanguageLocaleDataSource *)selfCopy delegate];
  [(BuddyLanguageLocaleDataSourceDelegate *)delegate languageCompositeUpdated];

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&guessedLanguages, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v27, 0);
}

- (void)userSelectedLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  [(BuddyLanguageLocaleDataSource *)selfCopy setLanguage:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)userSelectedLanguageWithLocale:(id)locale countryCode:(id)code localePaneScrollOffset:(double)offset
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locale);
  v7 = 0;
  objc_storeStrong(&v7, code);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (BuddyLanguageLocaleDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end