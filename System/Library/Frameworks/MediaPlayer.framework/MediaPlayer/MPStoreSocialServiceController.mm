@interface MPStoreSocialServiceController
+ (id)_internalErrorForHTTPResponseCode:(int64_t)a3;
- (MPStoreSocialServiceController)init;
- (id)_newOperationForRemovingFollower:(id)a3 completion:(id)a4;
- (id)_transientStateForPerson:(id)a3 shouldCreate:(BOOL)a4;
- (int64_t)transientFollowPendingRequestStateForPerson:(id)a3;
- (int64_t)transientFollowStateForPerson:(id)a3;
- (void)_notifyTransientStatesDidChangeWithSnapshot:(id)a3;
- (void)_performTransientFollowPendingRequestState:(int64_t)a3 onPerson:(id)a4 completion:(id)a5;
- (void)_performTransientFollowState:(int64_t)a3 onPerson:(id)a4 completion:(id)a5;
- (void)_populateTransientStatesSnapshot:(id)a3;
- (void)_queue_transientStatesDidChange;
- (void)_transientStatesDidChange;
- (void)acceptAllFollowRequestsWithCompletion:(id)a3;
- (void)removeFollower:(id)a3 completion:(id)a4;
@end

@implementation MPStoreSocialServiceController

- (id)_newOperationForRemovingFollower:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MPStoreSocialRemoveFollowerOperationDataSource);
  [(MPStoreSocialRemoveFollowerOperationDataSource *)v7 setPerson:v6];

  v8 = [[MPStoreSocialRequestOperation alloc] initWithDataSource:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__MPStoreSocialServiceController__newOperationForRemovingFollower_completion___block_invoke;
  v11[3] = &unk_1E767D3C8;
  v12 = v5;
  v9 = v5;
  [(MPStoreSocialRequestOperation *)v8 setResponseHandler:v11];

  return v8;
}

void __78__MPStoreSocialServiceController__newOperationForRemovingFollower_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__MPStoreSocialServiceController__newOperationForRemovingFollower_completion___block_invoke_2;
    v6[3] = &unk_1E76824C8;
    v8 = v5;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)_queue_transientStatesDidChange
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = objc_alloc_init(MPStoreSocialServiceTransientStatesSnapshot);
  [(MPStoreSocialServiceController *)self _populateTransientStatesSnapshot:v3];
  v4 = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MPStoreSocialServiceController__queue_transientStatesDidChange__block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_transientStatesDidChange
{
  dispatch_assert_queue_not_V2(self->_accessQueue);
  v3 = objc_alloc_init(MPStoreSocialServiceTransientStatesSnapshot);
  accessQueue = self->_accessQueue;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __59__MPStoreSocialServiceController__transientStatesDidChange__block_invoke;
  v9 = &unk_1E76823C0;
  v10 = self;
  v11 = v3;
  v5 = v3;
  dispatch_sync(accessQueue, &v6);
  [(MPStoreSocialServiceController *)self _notifyTransientStatesDidChangeWithSnapshot:v5, v6, v7, v8, v9, v10];
}

- (void)_notifyTransientStatesDidChangeWithSnapshot:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"MPStoreSocialServiceControllerTransientStatesSnapshotKey";
  v9[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"MPStoreSocialServiceControllerTransientStatesDidChangeNotification" object:self userInfo:v7];
}

- (void)_populateTransientStatesSnapshot:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_transientStates;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 followState];
        v12 = [v10 followPendingRequestState];
        v13 = [v10 person];
        [v4 _addTransientFollowState:v11 transientFollowPendingRequestState:v12 forPerson:v13];
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)_transientStateForPerson:(id)a3 shouldCreate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__41021;
  v29 = __Block_byref_object_dispose__41022;
  v30 = 0;
  v7 = [v6 identifiers];
  v8 = [v7 universalStore];
  v9 = [v8 socialProfileID];

  if ([v9 length])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke;
    block[3] = &unk_1E7681330;
    block[4] = self;
    v23 = v9;
    v24 = &v25;
    dispatch_sync(accessQueue, block);
  }

  v11 = v26[5];
  if (!v11 && v4)
  {
    v12 = [[_MPStoreSocialTransientState alloc] initWithPerson:v6];
    v13 = v26[5];
    v26[5] = v12;

    objc_initWeak(&location, self);
    v14 = v26[5];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_3;
    v19[3] = &unk_1E767D3A0;
    objc_copyWeak(&v20, &location);
    v19[4] = self;
    [v14 setCompletionBlock:v19];
    v15 = self->_accessQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_5;
    v18[3] = &unk_1E76819F0;
    v18[4] = self;
    v18[5] = &v25;
    dispatch_barrier_async(v15, v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    v11 = v26[5];
  }

  v16 = v11;

  _Block_object_dispose(&v25, 8);

  return v16;
}

void __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_2;
  v5[3] = &unk_1E767D378;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_4;
    block[3] = &unk_1E76800A0;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v5;
    dispatch_barrier_async(v6, block);
  }
}

uint64_t __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__handleTransientStateForPersonDidChangeNotification_ name:@"_MPStoreSocialTransientStateDidChangeNotification" object:*(*(*(a1 + 40) + 8) + 40)];

  [*(*(a1 + 32) + 24) addObject:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(a1 + 32);

  return [v3 _queue_transientStatesDidChange];
}

uint64_t __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_4(void *a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:a1[4] name:@"_MPStoreSocialTransientStateDidChangeNotification" object:a1[5]];

  [*(a1[6] + 24) removeObject:a1[5]];
  v3 = a1[4];

  return [v3 _queue_transientStatesDidChange];
}

void __72__MPStoreSocialServiceController__transientStateForPerson_shouldCreate___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v6 = [v11 person];
  v7 = [v6 identifiers];
  v8 = [v7 universalStore];
  v9 = [v8 socialProfileID];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_performTransientFollowPendingRequestState:(int64_t)a3 onPerson:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(MPStoreSocialServiceController *)self _transientStateForPerson:a4 shouldCreate:1];
  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__MPStoreSocialServiceController__performTransientFollowPendingRequestState_onPerson_completion___block_invoke;
    v14[3] = &unk_1E767D350;
    v10 = v8;
    v15 = v10;
    v11 = [v9 newOperationForTransientFollowPendingRequestState:a3 completion:v14];
    if (v11)
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v11];
    }

    else if (v10)
    {
      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:-3000 userInfo:0];
      (*(v10 + 2))(v10, 0, v13);
    }
  }

  else if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:-3000 userInfo:0];
    (*(v8 + 2))(v8, 0, v12);
  }
}

uint64_t __97__MPStoreSocialServiceController__performTransientFollowPendingRequestState_onPerson_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performTransientFollowState:(int64_t)a3 onPerson:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(MPStoreSocialServiceController *)self _transientStateForPerson:a4 shouldCreate:1];
  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__MPStoreSocialServiceController__performTransientFollowState_onPerson_completion___block_invoke;
    v14[3] = &unk_1E767D350;
    v10 = v8;
    v15 = v10;
    v11 = [v9 newOperationForTransientFollowState:a3 completion:v14];
    if (v11)
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v11];
    }

    else if (v10)
    {
      v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:-3000 userInfo:0];
      (*(v10 + 2))(v10, 0, v13);
    }
  }

  else if (v8)
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:-3000 userInfo:0];
    (*(v8 + 2))(v8, 0, v12);
  }
}

uint64_t __83__MPStoreSocialServiceController__performTransientFollowState_onPerson_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)transientFollowPendingRequestStateForPerson:(id)a3
{
  v3 = [(MPStoreSocialServiceController *)self _transientStateForPerson:a3 shouldCreate:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 followPendingRequestState];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)acceptAllFollowRequestsWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [[MPStoreSocialPendingFollowRequestOperationDataSource alloc] initWithAction:0];
  v5 = [[MPStoreSocialRequestOperation alloc] initWithDataSource:v6];
  [(MPStoreSocialRequestOperation *)v5 setResponseHandler:v4];

  [(NSOperationQueue *)self->_operationQueue addOperation:v5];
}

- (int64_t)transientFollowStateForPerson:(id)a3
{
  v3 = [(MPStoreSocialServiceController *)self _transientStateForPerson:a3 shouldCreate:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 followState];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeFollower:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MPStoreSocialServiceController_removeFollower_completion___block_invoke;
  v10[3] = &unk_1E76816D0;
  v7 = v6;
  v11 = v7;
  v8 = [(MPStoreSocialServiceController *)self _newOperationForRemovingFollower:a3 completion:v10];
  if (v8)
  {
    [(NSOperationQueue *)self->_operationQueue addOperation:v8];
  }

  else if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:-3000 userInfo:0];
    (*(v7 + 2))(v7, v9);
  }
}

uint64_t __60__MPStoreSocialServiceController_removeFollower_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MPStoreSocialServiceController)init
{
  v10.receiver = self;
  v10.super_class = MPStoreSocialServiceController;
  v2 = [(MPStoreSocialServiceController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreSocialServiceController.operationQueue"];
    v5 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreSocialServiceController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    transientStates = v2->_transientStates;
    v2->_transientStates = v7;
  }

  return v2;
}

+ (id)_internalErrorForHTTPResponseCode:(int64_t)a3
{
  v3 = -3000;
  if (a3 > 403)
  {
    v5 = -3004;
    if (a3 == 404)
    {
      v3 = -3002;
    }

    v4 = a3 == 409;
    goto LABEL_7;
  }

  if (a3 != 200)
  {
    v4 = a3 == 403;
    v5 = -3003;
LABEL_7:
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MPStoreSocialErrorDomain" code:v6 userInfo:0];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end