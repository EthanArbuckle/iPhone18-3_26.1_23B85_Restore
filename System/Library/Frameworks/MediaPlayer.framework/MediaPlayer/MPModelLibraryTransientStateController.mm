@interface MPModelLibraryTransientStateController
+ (id)sharedDeviceLibraryController;
- (MPModelLibraryTransientStateController)init;
- (id)registerTransientAddState:(int64_t)a3 forModelObjects:(id)a4 relatedModelObjects:(id)a5;
- (id)registerTransientFavoriteState:(int64_t)a3 forModelObjects:(id)a4 relatedModelObjects:(id)a5;
- (id)registerTransientKeepLocalState:(int64_t)a3 forModelObjects:(id)a4 relatedModelObjects:(id)a5;
- (id)registerTransientPinnedState:(int64_t)a3 defaultAction:(int64_t)a4 forModelObjects:(id)a5 relatedModelObjects:(id)a6;
- (int64_t)transientAddStateForModelObject:(id)a3;
- (int64_t)transientDefaultActionForModelObject:(id)a3;
- (int64_t)transientFavoriteStateForModelObject:(id)a3;
- (int64_t)transientKeepLocalStateForModelObject:(id)a3;
- (int64_t)transientPinnedStateForModelObject:(id)a3;
- (void)performDeleteEntityChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5;
- (void)performFavoriteStateChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5;
- (void)performImportChangeDependentOperationsWithImportedObjects:(id)a3;
- (void)performKeepLocalChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5;
- (void)performLibraryImportChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5;
- (void)performLibraryPinChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5;
- (void)performPlaylistEditChangeRequest:(id)a3 localPersistenceResponseHandler:(id)a4 completeResponseHandler:(id)a5;
- (void)unregisterTransientState:(id)a3;
@end

@implementation MPModelLibraryTransientStateController

+ (id)sharedDeviceLibraryController
{
  if (sharedDeviceLibraryController_sOnceToken != -1)
  {
    dispatch_once(&sharedDeviceLibraryController_sOnceToken, &__block_literal_global_29652);
  }

  v3 = sharedDeviceLibraryController_sSharedDeviceLibraryController;

  return v3;
}

void __71__MPModelLibraryTransientStateController_sharedDeviceLibraryController__block_invoke()
{
  v0 = objc_alloc_init(MPModelLibraryTransientStateController);
  v1 = sharedDeviceLibraryController_sSharedDeviceLibraryController;
  sharedDeviceLibraryController_sSharedDeviceLibraryController = v0;
}

- (MPModelLibraryTransientStateController)init
{
  v10.receiver = self;
  v10.super_class = MPModelLibraryTransientStateController;
  v2 = [(MPModelLibraryTransientStateController *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.MPModelLibraryTransientStateController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.MediaPlayer.MPModelLibraryTransientStateController.notificationQueue", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v7;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.MediaPlayer.MPModelLibraryTransientStateController.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
  }

  return v2;
}

- (void)performImportChangeDependentOperationsWithImportedObjects:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = self;
  obj = self->_importChangeDependentOperations;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v31 = *v42;
    v32 = v4;
    do
    {
      v8 = 0;
      v33 = v6;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = objc_opt_respondsToSelector();
        if (v4)
        {
          if (v10)
          {
            v11 = [v9 modelObject];

            if (v11)
            {
              v35 = v8;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v12 = v4;
              v13 = [v12 countByEnumeratingWithState:&v37 objects:v51 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v38;
                do
                {
                  for (i = 0; i != v14; ++i)
                  {
                    if (*v38 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(&v37 + 1) + 8 * i);
                    v18 = [v17 identifiers];
                    v19 = [v9 modelObject];
                    v20 = [v19 identifiers];
                    v21 = [v18 intersectsSet:v20];

                    if (v21)
                    {
                      v22 = os_log_create("com.apple.amp.mediaplayer", "Default");
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                      {
                        v23 = [v17 identifiers];
                        v24 = [v23 description];
                        *buf = 138543874;
                        v46 = v36;
                        v47 = 2114;
                        v48 = v24;
                        v49 = 2114;
                        v50 = v9;
                        _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating model object with library identifiers=%{public}@ for import change dependent operation=%{public}@", buf, 0x20u);
                      }

                      v25 = [v17 identifiers];
                      [v9 updateModelObjectWithLibraryIdentifiers:v25];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v37 objects:v51 count:16];
                }

                while (v14);
              }

              v7 = v31;
              v4 = v32;
              v6 = v33;
              v8 = v35;
            }
          }
        }

        if (![v9 isValid])
        {
          v28 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v46 = v36;
            v47 = 2114;
            v48 = v9;
            _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing invalid import change dependent operation=%{public}@ from queue", buf, 0x16u);
          }

          goto LABEL_28;
        }

        if ([v9 canPerform])
        {
          v26 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v46 = v36;
            v47 = 2114;
            v48 = v9;
            _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing import change dependent operation=%{public}@", buf, 0x16u);
          }

          operationQueue = v36->_operationQueue;
          v28 = [v9 underlyingLibraryOperation];
          [(NSOperationQueue *)operationQueue addOperation:v28];
LABEL_28:

          goto LABEL_30;
        }

        [(NSMutableArray *)v30 addObject:v9];
LABEL_30:
        ++v8;
      }

      while (v8 != v6);
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v6);
  }

  importChangeDependentOperations = v36->_importChangeDependentOperations;
  v36->_importChangeDependentOperations = v30;
}

- (void)performPlaylistEditChangeRequest:(id)a3 localPersistenceResponseHandler:(id)a4 completeResponseHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 newOperationWithLocalPersistenceResponseHandler:v9 completeResponseHandler:v10];
    v12 = [v8 playlist];
    if (v12 && (v13 = -[MPModelLibraryTransientStateController transientAddStateForModelObject:](self, "transientAddStateForModelObject:", v12), [v12 identifiers], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "library"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "persistentID"), v15, v14, !v16) && v13 == 1)
    {
      if (!self->_importChangeDependentOperations)
      {
        v17 = objc_opt_new();
        importChangeDependentOperations = self->_importChangeDependentOperations;
        self->_importChangeDependentOperations = v17;
      }

      v19 = objc_opt_new();
      [v19 setUnderlyingLibraryOperation:v11];
      [v19 setTransientStateController:self];
      v20 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543874;
        v22 = self;
        v23 = 2114;
        v24 = v19;
        v25 = 2114;
        v26 = v12;
        _os_log_impl(&dword_1A238D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueueing import change dependent operation=%{public}@ for playlist=%{public}@", &v21, 0x20u);
      }

      [(NSMutableArray *)self->_importChangeDependentOperations addObject:v19];
    }

    else
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v11];
    }
  }

  else
  {
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0);
    }
  }
}

- (void)performLibraryPinChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 operation];
    if ((v12 - 2) >= 2)
    {
      if (v12 == 1)
      {
        v13 = 1;
        v14 = 2;
      }

      else
      {
        if (!v12)
        {
          goto LABEL_5;
        }

        v13 = 0;
        v14 = 0;
      }

LABEL_10:
      v15 = [v8 defaultAction];
      v16 = v15;
      if (v15 == 3 || v15 == 2 || v15 == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      v18 = [v8 entity];
      v19 = 0;
      if (v18)
      {
        v20 = v13;
      }

      else
      {
        v20 = 0;
      }

      if (v17 && v20)
      {
        v21 = objc_alloc_init(MPMutableSectionedCollection);
        [(MPMutableSectionedCollection *)v21 appendSection:&stru_1F149ECA8];
        [(MPMutableSectionedCollection *)v21 appendItem:v18];
        v19 = [(MPModelLibraryTransientStateController *)self registerTransientPinnedState:v14 defaultAction:v16 forModelObjects:v21 relatedModelObjects:v9];
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __108__MPModelLibraryTransientStateController_performLibraryPinChangeRequest_withRelatedModelObjects_completion___block_invoke;
      v24[3] = &unk_1E7680198;
      v25 = v19;
      v26 = self;
      v27 = v11;
      v22 = v19;
      v23 = [v8 newOperationWithResponseHandler:v24];
      [(NSOperationQueue *)self->_operationQueue addOperation:v23];

      goto LABEL_22;
    }

LABEL_5:
    v13 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }

LABEL_22:
}

void __108__MPModelLibraryTransientStateController_performLibraryPinChangeRequest_withRelatedModelObjects_completion___block_invoke(int8x16_t *a1, void *a2)
{
  v3 = a2;
  if (a1[2].i64[0])
  {
    v4 = dispatch_time(0, 2000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108__MPModelLibraryTransientStateController_performLibraryPinChangeRequest_withRelatedModelObjects_completion___block_invoke_2;
    block[3] = &unk_1E76823C0;
    v8 = a1[2];
    v6 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    dispatch_after(v4, v5, block);
  }

  v7 = a1[3].i64[0];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)performFavoriteStateChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 requestAction];
  v12 = [v11 changeRequestAction];

  v13 = 0;
  v14 = 1;
  if (v12 <= 1)
  {
    if (!v12)
    {
      v14 = 0;
      v13 = 3;
      goto LABEL_10;
    }

    if (v12 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v12 == 2)
  {
    v14 = 0;
    v13 = 2;
    goto LABEL_10;
  }

  if (v12 == 3)
  {
LABEL_7:
    v14 = 0;
    v13 = 1;
  }

LABEL_10:
  v15 = [v8 modelObject];
  if (!v8)
  {
    goto LABEL_18;
  }

  v16 = [v8 requestAction];
  if (v16)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v14 = 1;
  }

  if (v14 != 1)
  {
    v19 = objc_alloc_init(MPMutableSectionedCollection);
    [(MPMutableSectionedCollection *)v19 appendSection:&stru_1F149ECA8];
    [(MPMutableSectionedCollection *)v19 appendItem:v15];
    v20 = [(MPModelLibraryTransientStateController *)self registerTransientFavoriteState:v13 forModelObjects:v19 relatedModelObjects:v9];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __111__MPModelLibraryTransientStateController_performFavoriteStateChangeRequest_withRelatedModelObjects_completion___block_invoke;
    v23[3] = &unk_1E7680198;
    v24 = v20;
    v25 = self;
    v26 = v10;
    v21 = v20;
    v22 = [v8 newOperationWithResponseHandler:v23];
    [(NSOperationQueue *)self->_operationQueue addOperation:v22];
  }

  else
  {
LABEL_18:
    if (v10)
    {
      v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"Invalid request to favorite entity"];
      (*(v10 + 2))(v10, v18);
    }
  }
}

void __111__MPModelLibraryTransientStateController_performFavoriteStateChangeRequest_withRelatedModelObjects_completion___block_invoke(int8x16_t *a1, void *a2)
{
  v3 = a2;
  if (a1[2].i64[0])
  {
    v4 = dispatch_time(0, 2000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__MPModelLibraryTransientStateController_performFavoriteStateChangeRequest_withRelatedModelObjects_completion___block_invoke_2;
    block[3] = &unk_1E76823C0;
    v8 = a1[2];
    v6 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    dispatch_after(v4, v5, block);
  }

  v7 = a1[3].i64[0];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)performKeepLocalChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 enableState];
    v13 = 0;
    v14 = 0;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v14 = 1;
          v13 = 4;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (v12 == -1)
      {
        v14 = 1;
        v13 = 3;
        goto LABEL_13;
      }

      if (v12 != 1)
      {
LABEL_13:
        v15 = [v8 modelObject];
        v16 = v15;
        v17 = 0;
        if (v14 && v15)
        {
          v18 = objc_alloc_init(MPMutableSectionedCollection);
          [(MPMutableSectionedCollection *)v18 appendSection:&stru_1F149ECA8];
          [(MPMutableSectionedCollection *)v18 appendItem:v16];
          v17 = [(MPModelLibraryTransientStateController *)self registerTransientKeepLocalState:v13 forModelObjects:v18 relatedModelObjects:v9];
        }

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __107__MPModelLibraryTransientStateController_performKeepLocalChangeRequest_withRelatedModelObjects_completion___block_invoke;
        v21[3] = &unk_1E7680198;
        v22 = v17;
        v23 = self;
        v24 = v11;
        v19 = v17;
        v20 = [v8 newOperationWithResponseHandler:v21];
        [(NSOperationQueue *)self->_operationQueue addOperation:v20];

        goto LABEL_17;
      }
    }

    v14 = 1;
    v13 = v12;
    goto LABEL_13;
  }

  if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }

LABEL_17:
}

void __107__MPModelLibraryTransientStateController_performKeepLocalChangeRequest_withRelatedModelObjects_completion___block_invoke(int8x16_t *a1, void *a2)
{
  v3 = a2;
  if (a1[2].i64[0])
  {
    v4 = dispatch_time(0, 2000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __107__MPModelLibraryTransientStateController_performKeepLocalChangeRequest_withRelatedModelObjects_completion___block_invoke_2;
    block[3] = &unk_1E76823C0;
    v8 = a1[2];
    v6 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    dispatch_after(v4, v5, block);
  }

  v7 = a1[3].i64[0];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)performLibraryImportChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if ([v8 shouldLibraryAdd])
    {
      v12 = [v8 modelObjects];
      v13 = [(MPModelLibraryTransientStateController *)self registerTransientAddState:1 forModelObjects:v12 relatedModelObjects:v9];

      v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v26 = self;
        v27 = 2114;
        v28 = v8;
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding %{public}@ to library with token=%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __111__MPModelLibraryTransientStateController_performLibraryImportChangeRequest_withRelatedModelObjects_completion___block_invoke;
    v20 = &unk_1E767AAB0;
    v21 = self;
    v22 = v8;
    v15 = v13;
    v23 = v15;
    v24 = v11;
    v16 = [v22 newOperationWithResponseHandler:&v17];
    if (v16)
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v16, v17, v18, v19, v20, v21, v22, v23];
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

void __111__MPModelLibraryTransientStateController_performLibraryImportChangeRequest_withRelatedModelObjects_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = _Block_copy(*(a1 + 56));
    *buf = 138544386;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v6;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@, token=%{public}@ finished with error=%{public}@, completionHandler=%p", buf, 0x34u);
  }

  if (*(a1 + 48))
  {
    v12 = dispatch_time(0, 2000000000);
    v13 = dispatch_get_global_queue(0, 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111__MPModelLibraryTransientStateController_performLibraryImportChangeRequest_withRelatedModelObjects_completion___block_invoke_19;
    v16[3] = &unk_1E767C7D0;
    v14 = *(a1 + 40);
    v16[4] = *(a1 + 32);
    v17 = v14;
    v18 = *(a1 + 48);
    v19 = v5;
    dispatch_after(v12, v13, v16);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, v5, v6);
  }
}

void __111__MPModelLibraryTransientStateController_performLibraryImportChangeRequest_withRelatedModelObjects_completion___block_invoke_19(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138543874;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@, starting to unregister token=%{public}@", buf, 0x20u);
  }

  [*(a1 + 32) unregisterTransientState:*(a1 + 48)];
  v6 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@, finished unregister token=%{public}@, starting to run dependent operations", buf, 0x20u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__MPModelLibraryTransientStateController_performLibraryImportChangeRequest_withRelatedModelObjects_completion___block_invoke_20;
  block[3] = &unk_1E76800A0;
  block[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __111__MPModelLibraryTransientStateController_performLibraryImportChangeRequest_withRelatedModelObjects_completion___block_invoke_20(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) performImportChangeDependentOperationsWithImportedObjects:*(a1 + 40)];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Request %{public}@ finished running dependent operations", &v5, 0x16u);
  }
}

- (void)performDeleteEntityChangeRequest:(id)a3 withRelatedModelObjects:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 modelObject];
    if (v12)
    {
      v13 = objc_alloc_init(MPMutableSectionedCollection);
      [(MPMutableSectionedCollection *)v13 appendSection:&stru_1F149ECA8];
      [(MPMutableSectionedCollection *)v13 appendItem:v12];
      v14 = [(MPModelLibraryTransientStateController *)self registerTransientAddState:2 forModelObjects:v13 relatedModelObjects:v9];
    }

    else
    {
      v14 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __110__MPModelLibraryTransientStateController_performDeleteEntityChangeRequest_withRelatedModelObjects_completion___block_invoke;
    v17[3] = &unk_1E7680198;
    v15 = v14;
    v18 = v15;
    v19 = self;
    v20 = v11;
    v16 = [v8 newOperationWithResponseHandler:v17];
    if (v16)
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v16];
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __110__MPModelLibraryTransientStateController_performDeleteEntityChangeRequest_withRelatedModelObjects_completion___block_invoke(int8x16_t *a1, void *a2)
{
  v3 = a2;
  if (a1[2].i64[0])
  {
    v4 = dispatch_time(0, 2000000000);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __110__MPModelLibraryTransientStateController_performDeleteEntityChangeRequest_withRelatedModelObjects_completion___block_invoke_2;
    block[3] = &unk_1E76823C0;
    v8 = a1[2];
    v6 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    dispatch_after(v4, v5, block);
  }

  v7 = a1[3].i64[0];
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (int64_t)transientDefaultActionForModelObject:(id)a3
{
  v4 = [a3 identifiers];
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MPModelLibraryTransientStateController_transientDefaultActionForModelObject___block_invoke;
    block[3] = &unk_1E7681330;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(accessQueue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __79__MPModelLibraryTransientStateController_transientDefaultActionForModelObject___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(*(a1 + 32) + 32) reverseObjectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 modelObjects];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __79__MPModelLibraryTransientStateController_transientDefaultActionForModelObject___block_invoke_2;
        v19[3] = &unk_1E767AA88;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v21 = v6;
        v22 = v9;
        v20 = v8;
        [v7 enumerateItemIdentifiersUsingBlock:v19];
        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_12;
        }

        v10 = [v6 relatedModelObjects];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __79__MPModelLibraryTransientStateController_transientDefaultActionForModelObject___block_invoke_3;
        v15[3] = &unk_1E767AA88;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v17 = v6;
        v18 = v12;
        v16 = v11;
        [v10 enumerateItemIdentifiersUsingBlock:v15];

        v13 = *(*(*(a1 + 48) + 8) + 24);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

uint64_t __79__MPModelLibraryTransientStateController_transientDefaultActionForModelObject___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) defaultPinAction];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __79__MPModelLibraryTransientStateController_transientDefaultActionForModelObject___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) defaultPinAction];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

- (int64_t)transientPinnedStateForModelObject:(id)a3
{
  v4 = [a3 identifiers];
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__MPModelLibraryTransientStateController_transientPinnedStateForModelObject___block_invoke;
    block[3] = &unk_1E7681330;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(accessQueue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __77__MPModelLibraryTransientStateController_transientPinnedStateForModelObject___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(*(a1 + 32) + 32) reverseObjectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 modelObjects];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __77__MPModelLibraryTransientStateController_transientPinnedStateForModelObject___block_invoke_2;
        v19[3] = &unk_1E767AA88;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v21 = v6;
        v22 = v9;
        v20 = v8;
        [v7 enumerateItemIdentifiersUsingBlock:v19];
        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_12;
        }

        v10 = [v6 relatedModelObjects];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __77__MPModelLibraryTransientStateController_transientPinnedStateForModelObject___block_invoke_3;
        v15[3] = &unk_1E767AA88;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v17 = v6;
        v18 = v12;
        v16 = v11;
        [v10 enumerateItemIdentifiersUsingBlock:v15];

        v13 = *(*(*(a1 + 48) + 8) + 24);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

uint64_t __77__MPModelLibraryTransientStateController_transientPinnedStateForModelObject___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) pinnedState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __77__MPModelLibraryTransientStateController_transientPinnedStateForModelObject___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) pinnedState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

- (int64_t)transientFavoriteStateForModelObject:(id)a3
{
  v4 = [a3 identifiers];
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MPModelLibraryTransientStateController_transientFavoriteStateForModelObject___block_invoke;
    block[3] = &unk_1E7681330;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(accessQueue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __79__MPModelLibraryTransientStateController_transientFavoriteStateForModelObject___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(*(a1 + 32) + 32) reverseObjectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 modelObjects];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __79__MPModelLibraryTransientStateController_transientFavoriteStateForModelObject___block_invoke_2;
        v19[3] = &unk_1E767AA88;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v21 = v6;
        v22 = v9;
        v20 = v8;
        [v7 enumerateItemIdentifiersUsingBlock:v19];
        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_12;
        }

        v10 = [v6 relatedModelObjects];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __79__MPModelLibraryTransientStateController_transientFavoriteStateForModelObject___block_invoke_3;
        v15[3] = &unk_1E767AA88;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v17 = v6;
        v18 = v12;
        v16 = v11;
        [v10 enumerateItemIdentifiersUsingBlock:v15];

        v13 = *(*(*(a1 + 48) + 8) + 24);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

uint64_t __79__MPModelLibraryTransientStateController_transientFavoriteStateForModelObject___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) favoriteState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __79__MPModelLibraryTransientStateController_transientFavoriteStateForModelObject___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) favoriteState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

- (int64_t)transientKeepLocalStateForModelObject:(id)a3
{
  v4 = [a3 identifiers];
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__MPModelLibraryTransientStateController_transientKeepLocalStateForModelObject___block_invoke;
    block[3] = &unk_1E7681330;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(accessQueue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __80__MPModelLibraryTransientStateController_transientKeepLocalStateForModelObject___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(*(a1 + 32) + 32) reverseObjectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 modelObjects];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __80__MPModelLibraryTransientStateController_transientKeepLocalStateForModelObject___block_invoke_2;
        v19[3] = &unk_1E767AA88;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v21 = v6;
        v22 = v9;
        v20 = v8;
        [v7 enumerateItemIdentifiersUsingBlock:v19];
        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_12;
        }

        v10 = [v6 relatedModelObjects];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __80__MPModelLibraryTransientStateController_transientKeepLocalStateForModelObject___block_invoke_3;
        v15[3] = &unk_1E767AA88;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v17 = v6;
        v18 = v12;
        v16 = v11;
        [v10 enumerateItemIdentifiersUsingBlock:v15];

        v13 = *(*(*(a1 + 48) + 8) + 24);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

uint64_t __80__MPModelLibraryTransientStateController_transientKeepLocalStateForModelObject___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) keepLocalState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __80__MPModelLibraryTransientStateController_transientKeepLocalStateForModelObject___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) keepLocalState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

- (int64_t)transientAddStateForModelObject:(id)a3
{
  v4 = [a3 identifiers];
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__MPModelLibraryTransientStateController_transientAddStateForModelObject___block_invoke;
    block[3] = &unk_1E7681330;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(accessQueue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __74__MPModelLibraryTransientStateController_transientAddStateForModelObject___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(*(a1 + 32) + 32) reverseObjectEnumerator];
  v2 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v24;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v24 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [v6 modelObjects];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __74__MPModelLibraryTransientStateController_transientAddStateForModelObject___block_invoke_2;
        v19[3] = &unk_1E767AA88;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v21 = v6;
        v22 = v9;
        v20 = v8;
        [v7 enumerateItemIdentifiersUsingBlock:v19];
        if (*(*(*(a1 + 48) + 8) + 24))
        {

          goto LABEL_12;
        }

        v10 = [v6 relatedModelObjects];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __74__MPModelLibraryTransientStateController_transientAddStateForModelObject___block_invoke_3;
        v15[3] = &unk_1E767AA88;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v17 = v6;
        v18 = v12;
        v16 = v11;
        [v10 enumerateItemIdentifiersUsingBlock:v15];

        v13 = *(*(*(a1 + 48) + 8) + 24);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

uint64_t __74__MPModelLibraryTransientStateController_transientAddStateForModelObject___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) addState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __74__MPModelLibraryTransientStateController_transientAddStateForModelObject___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intersectsSet:*(a1 + 32)];
  if (result)
  {
    result = [*(a1 + 40) addState];
    *(*(*(a1 + 48) + 8) + 24) = result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      *a4 = 1;
    }
  }

  return result;
}

- (void)unregisterTransientState:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v10 = v4;
  v6 = v4;
  dispatch_barrier_sync(accessQueue, block);
  notificationQueue = self->_notificationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke_3;
  v8[3] = &unk_1E7682518;
  v8[4] = self;
  dispatch_async(notificationQueue, v8);
}

void __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v2 = *(*(a1 + 32) + 32);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke_2;
  v8 = &unk_1E767AA60;
  v9 = *(a1 + 40);
  v10 = &v11;
  [v2 enumerateObjectsUsingBlock:&v5];
  if (v12[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 32) removeObjectAtIndex:{v5, v6, v7, v8}];
    if (![*(*(a1 + 32) + 32) count])
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 32);
      *(v3 + 32) = 0;
    }
  }

  _Block_object_dispose(&v11, 8);
}

void __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:*(a1 + 32)];
}

void __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 token];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)registerTransientPinnedState:(int64_t)a3 defaultAction:(int64_t)a4 forModelObjects:(id)a5 relatedModelObjects:(id)a6
{
  v10 = a5;
  v11 = a6;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__29587;
  v30 = __Block_byref_object_dispose__29588;
  v31 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__MPModelLibraryTransientStateController_registerTransientPinnedState_defaultAction_forModelObjects_relatedModelObjects___block_invoke;
  block[3] = &unk_1E767AA38;
  v24 = a3;
  v25 = a4;
  v20 = v10;
  v21 = v11;
  v22 = self;
  v23 = &v26;
  v13 = v11;
  v14 = v10;
  dispatch_barrier_sync(accessQueue, block);
  notificationQueue = self->_notificationQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __121__MPModelLibraryTransientStateController_registerTransientPinnedState_defaultAction_forModelObjects_relatedModelObjects___block_invoke_2;
  v18[3] = &unk_1E7682518;
  v18[4] = self;
  dispatch_async(notificationQueue, v18);
  v16 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __121__MPModelLibraryTransientStateController_registerTransientPinnedState_defaultAction_forModelObjects_relatedModelObjects___block_invoke(void *a1)
{
  v9 = objc_alloc_init(_MPModelLibraryRegisteredTransientState);
  [(_MPModelLibraryRegisteredTransientState *)v9 setPinnedState:a1[8]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setDefaultPinAction:a1[9]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setModelObjects:a1[4]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setRelatedModelObjects:a1[5]];
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [(_MPModelLibraryRegisteredTransientState *)v9 setToken:*(*(a1[7] + 8) + 40)];
  v5 = *(a1[6] + 32);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = a1[6];
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v5 = *(a1[6] + 32);
  }

  [v5 addObject:v9];
}

void __121__MPModelLibraryTransientStateController_registerTransientPinnedState_defaultAction_forModelObjects_relatedModelObjects___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:*(a1 + 32)];
}

- (id)registerTransientFavoriteState:(int64_t)a3 forModelObjects:(id)a4 relatedModelObjects:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__29587;
  v27 = __Block_byref_object_dispose__29588;
  v28 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__MPModelLibraryTransientStateController_registerTransientFavoriteState_forModelObjects_relatedModelObjects___block_invoke;
  block[3] = &unk_1E767CA58;
  v21 = &v23;
  v22 = a3;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v11 = v9;
  v12 = v8;
  dispatch_barrier_sync(accessQueue, block);
  notificationQueue = self->_notificationQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __109__MPModelLibraryTransientStateController_registerTransientFavoriteState_forModelObjects_relatedModelObjects___block_invoke_2;
  v16[3] = &unk_1E7682518;
  v16[4] = self;
  dispatch_async(notificationQueue, v16);
  v14 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __109__MPModelLibraryTransientStateController_registerTransientFavoriteState_forModelObjects_relatedModelObjects___block_invoke(void *a1)
{
  v9 = objc_alloc_init(_MPModelLibraryRegisteredTransientState);
  [(_MPModelLibraryRegisteredTransientState *)v9 setFavoriteState:a1[8]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setModelObjects:a1[4]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setRelatedModelObjects:a1[5]];
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [(_MPModelLibraryRegisteredTransientState *)v9 setToken:*(*(a1[7] + 8) + 40)];
  v5 = *(a1[6] + 32);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = a1[6];
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v5 = *(a1[6] + 32);
  }

  [v5 addObject:v9];
}

void __109__MPModelLibraryTransientStateController_registerTransientFavoriteState_forModelObjects_relatedModelObjects___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:*(a1 + 32)];
}

- (id)registerTransientKeepLocalState:(int64_t)a3 forModelObjects:(id)a4 relatedModelObjects:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__29587;
  v27 = __Block_byref_object_dispose__29588;
  v28 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__MPModelLibraryTransientStateController_registerTransientKeepLocalState_forModelObjects_relatedModelObjects___block_invoke;
  block[3] = &unk_1E767CA58;
  v21 = &v23;
  v22 = a3;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v11 = v9;
  v12 = v8;
  dispatch_barrier_sync(accessQueue, block);
  notificationQueue = self->_notificationQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__MPModelLibraryTransientStateController_registerTransientKeepLocalState_forModelObjects_relatedModelObjects___block_invoke_2;
  v16[3] = &unk_1E7682518;
  v16[4] = self;
  dispatch_async(notificationQueue, v16);
  v14 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __110__MPModelLibraryTransientStateController_registerTransientKeepLocalState_forModelObjects_relatedModelObjects___block_invoke(void *a1)
{
  v9 = objc_alloc_init(_MPModelLibraryRegisteredTransientState);
  [(_MPModelLibraryRegisteredTransientState *)v9 setKeepLocalState:a1[8]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setModelObjects:a1[4]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setRelatedModelObjects:a1[5]];
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [(_MPModelLibraryRegisteredTransientState *)v9 setToken:*(*(a1[7] + 8) + 40)];
  v5 = *(a1[6] + 32);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = a1[6];
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v5 = *(a1[6] + 32);
  }

  [v5 addObject:v9];
}

void __110__MPModelLibraryTransientStateController_registerTransientKeepLocalState_forModelObjects_relatedModelObjects___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:*(a1 + 32)];
}

- (id)registerTransientAddState:(int64_t)a3 forModelObjects:(id)a4 relatedModelObjects:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__29587;
  v27 = __Block_byref_object_dispose__29588;
  v28 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__MPModelLibraryTransientStateController_registerTransientAddState_forModelObjects_relatedModelObjects___block_invoke;
  block[3] = &unk_1E767CA58;
  v21 = &v23;
  v22 = a3;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v11 = v9;
  v12 = v8;
  dispatch_barrier_sync(accessQueue, block);
  notificationQueue = self->_notificationQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__MPModelLibraryTransientStateController_registerTransientAddState_forModelObjects_relatedModelObjects___block_invoke_2;
  v16[3] = &unk_1E7682518;
  v16[4] = self;
  dispatch_async(notificationQueue, v16);
  v14 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v14;
}

void __104__MPModelLibraryTransientStateController_registerTransientAddState_forModelObjects_relatedModelObjects___block_invoke(void *a1)
{
  v9 = objc_alloc_init(_MPModelLibraryRegisteredTransientState);
  [(_MPModelLibraryRegisteredTransientState *)v9 setAddState:a1[8]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setModelObjects:a1[4]];
  [(_MPModelLibraryRegisteredTransientState *)v9 setRelatedModelObjects:a1[5]];
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [(_MPModelLibraryRegisteredTransientState *)v9 setToken:*(*(a1[7] + 8) + 40)];
  v5 = *(a1[6] + 32);
  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = a1[6];
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    v5 = *(a1[6] + 32);
  }

  [v5 addObject:v9];
}

void __104__MPModelLibraryTransientStateController_registerTransientAddState_forModelObjects_relatedModelObjects___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPModelLibraryTransientStateControllerDidChangeNotification" object:*(a1 + 32)];
}

@end