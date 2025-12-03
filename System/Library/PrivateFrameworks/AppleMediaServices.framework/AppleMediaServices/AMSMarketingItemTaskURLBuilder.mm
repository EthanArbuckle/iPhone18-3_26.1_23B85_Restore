@interface AMSMarketingItemTaskURLBuilder
+ (AMSBagKeySet)bagKeySet;
- (id)_additionalQueryItems;
- (id)_formattedURLPathWithBag:(id)bag;
- (id)_languageTagFromBag:(id)bag fallback:(id)fallback;
- (id)_realmOverridesFromBag:(id)bag;
- (id)_stringForKey:(id)key fromBag:(id)bag;
- (id)urlWithServiceType:(id)type placement:(id)placement bag:(id)bag hydrateRelatedContents:(BOOL)contents offerHints:(id)hints additionalParameters:(id)parameters;
@end

@implementation AMSMarketingItemTaskURLBuilder

- (id)_additionalQueryItems
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[AMSMediaURLBuilderUtility devicePlatform];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"platform" value:v3];
    [v2 addObject:v4];
  }

  return v2;
}

- (id)urlWithServiceType:(id)type placement:(id)placement bag:(id)bag hydrateRelatedContents:(BOOL)contents offerHints:(id)hints additionalParameters:(id)parameters
{
  contentsCopy = contents;
  typeCopy = type;
  placementCopy = placement;
  bagCopy = bag;
  hintsCopy = hints;
  parametersCopy = parameters;
  uppercaseString = [typeCopy uppercaseString];
  v19 = [(AMSMarketingItemTaskURLBuilder *)self _realmOverridesFromBag:bagCopy];
  v20 = [v19 valueForKey:uppercaseString];

  v21 = [(AMSMarketingItemTaskURLBuilder *)self _formattedURLPathWithBag:bagCopy];
  v22 = v21;
  if (v20 && v21)
  {
    v38 = hintsCopy;
    v36 = parametersCopy;
    v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:parametersCopy];
    [v23 setObject:@"priceDiffsForDisplay" forKeyedSubscript:@"extend[marketing-items]"];
    v24 = +[AMSDevice language];
    v25 = [(AMSMarketingItemTaskURLBuilder *)self _languageTagFromBag:bagCopy fallback:v24];
    [v23 setObject:v25 forKeyedSubscript:@"l"];

    [v23 setObject:@"metrics" forKeyedSubscript:@"meta[marketing-items]"];
    [v23 setObject:placementCopy forKeyedSubscript:@"placement"];
    [v23 setObject:typeCopy forKeyedSubscript:@"serviceType"];
    if (contentsCopy)
    {
      [v23 setObject:@"contents" forKeyedSubscript:@"include"];
    }

    v37 = typeCopy;
    if (v38)
    {
      [v23 setObject:v38 forKeyedSubscript:@"offerHints"];
    }

    v26 = MEMORY[0x1E695DF70];
    v27 = MEMORY[0x1E696AF60];
    v28 = [v23 copy];
    v29 = [v27 queryItemsFromDictionary:v28];
    v30 = [v26 arrayWithArray:v29];

    _additionalQueryItems = [(AMSMarketingItemTaskURLBuilder *)self _additionalQueryItems];
    [v30 addObjectsFromArray:_additionalQueryItems];

    [v30 sortUsingComparator:&__block_literal_global_79];
    v32 = objc_opt_new();
    [v32 setHost:v20];
    [v32 setPath:v22];
    [v32 setQueryItems:v30];
    [v32 setScheme:@"https"];
    v33 = [v32 URL];
    v34 = [AMSPromise promiseWithResult:v33];

    hintsCopy = v38;
    parametersCopy = v36;
    typeCopy = v37;
  }

  else
  {
    v23 = AMSError(204, @"Could not build marketing item URL", @"Bag is missing URL components", 0);
    v34 = [AMSPromise promiseWithError:v23];
  }

  return v34;
}

uint64_t __122__AMSMarketingItemTaskURLBuilder_urlWithServiceType_placement_bag_hydrateRelatedContents_offerHints_additionalParameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_languageTagFromBag:(id)bag fallback:(id)fallback
{
  v21 = *MEMORY[0x1E69E9840];
  fallbackCopy = fallback;
  v7 = [(AMSMarketingItemTaskURLBuilder *)self _stringForKey:@"language-tag" fromBag:bag];
  v8 = v7;
  if (!v7)
  {
    v9 = +[AMSLogConfig sharedMarketingItemConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = fallbackCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Retrieving language tag from bag failed, using fallback: %{public}@", &v15, 0x20u);
    }

    v8 = fallbackCopy;
  }

  v13 = v8;

  return v13;
}

- (id)_realmOverridesFromBag:(id)bag
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [bag dictionaryForKey:@"marketing-item-media-api-realm-mappings"];
  v16 = 0;
  v4 = [v3 valueWithError:&v16];
  v5 = v16;

  if (v5)
  {
    v6 = +[AMSLogConfig sharedMarketingItemConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error retrieving realm mappings.", buf, 0x16u);
    }

    v10 = +[AMSLogConfig sharedMarketingItemConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v14 = AMSLogableError(v5);
      *buf = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }
  }

  return v4;
}

- (id)_stringForKey:(id)key fromBag:(id)bag
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [bag stringForKey:key];
  v13 = 0;
  v5 = [v4 valueWithError:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedMarketingItemConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSLogableError(v6);
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }
  }

  return v5;
}

- (id)_formattedURLPathWithBag:(id)bag
{
  bagCopy = bag;
  v5 = [(AMSMarketingItemTaskURLBuilder *)self _urlPathFromBag:bagCopy];
  v6 = [(AMSMarketingItemTaskURLBuilder *)self _countryCodeFromBag:bagCopy];

  v7 = 0;
  if (v5 && v6)
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:@"{cc}" withString:v6];
  }

  return v7;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end