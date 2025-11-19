@interface CBLocationController
+ (id)sharedLocationController;
- (CBLocationController)init;
- (id)_checkForAliases:(id)a3;
- (id)_checkForAliasesOrInvalid:(id)a3;
- (id)_checkedArrayForString:(id)a3;
- (id)aliasDict;
- (id)guessedLanguages;
- (void)_closeWifiConnection;
- (void)_scanComplete:(id)a3;
- (void)_scanWifiList;
- (void)_startWifiScan;
- (void)dealloc;
- (void)selectLanguage:(id)a3 restartAfterCompletion:(id)a4;
- (void)updateLanguageComposite;
@end

@implementation CBLocationController

+ (id)sharedLocationController
{
  v2 = qword_100092340;
  if (!qword_100092340)
  {
    v3 = objc_alloc_init(CBLocationController);
    v4 = qword_100092340;
    qword_100092340 = v3;

    v2 = qword_100092340;
  }

  return v2;
}

- (id)aliasDict
{
  aliasDict = self->_aliasDict;
  if (!aliasDict)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"CountryAlias" ofType:@"plist"];
    v6 = [NSDictionary dictionaryWithContentsOfFile:v5];
    v7 = self->_aliasDict;
    self->_aliasDict = v6;

    aliasDict = self->_aliasDict;
  }

  return aliasDict;
}

- (id)_checkForAliases:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CBLocationController *)self aliasDict];
    v6 = [v5 objectForKey:@"countryAlias"];

    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        v10 = [v4 objectAtIndexedSubscript:v9];
        v11 = [v6 objectForKey:v10];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v16 = v11;
            v12 = [NSArray arrayWithObjects:&v16 count:1];
          }

          v14 = v12;
          [v4 replaceObjectsInRange:v9 withObjectsFromArray:{1, v12}];
          v13 = [v14 count];
        }

        else
        {
          v13 = 1;
        }

        v9 += v13;
      }

      while (v9 < v8);
    }
  }

  return v4;
}

- (id)_checkForAliasesOrInvalid:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v24 = v4;
  if (!self->_validCountries)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = +[NSLocale availableLocaleIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [NSLocale canonicalLocaleIdentifierFromString:*(*(&v29 + 1) + 8 * i)];
          v13 = [NSLocale componentsFromLocaleIdentifier:v12];

          v14 = [v13 objectForKey:NSLocaleCountryCode];
          if (v14)
          {
            [(NSSet *)v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v9);
    }

    validCountries = self->_validCountries;
    self->_validCountries = v6;

    v4 = v24;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [(CBLocationController *)self _checkForAliases:v4];
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        if ([(NSSet *)self->_validCountries containsObject:v21])
        {
          [v5 addObject:v21];
        }

        else
        {
          v22 = CheckerBoardLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Location: Found country '%@', but this is not a valid country code, ignoring", buf, 0xCu);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v18);
  }

  return v5;
}

- (id)_checkedArrayForString:(id)a3
{
  if (a3)
  {
    v4 = [NSMutableArray arrayWithObject:?];
    v5 = [(CBLocationController *)self _checkForAliases:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CBLocationController)init
{
  v6.receiver = self;
  v6.super_class = CBLocationController;
  v2 = [(CBLocationController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CBLanguageComposite);
    languageComposite = v2->_languageComposite;
    v2->_languageComposite = v3;

    if (!v2->_guessedCountries)
    {
      if (+[CBUtilities isRunningOnPhysicalHardware])
      {
        [(CBLocationController *)v2 _startWifiScan];
      }

      else
      {
        [(CBLocationController *)v2 _scanComplete:&__NSArray0__struct];
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  [(CBLocationController *)self _closeWifiConnection];
  v3.receiver = self;
  v3.super_class = CBLocationController;
  [(CBLocationController *)&v3 dealloc];
}

- (id)guessedLanguages
{
  v2 = self;
  if ([(NSArray *)self->_guessedCountries count])
  {
    v3 = +[NSMutableArray array];
    v4 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v2;
    v5 = v2->_guessedCountries;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [IntlUtility preferredLanguagesForRegion:*(*(&v29 + 1) + 8 * i)];
          v11 = [v10 reverseObjectEnumerator];
          v12 = [v11 allObjects];

          [v4 addObject:v12];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v7);
    }

    while (1)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v13 = v4;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = 0;
      v17 = *v26;
      do
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v25 + 1) + 8 * j);
          v20 = [v19 lastObject];
          if (v20)
          {
            if (([v3 containsObject:v20] & 1) == 0)
            {
              [v3 addObject:v20];
            }

            [v19 removeLastObject];
            v16 = 1;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v15);

      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_25:
    v2 = v24;
  }

  else
  {
    v3 = 0;
  }

  v21 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    guessedCountries = v2->_guessedCountries;
    *buf = 138412546;
    v34 = guessedCountries;
    v35 = 2112;
    v36 = v3;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Language Location: Languages for countries %@ = %@", buf, 0x16u);
  }

  if (!v2->_firstGuessedLanguages)
  {
    [(CBLocationController *)v2 setFirstGuessedLanguages:v3];
  }

  return v3;
}

- (void)_startWifiScan
{
  v3 = objc_alloc_init(CWFInterface);
  cwInterface = self->cwInterface;
  self->cwInterface = v3;

  v5 = self->cwInterface;
  if (!v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Language Location: CWFInterface failed", v7, 2u);
    }

    v5 = self->cwInterface;
  }

  [(CWFInterface *)v5 activate];
  [(CBLocationController *)self _scanWifiList];
}

- (void)_scanWifiList
{
  v3 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Language Location: started wifi scan", buf, 2u);
  }

  v4 = objc_alloc_init(CWFScanParameters);
  v5 = [NSSet setWithArray:&off_100081378];
  [v4 setIncludeProperties:v5];

  v6 = +[NSDate date];
  [(CBLocationController *)self setWirelessScanStartDate:v6];

  cwInterface = self->cwInterface;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011AB8;
  v8[3] = &unk_10007D9F0;
  v8[4] = self;
  [(CWFInterface *)cwInterface performScanWithParameters:v4 reply:v8];
}

- (void)_scanComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_guessedCountries)
  {
    goto LABEL_44;
  }

  v6 = [v4 count];
  if (!v6)
  {
    goto LABEL_44;
  }

  v7 = v6;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSCountedSet);
  for (i = 0; i != v7; ++i)
  {
    v11 = [v5 objectAtIndexedSubscript:i];
    v12 = [v11 countryCode];

    if (v12)
    {
      v13 = [v11 countryCode];
      [v8 addObject:v13];
    }
  }

  v37 = v8;
  v14 = [(CBLocationController *)self _checkForAliasesOrInvalid:v8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v9 addObject:*(*(&v46 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v16);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = v9;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v20)
  {
    v36 = self;
    v21 = 0;
    v22 = *v43;
    do
    {
      for (k = 0; k != v20; k = k + 1)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v19 countForObject:{*(*(&v42 + 1) + 8 * k), v36}];
        if (v24 > v21)
        {
          v21 = v24;
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v20);

    if (!v21)
    {
      v20 = 0;
      self = v36;
      goto LABEL_36;
    }

    v20 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v19;
    v26 = [v25 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v39;
      do
      {
        for (m = 0; m != v27; m = m + 1)
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v38 + 1) + 8 * m);
          if ([v25 countForObject:v30] == v21)
          {
            [v20 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v27);
    }

    self = v36;
  }

LABEL_36:
  v31 = [v20 count];
  v32 = CheckerBoardLogHandleForCategory();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if (v31)
  {
    if (v33)
    {
      v34 = [v20 count];
      *buf = 134217984;
      v51 = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Language Location: Adding %lu countries from Wifi scan.", buf, 0xCu);
    }

    [(CBLocationController *)self setGuessedCountries:v20];
  }

  else
  {
    if (v33)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Language Location: No valid countries in Wifi scan.", buf, 2u);
    }
  }

LABEL_44:
  [(CBLocationController *)self _closeWifiConnection];
  [(CBLocationController *)self updateLanguageComposite];
  v35 = +[NSNotificationCenter defaultCenter];
  [v35 postNotificationName:@"CBLanguageCompositeWifiScanComplete" object:0];
}

- (void)_closeWifiConnection
{
  cwInterface = self->cwInterface;
  if (cwInterface)
  {
    [(CWFInterface *)cwInterface invalidate];
    v4 = self->cwInterface;
    self->cwInterface = 0;
  }
}

- (void)updateLanguageComposite
{
  v2 = +[NSLocale baseSystemLanguages];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableDictionary);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [NSLocale localeWithLocaleIdentifier:v10];
        v12 = [v11 localizedStringForLanguage:v10 context:4];
        if (!v12)
        {
          v12 = v10;
        }

        [v3 setValue:v12 forKey:v10];
        [v4 setValue:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v13 = [(CBLocationController *)self guessedLanguages];
  v14 = +[NSMutableOrderedSet orderedSet];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [NSLocale baseLanguageFromLanguage:*(*(&v26 + 1) + 8 * j)];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  [v14 addObjectsFromArray:v5];
  v21 = [v14 array];
  v22 = [(CBLocationController *)self languageComposite];
  [v22 setLanguageCodes:v21];

  v23 = [(CBLocationController *)self languageComposite];
  [v23 setLanguageStrings:v3];

  v24 = [(CBLocationController *)self languageComposite];
  [v24 setLocales:v4];
}

- (void)selectLanguage:(id)a3 restartAfterCompletion:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = +[NSLocale currentLocale];
  v7 = [v6 languageCode];

  if (v7 != v14)
  {
    v8 = +[CBLocationController sharedLocationController];
    v9 = [v8 guessedCountries];
    v10 = [v9 firstObject];

    v11 = v14;
    if ([v10 length])
    {
      v12 = [NSLocale languageFromLanguage:v11 byReplacingRegion:v10];

      v11 = v12;
    }

    [NSLocale setLocaleAfterLanguageChange:v11];
    [NSLocale setPreferredLanguageAndUpdateLocale:v11];
    if (v5)
    {
      v5[2](v5);
    }

    v13 = +[FBSystemService sharedInstance];
    [v13 exitAndRelaunch:1];
  }
}

@end