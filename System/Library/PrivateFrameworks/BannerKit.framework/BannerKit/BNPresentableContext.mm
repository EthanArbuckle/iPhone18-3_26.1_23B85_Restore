@interface BNPresentableContext
@end

@implementation BNPresentableContext

void __61___BNPresentableContext___setBannerAppearState_reason_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setBannerAppearState:objc_msgSend(*(a1 + 32) reason:{"intValue"), *(a1 + 40)}];
}

void __63___BNPresentableContext___bannerWillNotAppearWithReason_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained[6] presentableWillNotAppearAsBanner:WeakRetained[6] withReason:*(a1 + 32)];
    }

    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __63___BNPresentableContext___bannerWillNotAppearWithReason_error___block_invoke_2;
    v3[3] = &unk_1E81E4788;
    v3[4] = WeakRetained;
    v4 = *(a1 + 32);
    [WeakRetained _enumerateObserversRespondingToSelector:sel_presentableWillNotAppearAsBanner_withReason_ usingBlock:v3];
  }
}

void __61___BNPresentableContext___setUserInteractionWillBegin_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([*(a1 + 32) BOOLValue])
    {
      v3 = sel_userInteractionWillBeginForBannerForPresentable_;
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained[6] userInteractionWillBeginForBannerForPresentable:WeakRetained[6]];
      }

      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __61___BNPresentableContext___setUserInteractionWillBegin_error___block_invoke_2;
      v13 = &unk_1E81E47D8;
      v14 = WeakRetained;
      v4 = &v10;
LABEL_10:
      [WeakRetained _enumerateObserversRespondingToSelector:v3 usingBlock:{v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
      goto LABEL_11;
    }

    if (([*(a1 + 32) BOOLValue] & 1) == 0)
    {
      v3 = sel_userInteractionDidEndForBannerForPresentable_;
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained[6] userInteractionDidEndForBannerForPresentable:WeakRetained[6]];
      }

      v5 = MEMORY[0x1E69E9820];
      v6 = 3221225472;
      v7 = __61___BNPresentableContext___setUserInteractionWillBegin_error___block_invoke_3;
      v8 = &unk_1E81E47D8;
      v9 = WeakRetained;
      v4 = &v5;
      goto LABEL_10;
    }
  }

LABEL_11:
}

uint64_t __60___BNPresentableContext___handleTemplateContentEvent_error___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) integerValue];

    return [v3 handleTemplateContentEvent:v4];
  }

  return result;
}

void __52___BNPresentableContext__activeConnectionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BNPresentableContextSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[BNPresentableContextSessionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___BNPresentableContext__activeConnectionWithError___block_invoke_2;
  v10[3] = &unk_1E81E44C8;
  objc_copyWeak(&v11, &location);
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___BNPresentableContext__activeConnectionWithError___block_invoke_44;
  v8[3] = &unk_1E81E44C8;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52___BNPresentableContext__activeConnectionWithError___block_invoke_45;
  v6[3] = &unk_1E81E44C8;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52___BNPresentableContext__activeConnectionWithError___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_DEFAULT, "BNPresentableContext (service-side) connection activated: %{public}@", &v5, 0xCu);
    }

    v3[45] = 1;
    objc_sync_exit(v3);
  }
}

void __52___BNPresentableContext__activeConnectionWithError___block_invoke_44(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BNLogContextService;
  if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_DEFAULT, "BNPresentableContext (service-side) connection interrupted: %{public}@", &v7, 0xCu);
  }

  [v3 activate];
}

void __52___BNPresentableContext__activeConnectionWithError___block_invoke_45(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    objc_sync_enter(v6);
    v7 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1C42DC000, v7, OS_LOG_TYPE_DEFAULT, "BNPresentableContext (service-side) connection invalidated: %{public}@", &v9, 0xCu);
    }

    v8 = *(v6 + 3);
    *(v6 + 3) = 0;

    if (*(v6 + 45) == 1)
    {
      [v6 _runPostConnectionInvalidation];
    }

    objc_sync_exit(v6);
  }
}

void __55___BNPresentableContext__runPostConnectionInvalidation__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[10])
  {
    v3 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[6];
      v5 = v3;
      v6 = BNEffectivePresentableDescription(v4);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_DEFAULT, "Connection invalidated, updating banner appear state: %{public}@", &v7, 0xCu);
    }

    if (*(v2 + 10) != 3)
    {
      [v2 _setBannerAppearState:3 reason:@"BNPresentableContext (service-side) connection invalidated."];
    }

    [v2 _setBannerAppearState:0 reason:@"BNPresentableContext (service-side) connection invalidated."];
  }
}

@end