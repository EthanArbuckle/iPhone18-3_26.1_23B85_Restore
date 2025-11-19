@interface NSFileAccessClaimPresenterRelinquishment
@end

@implementation NSFileAccessClaimPresenterRelinquishment

uint64_t __62___NSFileAccessClaimPresenterRelinquishment_performRelinquish__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = _NSFCClaimsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v11 = [*(v9 + 8) claimID];
    *buf = 138543618;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_18075C000, v8, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ has finished relinquishing, unblocking claimer for %{public}@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __62___NSFileAccessClaimPresenterRelinquishment_performRelinquish__block_invoke_502;
  v15 = &unk_1E69F89B0;
  v16 = *(a1 + 32);
  v17 = a4;
  [*(v16 + 8) removeBlockingReactorID:{*(v16 + 16), MEMORY[0x1E69E9820], 3221225472}];
  if ([*(*(a1 + 32) + 8) isRevoked])
  {
    return v14(v13, &__block_literal_global_505);
  }

  [*(*(a1 + 32) + 8) addReacquirer:v13 forPresenterID:*(*(a1 + 32) + 16)];
  if (a2)
  {
    if (![*(*(a1 + 32) + 8) claimerError])
    {
      [*(*(a1 + 32) + 8) setClaimerError:a3];
    }
  }

  return [*(*(a1 + 32) + 8) unblockClaimerForReason:*(*(a1 + 32) + 24)];
}

uint64_t __62___NSFileAccessClaimPresenterRelinquishment_performRelinquish__block_invoke_502(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _NSFCClaimsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v7 = [*(v5 + 8) claimID];
    *buf = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Making presenter %{public}@ reacquire after claim %{public}@", buf, 0x16u);
  }

  [*(*(a1 + 32) + 8) addBlockingReactorID:*(*(a1 + 32) + 16)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62___NSFileAccessClaimPresenterRelinquishment_performRelinquish__block_invoke_503;
  v14[3] = &unk_1E69F5678;
  v8 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v14[5] = a2;
  return (*(v8 + 16))(v8, v14, v9, v10, v11, v12);
}

uint64_t __62___NSFileAccessClaimPresenterRelinquishment_performRelinquish__block_invoke_503(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeBlockingReactorID:*(*(a1 + 32) + 16)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end