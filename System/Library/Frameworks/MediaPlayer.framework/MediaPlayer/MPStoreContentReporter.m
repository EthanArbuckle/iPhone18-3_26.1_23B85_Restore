@interface MPStoreContentReporter
+ (MPStoreContentReporter)sharedReporter;
- (MPStoreContentReporter)init;
- (id)_deleteCommentURLComponentsFromBag:(id)a3;
- (id)_deletePostURLComponentsFromBag:(id)a3;
- (id)_dictionariesForType:(int64_t)a3;
- (id)_reportConcernBagDictionary;
- (id)baseURLStringForReport;
- (id)reportsForType:(int64_t)a3 contentID:(id)a4 aucType:(id)a5 commentText:(id)a6;
- (void)_performWithBag:(id)a3;
- (void)deleteComment:(id)a3 activityID:(id)a4 completion:(id)a5;
- (void)deletePost:(id)a3 completion:(id)a4;
- (void)submitReport:(id)a3 completion:(id)a4;
@end

@implementation MPStoreContentReporter

- (id)_deletePostURLComponentsFromBag:(id)a3
{
  v3 = [a3 dictionaryForBagKey:*MEMORY[0x1E69E4310]];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696AF20];
    v6 = [v3 objectForKey:@"deleteSocialPost"];
    v7 = [v5 componentsWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_deleteCommentURLComponentsFromBag:(id)a3
{
  v3 = [a3 dictionaryForBagKey:*MEMORY[0x1E69E4310]];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696AF20];
    v6 = [v3 objectForKey:@"deleteComment"];
    v7 = [v5 componentsWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_reportConcernBagDictionary
{
  p_reportConcernBagDictionary = &self->_reportConcernBagDictionary;
  reportConcernBagDictionary = self->_reportConcernBagDictionary;
  if (!reportConcernBagDictionary)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__36751;
    v15 = __Block_byref_object_dispose__36752;
    v16 = 0;
    v5 = dispatch_semaphore_create(0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__MPStoreContentReporter__reportConcernBagDictionary__block_invoke;
    v8[3] = &unk_1E767C648;
    v10 = &v11;
    v6 = v5;
    v9 = v6;
    [(MPStoreContentReporter *)self _performWithBag:v8];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(p_reportConcernBagDictionary, v12[5]);

    _Block_object_dispose(&v11, 8);
    reportConcernBagDictionary = *p_reportConcernBagDictionary;
  }

  return reportConcernBagDictionary;
}

void __53__MPStoreContentReporter__reportConcernBagDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryForBagKey:*MEMORY[0x1E69E4308]];
  v5 = v3;
  if (v3)
  {
    v4 = [v3 objectForKey:@"reportConcern"];
    if (_NSIsNSDictionary())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_dictionariesForType:(int64_t)a3
{
  if (a3 > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E767C6C8[a3];
    v4 = [(MPStoreContentReporter *)self _reportConcernBagDictionary];
    v5 = [v4 objectForKey:v3];
  }

  return v5;
}

- (id)baseURLStringForReport
{
  v2 = [(MPStoreContentReporter *)self _reportConcernBagDictionary];
  v3 = [v2 objectForKey:@"url"];

  return v3;
}

- (id)reportsForType:(int64_t)a3 contentID:(id)a4 aucType:(id)a5 commentText:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MPStoreContentReporter *)self _dictionariesForType:a3];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v18 objectForKey:@"label"];
        v20 = [v18 objectForKey:@"id"];
        v21 = objc_alloc_init(MPStoreContentReport);
        [(MPStoreContentReport *)v21 setConcernItemType:a3];
        [(MPStoreContentReport *)v21 setConcernTypeID:v20];
        [(MPStoreContentReport *)v21 setDisplayText:v19];
        [(MPStoreContentReport *)v21 setContentID:v24];
        [(MPStoreContentReport *)v21 setAucType:v10];
        [(MPStoreContentReport *)v21 setCommentText:v11];
        [v13 addObject:v21];
      }

      v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  return v13;
}

- (void)_performWithBag:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69E4618]);
  v5 = [MEMORY[0x1E69E4680] activeAccount];
  v6 = [v4 initWithIdentity:v5];

  v7 = [MEMORY[0x1E69E4658] sharedBagProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__MPStoreContentReporter__performWithBag___block_invoke;
  v9[3] = &unk_1E767C620;
  v10 = v3;
  v8 = v3;
  [v7 getBagForRequestContext:v6 withCompletionHandler:v9];
}

uint64_t __42__MPStoreContentReporter__performWithBag___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)deletePost:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MPStoreContentReporter_deletePost_completion___block_invoke;
  v10[3] = &unk_1E767C5F8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MPStoreContentReporter *)self _performWithBag:v10];
}

void __48__MPStoreContentReporter_deletePost_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _deletePostURLComponentsFromBag:v4];
  v6 = MEMORY[0x1E695DF70];
  v7 = [v5 queryItems];
  v8 = [v6 arrayWithArray:v7];

  v9 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@"sa." withString:&stru_1F149ECA8];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"activity" value:v9];
  [v8 addObject:v10];
  [v5 setQueryItems:v8];
  v11 = [v5 URL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MPStoreContentReporter_deletePost_completion___block_invoke_2;
  v13[3] = &unk_1E767C5D0;
  v14 = *(a1 + 48);
  v12 = MPStoreContentReporterURLOperation(v11, 0, v13);

  [*(*(a1 + 32) + 8) addOperation:v12];
}

uint64_t __48__MPStoreContentReporter_deletePost_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deleteComment:(id)a3 activityID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MPStoreContentReporter_deleteComment_activityID_completion___block_invoke;
  v11[3] = &unk_1E767C5F8;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(MPStoreContentReporter *)self _performWithBag:v11];
}

void __62__MPStoreContentReporter_deleteComment_activityID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _deleteCommentURLComponentsFromBag:v4];
  v6 = MEMORY[0x1E695DF70];
  v7 = [v5 queryItems];
  v8 = [v6 arrayWithArray:v7];

  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"commentId" value:*(a1 + 40)];
  [v8 addObject:v9];
  [v5 setQueryItems:v8];
  v10 = [v5 URL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MPStoreContentReporter_deleteComment_activityID_completion___block_invoke_2;
  v12[3] = &unk_1E767C5D0;
  v13 = *(a1 + 48);
  v11 = MPStoreContentReporterURLOperation(v10, 1, v12);

  [*(*(a1 + 32) + 8) addOperation:v11];
}

uint64_t __62__MPStoreContentReporter_deleteComment_activityID_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)submitReport:(id)a3 completion:(id)a4
{
  v54[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v41 = a4;
  v42 = self;
  v7 = MEMORY[0x1E696AF20];
  v8 = [(MPStoreContentReporter *)self baseURLStringForReport];
  v9 = [v7 componentsWithString:v8];

  v10 = MEMORY[0x1E695DF70];
  v43 = v9;
  v11 = [v9 queryItems];
  v12 = [v10 arrayWithArray:v11];

  v13 = MEMORY[0x1E695DF90];
  v53[0] = @"activity";
  v14 = [v6 contentID];
  v54[0] = v14;
  v53[1] = @"concernItemType";
  v15 = [v6 concernItemType];
  v16 = &stru_1F149ECA8;
  if (v15 <= 6)
  {
    v16 = off_1E767C690[v15];
  }

  v54[1] = v16;
  v53[2] = @"concernTypeId";
  v17 = [v6 concernTypeID];
  v54[2] = v17;
  v53[3] = @"concernItemId";
  v18 = [v6 contentID];
  v54[3] = v18;
  v53[4] = @"commentText";
  v19 = [v6 commentText];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &stru_1F149ECA8;
  }

  v54[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:5];
  v23 = [v13 dictionaryWithDictionary:v22];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v48 + 1) + 8 * i);
        v30 = MEMORY[0x1E696AF60];
        v31 = [v24 objectForKey:v29];
        v32 = [v30 queryItemWithName:v29 value:v31];

        [v12 addObject:v32];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v26);
  }

  v33 = [v6 aucType];
  v34 = [v33 length];

  if (v34)
  {
    v35 = MEMORY[0x1E696AF60];
    v36 = [v6 aucType];
    v37 = [v35 queryItemWithName:@"concernItemAUCType" value:v36];

    [v12 addObject:v37];
  }

  [v43 setQueryItems:v12];
  v38 = [v43 URL];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __50__MPStoreContentReporter_submitReport_completion___block_invoke;
  v44[3] = &unk_1E767C5F8;
  v46 = v42;
  v47 = v41;
  v45 = v38;
  v39 = v41;
  v40 = v38;
  [(MPStoreContentReporter *)v42 _performWithBag:v44];
}

void __50__MPStoreContentReporter_submitReport_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__MPStoreContentReporter_submitReport_completion___block_invoke_2;
  v4[3] = &unk_1E767C5D0;
  v5 = *(a1 + 48);
  v3 = MPStoreContentReporterURLOperation(v2, 0, v4);
  [*(*(a1 + 40) + 8) addOperation:v3];
}

uint64_t __50__MPStoreContentReporter_submitReport_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MPStoreContentReporter)init
{
  v6.receiver = self;
  v6.super_class = MPStoreContentReporter;
  v2 = [(MPStoreContentReporter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.MediaPlayer.MPStoreContentReporter.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
  }

  return v2;
}

+ (MPStoreContentReporter)sharedReporter
{
  if (sharedReporter_isDispatched_36908 != -1)
  {
    dispatch_once(&sharedReporter_isDispatched_36908, &__block_literal_global_36909);
  }

  v3 = sharedReporter_sharedInstance_36910;

  return v3;
}

void __40__MPStoreContentReporter_sharedReporter__block_invoke()
{
  v0 = objc_alloc_init(MPStoreContentReporter);
  v1 = sharedReporter_sharedInstance_36910;
  sharedReporter_sharedInstance_36910 = v0;
}

@end