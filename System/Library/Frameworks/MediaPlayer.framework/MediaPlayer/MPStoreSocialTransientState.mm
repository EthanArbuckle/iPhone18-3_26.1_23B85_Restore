@interface MPStoreSocialTransientState
@end

@implementation MPStoreSocialTransientState

void __44___MPStoreSocialTransientState__endIfNeeded__block_invoke(void *a1)
{
  v2 = _Block_copy(*(a1[4] + 64));
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  if (*(v5 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 48) == 0;
  }

  *(*(a1[6] + 8) + 24) = v6;
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 64));
    v8 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_3;
    block[3] = &unk_1E767D3F0;
    v24 = a2;
    v9 = v7;
    v20 = v9;
    v21 = WeakRetained;
    v10 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = v10;
    dispatch_barrier_async(v8, block);
    v11 = *(a1 + 40);
    if (v11)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_5;
      v14[3] = &unk_1E767D418;
      v12 = v11;
      v18 = a2;
      v13 = *(a1 + 72);
      v16 = v12;
      v17 = v13;
      v15 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_7;
    v9 = &unk_1E76823C0;
    v10 = v3;
    v11 = WeakRetained;
    dispatch_barrier_async(v5, &v6);
    [WeakRetained _endIfNeeded];
  }
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_9(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 48);
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_10;
  block[3] = &unk_1E7682518;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_10(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_MPStoreSocialTransientStateDidChangeNotification" object:*(a1 + 32)];
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 48);
    if (v3 == v1)
    {
      *(v2 + 48) = 0;
    }
  }
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      if (*(v4 + 48) == v3)
      {
        *(v4 + 16) = *(*(*(a1 + 56) + 8) + 24);
      }
    }
  }

  block[5] = v1;
  block[6] = v2;
  v5 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_4;
  block[3] = &unk_1E7682518;
  block[4] = *(a1 + 48);
  dispatch_async(v5, block);
}

uint64_t __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_MPStoreSocialTransientStateDidChangeNotification" object:*(a1 + 32)];
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 64));
    v8 = WeakRetained[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_3;
    block[3] = &unk_1E767D3F0;
    v24 = a2;
    v9 = v7;
    v20 = v9;
    v21 = WeakRetained;
    v10 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = v10;
    dispatch_barrier_async(v8, block);
    v11 = *(a1 + 40);
    if (v11)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_5;
      v14[3] = &unk_1E767D418;
      v12 = v11;
      v18 = a2;
      v13 = *(a1 + 72);
      v16 = v12;
      v17 = v13;
      v15 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v14);
    }
  }
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained)
  {
    v5 = WeakRetained[3];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_7;
    v9 = &unk_1E76823C0;
    v10 = v3;
    v11 = WeakRetained;
    dispatch_barrier_async(v5, &v6);
    [WeakRetained _endIfNeeded];
  }
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_9(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 48);
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_10;
  block[3] = &unk_1E7682518;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_10(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_MPStoreSocialTransientStateDidChangeNotification" object:*(a1 + 32)];
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 40);
    if (v3 == v1)
    {
      *(v2 + 40) = 0;
    }
  }
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      if (*(v4 + 40) == v3)
      {
        *(v4 + 8) = *(*(*(a1 + 56) + 8) + 24);
      }
    }
  }

  block[5] = v1;
  block[6] = v2;
  v5 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_4;
  block[3] = &unk_1E7682518;
  block[4] = *(a1 + 48);
  dispatch_async(v5, block);
}

uint64_t __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3, *(a1 + 32));
}

void __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_MPStoreSocialTransientStateDidChangeNotification" object:*(a1 + 32)];
}

@end