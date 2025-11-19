@interface AMSMediaTaskURLBuilder
- (AMSMediaTaskURLBuilder)initWithConfig:(id)a3 clientVersion:(id)a4 bag:(id)a5;
- (id)_devicePlatform;
- (id)_hostPromise;
- (id)_languagePromise;
- (id)_languagePromiseAppDistribution;
- (id)_languagePromiseForType;
- (id)_pathPromise;
- (id)_queryItemsWithLanguage:(id)a3;
- (id)_verifyConfiguration;
- (id)build;
- (void)_addBundleIdentifiers:(id)a3;
- (void)_addCharts:(id)a3;
- (void)_addItemIdentifiers:(id)a3;
- (void)_addSearchTerm:(id)a3;
@end

@implementation AMSMediaTaskURLBuilder

- (id)_languagePromiseForType
{
  v3 = [(AMSMediaTaskURLBuilder *)self config];
  v4 = [v3 type];

  if (v4 == 7)
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
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.appstorecomponentsd"];

  if (v5)
  {
    v6 = objc_alloc_init(AMSMutablePromise);
    v7 = [(AMSMediaTaskURLBuilder *)self bag];
    v8 = [v7 stringForKey:@"language-tag"];
    v9 = [v8 valuePromise];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke;
    v17[3] = &unk_1E73B4DF8;
    v10 = v6;
    v18 = v10;
    [v9 addSuccessBlock:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__AMSMediaTaskURLBuilder__languagePromise__block_invoke_2;
    v15[3] = &unk_1E73B32F0;
    v15[4] = self;
    v11 = v10;
    v16 = v11;
    [v9 addErrorBlock:v15];
    v12 = v16;
    v13 = v11;
  }

  else
  {
    v9 = +[AMSDevice language];
    v13 = [AMSPromise promiseWithResult:v9];
  }

  return v13;
}

- (id)_pathPromise
{
  v3 = [(AMSMediaTaskURLBuilder *)self appDistributionCountryCodeOverride];
  if (v3 && (v4 = v3, -[AMSMediaTaskURLBuilder config](self, "config"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v4, v6 == 7))
  {
    v7 = [(AMSMediaTaskURLBuilder *)self appDistributionCountryCodeOverride];
    v8 = [AMSPromise promiseWithResult:v7];
  }

  else
  {
    v7 = [(AMSMediaTaskURLBuilder *)self bag];
    v9 = [v7 stringForKey:@"countryCode"];
    v8 = [v9 valuePromise];
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__AMSMediaTaskURLBuilder__pathPromise__block_invoke;
  v12[3] = &unk_1E73B4E20;
  v12[4] = self;
  v10 = [v8 thenWithBlock:v12];

  return v10;
}

- (id)build
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [(AMSMediaTaskURLBuilder *)self _verifyConfiguration];
  if (v3)
  {
    v4 = [AMSPromise promiseWithError:v3];
  }

  else
  {
    v5 = [(AMSMediaTaskURLBuilder *)self _hostPromise];
    v6 = [(AMSMediaTaskURLBuilder *)self _languagePromiseForType];
    v7 = [(AMSMediaTaskURLBuilder *)self _pathPromise];
    v12[0] = v5;
    v12[1] = v6;
    v12[2] = v7;
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
  v3 = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
  v4 = [v3 count];

  v5 = [(AMSMediaTaskURLBuilder *)self charts];
  v6 = 1;
  if (v4)
  {
    v6 = 2;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4 != 0;
  }

  v8 = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
  v9 = [v8 count];

  if (v9)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = [(AMSMediaTaskURLBuilder *)self searchTerm];

  if (v11)
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

  v14 = [(AMSMediaTaskURLBuilder *)self config];
  if ([v14 type] == 3)
  {
    v15 = 1;
  }

  else
  {
    v17 = [(AMSMediaTaskURLBuilder *)self config];
    v15 = [v17 type] == 4;
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
    v21 = [(AMSMediaTaskURLBuilder *)self filters];
    v22 = [v21 count];

    if (!v22)
    {
      v16 = @"Bundle identifiers, charts, filters, item identifiers, or search term must be specified.";
      goto LABEL_20;
    }
  }

  v23 = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
  if (![v23 count])
  {
    goto LABEL_38;
  }

  v24 = [(AMSMediaTaskURLBuilder *)self config];
  if (![v24 type])
  {
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v25 = [(AMSMediaTaskURLBuilder *)self config];
  if ([v25 type] == 7)
  {
LABEL_36:

    goto LABEL_37;
  }

  v26 = [(AMSMediaTaskURLBuilder *)self config];
  if ([v26 type] == 1)
  {

    goto LABEL_36;
  }

  v27 = [(AMSMediaTaskURLBuilder *)self config];
  v28 = [v27 type];

  if (v28 != 2)
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
  v3 = [(AMSMediaTaskURLBuilder *)self config];
  v4 = [v3 hostBagKey];

  v5 = [(AMSMediaTaskURLBuilder *)self bag];
  v6 = [v5 URLForKey:v4];

  v7 = [v6 valuePromise];

  return v7;
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

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(AMSMediaTaskURLBuilder *)self logKey];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown device platform", &v11, 0x16u);
  }

  v4 = 0;
LABEL_16:

  return v4;
}

- (AMSMediaTaskURLBuilder)initWithConfig:(id)a3 clientVersion:(id)a4 bag:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AMSMediaTaskURLBuilder;
  v12 = [(AMSMediaTaskURLBuilder *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_config, a3);
    objc_storeStrong(&v13->_clientVersion, a4);
    objc_storeStrong(&v13->_bag, a5);
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
  v4 = [v3 valuePromise];
  v5 = [v4 continueWithBlock:&__block_literal_global_83];

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

- (id)_queryItemsWithLanguage:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = v4;
  v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"l" value:v4];
  [v5 addObject:v6];

  v7 = [(AMSMediaTaskURLBuilder *)self config];
  v8 = [v7 includePlatform];

  if (v8)
  {
    v9 = [(AMSMediaTaskURLBuilder *)self _devicePlatform];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"platform" value:v9];
      [v5 addObject:v10];
    }

    v11 = [(AMSMediaTaskURLBuilder *)self additionalPlatforms];
    v12 = [v11 componentsJoinedByString:{@", "}];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"additionalPlatforms" value:v12];
      [v5 addObject:v13];
    }
  }

  v14 = [(AMSMediaTaskURLBuilder *)self includedResultKeys];

  if (v14)
  {
    if ([(AMSMediaTaskURLBuilder *)self charts]|| ([(AMSMediaTaskURLBuilder *)self searchTerm], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [(AMSMediaTaskURLBuilder *)self config];
      v17 = [v16 typeString];
      v18 = [@"include[{type}]" stringByReplacingOccurrencesOfString:@"{type}" withString:v17];
    }

    else
    {
      v18 = @"include";
    }

    v19 = [(AMSMediaTaskURLBuilder *)self includedResultKeys];
    v20 = [v19 componentsJoinedByString:{@", "}];

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
        v28 = [(AMSMediaTaskURLBuilder *)self filters];
        v29 = [v28 objectForKeyedSubscript:v26];

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
  v31 = [(AMSMediaTaskURLBuilder *)self additionalQueryParams];
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v45 + 1) + 8 * j);
        v37 = MEMORY[0x1E696AF60];
        v38 = [(AMSMediaTaskURLBuilder *)self additionalQueryParams];
        v39 = [v38 objectForKeyedSubscript:v36];
        v40 = [v37 queryItemWithName:v36 value:v39];
        [v5 addObject:v40];
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v53 count:16];
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

- (void)_addBundleIdentifiers:(id)a3
{
  v13 = a3;
  v4 = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(AMSMediaTaskURLBuilder *)self bundleIdentifiers];
    v7 = [v6 sortedArrayUsingSelector:sel_compare_];

    v8 = [v7 componentsJoinedByString:{@", "}];
    v9 = [@"filter[{filter}]" stringByReplacingOccurrencesOfString:@"{filter}" withString:@"bundleId"];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:v9 value:v8];
    v11 = [v13 queryItems];
    v12 = [v11 arrayByAddingObject:v10];
    [v13 setQueryItems:v12];
  }
}

- (void)_addCharts:(id)a3
{
  v10 = a3;
  if ([(AMSMediaTaskURLBuilder *)self charts])
  {
    v4 = MEMORY[0x1E696AF60];
    v5 = [(AMSMediaTaskURLBuilder *)self config];
    v6 = [v5 typeString];
    v7 = [v4 queryItemWithName:@"types" value:v6];

    v8 = [v10 queryItems];
    v9 = [v8 arrayByAddingObject:v7];
    [v10 setQueryItems:v9];
  }
}

- (void)_addItemIdentifiers:(id)a3
{
  v15 = a3;
  v4 = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
  v5 = [v4 count];

  v6 = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [v6 firstObject];

    v9 = [v15 path];
    v10 = [v9 stringByAppendingPathComponent:v8];
    [v15 setPath:v10];
  }

  else
  {
    v11 = [v6 count];

    if (v11 < 2)
    {
      goto LABEL_6;
    }

    v12 = [(AMSMediaTaskURLBuilder *)self itemIdentifiers];
    v8 = [v12 sortedArrayUsingSelector:sel_compare_];

    v9 = [v8 componentsJoinedByString:{@", "}];
    v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"ids" value:v9];
    v13 = [v15 queryItems];
    v14 = [v13 arrayByAddingObject:v10];
    [v15 setQueryItems:v14];
  }

LABEL_6:
}

- (void)_addSearchTerm:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSMediaTaskURLBuilder *)self searchTerm];

  if (v5)
  {
    v6 = MEMORY[0x1E696AF60];
    v7 = [(AMSMediaTaskURLBuilder *)self searchTerm];
    v8 = [v6 queryItemWithName:@"term" value:v7];

    v9 = MEMORY[0x1E696AF60];
    v10 = [(AMSMediaTaskURLBuilder *)self config];
    v11 = [v10 typeString];
    v12 = [v9 queryItemWithName:@"types" value:v11];

    v13 = [v4 queryItems];
    v16[0] = v8;
    v16[1] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v15 = [v13 arrayByAddingObjectsFromArray:v14];
    [v4 setQueryItems:v15];
  }
}

@end