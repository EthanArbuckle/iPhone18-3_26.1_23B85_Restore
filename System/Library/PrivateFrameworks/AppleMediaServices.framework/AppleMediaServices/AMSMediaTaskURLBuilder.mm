@interface AMSMediaTaskURLBuilder
- (AMSMediaTaskURLBuilder)initWithConfig:(id)config clientVersion:(id)version bag:(id)bag;
- (id)_devicePlatform;
- (id)_hostPromise;
- (id)_languagePromise;
- (id)_languagePromiseAppDistribution;
- (id)_languagePromiseForType;
- (id)_pathPromise;
- (id)_queryItemsWithLanguage:(id)language;
- (id)_verifyConfiguration;
- (id)build;
- (void)_addBundleIdentifiers:(id)identifiers;
- (void)_addCharts:(id)charts;
- (void)_addItemIdentifiers:(id)identifiers;
- (void)_addSearchTerm:(id)term;
@end

@implementation AMSMediaTaskURLBuilder

- (id)_languagePromiseForType
{
  config = [(AMSMediaTaskURLBuilder *)self config];
  type = [config type];

  if (type == 7)
  {
    [(AMSMediaTaskURLBuilder *)self _languagePromiseAppDistribution];
  }

  else
  {
    [(AMSMediaTaskURLBuilder *)self _languagePromise];
  }
  v5 = ;

  return v5;
}

- (id)_languagePromise
{
  v3 = +[AMSProcessInfo currentProcess];
  bundleIdentifier = [v3 bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.appstorecomponentsd"];

  if (v5)
  {
    v6 = objc_alloc_init(AMSMutablePromise);
    v7 = [(AMSMediaTaskURLBuilder *)self bag];
    v8 = [v7 stringForKey:@"language-tag"];
    valuePromise = [v8 valuePromise];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke;
    v17[3] = &unk_1E73B4DF8;
    v10 = v6;
    v18 = v10;
    [valuePromise addSuccessBlock:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke_2;
    v15[3] = &unk_1E73B32F0;
    v15[4] = self;
    v11 = v10;
    v16 = v11;
    [valuePromise addErrorBlock:v15];
    v12 = v16;
    v13 = v11;
  }

  else
  {
    valuePromise = +[AMSDevice language];
    v13 = [AMSPromise promiseWithResult:valuePromise];
  }

  return v13;
}

- (id)_pathPromise
{
  appDistributionCountryCodeOverride = [(AMSMediaTaskURLBuilder *)self appDistributionCountryCodeOverride];
  if (appDistributionCountryCodeOverride && (v4 = appDistributionCountryCodeOverride, -[AMSMediaTaskURLBuilder config](self, "config"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v4, v6 == 7))
  {
    appDistributionCountryCodeOverride2 = [(AMSMediaTaskURLBuilder *)self appDistributionCountryCodeOverride];
    valuePromise = [AMSPromise promiseWithResult:appDistributionCountryCodeOverride2];
  }

  else
  {
    appDistributionCountryCodeOverride2 = [(AMSMediaTaskURLBuilder *)self bag];
    v9 = [appDistributionCountryCodeOverride2 stringForKey:@"countryCode"];
    valuePromise = [v9 valuePromise];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__AMSMediaTaskURLBuilder__pathPromise__block_invoke;
  v12[3] = &unk_1E73B4E20;
  v12[4] = self;
  v10 = [valuePromise thenWithBlock:v12];

  return v10;
}

- (id)build
{
  v12[3] = *MEMORY[0x1E69E9840];
  _verifyConfiguration = [(AMSMediaTaskURLBuilder *)self _verifyConfiguration];
  if (_verifyConfiguration)
  {
    v4 = [AMSPromise promiseWithError:_verifyConfiguration];
  }

  else
  {
    _hostPromise = [(AMSMediaTaskURLBuilder *)self _hostPromise];
    _languagePromiseForType = [(AMSMediaTaskURLBuilder *)self _languagePromiseForType];
    _pathPromise = [(AMSMediaTaskURLBuilder *)self _pathPromise];
    v12[0] = _hostPromise;
    v12[1] = _languagePromiseForType;
    v12[2] = _pathPromise;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v9 = [AMSPromise promiseWithAll:v8];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__AMSMediaTaskURLBuilder_build__block_invoke;
    v11[3] = &unk_1E73B3028;
    v11[4] = self;
    v4 = [v9 thenWithBlock:v11];
  }

  return v4;
}

- (id)_verifyConfiguration
{
  bundleIdentifiers = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
  v4 = [bundleIdentifiers count];

  charts = [(AMSMediaTaskURLBuilder *)self charts];
  v6 = 1;
  if (v4)
  {
    v6 = 2;
  }

  if (charts)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4 != 0;
  }

  itemIdentifiers = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
  v9 = [itemIdentifiers count];

  if (v9)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7;
  }

  searchTerm = [(AMSMediaTaskURLBuilder *)self searchTerm];

  if (searchTerm)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v10;
  }

  v13 = [(AMSMediaTaskURLBuilder *)self bag];

  if (!v13)
  {
    v16 = @"A bag is required for the media task";
LABEL_20:
    v18 = AMSError(404, @"Invalid media task configuration", v16, 0);
    goto LABEL_21;
  }

  config = [(AMSMediaTaskURLBuilder *)self config];
  if ([config type] == 3)
  {
    v15 = 1;
  }

  else
  {
    config2 = [(AMSMediaTaskURLBuilder *)self config];
    v15 = [config2 type] == 4;
  }

  if (v15 && v12)
  {
    v16 = @"Bundle identifiers, charts, item identifiers and search term cannot be set on AMSMediaTaskTypeArcadeApp or AMSMediaTaskTypeAppRecommendation request";
    goto LABEL_20;
  }

  if (v12)
  {
    v20 = 1;
  }

  else
  {
    v20 = v15;
  }

  if (v20)
  {
    if (v12 >= 2)
    {
      v16 = @"Bundle identifiers, charts, item identifiers, or search term cannot be set on the same request.";
      goto LABEL_20;
    }
  }

  else
  {
    filters = [(AMSMediaTaskURLBuilder *)self filters];
    v22 = [filters count];

    if (!v22)
    {
      v16 = @"Bundle identifiers, charts, filters, item identifiers, or search term must be specified.";
      goto LABEL_20;
    }
  }

  bundleIdentifiers2 = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
  if (![bundleIdentifiers2 count])
  {
    goto LABEL_38;
  }

  config3 = [(AMSMediaTaskURLBuilder *)self config];
  if (![config3 type])
  {
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  config4 = [(AMSMediaTaskURLBuilder *)self config];
  if ([config4 type] == 7)
  {
LABEL_36:

    goto LABEL_37;
  }

  config5 = [(AMSMediaTaskURLBuilder *)self config];
  if ([config5 type] == 1)
  {

    goto LABEL_36;
  }

  config6 = [(AMSMediaTaskURLBuilder *)self config];
  type = [config6 type];

  if (type != 2)
  {
    v16 = @"Bundle identifiers only availble for AMSMediaTaskTypeApp, AMSMediaTaskTypeAppBundle, and AMSMediaTaskTypeInApp.";
    goto LABEL_20;
  }

LABEL_39:
  v18 = 0;
LABEL_21:

  return v18;
}

- (id)_hostPromise
{
  config = [(AMSMediaTaskURLBuilder *)self config];
  hostBagKey = [config hostBagKey];

  v5 = [(AMSMediaTaskURLBuilder *)self bag];
  v6 = [v5 URLForKey:hostBagKey];

  valuePromise = [v6 valuePromise];

  return valuePromise;
}

id __38__AMSMediaTaskURLBuilder__pathPromise__block_invoke(uint64_t a1, void *a2)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) charts])
  {
    v4 = @"charts";
  }

  else
  {
    v5 = [*(a1 + 32) searchTerm];

    if (v5)
    {
      v4 = @"search";
    }

    else
    {
      v6 = [*(a1 + 32) config];
      v4 = [v6 typeString];
    }
  }

  v7 = [@"/v{clientVersion}/{realm}/{storefront}/" stringByAppendingString:v4];
  v8 = [*(a1 + 32) config];
  if ([v8 type] == 7)
  {
    v9 = _os_feature_enabled_impl();

    if (v9)
    {
      goto LABEL_10;
    }

    [@"/v{clientVersion}/{realm}/" stringByAppendingString:v4];
    v7 = v8 = v7;
  }

LABEL_10:
  v35[0] = @"{clientVersion}";
  v10 = [*(a1 + 32) clientVersion];
  v35[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v36[0] = v11;
  v34[0] = @"{realm}";
  v12 = [*(a1 + 32) config];
  v13 = [v12 realm];
  v34[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v36[1] = v14;
  v33[0] = @"{storefront}";
  v33[1] = v3;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v36[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      v22 = v7;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v28 + 1) + 8 * v21);
        v24 = [v23 objectAtIndexedSubscript:{0, v28}];
        v25 = [v23 objectAtIndexedSubscript:1];
        v7 = [v22 stringByReplacingOccurrencesOfString:v24 withString:v25];

        ++v21;
        v22 = v7;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  v26 = [AMSPromise promiseWithResult:v7];

  return v26;
}

id __31__AMSMediaTaskURLBuilder_build__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = [v3 objectAtIndexedSubscript:2];

  v7 = [*(a1 + 32) _queryItemsWithLanguage:v5];
  v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v9 = [v4 absoluteString];
  [v8 setHost:v9];

  [v8 setPath:v6];
  [v8 setQueryItems:v7];
  [v8 setScheme:@"https"];
  [*(a1 + 32) _addBundleIdentifiers:v8];
  [*(a1 + 32) _addCharts:v8];
  [*(a1 + 32) _addItemIdentifiers:v8];
  [*(a1 + 32) _addSearchTerm:v8];
  v10 = [AMSPromise promiseWithResult:v8];

  return v10;
}

- (id)_devicePlatform
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[AMSDevice deviceIsAppleTV])
  {
    v3 = AMSMediaTaskPlatformAppleTV;
LABEL_15:
    v4 = *v3;
    goto LABEL_16;
  }

  if (+[AMSDevice deviceIsAppleWatch])
  {
    v3 = AMSMediaTaskPlatformAppleWatch;
    goto LABEL_15;
  }

  if (+[AMSDevice deviceIsAudioAccessory])
  {
    v3 = AMSMediaTaskPlatformHomePod;
    goto LABEL_15;
  }

  if (+[AMSDevice deviceIsiPad])
  {
    v3 = AMSMediaTaskPlatformiPad;
    goto LABEL_15;
  }

  if (+[AMSDevice deviceIsiPhone])
  {
    v3 = AMSMediaTaskPlatformiPhone;
    goto LABEL_15;
  }

  if (+[AMSDevice deviceIsMac])
  {
    v3 = AMSMediaTaskPlatformMac;
    goto LABEL_15;
  }

  if (+[AMSDevice deviceIsRealityDevice])
  {
    v3 = &AMSMediaTaskPlatformReality;
    goto LABEL_15;
  }

  v6 = +[AMSLogConfig sharedMediaConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    logKey = [(AMSMediaTaskURLBuilder *)self logKey];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = logKey;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown device platform", &v11, 0x16u);
  }

  v4 = 0;
LABEL_16:

  return v4;
}

- (AMSMediaTaskURLBuilder)initWithConfig:(id)config clientVersion:(id)version bag:(id)bag
{
  configCopy = config;
  versionCopy = version;
  bagCopy = bag;
  v17.receiver = self;
  v17.super_class = AMSMediaTaskURLBuilder;
  v12 = [(AMSMediaTaskURLBuilder *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, config);
    objc_storeStrong(&v13->_clientVersion, version);
    objc_storeStrong(&v13->_bag, bag);
    v14 = AMSGenerateLogCorrelationKey();
    logKey = v13->_logKey;
    v13->_logKey = v14;
  }

  return v13;
}

void __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bag];
  v3 = [v2 stringForKey:@"language"];
  v4 = [v3 valuePromise];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke_3;
  v7[3] = &unk_1E73B4DF8;
  v8 = *(a1 + 40);
  [v4 addSuccessBlock:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke_4;
  v5[3] = &unk_1E73B34B8;
  v6 = *(a1 + 40);
  [v4 addErrorBlock:v5];
}

void __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[AMSDevice language];
  [v1 finishWithResult:v2];
}

- (id)_languagePromiseAppDistribution
{
  v2 = [(AMSMediaTaskURLBuilder *)self bag];
  v3 = [v2 stringForKey:@"app-distribution-language-tag"];
  valuePromise = [v3 valuePromise];
  v5 = [valuePromise continueWithBlock:&__block_literal_global_83];

  return v5;
}

id __57__AMSMediaTaskURLBuilder__languagePromiseAppDistribution__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [AMSPromise promiseWithResult:a2];
  }

  else
  {
    v3 = +[AMSDevice language];
    v2 = [AMSPromise promiseWithResult:v3];
  }

  return v2;
}

- (id)_queryItemsWithLanguage:(id)language
{
  v55 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = languageCopy;
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:languageCopy];
  [v5 addObject:v6];

  config = [(AMSMediaTaskURLBuilder *)self config];
  includePlatform = [config includePlatform];

  if (includePlatform)
  {
    _devicePlatform = [(AMSMediaTaskURLBuilder *)self _devicePlatform];
    if (_devicePlatform)
    {
      v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:_devicePlatform];
      [v5 addObject:v10];
    }

    additionalPlatforms = [(AMSMediaTaskURLBuilder *)self additionalPlatforms];
    v12 = [additionalPlatforms componentsJoinedByString:{@", "}];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"additionalPlatforms" value:v12];
      [v5 addObject:v13];
    }
  }

  includedResultKeys = [(AMSMediaTaskURLBuilder *)self includedResultKeys];

  if (includedResultKeys)
  {
    if ([(AMSMediaTaskURLBuilder *)self charts]|| ([(AMSMediaTaskURLBuilder *)self searchTerm], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      config2 = [(AMSMediaTaskURLBuilder *)self config];
      typeString = [config2 typeString];
      v18 = [@"include[{type}]" stringByReplacingOccurrencesOfString:@"{type}" withString:typeString];
    }

    else
    {
      v18 = @"include";
    }

    includedResultKeys2 = [(AMSMediaTaskURLBuilder *)self includedResultKeys];
    v20 = [includedResultKeys2 componentsJoinedByString:{@", "}];

    v21 = [MEMORY[0x1E696AF60] queryItemWithName:v18 value:v20];
    [v5 addObject:v21];
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(AMSMediaTaskURLBuilder *)self filters];
  v22 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v50;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v49 + 1) + 8 * i);
        v27 = [@"filter[{filter}]" stringByReplacingOccurrencesOfString:@"{filter}" withString:v26];
        filters = [(AMSMediaTaskURLBuilder *)self filters];
        v29 = [filters objectForKeyedSubscript:v26];

        v30 = [MEMORY[0x1E696AF60] queryItemWithName:v27 value:v29];
        [v5 addObject:v30];
      }

      v23 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v23);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  additionalQueryParams = [(AMSMediaTaskURLBuilder *)self additionalQueryParams];
  v32 = [additionalQueryParams countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(additionalQueryParams);
        }

        v36 = *(*(&v45 + 1) + 8 * j);
        v37 = MEMORY[0x1E696AF60];
        additionalQueryParams2 = [(AMSMediaTaskURLBuilder *)self additionalQueryParams];
        v39 = [additionalQueryParams2 objectForKeyedSubscript:v36];
        v40 = [v37 queryItemWithName:v36 value:v39];
        [v5 addObject:v40];
      }

      v33 = [additionalQueryParams countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v33);
  }

  v41 = [v5 sortedArrayUsingComparator:&__block_literal_global_95];

  return v41;
}

uint64_t __50__AMSMediaTaskURLBuilder__queryItemsWithLanguage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_addBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  bundleIdentifiers = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
  v5 = [bundleIdentifiers count];

  if (v5)
  {
    bundleIdentifiers2 = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
    v7 = [bundleIdentifiers2 sortedArrayUsingSelector:sel_compare_];

    v8 = [v7 componentsJoinedByString:{@", "}];
    v9 = [@"filter[{filter}]" stringByReplacingOccurrencesOfString:@"{filter}" withString:@"bundleId"];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:v9 value:v8];
    queryItems = [identifiersCopy queryItems];
    v12 = [queryItems arrayByAddingObject:v10];
    [identifiersCopy setQueryItems:v12];
  }
}

- (void)_addCharts:(id)charts
{
  chartsCopy = charts;
  if ([(AMSMediaTaskURLBuilder *)self charts])
  {
    v4 = MEMORY[0x1E696AF60];
    config = [(AMSMediaTaskURLBuilder *)self config];
    typeString = [config typeString];
    v7 = [v4 queryItemWithName:@"types" value:typeString];

    queryItems = [chartsCopy queryItems];
    v9 = [queryItems arrayByAddingObject:v7];
    [chartsCopy setQueryItems:v9];
  }
}

- (void)_addItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  itemIdentifiers = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
  v5 = [itemIdentifiers count];

  itemIdentifiers2 = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
  v7 = itemIdentifiers2;
  if (v5 == 1)
  {
    firstObject = [itemIdentifiers2 firstObject];

    path = [identifiersCopy path];
    v10 = [path stringByAppendingPathComponent:firstObject];
    [identifiersCopy setPath:v10];
  }

  else
  {
    v11 = [itemIdentifiers2 count];

    if (v11 < 2)
    {
      goto LABEL_6;
    }

    itemIdentifiers3 = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
    firstObject = [itemIdentifiers3 sortedArrayUsingSelector:sel_compare_];

    path = [firstObject componentsJoinedByString:{@", "}];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"ids" value:path];
    queryItems = [identifiersCopy queryItems];
    v14 = [queryItems arrayByAddingObject:v10];
    [identifiersCopy setQueryItems:v14];
  }

LABEL_6:
}

- (void)_addSearchTerm:(id)term
{
  v16[2] = *MEMORY[0x1E69E9840];
  termCopy = term;
  searchTerm = [(AMSMediaTaskURLBuilder *)self searchTerm];

  if (searchTerm)
  {
    v6 = MEMORY[0x1E696AF60];
    searchTerm2 = [(AMSMediaTaskURLBuilder *)self searchTerm];
    v8 = [v6 queryItemWithName:@"term" value:searchTerm2];

    v9 = MEMORY[0x1E696AF60];
    config = [(AMSMediaTaskURLBuilder *)self config];
    typeString = [config typeString];
    v12 = [v9 queryItemWithName:@"types" value:typeString];

    queryItems = [termCopy queryItems];
    v16[0] = v8;
    v16[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v15 = [queryItems arrayByAddingObjectsFromArray:v14];
    [termCopy setQueryItems:v15];
  }
}

@end