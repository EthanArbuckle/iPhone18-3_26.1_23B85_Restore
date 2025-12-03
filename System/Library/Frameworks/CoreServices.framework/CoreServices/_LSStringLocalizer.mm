@interface _LSStringLocalizer
+ (BOOL)useLegacyLocalizationListForPlatform:(unsigned int)platform sdkVersion:(unsigned int)version;
+ (NSArray)preferredLocalizationsForXCTests;
+ (NSString)missingLocalizationPlaceholder;
+ (_LSStringLocalizer)coreTypesLocalizer;
+ (id)localizedStringForCanonicalString:(id)string preferredLocalizations:(id)localizations context:(LSContext *)context;
+ (id)localizedStringsForCanonicalString:(id)string context:(LSContext *)context;
+ (id)newFrameworkBundleLocalizer;
+ (void)findKeysToLocalizeInInfoDictionary:(id)dictionary forArrayKey:(__CFString *)key stringKeys:(id)keys localizedKeys:(id)localizedKeys;
+ (void)newFrameworkBundleLocalizer;
+ (void)setPreferredLocalizationsForXCTests:(id)tests;
- (_LSStringLocalizer)initWithBundleProvider:(id)provider stringsFile:(id)file legacyLocalizationList:(BOOL)list;
- (_LSStringLocalizer)initWithDatabase:(id)database pluginUnit:(unsigned int)unit;
- (id)debugDescription;
- (id)localizedStringDictionaryWithString:(id)string defaultValue:(id)value;
- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle localeCode:(id)code;
- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle preferredLocalizations:(id)localizations;
- (id)localizedStringWithString:(id)string preferredLocalizations:(id)localizations;
- (id)localizedStringsWithStrings:(id)strings preferredLocalizations:(id)localizations;
- (void)dealloc;
- (void)enumerateLocalizedStringsForKeys:(id)keys usingBlock:(id)block;
@end

@implementation _LSStringLocalizer

+ (id)newFrameworkBundleLocalizer
{
  v2 = _LSGetBundle();
  if (!v2 || (v3 = [[_LSStringLocalizer alloc] initWithCFBundle:v2 stringsFile:@"Localized"]) == 0)
  {
    v3 = objc_alloc_init(_LSStringLocalizer);
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(_LSStringLocalizer *)v3];
    }
  }

  return v3;
}

+ (_LSStringLocalizer)coreTypesLocalizer
{
  if (+[_LSStringLocalizer coreTypesLocalizer]::once != -1)
  {
    +[_LSStringLocalizer coreTypesLocalizer];
  }

  v3 = +[_LSStringLocalizer coreTypesLocalizer]::result;

  return v3;
}

- (_LSStringLocalizer)initWithBundleProvider:(id)provider stringsFile:(id)file legacyLocalizationList:(BOOL)list
{
  listCopy = list;
  v62 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  fileCopy = file;
  v57.receiver = self;
  v57.super_class = _LSStringLocalizer;
  v11 = [(_LSStringLocalizer *)&v57 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_38;
  }

  objc_storeStrong(&v11->_bundleProvider, provider);
  v13 = [[_LSStringsFileContent alloc] initWithStringsFile:fileCopy];
  stringsContent = v12->_stringsContent;
  v12->_stringsContent = v13;

  v15 = objc_autoreleasePoolPush();
  bundleProvider = [(_LSStringLocalizer *)v12 bundleProvider];
  v17 = bundleProvider == 0;

  if (v17)
  {
    p_bundleLocalizations = &v12->_bundleLocalizations;
    if (!v12->_bundleLocalizations)
    {
      v19 = 0;
      goto LABEL_33;
    }

LABEL_25:
    v41 = *p_bundleLocalizations;
    v19 = @"en";
    goto LABEL_26;
  }

  bundleProvider2 = [(_LSStringLocalizer *)v12 bundleProvider];
  v19 = LSBundleProvider::CFBundleCopyDevelopmentRegion([bundleProvider2 provider]);

  if ([fileCopy isEqual:@"InfoPlist"])
  {
    bundleProvider3 = [(_LSStringLocalizer *)v12 bundleProvider];
    infoDictionary = [bundleProvider3 infoDictionary];
    v22 = infoDictionary == 0;

    if (v22)
    {
      if (![(__CFString *)providerCopy cfBundleRef:1 reason:@"Need to load non-Info.Plist file"])
      {
        goto LABEL_8;
      }

      bundleProvider4 = _CFBundleCopyInfoPlistURL();
      if (!bundleProvider4)
      {
        goto LABEL_7;
      }

      v39 = [_LSLazyPropertyList lazyPropertyListWithPropertyListURL:bundleProvider4];
      unlocalizedInfoPlistStrings = v12->_unlocalizedInfoPlistStrings;
      v12->_unlocalizedInfoPlistStrings = v39;
    }

    else
    {
      bundleProvider4 = [(_LSStringLocalizer *)v12 bundleProvider];
      unlocalizedInfoPlistStrings = [bundleProvider4 infoDictionary];
      v25 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:?];
      v26 = v12->_unlocalizedInfoPlistStrings;
      v12->_unlocalizedInfoPlistStrings = v25;
    }

LABEL_7:
  }

LABEL_8:
  bundleProvider5 = [(_LSStringLocalizer *)v12 bundleProvider];
  v28 = LSBundleProvider::CFBundleCopyBundleLocalizations([bundleProvider5 provider]);
  p_bundleLocalizations = &v12->_bundleLocalizations;
  bundleLocalizations = v12->_bundleLocalizations;
  v12->_bundleLocalizations = v28;

  if (listCopy && v19 && [*p_bundleLocalizations containsObject:v19])
  {
    v31 = _LSDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = providerCopy;
      _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Applying legacy localization list behavior to bundle %@", buf, 0xCu);
    }

    bundleProvider6 = [(_LSStringLocalizer *)v12 bundleProvider];
    bundleURL = [bundleProvider6 bundleURL];
    v34 = *MEMORY[0x1E695E480];
    Unique = _CFBundleCreateUnique();

    if (Unique)
    {
      v36 = MEMORY[0x1865D5B20](Unique, 1);
      v37 = [v36 copy];
      v38 = *p_bundleLocalizations;
      *p_bundleLocalizations = v37;

      CFRelease(Unique);
    }

    else
    {
      v40 = _LSDefaultLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [_LSStringLocalizer initWithBundleProvider:v40 stringsFile:? legacyLocalizationList:?];
      }
    }
  }

  v41 = *p_bundleLocalizations;
  if (!*p_bundleLocalizations)
  {
    goto LABEL_33;
  }

  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_26:
  v42 = [v41 indexOfObject:v19];
  v43 = v42;
  if (v42)
  {
    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = _LSDefaultLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        bundleProvider7 = [(_LSStringLocalizer *)v12 bundleProvider];
        bundleURL2 = [bundleProvider7 bundleURL];
        *buf = 138543619;
        v59 = v19;
        v60 = 2113;
        v61 = bundleURL2;
        _os_log_error_impl(&dword_18162D000, v44, OS_LOG_TYPE_ERROR, "LSStringLocalizer development region %{public}@ not found in localizations available for bundle %{private}@", buf, 0x16u);
      }
    }

    else
    {
      v44 = [*p_bundleLocalizations mutableCopy];
      [v44 removeObjectAtIndex:v43];
      [v44 insertObject:v19 atIndex:0];
      v47 = [v44 copy];
      v48 = *p_bundleLocalizations;
      *p_bundleLocalizations = v47;
    }
  }

  v49 = *p_bundleLocalizations;
  if (*p_bundleLocalizations)
  {
    goto LABEL_34;
  }

LABEL_33:
  v50 = *p_bundleLocalizations;
  *p_bundleLocalizations = MEMORY[0x1E695E0F0];

  v49 = *p_bundleLocalizations;
  if (*p_bundleLocalizations)
  {
LABEL_34:
    preferredLocalizations = [__LSDefaultsGetSharedInstance() preferredLocalizations];
    v52 = CFBundleCopyLocalizationsForPreferences(v49, preferredLocalizations);
    v53 = [(__CFArray *)v52 copy];
    bundleLocalizationsWithDefaultPrefLocs = v12->_bundleLocalizationsWithDefaultPrefLocs;
    v12->_bundleLocalizationsWithDefaultPrefLocs = v53;
  }

  if (!v12->_bundleLocalizationsWithDefaultPrefLocs)
  {
    v12->_bundleLocalizationsWithDefaultPrefLocs = MEMORY[0x1E695E0F0];
  }

  objc_autoreleasePoolPop(v15);
LABEL_38:

  v55 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _LSStringLocalizer;
  [(_LSStringLocalizer *)&v2 dealloc];
}

- (id)localizedStringWithString:(id)string preferredLocalizations:(id)localizations
{
  stringCopy = string;
  localizationsCopy = localizations;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];
  }

  bundleProvider = [(_LSStringLocalizer *)self bundleProvider];
  cfBundleRef = [bundleProvider cfBundleRef];

  if (cfBundleRef)
  {
    bundleProvider2 = [(_LSStringLocalizer *)self bundleProvider];
    v12 = -[_LSStringLocalizer localizedStringWithString:inBundle:preferredLocalizations:](self, "localizedStringWithString:inBundle:preferredLocalizations:", stringCopy, [bundleProvider2 cfBundleRef], localizationsCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)localizedStringsWithStrings:(id)strings preferredLocalizations:(id)localizations
{
  v28 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  localizationsCopy = localizations;
  v22 = stringsCopy;
  if (!stringsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"strings != nil"}];
  }

  context = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  cfBundleRef = [(_LSBundleProvider *)self->_bundleProvider cfBundleRef];
  if (cfBundleRef)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = stringsCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [(_LSStringLocalizer *)self localizedStringWithString:v15 inBundle:cfBundleRef preferredLocalizations:localizationsCopy];
          if (v16)
          {
            [v9 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }
  }

  v17 = [v9 copy];

  objc_autoreleasePoolPop(context);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)localizedStringDictionaryWithString:(id)string defaultValue:(id)value
{
  v32 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  valueCopy = value;
  v26 = stringCopy;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];
  }

  context = objc_autoreleasePoolPush();
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bundleProvider = [(_LSStringLocalizer *)self bundleProvider];
  cfBundleRef = [bundleProvider cfBundleRef];

  if (cfBundleRef)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->_bundleLocalizations;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = *v28;
      v13 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [(_LSStringLocalizer *)self localizedStringWithString:v26 inBundle:cfBundleRef localeCode:v15];
          if (v16)
          {
            CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v13, v15);
            v18 = CanonicalLanguageIdentifierFromString;
            if (CanonicalLanguageIdentifierFromString)
            {
              v19 = CanonicalLanguageIdentifierFromString;
            }

            else
            {
              v19 = v15;
            }

            [v25 setObject:v16 forKeyedSubscript:v19];
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }
  }

  if (valueCopy)
  {
    [v25 setObject:valueCopy forKeyedSubscript:@"LSDefaultLocalizedValue"];
  }

  objc_autoreleasePoolPop(context);

  v20 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)enumerateLocalizedStringsForKeys:(id)keys usingBlock:(id)block
{
  v100 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  blockCopy = block;
  v73 = keysCopy;
  selfCopy = self;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  context = objc_autoreleasePoolPush();
  if ([(NSArray *)self->_bundleLocalizations count])
  {
    isRegionChina = [__LSDefaultsGetSharedInstance() isRegionChina];
    v9 = isRegionChina ^ 1;
    if (!keysCopy)
    {
      v9 = 1;
    }

    v76 = isRegionChina;
    if (v9)
    {
      v72 = 0;
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [keysCopy mutableCopy];
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v12 = keysCopy;
      v13 = [v12 countByEnumeratingWithState:&v90 objects:v99 count:16];
      if (v13)
      {
        v14 = *v91;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v91 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = [*(*(&v90 + 1) + 8 * i) stringByAppendingString:@"#CH"];
            [v11 addObject:v16];
          }

          v13 = [v12 countByEnumeratingWithState:&v90 objects:v99 count:16];
        }

        while (v13);
      }

      v72 = [v11 copy];
      objc_autoreleasePoolPop(v10);
    }

    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    bundleProvider = [(_LSStringLocalizer *)selfCopy bundleProvider];
    bundleURL = [bundleProvider bundleURL];
    path = [bundleURL path];
    v22 = [v18 initWithFormat:@"Reading localized string from %@", path];
    if (_LSLoggingQueue(void)::onceToken != -1)
    {
      [_LSStringLocalizer enumerateLocalizedStringsForKeys:usingBlock:];
    }

    v23 = _LSLoggingQueue(void)::logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_1;
    block[3] = &unk_1E6A1A830;
    v95 = v22;
    v24 = v22;
    dispatch_sync(v23, block);

    objc_autoreleasePoolPop(v17);
    v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = selfCopy->_bundleLocalizations;
    v69 = [(NSArray *)obj countByEnumeratingWithState:&v86 objects:v98 count:16];
    if (v69)
    {
      v67 = *v87;
      do
      {
        v25 = 0;
        do
        {
          if (*v87 != v67)
          {
            objc_enumerationMutation(obj);
          }

          v70 = v25;
          v26 = *(*(&v86 + 1) + 8 * v25);
          v27 = objc_autoreleasePoolPush();
          v28 = v72;
          if (!v72)
          {
            v28 = v73;
          }

          if (!v73)
          {
            v28 = 0;
          }

          v29 = v28;
          stringsContent = selfCopy->_stringsContent;
          bundleProvider2 = [(_LSStringLocalizer *)selfCopy bundleProvider];
          v32 = -[_LSStringsFileContent uncheckedObjectsForKeys:forLocaleCode:fromBundle:cacheLocalizations:](stringsContent, v29, v26, [bundleProvider2 cfBundleRef], selfCopy->_bundleLocalizationsWithDefaultPrefLocs);

          if (v32)
          {
            v33 = v73 != 0;
          }

          else
          {
            v33 = 1;
          }

          if (!v33)
          {
            v34 = MEMORY[0x1E695DFD8];
            allKeys = [v32 allKeys];
            v36 = allKeys;
            if (allKeys)
            {
              v37 = allKeys;
            }

            else
            {
              v37 = MEMORY[0x1E695E0F0];
            }

            v73 = [v34 setWithArray:v37];
          }

          objc_autoreleasePoolPop(v27);
          if (v32)
          {
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v38 = v73;
            v39 = [v38 countByEnumeratingWithState:&v82 objects:v97 count:16];
            if (!v39)
            {
              goto LABEL_54;
            }

            v40 = *v83;
            while (1)
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v83 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v82 + 1) + 8 * j);
                v43 = objc_autoreleasePoolPush();
                if (v76 && ([v42 stringByAppendingString:@"#CH"], v44 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "objectForKeyedSubscript:", v44), v45 = objc_claimAutoreleasedReturnValue(), v44, v45) || (objc_msgSend(v32, "objectForKeyedSubscript:", v42), (v45 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  if (!_NSIsNSString())
                  {
                    goto LABEL_52;
                  }

                  v46 = [v75 objectForKeyedSubscript:v42];
                  if (!v46)
                  {
                    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    [v75 setObject:v46 forKeyedSubscript:v42];
                  }

                  [v46 setObject:v45 forKeyedSubscript:v26];
                }

                else
                {
                  v46 = [v74 objectForKeyedSubscript:v42];
                  if (!v46)
                  {
                    v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    [v74 setObject:v46 forKeyedSubscript:v42];
                  }

                  [v46 addObject:v26];
                  v45 = 0;
                }

LABEL_52:
                objc_autoreleasePoolPop(v43);
              }

              v39 = [v38 countByEnumeratingWithState:&v82 objects:v97 count:16];
              if (!v39)
              {
LABEL_54:

                break;
              }
            }
          }

          v25 = v70 + 1;
        }

        while (v70 + 1 != v69);
        v69 = [(NSArray *)obj countByEnumeratingWithState:&v86 objects:v98 count:16];
      }

      while (v69);
    }

    if (_LSLoggingQueue(void)::onceToken != -1)
    {
      [_LSStringLocalizer enumerateLocalizedStringsForKeys:usingBlock:];
    }

    dispatch_sync(_LSLoggingQueue(void)::logQueue, &__block_literal_global_205_0);
    v77 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v47 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v71 = v73;
    v48 = [v71 countByEnumeratingWithState:&v78 objects:v96 count:16];
    if (v48)
    {
      v49 = *v79;
LABEL_61:
      v50 = 0;
      while (1)
      {
        if (*v79 != v49)
        {
          objc_enumerationMutation(v71);
        }

        v51 = *(*(&v78 + 1) + 8 * v50);
        v52 = objc_autoreleasePoolPush();
        v53 = [v75 objectForKeyedSubscript:v51];
        v54 = v53;
        v55 = v77;
        if (v53)
        {
          v55 = v53;
        }

        v56 = v55;

        v57 = [v74 objectForKeyedSubscript:v51];
        v58 = v57;
        v59 = v57 ? v57 : v47;
        v60 = v59;

        LOBYTE(block[0]) = 0;
        blockCopy[2](blockCopy, v51, v56, v60, block);
        v61 = block[0];

        objc_autoreleasePoolPop(v52);
        if (v61)
        {
          break;
        }

        if (v48 == ++v50)
        {
          v48 = [v71 countByEnumeratingWithState:&v78 objects:v96 count:16];
          if (v48)
          {
            goto LABEL_61;
          }

          break;
        }
      }
    }

    keysCopy = v71;
  }

  objc_autoreleasePoolPop(context);

  v62 = *MEMORY[0x1E69E9840];
}

+ (NSString)missingLocalizationPlaceholder
{
  if (+[_LSStringLocalizer missingLocalizationPlaceholder]::once != -1)
  {
    +[_LSStringLocalizer missingLocalizationPlaceholder];
  }

  v3 = +[_LSStringLocalizer missingLocalizationPlaceholder]::result;

  return v3;
}

+ (BOOL)useLegacyLocalizationListForPlatform:(unsigned int)platform sdkVersion:(unsigned int)version
{
  if (platform - 1 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1817E9040[platform - 1];
  }

  return v4 > version;
}

- (id)debugDescription
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  bundleProvider = [(_LSStringLocalizer *)self bundleProvider];
  bundleURL = [bundleProvider bundleURL];
  if (bundleURL)
  {
    bundleProvider2 = [(_LSStringLocalizer *)self bundleProvider];
    bundleURL2 = [bundleProvider2 bundleURL];
    lastPathComponent = [bundleURL2 lastPathComponent];
  }

  else
  {
    lastPathComponent = @"(no bundle)";
  }

  v11 = [(_LSStringsFileContent *)self->_stringsContent debugDescription];
  v12 = [v5 stringWithFormat:@"<%@ %p> { '%@' %@ }", v7, self, lastPathComponent, v11];;

  if (bundleURL)
  {
  }

  return v12;
}

- (_LSStringLocalizer)initWithDatabase:(id)database pluginUnit:(unsigned int)unit
{
  v19 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  v7 = _LSGetPlugin(databaseCopy, unit);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  if (!*v7)
  {
    goto LABEL_6;
  }

  v9 = *(v7 + 20);
  v10 = *(v7 + 76);
  v18[0] = *(v7 + 60);
  v18[1] = v10;
  v11 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:v9 sdkVersion:_LSVersionNumberGetDYLDVersion(v18)];
  v12 = _LSAliasCopyResolvedNode(databaseCopy, *v8, 0, 0, 0);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_6;
  }

  v14 = [v12 URL];

  if (v14)
  {
    v15 = [(_LSStringLocalizer *)self initWithBundleURL:v14 stringsFile:@"InfoPlist" legacyLocalizationList:v11];
  }

  else
  {
LABEL_6:
    v15 = [(_LSStringLocalizer *)self init];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (NSArray)preferredLocalizationsForXCTests
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure] && (v2 = getenv("LS_PREFERRED_LOCALIZATIONS")) != 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
    v4 = [v3 componentsSeparatedByString:@"||"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setPreferredLocalizationsForXCTests:(id)tests
{
  testsCopy = tests;
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    if (testsCopy)
    {
      v3 = [testsCopy componentsJoinedByString:@"||"];
      setenv("LS_PREFERRED_LOCALIZATIONS", [v3 UTF8String], 1);
    }

    else
    {
      unsetenv("LS_PREFERRED_LOCALIZATIONS");
    }
  }
}

+ (id)localizedStringForCanonicalString:(id)string preferredLocalizations:(id)localizations context:(LSContext *)context
{
  stringCopy = string;
  localizationsCopy = localizations;
  if (!stringCopy)
  {
    goto LABEL_6;
  }

  v10 = LaunchServices::CanonicalString::Find(context->db, stringCopy, v8);
  if (!v10)
  {
    goto LABEL_6;
  }

  LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v10);
  v12 = LaunchServices::LocalizedString::localizeUnsafely(LocalizedString, context->db, localizationsCopy);
  v13 = v12;
  if (v12 && [v12 isEqual:stringCopy])
  {

LABEL_6:
    v13 = 0;
  }

  return v13;
}

+ (id)localizedStringsForCanonicalString:(id)string context:(LSContext *)context
{
  stringCopy = string;
  if (stringCopy && (v7 = LaunchServices::CanonicalString::Find(context->db, stringCopy, v5)) != 0)
  {
    LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v7);
    v9 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(LocalizedString, context->db, 0, 0, 0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle preferredLocalizations:(id)localizations
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  localizationsCopy = localizations;
  v11 = localizationsCopy;
  if (stringCopy)
  {
    if (!localizationsCopy)
    {
LABEL_4:
      v14 = self->_bundleLocalizationsWithDefaultPrefLocs;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:1033 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];

    if (!v11)
    {
      goto LABEL_4;
    }
  }

  preferredLocalizations = [__LSDefaultsGetSharedInstance() preferredLocalizations];
  v13 = [v11 isEqual:preferredLocalizations];

  if (v13)
  {
    goto LABEL_4;
  }

  v14 = CFBundleCopyLocalizationsForPreferences(self->_bundleLocalizations, v11);
LABEL_6:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v14;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = *v27;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [(_LSStringLocalizer *)self localizedStringWithString:stringCopy inBundle:bundle localeCode:*(*(&v26 + 1) + 8 * i)];
        v20 = v19;
        if (v19 && [(NSArray *)v19 length])
        {
          v22 = v15;
          goto LABEL_20;
        }
      }

      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = [(_LSLazyPropertyList *)self->_unlocalizedInfoPlistStrings objectForKey:stringCopy ofClass:objc_opt_class()];
  v22 = v21;
  if (v21 && [(NSArray *)v21 length])
  {
    v22 = v22;
    v20 = v22;
  }

  else
  {
    v20 = 0;
  }

LABEL_20:

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle localeCode:(id)code
{
  stringCopy = string;
  codeCopy = code;
  v11 = codeCopy;
  v26 = codeCopy;
  if (stringCopy)
  {
    if (codeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:1074 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:1075 description:{@"Invalid parameter not satisfying: %@", @"localeCode != nil"}];

LABEL_3:
  v12 = objc_autoreleasePoolPush();
  v13 = CFBundleCopyBundleURL(bundle);
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  path = [(__CFURL *)v13 path];
  selfCopy = self;
  v17 = [v14 initWithFormat:@"Reading localized string from %@", path];
  v18 = stringCopy;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    [_LSStringLocalizer(Private) localizedStringWithString:inBundle:localeCode:];
  }

  v19 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_1;
  block[3] = &unk_1E6A1A830;
  v28 = v17;
  v20 = v17;
  dispatch_sync(v19, block);

  v21 = v18;
  objc_autoreleasePoolPop(v12);
  v22 = [(_LSStringsFileContent *)&selfCopy->_stringsContent->super.isa stringForString:v18 forLocale:v26 fromBundle:bundle cacheLocalizations:selfCopy->_bundleLocalizationsWithDefaultPrefLocs];
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    [_LSStringLocalizer enumerateLocalizedStringsForKeys:usingBlock:];
  }

  dispatch_sync(_LSLoggingQueue(void)::logQueue, &__block_literal_global_205_0);

  return v22;
}

+ (void)findKeysToLocalizeInInfoDictionary:(id)dictionary forArrayKey:(__CFString *)key stringKeys:(id)keys localizedKeys:(id)localizedKeys
{
  v50 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keysCopy = keys;
  localizedKeysCopy = localizedKeys;
  context = objc_autoreleasePoolPush();
  v33 = dictionaryCopy;
  v10 = objc_opt_class();
  v11 = [dictionaryCopy objectForKey:key];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v12 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v14)
  {
    v37 = *v45;
    do
    {
      v38 = v14;
      for (i = 0; i != v38; ++i)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v17 = [v16 objectForKeyedSubscript:{@"_LSBundleLibraryDelegate", context, v33}];
          v18 = v17;
          v19 = &stru_1EEF65710;
          if (v17)
          {
            v19 = v17;
          }

          v39 = v19;

          v20 = [localizedKeysCopy objectForKeyedSubscript:v39];
          if (!v20)
          {
            v20 = [MEMORY[0x1E695DFA8] set];
            [localizedKeysCopy setObject:v20 forKeyedSubscript:v39];
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v21 = keysCopy;
          v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v22)
          {
            v23 = *v41;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v41 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v40 + 1) + 8 * j);
                v26 = objc_opt_class();
                v27 = [v16 objectForKey:v25];
                v28 = v27;
                if (v26)
                {
                  v29 = v27 == 0;
                }

                else
                {
                  v29 = 1;
                }

                if (v29)
                {
                  if (v27)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  isKindOfClass = objc_opt_isKindOfClass();
                  if (isKindOfClass)
                  {
LABEL_30:
                    [v20 addObject:v28];
                    goto LABEL_32;
                  }

                  v28 = 0;
                }

LABEL_32:
              }

              v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v22);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  v31 = *MEMORY[0x1E69E9840];
}

+ (void)newFrameworkBundleLocalizer
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  selfCopy = self;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "frameworkBundleLocalizer init fallback localizer %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithBundleProvider:(os_log_t)log stringsFile:legacyLocalizationList:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[_LSStringLocalizer initWithBundleProvider:stringsFile:legacyLocalizationList:]";
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "could not create fresh unique bundle in %s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end