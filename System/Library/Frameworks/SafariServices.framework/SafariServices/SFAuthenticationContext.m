@interface SFAuthenticationContext
@end

@implementation SFAuthenticationContext

void __32___SFAuthenticationContext_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateAuthentication];
}

void __75___SFAuthenticationContext_authenticateForClient_userInitiated_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    if (v6[81])
    {
      v7 = 0;
      a2 = 0;
    }

    else
    {
      if ([v6 _contextRequiresSessionBasedAuthentication])
      {
        [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
      }

      v7 = 1;
      a2 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *(*(a1 + 32) + 80) = v7;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  if (a2)
  {
    v13.tv_sec = 0;
    v13.tv_nsec = 0;
    clock_gettime(_CLOCK_MONOTONIC, &v13);
    v10 = v13.tv_nsec / 1000000000.0 + v13.tv_sec;
  }

  else
  {
    v10 = 1.79769313e308;
  }

  *(*(a1 + 32) + 56) = v10;
  if (*(*(a1 + 32) + 81))
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobilesafari.authenticationContextErrorDomain" code:1 userInfo:0];
  }

  else
  {
    v11 = v5;
  }

  v12 = v11;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) _processNextClientAwaitingAuthenticationUserInitiated:*(a1 + 56)];
}

void __75___SFAuthenticationContext_authenticateForClient_userInitiated_completion___block_invoke_24(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75___SFAuthenticationContext_authenticateForClient_userInitiated_completion___block_invoke_2;
  block[3] = &unk_1E8494730;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75___SFAuthenticationContext_authenticateForClient_userInitiated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_2;
  v7[3] = &unk_1E8494780;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  (*(v3 + 16))(v3, v2 == 0);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_2_67;
  aBlock[3] = &unk_1E84947D0;
  v14 = *(a1 + 40);
  v15 = v6 == 0;
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [*(*(a1 + 32) + 16) authenticationCustomUIProgressObserverForContext:?];
  if (!v6 || *(*(a1 + 32) + 82) != 1)
  {
    v10 = [v5 objectForKeyedSubscript:&unk_1F50233C8];
    v11 = [v10 BOOLValue];

    if (v11 && !v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 authenticationDidEncounterMatch:*(a1 + 32) completion:v8];
      goto LABEL_10;
    }

LABEL_9:
    v8[2](v8);
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  [v9 authenticationDidCancel:*(a1 + 32) completion:v8];
LABEL_10:
}

void __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_4;
  block[3] = &unk_1E8493628;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73___SFAuthenticationContext__evaluatePolicyForClient_userInitiated_reply___block_invoke_4(uint64_t a1)
{
  (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __82___SFAuthenticationContext_preemptOngoingAuthenticationWithPasccodeAuthentication__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82___SFAuthenticationContext_preemptOngoingAuthenticationWithPasccodeAuthentication__block_invoke_2;
  v2[3] = &unk_1E848FD38;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __82___SFAuthenticationContext_preemptOngoingAuthenticationWithPasccodeAuthentication__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = [*(*(a1 + 32) + 16) authenticationCustomUIProgressObserverForContext:?];
    if (objc_opt_respondsToSelector())
    {
      [v3 authenticationDidFallbackToPasscode:*(a1 + 32)];
    }
  }
}

@end