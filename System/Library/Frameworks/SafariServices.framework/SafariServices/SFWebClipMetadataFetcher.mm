@interface SFWebClipMetadataFetcher
@end

@implementation SFWebClipMetadataFetcher

void __51___SFWebClipMetadataFetcher__startFetchingMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51___SFWebClipMetadataFetcher__startFetchingMetadata__block_invoke_2;
  v5[3] = &unk_1E8491B30;
  v5[4] = *(a1 + 32);
  [v4 parseRawMetadataDictionary:v3 consumer:v5];
}

void __51___SFWebClipMetadataFetcher__startFetchingMetadata__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1 + 32) + 8), a2);
  objc_storeStrong((*(a1 + 32) + 16), a3);
  *(*(a1 + 32) + 32) = 1;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(*(a1 + 32) + 24);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v13 + 1) + 8 * v12) + 16))(*(*(&v13 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }

  [*(*(a1 + 32) + 24) removeAllObjects];
}

@end