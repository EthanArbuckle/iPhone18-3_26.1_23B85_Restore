@interface APRequestHandler
+ (void)addExceptionRequestWithUUID:(id)a3 type:(int64_t)a4 title:(id)a5 message:(id)a6 bundleIdentifier:(id)a7 adamID:(id)a8 distributorID:(id)a9 ageRatingValue:(id)a10 preApprove:(id)a11 postApprove:(id)a12 preDecline:(id)a13 postDecline:(id)a14 responseBundleIdentifier:(id)a15 metadata:(id)a16 withCompletion:(id)a17;
+ (void)addRequestWithURL:(id)a3 account:(id)a4 completion:(id)a5;
+ (void)checkDownloadQueueWithContentType:(int64_t)a3;
+ (void)clearExceptionRequestsWithCompletion:(id)a3;
+ (void)didReceiveStorePushNotificationWithPayload:(id)a3;
+ (void)getCachedRequestsWithCompletion:(id)a3;
+ (void)getExceptionRequestWithDistributorIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getExceptionRequestWithUniqueIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getExceptionRequestsWithBundleIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)getExceptionRequestsWithCompletion:(id)a3;
+ (void)getMatchingRequestsWithIdentifier:(id)a3 completion:(id)a4;
+ (void)getRequestWithIdentifier:(id)a3 completion:(id)a4;
+ (void)getRequestWithItemIdentifier:(id)a3 completion:(id)a4;
+ (void)localApproveExceptionWithUniqueIdentifier:(id)a3 completionHandler:(id)a4;
+ (void)localApproveRequestWithItemIdentifier:(id)a3 completion:(id)a4;
+ (void)presentApprovalSheetWithRequestIdentifier:(id)a3 completion:(id)a4;
+ (void)presentProductPageWithTitle:(id)a3 body:(id)a4 approve:(id)a5 decline:(id)a6 itemIdentifier:(id)a7 previewURL:(id)a8 offerName:(id)a9 requestString:(id)a10 requestSummary:(id)a11 priceSummary:(id)a12 isException:(BOOL)a13;
+ (void)resetAccountWithType:(int64_t)a3;
+ (void)restartAPNSConnection;
+ (void)startDaemon;
+ (void)updateExceptionRequestWithUniqueIdentifier:(id)a3 action:(int64_t)a4 completionHandler:(id)a5;
+ (void)updateRequestWithIdentifier:(id)a3 action:(int64_t)a4 completion:(id)a5;
@end

@implementation APRequestHandler

+ (void)addRequestWithURL:(id)a3 account:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[APLogConfig sharedFrameworkConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = objc_opt_class();
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v13 = v22;
    _os_log_impl(&dword_241063000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Add request. URL: %{public}@, account: %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, a1);
  v14 = +[APConnectionNotifier sharedNotifier];
  v15 = [v14 remoteObjectProxy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__APRequestHandler_addRequestWithURL_account_completion___block_invoke;
  v18[3] = &unk_278CC1740;
  objc_copyWeak(&v20, buf);
  v16 = v10;
  v19 = v16;
  [v15 addRequestWithURL:v8 account:v9 completion:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __57__APRequestHandler_addRequestWithURL_account_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedFrameworkConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v3;
      v8 = v16;
      v9 = "%{public}@: Add request failure. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v10, v11, v9, &v15, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v8 = v16;
      v9 = "%{public}@: Add request success";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)presentApprovalSheetWithRequestIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedFrameworkConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v6;
    v10 = v19;
    _os_log_impl(&dword_241063000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Present Approval Sheet. Request identifier: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v11 = +[APConnectionNotifier sharedNotifier];
  v12 = [v11 remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__APRequestHandler_presentApprovalSheetWithRequestIdentifier_completion___block_invoke;
  v15[3] = &unk_278CC1740;
  objc_copyWeak(&v17, buf);
  v13 = v7;
  v16 = v13;
  [v12 presentApprovalSheetWithRequestIdentifier:v6 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __73__APRequestHandler_presentApprovalSheetWithRequestIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedFrameworkConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v3;
      v8 = v16;
      v9 = "%{public}@: Present approval sheet failure. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v10, v11, v9, &v15, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v8 = v16;
      v9 = "%{public}@: Present approval sheet success";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)getRequestWithIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedFrameworkConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v6;
    v10 = v19;
    _os_log_impl(&dword_241063000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Get Request Data. Request identifier: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v11 = +[APConnectionNotifier sharedNotifier];
  v12 = [v11 remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__APRequestHandler_getRequestWithIdentifier_completion___block_invoke;
  v15[3] = &unk_278CC1768;
  objc_copyWeak(&v17, buf);
  v13 = v7;
  v16 = v13;
  [v12 getRequestWithIdentifier:v6 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __56__APRequestHandler_getRequestWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = +[APLogConfig sharedFrameworkConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v11 = v19;
      v12 = "%{public}@: Get Request Data failure. Error: %{public}@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v11 = v19;
      v12 = "%{public}@: Get Request Data Success";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
      goto LABEL_10;
    }
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)getMatchingRequestsWithIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedFrameworkConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v6;
    v10 = v19;
    _os_log_impl(&dword_241063000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Get Matching Requests. Request identifier: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v11 = +[APConnectionNotifier sharedNotifier];
  v12 = [v11 remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__APRequestHandler_getMatchingRequestsWithIdentifier_completion___block_invoke;
  v15[3] = &unk_278CC1790;
  objc_copyWeak(&v17, buf);
  v13 = v7;
  v16 = v13;
  [v12 getMatchingRequestsWithIdentifier:v6 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __65__APRequestHandler_getMatchingRequestsWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = +[APLogConfig sharedFrameworkConfig];
  v9 = v8;
  if (v6)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v6;
      v11 = v19;
      v12 = "%{public}@: Get Matching Requests failure. Error: %{public}@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v13, v14, v12, &v18, v15);
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = objc_opt_class();
      v11 = v19;
      v12 = "%{public}@: Get Matching Requests Success";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
      goto LABEL_10;
    }
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v5, v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)getRequestWithItemIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedFrameworkConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v6;
    v10 = v19;
    _os_log_impl(&dword_241063000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Get Request Data with itemIdentifier/adamID: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v11 = +[APConnectionNotifier sharedNotifier];
  v12 = [v11 remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__APRequestHandler_getRequestWithItemIdentifier_completion___block_invoke;
  v15[3] = &unk_278CC1768;
  objc_copyWeak(&v17, buf);
  v13 = v7;
  v16 = v13;
  [v12 getRequestWithItemIdentifier:v6 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __60__APRequestHandler_getRequestWithItemIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = +[APLogConfig sharedFrameworkConfig];
    if (!v8)
    {
      v8 = +[APLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v6;
      v10 = v14;
      _os_log_impl(&dword_241063000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Get Request Data failure. Error: %{public}@", &v13, 0x16u);
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)addExceptionRequestWithUUID:(id)a3 type:(int64_t)a4 title:(id)a5 message:(id)a6 bundleIdentifier:(id)a7 adamID:(id)a8 distributorID:(id)a9 ageRatingValue:(id)a10 preApprove:(id)a11 postApprove:(id)a12 preDecline:(id)a13 postDecline:(id)a14 responseBundleIdentifier:(id)a15 metadata:(id)a16 withCompletion:(id)a17
{
  v59 = *MEMORY[0x277D85DE8];
  v45 = a7;
  v42 = a8;
  v44 = a9;
  v43 = a10;
  v18 = a17;
  v38 = a16;
  v37 = a15;
  v36 = a14;
  v35 = a13;
  v19 = a12;
  v34 = a11;
  v33 = a6;
  v31 = a5;
  v29 = a3;
  v20 = +[APLogConfig sharedFrameworkConfig];
  if (!v20)
  {
    v20 = +[APLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = v22;
    v24 = [v43 stringValue];
    *buf = 138544386;
    v50 = v22;
    v51 = 2112;
    v52 = v45;
    v53 = 2112;
    v54 = v42;
    v55 = 2112;
    v56 = v44;
    v57 = 2112;
    v58 = v24;
    _os_log_impl(&dword_241063000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Adding Exception Request: %@, adamID: %@, distributor: %@, ageRatingValue: %@", buf, 0x34u);
  }

  v27 = +[APConnectionNotifier sharedNotifier];
  v26 = [v27 remoteObjectProxy];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __215__APRequestHandler_addExceptionRequestWithUUID_type_title_message_bundleIdentifier_adamID_distributorID_ageRatingValue_preApprove_postApprove_preDecline_postDecline_responseBundleIdentifier_metadata_withCompletion___block_invoke;
  v46[3] = &unk_278CC17B8;
  v47 = v18;
  v48 = a1;
  v40 = v18;
  [v26 addExceptionRequestWithUUID:v29 type:a4 title:v31 message:v33 bundleIdentifier:v45 adamID:v42 distributorID:v44 ageRatingValue:v43 preApprove:v34 postApprove:v19 preDecline:v35 postDecline:v36 responseBundleIdentifier:v37 metadata:v38 withCompletion:v46];

  v25 = *MEMORY[0x277D85DE8];
}

void __215__APRequestHandler_addExceptionRequestWithUUID_type_title_message_bundleIdentifier_adamID_distributorID_ageRatingValue_preApprove_postApprove_preDecline_postDecline_responseBundleIdentifier_metadata_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[APLogConfig sharedFrameworkConfig];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 40);
      v17 = 138543618;
      v18 = objc_opt_class();
      v19 = 2112;
      v20 = v5;
      v10 = v18;
      v11 = "%{public}@: Failed to Add Exception Request: %@";
      v12 = v8;
      v13 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v17 = 138543362;
      v18 = objc_opt_class();
      v10 = v18;
      v11 = "%{public}@: Exception Request Added Successfully";
      v12 = v8;
      v13 = 12;
LABEL_11:
      _os_log_impl(&dword_241063000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)getExceptionRequestsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[APLogConfig sharedFrameworkConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_241063000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting Exception Requests.", buf, 0xCu);
  }

  v7 = +[APConnectionNotifier sharedNotifier];
  v8 = [v7 remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__APRequestHandler_getExceptionRequestsWithCompletion___block_invoke;
  v11[3] = &unk_278CC17E0;
  v12 = v3;
  v9 = v3;
  [v8 getExceptionRequestsWithCompletion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __55__APRequestHandler_getExceptionRequestsWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)getExceptionRequestWithUniqueIdentifier:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[APLogConfig sharedFrameworkConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v9 = v14;
    _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting Exception Requests for UniqueID: %@", &v13, 0x16u);
  }

  v10 = +[APConnectionNotifier sharedNotifier];
  v11 = [v10 remoteObjectProxy];
  [v11 getExceptionRequestWithUniqueIdentifier:v5 completionHandler:v6];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)getExceptionRequestsWithBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[APLogConfig sharedFrameworkConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v9 = v14;
    _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting Exception Requests for BundleID: %@", &v13, 0x16u);
  }

  v10 = +[APConnectionNotifier sharedNotifier];
  v11 = [v10 remoteObjectProxy];
  [v11 getExceptionRequestsWithBundleIdentifier:v5 completionHandler:v6];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)getExceptionRequestWithDistributorIdentifier:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[APLogConfig sharedFrameworkConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v9 = v14;
    _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting Exception Requests for DistributorID: %@", &v13, 0x16u);
  }

  v10 = +[APConnectionNotifier sharedNotifier];
  v11 = [v10 remoteObjectProxy];
  [v11 getExceptionRequestWithDistributorIdentifier:v5 completionHandler:v6];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)localApproveExceptionWithUniqueIdentifier:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[APLogConfig sharedFrameworkConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = v5;
    v9 = v14;
    _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing Local Approval for UniqueID: %@", &v13, 0x16u);
  }

  v10 = +[APConnectionNotifier sharedNotifier];
  v11 = [v10 remoteObjectProxy];
  [v11 localApproveExceptionWithUniqueIdentifier:v5 completionHandler:v6];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)updateExceptionRequestWithUniqueIdentifier:(id)a3 action:(int64_t)a4 completionHandler:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = +[APLogConfig sharedFrameworkConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = @"Decline";
    v17 = 138544130;
    v18 = v11;
    v19 = 2112;
    if (!a4)
    {
      v12 = @"Approve";
    }

    v20 = v7;
    v21 = 2048;
    v22 = a4;
    v23 = 2112;
    v24 = v12;
    v13 = v11;
    _os_log_impl(&dword_241063000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating Exception Request with UniqueID: %@ action: %ld - (%@)", &v17, 0x2Au);
  }

  v14 = +[APConnectionNotifier sharedNotifier];
  v15 = [v14 remoteObjectProxy];
  [v15 updateExceptionRequestWithUniqueIdentifier:v7 action:a4 completionHandler:v8];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)checkDownloadQueueWithContentType:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = +[APLogConfig sharedFrameworkConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2050;
    v16 = a3;
    v7 = v14;
    _os_log_impl(&dword_241063000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking download queue. Content type: %{public}ld.", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v8 = +[APConnectionNotifier sharedNotifier];
  v9 = [v8 remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__APRequestHandler_checkDownloadQueueWithContentType___block_invoke;
  v11[3] = &unk_278CC1568;
  objc_copyWeak(&v12, buf);
  [v9 checkDownloadQueueWithContentType:a3 completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __54__APRequestHandler_checkDownloadQueueWithContentType___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[APLogConfig sharedFrameworkConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v3;
      v8 = v15;
      v9 = "%{public}@: Checking download queue failed. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v10, v11, v9, &v14, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = objc_opt_class();
      v8 = v15;
      v9 = "%{public}@: Checking download queue succeeded.";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (void)getCachedRequestsWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[APLogConfig sharedFrameworkConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v7 = v16;
    _os_log_impl(&dword_241063000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching item cache.", buf, 0xCu);
  }

  objc_initWeak(buf, a1);
  v8 = +[APConnectionNotifier sharedNotifier];
  v9 = [v8 remoteObjectProxy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__APRequestHandler_getCachedRequestsWithCompletion___block_invoke;
  v12[3] = &unk_278CC1808;
  objc_copyWeak(&v14, buf);
  v10 = v4;
  v13 = v10;
  [v9 getCachedRequestsWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

void __52__APRequestHandler_getCachedRequestsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedFrameworkConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v11 = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = [v3 count];
    _os_log_impl(&dword_241063000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched Items. Count: %lu", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)localApproveRequestWithItemIdentifier:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[APLogConfig sharedFrameworkConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = v6;
    v10 = v19;
    _os_log_impl(&dword_241063000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Local approve request. Item identifier: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, a1);
  v11 = +[APConnectionNotifier sharedNotifier];
  v12 = [v11 remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__APRequestHandler_localApproveRequestWithItemIdentifier_completion___block_invoke;
  v15[3] = &unk_278CC1740;
  objc_copyWeak(&v17, buf);
  v13 = v7;
  v16 = v13;
  [v12 localApproveRequestWithItemIdentifier:v6 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __69__APRequestHandler_localApproveRequestWithItemIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedFrameworkConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v3;
      v8 = v16;
      v9 = "%{public}@: Local approve failure. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v10, v11, v9, &v15, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v8 = v16;
      v9 = "%{public}@: Local approve success";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)restartAPNSConnection
{
  v3 = +[APConnectionNotifier sharedNotifier];
  v2 = [v3 remoteObjectProxy];
  [v2 restartAPNSConnection];
}

+ (void)clearExceptionRequestsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[APConnectionNotifier sharedNotifier];
  v5 = [v4 remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__APRequestHandler_clearExceptionRequestsWithCompletion___block_invoke;
  v7[3] = &unk_278CC1830;
  v8 = v3;
  v6 = v3;
  [v5 clearExceptionRequestsWithCompletion:v7];
}

uint64_t __57__APRequestHandler_clearExceptionRequestsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3 || v4)
  {
    (*(v4 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

+ (void)updateRequestWithIdentifier:(id)a3 action:(int64_t)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = +[APLogConfig sharedFrameworkConfig];
  if (!v10)
  {
    v10 = +[APLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v8;
    v24 = 2050;
    v25 = a4;
    v12 = v21;
    _os_log_impl(&dword_241063000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Update request. Identifier: %{public}@, action: %{public}ld", buf, 0x20u);
  }

  objc_initWeak(buf, a1);
  v13 = +[APConnectionNotifier sharedNotifier];
  v14 = [v13 remoteObjectProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__APRequestHandler_updateRequestWithIdentifier_action_completion___block_invoke;
  v17[3] = &unk_278CC1740;
  objc_copyWeak(&v19, buf);
  v15 = v9;
  v18 = v15;
  [v14 updateRequestWithIdentifier:v8 action:a4 completion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __66__APRequestHandler_updateRequestWithIdentifier_action_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[APLogConfig sharedFrameworkConfig];
  v6 = v5;
  if (v3)
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v3;
      v8 = v16;
      v9 = "%{public}@: Update request failure. Error: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_241063000, v10, v11, v9, &v15, v12);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[APLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v8 = v16;
      v9 = "%{public}@: Update request success";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v3);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)resetAccountWithType:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = +[APLogConfig sharedFrameworkConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2050;
    v13 = a3;
    v6 = v11;
    _os_log_impl(&dword_241063000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Reset account with type: %{public}ld", &v10, 0x16u);
  }

  v7 = +[APConnectionNotifier sharedNotifier];
  v8 = [v7 remoteObjectProxy];
  [v8 resetAccountWithType:a3];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)startDaemon
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = +[APLogConfig sharedFrameworkConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_241063000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Start daemon", &v8, 0xCu);
  }

  v5 = +[APConnectionNotifier sharedNotifier];
  v6 = [v5 remoteObjectProxy];
  [v6 start];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)presentProductPageWithTitle:(id)a3 body:(id)a4 approve:(id)a5 decline:(id)a6 itemIdentifier:(id)a7 previewURL:(id)a8 offerName:(id)a9 requestString:(id)a10 requestSummary:(id)a11 priceSummary:(id)a12 isException:(BOOL)a13
{
  v50 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v35 = a4;
  v37 = a7;
  v18 = a8;
  v34 = a12;
  v33 = a11;
  v32 = a10;
  v31 = a9;
  v30 = a6;
  v29 = a5;
  v19 = +[APLogConfig sharedFrameworkConfig];
  if (!v19)
  {
    v19 = +[APLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    v39 = objc_opt_class();
    v40 = 2114;
    v41 = v36;
    v42 = 2114;
    v43 = v35;
    v44 = 2114;
    v45 = v37;
    v46 = 2114;
    v47 = v18;
    v48 = 1026;
    v49 = a13;
    v21 = v39;
    _os_log_impl(&dword_241063000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Present product page. Title: %{public}@, body: %{public}@, itemIdentifier: %{public}@, previewURL: %{public}@, isException: %{public}d", buf, 0x3Au);
  }

  v22 = +[APConnectionNotifier sharedNotifier];
  v23 = [v22 remoteObjectProxy];
  v24 = v23;
  if (v37)
  {
    v25 = v37;
  }

  else
  {
    v25 = &stru_2852E06B8;
  }

  if (v18)
  {
    v26 = v18;
  }

  else
  {
    v26 = &stru_2852E06B8;
  }

  LOBYTE(v28) = a13;
  [v23 presentProductPageWithTitle:v36 body:v35 approve:v29 decline:v30 itemIdentifier:v25 previewURL:v26 offerName:v31 requestString:v32 requestSummary:v33 priceSummary:v34 isException:v28];

  v27 = *MEMORY[0x277D85DE8];
}

+ (void)didReceiveStorePushNotificationWithPayload:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[APLogConfig sharedFrameworkConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v3;
    v6 = v11;
    _os_log_impl(&dword_241063000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Received store push notification. Payload: %{public}@", &v10, 0x16u);
  }

  v7 = +[APConnectionNotifier sharedNotifier];
  v8 = [v7 remoteObjectProxy];
  [v8 didReceiveStorePushNotificationWithPayload:v3];

  v9 = *MEMORY[0x277D85DE8];
}

@end