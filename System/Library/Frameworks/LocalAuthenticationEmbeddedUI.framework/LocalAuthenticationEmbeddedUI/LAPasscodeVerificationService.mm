@interface LAPasscodeVerificationService
- (LAPasscodeVerificationService)init;
- (LAPasscodeVerificationService)initWithControllerBuilder:(id)builder;
- (void)_startOperation:(id)operation completion:(id)completion;
- (void)cancel;
- (void)startInParentVC:(id)c completion:(id)completion;
- (void)startInParentVC:(id)c options:(id)options completion:(id)completion;
@end

@implementation LAPasscodeVerificationService

- (LAPasscodeVerificationService)init
{
  v3 = objc_alloc_init(LAPSPasscodeChangeControllerProvider);
  v4 = [(LAPasscodeVerificationService *)self initWithControllerBuilder:v3];

  return v4;
}

- (LAPasscodeVerificationService)initWithControllerBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = LAPasscodeVerificationService;
  v6 = [(LAPasscodeVerificationService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_builder, builder);
  }

  return v7;
}

- (void)startInParentVC:(id)c completion:(id)completion
{
  completionCopy = completion;
  cCopy = c;
  v8 = objc_alloc_init(LAPasscodeVerificationServiceOptions);
  [(LAPasscodeVerificationService *)self startInParentVC:cCopy options:v8 completion:completionCopy];
}

- (void)startInParentVC:(id)c options:(id)options completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  cCopy = c;
  optionsCopy = options;
  completionCopy = completion;
  v11 = LACLogPasscodeService();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v27 = 2114;
    v28 = cCopy;
    v29 = 2112;
    v30 = optionsCopy;
    _os_log_impl(&dword_238BCD000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will start on parentVC: %{public}@ with options: %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  builder = self->_builder;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__LAPasscodeVerificationService_startInParentVC_options_completion___block_invoke;
  v22[3] = &unk_278A65868;
  v13 = cCopy;
  v23 = v13;
  v14 = optionsCopy;
  v24 = v14;
  v15 = __68__LAPasscodeVerificationService_startInParentVC_options_completion___block_invoke(v22);
  v16 = [(LAPSPasscodeChangeControllerProviding *)builder passcodeVerificationControllerWithOptions:v15];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__LAPasscodeVerificationService_startInParentVC_options_completion___block_invoke_2;
  v19[3] = &unk_278A65890;
  objc_copyWeak(&v21, buf);
  v17 = completionCopy;
  v20 = v17;
  [(LAPasscodeVerificationService *)self _startOperation:v16 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

LAPSPasscodeChangeControllerProviderOptions *__68__LAPasscodeVerificationService_startInParentVC_options_completion___block_invoke(uint64_t a1)
{
  v2 = [[LAPSPasscodeChangeControllerProviderOptions alloc] initWithParentVC:*(a1 + 32)];
  v3 = [*(a1 + 40) title];
  if (v3)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setTitle:v3];
  }

  else
  {
    v4 = +[LALocalizedString passcodeVerificationTitle];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setTitle:v4];
  }

  v5 = [*(a1 + 40) passcodePrompt];
  if (v5)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodePrompt:v5];
  }

  else
  {
    v6 = +[LALocalizedString passcodeVerificationPrompt];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodePrompt:v6];
  }

  v7 = [*(a1 + 40) passcodeSubPrompt];
  if (v7)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodeSubPrompt:v7];
  }

  else
  {
    v8 = +[LALocalizedString passcodeVerificationSubPrompt];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodeSubPrompt:v8];
  }

  -[LAPSPasscodeChangeControllerProviderOptions setDismissUIAfterCompletion:](v2, "setDismissUIAfterCompletion:", [*(a1 + 40) dismissUIAfterCompletion]);

  return v2;
}

void __68__LAPasscodeVerificationService_startInParentVC_options_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "%{public}@ will cancel", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_startOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  objc_storeWeak(&self->_operation, operationCopy);
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__LAPasscodeVerificationService__startOperation_completion___block_invoke;
  v10[3] = &unk_278A658B8;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  v9 = operationCopy;
  v11 = v9;
  [v9 startWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __60__LAPasscodeVerificationService__startOperation_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!(v10 | v5))
    {
      __60__LAPasscodeVerificationService__startOperation_completion___block_invoke_cold_1();
    }

    if (v5)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
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
  }
}

@end