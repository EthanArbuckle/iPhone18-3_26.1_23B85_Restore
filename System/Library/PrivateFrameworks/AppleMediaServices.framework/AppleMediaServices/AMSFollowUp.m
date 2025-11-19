@interface AMSFollowUp
- (AMSFollowUp)init;
- (BOOL)_dateIsInThePast:(id)a3;
- (BOOL)_itemIsExpired:(id)a3;
- (BOOL)_updateGroupedHardwareFollowUpItemWithItems:(id)a3 DSID:(id)a4 config:(id)a5 error:(id *)a6;
- (id)_clearGroupedFollowUpWithBackingIdentifier:(id)a3 config:(id)a4;
- (id)_clearNonGroupedFollowUpWithBackingIdentifier:(id)a3;
- (id)_dropExpiredItems:(id)a3;
- (id)_dsidFromBackingIdentifier:(id)a3;
- (id)_getHardwareFollowUpGroupingEnabledWithBag:(id)a3;
- (id)_getHardwareFollowUpSheetURLWithBag:(id)a3;
- (id)_getHardwareOffersFeatureConfigFromBag;
- (id)_getHardwareOffersSheetURL;
- (id)_groupedHardwareFollowUpItemBackingIdentifierForDSID:(id)a3;
- (id)_isGroupedHardwareOfferWithBackingIdentifier:(id)a3;
- (id)_loadGroupedHardwareOfferFollowUpItemsForDSID:(id)a3;
- (id)_makeGroupedHardwareFollowUpItemFromItems:(id)a3 DSID:(id)a4 config:(id)a5;
- (id)_pendingFollowUpWithBackingIdentifier:(id)a3 error:(id *)a4;
- (id)_postGroupedFollowUpItem:(id)a3 config:(id)a4;
- (id)_postNonGroupedFollowUpItem:(id)a3;
- (id)clearFollowUpItem:(id)a3;
- (id)clearFollowUpWithBackingIdentifier:(id)a3;
- (id)clearFollowUpWithIdentifier:(id)a3 account:(id)a4;
- (id)migrateHardwareFollowUpsIfNeeded;
- (id)pendingFollowUpWithIdentifier:(id)a3 account:(id)a4;
- (id)pendingFollowUps;
- (id)pendingFollowUpsForAccount:(id)a3;
- (id)postFollowUpItem:(id)a3;
- (void)_clearGroupedHardwareFollowUps;
@end

@implementation AMSFollowUp

- (AMSFollowUp)init
{
  v10.receiver = self;
  v10.super_class = AMSFollowUp;
  v2 = [(AMSFollowUp *)&v10 init];
  if (v2)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = getFLFollowUpControllerClass_softClass;
    v15 = getFLFollowUpControllerClass_softClass;
    if (!getFLFollowUpControllerClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getFLFollowUpControllerClass_block_invoke;
      v11[3] = &unk_1E73B3880;
      v11[4] = &v12;
      __getFLFollowUpControllerClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    v5 = [[v3 alloc] initWithClientIdentifier:@"com.apple.AppleMediaServices"];
    followUpController = v2->_followUpController;
    v2->_followUpController = v5;

    v7 = dispatch_queue_create("com.apple.AppleMediaServices.followUpQueue", 0);
    followUpQueue = v2->_followUpQueue;
    v2->_followUpQueue = v7;
  }

  return v2;
}

- (id)clearFollowUpItem:(id)a3
{
  v4 = [a3 backingIdentifier];
  v5 = [(AMSFollowUp *)self clearFollowUpWithBackingIdentifier:v4];

  return v5;
}

- (id)clearFollowUpWithBackingIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v4;
    v7 = v15;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: Clearing follow up with backing identifier: %{public}@", buf, 0x16u);
  }

  v8 = [(AMSFollowUp *)self _isGroupedHardwareOfferWithBackingIdentifier:v4];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__AMSFollowUp_clearFollowUpWithBackingIdentifier___block_invoke;
  v12[3] = &unk_1E73B8180;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [v8 thenWithBinaryPromiseBlock:v12];

  return v10;
}

id __50__AMSFollowUp_clearFollowUpWithBackingIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a2 value])
  {
    v3 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v5 = v13;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_INFO, "%{public}@: Follow up is a hardware offer. Removing it from grouped hardware follow up items list.", buf, 0xCu);
    }

    v6 = [*(a1 + 32) _getHardwareOffersFeatureConfigFromBag];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__AMSFollowUp_clearFollowUpWithBackingIdentifier___block_invoke_14;
    v10[3] = &unk_1E73B8158;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v7;
    v8 = [v6 thenWithBinaryPromiseBlock:v10];
  }

  else
  {
    v8 = [*(a1 + 32) _clearNonGroupedFollowUpWithBackingIdentifier:*(a1 + 40)];
  }

  return v8;
}

- (id)clearFollowUpWithIdentifier:(id)a3 account:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSHashIfNeeded(v7);
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: Clearing follow up (account: %{public}@, identifier: %{public}@)", &v16, 0x20u);
  }

  v13 = [AMSFollowUpItem backingIdentifierForIdentifier:v6 account:v7];
  v14 = [(AMSFollowUp *)self clearFollowUpWithBackingIdentifier:v13];

  return v14;
}

- (id)migrateHardwareFollowUpsIfNeeded
{
  v3 = [(AMSFollowUp *)self _getHardwareOffersFeatureConfigFromBag];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AMSFollowUp_migrateHardwareFollowUpsIfNeeded__block_invoke;
  v6[3] = &unk_1E73B81E8;
  v6[4] = self;
  v4 = [v3 thenWithBinaryPromiseBlock:v6];

  return v4;
}

id __47__AMSFollowUp_migrateHardwareFollowUpsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isGroupingEnabled])
  {
    v4 = [*(a1 + 32) followUpController];
    v65 = 0;
    v5 = [v4 pendingFollowUpItems:&v65];
    v6 = v65;

    if (v6)
    {
      v7 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        *buf = 138543618;
        v68 = v9;
        v69 = 2112;
        v70 = v6;
        v10 = v9;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to run hardware follow up migration. Loading pending follow up items failed with error: %@", buf, 0x16u);
      }

      v11 = [AMSBinaryPromise promiseWithError:v6];
    }

    else
    {
      v15 = [v5 ams_filterUsingTest:&__block_literal_global_64];
      if ([v15 count])
      {
        v58 = v5;
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v57 = v15;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v62;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v62 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v61 + 1) + 8 * i);
              v23 = [[AMSHardwareOfferItem alloc] initWithFollowUpItem:v22];
              v24 = [v22 uniqueIdentifier];
              [v16 setValue:v23 forKey:v24];
            }

            v19 = [v17 countByEnumeratingWithState:&v61 objects:v66 count:16];
          }

          while (v19);
        }

        v25 = *(a1 + 32);
        v26 = [v17 firstObject];
        v27 = [v26 uniqueIdentifier];
        v28 = [v25 _dsidFromBackingIdentifier:v27];

        v29 = [*(a1 + 32) _loadGroupedHardwareOfferFollowUpItemsForDSID:v28];
        v30 = [v29 ams_dictionaryByAddingEntriesFromDictionary:v16];

        v31 = *(a1 + 32);
        v60 = 0;
        v32 = [v31 _updateGroupedHardwareFollowUpItemWithItems:v30 DSID:v28 config:v3 error:&v60];
        v6 = v60;
        if (v32)
        {
          v33 = [v17 ams_mapWithTransform:&__block_literal_global_26];
          v34 = [*(a1 + 32) followUpController];
          v59 = v6;
          v35 = [v34 clearPendingFollowUpItemsWithUniqueIdentifiers:v33 error:&v59];
          v36 = v59;

          if ((v35 & 1) == 0)
          {
            v37 = +[AMSLogConfig sharedFollowUpConfig];
            if (!v37)
            {
              v37 = +[AMSLogConfig sharedConfig];
            }

            v38 = [v37 OSLogObject];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v39 = objc_opt_class();
              *buf = 138543618;
              v68 = v39;
              v69 = 2112;
              v70 = v36;
              v40 = v39;
              _os_log_impl(&dword_192869000, v38, OS_LOG_TYPE_ERROR, "%{public}@: Failed to clear old hardware follow after migration to grouped follow ups. Error: %@", buf, 0x16u);
            }
          }

          v55 = v30;
          v41 = v36;
          v42 = +[AMSLogConfig sharedFollowUpConfig];
          if (!v42)
          {
            v42 = +[AMSLogConfig sharedConfig];
          }

          v43 = [v42 OSLogObject];
          v15 = v57;
          v5 = v58;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v44 = objc_opt_class();
            *buf = 138543362;
            v68 = v44;
            v45 = v44;
            _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_INFO, "%{public}@: Finished grouping hardware follow ups", buf, 0xCu);
          }

          v11 = +[AMSBinaryPromise promiseWithSuccess];

          v6 = v41;
          v30 = v56;
        }

        else
        {
          v50 = +[AMSLogConfig sharedFollowUpConfig];
          if (!v50)
          {
            v50 = +[AMSLogConfig sharedConfig];
          }

          v51 = [v50 OSLogObject];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            *buf = 138543362;
            v68 = v52;
            v53 = v52;
            _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@: Failed to group individual hardware follow ups into a grouped follow up.", buf, 0xCu);
          }

          v11 = [AMSBinaryPromise promiseWithError:v6];
          v5 = v58;
        }
      }

      else
      {
        v46 = +[AMSLogConfig sharedFollowUpConfig];
        if (!v46)
        {
          v46 = +[AMSLogConfig sharedConfig];
        }

        v47 = [v46 OSLogObject];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = objc_opt_class();
          *buf = 138543362;
          v68 = v48;
          v49 = v48;
          _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_INFO, "%{public}@: No hardware follow ups to migrate", buf, 0xCu);
        }

        v11 = +[AMSBinaryPromise promiseWithSuccess];
        v6 = 0;
      }
    }
  }

  else
  {
    v12 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v68 = objc_opt_class();
      v14 = v68;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: Grouped hardware follow ups feature flag is disabled. Running clear...", buf, 0xCu);
    }

    [*(a1 + 32) _clearGroupedHardwareFollowUps];
    v11 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v11;
}

uint64_t __47__AMSFollowUp_migrateHardwareFollowUpsIfNeeded__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 groupIdentifier];
  v4 = getFLGroupIdentifierAppleServices();
  if ([v3 isEqualToString:v4])
  {
    v5 = [v2 uniqueIdentifier];
    if ([v5 containsString:@"com.apple.AMSFollowUpIdentifier.HardwareOffer"])
    {
      v6 = [v2 uniqueIdentifier];
      v7 = [v6 isEqualToString:@"AMSFollowUpGroupedHardwareOfferFollowUpIdentifier"] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pendingFollowUps
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AMSMutablePromise);
  v4 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = objc_opt_class();
    v6 = v15;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: Fetching all pending follow ups", buf, 0xCu);
  }

  v7 = [(AMSFollowUp *)self followUpQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __31__AMSFollowUp_pendingFollowUps__block_invoke;
  v12[3] = &unk_1E73B3DE0;
  v12[4] = self;
  v8 = v3;
  v13 = v8;
  dispatch_async(v7, v12);

  v9 = v13;
  v10 = v8;

  return v8;
}

void __31__AMSFollowUp_pendingFollowUps__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = a1;
  v3 = [*(a1 + 32) followUpController];
  v33 = 0;
  v4 = [v3 pendingFollowUpItems:&v33];
  v28 = v33;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 uniqueIdentifier];
        v13 = [v12 hasPrefix:0x1F072B238];

        if (v13)
        {
          v14 = [[AMSFollowUpItem alloc] initWithFollowUpItem:v11];
          [v2 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v8);
  }

  v15 = +[AMSLogConfig sharedFollowUpConfig];
  v16 = v15;
  if (v28)
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = AMSLogableError(v28);
      *buf = 138543618;
      v35 = v18;
      v36 = 2114;
      v37 = v20;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch pending follow ups with error %{public}@", buf, 0x16u);
    }

    [*(v27 + 40) finishWithError:v28];
  }

  else
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v16 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = [v2 count];
      *buf = 138543618;
      v35 = v22;
      v36 = 2050;
      v37 = v24;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_INFO, "%{public}@: Fetched %{public}lu follow ups", buf, 0x16u);
    }

    v25 = *(v27 + 40);
    v26 = [v2 copy];
    [v25 finishWithResult:v26];
  }
}

- (id)pendingFollowUpsForAccount:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSHashIfNeeded(v4);
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: Fetching pending follow up for account %{public}@", buf, 0x16u);
  }

  v10 = [(AMSFollowUp *)self pendingFollowUps];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__AMSFollowUp_pendingFollowUpsForAccount___block_invoke;
  v14[3] = &unk_1E73B8238;
  v15 = v4;
  v16 = self;
  v11 = v4;
  v12 = [v10 thenWithBlock:v14];

  return v12;
}

id __42__AMSFollowUp_pendingFollowUpsForAccount___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __42__AMSFollowUp_pendingFollowUpsForAccount___block_invoke_2;
  v20 = &unk_1E73B8210;
  v21 = *(a1 + 32);
  v4 = [a2 ams_filterUsingTest:&v17];
  v5 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 count];
    v10 = AMSHashIfNeeded(*(a1 + 32));
    *buf = 138543874;
    v23 = v7;
    v24 = 2050;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: Fetched %{public}ld follow ups for account %{public}@", buf, 0x20u);
  }

  if ([v4 count])
  {
    v11 = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [*(a1 + 32) hashedDescription];
    v14 = [v12 stringWithFormat:@"No follow-ups exist for %@.", v13, v17, v18, v19, v20];

    v15 = AMSError(7, @"Item Not Found", v14, 0);
    v11 = [AMSPromise promiseWithError:v15];
  }

  return v11;
}

uint64_t __42__AMSFollowUp_pendingFollowUpsForAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ams_DSID];
  if (v4)
  {
    v5 = [v3 account];
    v6 = [v5 ams_DSID];
    v7 = [*(a1 + 32) ams_DSID];
    v8 = [v6 isEqualToNumber:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)pendingFollowUpWithIdentifier:(id)a3 account:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSMutablePromise);
  v9 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = AMSHashIfNeeded(v7);
    *buf = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v13;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@: Fetching pending follow up (account: %{public}@, identifier: %{public}@)", buf, 0x20u);
  }

  v14 = [(AMSFollowUp *)self followUpQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53__AMSFollowUp_pendingFollowUpWithIdentifier_account___block_invoke;
  v21[3] = &unk_1E73B72B8;
  v22 = v6;
  v23 = v7;
  v24 = self;
  v15 = v8;
  v25 = v15;
  v16 = v7;
  v17 = v6;
  dispatch_async(v14, v21);

  v18 = v25;
  v19 = v15;

  return v15;
}

void __53__AMSFollowUp_pendingFollowUpWithIdentifier_account___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [AMSFollowUpItem backingIdentifierForIdentifier:*(a1 + 32) account:*(a1 + 40)];
  v3 = *(a1 + 48);
  v30 = 0;
  v4 = [v3 _pendingFollowUpWithBackingIdentifier:v2 error:&v30];
  v5 = v30;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = AMSHashIfNeeded(v9);
      v12 = AMSLogableError(v5);
      v13 = *(a1 + 32);
      *buf = 138544130;
      v32 = v8;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: Failed to fetch pending follow up (account: %{public}@, error: %{public}@, identifier: %{public}@)", buf, 0x2Au);
    }

    [*(a1 + 56) finishWithError:v5];
  }

  else
  {
    v14 = +[AMSLogConfig sharedFollowUpConfig];
    v15 = v14;
    if (v4)
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v15 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = *(a1 + 40);
        v19 = v17;
        v20 = AMSHashIfNeeded(v18);
        v21 = *(a1 + 32);
        *buf = 138543874;
        v32 = v17;
        v33 = 2114;
        v34 = v20;
        v35 = 2114;
        v36 = v21;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_INFO, "%{public}@: Fetched pending follow up (account: %{public}@, identifier: %{public}@)", buf, 0x20u);
      }

      [*(a1 + 56) finishWithResult:v4];
    }

    else
    {
      if (!v14)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v15 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = *(a1 + 40);
        v25 = v23;
        v26 = AMSHashIfNeeded(v24);
        v27 = *(a1 + 32);
        *buf = 138543874;
        v32 = v23;
        v33 = 2114;
        v34 = v26;
        v35 = 2114;
        v36 = v27;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch pending follow up as no item could be found (account: %{public}@, identifier: %{public}@)", buf, 0x20u);
      }

      v28 = *(a1 + 56);
      v29 = AMSError(7, @"Item Not Found", @"Follow up item could not be found", 0);
      [v28 finishWithError:v29];
    }
  }
}

- (id)postFollowUpItem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 identifier];
    *buf = 138543618;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: Posting follow up item with identifier %{public}@", buf, 0x16u);
  }

  if ([v4 isHardwareOffer])
  {
    v10 = [(AMSFollowUp *)self _getHardwareOffersFeatureConfigFromBag];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__AMSFollowUp_postFollowUpItem___block_invoke;
    v13[3] = &unk_1E73B8260;
    v13[4] = self;
    v14 = v4;
    v11 = [v10 thenWithBlock:v13];
  }

  else
  {
    v11 = objc_alloc_init(AMSMutablePromise);
    v10 = [(AMSFollowUp *)self _postNonGroupedFollowUpItem:v4];
    [(AMSMutablePromise *)v11 finishWithPromise:v10];
  }

  return v11;
}

AMSMutablePromise *__32__AMSFollowUp_postFollowUpItem___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  if ([v3 isGroupingEnabled])
  {
    v5 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 identifier];
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: Follow up with identifier %{public}@ is a hardware offer. Adding/updating it to grouped hardware follow up items list.", &v14, 0x16u);
    }

    v11 = [*(a1 + 32) _postGroupedFollowUpItem:*(a1 + 40) config:v3];
  }

  else
  {
    v11 = [*(a1 + 32) _postNonGroupedFollowUpItem:*(a1 + 40)];
  }

  v12 = v11;
  [(AMSMutablePromise *)v4 finishWithPromise:v11];

  return v4;
}

- (id)_clearGroupedFollowUpWithBackingIdentifier:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSMutableBinaryPromise);
  v9 = [(AMSFollowUp *)self followUpQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__AMSFollowUp__clearGroupedFollowUpWithBackingIdentifier_config___block_invoke;
  v16[3] = &unk_1E73B72B8;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __65__AMSFollowUp__clearGroupedFollowUpWithBackingIdentifier_config___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _dsidFromBackingIdentifier:*(a1 + 40)];
  v3 = [*(a1 + 32) _loadGroupedHardwareOfferFollowUpItemsForDSID:v2];
  v11[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v3 ams_dictionaryRemovingKeys:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v10 = 0;
  LODWORD(v4) = [v6 _updateGroupedHardwareFollowUpItemWithItems:v5 DSID:v2 config:v7 error:&v10];
  v8 = v10;
  v9 = *(a1 + 56);
  if (v4)
  {
    [v9 finishWithSuccess];
  }

  else
  {
    [v9 finishWithError:v8];
  }
}

- (id)_clearNonGroupedFollowUpWithBackingIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutableBinaryPromise);
  v6 = [(AMSFollowUp *)self followUpQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AMSFollowUp__clearNonGroupedFollowUpWithBackingIdentifier___block_invoke;
  block[3] = &unk_1E73B71B0;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_async(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __61__AMSFollowUp__clearNonGroupedFollowUpWithBackingIdentifier___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) followUpController];
  v21[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v16 = 0;
  v4 = [v2 clearPendingFollowUpItemsWithUniqueIdentifiers:v3 error:&v16];
  v5 = v16;

  if (!v5)
  {
    v6 = +[AMSLogConfig sharedFollowUpConfig];
    v7 = v6;
    if (v4)
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      *buf = 138543618;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      v11 = v9;
      v12 = "%{public}@: Cleared follow up with backing identifier: %{public}@";
      v13 = v8;
      v14 = 22;
    }

    else
    {
      if (!v6)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v15 = objc_opt_class();
      *buf = 138543362;
      v18 = v15;
      v11 = v15;
      v12 = "%{public}@: Follow up clear finished without clearing anything";
      v13 = v8;
      v14 = 12;
    }

    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);

LABEL_13:
    [*(a1 + 48) finishWithSuccess];
    goto LABEL_14;
  }

  [*(a1 + 48) finishWithError:v5];
LABEL_14:
}

- (id)_pendingFollowUpWithBackingIdentifier:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSFollowUp *)self followUpController];
  v28 = 0;
  v8 = [v7 pendingFollowUpItems:&v28];
  v9 = v28;

  if (v9)
  {
    if (a4)
    {
      v10 = v9;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v18 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = v20;
        v22 = AMSLogableError(v9);
        *buf = 138543874;
        v31 = v20;
        v32 = 2112;
        v33 = v6;
        v34 = 2114;
        v35 = v22;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch pending follow ups with identifier: %@ error: %{public}@", buf, 0x20u);
      }

      v11 = 0;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v8;
    v11 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v15 uniqueIdentifier];
          v17 = [v6 isEqualToString:v16];

          if (v17)
          {
            v11 = [[AMSFollowUpItem alloc] initWithFollowUpItem:v15];
            goto LABEL_19;
          }
        }

        v11 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  return v11;
}

- (id)_postGroupedFollowUpItem:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSMutablePromise);
  v9 = [(AMSFollowUp *)self followUpQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__AMSFollowUp__postGroupedFollowUpItem_config___block_invoke;
  v16[3] = &unk_1E73B72B8;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __47__AMSFollowUp__postGroupedFollowUpItem_config___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) account];
  v4 = [v3 ams_DSID];
  v5 = [v2 _loadGroupedHardwareOfferFollowUpItemsForDSID:v4];

  v6 = [*(a1 + 40) backingIdentifier];
  v34 = v6;
  v7 = [[AMSHardwareOfferItem alloc] initWithAMSFollowUpItem:*(a1 + 40)];
  v35[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v9 = [v5 ams_dictionaryByAddingEntriesFromDictionary:v8];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) account];
  v12 = [v11 ams_DSID];
  v13 = *(a1 + 48);
  v27 = 0;
  LODWORD(v8) = [v10 _updateGroupedHardwareFollowUpItemWithItems:v9 DSID:v12 config:v13 error:&v27];
  v14 = v27;

  v15 = +[AMSLogConfig sharedFollowUpConfig];
  v16 = v15;
  if (v8)
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = *(a1 + 40);
      v20 = v18;
      v21 = [v19 identifier];
      *buf = 138543618;
      v29 = v18;
      v30 = 2114;
      v31 = v21;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_INFO, "%{public}@: Successfully added follow up with identifier: %{public}@ to grouped hardware follow ups", buf, 0x16u);
    }

    [*(a1 + 56) finishWithResult:&unk_1F07795C8];
  }

  else
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v16 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = *(a1 + 40);
      v25 = v23;
      v26 = [v24 identifier];
      *buf = 138543874;
      v29 = v23;
      v30 = 2114;
      v31 = v26;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed to post follow up item with identifier %{public}@; Error: %@", buf, 0x20u);
    }

    [*(a1 + 56) finishWithError:v14];
  }
}

- (id)_postNonGroupedFollowUpItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSFollowUp *)self followUpQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AMSFollowUp__postNonGroupedFollowUpItem___block_invoke;
  block[3] = &unk_1E73B71B0;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_async(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __43__AMSFollowUp__postNonGroupedFollowUpItem___block_invoke(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] backingIdentifier];
  v28 = 0;
  v4 = [v2 _pendingFollowUpWithBackingIdentifier:v3 error:&v28];
  v5 = v28;

  if (v5)
  {
    v6 = a1[6];
LABEL_13:
    [v6 finishWithError:v5];
    goto LABEL_14;
  }

  if (([a1[5] shouldOverwriteItem:v4] & 1) == 0)
  {
    v9 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = a1[5];
      v13 = v11;
      v14 = [v12 identifier];
      *buf = 138543618;
      v30 = v11;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to post follow up item with identifier %{public}@; Unable to overwrite a follow up with higher priority.", buf, 0x16u);
    }

    v15 = a1[6];
    v5 = AMSError(6, @"Unable To Overwrite", @"Unable to overwrite a follow up with higher priority", 0);
    v6 = v15;
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = [v4 priority];
    if (v7 == [a1[5] priority])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  v16 = [a1[5] generateItem];
  v17 = [a1[4] followUpController];
  v27 = 0;
  v18 = [v17 postFollowUpItem:v16 error:&v27];
  v5 = v27;

  if (v18)
  {
    v19 = a1[6];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [v19 finishWithResult:v20];
  }

  else
  {
    if (v5)
    {
      v21 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = a1[5];
        v25 = v23;
        v26 = [v24 identifier];
        *buf = 138543618;
        v30 = v23;
        v31 = 2114;
        v32 = v26;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_INFO, "%{public}@: Successfully posted follow up item with identifier %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v5 = AMSError(0, @"Follow Up Post Failed", @"Follow up post failed for an unknown reason", 0);
    }

    [a1[6] finishWithError:v5];
  }

LABEL_14:
}

- (id)_isGroupedHardwareOfferWithBackingIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSFollowUp *)self followUpQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AMSFollowUp__isGroupedHardwareOfferWithBackingIdentifier___block_invoke;
  block[3] = &unk_1E73B71B0;
  block[4] = self;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  dispatch_async(v6, block);

  v9 = v14;
  v10 = v7;

  return v7;
}

void __60__AMSFollowUp__isGroupedHardwareOfferWithBackingIdentifier___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _dsidFromBackingIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) _loadGroupedHardwareOfferFollowUpItemsForDSID:v8];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3 != 0;

  v5 = *(a1 + 48);
  v6 = [AMSBoolean BOOLeanWithBool:v4];
  v7 = [AMSPromise promiseWithResult:v6];
  [v5 finishWithPromise:v7];
}

- (id)_getHardwareOffersFeatureConfigFromBag
{
  v17 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v3 = [AMSBag bagForProfile:@"AppStore" profileVersion:@"1"];
    v4 = [(AMSFollowUp *)self _getHardwareFollowUpGroupingEnabledWithBag:v3];
    v5 = [(AMSFollowUp *)self _getHardwareFollowUpSheetURLWithBag:v3];
    v14[0] = v4;
    v14[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v7 = [AMSPromise promiseWithAll:v6];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__AMSFollowUp__getHardwareOffersFeatureConfigFromBag__block_invoke;
    v13[3] = &unk_1E73B3028;
    v13[4] = self;
    v8 = [v7 thenWithBlock:v13];
  }

  else
  {
    v9 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v11 = v16;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@: Hardware offer grouping disabled with OS feature flag", buf, 0xCu);
    }

    v3 = [[AMSHardwareOffersConfig alloc] initWithIsGroupingEnabled:0 sheetURL:&stru_1F071BA78];
    v8 = [AMSPromise promiseWithResult:v3];
  }

  return v8;
}

id __53__AMSFollowUp__getHardwareOffersFeatureConfigFromBag__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 value];

  v5 = [v2 objectAtIndexedSubscript:1];

  v6 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = @"false";
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    if (v4)
    {
      v9 = @"true";
    }

    v17 = v9;
    v18 = 2112;
    v19 = v5;
    v10 = v8;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@: Hardware offer configuration: isGroupingEnabled: %@, sheet URL: %@", &v14, 0x20u);
  }

  v11 = [[AMSHardwareOffersConfig alloc] initWithIsGroupingEnabled:v4 sheetURL:v5];
  v12 = [AMSPromise promiseWithResult:v11];

  return v12;
}

- (id)_getHardwareFollowUpGroupingEnabledWithBag:(id)a3
{
  v4 = [a3 BOOLForKey:@"follow-up-hardware-follow-up-grouping-enabled"];
  v5 = [v4 valuePromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__AMSFollowUp__getHardwareFollowUpGroupingEnabledWithBag___block_invoke;
  v10[3] = &unk_1E73B3F70;
  v10[4] = self;
  v6 = [v5 thenWithBlock:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSFollowUp__getHardwareFollowUpGroupingEnabledWithBag___block_invoke_84;
  v9[3] = &unk_1E73B8288;
  v9[4] = self;
  v7 = [v6 catchWithBlock:v9];

  return v7;
}

id __58__AMSFollowUp__getHardwareFollowUpGroupingEnabledWithBag___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = @"false";
    if (v3)
    {
      v7 = @"true";
    }

    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v8 = v6;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@: Hardware offer grouping bag feature flag is enabled: %@", &v12, 0x16u);
  }

  v9 = [AMSBoolean BOOLeanWithBool:v3];
  v10 = [AMSPromise promiseWithResult:v9];

  return v10;
}

id __58__AMSFollowUp__getHardwareFollowUpGroupingEnabledWithBag___block_invoke_84()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v2 = v7;
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_INFO, "%{public}@: Hardware offer grouping bag feature flag is enabled: NO (bag key not found)", &v6, 0xCu);
  }

  v3 = [AMSBoolean BOOLeanWithBool:0];
  v4 = [AMSPromise promiseWithResult:v3];

  return v4;
}

- (id)_getHardwareFollowUpSheetURLWithBag:(id)a3
{
  v4 = [a3 stringForKey:@"follow-up-hardware-follow-up-sheet-url"];
  v5 = [v4 valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AMSFollowUp__getHardwareFollowUpSheetURLWithBag___block_invoke;
  v8[3] = &unk_1E73B8288;
  v8[4] = self;
  v6 = [v5 catchWithBlock:v8];

  return v6;
}

id __51__AMSFollowUp__getHardwareFollowUpSheetURLWithBag___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138544130;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = @"follow-up-hardware-follow-up-sheet-url";
    v12 = 2112;
    v13 = @"https://amsui.apple.com/dynamic/marketing#route=hardwareOffers";
    v14 = 2112;
    v15 = v2;
    v5 = v9;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load hardware offers sheet URL from bag with key %@. Using fallback URL: %@ Error: %@", &v8, 0x2Au);
  }

  v6 = [AMSPromise promiseWithResult:@"https://amsui.apple.com/dynamic/marketing#route=hardwareOffers"];

  return v6;
}

- (id)_loadGroupedHardwareOfferFollowUpItemsForDSID:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [(AMSFollowUp *)self _groupedHardwareFollowUpItemBackingIdentifierForDSID:a3];
  v26 = 0;
  v5 = [(AMSFollowUp *)self _pendingFollowUpWithBackingIdentifier:v4 error:&v26];
  v6 = v26;
  if (v6)
  {
    v7 = v6;
    v8 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v28 = v10;
      v29 = 2112;
      v30 = v7;
      v11 = v10;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load active hardware offers. Assuming no existing offers were present. Error: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [v5 userInfo];
    v8 = [v12 objectForKeyedSubscript:@"AMSFollowUpGroupedFollowUpItemsKey"];

    if (v8)
    {
      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v9 = [v13 setWithObjects:{v14, v15, v16, objc_opt_class(), 0}];
      v25 = 0;
      v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v9 fromData:v8 error:&v25];
      v7 = v25;
      if (v17)
      {
        goto LABEL_20;
      }

      v18 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        *buf = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v7;
        v21 = v20;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode active hardware offers. Assuming no existing offers were present. Error: %@", buf, 0x16u);
      }
    }

    else
    {
      v9 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v9 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = @"AMSFollowUpGroupedFollowUpItemsKey";
        v23 = v22;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load active hardware offers. userInfo is missing %@ key. Assuming no existing offers were present.", buf, 0x16u);
      }

      v7 = 0;
    }
  }

  v17 = MEMORY[0x1E695E0F8];
LABEL_20:

  return v17;
}

- (BOOL)_updateGroupedHardwareFollowUpItemWithItems:(id)a3 DSID:(id)a4 config:(id)a5 error:(id *)a6
{
  v51[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [(AMSFollowUp *)self _dropExpiredItems:a3];
  v40 = v10;
  if ([v11 count])
  {
    v12 = [(AMSFollowUp *)self _makeGroupedHardwareFollowUpItemFromItems:v11 DSID:v9 config:v10];
    v13 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v44 = objc_opt_class();
      v15 = v44;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: Posting/updating grouped hardware offer follow up item", buf, 0xCu);
    }

    v16 = [(AMSFollowUp *)self followUpController];
    v41 = 0;
    v17 = [v16 postFollowUpItem:v12 error:&v41];
    v18 = v41;

    v19 = [v12 uniqueIdentifier];

    v20 = @"post";
    if (v17)
    {
LABEL_7:
      v21 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        *buf = 138543874;
        v44 = v23;
        v45 = 2114;
        v46 = v20;
        v47 = 2114;
        v48 = v19;
        v24 = v23;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_INFO, "%{public}@: Successfully  %{public}@ed grouped hardware offer follow up with identifier %{public}@", buf, 0x20u);
      }

      v25 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v26 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v44 = objc_opt_class();
      v28 = v44;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_INFO, "%{public}@: No hardware offer follow ups remaining. Clearing grouped hardware offer follow up item.", buf, 0xCu);
    }

    v19 = [(AMSFollowUp *)self _groupedHardwareFollowUpItemBackingIdentifierForDSID:v9];
    v29 = [(AMSFollowUp *)self followUpController];
    v51[0] = v19;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v42 = 0;
    v31 = [v29 clearPendingFollowUpItemsWithUniqueIdentifiers:v30 error:&v42];
    v18 = v42;

    v20 = @"clear";
    if (v31)
    {
      goto LABEL_7;
    }
  }

  if (!v18)
  {
    v18 = AMSError(0, @"Grouped hardware offer follow up action failed", @"Grouped hardware offer follow up action failed for unknown reason", 0);
  }

  v32 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v32)
  {
    v32 = +[AMSLogConfig sharedConfig];
  }

  v33 = [v32 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = objc_opt_class();
    *buf = 138544130;
    v44 = v34;
    v45 = 2114;
    v46 = v20;
    v47 = 2114;
    v48 = v19;
    v49 = 2114;
    v50 = v18;
    v35 = v34;
    _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_INFO, "%{public}@: Failed to %{public}@ grouped hardware offer follow up with identifier: %{public}@. Reason: %{public}@", buf, 0x2Au);
  }

  if (v39)
  {
    v36 = v18;
    v25 = 0;
    *v39 = v18;
  }

  else
  {
    v25 = 0;
  }

LABEL_26:

  return v25;
}

- (id)_dropExpiredItems:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = v4;
  v6 = [v4 allValues];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = 0x1E73B0000uLL;
    v24 = self;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([(AMSFollowUp *)self _itemIsExpired:v12])
        {
          v13 = [*(v10 + 3552) sharedFollowUpConfig];
          if (!v13)
          {
            v13 = [*(v10 + 3552) sharedConfig];
          }

          v14 = [v13 OSLogObject];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = v8;
            v16 = v6;
            v17 = v5;
            v18 = objc_opt_class();
            v19 = v9;
            v20 = v18;
            v21 = [v12 backingIdentifier];
            *buf = 138543618;
            v30 = v18;
            v5 = v17;
            v6 = v16;
            v8 = v15;
            v31 = 2114;
            v32 = v21;
            _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@: Dropping expired hardware follow up from internal tracking list. Backing identifier: %{public}@", buf, 0x16u);

            v9 = v19;
            self = v24;
            v10 = 0x1E73B0000;
          }
        }

        else
        {
          v13 = [v12 backingIdentifier];
          [v5 setObject:v12 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_itemIsExpired:(id)a3
{
  v4 = a3;
  v5 = [v4 expiration];

  if (v5)
  {
    v6 = [v4 expiration];
    v7 = [(AMSFollowUp *)self _dateIsInThePast:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_dateIsInThePast:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  LOBYTE(self) = [(AMSFollowUp *)self _date:v6 isLaterThanDate:v5];

  return self;
}

- (id)_makeGroupedHardwareFollowUpItemFromItems:(id)a3 DSID:(id)a4 config:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v38 = a4;
  v9 = a5;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v10 = getFLFollowUpItemClass_softClass;
  v43 = getFLFollowUpItemClass_softClass;
  if (!getFLFollowUpItemClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFLFollowUpItemClass_block_invoke;
    v50 = &unk_1E73B3880;
    v51 = &v40;
    __getFLFollowUpItemClass_block_invoke(buf);
    v10 = v41[3];
  }

  v11 = v10;
  _Block_object_dispose(&v40, 8);
  v12 = objc_alloc_init(v10);
  v13 = [AMSBag bagForProfile:@"AppStore" profileVersion:@"1"];
  v14 = AMSLocalizedString(@"SERVICES_MULTI_FOLLOW_LIST_TITLE", v13);
  v15 = v14;
  v16 = @"Services Included with Purchase";
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [AMSHardwareOfferItem latestExpirationDateFromItems:v8];
  [v12 setExpirationDate:v18];

  [v12 setExtensionIdentifier:@"com.apple.AppleMediaServices.FollowUpExtension"];
  v19 = getFLGroupIdentifierAppleServices();
  [v12 setGroupIdentifier:v19];

  [v12 setInformativeFooterText:0];
  [v12 setInformativeText:0];
  [v12 setTitle:v17];

  v20 = [(AMSFollowUp *)self _groupedHardwareFollowUpItemBackingIdentifierForDSID:v38];
  [v12 setUniqueIdentifier:v20];

  LOBYTE(v20) = [AMSHardwareOfferItem shouldBadgeAppWithItems:v8];
  v21 = [AMSHardwareOfferItem shouldBadgeRowWithItems:v8];
  if ((v20 & 1) == 0)
  {
    if (v21)
    {
      v22 = 32;
    }

    else
    {
      v22 = 16;
    }

    [v12 setDisplayStyle:{objc_msgSend(v12, "displayStyle") | v22}];
  }

  v39 = 0;
  v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v39];
  v24 = v39;
  if (!v23)
  {
    v25 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      v28 = v27;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save grouped hardware offer follow up items: %@", buf, 0x16u);
    }
  }

  v47 = @"AMSFollowUpGroupedFollowUpItemsKey";
  v48 = v23;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  [v12 setUserInfo:v29];

  [v12 setDisplayStyle:{objc_msgSend(v12, "displayStyle") | 2}];
  v30 = MEMORY[0x1E6997AC0];
  v31 = MEMORY[0x1E695DFF8];
  v32 = [v9 sheetURL];
  v33 = [v31 URLWithString:v32];
  v34 = [v30 actionWithLabel:&stru_1F071BA78 url:v33];

  v45 = 0x1F072AF98;
  v46 = MEMORY[0x1E695E118];
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  [v34 setUserInfo:v35];

  v44 = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  [v12 setActions:v36];

  return v12;
}

- (id)_getHardwareOffersSheetURL
{
  v2 = [AMSBag bagForProfile:@"AppStore" profileVersion:@"1"];
  v3 = [v2 stringForKey:@"follow-up-hardware-follow-up-sheet-url"];
  v4 = [v3 valuePromise];

  return v4;
}

- (id)_dsidFromBackingIdentifier:(id)a3
{
  v3 = [AMSFollowUpItem componentsFromBackingIdentifier:a3];
  v4 = [v3 objectForKeyedSubscript:0x1F071B5D8];

  return v4;
}

- (id)_groupedHardwareFollowUpItemBackingIdentifierForDSID:(id)a3
{
  if (a3)
  {
    v4 = [AMSFollowUpItem backingIdentifierForIdentifier:@"AMSFollowUpGroupedHardwareOfferFollowUpIdentifier" DSID:a3];
  }

  else
  {
    v4 = @"AMSFollowUpGroupedHardwareOfferFollowUpIdentifier";
  }

  return v4;
}

- (void)_clearGroupedHardwareFollowUps
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(AMSFollowUp *)self followUpController];
  v25 = 0;
  v4 = [v3 pendingFollowUpItems:&v25];
  v5 = v25;

  if (!v5)
  {
    v6 = [v4 ams_filterUsingTest:&__block_literal_global_114];
    if (![v6 count])
    {
      v7 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v7 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        *buf = 138543362;
        v27 = v21;
        v22 = v21;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@: No grouped hardware follow ups to clear", buf, 0xCu);
      }

      v5 = 0;
      goto LABEL_23;
    }

    v7 = [v6 ams_mapWithTransform:&__block_literal_global_117];
    v10 = [(AMSFollowUp *)self followUpController];
    v24 = 0;
    v11 = [v10 clearPendingFollowUpItemsWithUniqueIdentifiers:v7 error:&v24];
    v5 = v24;

    v12 = +[AMSLogConfig sharedFollowUpConfig];
    v13 = v12;
    if (v11)
    {
      if (!v12)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      v15 = objc_opt_class();
      *buf = 138543362;
      v27 = v15;
      v16 = v15;
      v17 = "%{public}@: Cleared grouped hardware follow ups";
      v18 = v14;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 12;
    }

    else
    {
      if (!v12)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = objc_opt_class();
      *buf = 138543618;
      v27 = v23;
      v28 = 2112;
      v29 = v5;
      v16 = v23;
      v17 = "%{public}@: Failed to clear grouped hardware follow ups. Error: %@";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
    }

    _os_log_impl(&dword_192869000, v18, v19, v17, buf, v20);

LABEL_22:
LABEL_23:

    goto LABEL_24;
  }

  v6 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = v5;
    v9 = v8;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to run hardware follow up migration. Loading pending follow up items failed with error: %@", buf, 0x16u);
  }

LABEL_24:
}

uint64_t __45__AMSFollowUp__clearGroupedHardwareFollowUps__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 groupIdentifier];
  v4 = getFLGroupIdentifierAppleServices();
  if ([v3 isEqualToString:v4])
  {
    v5 = [v2 uniqueIdentifier];
    v6 = [v5 containsString:@"AMSFollowUpGroupedHardwareOfferFollowUpIdentifier"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end