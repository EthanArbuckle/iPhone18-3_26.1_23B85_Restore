@interface LAContext
@end

@implementation LAContext

void __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 88) != 1 && ([MEMORY[0x277CD47F0] error:v6 hasCode:-1004] & 1) != 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_2;
    v10[3] = &unk_278A65570;
    objc_copyWeak(v16, (a1 + 64));
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v9 = *(a1 + 80);
    v11 = v7;
    v16[1] = v8;
    v16[2] = v9;
    v12 = *(a1 + 40);
    v15 = *(a1 + 56);
    v13 = v6;
    v14 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v10);

    objc_destroyWeak(v16);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = LAViewControllerForPresentationContext(*(a1 + 32));
    if (v3)
    {
      v4 = objc_alloc_init(LAContextUIHelper);
      [WeakRetained setUiHelper:v4];
      [WeakRetained addContextObserver:v4];
      v5 = LA_LOG();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 80);
        v7 = *(a1 + 88);
        v8 = *(a1 + 40);
        *buf = 138544130;
        v30 = v6;
        v31 = 1024;
        v32 = v7;
        v33 = 2114;
        v34 = v8;
        v35 = 2112;
        v36 = WeakRetained;
        _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "evaluateAccessControl:%{public}@ operation:%d options:%{public}@ on %@", buf, 0x26u);
      }

      v9 = objc_alloc(MEMORY[0x277CD4790]);
      v10 = [WeakRetained externalizedContext];
      v11 = [v9 initWithExternalizedContext:v10];

      v12 = [*(a1 + 48) userInfo];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CD4760]];
      v14 = v13;
      v15 = MEMORY[0x277CBEBF8];
      if (v13)
      {
        v15 = v13;
      }

      v16 = v15;

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_3;
      v22[3] = &unk_278A65548;
      objc_copyWeak(v28, (a1 + 72));
      v17 = *(a1 + 40);
      v18 = *(a1 + 80);
      v23 = v17;
      v28[1] = v18;
      v24 = v3;
      v19 = v11;
      v20 = *(a1 + 88);
      v25 = v19;
      v28[2] = v20;
      v26 = *(a1 + 56);
      v27 = *(a1 + 64);
      [WeakRetained _validateAvailableMechanims:v16 completion:v22];

      objc_destroyWeak(v28);
    }

    else
    {
      [WeakRetained evaluateAccessControl:*(a1 + 80) operation:*(a1 + 88) options:*(a1 + 40) reply:*(a1 + 64)];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __83__LAContext_UI__evaluateAccessControl_operation_options_presentationContext_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 56);
    [WeakRetained _authenticateWithOptions:*(a1 + 32) acl:*(a1 + 80) availableMechanisms:v6 hostVC:*(a1 + 40) context:*(a1 + 48) operation:*(a1 + 88) updatedOptions:v5 reply:*(a1 + 64)];
  }
}

void __112__LAContext_UI___authenticateWithOptions_acl_availableMechanisms_hostVC_context_operation_updatedOptions_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = LA_LOG();
  if (v6)
  {
    v8 = LALogTypeForInternalError();
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(v7, v8))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v10 = WeakRetained;
    v11 = @"successfully";
    if (v6)
    {
      v11 = v6;
    }

    v15 = 138412546;
    v16 = WeakRetained;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_238BCD000, v7, v8, "evaluateAccessControl on %@ finished %{public}@", &v15, 0x16u);
  }

  v12 = objc_loadWeakRetained((a1 + 48));
  v13 = v12;
  if (v12)
  {
    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [v12 evaluateAccessControl:*(a1 + 56) operation:*(a1 + 64) options:*(a1 + 32) reply:*(a1 + 40)];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke_2;
  block[3] = &unk_278A655E8;
  v6 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__LAContext_UI___validateAvailableMechanims_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) mutableCopy];
    [v5 removeObject:&unk_284B87660];
    (*(*(a1 + 40) + 16))();
  }
}

@end