@interface AAAcceptedTermsController
- (BOOL)_shouldRecordTermsForBuddyWithTermsInfo:(id)a3;
- (void)_recordTermsForBuddyWithTermsInfo:(id)a3;
- (void)_repairTermsBackup:(id)a3 forAccount:(id)a4;
- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4;
- (void)saveTermsAcceptance:(id)a3 forAccount:(id)a4;
@end

@implementation AAAcceptedTermsController

- (void)saveTermsAcceptance:(id)a3 forAccount:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AASignpostLogSystem();
  v9 = _AASignpostCreate(v8);
  v11 = v10;

  v12 = _AASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RecordTerms", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _AASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v9;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecordTerms  enableTelemetry=YES ", buf, 0xCu);
  }

  if ([(AAAcceptedTermsController *)self _shouldRecordTermsForBuddyWithTermsInfo:v6])
  {
    [(AAAcceptedTermsController *)self _recordTermsForBuddyWithTermsInfo:v6];
  }

  [v7 _aa_setLastAgreedTermsInfo:v6];
  [v7 aa_setNeedsToVerifyTerms:0];
  v15 = [v7 aa_isAccountClass:@"primary"];

  if (v15)
  {
    v16 = _AALogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Saving terms acceptance: %@", buf, 0xCu);
    }

    v17 = objc_alloc_init(getCDPTermsInfoBackupControllerClass());
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__AAAcceptedTermsController_saveTermsAcceptance_forAccount___block_invoke;
    v23[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
    v23[4] = v9;
    v23[5] = v11;
    [v17 saveTermsAcceptance:v6 completion:v23];
  }

  else
  {
    Nanoseconds = _AASignpostGetNanoseconds(v9, v11);
    v19 = _AASignpostLogSystem();
    v20 = v19;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 67240192;
      LODWORD(v25) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v20, OS_SIGNPOST_INTERVAL_END, v9, "RecordTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
    }

    v21 = _AASignpostLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v25 = v9;
      v26 = 2048;
      v27 = Nanoseconds / 1000000000.0;
      v28 = 1026;
      v29 = 0;
      _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecordTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
    }

    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v17, OS_LOG_TYPE_DEFAULT, "Account is not primary, skip terms save.", buf, 2u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __60__AAAcceptedTermsController_saveTermsAcceptance_forAccount___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 32), *(a1 + 40));
  v5 = _AASignpostLogSystem();
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v13 = 67240192;
    LODWORD(v14) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v6, OS_SIGNPOST_INTERVAL_END, v7, "RecordTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v13, 8u);
  }

  v8 = _AASignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = [v3 code];
    v13 = 134218496;
    v14 = v9;
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = v10;
    _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RecordTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v13, 0x1Cu);
  }

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Save terms acceptance completed with error: %@", &v13, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldRecordTermsForBuddyWithTermsInfo:(id)a3
{
  v3 = [a3 objectForKey:@"proxiedcontext"];
  v4 = v3 == 0;

  return v4;
}

- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 aa_isAccountClass:@"primary"])
  {
    v8 = _AASignpostLogSystem();
    v9 = _AASignpostCreate(v8);
    v11 = v10;

    v12 = _AASignpostLogSystem();
    v13 = v12;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FetchTerms", " enableTelemetry=YES ", buf, 2u);
    }

    v14 = _AASignpostLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v9;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: FetchTerms  enableTelemetry=YES ", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke;
    aBlock[3] = &unk_1E7C9C770;
    v15 = v6;
    v26 = v15;
    v27 = self;
    v29 = v9;
    v30 = v11;
    v28 = v7;
    v16 = _Block_copy(aBlock);
    v17 = objc_alloc_init(getCDPTermsInfoBackupControllerClass());
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke_52;
    v23[3] = &unk_1E7C9C798;
    v24 = v16;
    v18 = v16;
    [v17 fetchTermsAcceptanceForAccount:v15 completion:v23];

    v19 = v26;
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Terms acceptance not available for non-primary AppleAccount";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v21 = [v20 aa_errorWithCode:-15 userInfo:v19];
    (*(v7 + 2))(v7, 0, v21);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) aa_lastAgreedTermsInfo];
  v8 = v7;
  if (v5 || !v7)
  {
    Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
    v16 = _AASignpostLogSystem();
    v17 = v16;
    v18 = *(a1 + 56);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v23 = 67240192;
      LODWORD(v24) = [v6 code];
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v17, OS_SIGNPOST_INTERVAL_END, v18, "FetchTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v23, 8u);
    }

    v14 = _AASignpostLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = Nanoseconds / 1000000000.0;
      v20 = *(a1 + 56);
      v21 = [v6 code];
      v23 = 134218496;
      v24 = v20;
      v25 = 2048;
      v26 = v19;
      v27 = 1026;
      v28 = v21;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v23, 0x1Cu);
    }
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Terms info is missing in SecureBackup. Providing ACAccount result: %@", &v23, 0xCu);
    }

    [*(a1 + 40) _repairTermsBackup:v8 forAccount:*(a1 + 32)];
    v10 = _AASignpostGetNanoseconds(*(a1 + 56), *(a1 + 64));
    v11 = _AASignpostLogSystem();
    v12 = v11;
    v13 = *(a1 + 56);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v23 = 67240192;
      LODWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v12, OS_SIGNPOST_INTERVAL_END, v13, "FetchTerms", " Error=%{public,signpost.telemetry:number1,name=Error}d ", &v23, 8u);
    }

    v14 = _AASignpostLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218496;
      v24 = *(a1 + 56);
      v25 = 2048;
      v26 = v10 / 1000000000.0;
      v27 = 1026;
      v28 = 0;
      _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FetchTerms  Error=%{public,signpost.telemetry:number1,name=Error}d ", &v23, 0x1Cu);
    }
  }

  (*(*(a1 + 48) + 16))();
  v22 = *MEMORY[0x1E69E9840];
}

void __71__AAAcceptedTermsController_fetchTermsAcceptanceForAccount_completion___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Fetched terms from SecureBackup with error %@ and result: %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_recordTermsForBuddyWithTermsInfo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"SLAVersion"];
  v5 = [v3 objectForKeyedSubscript:@"ioswarrantyVersion"];
  if (v4)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = [v4 unsignedIntValue];
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Found device terms version %u in termsInfo. Updating local license agreement status.", buf, 8u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v7 = getBYLicenseAgreementClass_softClass;
    v16 = getBYLicenseAgreementClass_softClass;
    if (!getBYLicenseAgreementClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getBYLicenseAgreementClass_block_invoke;
      v20 = &unk_1E7C9AE88;
      v21 = &v13;
      __getBYLicenseAgreementClass_block_invoke(buf);
      v7 = v14[3];
    }

    v8 = v7;
    _Block_object_dispose(&v13, 8);
    [v7 recordUserAcceptedAgreementVersion:{objc_msgSend(v4, "unsignedIntValue", v13)}];
  }

  if (v5)
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Found device warranty agreement in termsInfo. Updating local warranty agreement status.", buf, 2u);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v10 = getBYWarrantyClass_softClass;
    v16 = getBYWarrantyClass_softClass;
    if (!getBYWarrantyClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getBYWarrantyClass_block_invoke;
      v20 = &unk_1E7C9AE88;
      v21 = &v13;
      __getBYWarrantyClass_block_invoke(buf);
      v10 = v14[3];
    }

    v11 = v10;
    _Block_object_dispose(&v13, 8);
    [v10 acknowledge];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_repairTermsBackup:(id)a3 forAccount:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E6959A48];
  v7 = a4;
  v8 = [v6 defaultStore];
  v9 = [v7 aa_altDSID];

  v10 = [v8 aa_appleAccountWithAltDSID:v9];

  v11 = _AALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Account exists on disk. Proceeding with repair.", buf, 2u);
    }

    v11 = objc_alloc_init(getCDPTermsInfoBackupControllerClass());
    [v11 saveTermsAcceptance:v5 completion:&__block_literal_global_19];
  }

  else if (v12)
  {
    *v13 = 0;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Account does not exist on disk yet. Skipping repair.", v13, 2u);
  }
}

void __59__AAAcceptedTermsController__repairTermsBackup_forAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _AALogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __59__AAAcceptedTermsController__repairTermsBackup_forAccount___block_invoke_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Successfully fixed terms info in secure backup.", v5, 2u);
  }
}

void __59__AAAcceptedTermsController__repairTermsBackup_forAccount___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Fixing terms info failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end