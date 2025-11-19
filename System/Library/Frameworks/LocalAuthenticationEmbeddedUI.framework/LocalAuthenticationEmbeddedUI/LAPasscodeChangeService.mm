@interface LAPasscodeChangeService
- (LAPasscodeChangeService)init;
- (LAPasscodeChangeService)initWithControllerBuilder:(id)a3;
- (void)_startOperation:(id)a3 completion:(id)a4;
- (void)cancel;
- (void)startInParentVC:(id)a3 completion:(id)a4;
- (void)startInParentVC:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation LAPasscodeChangeService

- (LAPasscodeChangeService)init
{
  v3 = objc_alloc_init(LAPSPasscodeChangeControllerProvider);
  v4 = [(LAPasscodeChangeService *)self initWithControllerBuilder:v3];

  return v4;
}

- (LAPasscodeChangeService)initWithControllerBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPasscodeChangeService;
  v6 = [(LAPasscodeChangeService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_builder, a3);
  }

  return v7;
}

- (void)startInParentVC:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(LAPasscodeChangeServiceOptions);
  [(LAPasscodeChangeService *)self startInParentVC:v7 options:v8 completion:v6];
}

- (void)startInParentVC:(id)a3 options:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LACLogPasscodeService();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v26 = self;
    v27 = 2114;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_238BCD000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will start on parentVC: %{public}@ with options: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  builder = self->_builder;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__LAPasscodeChangeService_startInParentVC_options_completion___block_invoke;
  v22[3] = &unk_278A65868;
  v13 = v8;
  v23 = v13;
  v14 = v9;
  v24 = v14;
  v15 = __62__LAPasscodeChangeService_startInParentVC_options_completion___block_invoke(v22);
  v16 = [(LAPSPasscodeChangeControllerProviding *)builder passcodeChangeControllerWithOptions:v15];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__LAPasscodeChangeService_startInParentVC_options_completion___block_invoke_2;
  v19[3] = &unk_278A65890;
  objc_copyWeak(&v21, buf);
  v17 = v10;
  v20 = v17;
  [(LAPasscodeChangeService *)self _startOperation:v16 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

LAPSPasscodeChangeControllerProviderOptions *__62__LAPasscodeChangeService_startInParentVC_options_completion___block_invoke(uint64_t a1)
{
  v2 = [[LAPSPasscodeChangeControllerProviderOptions alloc] initWithParentVC:*(a1 + 32)];
  v3 = [*(a1 + 40) title];
  if (v3)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setTitle:v3];
  }

  else
  {
    v4 = +[LALocalizedString passcodeChangeTitle];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setTitle:v4];
  }

  v5 = [*(a1 + 40) passcodePrompt];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setPasscodePrompt:v5];

  v6 = [*(a1 + 40) passcodeSubPrompt];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setPasscodeSubPrompt:v6];

  v7 = [*(a1 + 40) currentPasscodePrompt];
  if (v7)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodePrompt:v7];
  }

  else
  {
    v8 = +[LALocalizedString passcodeChangeOldPasscode];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodePrompt:v8];
  }

  v9 = [*(a1 + 40) currentPasscodeSubPrompt];
  if (v9)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodeSubPrompt:v9];
  }

  else
  {
    v10 = +[LALocalizedString passcodeVerificationSubPrompt];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodeSubPrompt:v10];
  }

  v11 = [*(a1 + 40) passcode];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setPasscode:v11];

  v12 = [*(a1 + 40) currentPasscode];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscode:v12];

  v13 = [*(a1 + 40) newPasscode];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setNewPasscode:v13];

  v14 = [*(a1 + 40) calloutURL];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setCalloutURL:v14];

  v15 = [*(a1 + 40) calloutReason];
  [(LAPSPasscodeChangeControllerProviderOptions *)v2 setCalloutReason:v15];

  -[LAPSPasscodeChangeControllerProviderOptions setSkipSuccessNotification:](v2, "setSkipSuccessNotification:", [*(a1 + 40) skipSuccessNotification]);
  -[LAPSPasscodeChangeControllerProviderOptions setIsPasscodeRecoveryMessageHidden:](v2, "setIsPasscodeRecoveryMessageHidden:", [*(a1 + 40) hidePasscodeRecoveryMessage]);

  return v2;
}

void __62__LAPasscodeChangeService_startInParentVC_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LACLogPasscodeService();
  v8 = 16 * (v5 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = 138543618;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_238BCD000, v7, v8, "%{public}@ did finish (error=%{public}@)", &v13, 0x16u);
  }

  v10 = *(a1 + 32);
  v11 = [LAPasscodeServiceErrorBuilder redactError:v5];
  (*(v10 + 16))(v10, v6, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v3 = LACLogPasscodeService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(LAPasscodeVerificationService *)self cancel];
  }

  WeakRetained = objc_loadWeakRetained(&self->_operation);
  [WeakRetained cancel];
}

- (void)_startOperation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_operation, v6);
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__LAPasscodeChangeService__startOperation_completion___block_invoke;
  v10[3] = &unk_278A658B8;
  objc_copyWeak(&v13, &location);
  v8 = v7;
  v12 = v8;
  v9 = v6;
  v11 = v9;
  [v9 startWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __54__LAPasscodeChangeService__startOperation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!(v10 | v5))
    {
      __54__LAPasscodeChangeService__startOperation_completion___block_invoke_cold_1();
    }

    if (v10)
    {
      v7 = [v10 externalizePasscode];
      v8 = *(a1 + 40);
      if (v7)
      {
        (*(v8 + 16))(v8, v7, 0);
      }

      else
      {
        v9 = [LAPasscodeServiceErrorBuilder genericErrorWithDebugDescription:@"Could not externalize passcode"];
        (*(v8 + 16))(v8, 0, v9);
      }
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

@end