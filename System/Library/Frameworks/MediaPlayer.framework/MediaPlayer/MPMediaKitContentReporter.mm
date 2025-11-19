@interface MPMediaKitContentReporter
+ (MPMediaKitContentReporter)sharedReporter;
- (MPMediaKitContentReporter)init;
- (id)_dictionariesForType:(int64_t)a3;
- (id)_reportConcernBagDictionary;
- (id)contentReportKindStringForType:(int64_t)a3;
- (id)contentReportTypeStringForType:(int64_t)a3;
- (id)contentReporterURLOperation:(id)a3 bodyData:(id)a4 withCompletion:(id)a5;
- (id)reportsForType:(int64_t)a3 contentID:(id)a4 commentText:(id)a5 concernParentItemID:(id)a6 concernParentItemType:(id)a7;
- (id)urlLoadRequestWithRequest:(id)a3 requestContext:(id)a4;
- (void)_performWithBag:(id)a3;
- (void)submitReport:(id)a3 body:(id)a4 completion:(id)a5;
@end

@implementation MPMediaKitContentReporter

- (id)urlLoadRequestWithRequest:(id)a3 requestContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 clientInfo];
  v8 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v9 = MEMORY[0x1E69E43B0];
  v10 = [v7 clientIdentifier];
  v11 = [v7 clientVersion];
  v12 = [v9 clientInfoForMusicKitRequestWithClientIdentifier:v10 clientVersion:v11 bundleIdentifier:v8];

  v13 = objc_alloc(MEMORY[0x1E69E4478]);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __70__MPMediaKitContentReporter_urlLoadRequestWithRequest_requestContext___block_invoke;
  v23 = &unk_1E767C7F8;
  v24 = v12;
  v25 = v5;
  v14 = v5;
  v15 = v12;
  v16 = [v13 initWithBlock:&v20];
  v17 = objc_alloc(MEMORY[0x1E69E4480]);
  v18 = [v17 initWithURLRequest:v6 requestContext:{v16, v20, v21, v22, v23}];

  return v18;
}

void __70__MPMediaKitContentReporter_urlLoadRequestWithRequest_requestContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setClientInfo:v3];
  v5 = [*(a1 + 40) identity];
  [v4 setIdentity:v5];
}

- (id)contentReporterURLOperation:(id)a3 bodyData:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x1E69E43A0]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __81__MPMediaKitContentReporter_contentReporterURLOperation_bodyData_withCompletion___block_invoke;
  v17[3] = &unk_1E767C520;
  v18 = v8;
  v19 = v9;
  v20 = self;
  v21 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 initWithStartHandler:v17];

  return v15;
}

void __81__MPMediaKitContentReporter_contentReporterURLOperation_bodyData_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:*(a1 + 32)];
  [v4 setHTTPBody:*(a1 + 40)];
  [v4 setHTTPMethod:@"POST"];
  [v4 addValue:@"application/json" forHTTPHeaderField:*MEMORY[0x1E69E41A8]];
  v5 = [MEMORY[0x1E69E43B0] clientInfoForMusicKitRequestWithClientIdentifier:@"com.apple.Music" clientVersion:@"1"];
  v6 = objc_alloc(MEMORY[0x1E69E4618]);
  v7 = [MEMORY[0x1E69E4680] activeAccount];
  v8 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v9 = [v6 initWithIdentity:v7 identityStore:v8 clientInfo:v5];

  v10 = [*(a1 + 48) urlLoadRequestWithRequest:v4 requestContext:v9];
  v11 = [MEMORY[0x1E69E4678] defaultSession];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__MPMediaKitContentReporter_contentReporterURLOperation_bodyData_withCompletion___block_invoke_2;
  v14[3] = &unk_1E767D2C8;
  v12 = *(a1 + 56);
  v15 = v3;
  v16 = v12;
  v13 = v3;
  [v11 enqueueDataRequest:v10 withCompletionHandler:v14];
}

void __81__MPMediaKitContentReporter_contentReporterURLOperation_bodyData_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 parsedBodyDictionary];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) finishWithError:v5];
}

- (id)contentReportTypeStringForType:(int64_t)a3
{
  if (a3 > 4)
  {
    return &stru_1F149ECA8;
  }

  else
  {
    return off_1E767C5A0[a3];
  }
}

- (id)contentReportKindStringForType:(int64_t)a3
{
  if (a3 > 5)
  {
    return &stru_1F149ECA8;
  }

  else
  {
    return off_1E767C570[a3];
  }
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
    v14 = __Block_byref_object_copy__36416;
    v15 = __Block_byref_object_dispose__36417;
    v16 = 0;
    v5 = dispatch_semaphore_create(0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__MPMediaKitContentReporter__reportConcernBagDictionary__block_invoke;
    v8[3] = &unk_1E767C648;
    v10 = &v11;
    v6 = v5;
    v9 = v6;
    [(MPMediaKitContentReporter *)self _performWithBag:v8];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(p_reportConcernBagDictionary, v12[5]);

    _Block_object_dispose(&v11, 8);
    reportConcernBagDictionary = *p_reportConcernBagDictionary;
  }

  return reportConcernBagDictionary;
}

void __56__MPMediaKitContentReporter__reportConcernBagDictionary__block_invoke(uint64_t a1, void *a2)
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
  if (a3 > 5)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E767C540[a3];
    v4 = [(MPMediaKitContentReporter *)self _reportConcernBagDictionary];
    v5 = [v4 objectForKey:v3];
  }

  return v5;
}

- (id)reportsForType:(int64_t)a3 contentID:(id)a4 commentText:(id)a5 concernParentItemID:(id)a6 concernParentItemType:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v12 = a7;
  v13 = a3;
  v14 = [(MPMediaKitContentReporter *)self _dictionariesForType:a3];
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v14)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v14;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v22 = [v21 objectForKey:@"label"];
            v23 = [v21 objectForKey:@"id"];
            v24 = objc_alloc_init(MPMediaKitContentReport);
            [(MPMediaKitContentReport *)v24 setConcernItemType:v13];
            [(MPMediaKitContentReport *)v24 setConcernTypeID:v23];
            [(MPMediaKitContentReport *)v24 setDisplayText:v22];
            [(MPMediaKitContentReport *)v24 setCommentText:v28];
            [(MPMediaKitContentReport *)v24 setConcernItemID:v29];
            [(MPMediaKitContentReport *)v24 setParentContentID:v27];
            [(MPMediaKitContentReport *)v24 setParentConcernType:v12];
            [v15 addObject:v24];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v14 = v26;
  }

  return v15;
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
  v9[2] = __45__MPMediaKitContentReporter__performWithBag___block_invoke;
  v9[3] = &unk_1E767C620;
  v10 = v3;
  v8 = v3;
  [v7 getBagForRequestContext:v6 withCompletionHandler:v9];
}

uint64_t __45__MPMediaKitContentReporter__performWithBag___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)submitReport:(id)a3 body:(id)a4 completion:(id)a5
{
  v45[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v36 = a5;
  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v10 = MEMORY[0x1E695DF90];
  v44[0] = @"kind";
  v11 = -[MPMediaKitContentReporter contentReportKindStringForType:](self, "contentReportKindStringForType:", [v8 concernItemType]);
  v45[0] = v11;
  v44[1] = @"reason";
  v12 = [v8 concernTypeID];
  v45[1] = v12;
  v44[2] = @"comments";
  v13 = [v8 commentText];
  v14 = v13;
  v15 = &stru_1F149ECA8;
  if (v13)
  {
    v15 = v13;
  }

  v45[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v17 = [v10 dictionaryWithDictionary:v16];

  v18 = MEMORY[0x1E695DF90];
  v42[0] = @"id";
  v19 = [v8 concernItemID];
  v42[1] = @"type";
  v43[0] = v19;
  v20 = -[MPMediaKitContentReporter contentReportTypeStringForType:](self, "contentReportTypeStringForType:", [v8 concernItemType]);
  v43[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v22 = [v18 dictionaryWithDictionary:v21];

  v23 = v9;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v9)
  {
    v25 = v9;
    v26 = v35;
  }

  else
  {
    v27 = [v8 parentContentID];
    v26 = v35;
    if (v27)
    {
      v28 = v27;
      v29 = [v8 parentConcernType];

      if (v29)
      {
        v30 = [v8 parentContentID];
        [v24 setObject:v30 forKeyedSubscript:@"id"];

        v31 = [v8 parentConcernType];
        [v24 setObject:v31 forKeyedSubscript:@"type"];

        [v35 addObject:v24];
      }
    }

    [v35 addObject:v22];
    v40[0] = @"concern";
    v40[1] = @"contents";
    v41[0] = v17;
    v41[1] = v35;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v25 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v32 options:0 error:0];

    v23 = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __58__MPMediaKitContentReporter_submitReport_body_completion___block_invoke;
  v37[3] = &unk_1E767C5F8;
  v37[4] = self;
  v38 = v25;
  v39 = v36;
  v33 = v36;
  v34 = v25;
  [(MPMediaKitContentReporter *)self _performWithBag:v37];
}

void __58__MPMediaKitContentReporter_submitReport_body_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E42E0];
  v4 = a2;
  v5 = [v4 stringForBagKey:v3];
  v6 = [v4 dictionaryForBagKey:*MEMORY[0x1E69E42D0]];

  v7 = [v6 ic_stringValueForKey:@"default"];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/v1/catalog/%@/concerns", v7, v5];
  v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MPMediaKitContentReporter_submitReport_body_completion___block_invoke_2;
  v13[3] = &unk_1E767C5D0;
  v14 = *(a1 + 48);
  v12 = [v10 contentReporterURLOperation:v9 bodyData:v11 withCompletion:v13];
  [*(*(a1 + 32) + 8) addOperation:v12];
}

uint64_t __58__MPMediaKitContentReporter_submitReport_body_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (MPMediaKitContentReporter)init
{
  v6.receiver = self;
  v6.super_class = MPMediaKitContentReporter;
  v2 = [(MPMediaKitContentReporter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v2->_operationQueue setName:@"com.apple.MediaPlayer.MPMediaKitContentReporter.operationQueue"];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
  }

  return v2;
}

+ (MPMediaKitContentReporter)sharedReporter
{
  if (sharedReporter_isDispatched != -1)
  {
    dispatch_once(&sharedReporter_isDispatched, &__block_literal_global_36541);
  }

  v3 = sharedReporter_sharedInstance;

  return v3;
}

void __43__MPMediaKitContentReporter_sharedReporter__block_invoke()
{
  v0 = objc_alloc_init(MPMediaKitContentReporter);
  v1 = sharedReporter_sharedInstance;
  sharedReporter_sharedInstance = v0;
}

@end