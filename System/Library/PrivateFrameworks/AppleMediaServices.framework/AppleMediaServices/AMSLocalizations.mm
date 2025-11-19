@interface AMSLocalizations
+ (id)localizedStringForKey:(id)a3 bundle:(id)a4 table:(id)a5 bag:(id)a6;
+ (id)localizedStringForKey:(id)a3 bundle:(id)a4 table:(id)a5 languageCode:(id)a6;
+ (id)localizedStringPromiseForKey:(id)a3 bundle:(id)a4 table:(id)a5 bag:(id)a6;
+ (id)localizedStringPromiseForKey:(id)a3 bundle:(id)a4 table:(id)a5 languageCode:(id)a6;
@end

@implementation AMSLocalizations

+ (id)localizedStringForKey:(id)a3 bundle:(id)a4 table:(id)a5 bag:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 localizedStringPromiseForKey:v10 bundle:v11 table:v12 bag:v13];
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

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = AMSLogableError(v16);
      *buf = 138544898;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v10;
      v31 = 2114;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = v21;
      v22 = v21;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Localized string not found (key: %{public}@, bundle: %{public}@, table: %{public}@, bag: %{public}@, error: %{public}@)", buf, 0x48u);
    }
  }

  return v15;
}

+ (id)localizedStringPromiseForKey:(id)a3 bundle:(id)a4 table:(id)a5 bag:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    v12 = [a6 stringForKey:@"language-tag"];
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
  v14 = v9;
  v28 = v14;
  v15 = v10;
  v29 = v15;
  v16 = v11;
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

+ (id)localizedStringForKey:(id)a3 bundle:(id)a4 table:(id)a5 languageCode:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v13 = MEMORY[0x1E696AAE8];
    v14 = [v10 localizations];
    v22[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v15];
    v17 = [v16 firstObject];

    v18 = [v10 localizedStringForKey:v9 value:0 table:v11 localization:v17];

    if (v18 != v9 && v18 != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [v10 localizedStringForKey:v9 value:0 table:v11];

  v18 = v20;
LABEL_9:

  return v18;
}

+ (id)localizedStringPromiseForKey:(id)a3 bundle:(id)a4 table:(id)a5 languageCode:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [AMSMutableLazyPromise alloc];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__AMSLocalizations_localizedStringPromiseForKey_bundle_table_languageCode___block_invoke;
  v21[3] = &unk_1E73B8828;
  v25 = v13;
  v26 = a1;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
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