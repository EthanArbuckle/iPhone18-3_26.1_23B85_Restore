@interface AMSLogoutTask
+ (void)_resetServerDataCacheForAccountWithDSID:(id)a3;
- (AMSLogoutTask)initWithAccount:(id)a3;
- (BOOL)_disableAutomaticDownloadKindsWithError:(id *)a3;
- (BOOL)_disableBookkeeperWithBag:(id)a3 error:(id *)a4;
- (BOOL)_revokeMusicKitUserTokensWithError:(id *)a3;
- (BOOL)_sendLogoutRequestWithBag:(id)a3 error:(id *)a4;
- (id)logout;
@end

@implementation AMSLogoutTask

- (AMSLogoutTask)initWithAccount:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AMSLogoutTask;
  v6 = [(AMSTask *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v8 = qword_2A17957E0;
    v18 = qword_2A17957E0;
    if (!qword_2A17957E0)
    {
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = sub_29C88706C;
      v14[3] = &unk_29F32BD18;
      v14[4] = &v15;
      sub_29C88706C(v14);
      v8 = v16[3];
    }

    v9 = v8;
    _Block_object_dispose(&v15, 8);
    v10 = objc_alloc_init(v8);
    iCloudServiceMonitor = v7->_iCloudServiceMonitor;
    v7->_iCloudServiceMonitor = v10;
  }

  return v7;
}

- (id)logout
{
  v3 = AMSLogKey();
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = sub_29C885C84;
  v8[3] = &unk_29F32BE58;
  objc_copyWeak(&v11, &location);
  v4 = v3;
  v9 = v4;
  v10 = self;
  v6 = objc_msgSend_performBinaryTaskWithBlock_(self, v5, v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (BOOL)_revokeMusicKitUserTokensWithError:(id *)a3
{
  v46 = *MEMORY[0x29EDCA608];
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v42 = 138543618;
    v43 = v9;
    v44 = 2114;
    v45 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Revoking Music User Tokens", &v42, 0x16u);
  }

  v13 = objc_msgSend_account(self, v11, v12);
  v16 = objc_msgSend_ams_DSID(v13, v14, v15);

  v17 = objc_alloc_init(MEMORY[0x29EDBFA18]);
  v20 = objc_msgSend_iCloudServiceMonitor(self, v18, v19);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v24 = objc_msgSend_iCloudServiceMonitor(self, v22, v23);
    v27 = objc_msgSend_errorOnlyCompletionHandlerAdapter(v17, v25, v26);
    objc_msgSend_revokeMusicKitUserTokensForAccountDSID_withCompletion_(v24, v28, v16, v27);

    v31 = objc_msgSend_binaryPromiseAdapter(v17, v29, v30);
    v33 = objc_msgSend_resultWithError_(v31, v32, a3);
  }

  else
  {
    v36 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v22, v23);
    if (!v36)
    {
      v36 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v34, v35);
    }

    v37 = objc_msgSend_OSLogObject(v36, v34, v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v39 = AMSLogKey();
      v42 = 138543618;
      v43 = v38;
      v44 = 2114;
      v45 = v39;
      _os_log_impl(&dword_29C87A000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Unable to revoke Music User Tokens missing necessary method in ICCloudServiceStatusMonitor", &v42, 0x16u);
    }

    if (a3)
    {
      AMSError();
      *a3 = v33 = 0;
    }

    else
    {
      v33 = 0;
    }
  }

  v40 = *MEMORY[0x29EDCA608];
  return v33;
}

- (BOOL)_disableAutomaticDownloadKindsWithError:(id *)a3
{
  v34 = *MEMORY[0x29EDCA608];
  v7 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], a2, a3);
  if (!v7)
  {
    v7 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v5, v6);
  }

  v8 = objc_msgSend_OSLogObject(v7, v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    v30 = 138543618;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&dword_29C87A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Disabling automatic download kinds.", &v30, 0x16u);
  }

  v13 = objc_msgSend_createBagForSubProfile(MEMORY[0x29EDBF9A8], v11, v12);
  v14 = objc_alloc(MEMORY[0x29EDBF9A8]);
  v17 = objc_msgSend_account(self, v15, v16);
  v19 = objc_msgSend_initWithEnabledMediaKinds_account_bag_(v14, v18, MEMORY[0x29EDB8E90], v17, v13);

  v22 = objc_msgSend_perform(v19, v20, v21);
  v25 = objc_msgSend_binaryPromiseAdapter(v22, v23, v24);
  v27 = objc_msgSend_resultWithError_(v25, v26, a3);

  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

- (BOOL)_disableBookkeeperWithBag:(id)a3 error:(id *)a4
{
  v46 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDBF9F0];
  v6 = a3;
  v11 = objc_msgSend_sharedAccountsNotificationPluginConfig(v5, v7, v8);
  if (!v11)
  {
    v11 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v9, v10);
  }

  v12 = objc_msgSend_OSLogObject(v11, v9, v10);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v43 = v13;
    v44 = 2114;
    v45 = v14;
    _os_log_impl(&dword_29C87A000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Disabling Bookkeeper.", buf, 0x16u);
  }

  v16 = objc_msgSend_URLForKey_(v6, v15, @"push-notification-types/add-push-notification-type-url");
  v17 = objc_alloc(MEMORY[0x29EDBFA38]);
  v19 = objc_msgSend_initWithBag_(v17, v18, v6);

  objc_msgSend_setRequestEncoding_(v19, v20, 2);
  v23 = objc_msgSend_deviceGUID(MEMORY[0x29EDBF9D0], v21, v22, @"guid");
  v41[0] = v23;
  v41[1] = &unk_2A23D0B48;
  v40[1] = @"put-parameters";
  v40[2] = @"notification-type";
  v41[2] = @"mzbookkeeper";
  v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v24, v41, v40, 3);
  v27 = objc_msgSend_requestWithMethod_bagURL_parameters_(v19, v26, 4, v16, v25);

  v30 = objc_msgSend_defaultSession(MEMORY[0x29EDBFA40], v28, v29);
  v32 = objc_msgSend_dataTaskPromiseWithRequestPromise_(v30, v31, v27);
  v35 = objc_msgSend_binaryPromiseAdapter(v32, v33, v34);
  v37 = objc_msgSend_resultWithError_(v35, v36, a4);

  v38 = *MEMORY[0x29EDCA608];
  return v37;
}

- (BOOL)_sendLogoutRequestWithBag:(id)a3 error:(id *)a4
{
  v59 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDBF9F0];
  v7 = a3;
  v12 = objc_msgSend_sharedAccountsNotificationPluginConfig(v6, v8, v9);
  if (!v12)
  {
    v12 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v10, v11);
  }

  v13 = objc_msgSend_OSLogObject(v12, v10, v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSLogKey();
    *buf = 138543618;
    v56 = v14;
    v57 = 2114;
    v58 = v15;
    _os_log_impl(&dword_29C87A000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Sending logout request.", buf, 0x16u);
  }

  v17 = objc_msgSend_URLForKey_(v7, v16, @"logout-url");
  v18 = objc_alloc(MEMORY[0x29EDBFA38]);
  v20 = objc_msgSend_initWithBag_(v18, v19, v7);

  objc_msgSend_setRequestEncoding_(v20, v21, 2);
  v24 = objc_msgSend_deviceGUID(MEMORY[0x29EDBF9D0], v22, v23, @"guid");
  v54 = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v25, &v54, &v53, 1);
  v29 = objc_msgSend_mutableCopy(v26, v27, v28);

  v32 = objc_msgSend_sharedInstance(MEMORY[0x29EDBFA30], v30, v31);
  v35 = objc_msgSend_account(self, v33, v34);
  v37 = objc_msgSend_subscriptionBagSyncDataForAccount_(v32, v36, v35);
  objc_msgSend_ams_setNullableObject_forKey_(v29, v38, v37, @"sbsync");

  v40 = objc_msgSend_requestWithMethod_bagURL_parameters_(v20, v39, 4, v17, v29);
  v43 = objc_msgSend_defaultSession(MEMORY[0x29EDBFA40], v41, v42);
  v45 = objc_msgSend_dataTaskPromiseWithRequestPromise_(v43, v44, v40);
  v48 = objc_msgSend_binaryPromiseAdapter(v45, v46, v47);
  v50 = objc_msgSend_resultWithError_(v48, v49, a4);

  v51 = *MEMORY[0x29EDCA608];
  return v50;
}

+ (void)_resetServerDataCacheForAccountWithDSID:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v6 = objc_msgSend_sharedAccountsNotificationPluginConfig(MEMORY[0x29EDBF9F0], v4, v5);
  v9 = v6;
  if (v3)
  {
    if (!v6)
    {
      v9 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v7, v8);
    }

    v10 = objc_msgSend_OSLogObject(v9, v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v20 = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_29C87A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Requesting server data cache teardown", &v20, 0x16u);
    }

    v9 = objc_alloc_init(MEMORY[0x29EDBFA28]);
    v14 = objc_msgSend_tearDownCacheForAccountDSID_(v9, v13, v3);
  }

  else
  {
    if (!v6)
    {
      v9 = objc_msgSend_sharedConfig(MEMORY[0x29EDBF9F0], v7, v8);
    }

    v15 = objc_msgSend_OSLogObject(v9, v7, v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_29C87A000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] Failed to request server data cache teardown - no dsid on account", &v20, 0x16u);
    }
  }

  objc_msgSend_setDidSetUpServerDataCache_(MEMORY[0x29EDBF9C8], v18, 0);
  v19 = *MEMORY[0x29EDCA608];
}

@end