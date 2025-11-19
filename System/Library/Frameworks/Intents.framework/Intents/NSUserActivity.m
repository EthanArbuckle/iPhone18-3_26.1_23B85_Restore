@interface NSUserActivity
@end

@implementation NSUserActivity

void __69__NSUserActivity_INCacheSupport__generateCachePayloadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = INCacheableGetSerializationQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__NSUserActivity_INCacheSupport__generateCachePayloadWithCompletion___block_invoke_2;
  block[3] = &unk_1E72858F0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __69__NSUserActivity_INCacheSupport__generateCachePayloadWithCompletion___block_invoke_2(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2 && !a1[5])
  {
    v5 = @"userActivityData";
    v6[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  (*(a1[6] + 16))();

  v4 = *MEMORY[0x1E69E9840];
}

void __78__NSUserActivity_INCacheSupport__buildFromCachePayload_identifier_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69636A8]) _initWithUserActivityData:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __59__NSUserActivity_IntentsAdditions___setInteraction_donate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = MEMORY[0x1E696ACC8];
  v12 = 0;
  v8 = a5;
  v9 = a4;
  v10 = [v7 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
  v11 = v12;
  v8[2](v8, v9, v10, v11, 0);
}

void __50__NSUserActivity_IntentsAdditions___setAppIntent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = MEMORY[0x1E696ACC8];
  v12 = 0;
  v8 = a5;
  v9 = a4;
  v10 = [v7 archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
  v11 = v12;
  v8[2](v8, v9, v10, v11, 0);
}

@end