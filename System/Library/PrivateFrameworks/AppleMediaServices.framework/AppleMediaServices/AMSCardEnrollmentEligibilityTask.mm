@interface AMSCardEnrollmentEligibilityTask
- (AMSCardEnrollmentEligibilityTask)initWithBag:(id)a3;
- (AMSCardEnrollmentEligibilityTask)initWithBag:(id)a3 countryCode:(id)a4;
- (AMSCardEnrollmentEligibilityTask)initWithCountryCode:(id)a3;
- (id)_checkForCombinediTunesAccount;
- (id)_checkThatSilentEnrollmentIsEnabled;
- (id)_createEligibilityRequestWithBag:(id)a3 iTunesAccount:(id)a4 iCloudAccount:(id)a5 cardType:(unint64_t)a6;
- (id)_performSilentEnrollmentCheckWithRequest:(id)a3;
- (id)performCanWriteBillingInfoQueryWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (unint64_t)_cardTypeForPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (void)canWriteBillingInfoWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4 completion:(id)a5;
@end

@implementation AMSCardEnrollmentEligibilityTask

- (AMSCardEnrollmentEligibilityTask)initWithBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSCardEnrollmentEligibilityTask;
  v6 = [(AMSTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
  }

  return v7;
}

- (AMSCardEnrollmentEligibilityTask)initWithCountryCode:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSCardEnrollmentEligibilityTask;
  v5 = [(AMSTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;
  }

  return v5;
}

- (AMSCardEnrollmentEligibilityTask)initWithBag:(id)a3 countryCode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSCardEnrollmentEligibilityTask;
  v9 = [(AMSTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, a3);
    v11 = [v8 copy];
    countryCode = v10->_countryCode;
    v10->_countryCode = v11;
  }

  return v10;
}

- (void)canWriteBillingInfoWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(AMSCardEnrollmentEligibilityTask *)self performCanWriteBillingInfoQueryWithPassTypeIdentifier:a3 serialNumber:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102__AMSCardEnrollmentEligibilityTask_canWriteBillingInfoWithPassTypeIdentifier_serialNumber_completion___block_invoke;
  v11[3] = &unk_1E73B4F28;
  v12 = v8;
  v10 = v8;
  [v9 addFinishBlock:v11];
}

void __102__AMSCardEnrollmentEligibilityTask_canWriteBillingInfoWithPassTypeIdentifier_serialNumber_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v7 = [v8 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  (*(v6 + 16))(v6, v7, v5);
}

- (id)performCanWriteBillingInfoQueryWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = 0x1E73B0000uLL;
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      v8 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, v8];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    v16 = AMSHashIfNeeded(v6);
    v17 = AMSHashIfNeeded(v7);
    *buf = 138543874;
    v37 = v15;
    v38 = 2114;
    v39 = v16;
    v40 = 2114;
    v41 = v17;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Performing can write billing info with passTypeIdentifier: %{public}@, serialNumber: %{public}@", buf, 0x20u);
    if (v11)
    {

      v15 = v8;
    }
  }

  v18 = [(AMSCardEnrollmentEligibilityTask *)self bag];

  if (v18)
  {
    goto LABEL_13;
  }

  v19 = [objc_opt_class() bagSubProfile];
  v20 = [objc_opt_class() bagSubProfileVersion];
  v21 = [AMSBag bagForProfile:v19 profileVersion:v20];
  [(AMSCardEnrollmentEligibilityTask *)self setBag:v21];

  v22 = [(AMSCardEnrollmentEligibilityTask *)self bag];

  if (v22)
  {

LABEL_13:
    v19 = [(AMSCardEnrollmentEligibilityTask *)self _checkThatSilentEnrollmentIsEnabled];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __103__AMSCardEnrollmentEligibilityTask_performCanWriteBillingInfoQueryWithPassTypeIdentifier_serialNumber___block_invoke;
    v33[3] = &unk_1E73B5860;
    v33[4] = self;
    v34 = v6;
    v35 = v7;
    v23 = [v19 thenWithPromiseBlock:v33];

    goto LABEL_14;
  }

  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = AMSLogKey();
    v28 = MEMORY[0x1E696AEC0];
    v29 = objc_opt_class();
    v30 = v29;
    if (v27)
    {
      self = AMSLogKey();
      [v28 stringWithFormat:@"%@: [%@] ", v30, self];
    }

    else
    {
      [v28 stringWithFormat:@"%@: ", v29];
    }
    v31 = ;
    *buf = 138543362;
    v37 = v31;
    _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to load bag", buf, 0xCu);
    if (v27)
    {

      v31 = self;
    }
  }

  v32 = AMSError(0, @"Unable to Create Bag", @"We were unable to create a bag.", 0);
  v23 = [AMSPromise promiseWithError:v32];

LABEL_14:

  return v23;
}

id __103__AMSCardEnrollmentEligibilityTask_performCanWriteBillingInfoQueryWithPassTypeIdentifier_serialNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _checkForCombinediTunesAccount];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__AMSCardEnrollmentEligibilityTask_performCanWriteBillingInfoQueryWithPassTypeIdentifier_serialNumber___block_invoke_2;
  v6[3] = &unk_1E73B5838;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 48);
  v4 = [v2 thenWithBlock:v6];

  return v4;
}

id __103__AMSCardEnrollmentEligibilityTask_performCanWriteBillingInfoQueryWithPassTypeIdentifier_serialNumber___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 first];
  v5 = [v3 second];

  v6 = [*(a1 + 32) _cardTypeForPassTypeIdentifier:*(a1 + 40) serialNumber:*(a1 + 48)];
  v7 = *(a1 + 32);
  v8 = [v7 bag];
  v9 = [v7 _createEligibilityRequestWithBag:v8 iTunesAccount:v4 iCloudAccount:v5 cardType:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__AMSCardEnrollmentEligibilityTask_performCanWriteBillingInfoQueryWithPassTypeIdentifier_serialNumber___block_invoke_3;
  v12[3] = &unk_1E73B34E8;
  v12[4] = *(a1 + 32);
  v10 = [v9 thenWithBlock:v12];

  return v10;
}

- (unint64_t)_cardTypeForPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v77 = v7;
  if (!v6 || !v7)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v9 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = v21;
      if (v19)
      {
        v23 = AMSLogKey();
        v24 = [v20 stringWithFormat:@"%@: [%@] ", v22, v23];
      }

      else
      {
        v24 = [v20 stringWithFormat:@"%@: ", v21];
        v23 = v24;
      }

      v30 = AMSHashIfNeeded(v6);
      v4 = AMSHashIfNeeded(v77);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2114;
      v83 = v4;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@Indeterminate passTypeIdentifier: %{public}@, serialNumer: %{public}@", buf, 0x20u);
      if (v19)
      {
      }
    }

    goto LABEL_66;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x2050000000;
  v4 = _MergedGlobals_1_4;
  v81 = _MergedGlobals_1_4;
  if (!_MergedGlobals_1_4)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPassLibraryClass_block_invoke;
    v83 = &unk_1E73B3880;
    v84 = &v78;
    __getPKPassLibraryClass_block_invoke(buf);
    v4 = v79[3];
  }

  v8 = v4;
  _Block_object_dispose(&v78, 8);
  v9 = objc_alloc_init(v4);
  if (!v9)
  {
    v25 = +[AMSUnitTests isRunningUnitTests];
    v26 = +[AMSLogConfig sharedConfig];
    v18 = v26;
    if (v25)
    {
      if (!v26)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v18 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not instantiate PKPassLibrary", buf, 0xCu);
      }

      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      v4 = +[AMSLogConfig sharedConfig];
      [v18 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v4 userInfo:0];
    }

    else
    {
      if (!v26)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v4 = [v18 OSLogObject];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138543362;
        *&buf[4] = v32;
        _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_FAULT, "%{public}@Could not instantiate PKPassLibrary", buf, 0xCu);
      }
    }

    v9 = 0;
    goto LABEL_66;
  }

  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v16 = AMSLogKey();
      v17 = [v13 stringWithFormat:@"%@: [%@] ", v15, v16];
    }

    else
    {
      v17 = [v13 stringWithFormat:@"%@: ", v14];
      v16 = v17;
    }

    v33 = AMSHashIfNeeded(v6);
    v4 = AMSHashIfNeeded(v77);
    *buf = 138543874;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v33;
    *&buf[22] = 2114;
    v83 = v4;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to determine card type for passTypeIdentifier: %{public}@, serialNumber: %{public}@", buf, 0x20u);
    if (v12)
    {
    }
  }

  v18 = [v9 passWithPassTypeIdentifier:v6 serialNumber:v77];
  if (v18)
  {
    v78 = 0;
    v79 = &v78;
    v80 = 0x2050000000;
    v4 = qword_1ED6E1E08;
    v81 = qword_1ED6E1E08;
    if (!qword_1ED6E1E08)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPKPaymentPassClass_block_invoke;
      v83 = &unk_1E73B3880;
      v84 = &v78;
      __getPKPaymentPassClass_block_invoke(buf);
      v4 = v79[3];
    }

    v34 = v4;
    _Block_object_dispose(&v78, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v18;
      v4 = [v18 paymentApplications];
      v35 = [v4 ams_anyWithTest:&__block_literal_global_25];

      if (v35)
      {
        v36 = +[AMSLogConfig sharedConfig];
        if (!v36)
        {
          v36 = +[AMSLogConfig sharedConfig];
        }

        v37 = [v36 OSLogObject];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = AMSLogKey();
          v39 = v38 == 0;
          v40 = MEMORY[0x1E696AEC0];
          v41 = objc_opt_class();
          v4 = v41;
          if (v38)
          {
            v39 = AMSLogKey();
            [v40 stringWithFormat:@"%@: [%@] ", v4, v39];
          }

          else
          {
            [v40 stringWithFormat:@"%@: ", v41];
          }
          v42 = ;
          *buf = 138543362;
          *&buf[4] = v42;
          _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Found barcode network identifier", buf, 0xCu);
          if (v38)
          {

            v42 = v39;
          }
        }
      }

      if (([v18 hasAssociatedPeerPaymentAccount]& 1) != 0)
      {
        v57 = 2;
      }

      else
      {
        v4 = [v18 associatedAccountServiceAccountIdentifier];

        v68 = (v4 != 0) | v35;
        if (v4)
        {
          v57 = 3;
        }

        else
        {
          v57 = 4;
        }

        if ((v68 & 1) == 0)
        {
          v69 = +[AMSLogConfig sharedConfig];
          if (!v69)
          {
            v69 = +[AMSLogConfig sharedConfig];
          }

          v70 = [v69 OSLogObject];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v71 = AMSLogKey();
            v72 = MEMORY[0x1E696AEC0];
            v73 = objc_opt_class();
            v74 = v73;
            if (v71)
            {
              v4 = AMSLogKey();
              [v72 stringWithFormat:@"%@: [%@] ", v74, v4];
            }

            else
            {
              [v72 stringWithFormat:@"%@: ", v73];
            }
            v75 = ;
            *buf = 138543362;
            *&buf[4] = v75;
            _os_log_impl(&dword_192869000, v70, OS_LOG_TYPE_ERROR, "%{public}@Card is unknown type of PKPaymentPass", buf, 0xCu);
            if (v71)
            {

              v75 = v4;
            }
          }

          v57 = 0;
        }
      }

      goto LABEL_67;
    }

    v50 = +[AMSLogConfig sharedConfig];
    if (!v50)
    {
      v50 = +[AMSLogConfig sharedConfig];
    }

    v51 = [v50 OSLogObject];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v76 = AMSLogKey();
      v52 = MEMORY[0x1E696AEC0];
      v53 = objc_opt_class();
      v54 = v53;
      if (v76)
      {
        v55 = AMSLogKey();
        v56 = [v52 stringWithFormat:@"%@: [%@] ", v54, v55];
      }

      else
      {
        v56 = [v52 stringWithFormat:@"%@: ", v53];
        v55 = v56;
      }

      v58 = objc_opt_class();
      v4 = NSStringFromClass(v58);
      v59 = AMSHashIfNeeded(v4);
      *buf = 138543618;
      *&buf[4] = v56;
      *&buf[12] = 2114;
      *&buf[14] = v59;
      _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@Pass is not a PKPaymentPass: %{public}@", buf, 0x16u);

      if (v76)
      {
      }
    }

LABEL_66:
    v57 = 0;
    goto LABEL_67;
  }

  v43 = +[AMSLogConfig sharedConfig];
  if (!v43)
  {
    v43 = +[AMSLogConfig sharedConfig];
  }

  v44 = [v43 OSLogObject];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = AMSLogKey();
    v46 = MEMORY[0x1E696AEC0];
    v47 = objc_opt_class();
    v48 = v47;
    if (v45)
    {
      v4 = AMSLogKey();
      [v46 stringWithFormat:@"%@: [%@] ", v48, v4];
    }

    else
    {
      [v46 stringWithFormat:@"%@: ", v47];
    }
    v49 = ;
    *buf = 138543362;
    *&buf[4] = v49;
    _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@No card found", buf, 0xCu);
    if (v45)
    {

      v49 = v4;
    }
  }

  v18 = 0;
  v57 = 1;
LABEL_67:

  v60 = +[AMSLogConfig sharedConfig];
  if (!v60)
  {
    v60 = +[AMSLogConfig sharedConfig];
  }

  v61 = [v60 OSLogObject];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = AMSLogKey();
    v63 = MEMORY[0x1E696AEC0];
    v64 = objc_opt_class();
    v65 = v64;
    if (v62)
    {
      v4 = AMSLogKey();
      [v63 stringWithFormat:@"%@: [%@] ", v65, v4];
    }

    else
    {
      [v63 stringWithFormat:@"%@: ", v64];
    }
    v66 = ;
    *buf = 138543618;
    *&buf[4] = v66;
    *&buf[12] = 2048;
    *&buf[14] = v57;
    _os_log_impl(&dword_192869000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@Found card type: %lu", buf, 0x16u);
    if (v62)
    {

      v66 = v4;
    }
  }

  return v57;
}

- (id)_checkForCombinediTunesAccount
{
  v3 = MEMORY[0x1E6959A48];
  v4 = [(AMSCardEnrollmentEligibilityTask *)self _mediaType];
  v5 = [v3 ams_sharedAccountStoreForMediaType:v4];

  v6 = [(AMSCardEnrollmentEligibilityTask *)self _mediaType];
  v7 = [v5 ams_activeiTunesAccountForMediaType:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__AMSCardEnrollmentEligibilityTask__checkForCombinediTunesAccount__block_invoke;
  v11[3] = &unk_1E73B4538;
  v11[4] = self;
  v12 = v5;
  v8 = v5;
  v9 = [v7 continueWithBlock:v11];

  return v9;
}

id __66__AMSCardEnrollmentEligibilityTask__checkForCombinediTunesAccount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) ams_fetchActiveiCloudAccount];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__AMSCardEnrollmentEligibilityTask__checkForCombinediTunesAccount__block_invoke_57;
    v17[3] = &unk_1E73B4538;
    v17[4] = *(a1 + 32);
    v18 = v5;
    v8 = [v7 continueWithBlock:v17];
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        a1 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, a1];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@Can write billing info failed for no active iTunes account", buf, 0xCu);
      if (v11)
      {

        v15 = a1;
      }
    }

    v7 = AMSError(103, @"Silent Enrollment Error", @"No active iTunes account", v6);
    v8 = [AMSPromise promiseWithError:v7];
  }

  return v8;
}

id __66__AMSCardEnrollmentEligibilityTask__checkForCombinediTunesAccount__block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) ams_DSID];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 ams_DSID];
      if (v9)
      {
        v10 = v9;
        v11 = [*(a1 + 40) ams_DSID];
        v12 = [v5 ams_DSID];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = [[AMSPair alloc] initWithFirst:*(a1 + 40) second:v5];
          v15 = [AMSPromise promiseWithResult:v14];

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = AMSLogKey();
      v26 = MEMORY[0x1E696AEC0];
      v27 = objc_opt_class();
      v28 = v27;
      if (v25)
      {
        a1 = AMSLogKey();
        [v26 stringWithFormat:@"%@: [%@] ", v28, a1];
      }

      else
      {
        [v26 stringWithFormat:@"%@: ", v27];
      }
      v29 = ;
      *buf = 138543362;
      v33 = v29;
      _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_ERROR, "%{public}@Can write billing info failed for no combined account", buf, 0xCu);
      if (v25)
      {

        v29 = a1;
      }
    }

    v30 = AMSError(105, @"Silent Enrollment Error", @"Split Account", 0);
  }

  else
  {
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      v21 = v20;
      if (v18)
      {
        a1 = AMSLogKey();
        [v19 stringWithFormat:@"%@: [%@] ", v21, a1];
      }

      else
      {
        [v19 stringWithFormat:@"%@: ", v20];
      }
      v22 = ;
      *buf = 138543362;
      v33 = v22;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@Can write billing info failed for no active iCloud account", buf, 0xCu);
      if (v18)
      {

        v22 = a1;
      }
    }

    v30 = AMSError(103, @"Silent Enrollment Error", @"No active iCloud account", v6);
  }

  v15 = [AMSPromise promiseWithError:v30];

LABEL_28:

  return v15;
}

- (id)_checkThatSilentEnrollmentIsEnabled
{
  v3 = [(AMSCardEnrollmentEligibilityTask *)self bag];
  v4 = [v3 BOOLForKey:@"use-silent-enrollment"];
  v5 = [v4 valuePromise];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AMSCardEnrollmentEligibilityTask__checkThatSilentEnrollmentIsEnabled__block_invoke;
  v8[3] = &unk_1E73B58A8;
  v8[4] = self;
  v6 = [v5 continueWithBinaryPromiseBlock:v8];

  return v6;
}

id __71__AMSCardEnrollmentEligibilityTask__checkThatSilentEnrollmentIsEnabled__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v5 BOOLValue])
  {
    v7 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        a1 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, a1];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Can write billing info failed for feature not enabled", buf, 0xCu);
      if (v10)
      {

        v14 = a1;
      }
    }

    v15 = AMSError(5, @"Silent Enrollment Error", @"Feature Not Enabled", v6);
    v7 = [AMSBinaryPromise promiseWithError:v15];
  }

  return v7;
}

- (id)_createEligibilityRequestWithBag:(id)a3 iTunesAccount:(id)a4 iCloudAccount:(id)a5 cardType:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 URLForKey:@"applePaySilentEnrollEligible" account:v11];
  v14 = [v13 valuePromise];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke;
  v20[3] = &unk_1E73B5920;
  v21 = v10;
  v22 = v11;
  v24 = v12;
  v25 = a6;
  v23 = self;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [v14 thenWithBlock:v20];

  return v18;
}

id __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke(uint64_t a1, void *a2)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [[AMSURLRequestEncoder alloc] initWithBag:*(a1 + 32)];
  [(AMSURLRequestEncoder *)v5 setAccount:*(a1 + 40)];
  [(AMSURLRequestEncoder *)v5 setDialogOptions:1];
  v6 = *(a1 + 64);
  if (v6 == 4)
  {
    v29 = @"cardType";
    v30 = @"APPLE_PAY_AQUAMAN";
    v7 = MEMORY[0x1E695DF20];
    v8 = &v30;
    v9 = &v29;
    goto LABEL_5;
  }

  if (v6 == 3)
  {
    v31 = @"cardType";
    v32[0] = @"APPLE_PAY_BROADWAY";
    v7 = MEMORY[0x1E695DF20];
    v8 = v32;
    v9 = &v31;
LABEL_5:
    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
    goto LABEL_16;
  }

  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = v15;
    if (v13)
    {
      v2 = AMSLogKey();
      [v14 stringWithFormat:@"%@: [%@] ", v16, v2];
    }

    else
    {
      [v14 stringWithFormat:@"%@: ", v15];
    }
    v17 = ;
    *buf = 138543362;
    v28 = v17;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_INFO, "%{public}@Can write billing info skipping URL decoration", buf, 0xCu);
    if (v13)
    {

      v17 = v2;
    }
  }

  v10 = 0;
LABEL_16:
  v18 = [(AMSURLRequestEncoder *)v5 requestWithMethod:2 URL:v4 parameters:v10];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke_73;
  v23[3] = &unk_1E73B58F8;
  v24 = *(a1 + 56);
  v22 = *(a1 + 40);
  v19 = v22.i64[0];
  v25 = vextq_s8(v22, v22, 8uLL);
  v26 = *(a1 + 32);
  v20 = [v18 thenWithBlock:v23];

  return v20;
}

id __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke_73(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  [v4 ams_addSilentEnrollmentHeadersForAccount:*(a1 + 32)];
  v5 = [v4 valueForHTTPHeaderField:@"X-Apple-Store-Front"];
  if (v5)
  {
    v6 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        v2 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v2];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Can write billing info will attach storefront header manually", buf, 0xCu);
      if (v9)
      {

        v13 = v2;
      }
    }

    v14 = *(a1 + 48);
    v15 = [*(a1 + 40) _mediaType];
    v16 = [AMSURLRequestDecoration addStoreFrontHeaderToRequest:v4 forAccount:v14 mediaType:v15 bag:*(a1 + 56)];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke_75;
    v22[3] = &unk_1E73B58D0;
    v22[4] = *(a1 + 40);
    v6 = [v16 catchWithBlock:v22];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke_77;
  v20[3] = &unk_1E73B3588;
  v21 = v4;
  v17 = v4;
  v18 = [v6 thenWithPromiseBlock:v20];

  return v18;
}

id __106__AMSCardEnrollmentEligibilityTask__createEligibilityRequestWithBag_iTunesAccount_iCloudAccount_cardType___block_invoke_75(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to add storefront header to request. Continuing without header. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }

  v12 = +[AMSBinaryPromise promiseWithSuccess];

  return v12;
}

- (id)_performSilentEnrollmentCheckWithRequest:(id)a3
{
  v4 = MEMORY[0x1E696AD50];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 addIndexesInRange:{200, 100}];
  [v6 addIndexesInRange:{400, 100}];
  v7 = MEMORY[0x1E695AC80];
  v8 = +[AMSProcessInfo currentProcess];
  v9 = [(AMSCardEnrollmentEligibilityTask *)self bag];
  v10 = [v7 ams_configurationWithProcessInfo:v8 bag:v9];

  v11 = [[AMSURLSession alloc] initWithConfiguration:v10];
  v12 = objc_alloc_init(AMSURLResponseDecoder);
  v13 = [v6 copy];
  [(AMSURLResponseDecoder *)v12 setAllowedStatusCodes:v13];

  [(AMSURLSession *)v11 setResponseDecoder:v12];
  v14 = objc_alloc_init(AMSAppleCardSilentEnrollmentProtocolHandler);
  [(AMSURLSession *)v11 setDelegate:v14];
  [(AMSURLSession *)v11 setProtocolHandler:v14];
  v15 = [(AMSURLSession *)v11 dataTaskPromiseWithRequest:v5];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__AMSCardEnrollmentEligibilityTask__performSilentEnrollmentCheckWithRequest___block_invoke;
  v18[3] = &unk_1E73B3F48;
  v18[4] = self;
  v16 = [v15 thenWithBlock:v18];

  return v16;
}

id __77__AMSCardEnrollmentEligibilityTask__performSilentEnrollmentCheckWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [a2 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"eligible"];
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        a1 = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, a1];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      v19 = AMSHashIfNeeded(v4);
      *buf = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Can write billing info completed with response: %{public}@", buf, 0x16u);
      if (v7)
      {

        v11 = a1;
      }
    }

    v20 = MEMORY[0x1E696AD98];
    if (objc_opt_respondsToSelector())
    {
      v21 = [v4 BOOLValue];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v20 numberWithInt:v21];
    v23 = [AMSPromise promiseWithResult:v22];
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        a1 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, a1];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@Can write billing info failed to deserialize response", buf, 0xCu);
      if (v14)
      {

        v18 = a1;
      }
    }

    v4 = AMSError(301, @"Silent Enrollment Error", @"Failed to deserialize JSON response", 0);
    v23 = [AMSPromise promiseWithError:v4];
  }

  return v23;
}

@end