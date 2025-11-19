@interface BuddyMultilingualDataModelProvider
+ (id)_createDictationSelectorIncludeSuggested:(BOOL)a3 shouldIncludeUserSelectedKeyboards:(BOOL)a4;
+ (id)_createKeyboardSelectorAllData;
+ (id)_createKeyboardSelectorDefaults;
+ (id)_createKeyboardSelectorSelectedData;
+ (id)_createLanguageSelectorAllData;
+ (id)_createLanguageSelectorDefaults;
+ (id)instanceForDictationSelector;
+ (id)instanceForDictationSelectorExpress;
+ (id)instanceForKeyboardSelector;
+ (id)instanceForLanguageSelector;
+ (id)selectedLanguage;
- (BuddyMultilingualDataModelProvider)initWithDefault:(id)a3 suggested:(id)a4 selected:(id)a5;
- (id)createDataSourceForPreselectedItems;
- (id)createDataSourceForSelectedItems;
- (id)createDataSourceItemsAvailableForAdding;
@end

@implementation BuddyMultilingualDataModelProvider

- (BuddyMultilingualDataModelProvider)initWithDefault:(id)a3 suggested:(id)a4 selected:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v7 = v21;
  v21 = 0;
  v17.receiver = v7;
  v17.super_class = BuddyMultilingualDataModelProvider;
  v8 = [(BuddyMultilingualDataModelProvider *)&v17 init];
  v21 = v8;
  objc_storeStrong(&v21, v8);
  if (v8)
  {
    v9 = [location[0] copy];
    v10 = *(v21 + 1);
    *(v21 + 1) = v9;

    v11 = [v19 copy];
    v12 = *(v21 + 2);
    *(v21 + 2) = v11;

    v13 = [v18 copy];
    v14 = *(v21 + 3);
    *(v21 + 3) = v13;
  }

  v15 = v21;
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v21, 0);
  return v15;
}

- (id)createDataSourceItemsAvailableForAdding
{
  v2 = [(BuddyMultilingualDataModelProvider *)self suggestedDataProvider];

  if (v2)
  {
    v3 = [(BuddyMultilingualDataModelProvider *)self suggestedDataProvider];
    v6 = v3[2](v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createDataSourceForPreselectedItems
{
  v2 = [(BuddyMultilingualDataModelProvider *)self defaultDataProvider];

  if (v2)
  {
    v3 = [(BuddyMultilingualDataModelProvider *)self defaultDataProvider];
    v6 = v3[2](v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createDataSourceForSelectedItems
{
  v2 = [(BuddyMultilingualDataModelProvider *)self selectedDataProvider];

  if (v2)
  {
    v3 = [(BuddyMultilingualDataModelProvider *)self selectedDataProvider];
    v6 = v3[2](v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)instanceForLanguageSelector
{
  v2 = [[BuddyMultilingualDataModelProvider alloc] initWithDefault:&stru_10032BF78 suggested:&stru_10032BF98 selected:0, a2, a1];

  return v2;
}

+ (id)instanceForKeyboardSelector
{
  v2 = [[BuddyMultilingualDataModelProvider alloc] initWithDefault:&stru_10032BFB8 suggested:&stru_10032BFD8 selected:&stru_10032BFF8, a2, a1];

  return v2;
}

+ (id)instanceForDictationSelector
{
  v2 = [[BuddyMultilingualDataModelProvider alloc] initWithDefault:&stru_10032C018 suggested:&stru_10032C038 selected:0, a2, a1];

  return v2;
}

+ (id)instanceForDictationSelectorExpress
{
  v2 = [[BuddyMultilingualDataModelProvider alloc] initWithDefault:&stru_10032C058 suggested:&stru_10032C078 selected:0, a2, a1];

  return v2;
}

+ (id)selectedLanguage
{
  v9 = a1;
  v8 = a2;
  v2 = +[NSLocale preferredLanguages];
  v3 = [(NSArray *)v2 firstObject];
  location = [NSLocale baseLanguageFromLanguage:v3];

  if (!location)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [(NSAssertionHandler *)v4 handleFailureInMethod:v8 object:v9 file:@"BuddyMultilingualDataModelProvider.m" lineNumber:109 description:@"selectedLanguage should not be nil, it should have been set from the second pane in buddy."];
  }

  v5 = location;
  objc_storeStrong(&location, 0);
  return v5;
}

+ (id)_createLanguageSelectorDefaults
{
  v22[2] = a1;
  v22[1] = a2;
  v22[0] = +[NSLocale buddyDefaultLanguages];
  v21 = objc_alloc_init(NSMutableOrderedSet);
  memset(__b, 0, sizeof(__b));
  v2 = v22[0];
  v3 = [v2 countByEnumeratingWithState:__b objects:v24 count:16];
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

        v20 = *(__b[1] + 8 * i);
        oslog = _BYLoggingFacility();
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v6 = oslog;
          v7 = v17;
          v8 = +[BuddyMultilingualDataModelProvider selectedLanguage];
          v9 = v20;
          v10 = +[BuddyMultilingualDataModelProvider selectedLanguage];
          sub_1000B5A64(buf, v8, v9, [v10 isEqualToString:v20] & 1);
          _os_log_impl(&_mh_execute_header, v6, v7, "Called from _createLanguageSelectorDefaults: currentLocale languageCode is %@, language from defaultLanguages:%@ and are they equal == %i", buf, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
        v16 = 3;
        v11 = +[BuddyMultilingualDataModelProvider selectedLanguage];
        v12 = [v11 isEqualToString:v20];

        if (v12)
        {
          v16 = 0;
        }

        location = [BuddyMultilingualLanguageData withLanguage:v20 defaults:v22[0] editingOption:v16];
        [v21 addObject:location];
        objc_storeStrong(&location, 0);
      }

      v3 = [v2 countByEnumeratingWithState:__b objects:v24 count:16];
    }

    while (v3);
  }

  v13 = [v21 array];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);

  return v13;
}

+ (id)_createLanguageSelectorAllData
{
  v34[2] = a1;
  v34[1] = a2;
  v34[0] = objc_alloc_init(NSMutableOrderedSet);
  v33 = +[IPLanguageListManager manager];
  v32 = [v33 deviceLanguagesForChangingDeviceLanguage:0];
  oslog = _BYLoggingFacility();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v32);
    _os_log_impl(&_mh_execute_header, oslog, v30, "Called from _createLanguageSelectorAllData: iPhone Languages from IPLanguageListManager %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v29 = [v33 otherLanguages];
  v28 = _BYLoggingFacility();
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v36, v29);
    _os_log_impl(&_mh_execute_header, v28, v27, "Called from _createLanguageSelectorAllData: Other Languages from IPLanguageListManager %@", v36, 0xCu);
  }

  objc_storeStrong(&v28, 0);
  v2 = [v32 arrayByAddingObjectsFromArray:v29];
  v3 = v32;
  v32 = v2;

  memset(__b, 0, sizeof(__b));
  v4 = v32;
  v5 = [v4 countByEnumeratingWithState:__b objects:v35 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v4);
        }

        v26 = *(__b[1] + 8 * i);
        v8 = [v26 localizedStringForName];
        v9 = [v26 name];
        v10 = [v26 identifier];
        location = [BuddyMultilingualLanguageData withLanguageMainDisplayText:v8 secondaryDisplayText:v9 identifier:v10 isDefault:1 editingOption:3];

        [v34[0] addObject:location];
        objc_storeStrong(&location, 0);
      }

      v5 = [v4 countByEnumeratingWithState:__b objects:v35 count:16];
    }

    while (v5);
  }

  v11 = +[NSLocale buddySuggestedLanguages];
  v23 = [NSOrderedSet orderedSetWithArray:v11];

  v12 = +[NSLocale buddyDefaultLanguages];
  v22 = [NSOrderedSet orderedSetWithArray:v12];

  v13 = v34[0];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000B5F24;
  v19 = &unk_10032C0A0;
  v20 = v23;
  v21 = v22;
  [v13 sortUsingComparator:&v16];
  v14 = [v34[0] array];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(v34, 0);

  return v14;
}

+ (id)_createKeyboardSelectorDefaults
{
  v16[2] = a1;
  v16[1] = a2;
  v16[0] = +[NSLocale buddyDefaultKeyboards];
  v15 = objc_alloc_init(NSMutableOrderedSet);
  location = [v16[0] buddy_mapCountedSet:&stru_10032C0E0];
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Called from _createKeyboardSelectorDefaults: identifierSet %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v2 = v16[0];
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_1000B63FC;
  v9 = &unk_10032C108;
  v10 = location;
  v11 = v15;
  [v2 enumerateObjectsUsingBlock:&v5];
  v3 = [v15 array];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v3;
}

+ (id)_createKeyboardSelectorAllData
{
  v18[2] = a1;
  v18[1] = a2;
  v18[0] = +[NSLocale buddyDefaultKeyboards];
  v17 = +[NSLocale buddySuggestedKeyboards];
  v16 = objc_alloc_init(NSMutableOrderedSet);
  v15 = [v18[0] buddy_mapSet:&stru_10032C148];
  location = [v17 buddy_mapCountedSet:&stru_10032C168];
  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Called from _createKeyboardSelectorAllData: identifierSet %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v2 = v17;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000B68B4;
  v8 = &unk_10032C190;
  v9 = location;
  v10 = v15;
  v11 = v16;
  [v2 enumerateObjectsUsingBlock:&v5];
  v3 = [v16 array];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);

  return v3;
}

+ (id)_createKeyboardSelectorSelectedData
{
  v35[2] = a1;
  v35[1] = a2;
  v35[0] = +[NSLocale buddyDefaultKeyboards];
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v34 = [v2 enabledInputModeIdentifiers];

  oslog = _BYLoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(buf, v34);
    _os_log_impl(&_mh_execute_header, oslog, v32, "_createKeyboardSelectorSelectedData: enabled identifiers before aggregating sets %@", buf, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v31 = [UIKeyboardInputMode multilingualSetsFromInputModeIdentifiers:v34];
  v30 = _BYLoggingFacility();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    location = [v31 buddy_mapArray:&stru_10032C1B0];
    sub_10006AE18(v38, location);
    _os_log_impl(&_mh_execute_header, v30, v29, "_createKeyboardSelectorSelectedData: enabled identifiers after aggregating sets %@", v38, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v30, 0);
  v27 = objc_alloc_init(NSMutableOrderedSet);
  v26 = [v35[0] buddy_mapSet:&stru_10032C1D0];
  v25 = [v31 buddy_mapCountedSet:&stru_10032C1F0];
  v24 = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006AE18(v37, v25);
    _os_log_impl(&_mh_execute_header, v24, v23, "_createKeyboardSelectorSelectedData: identifierSet %@", v37, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  memset(__b, 0, sizeof(__b));
  v3 = v31;
  v4 = [v3 countByEnumeratingWithState:__b objects:v36 count:16];
  if (v4)
  {
    v17 = &__b[2];
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (**v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v22 = *(__b[1] + 8 * i);
        v20 = [v22 displayName];
        v19 = 0;
        if ([v25 countForObject:v20] > 1)
        {
          v7 = [v22 identifier];
          v8 = UIKeyboardLocalizedSWLayoutName();
          v9 = v19;
          v19 = v8;
        }

        v10 = v20;
        v11 = v19;
        v12 = [v22 identifierWithLayouts];
        v13 = v26;
        v14 = [v22 identifierWithLayouts];
        v18 = +[BuddyMultilingualLanguageData withLanguageMainDisplayText:secondaryDisplayText:identifier:isDefault:editingOption:](BuddyMultilingualLanguageData, "withLanguageMainDisplayText:secondaryDisplayText:identifier:isDefault:editingOption:", v10, v11, v12, [v13 containsObject:v14] & 1, 3);

        [v27 addObject:v18];
        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v20, 0);
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v36 count:16];
    }

    while (v4);
  }

  v15 = [v27 array];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(v35, 0);

  return v15;
}

+ (id)_createDictationSelectorIncludeSuggested:(BOOL)a3 shouldIncludeUserSelectedKeyboards:(BOOL)a4
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = +[NSMutableOrderedSet orderedSet];
  v37 = 0;
  if (v39)
  {
    v4 = +[UIKeyboardInputModeController sharedInputModeController];
    v5 = [v4 activeInputModes];
    v6 = v37;
    v37 = v5;
  }

  else
  {
    v7 = +[NSLocale buddyDefaultKeyboards];
    v8 = v37;
    v37 = v7;
  }

  memset(__b, 0, sizeof(__b));
  v9 = v37;
  v10 = [v9 countByEnumeratingWithState:__b objects:v45 count:16];
  if (v10)
  {
    v11 = *__b[2];
    do
    {
      for (i = 0; i < v10; ++i)
      {
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(v9);
        }

        v36 = *(__b[1] + 8 * i);
        v13 = v38;
        v14 = [v36 languageWithRegion];
        [v13 addObject:v14];
      }

      v10 = [v9 countByEnumeratingWithState:__b objects:v45 count:16];
    }

    while (v10);
  }

  v15 = +[TUIPreferencesController sharedPreferencesController];
  v16 = [v38 array];
  v34 = [v15 suggestedDictationModesForKeyboardLanguages:v16];

  v33 = objc_alloc_init(NSMutableOrderedSet);
  oslog = _BYLoggingFacility();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v34 description];
    location = v17;
    if (v40)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    sub_100078180(buf, v17, v18);
    _os_log_impl(&_mh_execute_header, oslog, v31, "_createDictationSelectorDefaults dictation languages %@, inlude disabled %@", buf, 0x16u);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  memset(v28, 0, sizeof(v28));
  v19 = v34;
  v20 = [v19 countByEnumeratingWithState:v28 objects:v43 count:16];
  if (v20)
  {
    v21 = *v28[2];
    do
    {
      for (j = 0; j < v20; ++j)
      {
        if (*v28[2] != v21)
        {
          objc_enumerationMutation(v19);
        }

        v29 = *(v28[1] + 8 * j);
        if (v40 || ([v29 enabled] & 1) != 0)
        {
          v23 = [v29 displayName];
          v24 = [v29 identifier];
          v27 = [BuddyMultilingualLanguageData withLanguageMainDisplayText:v23 secondaryDisplayText:&stru_10032F900 identifier:v24 isDefault:0 editingOption:2];

          [v27 setShowDetailText:0];
          [v33 addObject:v27];
          objc_storeStrong(&v27, 0);
        }
      }

      v20 = [v19 countByEnumeratingWithState:v28 objects:v43 count:16];
    }

    while (v20);
  }

  v25 = [v33 array];
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);

  return v25;
}

@end