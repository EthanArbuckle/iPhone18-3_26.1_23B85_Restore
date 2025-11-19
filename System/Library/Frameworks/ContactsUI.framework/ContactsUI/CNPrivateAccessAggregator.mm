@interface CNPrivateAccessAggregator
+ (BOOL)shouldShowPickerTipForBundleIdentifier:(id)a3;
+ (id)allLoggedBundledIdentifiers;
+ (id)log;
+ (id)sharedInstance;
+ (void)recordAccessForBundleIdentifier:(id)a3;
+ (void)recordPickerTipDismissalForBundleIdentifier:(id)a3;
+ (void)resetLog;
- (BOOL)isSupportedOnThisPlatform;
- (BOOL)shouldShowPrivacyTipInPickerForBundleIdentifier:(id)a3;
- (CNPrivateAccessAggregator)init;
- (id)applicationGroupContainerURL;
- (id)bundleIdentifiers;
- (id)fileURLToPrivateAccessAggregator;
- (id)filterExpiredPrivateAccessEntries:(id)a3;
- (id)readBundleIdentifiersFromURLAccessor:(id)a3 error:(id *)a4;
- (void)privacyTipDismissedByUserForBundleIdentifier:(id)a3;
- (void)resetLoggedIdentifiers;
- (void)updateAggregatorWithBundleID:(id)a3;
@end

@implementation CNPrivateAccessAggregator

- (void)privacyTipDismissedByUserForBundleIdentifier:(id)a3
{
  v5 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__32103;
  v22[4] = __Block_byref_object_dispose__32104;
  v23 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CNPrivateAccessAggregator_privacyTipDismissedByUserForBundleIdentifier___block_invoke;
  aBlock[3] = &unk_1E74E4160;
  objc_copyWeak(v20, &location);
  v6 = v5;
  v20[1] = a2;
  v18 = v6;
  v19 = v24;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x1E69966E8] currentEnvironment];
  v9 = [v8 schedulerProvider];
  v10 = [v9 backgroundScheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CNPrivateAccessAggregator_privacyTipDismissedByUserForBundleIdentifier___block_invoke_39;
  v12[3] = &unk_1E74E4188;
  objc_copyWeak(&v16, &location);
  v14 = v22;
  v11 = v7;
  v13 = v11;
  v15 = v24;
  [v10 performBlock:v12 qualityOfService:4];

  objc_destroyWeak(&v16);
  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(v22, 8);

  _Block_object_dispose(v24, 8);
}

void __74__CNPrivateAccessAggregator_privacyTipDismissedByUserForBundleIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v33 = 0;
  v8 = [WeakRetained readBundleIdentifiersFromURLAccessor:v6 error:&v33];

  v9 = v33;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v8)
  {
    v29 = v5;
    v11 = [MEMORY[0x1E695DFA8] setWithArray:v8];
    goto LABEL_3;
  }

  if (!v9)
  {
    v29 = v5;
    v11 = 0;
LABEL_3:
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __74__CNPrivateAccessAggregator_privacyTipDismissedByUserForBundleIdentifier___block_invoke_38;
    v31[3] = &unk_1E74E4138;
    v32 = *(a1 + 32);
    v12 = [v11 objectsPassingTest:v31];
    v13 = v12;
    if (v12 && [v12 count])
    {
      if ([v13 count] >= 2)
      {
        v14 = +[CNPrivateAccessAggregator log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v24 = NSStringFromSelector(*(a1 + 56));
          v25 = *(a1 + 32);
          *buf = 138412546;
          v35 = v24;
          v36 = 2112;
          v37 = v25;
          _os_log_fault_impl(&dword_199A75000, v14, OS_LOG_TYPE_FAULT, "%@: more than 1 entry found for %@; Defaulting to first", buf, 0x16u);
        }
      }

      v15 = [v13 allObjects];
      v16 = [v15 objectAtIndex:0];

      if (([v16 isForClientWithBundleIdentifier:*(a1 + 32)] & 1) == 0)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = *(a1 + 56);
        v27 = [v16 bundleIdentifier];
        [v26 handleFailureInMethod:v28 object:WeakRetained file:@"CNPrivateAccessAggregator.m" lineNumber:387 description:{@"Existing entry is for %@ but the given bundleID is %@", v27, *(a1 + 32)}];
      }

      [v11 removeObject:v16];
    }

    v17 = [[CNPrivateAccessEntry alloc] initWithBundleIdentifier:*(a1 + 32) privateAccessTipDismissedByUser:1];
    [v11 addObject:v17];
    if (v11)
    {
      v18 = [v11 allObjects];
      [v10 addObjectsFromArray:v18];
    }

    v30 = 0;
    v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v30];
    v20 = v30;
    v21 = v20;
    if (v19 || !v20)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v19 writeToURL:v29 atomically:1];
    }

    else
    {
      v22 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = v10;
        v36 = 2112;
        v37 = v21;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Unable to archive contents (%@). Error: %@", buf, 0x16u);
      }
    }

    v5 = v29;
    goto LABEL_24;
  }

  v11 = +[CNPrivateAccessAggregator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v23 = [WeakRetained privateAccessAggregatorURL];
    *buf = 138412546;
    v35 = v23;
    v36 = 2112;
    v37 = v9;
    _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Unable to read contents from Private access aggregator (%@). Error: %@", buf, 0x16u);
  }

LABEL_24:
}

void __74__CNPrivateAccessAggregator_privacyTipDismissedByUserForBundleIdentifier___block_invoke_39(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained fileCoordinator];
  v4 = [WeakRetained privateAccessAggregatorURL];
  v5 = [WeakRetained privateAccessAggregatorURL];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v3 coordinateReadingItemAtURL:v4 options:0 writingItemAtURL:v5 options:0 error:&obj byAccessor:v6];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 24) != 1 || *(*(*(a1 + 40) + 8) + 40))
  {
    v8 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [WeakRetained privateAccessAggregatorURL];
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_fault_impl(&dword_199A75000, v8, OS_LOG_TYPE_FAULT, "Unable to read from / write to Private access aggregator (%@), error: %@", buf, 0x16u);
    }
  }
}

uint64_t __74__CNPrivateAccessAggregator_privacyTipDismissedByUserForBundleIdentifier___block_invoke_38(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[CNPrivateAccessAggregator log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "obj = %@", &v9, 0xCu);
  }

  v7 = [v5 isForClientWithBundleIdentifier:*(a1 + 32)];
  if (v7)
  {
    *a3 = 1;
  }

  return v7;
}

- (BOOL)shouldShowPrivacyTipInPickerForBundleIdentifier:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__32103;
  v35[4] = __Block_byref_object_dispose__32104;
  v36 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__32103;
  v29 = __Block_byref_object_dispose__32104;
  v30 = 0;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__CNPrivateAccessAggregator_shouldShowPrivacyTipInPickerForBundleIdentifier___block_invoke;
  aBlock[3] = &unk_1E74E4228;
  objc_copyWeak(v23, &location);
  v19 = v35;
  v20 = &v25;
  v21 = &v31;
  v6 = v5;
  v23[1] = a2;
  v18 = v6;
  v22 = &v37;
  v7 = _Block_copy(aBlock);
  v8 = [(CNPrivateAccessAggregator *)self fileCoordinator];
  v9 = [(CNPrivateAccessAggregator *)self privateAccessAggregatorURL];
  v10 = (v26 + 5);
  obj = v26[5];
  [v8 coordinateReadingItemAtURL:v9 options:0 error:&obj byAccessor:v7];
  objc_storeStrong(v10, obj);

  if (*(v32 + 24) != 1 || v26[5])
  {
    v11 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = [(CNPrivateAccessAggregator *)self privateAccessAggregatorURL];
      v15 = v26[5];
      *buf = 138412546;
      v42 = v14;
      v43 = 2112;
      v44 = v15;
      _os_log_fault_impl(&dword_199A75000, v11, OS_LOG_TYPE_FAULT, "Unable to read from Private access aggregator (%@), error: %@", buf, 0x16u);
    }
  }

  v12 = *(v38 + 24);

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);
  return v12 & 1;
}

void __77__CNPrivateAccessAggregator_shouldShowPrivacyTipInPickerForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [WeakRetained readBundleIdentifiersFromURLAccessor:v3 error:&obj];

  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40) || !*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v9 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v9 = 0;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __77__CNPrivateAccessAggregator_shouldShowPrivacyTipInPickerForBundleIdentifier___block_invoke_2;
  v21 = &unk_1E74E4200;
  v22 = *(a1 + 32);
  v10 = [v9 _cn_filter:&v18];
  v11 = v10;
  if (v10 && [v10 count])
  {
    if ([v11 count] >= 2)
    {
      v12 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v25 = v14;
        _os_log_fault_impl(&dword_199A75000, v12, OS_LOG_TYPE_FAULT, "Hmmm.. more then one entry is found for %@; Defaulting to first", buf, 0xCu);
      }
    }

    v13 = [v11 objectAtIndex:0];
    if (([v13 isForClientWithBundleIdentifier:*(a1 + 32)] & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = *(a1 + 80);
      v17 = [v13 bundleIdentifier];
      [v15 handleFailureInMethod:v16 object:WeakRetained file:@"CNPrivateAccessAggregator.m" lineNumber:335 description:{@"Existing entry is for %@ but the given bundleID is %@", v17, *(a1 + 32), v18, v19, v20, v21}];
    }

    *(*(*(a1 + 64) + 8) + 24) = [v13 isPrivateAccessTipDismissedByUser] ^ 1;
  }
}

- (void)resetLoggedIdentifiers
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(CNPrivateAccessAggregator *)self isSupportedOnThisPlatform])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__32103;
    v28 = __Block_byref_object_dispose__32104;
    v29 = 0;
    v3 = [MEMORY[0x1E69966E8] currentEnvironment];
    v4 = [v3 entitlementVerifier];
    v5 = *MEMORY[0x1E6996510];
    v6 = (v25 + 5);
    obj = v25[5];
    v7 = [v4 currentProcessHasBooleanEntitlement:v5 error:&obj];
    objc_storeStrong(v6, obj);

    if (v7)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v31 = 0x2020000000;
      v32 = 0;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __51__CNPrivateAccessAggregator_resetLoggedIdentifiers__block_invoke;
      aBlock[3] = &unk_1E74E41D8;
      aBlock[4] = &buf;
      v8 = _Block_copy(aBlock);
      v9 = [MEMORY[0x1E69966E8] currentEnvironment];
      v10 = [v9 schedulerProvider];
      v11 = [v10 backgroundScheduler];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__CNPrivateAccessAggregator_resetLoggedIdentifiers__block_invoke_37;
      v16[3] = &unk_1E74E4188;
      objc_copyWeak(&v20, &location);
      v18 = &v24;
      v12 = v8;
      v17 = v12;
      p_buf = &buf;
      [v11 performBlock:v16 qualityOfService:4];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v13 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x1E69966E8] currentEnvironment];
        v15 = [v14 mainBundleIdentifier];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "%{public}@ is not entitled to reset private contact access records", &buf, 0xCu);
      }
    }

    _Block_object_dispose(&v24, 8);
  }
}

void __51__CNPrivateAccessAggregator_resetLoggedIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:MEMORY[0x1E695E0F0] requiringSecureCoding:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v4 writeToURL:v3 atomically:1];
  }

  else
  {
    v8 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Unable to reset logged identifiers. Error: %@", buf, 0xCu);
    }
  }
}

void __51__CNPrivateAccessAggregator_resetLoggedIdentifiers__block_invoke_37(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained fileCoordinator];
  v4 = [WeakRetained privateAccessAggregatorURL];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  [v3 coordinateWritingItemAtURL:v4 options:0 error:&obj byAccessor:v5];
  objc_storeStrong((v6 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 24) != 1 || *(*(*(a1 + 40) + 8) + 40))
  {
    v7 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = [WeakRetained privateAccessAggregatorURL];
      v18 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Unable to reset Private access aggregator (%@), error: %@", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E69966E8] currentEnvironment];
    v9 = [v8 fileManager];
    v10 = [WeakRetained privateAccessAggregatorURL];
    v11 = [v9 removeItemAtURL:v10];

    v12 = [v11 value];
    LOBYTE(v9) = [v12 BOOLValue];

    if ((v9 & 1) == 0)
    {
      v13 = [v11 error];

      if (v13)
      {
        v14 = [v11 error];
        v15 = [v14 code];

        if (v15 != 4)
        {
          v16 = +[CNPrivateAccessAggregator log];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            v19 = [v11 error];
            *buf = 138412290;
            v22 = v19;
            _os_log_fault_impl(&dword_199A75000, v16, OS_LOG_TYPE_FAULT, "Unable to delete the Private access aggregator file, error: %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (id)bundleIdentifiers
{
  v38 = *MEMORY[0x1E69E9840];
  if ([(CNPrivateAccessAggregator *)self isSupportedOnThisPlatform])
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__32103;
    v32[4] = __Block_byref_object_dispose__32104;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__32103;
    v30 = __Block_byref_object_dispose__32104;
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__32103;
    v20 = __Block_byref_object_dispose__32104;
    v21 = 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CNPrivateAccessAggregator_bundleIdentifiers__block_invoke;
    aBlock[3] = &unk_1E74E41B0;
    objc_copyWeak(&v14, &location);
    aBlock[4] = v32;
    aBlock[5] = &v16;
    aBlock[6] = &v22;
    aBlock[7] = &v26;
    v3 = _Block_copy(aBlock);
    v4 = [(CNPrivateAccessAggregator *)self fileCoordinator];
    v5 = [(CNPrivateAccessAggregator *)self privateAccessAggregatorURL];
    v6 = (v17 + 5);
    obj = v17[5];
    [v4 coordinateReadingItemAtURL:v5 options:0 error:&obj byAccessor:v3];
    objc_storeStrong(v6, obj);

    if (*(v23 + 24) != 1 || v17[5])
    {
      v7 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v10 = [(CNPrivateAccessAggregator *)self privateAccessAggregatorURL];
        v11 = v17[5];
        *buf = 138412546;
        v35 = v10;
        v36 = 2112;
        v37 = v11;
        _os_log_fault_impl(&dword_199A75000, v7, OS_LOG_TYPE_FAULT, "Unable to read from Private access aggregator (%@), error: %@", buf, 0x16u);
      }
    }

    v8 = v27[5];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __46__CNPrivateAccessAggregator_bundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [WeakRetained readBundleIdentifiersFromURLAccessor:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40) || !*(*(*(a1 + 40) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v9 = [WeakRetained filterExpiredPrivateAccessEntries:*(*(*(a1 + 32) + 8) + 40)];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 32) + 8) + 40);
  }

  else
  {
    v12 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(*(a1 + 56) + 8) + 40);
        v19 = [*(*(&v20 + 1) + 8 * v17) bundleIdentifier];
        [v18 addObject:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v15);
  }
}

- (void)updateAggregatorWithBundleID:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(CNPrivateAccessAggregator *)self isSupportedOnThisPlatform])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__32103;
    v36 = __Block_byref_object_dispose__32104;
    v37 = 0;
    v6 = [MEMORY[0x1E69966E8] currentEnvironment];
    v7 = [v6 entitlementVerifier];
    v8 = *MEMORY[0x1E69964E0];
    v9 = (v33 + 5);
    obj = v33[5];
    v10 = [v7 currentProcessHasBooleanEntitlement:v8 error:&obj];
    objc_storeStrong(v9, obj);

    if (v10)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v39 = 0;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__CNPrivateAccessAggregator_updateAggregatorWithBundleID___block_invoke;
      aBlock[3] = &unk_1E74E4160;
      objc_copyWeak(v29, &location);
      v11 = v5;
      v29[1] = a2;
      v27 = v11;
      v28 = buf;
      v12 = _Block_copy(aBlock);
      v13 = [MEMORY[0x1E69966E8] currentEnvironment];
      v14 = [v13 schedulerProvider];
      v15 = [v14 backgroundScheduler];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __58__CNPrivateAccessAggregator_updateAggregatorWithBundleID___block_invoke_35;
      v21[3] = &unk_1E74E4188;
      objc_copyWeak(&v25, &location);
      v23 = &v32;
      v16 = v12;
      v22 = v16;
      v24 = buf;
      [v15 performBlock:v21 qualityOfService:4];

      objc_destroyWeak(&v25);
      objc_destroyWeak(v29);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v17 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [MEMORY[0x1E69966E8] currentEnvironment];
        v19 = [v18 mainBundleIdentifier];
        v20 = v33[5];
        *buf = 138543618;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v20;
        _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Current process(%{public}@) is not entitled to record private access to contacts (error: %@)", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v32, 8);
  }
}

void __58__CNPrivateAccessAggregator_updateAggregatorWithBundleID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v31 = 0;
  v8 = [WeakRetained readBundleIdentifiersFromURLAccessor:v6 error:&v31];

  v9 = v31;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v8)
  {
    v27 = v9;
    v11 = [MEMORY[0x1E695DFA8] setWithArray:v8];
    goto LABEL_3;
  }

  if (!v9)
  {
    v27 = 0;
    v11 = 0;
LABEL_3:
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__CNPrivateAccessAggregator_updateAggregatorWithBundleID___block_invoke_24;
    v29[3] = &unk_1E74E4138;
    v30 = *(a1 + 32);
    v12 = [v11 objectsPassingTest:v29];
    v13 = v12;
    if (v12 && [v12 count])
    {
      v14 = [v13 allObjects];
      v15 = [v14 objectAtIndex:0];

      if (([v15 isForClientWithBundleIdentifier:*(a1 + 32)] & 1) == 0)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = *(a1 + 56);
        v25 = [v15 bundleIdentifier];
        [v24 handleFailureInMethod:v26 object:WeakRetained file:@"CNPrivateAccessAggregator.m" lineNumber:165 description:{@"Existing entry is for %@ but the given bundleID is %@", v25, *(a1 + 32)}];
      }

      v16 = [v15 isPrivateAccessTipDismissedByUser];
      [v11 removeObject:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [[CNPrivateAccessEntry alloc] initWithBundleIdentifier:*(a1 + 32) privateAccessTipDismissedByUser:v16];
    [v11 addObject:v17];
    if (v11)
    {
      v18 = [v11 allObjects];
      [v10 addObjectsFromArray:v18];
    }

    v28 = 0;
    v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v28];
    v20 = v28;
    v21 = v20;
    if (v19 || !v20)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v19 writeToURL:v5 atomically:1];
    }

    else
    {
      v22 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = v10;
        v34 = 2112;
        v35 = v21;
        _os_log_error_impl(&dword_199A75000, v22, OS_LOG_TYPE_ERROR, "Unable to archive contents (%@). Error: %@", buf, 0x16u);
      }
    }

    v9 = v27;
    goto LABEL_21;
  }

  v11 = +[CNPrivateAccessAggregator log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v23 = [WeakRetained privateAccessAggregatorURL];
    *buf = 138412546;
    v33 = v23;
    v34 = 2112;
    v35 = v9;
    _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Unable to read contents from Private access aggregator (%@). Error: %@", buf, 0x16u);
  }

LABEL_21:
}

void __58__CNPrivateAccessAggregator_updateAggregatorWithBundleID___block_invoke_35(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained fileCoordinator];
  v4 = [WeakRetained privateAccessAggregatorURL];
  v5 = [WeakRetained privateAccessAggregatorURL];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v3 coordinateReadingItemAtURL:v4 options:0 writingItemAtURL:v5 options:0 error:&obj byAccessor:v6];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 24) != 1 || *(*(*(a1 + 40) + 8) + 40))
  {
    v8 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [WeakRetained privateAccessAggregatorURL];
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_fault_impl(&dword_199A75000, v8, OS_LOG_TYPE_FAULT, "Unable to read from / write to Private access aggregator (%@), error: %@", buf, 0x16u);
    }
  }
}

uint64_t __58__CNPrivateAccessAggregator_updateAggregatorWithBundleID___block_invoke_24(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[CNPrivateAccessAggregator log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "obj = %@", &v9, 0xCu);
  }

  v7 = [v5 isForClientWithBundleIdentifier:*(a1 + 32)];
  if (v7)
  {
    *a3 = 1;
  }

  return v7;
}

- (BOOL)isSupportedOnThisPlatform
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  if ([v2 isiOSAppOnMac])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 isMacCatalystApp];

    v3 = v5 ^ 1;
  }

  return v3;
}

- (id)filterExpiredPrivateAccessEntries:(id)a3
{
  if (a3)
  {
    v4 = [a3 _cn_filter:&__block_literal_global_21_32141];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)readBundleIdentifiersFromURLAccessor:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6];
  v8 = v7;
  if (!v7 || ![v7 length])
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v9 = MEMORY[0x1E696ACD0];
  v10 = [(CNPrivateAccessAggregator *)self supportedClasses];
  v19 = 0;
  v11 = [v9 unarchivedObjectOfClasses:v10 fromData:v8 error:&v19];
  v12 = v19;

  if (!v11 && v12)
  {
    v13 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Unable to read contents from Private access aggregator (%@). Error: %@", buf, 0x16u);
    }

    if (a4)
    {
      v14 = v12;
      v11 = 0;
      *a4 = v12;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if ([v11 count])
  {
    v16 = [v11 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = +[CNPrivateAccessAggregator log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v18, OS_LOG_TYPE_DEFAULT, "Current format is missing last access time. Lets ignore", buf, 2u);
      }

LABEL_18:
      v11 = 0;
    }
  }

LABEL_10:

  return v11;
}

- (id)fileURLToPrivateAccessAggregator
{
  v2 = [(CNPrivateAccessAggregator *)self applicationGroupContainerURL];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLByAppendingPathComponent:@"ContactsPickerView.privateaccess" isDirectory:0];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)applicationGroupContainerURL
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 fileManager];
  v4 = [v3 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.contacts.private-access"];

  v5 = [v4 value];

  v6 = +[CNPrivateAccessAggregator log];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 value];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_199A75000, v7, OS_LOG_TYPE_DEFAULT, "Container URL: %{public}@", &v12, 0xCu);
    }

    v9 = [v4 value];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 error];
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_199A75000, v7, OS_LOG_TYPE_ERROR, "Unable to get container URL. %{public}@", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (CNPrivateAccessAggregator)init
{
  v13.receiver = self;
  v13.super_class = CNPrivateAccessAggregator;
  v2 = [(CNPrivateAccessAggregator *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    [(CNPrivateAccessAggregator *)v2 setFileCoordinator:v3];

    v4 = [(CNPrivateAccessAggregator *)v2 fileURLToPrivateAccessAggregator];
    [(CNPrivateAccessAggregator *)v2 setPrivateAccessAggregatorURL:v4];

    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    [(CNPrivateAccessAggregator *)v2 setSupportedClasses:v10];

    v11 = v2;
  }

  return v2;
}

+ (void)recordPickerTipDismissalForBundleIdentifier:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Recording limited picker tip dismissal for %@", &v6, 0xCu);
    }

    v5 = +[CNPrivateAccessAggregator sharedInstance];
    [v5 privacyTipDismissedByUserForBundleIdentifier:v3];
  }
}

+ (BOOL)shouldShowPickerTipForBundleIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v4 = +[CNPrivateAccessAggregator sharedInstance];
    v5 = [v4 shouldShowPrivacyTipInPickerForBundleIdentifier:v3];

    v6 = +[CNPrivateAccessAggregator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "Should show limited picker tip: %i", v8, 8u);
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (void)resetLog
{
  v2 = +[CNPrivateAccessAggregator sharedInstance];
  [v2 resetLoggedIdentifiers];
}

+ (id)allLoggedBundledIdentifiers
{
  v2 = +[CNPrivateAccessAggregator sharedInstance];
  v3 = [v2 bundleIdentifiers];

  return v3;
}

+ (void)recordAccessForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CNPrivateAccessAggregator sharedInstance];
  [v4 updateAggregatorWithBundleID:v3];
}

+ (id)sharedInstance
{
  if (sharedInstance_cn_once_token_2 != -1)
  {
    dispatch_once(&sharedInstance_cn_once_token_2, &__block_literal_global_5);
  }

  v3 = sharedInstance_cn_once_object_2;

  return v3;
}

uint64_t __43__CNPrivateAccessAggregator_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CNPrivateAccessAggregator);
  v1 = sharedInstance_cn_once_object_2;
  sharedInstance_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)log
{
  if (log_cn_once_token_1_32172 != -1)
  {
    dispatch_once(&log_cn_once_token_1_32172, &__block_literal_global_32173);
  }

  v3 = log_cn_once_object_1_32174;

  return v3;
}

uint64_t __32__CNPrivateAccessAggregator_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "PrivateAccess");
  v1 = log_cn_once_object_1_32174;
  log_cn_once_object_1_32174 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end