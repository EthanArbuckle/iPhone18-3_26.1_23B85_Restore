@interface LAContextUIHelper
- (void)authenticateWithOptions:(id)options availableMechanisms:(id)mechanisms hostVC:(id)c context:(id)context reply:(id)reply;
- (void)cancel;
- (void)contextDidBecomeInvalid:(id)invalid;
- (void)dealloc;
@end

@implementation LAContextUIHelper

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_ui);
  [WeakRetained dismiss];

  v4 = LA_LOG();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_238BCD000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = LAContextUIHelper;
  [(LAContextUIHelper *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateWithOptions:(id)options availableMechanisms:(id)mechanisms hostVC:(id)c context:(id)context reply:(id)reply
{
  optionsCopy = options;
  mechanismsCopy = mechanisms;
  cCopy = c;
  contextCopy = context;
  replyCopy = reply;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_ui);

  if (WeakRetained)
  {
    v18 = [MEMORY[0x277CD47F0] errorWithCode:-1008 message:@"Another interactive authentication is ongoing"];
    replyCopy[2](replyCopy, 0, v18);
  }

  else
  {
    v19 = [LAAuthorizationViewController alloc];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__LAContextUIHelper_authenticateWithOptions_availableMechanisms_hostVC_context_reply___block_invoke;
    v27[3] = &unk_278A65638;
    v28 = mechanismsCopy;
    v29 = contextCopy;
    v30 = optionsCopy;
    v20 = __86__LAContextUIHelper_authenticateWithOptions_availableMechanisms_hostVC_context_reply___block_invoke(v27);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __86__LAContextUIHelper_authenticateWithOptions_availableMechanisms_hostVC_context_reply___block_invoke_2;
    v25 = &unk_278A65660;
    v26 = replyCopy;
    v21 = [(LAAuthorizationViewController *)v19 initWithConfiguration:v20 completion:&v22];

    [(LAAuthorizationViewController *)v21 presentInContainerViewController:cCopy, v22, v23, v24, v25];
    objc_storeWeak(&self->_ui, v21);
  }
}

id __86__LAContextUIHelper_authenticateWithOptions_availableMechanisms_hostVC_context_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D24198] buildWithAvailableMechanisms:*(a1 + 32)];
  v3 = objc_alloc(MEMORY[0x277D24190]);
  v4 = [*(a1 + 40) externalizedContext];
  v5 = [v3 initWithContext:v4 requirement:v2 options:*(a1 + 48)];

  return v5;
}

void __86__LAContextUIHelper_authenticateWithOptions_availableMechanisms_hostVC_context_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LA_LOG();
  v5 = v4;
  if (v3)
  {
    v6 = LALogTypeForInternalError();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(err=%@)", v3];
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = @"successfully";
  }

  *buf = 138543362;
  v11 = v7;
  _os_log_impl(&dword_238BCD000, v5, v6, "Authorization sheet finished %{public}@", buf, 0xCu);
  if (v3)
  {
  }

LABEL_8:

  if (v3)
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v3);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = LA_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_238BCD000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_ui);
  [WeakRetained dismiss];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)contextDidBecomeInvalid:(id)invalid
{
  invalidCopy = invalid;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(LAContextUIHelper *)self cancel];
  }

  else
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__LAContextUIHelper_contextDidBecomeInvalid___block_invoke;
    block[3] = &unk_278A65688;
    objc_copyWeak(&v7, &location);
    v6 = invalidCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __45__LAContextUIHelper_contextDidBecomeInvalid___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained contextDidBecomeInvalid:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end