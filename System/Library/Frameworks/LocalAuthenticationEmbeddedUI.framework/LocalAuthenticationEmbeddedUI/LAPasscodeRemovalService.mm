@interface LAPasscodeRemovalService
- (LAPasscodeRemovalService)init;
- (LAPasscodeRemovalService)initWithControllerBuilder:(id)builder;
- (void)_startOperation:(id)operation completion:(id)completion;
- (void)cancel;
- (void)startInParentVC:(id)c completion:(id)completion;
- (void)startInParentVC:(id)c options:(id)options completion:(id)completion;
@end

@implementation LAPasscodeRemovalService

- (LAPasscodeRemovalService)init
{
  v3 = objc_alloc_init(LAPSPasscodeChangeControllerProvider);
  v4 = [(LAPasscodeRemovalService *)self initWithControllerBuilder:v3];

  return v4;
}

- (LAPasscodeRemovalService)initWithControllerBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = LAPasscodeRemovalService;
  v6 = [(LAPasscodeRemovalService *)&v9 init];
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
  v8 = objc_alloc_init(LAPasscodeRemovalServiceOptions);
  [(LAPasscodeRemovalService *)self startInParentVC:cCopy options:v8 completion:completionCopy];
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
  v22[2] = __63__LAPasscodeRemovalService_startInParentVC_options_completion___block_invoke;
  v22[3] = &unk_278A65868;
  v13 = cCopy;
  v23 = v13;
  v14 = optionsCopy;
  v24 = v14;
  v15 = __63__LAPasscodeRemovalService_startInParentVC_options_completion___block_invoke(v22);
  v16 = [(LAPSPasscodeChangeControllerProviding *)builder passcodeRemovalControllerWithOptions:v15];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__LAPasscodeRemovalService_startInParentVC_options_completion___block_invoke_2;
  v19[3] = &unk_278A65D18;
  objc_copyWeak(&v21, buf);
  v17 = completionCopy;
  v20 = v17;
  [(LAPasscodeRemovalService *)self _startOperation:v16 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v18 = *MEMORY[0x277D85DE8];
}

LAPSPasscodeChangeControllerProviderOptions *__63__LAPasscodeRemovalService_startInParentVC_options_completion___block_invoke(uint64_t a1)
{
  v2 = [[LAPSPasscodeChangeControllerProviderOptions alloc] initWithParentVC:*(a1 + 32)];
  v3 = [*(a1 + 40) title];
  if (v3)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setTitle:v3];
  }

  else
  {
    v4 = +[LALocalizedString passcodeRemovalTitle];
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setTitle:v4];
  }

  v5 = [*(a1 + 40) passcodePrompt];
  if (v5)
  {
    [(LAPSPasscodeChangeControllerProviderOptions *)v2 setOldPasscodePrompt:v5];
  }

  else
  {
    v6 = +[LALocalizedString passcodeRemovalOldPasscode];
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

  return v2;
}

void __63__LAPasscodeRemovalService_startInParentVC_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LACLogPasscodeService();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = 138543618;
    v9 = WeakRetained;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_238BCD000, v4, v5, "%{public}@ did finish (error=%{public}@)", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
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

- (void)_startOperation:(id)operation completion:(id)completion
{
  operationCopy = operation;
  completionCopy = completion;
  objc_storeWeak(&self->_operation, operationCopy);
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__LAPasscodeRemovalService__startOperation_completion___block_invoke;
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

void __55__LAPasscodeRemovalService__startOperation_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6 = [LAPasscodeServiceErrorBuilder redactError:v7];
    (*(v5 + 16))(v5, v6);
  }
}

@end