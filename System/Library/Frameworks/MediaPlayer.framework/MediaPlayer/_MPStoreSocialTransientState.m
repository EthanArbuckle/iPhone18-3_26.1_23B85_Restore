@interface _MPStoreSocialTransientState
- (BOOL)isEqual:(id)a3;
- (_MPStoreSocialTransientState)initWithPerson:(id)a3;
- (id)newOperationForTransientFollowPendingRequestState:(int64_t)a3 completion:(id)a4;
- (id)newOperationForTransientFollowState:(int64_t)a3 completion:(id)a4;
- (int64_t)followPendingRequestState;
- (int64_t)followState;
- (unint64_t)hash;
- (void)_endIfNeeded;
@end

@implementation _MPStoreSocialTransientState

- (unint64_t)hash
{
  v2 = [(MPModelObject *)self->_person identifiers];
  v3 = [v2 universalStore];
  v4 = [v3 socialProfileID];
  v5 = [v4 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 person];
    v6 = [v5 identifiers];
    v7 = [v6 universalStore];
    v8 = [v7 socialProfileID];
    v9 = [(MPModelObject *)self->_person identifiers];
    v10 = [v9 universalStore];
    v11 = [v10 socialProfileID];
    v12 = [v8 isEqualToString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_endIfNeeded
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__81;
  v14 = __Block_byref_object_dispose__82;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___MPStoreSocialTransientState__endIfNeeded__block_invoke;
  block[3] = &unk_1E767D4B8;
  block[4] = self;
  block[5] = &v10;
  block[6] = &v6;
  dispatch_sync(accessQueue, block);
  v4 = v11[5];
  if (v4 && *(v7 + 24) == 1)
  {
    (*(v4 + 16))(v4, self);
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

- (id)newOperationForTransientFollowPendingRequestState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (a3 != 1)
  {
    if (a3 != 2)
    {
LABEL_8:
      [(_MPStoreSocialTransientState *)self _endIfNeeded];
      v16 = 0;
      goto LABEL_9;
    }

    v7 = 3;
  }

  v8 = [[MPStoreSocialPendingFollowRequestOperationDataSource alloc] initWithAction:v7];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  [(MPStoreSocialPendingFollowRequestOperationDataSource *)v8 setPerson:self->_person];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = v39;
  dispatch_sync(accessQueue, block);
  v11 = [[MPStoreSocialRequestOperation alloc] initWithDataSource:v9];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_2;
  v31[3] = &unk_1E767D440;
  objc_copyWeak(&v34, &location);
  objc_copyWeak(v35, &from);
  v33 = v39;
  v31[4] = self;
  v32 = v6;
  v35[1] = a3;
  [(MPStoreSocialRequestOperation *)v11 setResponseHandler:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_6;
  v28[3] = &unk_1E767D468;
  objc_copyWeak(&v29, &location);
  objc_copyWeak(&v30, &from);
  [(MPStoreSocialRequestOperation *)v11 setCompletionBlock:v28];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__41021;
  v26 = __Block_byref_object_dispose__41022;
  v27 = 0;
  v12 = self->_accessQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_8;
  v21[3] = &unk_1E76819F0;
  v21[4] = self;
  v21[5] = &v22;
  dispatch_sync(v12, v21);
  if (v23[5])
  {
    [(MPStoreSocialRequestOperation *)v11 addDependency:?];
  }

  v13 = self->_accessQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93___MPStoreSocialTransientState_newOperationForTransientFollowPendingRequestState_completion___block_invoke_9;
  v18[3] = &unk_1E767D490;
  v18[4] = self;
  v20 = a3;
  v14 = v11;
  v19 = v14;
  dispatch_barrier_async(v13, v18);
  v15 = v19;
  v16 = v14;

  _Block_object_dispose(&v22, 8);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);

  objc_destroyWeak(v35);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v39, 8);

LABEL_9:
  return v16;
}

- (int64_t)followPendingRequestState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57___MPStoreSocialTransientState_followPendingRequestState__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)newOperationForTransientFollowState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v7 = MPStoreSocialUnfollowOperationDataSource;
        goto LABEL_13;
      case 5:
        v7 = MPStoreSocialBlockOperationDataSource;
        goto LABEL_13;
      case 6:
        v7 = MPStoreSocialUnblockOperationDataSource;
        goto LABEL_13;
    }

LABEL_18:
    [(_MPStoreSocialTransientState *)self _endIfNeeded];
    v16 = 0;
    goto LABEL_19;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v8 = [[MPStoreSocialPendingFollowRequestOperationDataSource alloc] initWithAction:2];
      goto LABEL_14;
    }

    if (a3 != 3)
    {
      goto LABEL_18;
    }
  }

  v7 = MPStoreSocialFollowOperationDataSource;
LABEL_13:
  v8 = objc_alloc_init(v7);
LABEL_14:
  v9 = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

  [(MPStoreSocialPendingFollowRequestOperationDataSource *)v8 setPerson:self->_person];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = v39;
  dispatch_sync(accessQueue, block);
  v11 = [[MPStoreSocialRequestOperation alloc] initWithDataSource:v9];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_2;
  v31[3] = &unk_1E767D440;
  objc_copyWeak(&v34, &location);
  objc_copyWeak(v35, &from);
  v33 = v39;
  v31[4] = self;
  v32 = v6;
  v35[1] = a3;
  [(MPStoreSocialRequestOperation *)v11 setResponseHandler:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_6;
  v28[3] = &unk_1E767D468;
  objc_copyWeak(&v29, &location);
  objc_copyWeak(&v30, &from);
  [(MPStoreSocialRequestOperation *)v11 setCompletionBlock:v28];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__41021;
  v26 = __Block_byref_object_dispose__41022;
  v27 = 0;
  v12 = self->_accessQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_8;
  v21[3] = &unk_1E76819F0;
  v21[4] = self;
  v21[5] = &v22;
  dispatch_sync(v12, v21);
  if (v23[5])
  {
    [(MPStoreSocialRequestOperation *)v11 addDependency:?];
  }

  v13 = self->_accessQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79___MPStoreSocialTransientState_newOperationForTransientFollowState_completion___block_invoke_9;
  v18[3] = &unk_1E767D490;
  v18[4] = self;
  v20 = a3;
  v14 = v11;
  v19 = v14;
  dispatch_barrier_async(v13, v18);
  v15 = v19;
  v16 = v14;

  _Block_object_dispose(&v22, 8);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);

  objc_destroyWeak(v35);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v39, 8);

LABEL_19:
  return v16;
}

- (int64_t)followState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43___MPStoreSocialTransientState_followState__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_MPStoreSocialTransientState)initWithPerson:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _MPStoreSocialTransientState;
  v5 = [(_MPStoreSocialTransientState *)&v14 init];
  if (v5)
  {
    v6 = [v4 identifiers];
    v7 = [v4 copyWithIdentifiers:v6 block:&__block_literal_global_41073];
    person = v5->_person;
    v5->_person = v7;

    v5->_followState = 0;
    v5->_followPendingRequestState = 0;
    v9 = dispatch_queue_create("com.apple.MediaPlayer._MPStoreSocialTransientState.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v9;

    v11 = dispatch_queue_create("com.apple.MediaPlayer._MPStoreSocialTransientState.calloutQueue", 0);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v11;
  }

  return v5;
}

@end