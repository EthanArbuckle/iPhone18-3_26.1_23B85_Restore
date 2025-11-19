@interface LAPasscodeRecoveryService
- (BOOL)isRecoveryAvailableWithError:(id *)a3;
- (LAPasscodeRecoveryService)init;
- (LAPasscodeRecoveryService)initWithControllerBuilder:(id)a3;
- (id)lastPasscodeChange;
- (void)cancelRecovery;
- (void)startRecoveryInParentVC:(id)a3 completion:(id)a4;
@end

@implementation LAPasscodeRecoveryService

- (LAPasscodeRecoveryService)init
{
  v3 = objc_alloc_init(LAPSPasscodeChangeControllerProvider);
  v4 = [(LAPasscodeRecoveryService *)self initWithControllerBuilder:v3];

  return v4;
}

- (LAPasscodeRecoveryService)initWithControllerBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPasscodeRecoveryService;
  v6 = [(LAPasscodeRecoveryService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_builder, a3);
  }

  return v7;
}

- (id)lastPasscodeChange
{
  v2 = [(LAPSPasscodeChangeControllerProviding *)self->_builder passcodeRecoveryPreflightController];
  v3 = [v2 lastPasscodeChange];

  return v3;
}

- (BOOL)isRecoveryAvailableWithError:(id *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "LAPasscodeRecoveryService preflight will start", buf, 2u);
  }

  v6 = [(LAPSPasscodeChangeControllerProviding *)self->_builder passcodeRecoveryPreflightController];
  v13 = 0;
  v7 = [v6 canChangePasscodeWithError:&v13];
  v8 = v13;

  if (a3 && (v7 & 1) == 0)
  {
    *a3 = [LAPasscodeServiceErrorBuilder redactError:v8];
  }

  v9 = LACLogPasscodeService();
  v10 = 16 * (v8 != 0);
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_238BCD000, v9, v10, "LAPasscodeRecoveryService preflight did finish (error=%{public}@)", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)startRecoveryInParentVC:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LACLogPasscodeService();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = self;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_238BCD000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will start on parentVC: %{public}@", buf, 0x16u);
  }

  builder = self->_builder;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke;
  v20[3] = &unk_278A65F60;
  v10 = v6;
  v21 = v10;
  v11 = __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke(v20);
  v12 = [(LAPSPasscodeChangeControllerProviding *)builder passcodeRecoveryControllerWithOptions:v11];

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke_2;
  v16[3] = &unk_278A658B8;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v18 = v13;
  v14 = v12;
  v17 = v14;
  [v14 startWithCompletion:v16];
  objc_storeWeak(&self->_recoveryController, v14);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

LAPSPasscodeChangeControllerProviderOptions *__64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke(uint64_t a1)
{
  v1 = [[LAPSPasscodeChangeControllerProviderOptions alloc] initWithParentVC:*(a1 + 32)];
  v2 = +[LALocalizedString passcodeRecoveryTitle];
  [(LAPSPasscodeChangeControllerProviderOptions *)v1 setTitle:v2];

  v3 = +[LALocalizedString passcodeRecoveryOldPasscodePrompt];
  [(LAPSPasscodeChangeControllerProviderOptions *)v1 setOldPasscodePrompt:v3];

  v4 = +[LALocalizedString passcodeRecoveryOldPasscodeSubPrompt];
  [(LAPSPasscodeChangeControllerProviderOptions *)v1 setOldPasscodeSubPrompt:v4];

  return v1;
}

void __64__LAPasscodeRecoveryService_startRecoveryInParentVC_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LACLogPasscodeService();
  v6 = 16 * (v4 != 0);
  if (os_log_type_enabled(v5, v6))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = 138543618;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_238BCD000, v5, v6, "%{public}@ did finish (error=%{public}@)", &v11, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = [LAPasscodeServiceErrorBuilder redactError:v4];
  (*(v8 + 16))(v8, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelRecovery
{
  v3 = LACLogPasscodeService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_238BCD000, v3, OS_LOG_TYPE_DEFAULT, "LAPasscodeRecoveryService will cancel", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_recoveryController);
  [WeakRetained cancel];
}

@end