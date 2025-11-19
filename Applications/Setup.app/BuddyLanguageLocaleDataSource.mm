@interface BuddyLanguageLocaleDataSource
- (BOOL)userSelectedLanguageWithLocale:(id)a3 countryCode:(id)a4 localePaneScrollOffset:(double)a5;
- (BuddyLanguageLocaleDataSource)init;
- (BuddyLanguageLocaleDataSourceDelegate)delegate;
- (BuddyLocaleComposite)localeComposite;
- (NSString)language;
- (void)_didBecomeActive:(id)a3;
- (void)dealloc;
- (void)updateLanguageCompositer;
- (void)userSelectedLanguage:(id)a3;
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
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyLanguageLocaleDataSource;
  [(BuddyLanguageLocaleDataSource *)&v3 dealloc];
}

- (NSString)language
{
  if (self->_language)
  {
    v4 = self->_language;
  }

  else
  {
    v2 = +[NSLocale preferredLanguages];
    v4 = [(NSArray *)v2 firstObject];
  }

  return v4;
}

- (BuddyLocaleComposite)localeComposite
{
  v2 = [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];

  if (!v2)
  {
    v3 = objc_alloc_init(BuddyLocaleComposite);
    [(BuddyLanguageLocaleDataSource *)self setBackingLocaleComposite:v3];

    v4 = [(BuddyLanguageLocaleDataSource *)self buddyPreferencesExcludedFromBackup];
    v5 = [(BYPreferencesController *)v4 objectForKey:@"localeScrollOffset"];
    [v5 floatValue];
    v7 = v6;
    v8 = [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];
    [(BuddyLocaleComposite *)v8 setScrollOffset:v7];

    v9 = [(BuddyLanguageLocaleDataSource *)self buddyPreferencesExcludedFromBackup];
    [(BYPreferencesController *)v9 removeObjectForKey:@"localeScrollOffset"];
  }

  v10 = [(BuddyLanguageLocaleDataSource *)self language];
  v11 = [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];
  [(BuddyLocaleComposite *)v11 setLanguage:v10];

  return [(BuddyLanguageLocaleDataSource *)self backingLocaleComposite];
}

- (void)_didBecomeActive:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[BYLocationController sharedBuddyLocationController];
  v4 = [v3 guessedCountryFromTelephony];

  if (!v4)
  {
    v5 = +[BYLocationController sharedBuddyLocationController];
    v6 = [v5 getCountryFromTelephony];

    if (v6)
    {
      [(BuddyLanguageLocaleDataSource *)v8 updateLanguageCompositer];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)updateLanguageCompositer
{
  v28 = self;
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
  v22 = [v7 guessedLanguages];

  v21 = +[NSMutableOrderedSet orderedSet];
  memset(v19, 0, sizeof(v19));
  v8 = v22;
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
  v13 = [v21 array];
  v14 = [(BuddyLanguageLocaleDataSource *)v28 backingLanguageComposite];
  [(BuddyLanguageComposite *)v14 setLanguageCodes:v13];

  v15 = v26;
  v16 = [(BuddyLanguageLocaleDataSource *)v28 backingLanguageComposite];
  [(BuddyLanguageComposite *)v16 setLanguageStrings:v15];

  v17 = [(BuddyLanguageLocaleDataSource *)v28 delegate];
  [(BuddyLanguageLocaleDataSourceDelegate *)v17 languageCompositeUpdated];

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v27, 0);
}

- (void)userSelectedLanguage:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyLanguageLocaleDataSource *)v4 setLanguage:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)userSelectedLanguageWithLocale:(id)a3 countryCode:(id)a4 localePaneScrollOffset:(double)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
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