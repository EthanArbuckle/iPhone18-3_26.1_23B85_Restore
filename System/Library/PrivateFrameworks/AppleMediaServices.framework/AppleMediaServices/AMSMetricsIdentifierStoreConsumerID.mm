@interface AMSMetricsIdentifierStoreConsumerID
+ (id)_accountForAltDSID:(id)a3;
+ (id)_applyExpiryForKey:(id)a3 inNamespace:(id)a4 accountID:(id)a5 bag:(id)a6 at:(id)a7 consumerIDResetInterval:(double)a8;
+ (id)_identifierInfoForKey:(id)a3 storeInfo:(id)a4 inDatabase:(id)a5 setValue:(id)a6 needsToSync:(BOOL *)a7 serverProvidedAt:(id)a8 resetInterval:(double)a9 error:(id *)a10;
+ (id)_identifierStoreInfoForKeys:(id)a3 inDatabase:(id)a4 date:(id)a5 started:(id)a6 updateStarted:(BOOL)a7 needsToSync:(BOOL *)a8 account:(id)a9 clientInfo:(id)a10 domain:(id)a11 resetInterval:(double)a12 error:(id *)a13;
+ (id)_promiseOfSunsetIdentifier:(id)a3 withStartedDate:(id)a4 lastSyncDate:(id)a5 forKey:(id)a6 database:(id)a7 account:(id)a8 clientInfo:(id)a9 domain:(id)a10 resetInterval:(double)a11 consumerIDResetInterval:(double)a12;
+ (id)_removeStoreForNamespace:(id)a3 accountID:(id)a4 bag:(id)a5;
+ (id)_setConsumerIdentifier:(id)a3 forKey:(id)a4 inNamespace:(id)a5 accountID:(id)a6 bag:(id)a7 at:(id)a8 serverProvidedAt:(id)a9 skipSync:(BOOL)a10;
+ (id)_setIdentifier:(id)a3 withStartedDate:(id)a4 forKey:(id)a5 database:(id)a6 account:(id)a7 clientInfo:(id)a8 domain:(id)a9 resetInterval:(double)a10 serverProvidedAt:(id)a11 skipSync:(BOOL)a12;
+ (id)_sunsetIdentifierInfoForKey:(id)a3 storeInfo:(id)a4 inDatabase:(id)a5 needsToSync:(BOOL *)a6 resetInterval:(double)a7 consumerIDResetInterval:(double)a8 error:(id *)a9;
@end

@implementation AMSMetricsIdentifierStoreConsumerID

+ (id)_setConsumerIdentifier:(id)a3 forKey:(id)a4 inNamespace:(id)a5 accountID:(id)a6 bag:(id)a7 at:(id)a8 serverProvidedAt:(id)a9 skipSync:(BOOL)a10
{
  v48 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [a6 altDSID];
  v23 = [AMSMetricsIdentifierStoreConsumerID _accountForAltDSID:v22];

  if (v23)
  {
    v24 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v23 bagNamespace:v18 bag:v19];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __124__AMSMetricsIdentifierStoreConsumerID__setConsumerIdentifier_forKey_inNamespace_accountID_bag_at_serverProvidedAt_skipSync___block_invoke;
    v33[3] = &unk_1E73B9F00;
    v40 = a1;
    v34 = v18;
    v35 = v16;
    v36 = v20;
    v37 = v17;
    v38 = v23;
    v39 = v21;
    v41 = a10;
    v25 = [v24 continueWithBlock:v33];

    v26 = v34;
  }

  else
  {
    v32 = v16;
    v27 = +[AMSLogConfig sharedMetricsConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      *buf = 138543874;
      v43 = v29;
      v44 = 2114;
      v45 = v30;
      v46 = 2114;
      v47 = v18;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Metrics Identifier Store not updated for namespace %{public}@ because we can't find the account", buf, 0x20u);
    }

    v26 = AMSError(7, @"No account provided", 0, 0);
    v24 = [AMSPromise promiseWithError:v26];
    v16 = v32;
  }

  return v24;
}

id __124__AMSMetricsIdentifierStoreConsumerID__setConsumerIdentifier_forKey_inNamespace_accountID_bag_at_serverProvidedAt_skipSync___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedMetricsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = *(a1 + 32);
      v12 = AMSLogableError(v6);
      *buf = 138544130;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics Identifier Store not found for namespace %{public}@; error: %{public}@", buf, 0x2Au);
    }

    v13 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v23 = *(a1 + 80);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = +[AMSMetricsIdentifierStore _database];
    v18 = *(a1 + 64);
    v19 = [v5 clientInfo];
    v20 = [v5 domain];
    [v5 resetInterval];
    LOBYTE(v22) = *(a1 + 88);
    v13 = [v23 _setIdentifier:v14 withStartedDate:v15 forKey:v16 database:v17 account:v18 clientInfo:v19 domain:v20 resetInterval:*(a1 + 72) serverProvidedAt:v22 skipSync:?];
  }

  return v13;
}

+ (id)_removeStoreForNamespace:(id)a3 accountID:(id)a4 bag:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a4 altDSID];
  v11 = [AMSMetricsIdentifierStoreConsumerID _accountForAltDSID:v10];

  if (v11)
  {
    v12 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v11 bagNamespace:v8 bag:v9];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __78__AMSMetricsIdentifierStoreConsumerID__removeStoreForNamespace_accountID_bag___block_invoke;
    v20[3] = &unk_1E73B9F28;
    v23 = a1;
    v21 = v8;
    v22 = v11;
    v13 = [v12 continueWithBlock:v20];

    v14 = v21;
  }

  else
  {
    v15 = +[AMSLogConfig sharedMetricsConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v18;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Metrics Identifier Store not updated for namespace %{public}@ because we can't find the account", buf, 0x20u);
    }

    v14 = AMSError(7, @"No account provided", 0, 0);
    v12 = [AMSPromise promiseWithError:v14];
  }

  return v12;
}

id __78__AMSMetricsIdentifierStoreConsumerID__removeStoreForNamespace_accountID_bag___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedMetricsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = *(a1 + 32);
      v12 = AMSLogableError(v6);
      v19 = 138544130;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics Identifier Store not found for namespace %{public}@; error: %{public}@", &v19, 0x2Au);
    }

    v13 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = [v5 domain];
    v16 = [v5 clientInfo];
    v17 = [AMSMetricsIdentifierStore _generateStoreKeyForAccount:v14 domain:v15 clientInfo:v16];

    v13 = [AMSMetricsIdentifierStore removeIdentifiersForStore:v17];
  }

  return v13;
}

+ (id)_applyExpiryForKey:(id)a3 inNamespace:(id)a4 accountID:(id)a5 bag:(id)a6 at:(id)a7 consumerIDResetInterval:(double)a8
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v16 altDSID];
  v20 = [AMSMetricsIdentifierStoreConsumerID _accountForAltDSID:v19];

  if (v20)
  {
    v21 = [AMSMetricsIdentifierStore identifierStoreWithAccount:v20 bagNamespace:v15 bag:v17];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __111__AMSMetricsIdentifierStoreConsumerID__applyExpiryForKey_inNamespace_accountID_bag_at_consumerIDResetInterval___block_invoke;
    v35[3] = &unk_1E73B9F50;
    v40 = a1;
    v36 = v15;
    v37 = v18;
    v38 = v14;
    v39 = v20;
    v41 = a8;
    v22 = [v21 continueWithBlock:v35];

    v23 = v36;
  }

  else
  {
    v34 = v14;
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metrics Identifier Store not updated for namespace %@", v15];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No Account found for %@", v16];
    v24 = AMSError(107, v23, v33, 0);
    v25 = +[AMSLogConfig sharedMetricsConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      AMSLogKey();
      v28 = v31 = v18;
      AMSLogableError(v24);
      v29 = v32 = v17;
      *buf = 138543874;
      v43 = v27;
      v44 = 2114;
      v45 = v28;
      v46 = 2114;
      v47 = v29;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error: %{public}@", buf, 0x20u);

      v17 = v32;
      v18 = v31;
    }

    v21 = [AMSPromise promiseWithError:v24];

    v14 = v34;
  }

  return v21;
}

id __111__AMSMetricsIdentifierStoreConsumerID__applyExpiryForKey_inNamespace_accountID_bag_at_consumerIDResetInterval___block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedMetricsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = a1[4];
      v12 = AMSLogableError(v6);
      *buf = 138544130;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics Identifier Store not found for namespace %{public}@; error: %{public}@", buf, 0x2Au);
    }

    v13 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v14 = a1[8];
    v15 = a1[5];
    v16 = a1[6];
    v17 = +[AMSMetricsIdentifierStore _database];
    v18 = a1[7];
    v19 = [v5 clientInfo];
    v20 = [v5 domain];
    [v5 resetInterval];
    v13 = [v14 _promiseOfSunsetIdentifier:&stru_1F071BA78 withStartedDate:v15 lastSyncDate:0 forKey:v16 database:v17 account:v18 clientInfo:v19 domain:v20 resetInterval:? consumerIDResetInterval:?];
  }

  return v13;
}

+ (id)_accountForAltDSID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v5 = [v4 ams_iTunesAccountWithAltDSID:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 ams_activeiCloudAccount];
    v9 = [v8 ams_altDSID];
    v10 = [v9 isEqualToString:v3];

    if (v10)
    {
      v11 = [v4 ams_iTunesAccountForAccount:v8];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v8;
      }

      v7 = v13;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)_promiseOfSunsetIdentifier:(id)a3 withStartedDate:(id)a4 lastSyncDate:(id)a5 forKey:(id)a6 database:(id)a7 account:(id)a8 clientInfo:(id)a9 domain:(id)a10 resetInterval:(double)a11 consumerIDResetInterval:(double)a12
{
  v36 = a3;
  v20 = a4;
  v35 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v26 = +[AMSMetricsIdentifierStore _sharedQueue];
  block = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __175__AMSMetricsIdentifierStoreConsumerID__promiseOfSunsetIdentifier_withStartedDate_lastSyncDate_forKey_database_account_clientInfo_domain_resetInterval_consumerIDResetInterval___block_invoke;
  v40 = &unk_1E73B9F78;
  v27 = v23;
  v41 = v27;
  v49 = a1;
  v28 = v21;
  v42 = v28;
  v29 = v22;
  v43 = v29;
  v30 = v20;
  v44 = v30;
  v48 = &v52;
  v31 = v24;
  v45 = v31;
  v32 = v25;
  v50 = a11;
  v51 = a12;
  v46 = v32;
  v47 = 0;
  dispatch_sync(v26, &block);

  if (*(v53 + 24) == 1)
  {
    v33 = [AMSMetricsIdentifierStore _sync:v35];
  }

  _Block_object_dispose(&v52, 8);
  return 0;
}

void __175__AMSMetricsIdentifierStoreConsumerID__promiseOfSunsetIdentifier_withStartedDate_lastSyncDate_forKey_database_account_clientInfo_domain_resetInterval_consumerIDResetInterval___block_invoke(uint64_t a1)
{
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:*(a1 + 32)];
  v3 = *(a1 + 96);
  v69[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 88) + 8);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 104);
  v53 = 0;
  v12 = [v3 _identifierStoreInfoForKeys:v4 inDatabase:v5 date:v6 started:0 updateStarted:0 needsToSync:v7 + 24 account:v11 clientInfo:v8 domain:v9 resetInterval:v10 error:&v53];
  v13 = v53;

  if (v13 || !v12)
  {
    v20 = +[AMSLogConfig sharedMetricsConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v20 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = AMSLogKey();
      v30 = [*(a1 + 64) bundleIdentifier];
      v31 = *(a1 + 72);
      v32 = AMSLogableError(v13);
      *buf = 138544642;
      v56 = v28;
      v57 = 2114;
      v58 = v29;
      v59 = 2112;
      v60 = v2;
      v61 = 2114;
      v62 = v30;
      v63 = 2114;
      v64 = v31;
      v65 = 2114;
      v66 = v32;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier store (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 96);
  v17 = *(*(a1 + 88) + 8);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v52 = 0;
  v20 = [v16 _sunsetIdentifierInfoForKey:v14 storeInfo:v12 inDatabase:v15 needsToSync:v17 + 24 resetInterval:&v52 consumerIDResetInterval:v18 error:v19];
  v21 = v52;
  if (!v21)
  {
    if (v20)
    {
      v33 = [v20 expires];

      if (!v33)
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Metrics Identifier Store failed to expire Consumer ID"];
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No error from the store"];
        v47 = AMSError(0, v45, v46, 0);
        [*(a1 + 80) finishWithError:v47];

        v13 = 0;
        goto LABEL_17;
      }
    }

    v34 = [v20 expires];
    v27 = [v34 dateByAddingTimeInterval:-*(a1 + 104)];

    v35 = *(a1 + 96);
    v54 = *(a1 + 40);
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    v37 = *(a1 + 48);
    v38 = *(a1 + 56);
    v39 = *(*(a1 + 88) + 8);
    v40 = *(a1 + 32);
    v41 = *(a1 + 64);
    v42 = *(a1 + 72);
    v43 = *(a1 + 104);
    v51 = 0;
    v44 = [v35 _identifierStoreInfoForKeys:v36 inDatabase:v37 date:v38 started:v27 updateStarted:1 needsToSync:v39 + 24 account:v43 clientInfo:v40 domain:v41 resetInterval:v42 error:&v51];
    v13 = v51;

    [*(a1 + 80) finishWithResult:v20];
    goto LABEL_16;
  }

  v13 = v21;
  v22 = +[AMSLogConfig sharedMetricsConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  v23 = [v22 OSLogObject];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v49 = objc_opt_class();
    v50 = AMSLogKey();
    v24 = [*(a1 + 64) bundleIdentifier];
    v48 = *(a1 + 72);
    v25 = [*(a1 + 40) name];
    v26 = AMSLogableError(v13);
    *buf = 138544898;
    v56 = v49;
    v57 = 2114;
    v58 = v50;
    v59 = 2112;
    v60 = v2;
    v61 = 2114;
    v62 = v24;
    v63 = 2114;
    v64 = v48;
    v65 = 2114;
    v66 = v25;
    v67 = 2114;
    v68 = v26;
    _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to sunset identifier (dsid: %@, client: %{public}@, domain: %{public}@, key: %{public}@) %{public}@", buf, 0x48u);
  }

  [*(a1 + 80) finishWithError:v13];
LABEL_17:
}

+ (id)_sunsetIdentifierInfoForKey:(id)a3 storeInfo:(id)a4 inDatabase:(id)a5 needsToSync:(BOOL *)a6 resetInterval:(double)a7 consumerIDResetInterval:(double)a8 error:(id *)a9
{
  v16 = a5;
  v17 = [AMSMetricsIdentifierStore _generateIdentifierKey:a3 storeInfo:a4 period:0 resetInterval:a7];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __144__AMSMetricsIdentifierStoreConsumerID__sunsetIdentifierInfoForKey_storeInfo_inDatabase_needsToSync_resetInterval_consumerIDResetInterval_error___block_invoke;
  v20[3] = &__block_descriptor_56_e9_B16__0__8l;
  v20[4] = a1;
  *&v20[5] = a8;
  v20[6] = a6;
  v18 = [v16 identifierForKey:v17 updateMaybe:v20 error:a9];

  return v18;
}

BOOL __144__AMSMetricsIdentifierStoreConsumerID__sunsetIdentifierInfoForKey_storeInfo_inDatabase_needsToSync_resetInterval_consumerIDResetInterval_error___block_invoke(uint64_t a1, id *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = +[AMSLogConfig sharedMetricsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
    v18 = 138544130;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking if we should sunset CID: %{public}@, interval: %{public}@", &v18, 0x2Au);
  }

  v9 = [AMSMetricsIdentifierCore _shouldUpdateDatabaseFor:v3 consumerIDResetInterval:*(a1 + 40)];
  if (v9)
  {
    v10 = +[AMSLogConfig sharedMetricsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v18 = 138543874;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v3;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to sunset CID: %{public}@", &v18, 0x20u);
    }

    v14 = [v3 serverProvidedAt];
    v15 = [v14 dateByAddingTimeInterval:*(a1 + 40)];
    [v3 setExpires:v15];

    v16 = [MEMORY[0x1E695DF00] now];
    [v3 setModified:v16];

    **(a1 + 48) |= [v3 crossDeviceSync];
  }

  return v9;
}

+ (id)_setIdentifier:(id)a3 withStartedDate:(id)a4 forKey:(id)a5 database:(id)a6 account:(id)a7 clientInfo:(id)a8 domain:(id)a9 resetInterval:(double)a10 serverProvidedAt:(id)a11 skipSync:(BOOL)a12
{
  v41 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a11;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v26 = objc_alloc_init(AMSMutablePromise);
  v27 = +[AMSMetricsIdentifierStore _sharedQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__AMSMetricsIdentifierStoreConsumerID__setIdentifier_withStartedDate_forKey_database_account_clientInfo_domain_resetInterval_serverProvidedAt_skipSync___block_invoke;
  block[3] = &unk_1E73B9FC0;
  v28 = v22;
  v43 = v28;
  v53 = a1;
  v40 = v20;
  v44 = v40;
  v29 = v21;
  v45 = v29;
  v30 = v19;
  v46 = v30;
  v52 = &v55;
  v31 = v23;
  v47 = v31;
  v32 = v24;
  v48 = v32;
  v54 = a10;
  v33 = v26;
  v49 = v33;
  v34 = v41;
  v50 = v34;
  v35 = v25;
  v51 = v35;
  dispatch_sync(v27, block);

  if (*(v56 + 24) == 1 && !a12)
  {
    v36 = +[AMSMetricsIdentifierStore _sync];
  }

  v37 = v51;
  v38 = v33;

  _Block_object_dispose(&v55, 8);

  return v38;
}

void __152__AMSMetricsIdentifierStoreConsumerID__setIdentifier_withStartedDate_forKey_database_account_clientInfo_domain_resetInterval_serverProvidedAt_skipSync___block_invoke(uint64_t a1)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v2 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:*(a1 + 32)];
  v3 = *(a1 + 112);
  v60[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 104) + 8);
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 120);
  v45 = 0;
  v12 = [v3 _identifierStoreInfoForKeys:v4 inDatabase:v5 date:v6 started:0 updateStarted:1 needsToSync:v7 + 24 account:v11 clientInfo:v8 domain:v9 resetInterval:v10 error:&v45];
  v13 = v45;

  if (v13 || !v12)
  {
    v29 = +[AMSLogConfig sharedMetricsConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v43 = v12;
      v31 = v2;
      v32 = objc_opt_class();
      v33 = AMSLogKey();
      v34 = [*(a1 + 64) bundleIdentifier];
      v35 = *(a1 + 72);
      v36 = AMSLogableError(v13);
      *buf = 138544642;
      v47 = v32;
      v2 = v31;
      v12 = v43;
      v48 = 2114;
      v49 = v33;
      v50 = 2112;
      v51 = v2;
      v52 = 2114;
      v53 = v34;
      v54 = 2114;
      v55 = v35;
      v56 = 2114;
      v57 = v36;
      _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier store (dsid: %@, client: %{public}@, domain: %{public}@) %{public}@", buf, 0x3Eu);
    }

    v37 = *(a1 + 80);
    if (v13)
    {
      [v37 finishWithError:v13];
    }

    else
    {
      v38 = AMSError(7, @"No metrics identifier store found", 0, 0);
      [v37 finishWithError:v38];

      v13 = 0;
    }
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 112);
    v17 = *(*(a1 + 104) + 8);
    v18 = *(a1 + 88);
    v19 = *(a1 + 96);
    v20 = *(a1 + 120);
    v44 = 0;
    v21 = [v16 _identifierInfoForKey:v14 storeInfo:v12 inDatabase:v15 setValue:v18 needsToSync:v17 + 24 serverProvidedAt:v19 resetInterval:v20 error:&v44];
    v13 = v44;
    if (v13 || !v21)
    {
      v42 = v2;
      v22 = +[AMSLogConfig sharedMetricsConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v24 = AMSLogKey();
        v25 = [*(a1 + 64) bundleIdentifier];
        v40 = *(a1 + 72);
        v26 = [*(a1 + 40) name];
        v27 = AMSLogableError(v13);
        *buf = 138544898;
        v47 = v41;
        v48 = 2114;
        v49 = v24;
        v50 = 2112;
        v51 = v42;
        v52 = 2114;
        v53 = v25;
        v54 = 2114;
        v55 = v40;
        v56 = 2114;
        v57 = v26;
        v58 = 2114;
        v59 = v27;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch/insert identifier (dsid: %@, client: %{public}@, domain: %{public}@, key: %{public}@) %{public}@", buf, 0x48u);
      }

      v28 = *(a1 + 80);
      if (v13)
      {
        [v28 finishWithError:v13];
      }

      else
      {
        v39 = AMSError(7, @"No metrics identifier found", 0, 0);
        [v28 finishWithError:v39];
      }

      v2 = v42;
    }
  }
}

+ (id)_identifierInfoForKey:(id)a3 storeInfo:(id)a4 inDatabase:(id)a5 setValue:(id)a6 needsToSync:(BOOL *)a7 serverProvidedAt:(id)a8 resetInterval:(double)a9 error:(id *)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v21 = a5;
  v22 = [AMSMetricsIdentifierStore _generateIdentifierKey:v17 storeInfo:v18 period:0 resetInterval:a9];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __140__AMSMetricsIdentifierStoreConsumerID__identifierInfoForKey_storeInfo_inDatabase_setValue_needsToSync_serverProvidedAt_resetInterval_error___block_invoke;
  v30[3] = &unk_1E73B9FE8;
  v31 = v17;
  v32 = v22;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = a1;
  v37 = a7;
  v23 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v22;
  v27 = v17;
  v28 = [v21 identifierForKey:v26 updateMaybe:v30 error:a10];

  return v28;
}

uint64_t __140__AMSMetricsIdentifierStoreConsumerID__identifierInfoForKey_storeInfo_inDatabase_setValue_needsToSync_serverProvidedAt_resetInterval_error___block_invoke(uint64_t a1, id *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = +[AMSLogConfig sharedMetricsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v39 = 138543874;
    v40 = v7;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found ID in db: %{public}@", &v39, 0x20u);
  }

  v9 = [v4 changeCounter];
  v10 = [v4 value];
  if (v4 && ![v4 deleted])
  {
    v19 = 0;
    v20 = 0;
    v11 = v4;
  }

  else
  {
    v11 = objc_opt_new();

    [v11 setCrossDeviceSync:{objc_msgSend(*(a1 + 32), "crossDeviceSync")}];
    [v11 setIdKey:*(a1 + 40)];
    v12 = [*(a1 + 48) storeUUID];
    [v11 setStoreUUID:v12];

    v13 = [*(a1 + 32) name];
    [v11 setName:v13];

    [v11 setValue:*(a1 + 56)];
    [v11 setServerProvidedAt:*(a1 + 64)];
    [v11 setExpires:0];
    v14 = v11;
    *a2 = v11;
    v15 = +[AMSLogConfig sharedMetricsConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v39 = 138543874;
      v40 = v17;
      v41 = 2114;
      v42 = v18;
      v43 = 2114;
      v44 = v11;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Created new ID in db: %{public}@", &v39, 0x20u);
    }

    v19 = 1;
    v20 = 8;
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    v22 = [v11 value];
    v23 = [v21 isEqualToString:v22];

    if ((v23 & 1) == 0)
    {
      [v11 setValue:*(a1 + 56)];
      [v11 setServerProvidedAt:*(a1 + 64)];
      [v11 setExpires:0];
      v24 = +[AMSLogConfig sharedMetricsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        v39 = 138543874;
        v40 = v26;
        v41 = 2114;
        v42 = v27;
        v43 = 2114;
        v44 = v11;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updated ID value in db: %{public}@", &v39, 0x20u);
      }

      v19 = 1;
      v20 = 9;
    }
  }

  v28 = [v11 expires];

  if (v28)
  {
    [v11 setExpires:0];
    v28 = +[AMSLogConfig sharedMetricsConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      v39 = 138543874;
      v40 = v30;
      v41 = 2114;
      v42 = v31;
      v43 = 2114;
      v44 = v11;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Cleared CID expiry in db: %{public}@", &v39, 0x20u);
    }
  }

  else if (!v19)
  {
    v37 = 0;
    goto LABEL_33;
  }

  if (v10 || ([v11 value], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v32 = [v11 value];
    v33 = [v10 isEqualToString:v32];

    if (!v10)
    {

      if (v33)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if ((v33 & 1) == 0)
    {
LABEL_31:
      v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "longLongValue") + 1}];
      [v11 setChangeCounter:v34];

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      [v11 setChangeCause:v35];

      [v11 setPreviousValue:v10];
    }
  }

LABEL_32:
  v36 = [MEMORY[0x1E695DF00] now];
  [v11 setModified:v36];

  **(a1 + 80) |= [v11 crossDeviceSync];
  v37 = 1;
LABEL_33:

  return v37;
}

+ (id)_identifierStoreInfoForKeys:(id)a3 inDatabase:(id)a4 date:(id)a5 started:(id)a6 updateStarted:(BOOL)a7 needsToSync:(BOOL *)a8 account:(id)a9 clientInfo:(id)a10 domain:(id)a11 resetInterval:(double)a12 error:(id *)a13
{
  v17 = a5;
  v18 = a6;
  v19 = a10;
  v20 = a11;
  v21 = a9;
  v22 = a4;
  v23 = a3;
  v24 = [AMSMetricsIdentifierStore _accountIdentifierForAccount:v21];
  v25 = [AMSMetricsIdentifierStore _generateStoreKeyForAccount:v21 domain:v20 clientInfo:v19];

  v26 = [v23 ac_firstObjectPassingTest:&__block_literal_global_98];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __163__AMSMetricsIdentifierStoreConsumerID__identifierStoreInfoForKeys_inDatabase_date_started_updateStarted_needsToSync_account_clientInfo_domain_resetInterval_error___block_invoke_2;
  v38[3] = &unk_1E73BA010;
  v44 = v17;
  v45 = a1;
  v39 = v24;
  v40 = v25;
  v48 = v26 != 0;
  v41 = v18;
  v42 = v19;
  v46 = a12;
  v49 = a7;
  v43 = v20;
  v47 = a8;
  v27 = v17;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v25;
  v32 = v24;
  v33 = [v22 identifierStoreForKey:v31 updateMaybe:v38 error:a13];

  return v33;
}

uint64_t __163__AMSMetricsIdentifierStoreConsumerID__identifierStoreInfoForKeys_inDatabase_date_started_updateStarted_needsToSync_account_clientInfo_domain_resetInterval_error___block_invoke_2(uint64_t a1, id *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = +[AMSLogConfig sharedMetricsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v45 = 138543874;
    v46 = v7;
    v47 = 2114;
    v48 = v8;
    v49 = 2114;
    *v50 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found ID store in db: %{public}@", &v45, 0x20u);
  }

  if (v4 && ![v4 deleted])
  {
    v17 = 0;
    v9 = v4;
  }

  else
  {
    v9 = objc_opt_new();

    [v9 setAccount:*(a1 + 32)];
    [v9 setStoreKey:*(a1 + 40)];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    [v9 setStoreUUID:v11];

    [v9 setStarted:*(a1 + 48)];
    v12 = v9;
    *a2 = v9;
    v13 = +[AMSLogConfig sharedMetricsConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v45 = 138543874;
      v46 = v15;
      v47 = 2114;
      v48 = v16;
      v49 = 2114;
      *v50 = v9;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Created new ID store in db: %{public}@", &v45, 0x20u);
    }

    v17 = 1;
  }

  if (*(a1 + 104) != [v9 crossDeviceSync])
  {
    [v9 setCrossDeviceSync:?];
    v18 = +[AMSLogConfig sharedMetricsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = *(a1 + 104);
      v23 = [*(a1 + 56) bundleIdentifier];
      v24 = *(a1 + 64);
      v45 = 138544386;
      v46 = v20;
      v47 = 2114;
      v48 = v21;
      v49 = 1026;
      *v50 = v22;
      *&v50[4] = 2114;
      *&v50[6] = v23;
      *&v50[14] = 2114;
      *&v50[16] = v24;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Updating identifier store cross device sync (sync: %{public}d, client: %{public}@, domain: %{public}@)", &v45, 0x30u);
    }

    v17 = 1;
  }

  [v9 resetInterval];
  if (v25 == *(a1 + 88))
  {
    if ((*(a1 + 105) & 1) == 0)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    [v9 setResetInterval:?];
    v26 = +[AMSLogConfig sharedMetricsConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = AMSLogKey();
      v30 = *(a1 + 88);
      v31 = [*(a1 + 56) bundleIdentifier];
      v32 = *(a1 + 64);
      v45 = 138544386;
      v46 = v28;
      v47 = 2114;
      v48 = v29;
      v49 = 2050;
      *v50 = v30;
      *&v50[8] = 2114;
      *&v50[10] = v31;
      *&v50[18] = 2114;
      *&v50[20] = v32;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Updating identifier store reset interval (interval: %{public}f, client: %{public}@, domain: %{public}@)", &v45, 0x34u);
    }

    if ((*(a1 + 105) & 1) == 0)
    {
      goto LABEL_34;
    }

    v17 = 1;
  }

  v33 = [v9 started];
  v34 = *(a1 + 48);

  if (v33 != v34)
  {
    v35 = +[AMSLogConfig sharedMetricsConfig];
    if (!v35)
    {
      v35 = +[AMSLogConfig sharedConfig];
    }

    v36 = [v35 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = objc_opt_class();
      v38 = AMSLogKey();
      v39 = [v9 started];
      v40 = *(a1 + 48);
      v41 = [*(a1 + 56) bundleIdentifier];
      v42 = *(a1 + 64);
      v45 = 138544642;
      v46 = v37;
      v47 = 2114;
      v48 = v38;
      v49 = 2114;
      *v50 = v39;
      *&v50[8] = 2114;
      *&v50[10] = v40;
      *&v50[18] = 2114;
      *&v50[20] = v41;
      v51 = 2114;
      v52 = v42;
      _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Updating identifier store started timestamp: %{public}@ to timestamp: %{public}@ (client: %{public}@, domain: %{public}@)", &v45, 0x3Eu);
    }

    [v9 setStarted:*(a1 + 48)];
    goto LABEL_34;
  }

  if (!v17)
  {
LABEL_37:
    v43 = 0;
    goto LABEL_35;
  }

LABEL_34:
  [v9 setModified:*(a1 + 72)];
  **(a1 + 96) |= [v9 crossDeviceSync];
  v43 = 1;
LABEL_35:

  return v43;
}

@end