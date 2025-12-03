@interface MPModelLibraryTransientStateController
+ (id)sharedDeviceLibraryController;
- (MPModelLibraryTransientStateController)init;
- (id)registerTransientAddState:(int64_t)state forModelObjects:(id)objects relatedModelObjects:(id)modelObjects;
- (id)registerTransientFavoriteState:(int64_t)state forModelObjects:(id)objects relatedModelObjects:(id)modelObjects;
- (id)registerTransientKeepLocalState:(int64_t)state forModelObjects:(id)objects relatedModelObjects:(id)modelObjects;
- (id)registerTransientPinnedState:(int64_t)state defaultAction:(int64_t)action forModelObjects:(id)objects relatedModelObjects:(id)modelObjects;
- (int64_t)transientAddStateForModelObject:(id)object;
- (int64_t)transientDefaultActionForModelObject:(id)object;
- (int64_t)transientFavoriteStateForModelObject:(id)object;
- (int64_t)transientKeepLocalStateForModelObject:(id)object;
- (int64_t)transientPinnedStateForModelObject:(id)object;
- (void)performDeleteEntityChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion;
- (void)performFavoriteStateChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion;
- (void)performImportChangeDependentOperationsWithImportedObjects:(id)objects;
- (void)performKeepLocalChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion;
- (void)performLibraryImportChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion;
- (void)performLibraryPinChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion;
- (void)performPlaylistEditChangeRequest:(id)request localPersistenceResponseHandler:(id)handler completeResponseHandler:(id)responseHandler;
- (void)unregisterTransientState:(id)state;
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

- (void)performImportChangeDependentOperationsWithImportedObjects:(id)objects
{
  v53 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v30 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  obj = self->_importChangeDependentOperations;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    v31 = *v42;
    v32 = objectsCopy;
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
        if (objectsCopy)
        {
          if (v10)
          {
            modelObject = [v9 modelObject];

            if (modelObject)
            {
              v35 = v8;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v12 = objectsCopy;
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
                    identifiers = [v17 identifiers];
                    modelObject2 = [v9 modelObject];
                    identifiers2 = [modelObject2 identifiers];
                    v21 = [identifiers intersectsSet:identifiers2];

                    if (v21)
                    {
                      v22 = os_log_create("com.apple.amp.mediaplayer", "Default");
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                      {
                        identifiers3 = [v17 identifiers];
                        v24 = [identifiers3 description];
                        *buf = 138543874;
                        v46 = selfCopy;
                        v47 = 2114;
                        v48 = v24;
                        v49 = 2114;
                        v50 = v9;
                        _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating model object with library identifiers=%{public}@ for import change dependent operation=%{public}@", buf, 0x20u);
                      }

                      identifiers4 = [v17 identifiers];
                      [v9 updateModelObjectWithLibraryIdentifiers:identifiers4];
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v37 objects:v51 count:16];
                }

                while (v14);
              }

              v7 = v31;
              objectsCopy = v32;
              v6 = v33;
              v8 = v35;
            }
          }
        }

        if (![v9 isValid])
        {
          underlyingLibraryOperation = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(underlyingLibraryOperation, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v46 = selfCopy;
            v47 = 2114;
            v48 = v9;
            _os_log_impl(&dword_1A238D000, underlyingLibraryOperation, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing invalid import change dependent operation=%{public}@ from queue", buf, 0x16u);
          }

          goto LABEL_28;
        }

        if ([v9 canPerform])
        {
          v26 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v46 = selfCopy;
            v47 = 2114;
            v48 = v9;
            _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing import change dependent operation=%{public}@", buf, 0x16u);
          }

          operationQueue = selfCopy->_operationQueue;
          underlyingLibraryOperation = [v9 underlyingLibraryOperation];
          [(NSOperationQueue *)operationQueue addOperation:underlyingLibraryOperation];
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

  importChangeDependentOperations = selfCopy->_importChangeDependentOperations;
  selfCopy->_importChangeDependentOperations = v30;
}

- (void)performPlaylistEditChangeRequest:(id)request localPersistenceResponseHandler:(id)handler completeResponseHandler:(id)responseHandler
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  responseHandlerCopy = responseHandler;
  if (requestCopy)
  {
    v11 = [requestCopy newOperationWithLocalPersistenceResponseHandler:handlerCopy completeResponseHandler:responseHandlerCopy];
    playlist = [requestCopy playlist];
    if (playlist && (v13 = -[MPModelLibraryTransientStateController transientAddStateForModelObject:](self, "transientAddStateForModelObject:", playlist), [playlist identifiers], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "library"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "persistentID"), v15, v14, !v16) && v13 == 1)
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
        selfCopy = self;
        v23 = 2114;
        v24 = v19;
        v25 = 2114;
        v26 = playlist;
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
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }

    if (responseHandlerCopy)
    {
      (*(responseHandlerCopy + 2))(responseHandlerCopy, 0, 0);
    }
  }
}

- (void)performLibraryPinChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion
{
  requestCopy = request;
  objectsCopy = objects;
  completionCopy = completion;
  v11 = completionCopy;
  if (requestCopy)
  {
    operation = [requestCopy operation];
    if ((operation - 2) >= 2)
    {
      if (operation == 1)
      {
        v13 = 1;
        v14 = 2;
      }

      else
      {
        if (!operation)
        {
          goto LABEL_5;
        }

        v13 = 0;
        v14 = 0;
      }

LABEL_10:
      defaultAction = [requestCopy defaultAction];
      v16 = defaultAction;
      if (defaultAction == 3 || defaultAction == 2 || defaultAction == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v16 = 0;
      }

      entity = [requestCopy entity];
      v19 = 0;
      if (entity)
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
        [(MPMutableSectionedCollection *)v21 appendItem:entity];
        v19 = [(MPModelLibraryTransientStateController *)self registerTransientPinnedState:v14 defaultAction:v16 forModelObjects:v21 relatedModelObjects:objectsCopy];
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __108__MPModelLibraryTransientStateController_performLibraryPinChangeRequest_withRelatedModelObjects_completion___block_invoke;
      v24[3] = &unk_1E7680198;
      v25 = v19;
      selfCopy = self;
      v27 = v11;
      v22 = v19;
      v23 = [requestCopy newOperationWithResponseHandler:v24];
      [(NSOperationQueue *)self->_operationQueue addOperation:v23];

      goto LABEL_22;
    }

LABEL_5:
    v13 = 1;
    v14 = 1;
    goto LABEL_10;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)performFavoriteStateChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion
{
  requestCopy = request;
  objectsCopy = objects;
  completionCopy = completion;
  requestAction = [requestCopy requestAction];
  changeRequestAction = [requestAction changeRequestAction];

  v13 = 0;
  v14 = 1;
  if (changeRequestAction <= 1)
  {
    if (!changeRequestAction)
    {
      v14 = 0;
      v13 = 3;
      goto LABEL_10;
    }

    if (changeRequestAction != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (changeRequestAction == 2)
  {
    v14 = 0;
    v13 = 2;
    goto LABEL_10;
  }

  if (changeRequestAction == 3)
  {
LABEL_7:
    v14 = 0;
    v13 = 1;
  }

LABEL_10:
  modelObject = [requestCopy modelObject];
  if (!requestCopy)
  {
    goto LABEL_18;
  }

  requestAction2 = [requestCopy requestAction];
  if (requestAction2)
  {
    v17 = modelObject == 0;
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
    [(MPMutableSectionedCollection *)v19 appendItem:modelObject];
    v20 = [(MPModelLibraryTransientStateController *)self registerTransientFavoriteState:v13 forModelObjects:v19 relatedModelObjects:objectsCopy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __111__MPModelLibraryTransientStateController_performFavoriteStateChangeRequest_withRelatedModelObjects_completion___block_invoke;
    v23[3] = &unk_1E7680198;
    v24 = v20;
    selfCopy = self;
    v26 = completionCopy;
    v21 = v20;
    v22 = [requestCopy newOperationWithResponseHandler:v23];
    [(NSOperationQueue *)self->_operationQueue addOperation:v22];
  }

  else
  {
LABEL_18:
    if (completionCopy)
    {
      v18 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPModelLibraryFavoriteEntityChangeRequestErrorDomain" code:2 debugDescription:@"Invalid request to favorite entity"];
      (*(completionCopy + 2))(completionCopy, v18);
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

- (void)performKeepLocalChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion
{
  requestCopy = request;
  objectsCopy = objects;
  completionCopy = completion;
  v11 = completionCopy;
  if (requestCopy)
  {
    enableState = [requestCopy enableState];
    v13 = 0;
    v14 = 0;
    if (enableState > 1)
    {
      if (enableState != 2)
      {
        if (enableState == 3)
        {
          v14 = 1;
          v13 = 4;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (enableState == -1)
      {
        v14 = 1;
        v13 = 3;
        goto LABEL_13;
      }

      if (enableState != 1)
      {
LABEL_13:
        modelObject = [requestCopy modelObject];
        v16 = modelObject;
        v17 = 0;
        if (v14 && modelObject)
        {
          v18 = objc_alloc_init(MPMutableSectionedCollection);
          [(MPMutableSectionedCollection *)v18 appendSection:&stru_1F149ECA8];
          [(MPMutableSectionedCollection *)v18 appendItem:v16];
          v17 = [(MPModelLibraryTransientStateController *)self registerTransientKeepLocalState:v13 forModelObjects:v18 relatedModelObjects:objectsCopy];
        }

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __107__MPModelLibraryTransientStateController_performKeepLocalChangeRequest_withRelatedModelObjects_completion___block_invoke;
        v21[3] = &unk_1E7680198;
        v22 = v17;
        selfCopy = self;
        v24 = v11;
        v19 = v17;
        v20 = [requestCopy newOperationWithResponseHandler:v21];
        [(NSOperationQueue *)self->_operationQueue addOperation:v20];

        goto LABEL_17;
      }
    }

    v14 = 1;
    v13 = enableState;
    goto LABEL_13;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)performLibraryImportChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  objectsCopy = objects;
  completionCopy = completion;
  v11 = completionCopy;
  if (requestCopy)
  {
    if ([requestCopy shouldLibraryAdd])
    {
      modelObjects = [requestCopy modelObjects];
      v13 = [(MPModelLibraryTransientStateController *)self registerTransientAddState:1 forModelObjects:modelObjects relatedModelObjects:objectsCopy];

      v14 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy = self;
        v27 = 2114;
        v28 = requestCopy;
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
    selfCopy2 = self;
    v22 = requestCopy;
    v15 = v13;
    v23 = v15;
    v24 = v11;
    v16 = [v22 newOperationWithResponseHandler:&v17];
    if (v16)
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v16, v17, v18, v19, v20, selfCopy2, v22, v23];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (void)performDeleteEntityChangeRequest:(id)request withRelatedModelObjects:(id)objects completion:(id)completion
{
  requestCopy = request;
  objectsCopy = objects;
  completionCopy = completion;
  v11 = completionCopy;
  if (requestCopy)
  {
    modelObject = [requestCopy modelObject];
    if (modelObject)
    {
      v13 = objc_alloc_init(MPMutableSectionedCollection);
      [(MPMutableSectionedCollection *)v13 appendSection:&stru_1F149ECA8];
      [(MPMutableSectionedCollection *)v13 appendItem:modelObject];
      v14 = [(MPModelLibraryTransientStateController *)self registerTransientAddState:2 forModelObjects:v13 relatedModelObjects:objectsCopy];
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
    selfCopy = self;
    v20 = v11;
    v16 = [requestCopy newOperationWithResponseHandler:v17];
    if (v16)
    {
      [(NSOperationQueue *)self->_operationQueue addOperation:v16];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (int64_t)transientDefaultActionForModelObject:(id)object
{
  identifiers = [object identifiers];
  v5 = identifiers;
  if (identifiers)
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
    v10 = identifiers;
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

- (int64_t)transientPinnedStateForModelObject:(id)object
{
  identifiers = [object identifiers];
  v5 = identifiers;
  if (identifiers)
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
    v10 = identifiers;
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

- (int64_t)transientFavoriteStateForModelObject:(id)object
{
  identifiers = [object identifiers];
  v5 = identifiers;
  if (identifiers)
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
    v10 = identifiers;
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

- (int64_t)transientKeepLocalStateForModelObject:(id)object
{
  identifiers = [object identifiers];
  v5 = identifiers;
  if (identifiers)
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
    v10 = identifiers;
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

- (int64_t)transientAddStateForModelObject:(id)object
{
  identifiers = [object identifiers];
  v5 = identifiers;
  if (identifiers)
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
    v10 = identifiers;
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

- (void)unregisterTransientState:(id)state
{
  stateCopy = state;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPModelLibraryTransientStateController_unregisterTransientState___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v10 = stateCopy;
  v6 = stateCopy;
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

- (id)registerTransientPinnedState:(int64_t)state defaultAction:(int64_t)action forModelObjects:(id)objects relatedModelObjects:(id)modelObjects
{
  objectsCopy = objects;
  modelObjectsCopy = modelObjects;
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
  stateCopy = state;
  actionCopy = action;
  v20 = objectsCopy;
  v21 = modelObjectsCopy;
  selfCopy = self;
  v23 = &v26;
  v13 = modelObjectsCopy;
  v14 = objectsCopy;
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

- (id)registerTransientFavoriteState:(int64_t)state forModelObjects:(id)objects relatedModelObjects:(id)modelObjects
{
  objectsCopy = objects;
  modelObjectsCopy = modelObjects;
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
  stateCopy = state;
  v18 = objectsCopy;
  v19 = modelObjectsCopy;
  selfCopy = self;
  v11 = modelObjectsCopy;
  v12 = objectsCopy;
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

- (id)registerTransientKeepLocalState:(int64_t)state forModelObjects:(id)objects relatedModelObjects:(id)modelObjects
{
  objectsCopy = objects;
  modelObjectsCopy = modelObjects;
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
  stateCopy = state;
  v18 = objectsCopy;
  v19 = modelObjectsCopy;
  selfCopy = self;
  v11 = modelObjectsCopy;
  v12 = objectsCopy;
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

- (id)registerTransientAddState:(int64_t)state forModelObjects:(id)objects relatedModelObjects:(id)modelObjects
{
  objectsCopy = objects;
  modelObjectsCopy = modelObjects;
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
  stateCopy = state;
  v18 = objectsCopy;
  v19 = modelObjectsCopy;
  selfCopy = self;
  v11 = modelObjectsCopy;
  v12 = objectsCopy;
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