@interface AMSLocalizations
+ (id)localizedStringForKey:(id)key bundle:(id)bundle table:(id)table bag:(id)bag;
+ (id)localizedStringForKey:(id)key bundle:(id)bundle table:(id)table languageCode:(id)code;
+ (id)localizedStringPromiseForKey:(id)key bundle:(id)bundle table:(id)table bag:(id)bag;
+ (id)localizedStringPromiseForKey:(id)key bundle:(id)bundle table:(id)table languageCode:(id)code;
@end

@implementation AMSLocalizations

+ (id)localizedStringForKey:(id)key bundle:(id)bundle table:(id)table bag:(id)bag
{
  v39 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bundleCopy = bundle;
  tableCopy = table;
  bagCopy = bag;
  v14 = [self localizedStringPromiseForKey:keyCopy bundle:bundleCopy table:tableCopy bag:bagCopy];
  v24 = 0;
  v15 = [v14 resultWithTimeout:&v24 error:3.0];
  v16 = v24;

  if (!v15)
  {
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = AMSLogableError(v16);
      *buf = 138544898;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = keyCopy;
      v31 = 2114;
      v32 = bundleCopy;
      v33 = 2114;
      v34 = tableCopy;
      v35 = 2114;
      v36 = bagCopy;
      v37 = 2114;
      v38 = v21;
      v22 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Localized string not found (key: %{public}@, bundle: %{public}@, table: %{public}@, bag: %{public}@, error: %{public}@)", buf, 0x48u);
    }
  }

  return v15;
}

+ (id)localizedStringPromiseForKey:(id)key bundle:(id)bundle table:(id)table bag:(id)bag
{
  keyCopy = key;
  bundleCopy = bundle;
  tableCopy = table;
  if (bag)
  {
    v12 = [bag stringForKey:@"language-tag"];
    [v12 valuePromise];
  }

  else
  {
    v12 = AMSError(7, @"Localizations Failure", @"Bag is missing", 0);
    [AMSPromise promiseWithError:v12];
  }
  v13 = ;

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__AMSLocalizations_localizedStringPromiseForKey_bundle_table_bag___block_invoke;
  v27[3] = &unk_1E73B87D8;
  v14 = keyCopy;
  v28 = v14;
  v15 = bundleCopy;
  v29 = v15;
  v16 = tableCopy;
  v30 = v16;
  v17 = [v13 thenWithBlock:v27];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__AMSLocalizations_localizedStringPromiseForKey_bundle_table_bag___block_invoke_2;
  v23[3] = &unk_1E73B8800;
  v24 = v15;
  v25 = v14;
  v26 = v16;
  v18 = v16;
  v19 = v14;
  v20 = v15;
  v21 = [v17 catchWithBlock:v23];

  return v21;
}

id __66__AMSLocalizations_localizedStringPromiseForKey_bundle_table_bag___block_invoke(void *a1, uint64_t a2)
{
  v2 = [AMSLocalizations localizedStringForKey:a1[4] bundle:a1[5] table:a1[6] languageCode:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

id __66__AMSLocalizations_localizedStringPromiseForKey_bundle_table_bag___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedStringForKey:*(a1 + 40) value:0 table:*(a1 + 48)];
  if (v2)
  {
    v3 = [AMSPromise promiseWithResult:v2];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Localized string %@ not found in %@", *(a1 + 40), *(a1 + 48)];
    v5 = AMSError(7, @"Localizations Failure", v4, 0);
    v3 = [AMSPromise promiseWithError:v5];
  }

  return v3;
}

+ (id)localizedStringForKey:(id)key bundle:(id)bundle table:(id)table languageCode:(id)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  bundleCopy = bundle;
  tableCopy = table;
  codeCopy = code;
  if (codeCopy)
  {
    v13 = MEMORY[0x1E696AAE8];
    localizations = [bundleCopy localizations];
    v22[0] = codeCopy;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [v13 preferredLocalizationsFromArray:localizations forPreferences:v15];
    firstObject = [v16 firstObject];

    v18 = [bundleCopy localizedStringForKey:keyCopy value:0 table:tableCopy localization:firstObject];

    if (v18 != keyCopy && v18 != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [bundleCopy localizedStringForKey:keyCopy value:0 table:tableCopy];

  v18 = v20;
LABEL_9:

  return v18;
}

+ (id)localizedStringPromiseForKey:(id)key bundle:(id)bundle table:(id)table languageCode:(id)code
{
  keyCopy = key;
  bundleCopy = bundle;
  tableCopy = table;
  codeCopy = code;
  v14 = [AMSMutableLazyPromise alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__AMSLocalizations_localizedStringPromiseForKey_bundle_table_languageCode___block_invoke;
  v21[3] = &unk_1E73B8828;
  v25 = codeCopy;
  selfCopy = self;
  v22 = keyCopy;
  v23 = bundleCopy;
  v24 = tableCopy;
  v15 = codeCopy;
  v16 = tableCopy;
  v17 = bundleCopy;
  v18 = keyCopy;
  v19 = [(AMSMutableLazyPromise *)v14 initWithBlock:v21];

  return v19;
}

void __75__AMSLocalizations_localizedStringPromiseForKey_bundle_table_languageCode___block_invoke(void *a1, void *a2)
{
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = [v2 localizedStringForKey:v4 bundle:v5 table:v6 languageCode:v3];
  [v7 finishWithResult:v8];
}

@end